; ModuleID = '/llk/IR_all_yes/net/atm/resources.c_pt.bc'
source_filename = "../net/atm/resources.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atm_dev_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_atm_dev_lookup\09\09\09\09"
module asm "\09.long\09__crc_atm_dev_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atm_dev_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22atm_dev_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_atm_dev_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+atm_dev_register\22, \22a\22\09"
module asm "\09.weak\09__crc_atm_dev_register\09\09\09\09"
module asm "\09.long\09__crc_atm_dev_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atm_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22atm_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_atm_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+atm_dev_deregister\22, \22a\22\09"
module asm "\09.weak\09__crc_atm_dev_deregister\09\09\09\09"
module asm "\09.long\09__crc_atm_dev_deregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atm_dev_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22atm_dev_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_atm_dev_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.146 }
%struct.anon.146 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atm_dev_stats = type { %struct.atm_aal_stats, %struct.atm_aal_stats, %struct.atm_aal_stats }
%struct.atm_aal_stats = type { i32, i32, i32, i32, i32 }

@atm_devs = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @atm_devs, ptr @atm_devs }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atm_dev_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@atm_dev_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @atm_dev_mutex, i64 52), ptr getelementptr (i8, ptr @atm_dev_mutex, i64 52) }, ptr @atm_dev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atm_dev_mutex\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_atm_dev_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_atm_dev_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_atm_dev_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atm_dev_lookup to i32), ptr @__kstrtab_atm_dev_lookup, ptr @__kstrtabns_atm_dev_lookup }, section "___ksymtab+atm_dev_lookup", align 4
@atm_dev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013atm:%s: no space for dev %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atm_dev_register\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/atm/resources.c\00", [44 x i8] zeroinitializer }, align 32
@atm_dev_register._entry_ptr = internal global ptr @atm_dev_register._entry, section ".printk_index", align 4
@atm_dev_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013atm:%s: atm_proc_dev_register failed for dev %s\0A\00", [45 x i8] zeroinitializer }, align 32
@atm_dev_register._entry_ptr.7 = internal global ptr @atm_dev_register._entry.5, section ".printk_index", align 4
@atm_dev_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013atm:%s: atm_register_sysfs failed for dev %s\0A\00", [48 x i8] zeroinitializer }, align 32
@atm_dev_register._entry_ptr.10 = internal global ptr @atm_dev_register._entry.8, section ".printk_index", align 4
@__kstrtab_atm_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_atm_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_atm_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atm_dev_register to i32), ptr @__kstrtab_atm_dev_register, ptr @__kstrtabns_atm_dev_register }, section "___ksymtab+atm_dev_register", align 4
@__kstrtab_atm_dev_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_atm_dev_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_atm_dev_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atm_dev_deregister to i32), ptr @__kstrtab_atm_dev_deregister, ptr @__kstrtabns_atm_dev_deregister }, section "___ksymtab+atm_dev_deregister", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atm-device-%d\00", [18 x i8] zeroinitializer }, align 32
@__alloc_atm_dev.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 1074028821, i64 1074553168, i64 1074553169, i64 1074553171, i64 1074553217, i64 1074553220, i64 1074553221, i64 1074553222, i64 1074553223, i64 1074553224, i64 1074553225, i64 1074553226, i64 1074553227, i64 1074553228, i64 1074553229, i64 1074553230, i64 1074553231, i64 1074553232, i64 2149867793, i64 3221512466, i64 3221512467]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1074553224, i64 1074553230]
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"atm_devs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 32, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"atm_dev_mutex\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 33, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 84, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 114, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 119, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 236, i32 8 }
@___asan_gen_.57 = private constant [23 x i8] c"../net/atm/resources.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 45, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 230, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 214, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 174, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_atm_dev_deregister, ptr @__ksymtab_atm_dev_lookup, ptr @__ksymtab_atm_dev_register, ptr @atm_dev_register._entry, ptr @atm_dev_register._entry.5, ptr @atm_dev_register._entry.8, ptr @atm_dev_register._entry_ptr, ptr @atm_dev_register._entry_ptr.10, ptr @atm_dev_register._entry_ptr.7, ptr @atm_devs, ptr @.str, ptr @atm_dev_mutex, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_devs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atm_dev_lookup(i32 noundef %number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @atm_dev_mutex, i32 noundef 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @atm_devs, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @atm_devs
  br i1 %cmp.not.i, label %for.cond.i.__atm_dev_lookup.exit_crit_edge, label %for.body.i

for.cond.i.__atm_dev_lookup.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__atm_dev_lookup.exit

for.body.i:                                       ; preds = %for.cond.i
  %number1.i = getelementptr i8, ptr %.pn.i, i32 -1092
  %1 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %number1.i, align 4
  %cmp2.i = icmp eq i32 %2, %number
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %dev.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1104
  %refcnt.i.i = getelementptr i8, ptr %.pn.i, i32 -984
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !49

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__atm_dev_lookup.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !50

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__atm_dev_lookup.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__atm_dev_lookup.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %__atm_dev_lookup.exit

__atm_dev_lookup.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__atm_dev_lookup.exit_crit_edge, %for.cond.i.__atm_dev_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %dev.0.le.i, %if.else.i.i.i.i.i.__atm_dev_lookup.exit_crit_edge ], [ %dev.0.le.i, %if.end15.sink.split.i.i.i.i.i ], [ null, %for.cond.i.__atm_dev_lookup.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atm_dev_register(ptr noundef %type, ptr noundef %parent, ptr noundef %ops, i32 noundef %number, ptr noundef readonly %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1112) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %type) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type1.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %type, ptr %type1.i, align 8
  %signal.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 12
  %2 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %signal.i, align 8
  %link_rate.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 353207, ptr %link_rate.i, align 4
  %lock.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @__alloc_atm_dev.__key, i16 noundef signext 3) #9
  %local.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %local.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %local.i, ptr %local.i, align 4
  %prev.i.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %local.i, ptr %prev.i.i, align 8
  %lecs.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %lecs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %lecs.i, ptr %lecs.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lecs.i, ptr %prev.i10.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @atm_dev_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %number)
  %cmp.not = icmp eq i32 %number, -1
  br i1 %cmp.not, label %if.else, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @atm_devs, %if.end.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @atm_devs
  br i1 %cmp.not.i, label %for.cond.i.if.end6_crit_edge, label %for.body.i

for.cond.i.if.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

for.body.i:                                       ; preds = %for.cond.i
  %number1.i = getelementptr i8, ptr %.pn.i, i32 -1092
  %9 = ptrtoint ptr %number1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number1.i, align 4
  %cmp2.i = icmp eq i32 %10, %number
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %dev.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1104
  %refcnt.i.i = getelementptr i8, ptr %.pn.i, i32 -984
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !49

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__atm_dev_lookup.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !50

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__atm_dev_lookup.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__atm_dev_lookup.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %__atm_dev_lookup.exit

__atm_dev_lookup.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__atm_dev_lookup.exit_crit_edge
  %tobool4.not = icmp eq ptr %dev.0.le.i, null
  br i1 %tobool4.not, label %__atm_dev_lookup.exit.if.end6_crit_edge, label %if.then5

__atm_dev_lookup.exit.if.end6_crit_edge:          ; preds = %__atm_dev_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %__atm_dev_lookup.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #9, !srcloc !52
  %asmresult.i.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i64)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i64, 1
  br i1 %cmp.i.i.i.i, label %do.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i64)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i64, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.atm_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.atm_dev_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atm_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #9
  br label %atm_dev_put.exit

do.body.i:                                        ; preds = %if.then5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %flags.i = getelementptr i8, ptr %.pn.i, i32 -1080
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i65 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i65, label %do.body6.i, label %do.end9.i, !prof !49

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  %16 = ptrtoint ptr %dev.0.le.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.0.le.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %do.end9.i.if.end14.i_crit_edge, label %if.then11.i

do.end9.i.if.end14.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %19(ptr noundef nonnull %dev.0.le.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %do.end9.i.if.end14.i_crit_edge
  %class_dev.i = getelementptr i8, ptr %.pn.i, i32 -928
  tail call void @put_device(ptr noundef %class_dev.i) #9
  br label %atm_dev_put.exit

atm_dev_put.exit:                                 ; preds = %if.end14.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.atm_dev_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end6:                                          ; preds = %__atm_dev_lookup.exit.if.end6_crit_edge, %for.cond.i.if.end6_crit_edge
  %number7 = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %number7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %number, ptr %number7, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %number8 = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %atm_dev_put.exit103, %if.else
  %storemerge = phi i32 [ 0, %if.else ], [ %inc, %atm_dev_put.exit103 ]
  %21 = ptrtoint ptr %number8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %number8, align 4
  br label %for.cond.i69

for.cond.i69:                                     ; preds = %for.body.i72.for.cond.i69_crit_edge, %while.cond
  %.pn.in.i66 = phi ptr [ @atm_devs, %while.cond ], [ %.pn.i67, %for.body.i72.for.cond.i69_crit_edge ]
  %22 = ptrtoint ptr %.pn.in.i66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i67 = load ptr, ptr %.pn.in.i66, align 4
  %cmp.not.i68 = icmp eq ptr %.pn.i67, @atm_devs
  br i1 %cmp.not.i68, label %for.cond.i69.if.end13_crit_edge, label %for.body.i72

for.cond.i69.if.end13_crit_edge:                  ; preds = %for.cond.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

for.body.i72:                                     ; preds = %for.cond.i69
  %number1.i70 = getelementptr i8, ptr %.pn.i67, i32 -1092
  %23 = ptrtoint ptr %number1.i70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number1.i70, align 4
  %cmp2.i71 = icmp eq i32 %24, %storemerge
  br i1 %cmp2.i71, label %if.then.i78, label %for.body.i72.for.cond.i69_crit_edge

for.body.i72.for.cond.i69_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i69

if.then.i78:                                      ; preds = %for.body.i72
  %dev.0.le.i73 = getelementptr i8, ptr %.pn.i67, i32 -1104
  %refcnt.i.i74 = getelementptr i8, ptr %.pn.i67, i32 -984
  %call.i.i.i.i.i.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i74, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i74, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i74, ptr %refcnt.i.i74, i32 1, ptr elementtype(i32) %refcnt.i.i74) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i76 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i76)
  %tobool1.not.i.i.i.i.i77 = icmp eq i32 %asmresult.i.i.i.i.i.i.i76, 0
  br i1 %tobool1.not.i.i.i.i.i77, label %if.then.i78.if.end15.sink.split.i.i.i.i.i83_crit_edge, label %if.else.i.i.i.i.i81, !prof !49

if.then.i78.if.end15.sink.split.i.i.i.i.i83_crit_edge: ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i83

if.else.i.i.i.i.i81:                              ; preds = %if.then.i78
  %add.i.i.i.i.i79 = add i32 %asmresult.i.i.i.i.i.i.i76, 1
  %26 = or i32 %add.i.i.i.i.i79, %asmresult.i.i.i.i.i.i.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i80 = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i80, label %if.else.i.i.i.i.i81.__atm_dev_lookup.exit85_crit_edge, label %if.else.i.i.i.i.i81.if.end15.sink.split.i.i.i.i.i83_crit_edge, !prof !50

if.else.i.i.i.i.i81.if.end15.sink.split.i.i.i.i.i83_crit_edge: ; preds = %if.else.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i83

if.else.i.i.i.i.i81.__atm_dev_lookup.exit85_crit_edge: ; preds = %if.else.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %__atm_dev_lookup.exit85

if.end15.sink.split.i.i.i.i.i83:                  ; preds = %if.else.i.i.i.i.i81.if.end15.sink.split.i.i.i.i.i83_crit_edge, %if.then.i78.if.end15.sink.split.i.i.i.i.i83_crit_edge
  %.sink.i.i.i.i.i82 = phi i32 [ 2, %if.then.i78.if.end15.sink.split.i.i.i.i.i83_crit_edge ], [ 1, %if.else.i.i.i.i.i81.if.end15.sink.split.i.i.i.i.i83_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i74, i32 noundef %.sink.i.i.i.i.i82) #9
  br label %__atm_dev_lookup.exit85

__atm_dev_lookup.exit85:                          ; preds = %if.end15.sink.split.i.i.i.i.i83, %if.else.i.i.i.i.i81.__atm_dev_lookup.exit85_crit_edge
  %tobool11.not = icmp eq ptr %dev.0.le.i73, null
  br i1 %tobool11.not, label %__atm_dev_lookup.exit85.if.end13_crit_edge, label %while.body

__atm_dev_lookup.exit85.if.end13_crit_edge:       ; preds = %__atm_dev_lookup.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

while.body:                                       ; preds = %__atm_dev_lookup.exit85
  %call.i.i.i.i.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i74, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i74, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i74, ptr %refcnt.i.i74, i32 1, ptr elementtype(i32) %refcnt.i.i74) #9, !srcloc !52
  %asmresult.i.i.i.i.i.i.i88 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i88)
  %cmp.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i88, 1
  br i1 %cmp.i.i.i.i89, label %do.body.i96, label %if.end5.i.i.i.i91

if.end5.i.i.i.i91:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i88)
  %.not.i.i.i.i90 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i88, 0
  br i1 %.not.i.i.i.i90, label %if.end5.i.i.i.i91.atm_dev_put.exit103_crit_edge, label %if.then10.i.i.i.i92, !prof !50

if.end5.i.i.i.i91.atm_dev_put.exit103_crit_edge:  ; preds = %if.end5.i.i.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %atm_dev_put.exit103

if.then10.i.i.i.i92:                              ; preds = %if.end5.i.i.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i74, i32 noundef 3) #9
  br label %atm_dev_put.exit103

do.body.i96:                                      ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %flags.i93 = getelementptr i8, ptr %.pn.i67, i32 -1080
  %28 = ptrtoint ptr %flags.i93 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i93, align 4
  %and1.i.i94 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i94)
  %tobool.not.i95 = icmp eq i32 %and1.i.i94, 0
  br i1 %tobool.not.i95, label %do.body6.i97, label %do.end9.i99, !prof !49

do.body6.i97:                                     ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end9.i99:                                      ; preds = %do.body.i96
  %30 = ptrtoint ptr %dev.0.le.i73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.0.le.i73, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool10.not.i98 = icmp eq ptr %33, null
  br i1 %tobool10.not.i98, label %do.end9.i99.if.end14.i102_crit_edge, label %if.then11.i100

do.end9.i99.if.end14.i102_crit_edge:              ; preds = %do.end9.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i102

if.then11.i100:                                   ; preds = %do.end9.i99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %33(ptr noundef nonnull %dev.0.le.i73) #9
  br label %if.end14.i102

if.end14.i102:                                    ; preds = %if.then11.i100, %do.end9.i99.if.end14.i102_crit_edge
  %class_dev.i101 = getelementptr i8, ptr %.pn.i67, i32 -928
  tail call void @put_device(ptr noundef %class_dev.i101) #9
  br label %atm_dev_put.exit103

atm_dev_put.exit103:                              ; preds = %if.end14.i102, %if.then10.i.i.i.i92, %if.end5.i.i.i.i91.atm_dev_put.exit103_crit_edge
  %34 = ptrtoint ptr %number8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %number8, align 4
  %inc = add i32 %35, 1
  br label %while.cond

if.end13:                                         ; preds = %__atm_dev_lookup.exit85.if.end13_crit_edge, %for.cond.i69.if.end13_crit_edge, %if.end6
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ops, ptr %call7.i.i.i, align 8
  %tobool15.not = icmp eq ptr %flags, null
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %.sink = phi i32 [ %38, %if.then16 ], [ 0, %if.end13.if.end20_crit_edge ]
  %39 = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %39, align 8
  %stats = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 11
  %41 = call ptr @memset(ptr %stats, i32 0, i32 60)
  %refcnt = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  %42 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %refcnt, align 8
  %call21 = tail call i32 @atm_proc_dev_register(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %type) #13
  br label %out_fail

if.end29:                                         ; preds = %if.end20
  %call30 = tail call i32 @atm_register_sysfs(ptr noundef nonnull %call7.i.i.i, ptr noundef %parent) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %type) #13
  tail call void @atm_proc_dev_deregister(ptr noundef nonnull %call7.i.i.i) #9
  br label %out_fail

if.end38:                                         ; preds = %if.end29
  %dev_list = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 19
  %43 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @atm_devs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_list, ptr noundef %43, ptr noundef nonnull @atm_devs) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %dev_list, ptr getelementptr inbounds (%struct.list_head, ptr @atm_devs, i32 0, i32 1), align 4
  %44 = ptrtoint ptr %dev_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @atm_devs, ptr %dev_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.atm_dev, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %dev_list, ptr %43, align 4
  br label %out

out:                                              ; preds = %out_fail, %if.end.i.i, %if.end38.out_crit_edge
  %dev.0 = phi ptr [ null, %out_fail ], [ %call7.i.i.i, %if.end38.out_crit_edge ], [ %call7.i.i.i, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  br label %cleanup

out_fail:                                         ; preds = %do.end35, %do.end26
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %out

cleanup:                                          ; preds = %out, %atm_dev_put.exit, %do.end
  %retval.0 = phi ptr [ null, %atm_dev_put.exit ], [ %dev.0, %out ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_proc_dev_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_register_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_proc_dev_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atm_dev_deregister(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !50

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/atm/resources.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.end6:                                          ; preds = %entry
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @atm_dev_mutex, i32 noundef 0) #9
  %dev_list = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end6.list_del.exit_crit_edge

do.end6.list_del.exit_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end6.list_del.exit_crit_edge
  %8 = ptrtoint ptr %dev_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_list, align 4
  %prev.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  tail call void @atm_dev_release_vccs(ptr noundef %dev) #9
  tail call void @atm_unregister_sysfs(ptr noundef %dev) #9
  tail call void @atm_proc_dev_deregister(ptr noundef %dev) #9
  %refcnt.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.atm_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.atm_dev_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atm_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #9
  br label %atm_dev_put.exit

do.body.i:                                        ; preds = %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body6.i, label %do.end9.i, !prof !49

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool10.not.i = icmp eq ptr %16, null
  br i1 %tobool10.not.i, label %do.end9.i.if.end14.i_crit_edge, label %if.then11.i

do.end9.i.if.end14.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(ptr noundef %dev) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %do.end9.i.if.end14.i_crit_edge
  %class_dev.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 18
  tail call void @put_device(ptr noundef %class_dev.i) #9
  br label %atm_dev_put.exit

atm_dev_put.exit:                                 ; preds = %if.end14.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.atm_dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_release_vccs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_unregister_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_getnames(ptr noundef %buf, ptr noundef %iobuf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 201) #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !56
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %iobuf_len, i32 -1226833921) #9, !srcloc !59
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @atm_dev_mutex, i32 noundef 0) #9
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end
  %p.0.in = phi ptr [ @atm_devs, %if.end ], [ %p.0, %for.cond.for.cond_crit_edge ]
  %size.0 = phi i32 [ 0, %if.end ], [ %add, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.i61.not = icmp eq ptr %p.0, @atm_devs
  %add = add i32 %size.0, 4
  br i1 %cmp.i61.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %asmresult1)
  %cmp = icmp sgt i32 %size.0, %asmresult1
  br i1 %cmp, label %if.then5, label %if.end8.i

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  br label %cleanup

if.end8.i:                                        ; preds = %for.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 2592) #14
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.then9, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.end8.i
  %.pn64 = load ptr, ptr @atm_devs, align 4
  %cmp13.not65 = icmp eq ptr %.pn64, @atm_devs
  br i1 %cmp13.not65, label %for.cond12.preheader.for.end22_crit_edge, label %for.cond12.preheader.for.body15_crit_edge

for.cond12.preheader.for.body15_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body15

for.cond12.preheader.for.end22_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

if.then9:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  br label %cleanup

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond12.preheader.for.body15_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.body15.for.body15_crit_edge ], [ %.pn64, %for.cond12.preheader.for.body15_crit_edge ]
  %tmp_p.066 = phi ptr [ %incdec.ptr, %for.body15.for.body15_crit_edge ], [ %call9.i, %for.cond12.preheader.for.body15_crit_edge ]
  %number = getelementptr i8, ptr %.pn67, i32 -1092
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  %incdec.ptr = getelementptr i32, ptr %tmp_p.066, i32 1
  %7 = ptrtoint ptr %tmp_p.066 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp_p.066, align 4
  %8 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp13.not = icmp eq ptr %.pn, @atm_devs
  br i1 %cmp13.not, label %for.body15.for.end22_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.body15.for.end22_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

for.end22:                                        ; preds = %for.body15.for.end22_crit_edge, %for.cond12.preheader.for.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp9.i.i = icmp slt i32 %size.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end22
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.lor.end_crit_edge, label %if.then27.i.i, !prof !50

land.rhs16.i.i.lor.end_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %lor.end

if.then.i.i.i:                                    ; preds = %for.end22
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %size.0, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i55

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i55:                                     ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %size.0, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i55.copy_to_user.exit_crit_edge

if.end.i.i55.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %size.0) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call9.i, i32 noundef %size.0) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i55.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %size.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %size.0, %if.end.i.i55.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool24.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool24.not, label %lor.rhs, label %copy_to_user.exit.lor.end_crit_edge

copy_to_user.exit.lor.end_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 221) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i57 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i57 to ptr
  %cpu_domain.i.i58 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i58) #6, !srcloc !56
  %and.i59 = and i32 %12, -13
  %or.i60 = or i32 %and.i59, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i60) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %iobuf_len, i32 %size.0, i32 -1226833921) #9, !srcloc !61
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool34.not = icmp eq i32 %13, 0
  %phi.sel = select i1 %tobool34.not, i32 0, i32 -14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %copy_to_user.exit.lor.end_crit_edge, %if.then27.i.i, %land.rhs16.i.i.lor.end_crit_edge
  %14 = phi i32 [ -14, %copy_to_user.exit.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.lor.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.then9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %if.then5 ], [ %14, %lor.end ], [ -12, %if.then9 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_dev_ioctl(i32 noundef %cmd, ptr noundef %buf, ptr noundef %sioc_len, i32 noundef %number, i32 noundef %compat) local_unnamed_addr #0 align 64 {
entry:
  %esi27 = alloca [6 x i8], align 1
  %addr = alloca %struct.sockaddr_atmsvc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 233) #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !56
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %sioc_len, i32 -1226833921) #9, !srcloc !62
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup159_crit_edge

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup159

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @atm_dev_mutex, i32 noundef 0) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ @atm_devs, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @atm_devs
  br i1 %cmp.not.i.i, label %atm_dev_lookup.exit.thread, label %for.body.i.i

atm_dev_lookup.exit.thread:                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  br label %cond.false

for.body.i.i:                                     ; preds = %for.cond.i.i
  %number1.i.i = getelementptr i8, ptr %.pn.i.i, i32 -1092
  %5 = ptrtoint ptr %number1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number1.i.i, align 4
  %cmp2.i.i = icmp eq i32 %6, %number
  br i1 %cmp2.i.i, label %if.then.i.i315, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

if.then.i.i315:                                   ; preds = %for.body.i.i
  %dev.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -1104
  %refcnt.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 -984
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i315.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !49

if.then.i.i315.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i315
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i315
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.atm_dev_lookup.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !50

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.atm_dev_lookup.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atm_dev_lookup.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i315.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i315.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %atm_dev_lookup.exit

atm_dev_lookup.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.atm_dev_lookup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  %tobool4.not = icmp eq ptr %dev.0.le.i.i, null
  br i1 %tobool4.not, label %atm_dev_lookup.exit.cond.false_crit_edge, label %atm_dev_lookup.exit.if.end9_crit_edge

atm_dev_lookup.exit.if.end9_crit_edge:            ; preds = %atm_dev_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

atm_dev_lookup.exit.cond.false_crit_edge:         ; preds = %atm_dev_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.false:                                       ; preds = %atm_dev_lookup.exit.cond.false_crit_edge, %atm_dev_lookup.exit.thread
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11, i32 noundef %number) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @atm_dev_mutex, i32 noundef 0) #9
  br label %for.cond.i.i319

for.cond.i.i319:                                  ; preds = %for.body.i.i322.for.cond.i.i319_crit_edge, %cond.false
  %.pn.in.i.i316 = phi ptr [ @atm_devs, %cond.false ], [ %.pn.i.i317, %for.body.i.i322.for.cond.i.i319_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i.i316 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i317 = load ptr, ptr %.pn.in.i.i316, align 4
  %cmp.not.i.i318 = icmp eq ptr %.pn.i.i317, @atm_devs
  br i1 %cmp.not.i.i318, label %cond.end.thread346, label %for.body.i.i322

cond.end.thread346:                               ; preds = %for.cond.i.i319
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  br label %cleanup159

for.body.i.i322:                                  ; preds = %for.cond.i.i319
  %number1.i.i320 = getelementptr i8, ptr %.pn.i.i317, i32 -1092
  %10 = ptrtoint ptr %number1.i.i320 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number1.i.i320, align 4
  %cmp2.i.i321 = icmp eq i32 %11, %number
  br i1 %cmp2.i.i321, label %if.then.i.i328, label %for.body.i.i322.for.cond.i.i319_crit_edge

for.body.i.i322.for.cond.i.i319_crit_edge:        ; preds = %for.body.i.i322
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i319

if.then.i.i328:                                   ; preds = %for.body.i.i322
  %dev.0.le.i.i323 = getelementptr i8, ptr %.pn.i.i317, i32 -1104
  %refcnt.i.i.i324 = getelementptr i8, ptr %.pn.i.i317, i32 -984
  %call.i.i.i.i.i.i.i.i325 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i324, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i324, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i324, ptr %refcnt.i.i.i324, i32 1, ptr elementtype(i32) %refcnt.i.i.i324) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i326 = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i326)
  %tobool1.not.i.i.i.i.i.i327 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i326, 0
  br i1 %tobool1.not.i.i.i.i.i.i327, label %if.then.i.i328.if.end15.sink.split.i.i.i.i.i.i333_crit_edge, label %if.else.i.i.i.i.i.i331, !prof !49

if.then.i.i328.if.end15.sink.split.i.i.i.i.i.i333_crit_edge: ; preds = %if.then.i.i328
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i333

if.else.i.i.i.i.i.i331:                           ; preds = %if.then.i.i328
  %add.i.i.i.i.i.i329 = add i32 %asmresult.i.i.i.i.i.i.i.i326, 1
  %13 = or i32 %add.i.i.i.i.i.i329, %asmresult.i.i.i.i.i.i.i.i326
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i330 = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i330, label %if.else.i.i.i.i.i.i331.cond.end_crit_edge, label %if.else.i.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i.i333_crit_edge, !prof !50

if.else.i.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i.i333_crit_edge: ; preds = %if.else.i.i.i.i.i.i331
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i333

if.else.i.i.i.i.i.i331.cond.end_crit_edge:        ; preds = %if.else.i.i.i.i.i.i331
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end15.sink.split.i.i.i.i.i.i333:               ; preds = %if.else.i.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i.i333_crit_edge, %if.then.i.i328.if.end15.sink.split.i.i.i.i.i.i333_crit_edge
  %.sink.i.i.i.i.i.i332 = phi i32 [ 2, %if.then.i.i328.if.end15.sink.split.i.i.i.i.i.i333_crit_edge ], [ 1, %if.else.i.i.i.i.i.i331.if.end15.sink.split.i.i.i.i.i.i333_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i324, i32 noundef %.sink.i.i.i.i.i.i332) #9
  br label %cond.end

cond.end:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i333, %if.else.i.i.i.i.i.i331.cond.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  %tobool7.not = icmp eq ptr %dev.0.le.i.i323, null
  br i1 %tobool7.not, label %cond.end.cleanup159_crit_edge, label %cond.end.if.end9_crit_edge

cond.end.if.end9_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

cond.end.cleanup159_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup159

if.end9:                                          ; preds = %cond.end.if.end9_crit_edge, %atm_dev_lookup.exit.if.end9_crit_edge
  %cond340 = phi ptr [ %dev.0.le.i.i323, %cond.end.if.end9_crit_edge ], [ %dev.0.le.i.i, %atm_dev_lookup.exit.if.end9_crit_edge ]
  %14 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end9.sw.default_crit_edge [
    i32 1074553220, label %sw.bb
    i32 1074553221, label %sw.bb16
    i32 1074553228, label %for.body.preheader
    i32 1074553229, label %if.end9.sw.bb26_crit_edge
    i32 1074553169, label %sw.bb40
    i32 1074553168, label %if.end9.sw.bb44_crit_edge
    i32 1074553226, label %sw.bb50
    i32 1074553217, label %sw.bb55
    i32 1074553223, label %sw.bb60
    i32 1074553224, label %if.end9.sw.bb64_crit_edge
    i32 1074553225, label %if.end9.sw.bb64_crit_edge391
    i32 1074553230, label %if.end9.sw.bb64_crit_edge392
    i32 1074553231, label %if.end9.sw.bb64_crit_edge393
    i32 1074553222, label %if.end9.sw.bb87_crit_edge
    i32 1074553232, label %if.end9.sw.bb87_crit_edge394
    i32 1074553171, label %sw.bb107
    i32 1074553227, label %if.end9.sw.bb116_crit_edge
    i32 -2145099503, label %if.end9.sw.bb116_crit_edge395
    i32 -1073454830, label %if.end9.sw.bb116_crit_edge396
    i32 -1073454829, label %if.end9.sw.bb116_crit_edge397
    i32 1074028821, label %if.end9.sw.bb116_crit_edge398
  ]

if.end9.sw.bb116_crit_edge398:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb116

if.end9.sw.bb116_crit_edge397:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb116

if.end9.sw.bb116_crit_edge396:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb116

if.end9.sw.bb116_crit_edge395:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb116

if.end9.sw.bb116_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb116

if.end9.sw.bb87_crit_edge394:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb87

if.end9.sw.bb87_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb87

if.end9.sw.bb64_crit_edge393:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end9.sw.bb64_crit_edge392:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end9.sw.bb64_crit_edge391:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end9.sw.bb64_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end9.sw.bb44_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end9.sw.bb26_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

if.end9.sw.default_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

for.body.preheader:                               ; preds = %if.end9
  %arrayidx = getelementptr %struct.atm_dev, ptr %cond340, i32 0, i32 9, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %for.cond, label %for.body.preheader.done_crit_edge

for.body.preheader.done_crit_edge:                ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb:                                            ; preds = %if.end9
  %type = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 8
  %call10 = tail call i32 @strlen(ptr noundef %18) #16
  %add = add i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %sw.bb
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.done_crit_edge, label %if.then27.i.i, !prof !50

land.rhs16.i.i.done_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %done

if.then.i.i.i:                                    ; preds = %sw.bb
  tail call void @__check_object_size(ptr noundef %18, i32 noundef %add, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %add, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %18, i32 noundef %add) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %18, i32 noundef %add) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool13.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool13.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.done_crit_edge

copy_to_user.exit.done_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end9
  %esi = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 9
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i226 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i226, label %sw.bb16.done_crit_edge, label %if.end.i.i230

sw.bb16.done_crit_edge:                           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i.i230:                                    ; preds = %sw.bb16
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 6, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i228 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i228)
  %cmp.i6.i229 = icmp eq i32 %asmresult.i.i228, 0
  br i1 %cmp.i6.i229, label %copy_to_user.exit235, label %if.end.i.i230.done_crit_edge

if.end.i.i230.done_crit_edge:                     ; preds = %if.end.i.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit235:                             ; preds = %if.end.i.i230
  %call.i.i.i231 = tail call zeroext i1 @__kasan_check_read(ptr noundef %esi, i32 noundef 6) #9
  %call.i12.i.i232 = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %esi, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i232)
  %tobool18.not = icmp eq i32 %call.i12.i.i232, 0
  br i1 %tobool18.not, label %copy_to_user.exit235.if.then137_crit_edge, label %copy_to_user.exit235.done_crit_edge

copy_to_user.exit235.done_crit_edge:              ; preds = %copy_to_user.exit235
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit235.if.then137_crit_edge:        ; preds = %copy_to_user.exit235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.atm_dev, ptr %cond340, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not.1 = icmp eq i8 %22, 0
  br i1 %tobool23.not.1, label %for.cond.1, label %for.cond.done_crit_edge

for.cond.done_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.atm_dev, ptr %cond340, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23.not.2 = icmp eq i8 %24, 0
  br i1 %tobool23.not.2, label %for.cond.2, label %for.cond.1.done_crit_edge

for.cond.1.done_crit_edge:                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.atm_dev, ptr %cond340, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool23.not.3 = icmp eq i8 %26, 0
  br i1 %tobool23.not.3, label %for.cond.3, label %for.cond.2.done_crit_edge

for.cond.2.done_crit_edge:                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.atm_dev, ptr %cond340, i32 0, i32 9, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not.4 = icmp eq i8 %28, 0
  br i1 %tobool23.not.4, label %for.cond.4, label %for.cond.3.done_crit_edge

for.cond.3.done_crit_edge:                        ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.atm_dev, ptr %cond340, i32 0, i32 9, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool23.not.5 = icmp eq i8 %30, 0
  br i1 %tobool23.not.5, label %for.cond.4.sw.bb26_crit_edge, label %for.cond.4.done_crit_edge

for.cond.4.done_crit_edge:                        ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.cond.4.sw.bb26_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

sw.bb26:                                          ; preds = %for.cond.4.sw.bb26_crit_edge, %if.end9.sw.bb26_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %esi27) #9
  %31 = call ptr @memset(ptr %esi27, i32 255, i32 6)
  %call28 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call28, label %if.end8.i.i240, label %sw.bb26.cleanup39_crit_edge

sw.bb26.cleanup39_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

if.end8.i.i240:                                   ; preds = %sw.bb26
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i242 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i242, label %if.end8.i.i240.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i240.if.then11.i.i_crit_edge:           ; preds = %if.end8.i.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i240
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 6, i32 -1226833920) #15, !srcloc !63
  %asmresult.i.i244 = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i244)
  %cmp.i6.i245 = icmp eq i32 %asmresult.i.i244, 0
  br i1 %cmp.i6.i245, label %if.end.i.i247, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !50

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i247:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i246 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %esi27, i32 noundef 6) #9
  %33 = call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !56
  %and.i.i.i.i = and i32 %35, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %esi27, ptr noundef %buf, i32 noundef 6) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end35, label %if.end.i.i247.if.then11.i.i_crit_edge, !prof !50

if.end.i.i247.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i247.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i240.if.then11.i.i_crit_edge
  %res.0.i.i357 = phi i32 [ %call1.i.i.i, %if.end.i.i247.if.then11.i.i_crit_edge ], [ 6, %if.end8.i.i240.if.then11.i.i_crit_edge ], [ 6, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 6, %res.0.i.i357
  %add.ptr.i.i = getelementptr i8, ptr %esi27, i32 %sub.i.i
  %36 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i357)
  br label %cleanup39

if.end35:                                         ; preds = %if.end.i.i247
  call void @__sanitizer_cov_trace_pc() #11
  %esi36 = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 9
  %37 = call ptr @memcpy(ptr %esi36, ptr %esi27, i32 6)
  br label %cleanup39

cleanup39:                                        ; preds = %if.end35, %if.then11.i.i, %sw.bb26.cleanup39_crit_edge
  %error.1 = phi i32 [ 6, %if.end35 ], [ -1, %sw.bb26.cleanup39_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %esi27) #9
  br label %done

sw.bb40:                                          ; preds = %if.end9
  %call41 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call41, label %sw.bb40.sw.bb44_crit_edge, label %sw.bb40.done_crit_edge

sw.bb40.done_crit_edge:                           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb40.sw.bb44_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

sw.bb44:                                          ; preds = %sw.bb40.sw.bb44_crit_edge, %if.end9.sw.bb44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553169, i32 %cmd)
  %cmp45 = icmp eq i32 %cmd, 1074553169
  %conv = zext i1 %cmp45 to i32
  %call46 = tail call fastcc i32 @fetch_stats(ptr noundef nonnull %cond340, ptr noundef %buf, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %sw.bb44.if.then137_crit_edge, label %sw.bb44.done_crit_edge

sw.bb44.done_crit_edge:                           ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb44.if.then137_crit_edge:                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137

sw.bb50:                                          ; preds = %if.end9
  %ci_range = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 10
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i255 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i255, label %sw.bb50.done_crit_edge, label %if.end.i.i259

sw.bb50.done_crit_edge:                           ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i.i259:                                    ; preds = %sw.bb50
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 2, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i257 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i257)
  %cmp.i6.i258 = icmp eq i32 %asmresult.i.i257, 0
  br i1 %cmp.i6.i258, label %copy_to_user.exit264, label %if.end.i.i259.done_crit_edge

if.end.i.i259.done_crit_edge:                     ; preds = %if.end.i.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit264:                             ; preds = %if.end.i.i259
  %call.i.i.i260 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ci_range, i32 noundef 2) #9
  %call.i12.i.i261 = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %ci_range, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i261)
  %tobool52.not = icmp eq i32 %call.i12.i.i261, 0
  br i1 %tobool52.not, label %copy_to_user.exit264.if.then137_crit_edge, label %copy_to_user.exit264.done_crit_edge

copy_to_user.exit264.done_crit_edge:              ; preds = %copy_to_user.exit264
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit264.if.then137_crit_edge:        ; preds = %copy_to_user.exit264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137

sw.bb55:                                          ; preds = %if.end9
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 13
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i271 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i271, label %sw.bb55.done_crit_edge, label %if.end.i.i275

sw.bb55.done_crit_edge:                           ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i.i275:                                    ; preds = %sw.bb55
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i273 = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i273)
  %cmp.i6.i274 = icmp eq i32 %asmresult.i.i273, 0
  br i1 %cmp.i6.i274, label %copy_to_user.exit280, label %if.end.i.i275.done_crit_edge

if.end.i.i275.done_crit_edge:                     ; preds = %if.end.i.i275
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit280:                             ; preds = %if.end.i.i275
  %call.i.i.i276 = tail call zeroext i1 @__kasan_check_read(ptr noundef %link_rate, i32 noundef 4) #9
  %call.i12.i.i277 = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %link_rate, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i277)
  %tobool57.not = icmp eq i32 %call.i12.i.i277, 0
  br i1 %tobool57.not, label %copy_to_user.exit280.if.then137_crit_edge, label %copy_to_user.exit280.done_crit_edge

copy_to_user.exit280.done_crit_edge:              ; preds = %copy_to_user.exit280
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

copy_to_user.exit280.if.then137_crit_edge:        ; preds = %copy_to_user.exit280
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137

sw.bb60:                                          ; preds = %if.end9
  %call61 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call61, label %sw.epilog.thread374, label %sw.bb60.done_crit_edge

sw.bb60.done_crit_edge:                           ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.epilog.thread374:                              ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @atm_reset_addr(ptr noundef nonnull %cond340, i32 noundef 0) #9
  br label %done

sw.bb64:                                          ; preds = %if.end9.sw.bb64_crit_edge, %if.end9.sw.bb64_crit_edge391, %if.end9.sw.bb64_crit_edge392, %if.end9.sw.bb64_crit_edge393
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %addr) #9
  %40 = call ptr @memset(ptr %addr, i32 255, i32 44)
  %call65 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call65, label %if.end8.i.i285, label %sw.bb64.cleanup86_crit_edge

sw.bb64.cleanup86_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup86

if.end8.i.i285:                                   ; preds = %sw.bb64
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i287 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i287, label %if.end8.i.i285.if.then11.i.i304_crit_edge, label %land.lhs.true.i.i291

if.end8.i.i285.if.then11.i.i304_crit_edge:        ; preds = %if.end8.i.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i304

land.lhs.true.i.i291:                             ; preds = %if.end8.i.i285
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 44, i32 -1226833920) #15, !srcloc !63
  %asmresult.i.i289 = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i289)
  %cmp.i6.i290 = icmp eq i32 %asmresult.i.i289, 0
  br i1 %cmp.i6.i290, label %if.end.i.i301, label %land.lhs.true.i.i291.if.then11.i.i304_crit_edge, !prof !50

land.lhs.true.i.i291.if.then11.i.i304_crit_edge:  ; preds = %land.lhs.true.i.i291
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i304

if.end.i.i301:                                    ; preds = %land.lhs.true.i.i291
  %call.i.i.i292 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %addr, i32 noundef 44) #9
  %42 = call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i.i293 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i293 to ptr
  %cpu_domain.i.i.i.i.i294 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i294) #6, !srcloc !56
  %and.i.i.i.i295 = and i32 %44, -13
  %or.i.i.i.i296 = or i32 %and.i.i.i.i295, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i296) #9, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %call1.i.i.i297 = call i32 @arm_copy_from_user(ptr noundef nonnull %addr, ptr noundef %buf, i32 noundef 44) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #9, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i297)
  %tobool4.not.i.i300 = icmp eq i32 %call1.i.i.i297, 0
  br i1 %tobool4.not.i.i300, label %if.end71, label %if.end.i.i301.if.then11.i.i304_crit_edge, !prof !50

if.end.i.i301.if.then11.i.i304_crit_edge:         ; preds = %if.end.i.i301
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i304

if.then11.i.i304:                                 ; preds = %if.end.i.i301.if.then11.i.i304_crit_edge, %land.lhs.true.i.i291.if.then11.i.i304_crit_edge, %if.end8.i.i285.if.then11.i.i304_crit_edge
  %res.0.i.i299366 = phi i32 [ %call1.i.i.i297, %if.end.i.i301.if.then11.i.i304_crit_edge ], [ 44, %if.end8.i.i285.if.then11.i.i304_crit_edge ], [ 44, %land.lhs.true.i.i291.if.then11.i.i304_crit_edge ]
  %sub.i.i302 = sub i32 44, %res.0.i.i299366
  %add.ptr.i.i303 = getelementptr i8, ptr %addr, i32 %sub.i.i302
  %45 = call ptr @memset(ptr %add.ptr.i.i303, i32 0, i32 %res.0.i.i299366)
  br label %cleanup86

if.end71:                                         ; preds = %if.end.i.i301
  %46 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %if.else [
    i32 1074553230, label %if.end71.if.then76_crit_edge
    i32 1074553224, label %if.end71.if.then76_crit_edge399
  ]

if.end71.if.then76_crit_edge399:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.end71.if.then76_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.then76:                                        ; preds = %if.end71.if.then76_crit_edge, %if.end71.if.then76_crit_edge399
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553224, i32 %cmd)
  %cmp72 = icmp ne i32 %cmd, 1074553224
  %cond79 = zext i1 %cmp72 to i32
  %call80 = call i32 @atm_add_addr(ptr noundef nonnull %cond340, ptr noundef nonnull %addr, i32 noundef %cond79) #9
  br label %cleanup86

if.else:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553225, i32 %cmd)
  %cmp81 = icmp ne i32 %cmd, 1074553225
  %cond83 = zext i1 %cmp81 to i32
  %call84 = call i32 @atm_del_addr(ptr noundef nonnull %cond340, ptr noundef nonnull %addr, i32 noundef %cond83) #9
  br label %cleanup86

cleanup86:                                        ; preds = %if.else, %if.then76, %if.then11.i.i304, %sw.bb64.cleanup86_crit_edge
  %error.3 = phi i32 [ -1, %sw.bb64.cleanup86_crit_edge ], [ %call80, %if.then76 ], [ %call84, %if.else ], [ -14, %if.then11.i.i304 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %addr) #9
  br label %done

sw.bb87:                                          ; preds = %if.end9.sw.bb87_crit_edge, %if.end9.sw.bb87_crit_edge394
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553222, i32 %cmd)
  %cmp88 = icmp ne i32 %cmd, 1074553222
  %cond90 = zext i1 %cmp88 to i32
  %call91 = tail call i32 @atm_get_addr(ptr noundef nonnull %cond340, ptr noundef %buf, i32 noundef %asmresult1, i32 noundef %cond90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %sw.bb87.done_crit_edge, label %if.end95

sw.bb87.done_crit_edge:                           ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end95:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 352) #9
  %47 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i307 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i307 to ptr
  %cpu_domain.i.i308 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i308) #6, !srcloc !56
  %and.i309 = and i32 %49, -13
  %or.i310 = or i32 %and.i309, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i310) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sioc_len, i32 %call91, i32 -1226833921) #9, !srcloc !64
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool105.not = icmp eq i32 %50, 0
  %cond106 = select i1 %tobool105.not, i32 0, i32 -14
  br label %done

sw.bb107:                                         ; preds = %if.end9
  %51 = ptrtoint ptr %buf to i32
  %52 = lshr i32 %51, 8
  %and = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool108.not = icmp ne i32 %and, 0
  %and109 = and i32 %51, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and109, i32 %and)
  %cmp112 = icmp ugt i32 %and109, %and
  %or.cond219 = and i1 %tobool108.not, %cmp112
  br i1 %or.cond219, label %sw.bb107.done_crit_edge, label %sw.bb107.sw.bb116_crit_edge

sw.bb107.sw.bb116_crit_edge:                      ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb116

sw.bb107.done_crit_edge:                          ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb116:                                         ; preds = %sw.bb107.sw.bb116_crit_edge, %if.end9.sw.bb116_crit_edge, %if.end9.sw.bb116_crit_edge395, %if.end9.sw.bb116_crit_edge396, %if.end9.sw.bb116_crit_edge397, %if.end9.sw.bb116_crit_edge398
  %call117 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call117, label %sw.bb116.sw.default_crit_edge, label %sw.bb116.done_crit_edge

sw.bb116.done_crit_edge:                          ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb116.sw.default_crit_edge:                    ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.default:                                       ; preds = %sw.bb116.sw.default_crit_edge, %if.end9.sw.default_crit_edge
  %53 = ptrtoint ptr %cond340 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cond340, align 8
  %ioctl = getelementptr inbounds %struct.atmdev_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioctl, align 4
  %tobool120.not = icmp eq ptr %56, null
  br i1 %tobool120.not, label %sw.default.done_crit_edge, label %if.end122

sw.default.done_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end122:                                        ; preds = %sw.default
  %call125 = tail call i32 %56(ptr noundef nonnull %cond340, i32 noundef %cmd, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end122.sw.epilog_crit_edge

if.end122.sw.epilog_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then128:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call125)
  %cmp129 = icmp eq i32 %call125, -515
  %spec.select = select i1 %cmp129, i32 -25, i32 %call125
  br label %done

sw.epilog:                                        ; preds = %if.end122.sw.epilog_crit_edge, %copy_to_user.exit.sw.epilog_crit_edge
  %size.0 = phi i32 [ %call125, %if.end122.sw.epilog_crit_edge ], [ %add, %copy_to_user.exit.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool136.not = icmp eq i32 %size.0, 0
  br i1 %tobool136.not, label %sw.epilog.done_crit_edge, label %sw.epilog.if.then137_crit_edge

sw.epilog.if.then137_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then137:                                       ; preds = %sw.epilog.if.then137_crit_edge, %copy_to_user.exit280.if.then137_crit_edge, %copy_to_user.exit264.if.then137_crit_edge, %sw.bb44.if.then137_crit_edge, %copy_to_user.exit235.if.then137_crit_edge
  %size.0373 = phi i32 [ %size.0, %sw.epilog.if.then137_crit_edge ], [ 6, %copy_to_user.exit235.if.then137_crit_edge ], [ 60, %sw.bb44.if.then137_crit_edge ], [ 2, %copy_to_user.exit264.if.then137_crit_edge ], [ 4, %copy_to_user.exit280.if.then137_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 395) #9
  %57 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i311 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i311 to ptr
  %cpu_domain.i.i312 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i312) #6, !srcloc !56
  %and.i313 = and i32 %59, -13
  %or.i314 = or i32 %and.i313, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i314) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  %60 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sioc_len, i32 %size.0373, i32 -1226833921) #9, !srcloc !65
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #9, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool153.not = icmp eq i32 %60, 0
  %cond154 = select i1 %tobool153.not, i32 0, i32 -14
  br label %done

done:                                             ; preds = %if.then137, %sw.epilog.done_crit_edge, %if.then128, %sw.default.done_crit_edge, %sw.bb116.done_crit_edge, %sw.bb107.done_crit_edge, %if.end95, %sw.bb87.done_crit_edge, %cleanup86, %sw.epilog.thread374, %sw.bb60.done_crit_edge, %copy_to_user.exit280.done_crit_edge, %if.end.i.i275.done_crit_edge, %sw.bb55.done_crit_edge, %copy_to_user.exit264.done_crit_edge, %if.end.i.i259.done_crit_edge, %sw.bb50.done_crit_edge, %sw.bb44.done_crit_edge, %sw.bb40.done_crit_edge, %cleanup39, %for.cond.4.done_crit_edge, %for.cond.3.done_crit_edge, %for.cond.2.done_crit_edge, %for.cond.1.done_crit_edge, %for.cond.done_crit_edge, %copy_to_user.exit235.done_crit_edge, %if.end.i.i230.done_crit_edge, %sw.bb16.done_crit_edge, %copy_to_user.exit.done_crit_edge, %if.then27.i.i, %land.rhs16.i.i.done_crit_edge, %for.body.preheader.done_crit_edge
  %error.4 = phi i32 [ %spec.select, %if.then128 ], [ %cond154, %if.then137 ], [ %call91, %sw.bb87.done_crit_edge ], [ %cond106, %if.end95 ], [ %error.3, %cleanup86 ], [ %call46, %sw.bb44.done_crit_edge ], [ %error.1, %cleanup39 ], [ -14, %copy_to_user.exit.done_crit_edge ], [ -14, %copy_to_user.exit235.done_crit_edge ], [ -1, %sw.bb40.done_crit_edge ], [ -14, %copy_to_user.exit264.done_crit_edge ], [ -14, %copy_to_user.exit280.done_crit_edge ], [ -1, %sw.bb60.done_crit_edge ], [ -22, %sw.bb107.done_crit_edge ], [ -1, %sw.bb116.done_crit_edge ], [ -22, %sw.default.done_crit_edge ], [ 0, %sw.epilog.done_crit_edge ], [ 0, %sw.epilog.thread374 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.done_crit_edge ], [ -14, %sw.bb16.done_crit_edge ], [ -14, %if.end.i.i230.done_crit_edge ], [ -14, %sw.bb50.done_crit_edge ], [ -14, %if.end.i.i259.done_crit_edge ], [ -14, %sw.bb55.done_crit_edge ], [ -14, %if.end.i.i275.done_crit_edge ], [ -17, %for.cond.4.done_crit_edge ], [ -17, %for.cond.3.done_crit_edge ], [ -17, %for.cond.2.done_crit_edge ], [ -17, %for.cond.1.done_crit_edge ], [ -17, %for.cond.done_crit_edge ], [ -17, %for.body.preheader.done_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup159_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.cleanup159_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup159

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #9
  br label %cleanup159

do.body.i:                                        ; preds = %done
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %flags.i = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 6
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body6.i, label %do.end9.i, !prof !49

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  %64 = ptrtoint ptr %cond340 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cond340, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool10.not.i = icmp eq ptr %67, null
  br i1 %tobool10.not.i, label %do.end9.i.if.end14.i_crit_edge, label %if.then11.i

do.end9.i.if.end14.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %67(ptr noundef nonnull %cond340) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %do.end9.i.if.end14.i_crit_edge
  %class_dev.i = getelementptr inbounds %struct.atm_dev, ptr %cond340, i32 0, i32 18
  call void @put_device(ptr noundef %class_dev.i) #9
  br label %cleanup159

cleanup159:                                       ; preds = %if.end14.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup159_crit_edge, %cond.end.cleanup159_crit_edge, %cond.end.thread346, %entry.cleanup159_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup159_crit_edge ], [ -19, %cond.end.cleanup159_crit_edge ], [ -19, %cond.end.thread346 ], [ %error.4, %if.end5.i.i.i.i.cleanup159_crit_edge ], [ %error.4, %if.then10.i.i.i.i ], [ %error.4, %if.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fetch_stats(ptr noundef %dev, ptr noundef %arg, i32 noundef %zero) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.atm_dev_stats, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %tmp) #9
  %stats = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11
  %call.i.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #9
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %stats, align 4
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp, align 4
  %tx_err.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %call.i.i18.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_err.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %tx_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %tx_err.i, align 4
  %tx_err3.i = getelementptr inbounds %struct.atm_aal_stats, ptr %tmp, i32 0, i32 1
  %5 = ptrtoint ptr %tx_err3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_err3.i, align 4
  %rx.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %call.i.i19.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %rx.i, align 4
  %rx5.i = getelementptr inbounds %struct.atm_aal_stats, ptr %tmp, i32 0, i32 2
  %8 = ptrtoint ptr %rx5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx5.i, align 4
  %rx_err.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %call.i.i20.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_err.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %rx_err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rx_err.i, align 4
  %rx_err7.i = getelementptr inbounds %struct.atm_aal_stats, ptr %tmp, i32 0, i32 3
  %11 = ptrtoint ptr %rx_err7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rx_err7.i, align 4
  %rx_drop.i = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %call.i.i21.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_drop.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %rx_drop.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rx_drop.i, align 4
  %rx_drop9.i = getelementptr inbounds %struct.atm_aal_stats, ptr %tmp, i32 0, i32 4
  %14 = ptrtoint ptr %rx_drop9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_drop9.i, align 4
  %aal34 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 1
  %aal343 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 1
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %aal34, i32 noundef 4) #9
  %15 = ptrtoint ptr %aal34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %aal34, align 4
  %17 = ptrtoint ptr %aal343 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %aal343, align 4
  %tx_err.i29 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 1, i32 1
  %call.i.i18.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_err.i29, i32 noundef 4) #9
  %18 = ptrtoint ptr %tx_err.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %tx_err.i29, align 4
  %tx_err3.i31 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %tx_err3.i31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tx_err3.i31, align 4
  %rx.i32 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 1, i32 2
  %call.i.i19.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx.i32, i32 noundef 4) #9
  %21 = ptrtoint ptr %rx.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %rx.i32, align 4
  %rx5.i34 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %rx5.i34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx5.i34, align 4
  %rx_err.i35 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 1, i32 3
  %call.i.i20.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_err.i35, i32 noundef 4) #9
  %24 = ptrtoint ptr %rx_err.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rx_err.i35, align 4
  %rx_err7.i37 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %rx_err7.i37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_err7.i37, align 4
  %rx_drop.i38 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 1, i32 4
  %call.i.i21.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_drop.i38, i32 noundef 4) #9
  %27 = ptrtoint ptr %rx_drop.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %rx_drop.i38, align 4
  %rx_drop9.i40 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %rx_drop9.i40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rx_drop9.i40, align 4
  %aal5 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 2
  %aal55 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 2
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %aal5, i32 noundef 4) #9
  %30 = ptrtoint ptr %aal5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %aal5, align 4
  %32 = ptrtoint ptr %aal55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %aal55, align 4
  %tx_err.i42 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 2, i32 1
  %call.i.i18.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_err.i42, i32 noundef 4) #9
  %33 = ptrtoint ptr %tx_err.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %tx_err.i42, align 4
  %tx_err3.i44 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %tx_err3.i44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tx_err3.i44, align 4
  %rx.i45 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 2, i32 2
  %call.i.i19.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx.i45, i32 noundef 4) #9
  %36 = ptrtoint ptr %rx.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %rx.i45, align 4
  %rx5.i47 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %rx5.i47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rx5.i47, align 4
  %rx_err.i48 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 2, i32 3
  %call.i.i20.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_err.i48, i32 noundef 4) #9
  %39 = ptrtoint ptr %rx_err.i48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %rx_err.i48, align 4
  %rx_err7.i50 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %rx_err7.i50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %rx_err7.i50, align 4
  %rx_drop.i51 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 11, i32 2, i32 4
  %call.i.i21.i52 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_drop.i51, i32 noundef 4) #9
  %42 = ptrtoint ptr %rx_drop.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %rx_drop.i51, align 4
  %rx_drop9.i53 = getelementptr inbounds %struct.atm_dev_stats, ptr %tmp, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %rx_drop9.i53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rx_drop9.i53, align 4
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %if.end.thread, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end8.i.i.if.end18.thread_crit_edge, label %if.end.i.i

if.end8.i.i.if.end18.thread_crit_edge:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end.i.i:                                       ; preds = %if.end8.i.i
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %arg, i32 60, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end, label %if.end.i.i.if.end18.thread_crit_edge

if.end.i.i.if.end18.thread_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end:                                           ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 60) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %arg, ptr noundef nonnull %tmp, i32 noundef 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zero)
  %tobool6.not = icmp ne i32 %zero, 0
  %or.cond = select i1 %tobool6.not, i1 %phi.cmp, i1 false
  br i1 %or.cond, label %if.end.if.then8_crit_edge, label %if.end18

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zero)
  %tobool6.not92.not = icmp eq i32 %zero, 0
  br i1 %tobool6.not92.not, label %if.end.thread.if.end18.thread95_crit_edge, label %if.end.thread.if.then8_crit_edge

if.end.thread.if.then8_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.thread.if.end18.thread95_crit_edge:        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread95

if.then8:                                         ; preds = %if.end.thread.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %46 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmp, align 4
  %call.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %stats, i32 1, i32 3, i32 1) #9
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats, ptr %stats, i32 %47, ptr elementtype(i32) %stats) #9, !srcloc !66
  %49 = ptrtoint ptr %tx_err3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_err3.i, align 4
  %call.i.i14.i = call zeroext i1 @__kasan_check_write(ptr noundef %tx_err.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %tx_err.i, i32 1, i32 3, i32 1) #9
  %51 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err.i, ptr %tx_err.i, i32 %50, ptr elementtype(i32) %tx_err.i) #9, !srcloc !66
  %52 = ptrtoint ptr %rx5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx5.i, align 4
  %call.i.i15.i = call zeroext i1 @__kasan_check_write(ptr noundef %rx.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx.i, i32 1, i32 3, i32 1) #9
  %54 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i, ptr %rx.i, i32 %53, ptr elementtype(i32) %rx.i) #9, !srcloc !66
  %55 = ptrtoint ptr %rx_err7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_err7.i, align 4
  %call.i.i16.i = call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx_err.i, i32 1, i32 3, i32 1) #9
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i, ptr %rx_err.i, i32 %56, ptr elementtype(i32) %rx_err.i) #9, !srcloc !66
  %58 = ptrtoint ptr %rx_drop9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_drop9.i, align 4
  %call.i.i17.i = call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx_drop.i, i32 1, i32 3, i32 1) #9
  %60 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop.i, ptr %rx_drop.i, i32 %59, ptr elementtype(i32) %rx_drop.i) #9, !srcloc !66
  %61 = ptrtoint ptr %aal343 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aal343, align 4
  %call.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %aal34, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %aal34, i32 1, i32 3, i32 1) #9
  %63 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aal34, ptr %aal34, i32 %62, ptr elementtype(i32) %aal34) #9, !srcloc !66
  %64 = ptrtoint ptr %tx_err3.i31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_err3.i31, align 4
  %call.i.i14.i62 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_err.i29, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %tx_err.i29, i32 1, i32 3, i32 1) #9
  %66 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err.i29, ptr %tx_err.i29, i32 %65, ptr elementtype(i32) %tx_err.i29) #9, !srcloc !66
  %67 = ptrtoint ptr %rx5.i34 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx5.i34, align 4
  %call.i.i15.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %rx.i32, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx.i32, i32 1, i32 3, i32 1) #9
  %69 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i32, ptr %rx.i32, i32 %68, ptr elementtype(i32) %rx.i32) #9, !srcloc !66
  %70 = ptrtoint ptr %rx_err7.i37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_err7.i37, align 4
  %call.i.i16.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i35, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx_err.i35, i32 1, i32 3, i32 1) #9
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i35, ptr %rx_err.i35, i32 %71, ptr elementtype(i32) %rx_err.i35) #9, !srcloc !66
  %73 = ptrtoint ptr %rx_drop9.i40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_drop9.i40, align 4
  %call.i.i17.i71 = call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop.i38, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx_drop.i38, i32 1, i32 3, i32 1) #9
  %75 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop.i38, ptr %rx_drop.i38, i32 %74, ptr elementtype(i32) %rx_drop.i38) #9, !srcloc !66
  %76 = ptrtoint ptr %aal55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %aal55, align 4
  %call.i.i.i72 = call zeroext i1 @__kasan_check_write(ptr noundef %aal5, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %aal5, i32 1, i32 3, i32 1) #9
  %78 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aal5, ptr %aal5, i32 %77, ptr elementtype(i32) %aal5) #9, !srcloc !66
  %79 = ptrtoint ptr %tx_err3.i44 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_err3.i44, align 4
  %call.i.i14.i75 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_err.i42, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %tx_err.i42, i32 1, i32 3, i32 1) #9
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err.i42, ptr %tx_err.i42, i32 %80, ptr elementtype(i32) %tx_err.i42) #9, !srcloc !66
  %82 = ptrtoint ptr %rx5.i47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx5.i47, align 4
  %call.i.i15.i78 = call zeroext i1 @__kasan_check_write(ptr noundef %rx.i45, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx.i45, i32 1, i32 3, i32 1) #9
  %84 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i45, ptr %rx.i45, i32 %83, ptr elementtype(i32) %rx.i45) #9, !srcloc !66
  %85 = ptrtoint ptr %rx_err7.i50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_err7.i50, align 4
  %call.i.i16.i81 = call zeroext i1 @__kasan_check_write(ptr noundef %rx_err.i48, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx_err.i48, i32 1, i32 3, i32 1) #9
  %87 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err.i48, ptr %rx_err.i48, i32 %86, ptr elementtype(i32) %rx_err.i48) #9, !srcloc !66
  %88 = ptrtoint ptr %rx_drop9.i53 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_drop9.i53, align 4
  %call.i.i17.i84 = call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop.i51, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %rx_drop.i51, i32 1, i32 3, i32 1) #9
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop.i51, ptr %rx_drop.i51, i32 %89, ptr elementtype(i32) %rx_drop.i51) #9, !srcloc !66
  br label %if.end18.thread95

if.end18:                                         ; preds = %if.end
  br i1 %phi.cmp, label %if.end18.if.end18.thread95_crit_edge, label %if.end18.if.end18.thread_crit_edge

if.end18.if.end18.thread_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread

if.end18.if.end18.thread95_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.thread95

if.end18.thread95:                                ; preds = %if.end18.if.end18.thread95_crit_edge, %if.then8, %if.end.thread.if.end18.thread95_crit_edge
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end18.thread95, %if.end18.if.end18.thread_crit_edge, %if.end.i.i.if.end18.thread_crit_edge, %if.end8.i.i.if.end18.thread_crit_edge
  %91 = phi i32 [ 0, %if.end18.thread95 ], [ -14, %if.end18.if.end18.thread_crit_edge ], [ -14, %if.end.i.i.if.end18.thread_crit_edge ], [ -14, %if.end8.i.i.if.end18.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %tmp) #9
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_reset_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_add_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_del_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_get_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atm_dev_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @atm_dev_mutex, i32 noundef 0) #9
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start_head(ptr noundef nonnull @atm_devs, i64 noundef %1) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atm_dev_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @atm_dev_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atm_dev_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @atm_devs, ptr noundef %pos) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !31, !33, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @atm_devs, !1, !"atm_devs", i1 false, i1 false}
!1 = !{!"../net/atm/resources.c", i32 32, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/atm/resources.c", i32 33, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @atm_dev_mutex, !3, !"atm_dev_mutex", i1 false, i1 false}
!6 = !{ptr @__ksymtab_atm_dev_lookup, !7, !"__ksymtab_atm_dev_lookup", i1 false, i1 false}
!7 = !{!"../net/atm/resources.c", i32 74, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/atm/resources.c", i32 84, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @atm_dev_register._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @atm_dev_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/atm/resources.c", i32 114, i32 3}
!16 = !{ptr @atm_dev_register._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @atm_dev_register._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/atm/resources.c", i32 119, i32 3}
!20 = !{ptr @atm_dev_register._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @atm_dev_register._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_atm_dev_register, !23, !"__ksymtab_atm_dev_register", i1 false, i1 false}
!23 = !{!"../net/atm/resources.c", i32 135, i32 1}
!24 = !{ptr @__ksymtab_atm_dev_deregister, !25, !"__ksymtab_atm_dev_deregister", i1 false, i1 false}
!25 = !{!"../net/atm/resources.c", i32 157, i32 1}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/atm/resources.c", i32 236, i32 8}
!28 = !{ptr @__alloc_atm_dev.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../net/atm/resources.c", i32 45, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148557434, i64 2148557466, i64 2148557495, i64 2148557529, i64 2148557560, i64 2148557583}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148645459}
!52 = !{i64 2148559899, i64 2148559931, i64 2148559960, i64 2148559994, i64 2148560025, i64 2148560048}
!53 = !{i64 2150447760}
!54 = !{i64 2156862377, i64 2156862864, i64 2156862414, i64 2156862470, i64 2156862504, i64 2156862528, i64 2156862569, i64 2156862590, i64 2156862618, i64 2156862652}
!55 = !{i64 2156884736, i64 2156885220, i64 2156884773, i64 2156884829, i64 2156884863, i64 2156884887, i64 2156884928, i64 2156884949, i64 2156884977, i64 2156885011}
!56 = !{i64 4726043}
!57 = !{i64 4726240}
!58 = !{i64 2152211473}
!59 = !{i64 2156897017, i64 2156897297, i64 2156897631, i64 2156897965}
!60 = !{i64 2152231169, i64 2152231194}
!61 = !{i64 2156914163, i64 2156914443, i64 2156914777, i64 2156915111}
!62 = !{i64 2156925653, i64 2156925933, i64 2156926267, i64 2156926601}
!63 = !{i64 2152230488, i64 2152230513}
!64 = !{i64 2156953456, i64 2156953736, i64 2156954070, i64 2156954404}
!65 = !{i64 2156967989, i64 2156968269, i64 2156968603, i64 2156968937}
!66 = !{i64 2148558369, i64 2148558395, i64 2148558424, i64 2148558458, i64 2148558489, i64 2148558512}
