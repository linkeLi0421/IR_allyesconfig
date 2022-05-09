; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/onenand/onenand_base.c_pt.bc'
source_filename = "../drivers/mtd/nand/onenand/onenand_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+onenand_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_onenand_addr\09\09\09\09"
module asm "\09.long\09__crc_onenand_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_onenand_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22onenand_addr\22\09\09\09\09\09"
module asm "__kstrtabns_onenand_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flexonenand_region\22, \22a\22\09"
module asm "\09.weak\09__crc_flexonenand_region\09\09\09\09"
module asm "\09.long\09__crc_flexonenand_region\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flexonenand_region:\09\09\09\09\09"
module asm "\09.asciz \09\22flexonenand_region\22\09\09\09\09\09"
module asm "__kstrtabns_flexonenand_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+onenand_scan\22, \22a\22\09"
module asm "\09.weak\09__crc_onenand_scan\09\09\09\09"
module asm "\09.long\09__crc_onenand_scan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_onenand_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22onenand_scan\22\09\09\09\09\09"
module asm "__kstrtabns_onenand_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+onenand_release\22, \22a\22\09"
module asm "\09.weak\09__crc_onenand_release\09\09\09\09"
module asm "\09.long\09__crc_onenand_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_onenand_release:\09\09\09\09\09"
module asm "\09.asciz \09\22onenand_release\22\09\09\09\09\09"
module asm "__kstrtabns_onenand_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.onenand_manufacturers = type { i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.onenand_chip = type { ptr, i32, [2 x i32], [2 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.onenand_bufferram], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.onenand_bufferram = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bbm_info = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.otp_info = type { i32, i32, i32 }

@__param_str_flex_bdry = internal constant [18 x i8] c"onenand.flex_bdry\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_flex_bdry = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @flex_bdry }, align 4
@__param_flex_bdry = internal constant %struct.kernel_param { ptr @__param_str_flex_bdry, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_flex_bdry } }, section "__param", align 4
@__UNIQUE_ID_flex_bdrytype189 = internal constant [40 x i8] c"onenand.parmtype=flex_bdry:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_flex_bdry190 = internal constant [252 x i8] c"onenand.parm=flex_bdry:SLC Boundary information for Flex-OneNANDSyntax:flex_bdry=DIE_BDRY,LOCK,...DIE_BDRY: SLC boundary of the dieLOCK: Locking information for SLC boundary    : 0->Set boundary in unlocked status    : 1->Set boundary in locked status\00", section ".modinfo", align 1
@__param_str_otp = internal constant [12 x i8] c"onenand.otp\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@otp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_otp = internal constant %struct.kernel_param { ptr @__param_str_otp, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @otp } }, section "__param", align 4
@__UNIQUE_ID_otptype191 = internal constant [25 x i8] c"onenand.parmtype=otp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_otp192 = internal constant [263 x i8] c"onenand.parm=otp:Corresponding behaviour of OneNAND in OTPSyntax : otp=LOCK_TYPELOCK_TYPE : Keys issued, for specific OTP Lock type\09   : 0 -> Default (No Blocks Locked)\09   : 1 -> OTP Block lock\09   : 2 -> 1st Block lock\09   : 3 -> BOTH OTP Block and 1st Block lock\00", section ".modinfo", align 1
@__kstrtab_onenand_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_onenand_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_onenand_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @onenand_addr to i32), ptr @__kstrtab_onenand_addr, ptr @__kstrtabns_onenand_addr }, section "___ksymtab+onenand_addr", align 4
@__kstrtab_flexonenand_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_flexonenand_region = external dso_local constant [0 x i8], align 1
@__ksymtab_flexonenand_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flexonenand_region to i32), ptr @__kstrtab_flexonenand_region, ptr @__kstrtabns_flexonenand_region }, section "___ksymtab+flexonenand_region", align 4
@onenand_bbt_read_oob.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"onenand\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"onenand_bbt_read_oob\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/mtd/nand/onenand/onenand_base.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: from = 0x%08x, len = %zi\0A\00", [34 x i8] zeroinitializer }, align 32
@onenand_bbt_read_oob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Attempt read beyond end of device\0A\00", [55 x i8] zeroinitializer }, align 32
@onenand_bbt_read_oob._entry_ptr = internal global ptr @onenand_bbt_read_oob._entry, section ".printk_index", align 4
@onenand_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 3850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016OneNAND Sync. Burst Read support\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"onenand_scan\00", [19 x i8] zeroinitializer }, align 32
@onenand_scan._entry_ptr = internal global ptr @onenand_scan._entry, section ".printk_index", align 4
@onenand_scan.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&this->wq\00", [22 x i8] zeroinitializer }, align 32
@onenand_scan.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&this->chip_lock\00", [47 x i8] zeroinitializer }, align 32
@flexonenand_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @flexonenand_ooblayout_ecc, ptr @flexonenand_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@onenand_oob_128_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @onenand_ooblayout_128_ecc, ptr @onenand_ooblayout_128_free }, [24 x i8] zeroinitializer }, align 32
@onenand_oob_32_64_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @onenand_ooblayout_32_64_ecc, ptr @onenand_ooblayout_32_64_free }, [24 x i8] zeroinitializer }, align 32
@onenand_scan._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 3914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: No OOB scheme defined for oobsize %d\0A\00", [52 x i8] zeroinitializer }, align 32
@onenand_scan._entry_ptr.12 = internal global ptr @onenand_scan._entry.10, section ".printk_index", align 4
@flex_bdry = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 0, i32 -1, i32 0], [16 x i8] zeroinitializer }, align 32
@__kstrtab_onenand_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_onenand_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_onenand_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @onenand_scan to i32), ptr @__kstrtab_onenand_scan, ptr @__kstrtabns_onenand_scan }, section "___ksymtab_gpl+onenand_scan", align 4
@__kstrtab_onenand_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_onenand_release = external dso_local constant [0 x i8], align 1
@__ksymtab_onenand_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @onenand_release to i32), ptr @__kstrtab_onenand_release, ptr @__kstrtabns_onenand_release }, section "___ksymtab_gpl+onenand_release", align 4
@__UNIQUE_ID_file235 = internal constant [46 x i8] c"onenand.file=drivers/mtd/nand/onenand/onenand\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [20 x i8] c"onenand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [57 x i8] c"onenand.author=Kyungmin Park <kyungmin.park@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [54 x i8] c"onenand.description=Generic OneNAND flash driver code\00", section ".modinfo", align 1
@onenand_recover_lsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: Attempting to recover from uncorrectable read\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"onenand_recover_lsb\00", [44 x i8] zeroinitializer }, align 32
@onenand_recover_lsb._entry_ptr = internal global ptr @onenand_recover_lsb._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@onenand_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: ECC error = 0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"onenand_wait\00", [19 x i8] zeroinitializer }, align 32
@onenand_wait._entry_ptr = internal global ptr @onenand_wait._entry, section ".printk_index", align 4
@onenand_wait._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: correctable ECC error = 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@onenand_wait._entry_ptr.20 = internal global ptr @onenand_wait._entry.18, section ".printk_index", align 4
@onenand_wait._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: read timeout! ctrl=0x%04x intr=0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@onenand_wait._entry_ptr.23 = internal global ptr @onenand_wait._entry.21, section ".printk_index", align 4
@onenand_wait._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: mb erase timeout! ctrl=0x%04x intr=0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@onenand_wait._entry_ptr.26 = internal global ptr @onenand_wait._entry.24, section ".printk_index", align 4
@onenand_wait._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: timeout! ctrl=0x%04x intr=0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@onenand_wait._entry_ptr.29 = internal global ptr @onenand_wait._entry.27, section ".printk_index", align 4
@onenand_wait._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: controller error = 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@onenand_wait._entry_ptr.32 = internal global ptr @onenand_wait._entry.30, section ".printk_index", align 4
@onenand_wait._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: it's locked error.\0A\00", [38 x i8] zeroinitializer }, align 32
@onenand_wait._entry_ptr.35 = internal global ptr @onenand_wait._entry.33, section ".printk_index", align 4
@onenand_try_interrupt_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016OneNAND: There's no interrupt. We use the normal wait\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"onenand_try_interrupt_wait\00", [37 x i8] zeroinitializer }, align 32
@onenand_try_interrupt_wait._entry_ptr = internal global ptr @onenand_try_interrupt_wait._entry, section ".printk_index", align 4
@onenand_bbt_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: ecc 0x%04x ctrl 0x%04x intr 0x%04x addr1 %#x addr8 %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"onenand_bbt_wait\00", [47 x i8] zeroinitializer }, align 32
@onenand_bbt_wait._entry_ptr = internal global ptr @onenand_bbt_wait._entry, section ".printk_index", align 4
@onenand_bbt_wait._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: read timeout! ctrl 0x%04x intr 0x%04x addr1 %#x addr8 %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@onenand_bbt_wait._entry_ptr.42 = internal global ptr @onenand_bbt_wait._entry.40, section ".printk_index", align 4
@onenand_bbt_wait._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: ctrl 0x%04x intr 0x%04x addr1 %#x addr8 %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@onenand_bbt_wait._entry_ptr.45 = internal global ptr @onenand_bbt_wait._entry.43, section ".printk_index", align 4
@onenand_check_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 2626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: block = %d, wp status = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"onenand_check_lock_status\00", [38 x i8] zeroinitializer }, align 32
@onenand_check_lock_status._entry_ptr = internal global ptr @onenand_check_lock_status._entry, section ".printk_index", align 4
@onenand_do_lock_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 2528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: wp status = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"onenand_do_lock_cmd\00", [44 x i8] zeroinitializer }, align 32
@onenand_do_lock_cmd._entry_ptr = internal global ptr @onenand_do_lock_cmd._entry, section ".printk_index", align 4
@onenand_do_lock_cmd._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.49, ptr @.str.2, i32 2558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_do_lock_cmd._entry_ptr.51 = internal global ptr @onenand_do_lock_cmd._entry.50, section ".printk_index", align 4
@onenand_manuf_ids = internal constant { [2 x %struct.onenand_manufacturers], [16 x i8] } { [2 x %struct.onenand_manufacturers] [%struct.onenand_manufacturers { i32 236, ptr @.str.55 }, %struct.onenand_manufacturers { i32 32, ptr @.str.56 }], [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@onenand_check_maf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 3373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017OneNAND Manufacturer: %s (0x%0x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"onenand_check_maf\00", [46 x i8] zeroinitializer }, align 32
@onenand_check_maf._entry_ptr = internal global ptr @onenand_check_maf._entry, section ".printk_index", align 4
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Samsung\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Numonyx\00", [24 x i8] zeroinitializer }, align 32
@onenand_write_oob_nolock.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"onenand_write_oob_nolock\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: to = 0x%08x, len = %i\0A\00", [37 x i8] zeroinitializer }, align 32
@onenand_write_oob_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 1994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Attempted to start write outside oob\0A\00", [52 x i8] zeroinitializer }, align 32
@onenand_write_oob_nolock._entry_ptr = internal global ptr @onenand_write_oob_nolock._entry, section ".printk_index", align 4
@onenand_write_oob_nolock._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.2, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Attempt to write past end of page\0A\00", [55 x i8] zeroinitializer }, align 32
@onenand_write_oob_nolock._entry_ptr.62 = internal global ptr @onenand_write_oob_nolock._entry.60, section ".printk_index", align 4
@onenand_write_oob_nolock._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.2, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: write failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@onenand_write_oob_nolock._entry_ptr.65 = internal global ptr @onenand_write_oob_nolock._entry.63, section ".printk_index", align 4
@onenand_write_oob_nolock._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.2, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: verify failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@onenand_write_oob_nolock._entry_ptr.68 = internal global ptr @onenand_write_oob_nolock._entry.66, section ".printk_index", align 4
@onenand_print_device_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 3343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s%sOneNAND%s %dMB %sV 16-bit (0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"onenand_print_device_info\00", [38 x i8] zeroinitializer }, align 32
@onenand_print_device_info._entry_ptr = internal global ptr @onenand_print_device_info._entry, section ".printk_index", align 4
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Muxed \00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Flex-\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(DDP)\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.65/3.3\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.8\00", [28 x i8] zeroinitializer }, align 32
@onenand_print_device_info._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 3344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016OneNAND version = 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@onenand_print_device_info._entry_ptr.79 = internal global ptr @onenand_print_device_info._entry.77, section ".printk_index", align 4
@onenand_check_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 3310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017Lock scheme is Continuous Lock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"onenand_check_features\00", [41 x i8] zeroinitializer }, align 32
@onenand_check_features._entry_ptr = internal global ptr @onenand_check_features._entry, section ".printk_index", align 4
@onenand_check_features._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 3312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Chip support all block unlock\0A\00", [63 x i8] zeroinitializer }, align 32
@onenand_check_features._entry_ptr.84 = internal global ptr @onenand_check_features._entry.82, section ".printk_index", align 4
@onenand_check_features._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 3314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017Chip has 2 plane\0A\00", [44 x i8] zeroinitializer }, align 32
@onenand_check_features._entry_ptr.87 = internal global ptr @onenand_check_features._entry.85, section ".printk_index", align 4
@onenand_check_features._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.2, i32 3316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017Chip has 4KiB pagesize\0A\00", [38 x i8] zeroinitializer }, align 32
@onenand_check_features._entry_ptr.90 = internal global ptr @onenand_check_features._entry.88, section ".printk_index", align 4
@onenand_check_features._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.2, i32 3318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017Chip has cache program feature\0A\00", [62 x i8] zeroinitializer }, align 32
@onenand_check_features._entry_ptr.93 = internal global ptr @onenand_check_features._entry.91, section ".printk_index", align 4
@flexonenand_get_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 3474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Device has %d eraseregions\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flexonenand_get_size\00", [43 x i8] zeroinitializer }, align 32
@flexonenand_get_size._entry_ptr = internal global ptr @flexonenand_get_size._entry, section ".printk_index", align 4
@flexonenand_get_size._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 3480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[offset: 0x%08x, erasesize: 0x%05x, numblocks: %04u]\0A\00", [40 x i8] zeroinitializer }, align 32
@flexonenand_get_size._entry_ptr.98 = internal global ptr @flexonenand_get_size._entry.96, section ".printk_index", align 4
@flexonenand_get_boundary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 3410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016Die %d boundary: %d%s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flexonenand_get_boundary\00", [39 x i8] zeroinitializer }, align 32
@flexonenand_get_boundary._entry_ptr = internal global ptr @flexonenand_get_boundary._entry, section ".printk_index", align 4
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(Locked)\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(Unlocked)\00", [21 x i8] zeroinitializer }, align 32
@onenand_erase.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 2, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"onenand_erase\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: start=0x%012llx, len=%llu\0A\00", [33 x i8] zeroinitializer }, align 32
@onenand_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 2361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Unaligned address\0A\00", [39 x i8] zeroinitializer }, align 32
@onenand_erase._entry_ptr = internal global ptr @onenand_erase._entry, section ".printk_index", align 4
@onenand_erase._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.103, ptr @.str.2, i32 2367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Length not block aligned\0A\00", [32 x i8] zeroinitializer }, align 32
@onenand_erase._entry_ptr.108 = internal global ptr @onenand_erase._entry.106, section ".printk_index", align 4
@onenand_block_by_block_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 2285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: attempt to erase a bad block at addr 0x%012llx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"onenand_block_by_block_erase\00", [35 x i8] zeroinitializer }, align 32
@onenand_block_by_block_erase._entry_ptr = internal global ptr @onenand_block_by_block_erase._entry, section ".printk_index", align 4
@onenand_block_by_block_erase._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 2297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Failed erase, block %d\0A\00", [34 x i8] zeroinitializer }, align 32
@onenand_block_by_block_erase._entry_ptr.113 = internal global ptr @onenand_block_by_block_erase._entry.111, section ".printk_index", align 4
@onenand_block_by_block_erase._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.110, ptr @.str.2, i32 2316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_block_by_block_erase._entry_ptr.115 = internal global ptr @onenand_block_by_block_erase._entry.114, section ".printk_index", align 4
@onenand_multiblock_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.116, ptr @.str.2, i32 2173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"onenand_multiblock_erase\00", [39 x i8] zeroinitializer }, align 32
@onenand_multiblock_erase._entry_ptr = internal global ptr @onenand_multiblock_erase._entry, section ".printk_index", align 4
@onenand_multiblock_erase._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 2212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed multiblock erase, block %d\0A\00", [55 x i8] zeroinitializer }, align 32
@onenand_multiblock_erase._entry_ptr.119 = internal global ptr @onenand_multiblock_erase._entry.117, section ".printk_index", align 4
@onenand_multiblock_erase._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.116, ptr @.str.2, i32 2231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_multiblock_erase._entry_ptr.121 = internal global ptr @onenand_multiblock_erase._entry.120, section ".printk_index", align 4
@onenand_multiblock_erase_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 2132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Failed verify, block %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"onenand_multiblock_erase_verify\00", [32 x i8] zeroinitializer }, align 32
@onenand_multiblock_erase_verify._entry_ptr = internal global ptr @onenand_multiblock_erase_verify._entry, section ".printk_index", align 4
@onenand_mlc_read_ops_nolock.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.2, ptr @.str.125, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"onenand_mlc_read_ops_nolock\00", [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: from = 0x%08x, len = %i\0A\00", [35 x i8] zeroinitializer }, align 32
@onenand_mlc_read_ops_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_mlc_read_ops_nolock._entry_ptr = internal global ptr @onenand_mlc_read_ops_nolock._entry, section ".printk_index", align 4
@onenand_read_ops_nolock.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.125, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"onenand_read_ops_nolock\00", [40 x i8] zeroinitializer }, align 32
@onenand_read_ops_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.126, ptr @.str.2, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_read_ops_nolock._entry_ptr = internal global ptr @onenand_read_ops_nolock._entry, section ".printk_index", align 4
@onenand_read_oob_nolock.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.125, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"onenand_read_oob_nolock\00", [40 x i8] zeroinitializer }, align 32
@onenand_read_oob_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.127, ptr @.str.2, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Attempted to start read outside oob\0A\00", [53 x i8] zeroinitializer }, align 32
@onenand_read_oob_nolock._entry_ptr = internal global ptr @onenand_read_oob_nolock._entry, section ".printk_index", align 4
@onenand_read_oob_nolock._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.127, ptr @.str.2, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: read failed = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@onenand_read_oob_nolock._entry_ptr.131 = internal global ptr @onenand_read_oob_nolock._entry.129, section ".printk_index", align 4
@onenand_write_ops_nolock.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.2, ptr @.str.58, i8 1, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"onenand_write_ops_nolock\00", [39 x i8] zeroinitializer }, align 32
@onenand_write_ops_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.132, ptr @.str.2, i32 1809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Attempt to write not page aligned data\0A\00", [50 x i8] zeroinitializer }, align 32
@onenand_write_ops_nolock._entry_ptr = internal global ptr @onenand_write_ops_nolock._entry, section ".printk_index", align 4
@ffchars = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [32 x i8] zeroinitializer }, align 32
@onenand_write_ops_nolock._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.132, ptr @.str.2, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_write_ops_nolock._entry_ptr.135 = internal global ptr @onenand_write_ops_nolock._entry.134, section ".printk_index", align 4
@onenand_write_ops_nolock._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.132, ptr @.str.2, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_write_ops_nolock._entry_ptr.137 = internal global ptr @onenand_write_ops_nolock._entry.136, section ".printk_index", align 4
@onenand_write_ops_nolock._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.132, ptr @.str.2, i32 1918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_write_ops_nolock._entry_ptr.139 = internal global ptr @onenand_write_ops_nolock._entry.138, section ".printk_index", align 4
@onenand_write_ops_nolock._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.132, ptr @.str.2, i32 1926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_write_ops_nolock._entry_ptr.141 = internal global ptr @onenand_write_ops_nolock._entry.140, section ".printk_index", align 4
@onenand_panic_write.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.58, i8 1, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"onenand_panic_write\00", [44 x i8] zeroinitializer }, align 32
@onenand_panic_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.142, ptr @.str.2, i32 1714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_panic_write._entry_ptr = internal global ptr @onenand_panic_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@onenand_lock_user_prot_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 3222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017[OneNAND] Invalid option selected for OTP\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"onenand_lock_user_prot_reg\00", [37 x i8] zeroinitializer }, align 32
@onenand_lock_user_prot_reg._entry_ptr = internal global ptr @onenand_lock_user_prot_reg._entry, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.145, ptr @.str.2, i32 2840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"onenand_otp_write_oob_nolock\00", [35 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr = internal global ptr @onenand_otp_write_oob_nolock._entry, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 2852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017\0ABLOCK\09STATUS\0A\00", [47 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.148 = internal global ptr @onenand_otp_write_oob_nolock._entry.146, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 2853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\0171st Block\09LOCKED\0A\00", [44 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.151 = internal global ptr @onenand_otp_write_oob_nolock._entry.149, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 2854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017OTP Block\09LOCKED\0A\00", [44 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.154 = internal global ptr @onenand_otp_write_oob_nolock._entry.152, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 2856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.156 = internal global ptr @onenand_otp_write_oob_nolock._entry.155, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 2857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.158 = internal global ptr @onenand_otp_write_oob_nolock._entry.157, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.145, ptr @.str.2, i32 2858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017OTP Block\09UN-LOCKED\0A\00", [41 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.161 = internal global ptr @onenand_otp_write_oob_nolock._entry.159, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 2860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.163 = internal global ptr @onenand_otp_write_oob_nolock._entry.162, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.145, ptr @.str.2, i32 2861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0171st Block\09UN-LOCKED\0A\00", [41 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.166 = internal global ptr @onenand_otp_write_oob_nolock._entry.164, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 2862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.168 = internal global ptr @onenand_otp_write_oob_nolock._entry.167, section ".printk_index", align 4
@onenand_otp_write_oob_nolock._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.145, ptr @.str.2, i32 2864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017Reboot to check\0A\00", [45 x i8] zeroinitializer }, align 32
@onenand_otp_write_oob_nolock._entry_ptr.171 = internal global ptr @onenand_otp_write_oob_nolock._entry.169, section ".printk_index", align 4
@onenand_sync.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.2, ptr @.str.173, i8 2, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"onenand_sync\00", [19 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: called\0A\00", [20 x i8] zeroinitializer }, align 32
@onenand_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 3800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: resume() called for the chip which is not in suspended state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"onenand_resume\00", [17 x i8] zeroinitializer }, align 32
@onenand_resume._entry_ptr = internal global ptr @onenand_resume._entry, section ".printk_index", align 4
@flexonenand_set_boundary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 3571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: Invalid boundary value. Boundary not changed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flexonenand_set_boundary\00", [39 x i8] zeroinitializer }, align 32
@flexonenand_set_boundary._entry_ptr = internal global ptr @flexonenand_set_boundary._entry, section ".printk_index", align 4
@flexonenand_set_boundary._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.2, i32 3581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: Please erase blocks before boundary change\0A\00", [46 x i8] zeroinitializer }, align 32
@flexonenand_set_boundary._entry_ptr.180 = internal global ptr @flexonenand_set_boundary._entry.178, section ".printk_index", align 4
@flexonenand_set_boundary._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str.2, i32 3594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: boundary locked\0A\00", [41 x i8] zeroinitializer }, align 32
@flexonenand_set_boundary._entry_ptr.183 = internal global ptr @flexonenand_set_boundary._entry.181, section ".printk_index", align 4
@flexonenand_set_boundary._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.2, i32 3600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016Changing die %d boundary: %d%s\0A\00", [62 x i8] zeroinitializer }, align 32
@flexonenand_set_boundary._entry_ptr.186 = internal global ptr @flexonenand_set_boundary._entry.184, section ".printk_index", align 4
@flexonenand_set_boundary._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.177, ptr @.str.2, i32 3611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Failed PI erase for Die %d\0A\00", [62 x i8] zeroinitializer }, align 32
@flexonenand_set_boundary._entry_ptr.189 = internal global ptr @flexonenand_set_boundary._entry.187, section ".printk_index", align 4
@flexonenand_set_boundary._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.177, ptr @.str.2, i32 3620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Failed PI write for Die %d\0A\00", [62 x i8] zeroinitializer }, align 32
@flexonenand_set_boundary._entry_ptr.192 = internal global ptr @flexonenand_set_boundary._entry.190, section ".printk_index", align 4
@flexonenand_check_blocks_erased._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 3518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017Check blocks from %d to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"flexonenand_check_blocks_erased\00", [32 x i8] zeroinitializer }, align 32
@flexonenand_check_blocks_erased._entry_ptr = internal global ptr @flexonenand_check_blocks_erased._entry, section ".printk_index", align 4
@flexonenand_check_blocks_erased._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.194, ptr @.str.2, i32 3539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: Block %d not erased.\0A\00", [36 x i8] zeroinitializer }, align 32
@flexonenand_check_blocks_erased._entry_ptr.197 = internal global ptr @flexonenand_check_blocks_erased._entry.195, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967222]
@__sancov_gen_cov_switch_values.198 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.200 = internal global [13 x i64] [i64 11, i64 32, i64 35, i64 39, i64 42, i64 44, i64 101, i64 102, i64 113, i64 148, i64 149, i64 6520, i64 6533]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 19]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 16, i64 32, i64 236]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 65568]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 65568]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 65568]
@__sancov_gen_cov_switch_values.206 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 25]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 25]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 7, i64 32, i64 64, i64 96]
@___asan_gen_.215 = private unnamed_addr constant [4 x i8] c"otp\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 51, i32 12 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1535, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1543, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3850, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3884, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3885, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [26 x i8] c"flexonenand_ooblayout_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 90, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant [30 x i8] c"onenand_oob_128_ooblayout_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 130, i32 39 }
@___asan_gen_.263 = private unnamed_addr constant [32 x i8] c"onenand_oob_32_64_ooblayout_ops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 169, i32 39 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3913, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [10 x i8] c"flex_bdry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 40, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1096, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 87, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 586, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 591, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 597, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 603, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 609, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 616, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 619, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 678, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1496, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1502, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1510, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2625, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2527, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2557, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant [18 x i8] c"onenand_manuf_ids\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3347, i32 43 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3371, i32 10 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3373, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3348, i32 31 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3349, i32 24 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1979, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1993, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2000, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2043, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2049, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3337, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3344, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3310, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3312, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3314, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3316, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3318, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3474, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3476, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3409, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2341, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2361, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2367, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2283, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2296, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2315, i32 5 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2171, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2210, i32 5 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2230, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2131, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1128, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1136, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1229, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1237, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1357, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1371, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1395, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1799, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1808, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant [8 x i8] c"ffchars\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 174, i32 28 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1877, i32 5 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1886, i32 6 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1917, i32 5 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1925, i32 5 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1708, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 1713, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3222, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2840, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2852, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2853, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2854, i32 4 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2856, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2857, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2858, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2860, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2861, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2862, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2864, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 2397, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3799, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3570, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3580, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3594, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3599, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3610, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3619, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3518, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.782 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.783 = private constant [43 x i8] c"../drivers/mtd/nand/onenand/onenand_base.c\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.783, i32 3538, i32 4 }
@llvm.compiler.used = appending global [277 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_flex_bdry190, ptr @__UNIQUE_ID_flex_bdrytype189, ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_otp192, ptr @__UNIQUE_ID_otptype191, ptr @__ksymtab_flexonenand_region, ptr @__ksymtab_onenand_addr, ptr @__ksymtab_onenand_release, ptr @__ksymtab_onenand_scan, ptr @__param_flex_bdry, ptr @__param_otp, ptr @flexonenand_check_blocks_erased._entry, ptr @flexonenand_check_blocks_erased._entry.195, ptr @flexonenand_check_blocks_erased._entry_ptr, ptr @flexonenand_check_blocks_erased._entry_ptr.197, ptr @flexonenand_get_boundary._entry, ptr @flexonenand_get_boundary._entry_ptr, ptr @flexonenand_get_size._entry, ptr @flexonenand_get_size._entry.96, ptr @flexonenand_get_size._entry_ptr, ptr @flexonenand_get_size._entry_ptr.98, ptr @flexonenand_set_boundary._entry, ptr @flexonenand_set_boundary._entry.178, ptr @flexonenand_set_boundary._entry.181, ptr @flexonenand_set_boundary._entry.184, ptr @flexonenand_set_boundary._entry.187, ptr @flexonenand_set_boundary._entry.190, ptr @flexonenand_set_boundary._entry_ptr, ptr @flexonenand_set_boundary._entry_ptr.180, ptr @flexonenand_set_boundary._entry_ptr.183, ptr @flexonenand_set_boundary._entry_ptr.186, ptr @flexonenand_set_boundary._entry_ptr.189, ptr @flexonenand_set_boundary._entry_ptr.192, ptr @onenand_bbt_read_oob._entry, ptr @onenand_bbt_read_oob._entry_ptr, ptr @onenand_bbt_wait._entry, ptr @onenand_bbt_wait._entry.40, ptr @onenand_bbt_wait._entry.43, ptr @onenand_bbt_wait._entry_ptr, ptr @onenand_bbt_wait._entry_ptr.42, ptr @onenand_bbt_wait._entry_ptr.45, ptr @onenand_block_by_block_erase._entry, ptr @onenand_block_by_block_erase._entry.111, ptr @onenand_block_by_block_erase._entry.114, ptr @onenand_block_by_block_erase._entry_ptr, ptr @onenand_block_by_block_erase._entry_ptr.113, ptr @onenand_block_by_block_erase._entry_ptr.115, ptr @onenand_check_features._entry, ptr @onenand_check_features._entry.82, ptr @onenand_check_features._entry.85, ptr @onenand_check_features._entry.88, ptr @onenand_check_features._entry.91, ptr @onenand_check_features._entry_ptr, ptr @onenand_check_features._entry_ptr.84, ptr @onenand_check_features._entry_ptr.87, ptr @onenand_check_features._entry_ptr.90, ptr @onenand_check_features._entry_ptr.93, ptr @onenand_check_lock_status._entry, ptr @onenand_check_lock_status._entry_ptr, ptr @onenand_check_maf._entry, ptr @onenand_check_maf._entry_ptr, ptr @onenand_do_lock_cmd._entry, ptr @onenand_do_lock_cmd._entry.50, ptr @onenand_do_lock_cmd._entry_ptr, ptr @onenand_do_lock_cmd._entry_ptr.51, ptr @onenand_erase._entry, ptr @onenand_erase._entry.106, ptr @onenand_erase._entry_ptr, ptr @onenand_erase._entry_ptr.108, ptr @onenand_lock_user_prot_reg._entry, ptr @onenand_lock_user_prot_reg._entry_ptr, ptr @onenand_mlc_read_ops_nolock._entry, ptr @onenand_mlc_read_ops_nolock._entry_ptr, ptr @onenand_multiblock_erase._entry, ptr @onenand_multiblock_erase._entry.117, ptr @onenand_multiblock_erase._entry.120, ptr @onenand_multiblock_erase._entry_ptr, ptr @onenand_multiblock_erase._entry_ptr.119, ptr @onenand_multiblock_erase._entry_ptr.121, ptr @onenand_multiblock_erase_verify._entry, ptr @onenand_multiblock_erase_verify._entry_ptr, ptr @onenand_otp_write_oob_nolock._entry, ptr @onenand_otp_write_oob_nolock._entry.146, ptr @onenand_otp_write_oob_nolock._entry.149, ptr @onenand_otp_write_oob_nolock._entry.152, ptr @onenand_otp_write_oob_nolock._entry.155, ptr @onenand_otp_write_oob_nolock._entry.157, ptr @onenand_otp_write_oob_nolock._entry.159, ptr @onenand_otp_write_oob_nolock._entry.162, ptr @onenand_otp_write_oob_nolock._entry.164, ptr @onenand_otp_write_oob_nolock._entry.167, ptr @onenand_otp_write_oob_nolock._entry.169, ptr @onenand_otp_write_oob_nolock._entry_ptr, ptr @onenand_otp_write_oob_nolock._entry_ptr.148, ptr @onenand_otp_write_oob_nolock._entry_ptr.151, ptr @onenand_otp_write_oob_nolock._entry_ptr.154, ptr @onenand_otp_write_oob_nolock._entry_ptr.156, ptr @onenand_otp_write_oob_nolock._entry_ptr.158, ptr @onenand_otp_write_oob_nolock._entry_ptr.161, ptr @onenand_otp_write_oob_nolock._entry_ptr.163, ptr @onenand_otp_write_oob_nolock._entry_ptr.166, ptr @onenand_otp_write_oob_nolock._entry_ptr.168, ptr @onenand_otp_write_oob_nolock._entry_ptr.171, ptr @onenand_panic_write._entry, ptr @onenand_panic_write._entry_ptr, ptr @onenand_print_device_info._entry, ptr @onenand_print_device_info._entry.77, ptr @onenand_print_device_info._entry_ptr, ptr @onenand_print_device_info._entry_ptr.79, ptr @onenand_read_oob_nolock._entry, ptr @onenand_read_oob_nolock._entry.129, ptr @onenand_read_oob_nolock._entry_ptr, ptr @onenand_read_oob_nolock._entry_ptr.131, ptr @onenand_read_ops_nolock._entry, ptr @onenand_read_ops_nolock._entry_ptr, ptr @onenand_recover_lsb._entry, ptr @onenand_recover_lsb._entry_ptr, ptr @onenand_resume._entry, ptr @onenand_resume._entry_ptr, ptr @onenand_scan._entry, ptr @onenand_scan._entry.10, ptr @onenand_scan._entry_ptr, ptr @onenand_scan._entry_ptr.12, ptr @onenand_try_interrupt_wait._entry, ptr @onenand_try_interrupt_wait._entry_ptr, ptr @onenand_wait._entry, ptr @onenand_wait._entry.18, ptr @onenand_wait._entry.21, ptr @onenand_wait._entry.24, ptr @onenand_wait._entry.27, ptr @onenand_wait._entry.30, ptr @onenand_wait._entry.33, ptr @onenand_wait._entry_ptr, ptr @onenand_wait._entry_ptr.20, ptr @onenand_wait._entry_ptr.23, ptr @onenand_wait._entry_ptr.26, ptr @onenand_wait._entry_ptr.29, ptr @onenand_wait._entry_ptr.32, ptr @onenand_wait._entry_ptr.35, ptr @onenand_write_oob_nolock._entry, ptr @onenand_write_oob_nolock._entry.60, ptr @onenand_write_oob_nolock._entry.63, ptr @onenand_write_oob_nolock._entry.66, ptr @onenand_write_oob_nolock._entry_ptr, ptr @onenand_write_oob_nolock._entry_ptr.62, ptr @onenand_write_oob_nolock._entry_ptr.65, ptr @onenand_write_oob_nolock._entry_ptr.68, ptr @onenand_write_ops_nolock._entry, ptr @onenand_write_ops_nolock._entry.134, ptr @onenand_write_ops_nolock._entry.136, ptr @onenand_write_ops_nolock._entry.138, ptr @onenand_write_ops_nolock._entry.140, ptr @onenand_write_ops_nolock._entry_ptr, ptr @onenand_write_ops_nolock._entry_ptr.135, ptr @onenand_write_ops_nolock._entry_ptr.137, ptr @onenand_write_ops_nolock._entry_ptr.139, ptr @onenand_write_ops_nolock._entry_ptr.141, ptr @otp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @onenand_scan.__key, ptr @.str.7, ptr @onenand_scan.__key.8, ptr @.str.9, ptr @flexonenand_ooblayout_ops, ptr @onenand_oob_128_ooblayout_ops, ptr @onenand_oob_32_64_ooblayout_ops, ptr @.str.11, ptr @flex_bdry, ptr @.str.13, ptr @.str.14, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @onenand_manuf_ids, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.116, ptr @.str.118, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @ffchars, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.160, ptr @.str.165, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.196], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_bbt_read_oob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_scan.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_scan.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_oob_128_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_oob_32_64_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_scan._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flex_bdry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_recover_lsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_wait._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_wait._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_wait._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_wait._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_wait._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_wait._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_try_interrupt_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_bbt_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_bbt_wait._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_bbt_wait._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_check_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_do_lock_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_do_lock_cmd._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_manuf_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_check_maf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_oob_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_oob_nolock._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_oob_nolock._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_oob_nolock._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_print_device_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_print_device_info._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_check_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_check_features._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_check_features._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_check_features._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_check_features._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_get_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_get_size._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_get_boundary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_erase._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_block_by_block_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_block_by_block_erase._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_block_by_block_erase._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_multiblock_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_multiblock_erase._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_multiblock_erase._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_multiblock_erase_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_mlc_read_ops_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_read_ops_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_read_oob_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_read_oob_nolock._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_ops_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffchars to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_ops_nolock._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_ops_nolock._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_ops_nolock._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_write_ops_nolock._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_panic_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_lock_user_prot_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_otp_write_oob_nolock._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_set_boundary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_set_boundary._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_set_boundary._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_set_boundary._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_set_boundary._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_set_boundary._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_check_blocks_erased._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexonenand_check_blocks_erased._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @onenand_block(ptr nocapture noundef readonly %this, i64 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 5
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_id, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 11
  %2 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erase_shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shr = ashr i64 %addr, %sh_prom
  %conv = trunc i64 %shr to i32
  br label %return

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.thread.i_crit_edge, label %land.lhs.true.i

if.end.if.end.thread.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i

land.lhs.true.i:                                  ; preds = %if.end
  %diesize.i = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 3
  %4 = ptrtoint ptr %diesize.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %diesize.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp.not.i = icmp sgt i64 %5, %addr
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.thread.i_crit_edge, label %cond.true.i

land.lhs.true.i.if.end.thread.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %land.lhs.true.i.if.end.thread.i_crit_edge, %if.end.if.end.thread.i_crit_edge
  %arrayidx430.i = getelementptr %struct.onenand_chip, ptr %this, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i64 %addr, %5
  %arrayidx4.i = getelementptr %struct.onenand_chip, ptr %this, i32 0, i32 2, i32 1
  %density_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 8
  %6 = ptrtoint ptr %density_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %density_mask.i, align 8
  br label %flexonenand_block.exit

flexonenand_block.exit:                           ; preds = %cond.true.i, %if.end.thread.i
  %.in33.i = phi ptr [ %arrayidx4.i, %cond.true.i ], [ %arrayidx430.i, %if.end.thread.i ]
  %addr.addr.032.i = phi i64 [ %sub.i, %cond.true.i ], [ %addr, %if.end.thread.i ]
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %if.end.thread.i ]
  %8 = ptrtoint ptr %.in33.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %.in33.i, align 4
  %.in.i = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 11
  %10 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %.in.i, align 4
  %sub5.i = add i32 %11, -1
  %sh_prom.i = zext i32 %sub5.i to i64
  %shr.i = ashr i64 %addr.addr.032.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp6.i = icmp ult i32 %9, %conv.i
  %add.i = add i32 %9, 1
  %add9.i = add i32 %add.i, %conv.i
  %shr10.i = lshr i32 %add9.i, 1
  %blk.0.i = select i1 %cmp6.i, i32 %shr10.i, i32 %conv.i
  %add13.i = add i32 %blk.0.i, %cond.i
  br label %return

return:                                           ; preds = %flexonenand_block.exit, %if.then
  %retval.0 = phi i32 [ %add13.i, %flexonenand_block.exit ], [ %conv, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @onenand_addr(ptr nocapture noundef readonly %this, i32 noundef %block) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 5
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_id, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = sext i32 %block to i64
  %erase_shift = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 11
  %2 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erase_shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %conv, %sh_prom
  br label %return

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %density_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 8
  %4 = ptrtoint ptr %density_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %density_mask.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %block)
  %cmp.not.i = icmp ugt i32 %5, %block
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %block, %5
  %diesize.i = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 3
  %6 = ptrtoint ptr %diesize.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %diesize.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %block.addr.0.i = phi i32 [ %sub.i, %if.then.i ], [ %block, %land.lhs.true.i.if.end.i_crit_edge ], [ %block, %if.end.if.end.i_crit_edge ]
  %ofs.0.i = phi i64 [ %7, %if.then.i ], [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  %die.0.i = phi i32 [ 1, %if.then.i ], [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.onenand_chip, ptr %this, i32 0, i32 2, i32 %die.0.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %conv.i = sext i32 %block.addr.0.i to i64
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %this, i32 0, i32 11
  %10 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erase_shift.i, align 4
  %sub4.i = add i32 %11, -1
  %sh_prom.i = zext i32 %sub4.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %add.i = add i64 %shl.i, %ofs.0.i
  %add5.i = add i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %block.addr.0.i, i32 %add5.i)
  %cmp6.i = icmp sgt i32 %block.addr.0.i, %add5.i
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = xor i32 %9, -1
  %sub10.i = add i32 %block.addr.0.i, %12
  %conv11.i = sext i32 %sub10.i to i64
  %shl15.i = shl i64 %conv11.i, %sh_prom.i
  %add16.i = add i64 %add.i, %shl15.i
  br label %return

return:                                           ; preds = %if.then8.i, %if.end.i.return_crit_edge, %if.then
  %retval.0 = phi i64 [ %shl, %if.then ], [ %add16.i, %if.then8.i ], [ %add.i, %if.end.i.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flexonenand_region(ptr nocapture noundef readonly %mtd, i64 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %0 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %2 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eraseregions, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtd_erase_region_info, ptr %3, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %addr)
  %cmp1 = icmp ugt i64 %5, %addr
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.07, %for.body.for.end_crit_edge ], [ %1, %for.inc.for.end_crit_edge ]
  %sub = add nsw i32 %i.0.lcssa, -1
  ret i32 %sub
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @onenand_bbt_read_oob(ptr noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %2 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ooblen, align 4
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %4 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oobbuf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_bbt_read_oob.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_bbt_read_oob, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %from to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_bbt_read_oob.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %6 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %oobretlen, align 4
  %conv3 = zext i32 %3 to i64
  %add = add i64 %conv3, %from
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %8)
  %cmp = icmp ugt i64 %add, %8
  br i1 %cmp, label %do.end14, label %if.end17, !prof !408

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %call18 = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 21)
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %options, align 4
  %and21 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond = select i1 %tobool22.not, i32 19, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23120.not = icmp eq i32 %3, 0
  br i1 %cmp23120.not, label %if.end17.while.end_crit_edge, label %while.body.lr.ph

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end17
  %11 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize, align 4
  %sub = add i32 %12, -1
  %13 = trunc i64 %from to i32
  %conv20 = and i32 %sub, %13
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %bbt_wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 19
  %read_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 21
  %writesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.end60, %while.body.lr.ph
  %from.addr.0125 = phi i64 [ %from, %while.body.lr.ph ], [ %add59, %if.end60 ]
  %read.0123 = phi i32 [ 0, %while.body.lr.ph ], [ %add50, %if.end60 ]
  %buf.0122 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr, %if.end60 ]
  %column.0121 = phi i32 [ %conv20, %while.body.lr.ph ], [ 0, %if.end60 ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1556, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %14 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oobsize, align 4
  %sub28 = sub i32 %15, %column.0121
  %16 = tail call i32 @llvm.smin.i32(i32 %sub28, i32 %3)
  %17 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %command, align 8
  %call34 = tail call i32 %18(ptr noundef %mtd, i32 noundef %cond, i64 noundef %from.addr.0125, i32 noundef %15) #13
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options.i, align 4
  %and.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %24 to i64
  %shr.i.i = ashr i64 %from.addr.0125, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %20, i32 0, i32 14
  %25 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %26 to i64
  %and2.i.i = and i64 %from.addr.0125, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %20, i32 0, i32 12
  %27 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %28, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %from.addr.0125, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %20, i32 0, i32 13
  %29 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %30, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %20, i32 0, i32 12
  %31 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %32 to i64
  %shr.i = ashr i64 %from.addr.0125, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %20, i32 0, i32 15
  %33 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %34, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %20, i32 0, i32 16, i32 %xor.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %blockpage.0.i)
  %cmp.i = icmp eq i32 %36, %blockpage.0.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.onenand_update_bufferram.exit_crit_edge

if.end.i.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i.onenand_update_bufferram.exit_crit_edge
  %38 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bufferram_index.i, align 4
  %40 = getelementptr %struct.onenand_chip, ptr %20, i32 0, i32 16, i32 %39
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %40, align 4
  %42 = ptrtoint ptr %bbt_wait to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bbt_wait, align 8
  %call35 = tail call i32 %43(ptr noundef %mtd, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %onenand_update_bufferram.exit.if.end48_crit_edge, label %if.end45, !prof !409

onenand_update_bufferram.exit.if.end48_crit_edge: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end45:                                         ; preds = %onenand_update_bufferram.exit
  %call44 = tail call fastcc i32 @onenand_recover_lsb(ptr noundef %mtd, i64 noundef %from.addr.0125, i32 noundef %call35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool46.not = icmp eq i32 %call44, 0
  br i1 %tobool46.not, label %if.end45.if.end48_crit_edge, label %if.end45.while.end_crit_edge

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end48:                                         ; preds = %if.end45.if.end48_crit_edge, %onenand_update_bufferram.exit.if.end48_crit_edge
  %44 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_bufferram, align 8
  %call49 = tail call i32 %45(ptr noundef %mtd, i32 noundef 65568, ptr noundef %buf.0122, i32 noundef %column.0121, i32 noundef %16) #13
  %add50 = add i32 %16, %read.0123
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %3)
  %cmp51 = icmp eq i32 %add50, %3
  br i1 %cmp51, label %if.end48.while.end_crit_edge, label %if.end54

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end54:                                         ; preds = %if.end48
  %cmp55 = icmp ult i32 %add50, %3
  br i1 %cmp55, label %if.end60, label %if.end54.while.end_crit_edge

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %buf.0122, i32 %16
  %46 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %writesize, align 8
  %conv58 = zext i32 %47 to i64
  %add59 = add i64 %from.addr.0125, %conv58
  br label %while.body

while.end:                                        ; preds = %if.end54.while.end_crit_edge, %if.end48.while.end_crit_edge, %if.end45.while.end_crit_edge, %if.end17.while.end_crit_edge
  %ret.2 = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ 0, %if.end54.while.end_crit_edge ], [ 0, %if.end48.while.end_crit_edge ], [ %call44, %if.end45.while.end_crit_edge ]
  %read.1 = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %add50, %if.end54.while.end_crit_edge ], [ %3, %if.end48.while.end_crit_edge ], [ %read.0123, %if.end45.while.end_crit_edge ]
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %49, i32 0, i32 35
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %51)
  %cmp.not.i = icmp eq i32 %51, 12
  br i1 %cmp.not.i, label %while.end.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

while.end.onenand_release_device.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %while.end
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %49, i32 0, i32 30
  %52 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %disable.i, align 4
  %tobool.not.i113 = icmp eq ptr %53, null
  br i1 %tobool.not.i113, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i115

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i115:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i114 = tail call i32 %53(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i115, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %while.end.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %49, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %54 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %49, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  %55 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %read.1, ptr %oobretlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %onenand_release_device.exit, %do.end14
  %retval.0 = phi i32 [ 4, %do.end14 ], [ %ret.2, %onenand_release_device.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef %new_state) #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !397) #13
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %chip_lock = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %chip_lock) #13
  %state = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp100 = icmp eq i32 %16, 0
  br i1 %cmp100, label %entry.if.then_crit_edge, label %if.end8.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end8.lr.ph:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %new_state)
  %cmp9 = icmp eq i32 %new_state, 12
  %wq = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 34
  br i1 %cmp9, label %if.then10, label %if.end8.lr.ph.__here_crit_edge

if.end8.lr.ph.__here_crit_edge:                   ; preds = %if.end8.lr.ph
  br label %__here

if.then:                                          ; preds = %__here.if.then_crit_edge, %entry.if.then_crit_edge
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %new_state, ptr %state, align 4
  call void @_raw_spin_unlock(ptr noundef %chip_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %new_state)
  %cmp4.not = icmp eq i32 %new_state, 12
  br i1 %cmp4.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %enable = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable, align 8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call i32 %19(ptr noundef %mtd) #13
  br label %cleanup

if.then10:                                        ; preds = %if.end8.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %chip_lock) #13
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp13 = icmp eq i32 %21, 12
  %cond = select i1 %cmp13, i32 0, i32 -11
  br label %cleanup

__here:                                           ; preds = %__here.__here_crit_edge, %if.end8.lr.ph.__here_crit_edge
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@onenand_get_device, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 2, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !410
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #13
  call void @_raw_spin_unlock(ptr noundef %chip_lock) #13
  call void @schedule() #13
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #13
  call void @_raw_spin_lock(ptr noundef %chip_lock) #13
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 4
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %__here.if.then_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here.if.then_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

cleanup:                                          ; preds = %if.then10, %if.then5, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then10 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_recover_lsb(ptr noundef %mtd, i64 noundef %addr, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_id, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %if.end.cleanup_crit_edge [
    i32 -74, label %if.end.if.end3_crit_edge
    i32 2, label %if.end.if.end3_crit_edge26
  ]

if.end.if.end3_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge26
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %5 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numeraseregions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i = icmp sgt i32 %6, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %if.end3.flexonenand_region.exit_crit_edge

if.end3.flexonenand_region.exit_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_region.exit

for.body.lr.ph.i:                                 ; preds = %if.end3
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %7 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eraseregions.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtd_erase_region_info, ptr %8, i32 %i.07.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %addr)
  %cmp1.i = icmp ugt i64 %10, %addr
  br i1 %cmp1.i, label %for.body.i.flexonenand_region.exit_crit_edge, label %for.inc.i

for.body.i.flexonenand_region.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_region.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.flexonenand_region.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.flexonenand_region.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_region.exit

flexonenand_region.exit:                          ; preds = %for.inc.i.flexonenand_region.exit_crit_edge, %for.body.i.flexonenand_region.exit_crit_edge, %if.end3.flexonenand_region.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end3.flexonenand_region.exit_crit_edge ], [ %6, %for.inc.i.flexonenand_region.exit_crit_edge ], [ %i.07.i, %for.body.i.flexonenand_region.exit_crit_edge ]
  %sub.i = add nsw i32 %i.0.lcssa.i, -1
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %11 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eraseregions, align 4
  %erasesize = getelementptr %struct.mtd_erase_region_info, ptr %12, i32 %sub.i, i32 1
  %13 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize, align 8
  %erase_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %erase_shift, align 4
  %.highbits = lshr i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits)
  %cmp5 = icmp eq i32 %.highbits, 0
  br i1 %cmp5, label %flexonenand_region.exit.cleanup_crit_edge, label %do.end

flexonenand_region.exit.cleanup_crit_edge:        ; preds = %flexonenand_region.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %flexonenand_region.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #16
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %17 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %failed, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %failed, align 4
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %command, align 8
  %writesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 8
  %call9 = tail call i32 %20(ptr noundef %mtd, i32 noundef 5, i64 noundef %addr, i32 noundef %22) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wait, align 4
  %call10 = tail call i32 %24(ptr noundef %mtd, i32 noundef 21) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %flexonenand_region.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %status, %entry.cleanup_crit_edge ], [ %status, %if.end.cleanup_crit_edge ], [ %status, %flexonenand_region.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @onenand_scan(ptr noundef %mtd, i32 %maxchips) #4 align 64 {
entry:
  %ops.i = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_word, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %read_word to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @onenand_readw, ptr %read_word, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_word, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %write_word to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @onenand_writew, ptr %write_word, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @onenand_command, ptr %command, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wait, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %complete.i = getelementptr inbounds %struct.onenand_chip, ptr %14, i32 0, i32 31
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.onenand_chip, ptr %14, i32 0, i32 31, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #13
  %irq.i = getelementptr inbounds %struct.onenand_chip, ptr %14, i32 0, i32 32
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp slt i32 %17, 1
  br i1 %cmp.i, label %if.then11.onenand_setup_wait.exit_crit_edge, label %if.end.i

if.then11.onenand_setup_wait.exit_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_setup_wait.exit

if.end.i:                                         ; preds = %if.then11
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @onenand_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.onenand_setup_wait.exit_crit_edge

if.end.i.onenand_setup_wait.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_setup_wait.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %read_word.i = getelementptr inbounds %struct.onenand_chip, ptr %14, i32 0, i32 23
  %18 = ptrtoint ptr %read_word.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_word.i, align 8
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 123970
  %call5.i = tail call zeroext i16 %19(ptr noundef %add.ptr.i) #13
  %22 = or i16 %call5.i, 32
  %write_word.i = getelementptr inbounds %struct.onenand_chip, ptr %14, i32 0, i32 24
  %23 = ptrtoint ptr %write_word.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_word.i, align 4
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %14, align 8
  %add.ptr8.i = getelementptr i8, ptr %26, i32 123970
  tail call void %24(i16 noundef zeroext %22, ptr noundef %add.ptr8.i) #13
  br label %onenand_setup_wait.exit

onenand_setup_wait.exit:                          ; preds = %if.end4.i, %if.end.i.onenand_setup_wait.exit_crit_edge, %if.then11.onenand_setup_wait.exit_crit_edge
  %onenand_try_interrupt_wait.sink.i = phi ptr [ @onenand_try_interrupt_wait, %if.end4.i ], [ @onenand_wait, %if.then11.onenand_setup_wait.exit_crit_edge ], [ @onenand_wait, %if.end.i.onenand_setup_wait.exit_crit_edge ]
  %wait9.i = getelementptr inbounds %struct.onenand_chip, ptr %14, i32 0, i32 18
  %27 = ptrtoint ptr %wait9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %onenand_try_interrupt_wait.sink.i, ptr %wait9.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %onenand_setup_wait.exit, %if.end9.if.end12_crit_edge
  %bbt_wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %bbt_wait to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bbt_wait, align 8
  %tobool13.not = icmp eq ptr %29, null
  br i1 %tobool13.not, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %bbt_wait to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @onenand_bbt_wait, ptr %bbt_wait, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %unlock_all = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 20
  %31 = ptrtoint ptr %unlock_all to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unlock_all, align 4
  %tobool17.not = icmp eq ptr %32, null
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %unlock_all to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @onenand_unlock_all, ptr %unlock_all, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %chip_probe = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 26
  %34 = ptrtoint ptr %chip_probe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip_probe, align 4
  %tobool21.not = icmp eq ptr %35, null
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %chip_probe to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @onenand_chip_probe, ptr %chip_probe, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %read_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 21
  %37 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_bufferram, align 8
  %tobool25.not = icmp eq ptr %38, null
  br i1 %tobool25.not, label %if.then26, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @onenand_read_bufferram, ptr %read_bufferram, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %write_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 22
  %40 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_bufferram, align 4
  %tobool29.not = icmp eq ptr %41, null
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @onenand_write_bufferram, ptr %write_bufferram, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %block_markbad = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 27
  %43 = ptrtoint ptr %block_markbad to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %block_markbad, align 8
  %tobool33.not = icmp eq ptr %44, null
  br i1 %tobool33.not, label %if.then34, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %block_markbad to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @onenand_default_block_markbad, ptr %block_markbad, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %scan_bbt = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 28
  %46 = ptrtoint ptr %scan_bbt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scan_bbt, align 4
  %tobool37.not = icmp eq ptr %47, null
  br i1 %tobool37.not, label %if.then38, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %scan_bbt to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @onenand_default_bbt, ptr %scan_bbt, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %chip_probe.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 26
  %51 = ptrtoint ptr %chip_probe.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip_probe.i, align 4
  %call.i = tail call i32 %52(ptr noundef %mtd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i250 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i250, label %if.end.i254, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i254:                                      ; preds = %if.end40
  %read_word.i251 = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 23
  %53 = ptrtoint ptr %read_word.i251 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_word.i251, align 8
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 8
  %add.ptr.i252 = getelementptr i8, ptr %56, i32 122882
  %call1.i = tail call zeroext i16 %54(ptr noundef %add.ptr.i252) #13
  %conv.i = zext i16 %call1.i to i32
  %57 = ptrtoint ptr %read_word.i251 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_word.i251, align 8
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %50, align 8
  %add.ptr4.i = getelementptr i8, ptr %60, i32 122884
  %call5.i253 = tail call zeroext i16 %58(ptr noundef %add.ptr4.i) #13
  %conv6.i = zext i16 %call5.i253 to i32
  %61 = ptrtoint ptr %read_word.i251 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_word.i251, align 8
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %50, align 8
  %add.ptr9.i = getelementptr i8, ptr %64, i32 122892
  %call10.i = tail call zeroext i16 %62(ptr noundef %add.ptr9.i) #13
  %conv11.i = zext i16 %call10.i to i32
  %technology.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 7
  %65 = ptrtoint ptr %technology.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv11.i, ptr %technology.i, align 4
  %and.i.i = and i32 %conv.i, 3
  %and1.i.i = and i32 %conv.i, 4
  %and2.i.i = and i32 %conv.i, 8
  %66 = lshr i32 %conv.i, 4
  %and.i.i.i = and i32 %66, 15
  %and3.i.i = and i32 %conv.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.72, ptr @.str.71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %cond5.i.i = select i1 %tobool4.not.i.i, ptr @.str.71, ptr @.str.73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool6.not.i.i = icmp eq i32 %and2.i.i, 0
  %cond7.i.i = select i1 %tobool6.not.i.i, ptr @.str.71, ptr @.str.74
  %shl.i.i = shl nuw nsw i32 16, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i.i = icmp eq i32 %and.i.i, 0
  %cond9.i.i = select i1 %tobool8.not.i.i, ptr @.str.76, ptr @.str.75
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull %cond.i.i, ptr noundef nonnull %cond5.i.i, ptr noundef nonnull %cond7.i.i, i32 noundef %shl.i.i, ptr noundef nonnull %cond9.i.i, i32 noundef %conv.i) #16
  %call15.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %conv6.i) #16
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 5
  %67 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i, ptr %device_id.i, align 4
  %version_id.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 6
  %68 = ptrtoint ptr %version_id.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv6.i, ptr %version_id.i, align 8
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %device_id.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %device_id.i.i, align 4
  %73 = lshr i32 %72, 4
  %and.i.i146.i = and i32 %73, 15
  %version_id.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 6
  %74 = ptrtoint ptr %version_id.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %version_id.i.i, align 8
  %read_word.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 23
  %76 = ptrtoint ptr %read_word.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read_word.i.i, align 8
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %70, align 8
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 122890
  %call1.i.i = tail call zeroext i16 %77(ptr noundef %add.ptr.i.i) #13
  %80 = zext i32 %and.i.i146.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %and.i.i146.i, label %sw.default.i.i [
    i32 6, label %sw.bb.i.i
    i32 5, label %if.end.i254.sw.bb3.i.i_crit_edge
    i32 4, label %sw.bb24.i.i
    i32 3, label %sw.bb34.i.i
  ]

if.end.i254.sw.bb3.i.i_crit_edge:                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i.i

sw.bb.i.i:                                        ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #15
  %options.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 9
  %81 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %options.i.i, align 4
  %or.i.i = or i32 %82, 32
  store i32 %or.i.i, ptr %options.i.i, align 4
  br label %sw.bb3.i.i

sw.bb3.i.i:                                       ; preds = %sw.bb.i.i, %if.end.i254.sw.bb3.i.i_crit_edge
  %83 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %device_id.i.i, align 4
  %and.i147.i = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147.i)
  %tobool.not.i148.i = icmp eq i32 %and.i147.i, 0
  br i1 %tobool.not.i148.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %options5.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 9
  %85 = ptrtoint ptr %options5.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %options5.i.i, align 4
  %or6.i.i = or i32 %86, 4
  store i32 %or6.i.i, ptr %options5.i.i, align 4
  br label %sw.epilog.sink.split.i.i

if.else.i.i:                                      ; preds = %sw.bb3.i.i
  %.mask.i.i = and i16 %call1.i.i, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %.mask.i.i)
  %cmp.i.i = icmp eq i16 %.mask.i.i, 256
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge

if.else.i.i.sw.epilog.sink.split.i.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  %options9.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 9
  %87 = ptrtoint ptr %options9.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %options9.i.i, align 4
  %or12.i.i = or i32 %88, 24
  store i32 %or12.i.i, ptr %options9.i.i, align 4
  %89 = ptrtoint ptr %version_id.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %version_id.i.i, align 8
  %and14.i.i = and i32 %90, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and14.i.i)
  %cmp15.i.i = icmp eq i32 %and14.i.i, 14
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.then8.i.i.sw.epilog.sink.split.i.i_crit_edge

if.then8.i.i.sw.epilog.sink.split.i.i_crit_edge:  ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

if.then17.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or19.i.i = or i32 %88, 56
  %91 = ptrtoint ptr %options9.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or19.i.i, ptr %options9.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.bb24.i.i:                                      ; preds = %if.end.i254
  %92 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %device_id.i.i, align 4
  %and26.i.i = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %sw.bb24.i.i.sw.epilog.sink.split.i.i_crit_edge

sw.bb24.i.i.sw.epilog.sink.split.i.i_crit_edge:   ; preds = %sw.bb24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

if.then28.i.i:                                    ; preds = %sw.bb24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %options29.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 9
  %94 = ptrtoint ptr %options29.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %options29.i.i, align 4
  %or30.i.i = or i32 %95, 4
  store i32 %or30.i.i, ptr %options29.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.bb34.i.i:                                      ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %75)
  %tobool35.not.i.i = icmp ult i32 %75, 256
  br i1 %tobool35.not.i.i, label %sw.bb34.i.i.sw.epilog.i.i_crit_edge, label %sw.bb34.i.i.sw.epilog.sink.split.i.i_crit_edge

sw.bb34.i.i.sw.epilog.sink.split.i.i_crit_edge:   ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

sw.bb34.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %75)
  %tobool40.not.i.i = icmp ult i32 %75, 256
  br i1 %tobool40.not.i.i, label %sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge, label %sw.default.i.i.sw.epilog.i.i_crit_edge

sw.default.i.i.sw.epilog.i.i_crit_edge:           ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge, %sw.bb34.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.then28.i.i, %sw.bb24.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.then17.i.i, %if.then8.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.then.i.i
  %.sink142.i.i = phi i32 [ 2, %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ 2, %if.then17.i.i ], [ 2, %if.then8.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ 2, %if.then.i.i ], [ 2, %if.then28.i.i ], [ 2, %sw.bb24.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ 2, %sw.bb34.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ 1, %sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %options22.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 9
  %96 = ptrtoint ptr %options22.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %options22.i.i, align 4
  %or43.i.i = or i32 %97, %.sink142.i.i
  store i32 %or43.i.i, ptr %options22.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %sw.default.i.i.sw.epilog.i.i_crit_edge, %sw.bb34.i.i.sw.epilog.i.i_crit_edge
  %technology.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 7
  %98 = ptrtoint ptr %technology.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %technology.i.i, align 4
  %and45.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %sw.epilog.i.i.if.end50.i.i_crit_edge, label %if.then47.i.i

sw.epilog.i.i.if.end50.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i.i

if.then47.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %options48.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 9
  %100 = ptrtoint ptr %options48.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %options48.i.i, align 4
  %or49.i.i = or i32 %101, 8
  store i32 %or49.i.i, ptr %options48.i.i, align 4
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then47.i.i, %sw.epilog.i.i.if.end50.i.i_crit_edge
  %options51.i.i = getelementptr inbounds %struct.onenand_chip, ptr %70, i32 0, i32 9
  %102 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %options51.i.i, align 4
  %and52.i.i = and i32 %103, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end50.i.i.if.end57.i.i_crit_edge, label %if.then54.i.i

if.end50.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57.i.i

if.then54.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and56.i.i = and i32 %103, -5
  %104 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and56.i.i, ptr %options51.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then54.i.i, %if.end50.i.i.if.end57.i.i_crit_edge
  %105 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %device_id.i.i, align 4
  %and59.i.i = and i32 %106, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end57.i.i.if.end66.i.i_crit_edge, label %if.then61.i.i

if.end57.i.i.if.end66.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i.i

if.then61.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %options51.i.i, align 4
  %and63.i.i = and i32 %108, -4
  %or65.i.i = or i32 %and63.i.i, 2
  store i32 %or65.i.i, ptr %options51.i.i, align 4
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.then61.i.i, %if.end57.i.i.if.end66.i.i_crit_edge
  %109 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %options51.i.i, align 4
  %and68.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.end66.i.i.if.end72.i.i_crit_edge, label %do.end.i.i

if.end66.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72.i.i

do.end.i.i:                                       ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call71.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %do.end.i.i, %if.end66.i.i.if.end72.i.i_crit_edge
  %111 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %options51.i.i, align 4
  %and74.i.i = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i.i)
  %tobool75.not.i.i = icmp eq i32 %and74.i.i, 0
  br i1 %tobool75.not.i.i, label %if.end72.i.i.if.end82.i.i_crit_edge, label %do.end79.i.i

if.end72.i.i.if.end82.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82.i.i

do.end79.i.i:                                     ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call81.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #16
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %do.end79.i.i, %if.end72.i.i.if.end82.i.i_crit_edge
  %113 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %options51.i.i, align 4
  %and84.i.i = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i.i)
  %tobool85.not.i.i = icmp eq i32 %and84.i.i, 0
  br i1 %tobool85.not.i.i, label %if.end82.i.i.if.end92.i.i_crit_edge, label %do.end89.i.i

if.end82.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92.i.i

do.end89.i.i:                                     ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call91.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #16
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %do.end89.i.i, %if.end82.i.i.if.end92.i.i_crit_edge
  %115 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %options51.i.i, align 4
  %and94.i.i = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i.i)
  %tobool95.not.i.i = icmp eq i32 %and94.i.i, 0
  br i1 %tobool95.not.i.i, label %if.end92.i.i.if.end102.i.i_crit_edge, label %do.end99.i.i

if.end92.i.i.if.end102.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i.i

do.end99.i.i:                                     ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call101.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #16
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %do.end99.i.i, %if.end92.i.i.if.end102.i.i_crit_edge
  %117 = ptrtoint ptr %options51.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %options51.i.i, align 4
  %and104.i.i = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i.i)
  %tobool105.not.i.i = icmp eq i32 %and104.i.i, 0
  br i1 %tobool105.not.i.i, label %if.end102.i.i.onenand_check_features.exit.i_crit_edge, label %do.end109.i.i

if.end102.i.i.onenand_check_features.exit.i_crit_edge: ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_check_features.exit.i

do.end109.i.i:                                    ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call111.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #16
  br label %onenand_check_features.exit.i

onenand_check_features.exit.i:                    ; preds = %do.end109.i.i, %if.end102.i.i.onenand_check_features.exit.i_crit_edge
  %119 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %device_id.i, align 4
  %and.i = and i32 %120, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %onenand_check_features.exit.i.if.end27.i_crit_edge, label %if.then15.i

onenand_check_features.exit.i.if.end27.i_crit_edge: ; preds = %onenand_check_features.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then15.i:                                      ; preds = %onenand_check_features.exit.i
  %and17.i = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cond.i = select i1 %tobool18.not.i, i32 1, i32 2
  %dies.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 1
  %121 = ptrtoint ptr %dies.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %cond.i, ptr %dies.i, align 4
  %shl.i = shl nuw nsw i32 %cond.i, 1
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %122 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %shl.i, ptr %numeraseregions.i, align 8
  %123 = load i32, ptr %dies.i, align 4
  %shl21.i = shl i32 %123, 1
  %124 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl21.i, i32 24) #13
  %125 = extractvalue { i32, i1 } %124, 1
  br i1 %125, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !408

kcalloc.exit.thread.i:                            ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  %eraseregions151.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %126 = ptrtoint ptr %eraseregions151.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %eraseregions151.i, align 4
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.then15.i
  %127 = extractvalue { i32, i1 } %124, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %127, i32 noundef 3520) #17
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %128 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call8.i.i.i, ptr %eraseregions.i, align 4
  %tobool24.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool24.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end7.i.i.i.if.end27.i_crit_edge

if.end7.i.i.i.if.end27.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27.i:                                       ; preds = %if.end7.i.i.i.if.end27.i_crit_edge, %onenand_check_features.exit.i.if.end27.i_crit_edge
  %shl29.i = shl i32 16777216, %and.i.i.i
  %chipsize.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 4
  %129 = ptrtoint ptr %chipsize.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %shl29.i, ptr %chipsize.i, align 8
  %130 = ptrtoint ptr %read_word.i251 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read_word.i251, align 8
  %132 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %50, align 8
  %add.ptr32.i = getelementptr i8, ptr %133, i32 122886
  %call33.i = tail call zeroext i16 %131(ptr noundef %add.ptr32.i) #13
  %conv34.i = zext i16 %call33.i to i32
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %134 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv34.i, ptr %writesize.i, align 4
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 9
  %135 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %options.i, align 4
  %and35.i = and i32 %136, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end27.i.if.end40.i_crit_edge, label %if.then37.i

if.end27.i.if.end40.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl39.i = shl nuw nsw i32 %conv34.i, 1
  %137 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %shl39.i, ptr %writesize.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end27.i.if.end40.i_crit_edge
  %138 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %writesize.i, align 4
  %shr.i = lshr i32 %139, 5
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %140 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %shr.i, ptr %oobsize.i, align 4
  %shl43.i = shl i32 %139, 6
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %141 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shl43.i, ptr %erasesize.i, align 8
  %142 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %device_id.i, align 4
  %and45.i = and i32 %143, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end40.i.if.end50.i_crit_edge, label %if.then47.i

if.end40.i.if.end50.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl49.i = shl i32 %139, 7
  %144 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %shl49.i, ptr %erasesize.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end40.i.if.end50.i_crit_edge
  %145 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %erasesize.i, align 8
  %147 = tail call i32 @llvm.cttz.i32(i32 %146, i1 true) #13, !range !411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %iszero.i = icmp eq i32 %146, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %147
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 11
  %148 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %sub.i, ptr %erase_shift.i, align 4
  %149 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %writesize.i, align 4
  %151 = tail call i32 @llvm.cttz.i32(i32 %150, i1 true) #13, !range !411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %iszero53.i = icmp eq i32 %150, 0
  %sub55.i = select i1 %iszero53.i, i32 -1, i32 %151
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 12
  %152 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %sub55.i, ptr %page_shift.i, align 8
  %sub58.i = sub nsw i32 %sub.i, %sub55.i
  %notmask.i = shl nsw i32 -1, %sub58.i
  %sub60.i = xor i32 %notmask.i, -1
  %page_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 13
  %153 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %sub60.i, ptr %page_mask.i, align 4
  %154 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %device_id.i, align 4
  %and62.i = and i32 %155, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end50.i.if.end68.i_crit_edge, label %if.then64.i

if.end50.i.if.end68.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68.i

if.then64.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %chipsize.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %chipsize.i, align 8
  %add.i = add nsw i32 %sub.i, 1
  %shr67.i = lshr i32 %157, %add.i
  %density_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 8
  %158 = ptrtoint ptr %density_mask.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %shr67.i, ptr %density_mask.i, align 8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then64.i, %if.end50.i.if.end68.i_crit_edge
  %159 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %writesize.i, align 4
  %writesize70.i = getelementptr inbounds %struct.onenand_chip, ptr %50, i32 0, i32 14
  %161 = ptrtoint ptr %writesize70.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %writesize70.i, align 8
  %162 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %device_id.i, align 4
  %and72.i = and i32 %163, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.else.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flexonenand_get_size(ptr noundef %mtd) #13
  br label %if.end77.i

if.else.i:                                        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  %164 = ptrtoint ptr %chipsize.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %chipsize.i, align 8
  %conv76.i = zext i32 %165 to i64
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %166 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %conv76.i, ptr %size.i, align 8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else.i, %if.then74.i
  %167 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %options.i, align 4
  %and79.i = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end43_crit_edge, label %if.then81.i

if.end77.i.if.end43_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  %169 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %writesize.i, align 4
  %shl83.i = shl i32 %170, 1
  store i32 %shl83.i, ptr %writesize.i, align 4
  %171 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %erasesize.i, align 8
  %shl85.i = shl i32 %172, 1
  store i32 %shl85.i, ptr %erasesize.i, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then81.i, %if.end77.i.if.end43_crit_edge
  %mmcontrol = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 25
  %173 = ptrtoint ptr %mmcontrol to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mmcontrol, align 8
  %tobool44.not = icmp eq ptr %174, null
  br i1 %tobool44.not, label %if.end43.if.end48_crit_edge, label %do.end

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

do.end:                                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16
  %175 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @onenand_sync_read_bufferram, ptr %read_bufferram, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.end, %if.end43.if.end48_crit_edge
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %176 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %page_buf, align 8
  %tobool49.not = icmp eq ptr %177, null
  br i1 %tobool49.not, label %if.end8.i.i, label %if.end48.if.end64_crit_edge

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.end8.i.i:                                      ; preds = %if.end48
  %178 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %writesize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %179, i32 noundef 3520) #17
  %180 = ptrtoint ptr %page_buf to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call9.i.i, ptr %page_buf, align 8
  %tobool54.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool54.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i284

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i284:                                   ; preds = %if.end8.i.i
  %181 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %writesize.i, align 4
  %call9.i.i283 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %182, i32 noundef 3520) #17
  %verify_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 38
  %183 = ptrtoint ptr %verify_buf to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call9.i.i283, ptr %verify_buf, align 8
  %tobool60.not = icmp eq ptr %call9.i.i283, null
  br i1 %tobool60.not, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end8.i.i284
  call void @__sanitizer_cov_trace_pc() #15
  %184 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %page_buf, align 8
  tail call void @kfree(ptr noundef %185) #13
  br label %cleanup

if.end63:                                         ; preds = %if.end8.i.i284
  call void @__sanitizer_cov_trace_pc() #15
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %186 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %options, align 4
  %or = or i32 %187, 4096
  store i32 %or, ptr %options, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end48.if.end64_crit_edge
  %oob_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 37
  %188 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %oob_buf, align 4
  %tobool65.not = icmp eq ptr %189, null
  br i1 %tobool65.not, label %if.end8.i.i313, label %if.end64.if.end83_crit_edge

if.end64.if.end83_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.end8.i.i313:                                   ; preds = %if.end64
  %190 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %oobsize.i, align 4
  %call9.i.i312 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %191, i32 noundef 3520) #17
  %192 = ptrtoint ptr %oob_buf to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call9.i.i312, ptr %oob_buf, align 4
  %tobool70.not = icmp eq ptr %call9.i.i312, null
  %options72 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %193 = ptrtoint ptr %options72 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %options72, align 4
  br i1 %tobool70.not, label %if.then71, label %if.end80

if.then71:                                        ; preds = %if.end8.i.i313
  %and = and i32 %194, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  br i1 %tobool73.not, label %if.then71.cleanup_crit_edge, label %if.then74

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then74:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %and76 = and i32 %194, -4097
  %195 = ptrtoint ptr %options72 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %and76, ptr %options72, align 4
  %verify_buf77 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 38
  %196 = ptrtoint ptr %verify_buf77 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %verify_buf77, align 8
  tail call void @kfree(ptr noundef %197) #13
  %198 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %page_buf, align 8
  tail call void @kfree(ptr noundef %199) #13
  br label %cleanup

if.end80:                                         ; preds = %if.end8.i.i313
  call void @__sanitizer_cov_trace_pc() #15
  %or82 = or i32 %194, 8192
  %200 = ptrtoint ptr %options72 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %or82, ptr %options72, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end80, %if.end64.if.end83_crit_edge
  %state = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %201 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %state, align 4
  %wq = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 34
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.7, ptr noundef nonnull @onenand_scan.__key) #13
  %chip_lock = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %chip_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @onenand_scan.__key.8, i16 noundef signext 3) #13
  %202 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %oobsize.i, align 4
  %204 = zext i32 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %203, label %do.end109 [
    i32 128, label %sw.bb
    i32 64, label %sw.bb103
    i32 32, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %205 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %device_id, align 4
  %and92 = and i32 %206, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %spec.select = select i1 %tobool93.not, ptr @onenand_oob_128_ooblayout_ops, ptr @flexonenand_ooblayout_ops
  %207 = lshr exact i32 %and92, 8
  %208 = xor i32 %207, 2
  %209 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 15
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %spec.select, ptr %209, align 8
  %211 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 53
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %208, ptr %211, align 4
  %options97 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %213 = ptrtoint ptr %options97 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %options97, align 4
  %and98 = and i32 %214, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %spec.store.select = select i1 %tobool99.not, i32 %208, i32 0
  %215 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %spec.store.select, ptr %211, align 4
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %ooblayout1.i317 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 15
  %216 = ptrtoint ptr %ooblayout1.i317 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @onenand_oob_32_64_ooblayout_ops, ptr %ooblayout1.i317, align 8
  %subpage_sft104 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 53
  %217 = ptrtoint ptr %subpage_sft104 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 2, ptr %subpage_sft104, align 4
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %ooblayout1.i318 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 15
  %218 = ptrtoint ptr %ooblayout1.i318 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @onenand_oob_32_64_ooblayout_ops, ptr %ooblayout1.i318, align 8
  %subpage_sft106 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 53
  %219 = ptrtoint ptr %subpage_sft106 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 1, ptr %subpage_sft106, align 4
  br label %sw.epilog

do.end109:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef %203) #16
  %subpage_sft113 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 53
  %220 = ptrtoint ptr %subpage_sft113 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %subpage_sft113, align 4
  %ooblayout1.i319 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 15
  %221 = ptrtoint ptr %ooblayout1.i319 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @onenand_oob_32_64_ooblayout_ops, ptr %ooblayout1.i319, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end109, %sw.bb105, %sw.bb103, %sw.bb
  %222 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %writesize.i, align 4
  %subpage_sft115 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 53
  %224 = ptrtoint ptr %subpage_sft115 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %subpage_sft115, align 4
  %shr = lshr i32 %223, %225
  %subpagesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 39
  %226 = ptrtoint ptr %subpagesize to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %shr, ptr %subpagesize, align 4
  %call116 = tail call i32 @mtd_ooblayout_count_freebytes(ptr noundef %mtd) #13
  %227 = tail call i32 @llvm.smax.i32(i32 %call116, i32 0)
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %228 = ptrtoint ptr %oobavail to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %oobavail, align 8
  %ecc_strength = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 18
  %229 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 1, ptr %ecc_strength, align 4
  %technology = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 7
  %230 = ptrtoint ptr %technology to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %technology, align 4
  %and119 = and i32 %231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  %conv = select i1 %tobool120.not, i8 4, i8 8
  %232 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv, ptr %mtd, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 1
  %233 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 1024, ptr %flags, align 4
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 21
  %234 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @onenand_erase, ptr %_erase, align 8
  %_point = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 22
  %235 = ptrtoint ptr %_point to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr null, ptr %_point, align 4
  %_unpoint = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 23
  %236 = ptrtoint ptr %_unpoint to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %_unpoint, align 8
  %_read_oob = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 27
  %237 = ptrtoint ptr %_read_oob to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr @onenand_read_oob, ptr %_read_oob, align 8
  %_write_oob = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 28
  %238 = ptrtoint ptr %_write_oob to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @onenand_write_oob, ptr %_write_oob, align 4
  %_panic_write = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 26
  %239 = ptrtoint ptr %_panic_write to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr @onenand_panic_write, ptr %_panic_write, align 4
  %_get_fact_prot_info = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 29
  %240 = ptrtoint ptr %_get_fact_prot_info to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr @onenand_get_fact_prot_info, ptr %_get_fact_prot_info, align 8
  %_read_fact_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 30
  %241 = ptrtoint ptr %_read_fact_prot_reg to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @onenand_read_fact_prot_reg, ptr %_read_fact_prot_reg, align 4
  %_get_user_prot_info = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 31
  %242 = ptrtoint ptr %_get_user_prot_info to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @onenand_get_user_prot_info, ptr %_get_user_prot_info, align 8
  %_read_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 32
  %243 = ptrtoint ptr %_read_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @onenand_read_user_prot_reg, ptr %_read_user_prot_reg, align 4
  %_write_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 33
  %244 = ptrtoint ptr %_write_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @onenand_write_user_prot_reg, ptr %_write_user_prot_reg, align 8
  %_lock_user_prot_reg = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 34
  %245 = ptrtoint ptr %_lock_user_prot_reg to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @onenand_lock_user_prot_reg, ptr %_lock_user_prot_reg, align 4
  %_sync = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 37
  %246 = ptrtoint ptr %_sync to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @onenand_sync, ptr %_sync, align 8
  %_lock = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 38
  %247 = ptrtoint ptr %_lock to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @onenand_lock, ptr %_lock, align 4
  %_unlock = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 39
  %248 = ptrtoint ptr %_unlock to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @onenand_unlock, ptr %_unlock, align 8
  %_suspend = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 45
  %249 = ptrtoint ptr %_suspend to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @onenand_suspend, ptr %_suspend, align 8
  %_resume = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 46
  %250 = ptrtoint ptr %_resume to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @onenand_resume, ptr %_resume, align 4
  %_block_isbad = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 42
  %251 = ptrtoint ptr %_block_isbad to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @onenand_block_isbad, ptr %_block_isbad, align 4
  %_block_markbad = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 43
  %252 = ptrtoint ptr %_block_markbad to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr @onenand_block_markbad, ptr %_block_markbad, align 8
  %owner = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 55
  %253 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr null, ptr %owner, align 4
  %254 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %writesize.i, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 5
  %256 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %writebufsize, align 8
  %options122 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %257 = ptrtoint ptr %options122 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %options122, align 4
  %and123 = and i32 %258, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.then125, label %sw.epilog.if.end127_crit_edge

sw.epilog.if.end127_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then125:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %259 = ptrtoint ptr %unlock_all to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %unlock_all, align 4
  tail call void %260(ptr noundef %mtd) #13
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %sw.epilog.if.end127_crit_edge
  %badblockpos = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 10
  %261 = ptrtoint ptr %badblockpos to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %badblockpos, align 8
  %262 = ptrtoint ptr %scan_bbt to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %scan_bbt, align 4
  %call129 = tail call i32 %263(ptr noundef %mtd) #13
  %device_id130 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %264 = ptrtoint ptr %device_id130 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %device_id130, align 4
  %and131 = and i32 %265, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp ne i32 %and131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool133.not = icmp eq i32 %call129, 0
  %or.cond = select i1 %tobool132.not, i1 %tobool133.not, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end127
  %266 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 1
  %267 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 2
  %268 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 3
  %269 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 4
  %270 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 5
  %271 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 6
  %272 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %flexonenand_set_boundary.exit.for.body_crit_edge, %for.cond.preheader
  %i.0367 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %flexonenand_set_boundary.exit.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0367, 1
  %arrayidx = getelementptr [4 x i32], ptr @flex_bdry, i32 0, i32 %mul
  %273 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx, align 4
  %add = or i32 %mul, 1
  %arrayidx139 = getelementptr [4 x i32], ptr @flex_bdry, i32 0, i32 %add
  %275 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx139, align 4
  %277 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0367)
  %tobool.not.i321 = icmp eq i32 %i.0367, 0
  br i1 %tobool.not.i321, label %if.end.i325, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  %device_id.i322 = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 5
  %279 = ptrtoint ptr %device_id.i322 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %device_id.i322, align 4
  %and.i323 = and i32 %280, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i323)
  %tobool1.not.i = icmp eq i32 %and.i323, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp.i324 = icmp slt i32 %274, 0
  %or.cond.i = or i1 %cmp.i324, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.flexonenand_set_boundary.exit_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

land.lhs.true.i.flexonenand_set_boundary.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_set_boundary.exit

if.end.i325:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp.old.i = icmp slt i32 %274, 0
  br i1 %cmp.old.i, label %if.end.i325.flexonenand_set_boundary.exit_crit_edge, label %if.end.i325.lor.lhs.false.i_crit_edge

if.end.i325.lor.lhs.false.i_crit_edge:            ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

if.end.i325.flexonenand_set_boundary.exit_crit_edge: ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_set_boundary.exit

lor.lhs.false.i:                                  ; preds = %if.end.i325.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %278, i32 0, i32 2, i32 %i.0367
  %281 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %282, i32 %274)
  %cmp3.i = icmp eq i32 %282, %274
  br i1 %cmp3.i, label %lor.lhs.false.i.flexonenand_set_boundary.exit_crit_edge, label %if.end5.i

lor.lhs.false.i.flexonenand_set_boundary.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_set_boundary.exit

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %device_id6.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 5
  %283 = ptrtoint ptr %device_id6.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %device_id6.i, align 4
  %285 = lshr i32 %284, 4
  %and.i.i326 = and i32 %285, 15
  %shl7.i = shl i32 16777216, %and.i.i326
  %erase_shift.i327 = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 11
  %286 = ptrtoint ptr %erase_shift.i327 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %erase_shift.i327, align 4
  %shr.i328 = ashr i32 %shl7.i, %287
  %and9.i = lshr i32 %284, 3
  %and9.lobit.i = and i32 %and9.i, 1
  %shr11.i = ashr i32 %shr.i328, %and9.lobit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr11.i, i32 %274)
  %cmp12.not.i = icmp sgt i32 %shr11.i, %274
  br i1 %cmp12.not.i, label %if.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177) #16
  br label %flexonenand_set_boundary.exit

if.end15.i:                                       ; preds = %if.end5.i
  %density_mask.i329 = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 8
  %288 = ptrtoint ptr %density_mask.i329 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %density_mask.i329, align 8
  %mul.i = mul i32 %289, %i.0367
  %add.i330 = add i32 %mul.i, %282
  %add20.i = add i32 %mul.i, %274
  %290 = tail call i32 @llvm.smin.i32(i32 %add.i330, i32 %add20.i) #13
  %add24.i = add i32 %290, 1
  %291 = tail call i32 @llvm.smax.i32(i32 %add.i330, i32 %add20.i) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i) #13
  %292 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %ops.i, align 4
  %293 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %266, align 4
  %294 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %267, align 4
  %295 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %oobsize.i, align 4
  %297 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %268, align 4
  %298 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 0, ptr %269, align 4
  %299 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %270, align 4
  %300 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr null, ptr %271, align 4
  %oob_buf.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 37
  %301 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %oob_buf.i, align 4
  %303 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %302, ptr %272, align 4
  %call.i339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %add24.i, i32 noundef %291) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %291)
  %cmp.not57.i = icmp sgt i32 %add24.i, %291
  br i1 %cmp.not57.i, label %if.end15.i.if.end39.i_crit_edge, label %for.body.lr.ph.i

if.end15.i.if.end39.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

for.body.lr.ph.i:                                 ; preds = %if.end15.i
  %diesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc26.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %block.058.i = phi i32 [ %add24.i, %for.body.lr.ph.i ], [ %inc27.i, %for.inc26.i.for.body.i_crit_edge ]
  %304 = ptrtoint ptr %device_id6.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %device_id6.i, align 4
  %and.i.i341 = and i32 %305, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i341)
  %tobool.not.i.i342 = icmp eq i32 %and.i.i341, 0
  br i1 %tobool.not.i.i342, label %for.body.i.if.end.i.i345_crit_edge, label %land.lhs.true.i.i

for.body.i.if.end.i.i345_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i345

land.lhs.true.i.i:                                ; preds = %for.body.i
  %306 = ptrtoint ptr %density_mask.i329 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %density_mask.i329, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %block.058.i, i32 %307)
  %cmp.not.i.i = icmp ult i32 %block.058.i, %307
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i345_crit_edge, label %if.then.i.i343

land.lhs.true.i.i.if.end.i.i345_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i345

if.then.i.i343:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %block.058.i, %307
  %308 = ptrtoint ptr %diesize.i.i to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %diesize.i.i, align 8
  br label %if.end.i.i345

if.end.i.i345:                                    ; preds = %if.then.i.i343, %land.lhs.true.i.i.if.end.i.i345_crit_edge, %for.body.i.if.end.i.i345_crit_edge
  %block.addr.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i343 ], [ %block.058.i, %land.lhs.true.i.i.if.end.i.i345_crit_edge ], [ %block.058.i, %for.body.i.if.end.i.i345_crit_edge ]
  %ofs.0.i.i = phi i64 [ %309, %if.then.i.i343 ], [ 0, %land.lhs.true.i.i.if.end.i.i345_crit_edge ], [ 0, %for.body.i.if.end.i.i345_crit_edge ]
  %die.0.i.i = phi i32 [ 1, %if.then.i.i343 ], [ 0, %land.lhs.true.i.i.if.end.i.i345_crit_edge ], [ 0, %for.body.i.if.end.i.i345_crit_edge ]
  %arrayidx3.i.i = getelementptr %struct.onenand_chip, ptr %278, i32 0, i32 2, i32 %die.0.i.i
  %310 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx3.i.i, align 4
  %conv.i.i = sext i32 %block.addr.0.i.i to i64
  %312 = ptrtoint ptr %erase_shift.i327 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %erase_shift.i327, align 4
  %sub4.i.i = add i32 %313, -1
  %sh_prom.i.i = zext i32 %sub4.i.i to i64
  %shl.i.i344 = shl i64 %conv.i.i, %sh_prom.i.i
  %add.i.i = add i64 %shl.i.i344, %ofs.0.i.i
  %add5.i.i = add i32 %311, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %block.addr.0.i.i, i32 %add5.i.i)
  %cmp6.i.i = icmp sgt i32 %block.addr.0.i.i, %add5.i.i
  br i1 %cmp6.i.i, label %if.then8.i.i346, label %if.end.i.i345.flexonenand_addr.exit.i_crit_edge

if.end.i.i345.flexonenand_addr.exit.i_crit_edge:  ; preds = %if.end.i.i345
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_addr.exit.i

if.then8.i.i346:                                  ; preds = %if.end.i.i345
  call void @__sanitizer_cov_trace_pc() #15
  %314 = xor i32 %311, -1
  %sub10.i.i = add i32 %block.addr.0.i.i, %314
  %conv11.i.i = sext i32 %sub10.i.i to i64
  %shl15.i.i = shl i64 %conv11.i.i, %sh_prom.i.i
  %add16.i.i = add i64 %add.i.i, %shl15.i.i
  br label %flexonenand_addr.exit.i

flexonenand_addr.exit.i:                          ; preds = %if.then8.i.i346, %if.end.i.i345.flexonenand_addr.exit.i_crit_edge
  %ofs.1.i.i = phi i64 [ %add16.i.i, %if.then8.i.i346 ], [ %add.i.i, %if.end.i.i345.flexonenand_addr.exit.i_crit_edge ]
  %315 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %priv, align 8
  %bbm1.i.i = getelementptr inbounds %struct.onenand_chip, ptr %316, i32 0, i32 40
  %317 = ptrtoint ptr %bbm1.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %bbm1.i.i, align 8
  %isbad_bbt.i.i = getelementptr inbounds %struct.bbm_info, ptr %318, i32 0, i32 3
  %319 = ptrtoint ptr %isbad_bbt.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %isbad_bbt.i.i, align 4
  %call.i.i347 = tail call i32 %320(ptr noundef %mtd, i64 noundef %ofs.1.i.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i347)
  %tobool.not.i348 = icmp eq i32 %call.i.i347, 0
  br i1 %tobool.not.i348, label %if.end.i349, label %flexonenand_addr.exit.i.for.inc26.i_crit_edge

flexonenand_addr.exit.i.for.inc26.i_crit_edge:    ; preds = %flexonenand_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26.i

if.end.i349:                                      ; preds = %flexonenand_addr.exit.i
  %call3.i = call fastcc i32 @onenand_read_oob_nolock(ptr noundef %mtd, i64 noundef %ofs.1.i.i, ptr noundef nonnull %ops.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.cond7.preheader.i, label %if.end.i349.do.end36.i_crit_edge

if.end.i349.do.end36.i_crit_edge:                 ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36.i

for.cond7.preheader.i:                            ; preds = %if.end.i349
  %321 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %oobsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %cmp952.not.i = icmp eq i32 %322, 0
  br i1 %cmp952.not.i, label %for.cond7.preheader.i.for.end.i_crit_edge, label %for.body10.lr.ph.i

for.cond7.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body10.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %323 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %oob_buf.i, align 4
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.053.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i, %for.inc.i.for.body10.i_crit_edge ]
  %arrayidx.i350 = getelementptr i8, ptr %324, i32 %i.053.i
  %325 = ptrtoint ptr %arrayidx.i350 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx.i350, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %326)
  %cmp12.not.i351 = icmp eq i8 %326, -1
  br i1 %cmp12.not.i351, label %for.inc.i, label %for.body10.i.for.end.i_crit_edge

for.body10.i.for.end.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body10.i
  %inc.i = add nuw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %322
  br i1 %exitcond.not.i, label %for.inc.i.for.inc26.i_crit_edge, label %for.inc.i.for.body10.i_crit_edge

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i

for.inc.i.for.inc26.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26.i

for.end.i:                                        ; preds = %for.body10.i.for.end.i_crit_edge, %for.cond7.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond7.preheader.i.for.end.i_crit_edge ], [ %i.053.i, %for.body10.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %322)
  %cmp17.not.i = icmp eq i32 %i.0.lcssa.i, %322
  br i1 %cmp17.not.i, label %for.end.i.for.inc26.i_crit_edge, label %do.end22.i

for.end.i.for.inc26.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26.i

do.end22.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.194, i32 noundef %block.058.i) #16
  br label %do.end36.i

for.inc26.i:                                      ; preds = %for.end.i.for.inc26.i_crit_edge, %for.inc.i.for.inc26.i_crit_edge, %flexonenand_addr.exit.i.for.inc26.i_crit_edge
  %inc27.i = add i32 %block.058.i, 1
  %cmp.not.i = icmp sgt i32 %inc27.i, %291
  br i1 %cmp.not.i, label %for.inc26.i.if.end39.i_crit_edge, label %for.inc26.i.for.body.i_crit_edge

for.inc26.i.for.body.i_crit_edge:                 ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc26.i.if.end39.i_crit_edge:                 ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

do.end36.i:                                       ; preds = %do.end22.i, %if.end.i349.do.end36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #13
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.177) #16
  br label %flexonenand_set_boundary.exit

if.end39.i:                                       ; preds = %for.inc26.i.if.end39.i_crit_edge, %if.end15.i.if.end39.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i) #13
  %command.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 17
  %327 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %command.i, align 8
  %conv.i331 = zext i32 %i.0367 to i64
  %call40.i = tail call i32 %328(ptr noundef %mtd, i32 noundef 102, i64 noundef %conv.i331, i32 noundef 0) #13
  %wait.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 18
  %329 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %wait.i, align 4
  %call41.i = tail call i32 %330(ptr noundef %mtd, i32 noundef 13) #13
  %331 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %command.i, align 8
  %call44.i = tail call i32 %332(ptr noundef %mtd, i32 noundef 6533, i64 noundef %conv.i331, i32 noundef 0) #13
  %333 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %wait.i, align 4
  %call46.i = tail call i32 %334(ptr noundef %mtd, i32 noundef 21) #13
  %read_word.i332 = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 23
  %335 = ptrtoint ptr %read_word.i332 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %read_word.i332, align 8
  %337 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %278, align 8
  %add.ptr.i333 = getelementptr i8, ptr %338, i32 1024
  %call47.i = tail call zeroext i16 %336(ptr noundef %add.ptr.i333) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %call47.i)
  %cmp50.not.i = icmp ugt i16 %call47.i, -16385
  br i1 %cmp50.not.i, label %do.end61.i, label %do.end55.i

do.end55.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.177) #16
  %write_word107.c.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 24
  %339 = ptrtoint ptr %write_word107.c.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %write_word107.c.i, align 4
  %341 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %278, align 8
  %add.ptr109.c.i = getelementptr i8, ptr %342, i32 123968
  tail call void %340(i16 noundef zeroext 240, ptr noundef %add.ptr109.c.i) #13
  %343 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %wait.i, align 4
  %call111.c.i = tail call i32 %344(ptr noundef %mtd, i32 noundef 23) #13
  br label %flexonenand_set_boundary.exit

do.end61.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool63.not.i334 = icmp eq i32 %276, 0
  %cond64.i = select i1 %tobool63.not.i334, ptr @.str.102, ptr @.str.101
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef %i.0367, i32 noundef %274, ptr noundef nonnull %cond64.i) #16
  br i1 %tobool.not.i321, label %do.end61.i.cond.end70.i_crit_edge, label %cond.true67.i

do.end61.i.cond.end70.i_crit_edge:                ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end70.i

cond.true67.i:                                    ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  %diesize.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 3
  %345 = ptrtoint ptr %diesize.i to i32
  call void @__asan_load8_noabort(i32 %345)
  %346 = load i64, ptr %diesize.i, align 8
  br label %cond.end70.i

cond.end70.i:                                     ; preds = %cond.true67.i, %do.end61.i.cond.end70.i_crit_edge
  %cond71.i = phi i64 [ %346, %cond.true67.i ], [ 0, %do.end61.i.cond.end70.i_crit_edge ]
  %347 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %command.i, align 8
  %call76.i = tail call i32 %348(ptr noundef %mtd, i32 noundef 148, i64 noundef %cond71.i, i32 noundef 0) #13
  %349 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %wait.i, align 4
  %call78.i = tail call i32 %350(ptr noundef %mtd, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end86.i, label %do.end83.i

do.end83.i:                                       ; preds = %cond.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.177, i32 noundef %i.0367) #16
  %write_word107.c2.i = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 24
  %351 = ptrtoint ptr %write_word107.c2.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %write_word107.c2.i, align 4
  %353 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %278, align 8
  %add.ptr109.c3.i = getelementptr i8, ptr %354, i32 123968
  tail call void %352(i16 noundef zeroext 240, ptr noundef %add.ptr109.c3.i) #13
  %355 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %wait.i, align 4
  %call111.c4.i = tail call i32 %356(ptr noundef %mtd, i32 noundef 23) #13
  br label %flexonenand_set_boundary.exit

if.end86.i:                                       ; preds = %cond.end70.i
  %and72.i335 = and i32 %274, 1023
  %cond74.i = select i1 %tobool63.not.i334, i32 49152, i32 0
  %or.i = or i32 %cond74.i, %and72.i335
  %write_word.i336 = getelementptr inbounds %struct.onenand_chip, ptr %278, i32 0, i32 24
  %357 = ptrtoint ptr %write_word.i336 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %write_word.i336, align 4
  %conv87.i = trunc i32 %or.i to i16
  %359 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %278, align 8
  %add.ptr89.i = getelementptr i8, ptr %360, i32 1024
  tail call void %358(i16 noundef zeroext %conv87.i, ptr noundef %add.ptr89.i) #13
  %361 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %command.i, align 8
  %call91.i = tail call i32 %362(ptr noundef %mtd, i32 noundef 128, i64 noundef %cond71.i, i32 noundef 0) #13
  %363 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %wait.i, align 4
  %call93.i = tail call i32 %364(ptr noundef %mtd, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %if.end101.i, label %do.end98.i

do.end98.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.177, i32 noundef %i.0367) #16
  %365 = ptrtoint ptr %write_word.i336 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write_word.i336, align 4
  %367 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %278, align 8
  %add.ptr109.c7.i = getelementptr i8, ptr %368, i32 123968
  tail call void %366(i16 noundef zeroext 240, ptr noundef %add.ptr109.c7.i) #13
  %369 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %wait.i, align 4
  %call111.c8.i = tail call i32 %370(ptr noundef %mtd, i32 noundef 23) #13
  br label %flexonenand_set_boundary.exit

if.end101.i:                                      ; preds = %if.end86.i
  %371 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %command.i, align 8
  %call104.i = tail call i32 %372(ptr noundef %mtd, i32 noundef 5, i64 noundef %conv.i331, i32 noundef 0) #13
  %373 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %wait.i, align 4
  %call106.i = tail call i32 %374(ptr noundef %mtd, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %phi.cmp.i = icmp eq i32 %call106.i, 0
  %375 = ptrtoint ptr %write_word.i336 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %write_word.i336, align 4
  %377 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %278, align 8
  %add.ptr109.i = getelementptr i8, ptr %378, i32 123968
  tail call void %376(i16 noundef zeroext 240, ptr noundef %add.ptr109.i) #13
  %379 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %wait.i, align 4
  %call111.i = tail call i32 %380(ptr noundef %mtd, i32 noundef 23) #13
  br i1 %phi.cmp.i, label %if.then113.i, label %if.end101.i.flexonenand_set_boundary.exit_crit_edge

if.end101.i.flexonenand_set_boundary.exit_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_set_boundary.exit

if.then113.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flexonenand_get_size(ptr noundef %mtd) #13
  br label %flexonenand_set_boundary.exit

flexonenand_set_boundary.exit:                    ; preds = %if.then113.i, %if.end101.i.flexonenand_set_boundary.exit_crit_edge, %do.end98.i, %do.end83.i, %do.end55.i, %do.end36.i, %do.end.i, %lor.lhs.false.i.flexonenand_set_boundary.exit_crit_edge, %if.end.i325.flexonenand_set_boundary.exit_crit_edge, %land.lhs.true.i.flexonenand_set_boundary.exit_crit_edge
  %inc = add nuw nsw i32 %i.0367, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %flexonenand_set_boundary.exit.cleanup_crit_edge, label %flexonenand_set_boundary.exit.for.body_crit_edge

flexonenand_set_boundary.exit.for.body_crit_edge: ; preds = %flexonenand_set_boundary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

flexonenand_set_boundary.exit.cleanup_crit_edge:  ; preds = %flexonenand_set_boundary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %flexonenand_set_boundary.exit.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.then74, %if.then71.cleanup_crit_edge, %if.then61, %if.end8.i.i.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i, %if.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then61 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -12, %if.then74 ], [ -12, %if.then71.cleanup_crit_edge ], [ %call129, %if.end127.cleanup_crit_edge ], [ -6, %if.end40.cleanup_crit_edge ], [ -6, %if.end7.i.i.i.cleanup_crit_edge ], [ -6, %kcalloc.exit.thread.i ], [ 0, %flexonenand_set_boundary.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @onenand_readw(ptr noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %addr) #13, !srcloc !412
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !413
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @onenand_writew(i16 noundef zeroext %value, ptr noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !414
  tail call void @arm_heavy_mb() #13
  %0 = tail call i16 @llvm.bswap.i16(i16 %value)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %addr, i16 %0) #13, !srcloc !415
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_command(ptr nocapture noundef readonly %mtd, i32 noundef %cmd, i64 noundef %addr, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %cmd, label %sw.default [
    i32 35, label %entry.if.end89_crit_edge
    i32 42, label %entry.if.end89_crit_edge253
    i32 44, label %entry.if.end89_crit_edge254
    i32 39, label %entry.if.end89_crit_edge255
    i32 102, label %entry.if.end41.sink.split_crit_edge
    i32 148, label %entry.sw.bb3_crit_edge
    i32 149, label %entry.sw.bb3_crit_edge256
    i32 113, label %entry.sw.bb3_crit_edge257
    i32 6520, label %entry.sw.bb3_crit_edge258
    i32 101, label %entry.sw.bb3_crit_edge259
    i32 6533, label %sw.bb4
  ]

entry.sw.bb3_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.if.end41.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.sink.split

entry.if.end89_crit_edge255:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

entry.if.end89_crit_edge254:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

entry.if.end89_crit_edge253:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

entry.if.end89_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge256, %entry.sw.bb3_crit_edge257, %entry.sw.bb3_crit_edge258, %entry.sw.bb3_crit_edge259
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_id.i, align 4
  %and.i = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erase_shift.i, align 4
  %sh_prom.i = zext i32 %6 to i64
  %shr.i = ashr i64 %addr, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb3
  %and.i.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.thread.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end.thread.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %diesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %diesize.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %diesize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %addr)
  %cmp.not.i.i = icmp sgt i64 %8, %addr
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.thread.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.if.end.thread.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %land.lhs.true.i.i.if.end.thread.i.i_crit_edge, %if.end.i.if.end.thread.i.i_crit_edge
  %arrayidx430.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i64 %addr, %8
  %arrayidx4.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 1
  %density_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %density_mask.i.i, align 8
  br label %flexonenand_block.exit.i

flexonenand_block.exit.i:                         ; preds = %cond.true.i.i, %if.end.thread.i.i
  %.in33.i.i = phi ptr [ %arrayidx4.i.i, %cond.true.i.i ], [ %arrayidx430.i.i, %if.end.thread.i.i ]
  %addr.addr.032.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %addr, %if.end.thread.i.i ]
  %cond.i.i = phi i32 [ %10, %cond.true.i.i ], [ 0, %if.end.thread.i.i ]
  %11 = ptrtoint ptr %.in33.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %.in33.i.i, align 4
  %.in.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %.in.i.i, align 4
  %sub5.i.i = add i32 %14, -1
  %sh_prom.i.i = zext i32 %sub5.i.i to i64
  %shr.i.i = ashr i64 %addr.addr.032.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i.i)
  %cmp6.i.i = icmp ult i32 %12, %conv.i.i
  %add.i.i = add i32 %12, 1
  %add9.i.i = add i32 %add.i.i, %conv.i.i
  %shr10.i.i = lshr i32 %add9.i.i, 1
  %blk.0.i.i = select i1 %cmp6.i.i, i32 %shr10.i.i, i32 %conv.i.i
  %add13.i.i = add i32 %blk.0.i.i, %cond.i.i
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.sink.split

sw.default:                                       ; preds = %entry
  %device_id.i160 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %device_id.i160 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_id.i160, align 4
  %and.i161 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i161)
  %tobool.not.i162 = icmp eq i32 %and.i161, 0
  br i1 %tobool.not.i162, label %if.else, label %if.end.i170

if.end.i170:                                      ; preds = %sw.default
  %and.i.i168 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not.i.i169 = icmp eq i32 %and.i.i168, 0
  br i1 %tobool.not.i.i169, label %if.end.i170.if.end.thread.i.i175_crit_edge, label %land.lhs.true.i.i173

if.end.i170.if.end.thread.i.i175_crit_edge:       ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i175

land.lhs.true.i.i173:                             ; preds = %if.end.i170
  %diesize.i.i171 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %diesize.i.i171 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %diesize.i.i171, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %addr)
  %cmp.not.i.i172 = icmp sgt i64 %18, %addr
  br i1 %cmp.not.i.i172, label %land.lhs.true.i.i173.if.end.thread.i.i175_crit_edge, label %cond.true.i.i179

land.lhs.true.i.i173.if.end.thread.i.i175_crit_edge: ; preds = %land.lhs.true.i.i173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i175

if.end.thread.i.i175:                             ; preds = %land.lhs.true.i.i173.if.end.thread.i.i175_crit_edge, %if.end.i170.if.end.thread.i.i175_crit_edge
  %arrayidx430.i.i174 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 0
  br label %if.end.i206

cond.true.i.i179:                                 ; preds = %land.lhs.true.i.i173
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i176 = sub i64 %addr, %18
  %arrayidx4.i.i177 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 1
  %density_mask.i.i178 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %density_mask.i.i178 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %density_mask.i.i178, align 8
  br label %if.end.i206

if.end.i206:                                      ; preds = %cond.true.i.i179, %if.end.thread.i.i175
  %.in33.i.i180 = phi ptr [ %arrayidx4.i.i177, %cond.true.i.i179 ], [ %arrayidx430.i.i174, %if.end.thread.i.i175 ]
  %addr.addr.032.i.i181 = phi i64 [ %sub.i.i176, %cond.true.i.i179 ], [ %addr, %if.end.thread.i.i175 ]
  %cond.i.i182 = phi i32 [ %20, %cond.true.i.i179 ], [ 0, %if.end.thread.i.i175 ]
  %21 = ptrtoint ptr %.in33.i.i180 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %.in33.i.i180, align 4
  %.in.i.i183 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %.in.i.i183 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %.in.i.i183, align 4
  %sub5.i.i184 = add i32 %24, -1
  %sh_prom.i.i185 = zext i32 %sub5.i.i184 to i64
  %shr.i.i186 = ashr i64 %addr.addr.032.i.i181, %sh_prom.i.i185
  %conv.i.i187 = trunc i64 %shr.i.i186 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i.i187)
  %cmp6.i.i188 = icmp ult i32 %22, %conv.i.i187
  %add.i.i189 = add i32 %22, 1
  %add9.i.i190 = add i32 %add.i.i189, %conv.i.i187
  %shr10.i.i191 = lshr i32 %add9.i.i190, 1
  %blk.0.i.i192 = select i1 %cmp6.i.i188, i32 %shr10.i.i191, i32 %conv.i.i187
  %add13.i.i193 = add i32 %blk.0.i.i192, %cond.i.i182
  br i1 %tobool.not.i.i169, label %if.end.i206.if.end.i.i_crit_edge, label %land.lhs.true.i.i209

if.end.i206.if.end.i.i_crit_edge:                 ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i209:                             ; preds = %if.end.i206
  %density_mask.i.i207 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %density_mask.i.i207 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %density_mask.i.i207, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i.i193, i32 %26)
  %cmp.not.i.i208 = icmp ult i32 %add13.i.i193, %26
  br i1 %cmp.not.i.i208, label %land.lhs.true.i.i209.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i209.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i209
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i209
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i210 = sub i32 %add13.i.i193, %26
  %diesize.i.i211 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %diesize.i.i211 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %diesize.i.i211, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i209.if.end.i.i_crit_edge, %if.end.i206.if.end.i.i_crit_edge
  %block.addr.0.i.i = phi i32 [ %sub.i.i210, %if.then.i.i ], [ %add13.i.i193, %land.lhs.true.i.i209.if.end.i.i_crit_edge ], [ %add13.i.i193, %if.end.i206.if.end.i.i_crit_edge ]
  %ofs.0.i.i = phi i64 [ %28, %if.then.i.i ], [ 0, %land.lhs.true.i.i209.if.end.i.i_crit_edge ], [ 0, %if.end.i206.if.end.i.i_crit_edge ]
  %die.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %land.lhs.true.i.i209.if.end.i.i_crit_edge ], [ 0, %if.end.i206.if.end.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 %die.0.i.i
  %29 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3.i.i, align 4
  %conv.i.i212 = sext i32 %block.addr.0.i.i to i64
  %31 = ptrtoint ptr %.in.i.i183 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %.in.i.i183, align 4
  %sub4.i.i = add i32 %32, -1
  %sh_prom.i.i213 = zext i32 %sub4.i.i to i64
  %shl.i.i = shl i64 %conv.i.i212, %sh_prom.i.i213
  %add.i.i214 = add i64 %shl.i.i, %ofs.0.i.i
  %add5.i.i = add i32 %30, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %block.addr.0.i.i, i32 %add5.i.i)
  %cmp6.i.i215 = icmp sgt i32 %block.addr.0.i.i, %add5.i.i
  br i1 %cmp6.i.i215, label %if.then8.i.i, label %if.end.i.i.onenand_addr.exit_crit_edge

if.end.i.i.onenand_addr.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_addr.exit

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = xor i32 %30, -1
  %sub10.i.i = add i32 %block.addr.0.i.i, %33
  %conv11.i.i = sext i32 %sub10.i.i to i64
  %shl15.i.i = shl i64 %conv11.i.i, %sh_prom.i.i213
  %add16.i.i = add i64 %add.i.i214, %shl15.i.i
  br label %onenand_addr.exit

onenand_addr.exit:                                ; preds = %if.then8.i.i, %if.end.i.i.onenand_addr.exit_crit_edge
  %retval.0.i216 = phi i64 [ %add16.i.i, %if.then8.i.i ], [ %add.i.i214, %if.end.i.i.onenand_addr.exit_crit_edge ]
  %sub = sub i64 %addr, %retval.0.i216
  %conv11 = trunc i64 %sub to i32
  %page_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %page_shift, align 8
  %shr = ashr i32 %conv11, %35
  br label %if.end

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i163 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %erase_shift.i163 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erase_shift.i163, align 4
  %sh_prom.i164 = zext i32 %37 to i64
  %shr.i165 = ashr i64 %addr, %sh_prom.i164
  %conv.i166 = trunc i64 %shr.i165 to i32
  %page_shift12 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %page_shift12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_shift12, align 8
  %sh_prom = zext i32 %39 to i64
  %shr13 = ashr i64 %addr, %sh_prom
  %conv14 = trunc i64 %shr13 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %onenand_addr.exit
  %retval.0.i195232 = phi i32 [ %add13.i.i193, %onenand_addr.exit ], [ %conv.i166, %if.else ]
  %page.0 = phi i32 [ %shr, %onenand_addr.exit ], [ %conv14, %if.else ]
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %options, align 4
  %and15 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end25_crit_edge, label %if.then17

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and18 = and i32 %retval.0.i195232, -2
  %writesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %writesize, align 8
  %conv19 = zext i32 %43 to i64
  %and20 = and i64 %conv19, %addr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp ne i64 %and20, 0
  %masksel = zext i1 %tobool21.not to i32
  %spec.select = or i32 %and18, %masksel
  %shr24 = ashr i32 %page.0, 1
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.end.if.end25_crit_edge
  %block.1 = phi i32 [ %spec.select, %if.then17 ], [ %retval.0.i195232, %if.end.if.end25_crit_edge ]
  %page.1 = phi i32 [ %shr24, %if.then17 ], [ %page.0, %if.end.if.end25_crit_edge ]
  %page_mask = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %page_mask, align 4
  %and26 = and i32 %45, %page.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %flexonenand_block.exit.i, %if.then.i
  %block.2 = phi i32 [ %block.1, %if.end25 ], [ %add13.i.i, %flexonenand_block.exit.i ], [ %conv.i, %if.then.i ]
  %page.2 = phi i32 [ %and26, %if.end25 ], [ -1, %flexonenand_block.exit.i ], [ -1, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6520, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 6520
  br i1 %cmp, label %if.then28, label %sw.epilog.if.end41_crit_edge

sw.epilog.if.end41_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then28:                                        ; preds = %sw.epilog
  %density_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %density_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %density_mask.i, align 8
  %and.i217 = and i32 %47, %block.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool.not.i218 = icmp eq i32 %and.i217, 0
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %48 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_word, align 4
  %conv30 = select i1 %tobool.not.i218, i16 0, i16 -32768
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %51, i32 123394
  tail call void %49(i16 noundef zeroext %conv30, ptr noundef %add.ptr) #13
  %options31 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %options31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %options31, align 4
  %54 = and i32 %53, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %55 = icmp eq i32 %54, 0
  %bufferram_index39 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  br i1 %55, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %bufferram_index39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %bufferram_index39, align 4
  br label %cleanup

if.else38:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %bufferram_index39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bufferram_index39, align 4
  %xor = xor i32 %58, 1
  store i32 %xor, ptr %bufferram_index39, align 4
  br label %cleanup

if.end41.sink.split:                              ; preds = %sw.bb4, %entry.if.end41.sink.split_crit_edge
  %page.2240.ph = phi i32 [ 0, %sw.bb4 ], [ -1, %entry.if.end41.sink.split_crit_edge ]
  %cmd.addr.0238.ph = phi i32 [ 0, %sw.bb4 ], [ %cmd, %entry.if.end41.sink.split_crit_edge ]
  %density_mask = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %density_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %density_mask, align 8
  %61 = trunc i64 %addr to i32
  %conv2 = mul i32 %60, %61
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %sw.epilog.if.end41_crit_edge
  %page.2240 = phi i32 [ %page.2, %sw.epilog.if.end41_crit_edge ], [ %page.2240.ph, %if.end41.sink.split ]
  %block.2239 = phi i32 [ %block.2, %sw.epilog.if.end41_crit_edge ], [ %conv2, %if.end41.sink.split ]
  %cmd.addr.0238 = phi i32 [ %cmd, %sw.epilog.if.end41_crit_edge ], [ %cmd.addr.0238.ph, %if.end41.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %block.2239)
  %cmp42.not = icmp eq i32 %block.2239, -1
  br i1 %cmp42.not, label %if.end41.if.end55_crit_edge, label %if.then44

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %density_mask.i219 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %62 = ptrtoint ptr %density_mask.i219 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %density_mask.i219, align 8
  %and.i220 = and i32 %63, %block.2239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool.not.i221 = icmp eq i32 %and.i220, 0
  %xor.i = xor i32 %63, %block.2239
  %or.i = or i32 %xor.i, 32768
  %retval.0.i222 = select i1 %tobool.not.i221, i32 %block.2239, i32 %or.i
  %write_word46 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %64 = ptrtoint ptr %write_word46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_word46, align 4
  %conv47 = trunc i32 %retval.0.i222 to i16
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %add.ptr49 = getelementptr i8, ptr %67, i32 123392
  tail call void %65(i16 noundef zeroext %conv47, ptr noundef %add.ptr49) #13
  %68 = ptrtoint ptr %density_mask.i219 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %density_mask.i219, align 8
  %and.i224 = and i32 %69, %block.2239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool.not.i225 = icmp eq i32 %and.i224, 0
  %70 = ptrtoint ptr %write_word46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_word46, align 4
  %conv52 = select i1 %tobool.not.i225, i16 0, i16 -32768
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %add.ptr54 = getelementptr i8, ptr %73, i32 123394
  tail call void %71(i16 noundef zeroext %conv52, ptr noundef %add.ptr54) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then44, %if.end41.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page.2240)
  %cmp56.not = icmp eq i32 %page.2240, -1
  br i1 %cmp56.not, label %if.end55.if.end89_crit_edge, label %if.then58

if.end55.if.end89_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then58:                                        ; preds = %if.end55
  %74 = zext i32 %cmd.addr.0238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %cmd.addr.0238, label %sw.default69 [
    i32 5, label %if.then58.sw.bb59_crit_edge
    i32 0, label %if.then58.sw.bb59_crit_edge260
    i32 19, label %if.then58.sw.bb59_crit_edge261
  ]

if.then58.sw.bb59_crit_edge261:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

if.then58.sw.bb59_crit_edge260:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

if.then58.sw.bb59_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

sw.bb59:                                          ; preds = %if.then58.sw.bb59_crit_edge, %if.then58.sw.bb59_crit_edge260, %if.then58.sw.bb59_crit_edge261
  %options60 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %75 = ptrtoint ptr %options60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %options60, align 4
  %and61 = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %bufferram_index66 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  br i1 %tobool62.not, label %if.else65, label %if.then63

if.then63:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %bufferram_index66 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %bufferram_index66, align 4
  br label %sw.epilog78

if.else65:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %bufferram_index66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bufferram_index66, align 4
  %xor67 = xor i32 %79, 1
  store i32 %xor67, ptr %bufferram_index66, align 4
  br label %sw.epilog78

sw.default69:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %options70 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %80 = ptrtoint ptr %options70 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %options70, align 4
  %and71 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cmd.addr.0238)
  %cmp73 = icmp eq i32 %cmd.addr.0238, 128
  %spec.store.select = select i1 %cmp73, i32 125, i32 %cmd.addr.0238
  %cmd.addr.1 = select i1 %tobool72.not, i32 %cmd.addr.0238, i32 %spec.store.select
  %bufferram_index77 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %82 = ptrtoint ptr %bufferram_index77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bufferram_index77, align 4
  br label %sw.epilog78

sw.epilog78:                                      ; preds = %sw.default69, %if.else65, %if.then63
  %cmd.addr.2 = phi i32 [ %cmd.addr.1, %sw.default69 ], [ %cmd.addr.0238, %if.then63 ], [ %cmd.addr.0238, %if.else65 ]
  %dataram.0 = phi i32 [ %83, %sw.default69 ], [ 0, %if.then63 ], [ %xor67, %if.else65 ]
  %write_word80 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %84 = ptrtoint ptr %write_word80 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_word80, align 4
  %page.2240.tr = trunc i32 %page.2240 to i16
  %86 = shl i16 %page.2240.tr, 2
  %conv81 = and i16 %86, 508
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %add.ptr83 = getelementptr i8, ptr %88, i32 123406
  tail call void %85(i16 noundef zeroext %conv81, ptr noundef %add.ptr83) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dataram.0)
  %tobool.not.i229 = icmp eq i32 %dataram.0, 0
  %89 = ptrtoint ptr %write_word80 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write_word80, align 4
  %spec.select252 = select i1 %tobool.not.i229, i16 2048, i16 3072
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  %add.ptr88 = getelementptr i8, ptr %92, i32 123904
  tail call void %90(i16 noundef zeroext %spec.select252, ptr noundef %add.ptr88) #13
  br label %if.end89

if.end89:                                         ; preds = %sw.epilog78, %if.end55.if.end89_crit_edge, %entry.if.end89_crit_edge, %entry.if.end89_crit_edge253, %entry.if.end89_crit_edge254, %entry.if.end89_crit_edge255
  %cmd.addr.3 = phi i32 [ %cmd.addr.2, %sw.epilog78 ], [ %cmd.addr.0238, %if.end55.if.end89_crit_edge ], [ %cmd, %entry.if.end89_crit_edge ], [ %cmd, %entry.if.end89_crit_edge253 ], [ %cmd, %entry.if.end89_crit_edge254 ], [ %cmd, %entry.if.end89_crit_edge255 ]
  %write_word90 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %93 = ptrtoint ptr %write_word90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_word90, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 8
  %add.ptr92 = getelementptr i8, ptr %96, i32 124034
  tail call void %94(i16 noundef zeroext 0, ptr noundef %add.ptr92) #13
  %97 = ptrtoint ptr %write_word90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write_word90, align 4
  %conv94 = trunc i32 %cmd.addr.3 to i16
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  %add.ptr96 = getelementptr i8, ptr %100, i32 123968
  tail call void %98(i16 noundef zeroext %conv94, ptr noundef %add.ptr96) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.else38, %if.then37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_bbt_wait(ptr nocapture noundef readonly %mtd, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %add.neg = sub i32 -2, %2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond
  %4 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_word, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 124034
  %call1 = tail call zeroext i16 %5(ptr noundef %add.ptr) #13
  %tobool.not = icmp sgt i16 %call1, -1
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %8 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_word, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr4 = getelementptr i8, ptr %11, i32 124034
  %call5 = tail call zeroext i16 %9(ptr noundef %add.ptr4) #13
  %conv6 = zext i16 %call5 to i32
  %12 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_word, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr9 = getelementptr i8, ptr %15, i32 124032
  %call10 = tail call zeroext i16 %13(ptr noundef %add.ptr9) #13
  %conv11 = zext i16 %call10 to i32
  %16 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_word, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr14 = getelementptr i8, ptr %19, i32 123392
  %call15 = tail call zeroext i16 %17(ptr noundef %add.ptr14) #13
  %conv16 = zext i16 %call15 to i32
  %20 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_word, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %add.ptr19 = getelementptr i8, ptr %23, i32 123406
  %call20 = tail call zeroext i16 %21(ptr noundef %add.ptr19) #13
  %conv21 = zext i16 %call20 to i32
  %and22 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.end33, label %if.then24

if.then24:                                        ; preds = %while.end
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_id.i, align 4
  %and.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then24.if.end.i_crit_edge

if.then24.if.end.i_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then24
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %options.i, align 4
  %and1.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_word, align 8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %31, i32 130560
  %call.i = tail call zeroext i16 %29(ptr noundef %add.ptr.i) #13
  %conv.i = zext i16 %call.i to i32
  br label %onenand_read_ecc.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then24.if.end.i_crit_edge
  %32 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_word, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %add.ptr6.i = getelementptr i8, ptr %35, i32 130560
  %call8.i = tail call zeroext i16 %33(ptr noundef %add.ptr6.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %tobool10.not.i = icmp eq i16 %call8.i, 0
  br i1 %tobool10.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end15.i, !prof !409

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.end.i
  %36 = and i16 %call8.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool17.not.i = icmp eq i16 %36, 0
  br i1 %tobool17.not.i, label %if.end15.i.for.inc.i_crit_edge, label %if.end15.i.do.end_crit_edge

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %result.1.i = phi i32 [ 0, %if.end.i.for.inc.i_crit_edge ], [ 21845, %if.end15.i.for.inc.i_crit_edge ]
  %37 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_word, align 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %add.ptr7.1.i = getelementptr i8, ptr %40, i32 130562
  %call8.1.i = tail call zeroext i16 %38(ptr noundef %add.ptr7.1.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.1.i)
  %tobool10.not.1.i = icmp eq i16 %call8.1.i, 0
  br i1 %tobool10.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end15.1.i, !prof !409

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end15.1.i:                                     ; preds = %for.inc.i
  %41 = and i16 %call8.1.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool17.not.1.i = icmp eq i16 %41, 0
  br i1 %tobool17.not.1.i, label %if.end15.1.i.for.inc.1.i_crit_edge, label %if.end15.1.i.do.end_crit_edge

if.end15.1.i.do.end_crit_edge:                    ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end15.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %result.1.1.i = phi i32 [ %result.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ 21845, %if.end15.1.i.for.inc.1.i_crit_edge ]
  %42 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_word, align 8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %add.ptr7.2.i = getelementptr i8, ptr %45, i32 130564
  %call8.2.i = tail call zeroext i16 %43(ptr noundef %add.ptr7.2.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.2.i)
  %tobool10.not.2.i = icmp eq i16 %call8.2.i, 0
  br i1 %tobool10.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end15.2.i, !prof !409

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end15.2.i:                                     ; preds = %for.inc.1.i
  %46 = and i16 %call8.2.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool17.not.2.i = icmp eq i16 %46, 0
  br i1 %tobool17.not.2.i, label %if.end15.2.i.for.inc.2.i_crit_edge, label %if.end15.2.i.do.end_crit_edge

if.end15.2.i.do.end_crit_edge:                    ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end15.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %result.1.2.i = phi i32 [ %result.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 21845, %if.end15.2.i.for.inc.2.i_crit_edge ]
  %47 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_word, align 8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %add.ptr7.3.i = getelementptr i8, ptr %50, i32 130566
  %call8.3.i = tail call zeroext i16 %48(ptr noundef %add.ptr7.3.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.3.i)
  %tobool10.not.3.i = icmp eq i16 %call8.3.i, 0
  br i1 %tobool10.not.3.i, label %for.inc.2.i.onenand_read_ecc.exit_crit_edge, label %if.end15.3.i, !prof !409

for.inc.2.i.onenand_read_ecc.exit_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_read_ecc.exit

if.end15.3.i:                                     ; preds = %for.inc.2.i
  %51 = and i16 %call8.3.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool17.not.3.i = icmp eq i16 %51, 0
  br i1 %tobool17.not.3.i, label %if.end15.3.i.if.end36_crit_edge, label %if.end15.3.i.do.end_crit_edge

if.end15.3.i.do.end_crit_edge:                    ; preds = %if.end15.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.3.i.if.end36_crit_edge:                  ; preds = %if.end15.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

onenand_read_ecc.exit:                            ; preds = %for.inc.2.i.onenand_read_ecc.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %result.1.2.i, %for.inc.2.i.onenand_read_ecc.exit_crit_edge ]
  %and26 = and i32 %retval.0.i, 43690
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %onenand_read_ecc.exit.if.end36_crit_edge, label %onenand_read_ecc.exit.do.end_crit_edge

onenand_read_ecc.exit.do.end_crit_edge:           ; preds = %onenand_read_ecc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

onenand_read_ecc.exit.if.end36_crit_edge:         ; preds = %onenand_read_ecc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end:                                           ; preds = %onenand_read_ecc.exit.do.end_crit_edge, %if.end15.3.i.do.end_crit_edge, %if.end15.2.i.do.end_crit_edge, %if.end15.1.i.do.end_crit_edge, %if.end15.i.do.end_crit_edge
  %retval.0.i77 = phi i32 [ %retval.0.i, %onenand_read_ecc.exit.do.end_crit_edge ], [ 43690, %if.end15.i.do.end_crit_edge ], [ 43690, %if.end15.1.i.do.end_crit_edge ], [ 43690, %if.end15.2.i.do.end_crit_edge ], [ 43690, %if.end15.3.i.do.end_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i77, i32 noundef %conv11, i32 noundef %conv6, i32 noundef %conv16, i32 noundef %conv21) #16
  br label %cleanup

do.end33:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %conv11, i32 noundef %conv6, i32 noundef %conv16, i32 noundef %conv21) #16
  br label %cleanup

if.end36:                                         ; preds = %onenand_read_ecc.exit.if.end36_crit_edge, %if.end15.3.i.if.end36_crit_edge
  %and37 = and i32 %conv11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %do.end42

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef %conv11, i32 noundef %conv6, i32 noundef %conv16, i32 noundef %conv21) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end36.cleanup_crit_edge, %do.end33, %do.end
  %retval.0 = phi i32 [ 2, %do.end ], [ 1, %do.end42 ], [ 4, %do.end33 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @onenand_unlock_all(ptr noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %extract.t49 = trunc i64 %3 to i32
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then:                                          ; preds = %entry
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_word, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 124056
  tail call void %7(i16 noundef zeroext 0, ptr noundef %add.ptr) #13
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command, align 8
  %call = tail call i32 %11(ptr noundef %mtd, i32 noundef 39, i64 noundef 0, i32 noundef 0) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait, align 4
  %call1 = tail call i32 %13(ptr noundef %mtd, i32 noundef 15) #13
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %14 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_word, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr3 = getelementptr i8, ptr %17, i32 124032
  %call4 = tail call zeroext i16 %15(ptr noundef %add.ptr3) #13
  %tobool6.not = icmp sgt i16 %call4, -1
  br i1 %tobool6.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options, align 4
  %and8 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %while.end
  %chipsize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %chipsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chipsize.i, align 8
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %erase_shift.i, align 4
  %shr.i = lshr i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp40.not.i = icmp eq i32 %shr.i, 0
  br i1 %cmp40.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %density_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %block.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %density_mask.i.i, align 8
  %and.i.i = and i32 %25, %block.041.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %xor.i.i = xor i32 %25, %block.041.i
  %or.i.i = or i32 %xor.i.i, 32768
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %block.041.i, i32 %or.i.i
  %26 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_word, align 4
  %conv.i = trunc i32 %retval.0.i.i to i16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %29, i32 123392
  tail call void %27(i16 noundef zeroext %conv.i, ptr noundef %add.ptr.i) #13
  %30 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %density_mask.i.i, align 8
  %and.i37.i = and i32 %31, %block.041.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool.not.i38.i = icmp eq i32 %and.i37.i, 0
  %32 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_word, align 4
  %conv3.i = select i1 %tobool.not.i38.i, i16 0, i16 -32768
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %add.ptr5.i = getelementptr i8, ptr %35, i32 123394
  tail call void %33(i16 noundef zeroext %conv3.i, ptr noundef %add.ptr5.i) #13
  %36 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_word, align 4
  %conv7.i = trunc i32 %block.041.i to i16
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr9.i = getelementptr i8, ptr %39, i32 124056
  tail call void %37(i16 noundef zeroext %conv7.i, ptr noundef %add.ptr9.i) #13
  %40 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_word, align 8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr11.i = getelementptr i8, ptr %43, i32 124060
  %call12.i = tail call zeroext i16 %41(ptr noundef %add.ptr11.i) #13
  %conv13.i = zext i16 %call12.i to i32
  %and.i = and i32 %conv13.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end14, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %block.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %for.body.i
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %block.041.i, i32 noundef %conv13.i) #16
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %device_id, align 4
  %46 = and i32 %45, 520
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %if.then20, label %if.end14.if.end26_crit_edge

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %chipsize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chipsize.i, align 8
  %shr = lshr i32 %49, 1
  %conv21 = zext i32 %shr to i64
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end14.if.end26_crit_edge, %entry.if.end26_crit_edge
  %ofs.0 = phi i64 [ %conv21, %if.then20 ], [ 0, %if.end14.if.end26_crit_edge ], [ 0, %entry.if.end26_crit_edge ]
  %len.0.off0 = phi i32 [ %shr, %if.then20 ], [ %extract.t49, %if.end14.if.end26_crit_edge ], [ %extract.t49, %entry.if.end26_crit_edge ]
  tail call fastcc void @onenand_do_lock_cmd(ptr noundef %mtd, i64 noundef %ofs.0, i32 noundef %len.0.off0, i32 noundef 35)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_chip_probe(ptr noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_word, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 123970
  %call = tail call zeroext i16 %3(ptr noundef %add.ptr) #13
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_word, align 4
  %8 = and i16 %call, 32765
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr4 = getelementptr i8, ptr %10, i32 123970
  tail call void %7(i16 noundef zeroext %8, ptr noundef %add.ptr4) #13
  %11 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_word, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  tail call void %12(i16 noundef zeroext 144, ptr noundef %14) #13
  %15 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_word, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call12 = tail call zeroext i16 %16(ptr noundef %18) #13
  %conv13 = zext i16 %call12 to i32
  %19 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_word, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %add.ptr17 = getelementptr i8, ptr %22, i32 2
  %call18 = tail call zeroext i16 %20(ptr noundef %add.ptr17) #13
  %23 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_word, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  tail call void %24(i16 noundef zeroext 240, ptr noundef %26) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wait, align 4
  %call23 = tail call i32 %28(ptr noundef %mtd, i32 noundef 23) #13
  %29 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_word, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %add.ptr27 = getelementptr i8, ptr %32, i32 123970
  tail call void %30(i16 noundef zeroext %call, ptr noundef %add.ptr27) #13
  %33 = zext i16 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.202)
  switch i16 %call12, label %onenand_check_maf.exit.thread [
    i16 236, label %entry.if.end_crit_edge
    i16 32, label %if.then3.critedge.fold.split.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

onenand_check_maf.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %conv13) #16
  br label %cleanup

if.then3.critedge.fold.split.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %if.then3.critedge.fold.split.i, %entry.if.end_crit_edge
  %i.018.lcssa.i = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then3.critedge.fold.split.i ]
  %name5.i = getelementptr [2 x %struct.onenand_manufacturers], ptr @onenand_manuf_ids, i32 0, i32 %i.018.lcssa.i, i32 1
  %34 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name5.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %35, i32 noundef %conv13) #16
  %36 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_word, align 8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr31 = getelementptr i8, ptr %39, i32 122880
  %call32 = tail call zeroext i16 %37(ptr noundef %add.ptr31) #13
  %40 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_word, align 8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr36 = getelementptr i8, ptr %43, i32 122882
  %call37 = tail call zeroext i16 %41(ptr noundef %add.ptr36) #13
  call void @__sanitizer_cov_trace_cmp2(i16 %call32, i16 %call12)
  %cmp.not = icmp eq i16 %call32, %call12
  call void @__sanitizer_cov_trace_cmp2(i16 %call37, i16 %call18)
  %cmp40.not = icmp eq i16 %call37, %call18
  %or.cond = select i1 %cmp.not, i1 %cmp40.not, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 -6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %onenand_check_maf.exit.thread
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -6, %onenand_check_maf.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_read_bufferram(ptr nocapture noundef readonly %mtd, i32 noundef %area, ptr nocapture noundef writeonly %buffer, i32 noundef %offset, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %area
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufferram_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.onenand_bufferram_offset.exit_crit_edge, label %if.then.i

entry.onenand_bufferram_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_bufferram_offset.exit

if.then.i:                                        ; preds = %entry
  %6 = zext i32 %area to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %area, label %if.then.i.onenand_bufferram_offset.exit_crit_edge [
    i32 1024, label %if.then1.i
    i32 65568, label %if.then3.i
  ]

if.then.i.onenand_bufferram_offset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_bufferram_offset.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize.i, align 8
  br label %onenand_bufferram_offset.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %9 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize.i, align 4
  br label %onenand_bufferram_offset.exit

onenand_bufferram_offset.exit:                    ; preds = %if.then3.i, %if.then1.i, %if.then.i.onenand_bufferram_offset.exit_crit_edge, %entry.onenand_bufferram_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then1.i ], [ %10, %if.then3.i ], [ 0, %if.then.i.onenand_bufferram_offset.exit_crit_edge ], [ 0, %entry.onenand_bufferram_offset.exit_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %onenand_bufferram_offset.exit.if.end_crit_edge, label %if.then

onenand_bufferram_offset.exit.if.end_crit_edge:   ; preds = %onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %count, -1
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_word, align 8
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %offset
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %dec
  %call4 = tail call zeroext i16 %12(ptr noundef %add.ptr3) #13
  %conv6 = trunc i16 %call4 to i8
  %arrayidx = getelementptr i8, ptr %buffer, i32 %dec
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %onenand_bufferram_offset.exit.if.end_crit_edge
  %count.addr.0 = phi i32 [ %dec, %if.then ], [ %count, %onenand_bufferram_offset.exit.if.end_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %add.ptr1, i32 %offset
  %14 = call ptr @memcpy(ptr %buffer, ptr %add.ptr7, i32 %count.addr.0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_write_bufferram(ptr nocapture noundef readonly %mtd, i32 noundef %area, ptr nocapture noundef readonly %buffer, i32 noundef %offset, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %area
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufferram_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.onenand_bufferram_offset.exit_crit_edge, label %if.then.i

entry.onenand_bufferram_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_bufferram_offset.exit

if.then.i:                                        ; preds = %entry
  %6 = zext i32 %area to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %area, label %if.then.i.onenand_bufferram_offset.exit_crit_edge [
    i32 1024, label %if.then1.i
    i32 65568, label %if.then3.i
  ]

if.then.i.onenand_bufferram_offset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_bufferram_offset.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize.i, align 8
  br label %onenand_bufferram_offset.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %9 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize.i, align 4
  br label %onenand_bufferram_offset.exit

onenand_bufferram_offset.exit:                    ; preds = %if.then3.i, %if.then1.i, %if.then.i.onenand_bufferram_offset.exit_crit_edge, %entry.onenand_bufferram_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then1.i ], [ %10, %if.then3.i ], [ 0, %if.then.i.onenand_bufferram_offset.exit_crit_edge ], [ 0, %entry.onenand_bufferram_offset.exit_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %onenand_bufferram_offset.exit.if.end_crit_edge, label %if.then

onenand_bufferram_offset.exit.if.end_crit_edge:   ; preds = %onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %count, -1
  %add = add i32 %dec, %offset
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_word, align 8
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %add
  %call3 = tail call zeroext i16 %12(ptr noundef %add.ptr2) #13
  %13 = and i16 %call3, -256
  %arrayidx = getelementptr i8, ptr %buffer, i32 %dec
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %15 to i16
  %or = or i16 %13, %conv5
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_word, align 4
  tail call void %17(i16 noundef zeroext %or, ptr noundef %add.ptr2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %onenand_bufferram_offset.exit.if.end_crit_edge
  %count.addr.0 = phi i32 [ %dec, %if.then ], [ %count, %onenand_bufferram_offset.exit.if.end_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %add.ptr1, i32 %offset
  %18 = call ptr @memcpy(ptr %add.ptr8, ptr %buffer, i32 %count.addr.0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_default_block_markbad(ptr noundef %mtd, i64 noundef %ofs) #4 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bbm1 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bbm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbm1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #13
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #13
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %9 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %11 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ops, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %7, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %8, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %9, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %10, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %11, align 4
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_id.i, align 4
  %and.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %erase_shift.i, align 4
  %sh_prom.i = zext i32 %23 to i64
  %shr.i = ashr i64 %ofs, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %onenand_block.exit

if.end.i:                                         ; preds = %entry
  %and.i.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.thread.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end.thread.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %diesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %diesize.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %diesize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %ofs)
  %cmp.not.i.i = icmp sgt i64 %25, %ofs
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.thread.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.if.end.thread.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %land.lhs.true.i.i.if.end.thread.i.i_crit_edge, %if.end.i.if.end.thread.i.i_crit_edge
  %arrayidx430.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i64 %ofs, %25
  %arrayidx4.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 1
  %density_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %density_mask.i.i, align 8
  br label %flexonenand_block.exit.i

flexonenand_block.exit.i:                         ; preds = %cond.true.i.i, %if.end.thread.i.i
  %.in33.i.i = phi ptr [ %arrayidx4.i.i, %cond.true.i.i ], [ %arrayidx430.i.i, %if.end.thread.i.i ]
  %addr.addr.032.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %ofs, %if.end.thread.i.i ]
  %cond.i.i = phi i32 [ %27, %cond.true.i.i ], [ 0, %if.end.thread.i.i ]
  %28 = ptrtoint ptr %.in33.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %.in33.i.i, align 4
  %.in.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %.in.i.i, align 4
  %sub5.i.i = add i32 %31, -1
  %sh_prom.i.i = zext i32 %sub5.i.i to i64
  %shr.i.i = ashr i64 %addr.addr.032.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i.i)
  %cmp6.i.i = icmp ult i32 %29, %conv.i.i
  %add.i.i = add i32 %29, 1
  %add9.i.i = add i32 %add.i.i, %conv.i.i
  %shr10.i.i = lshr i32 %add9.i.i, 1
  %blk.0.i.i = select i1 %cmp6.i.i, i32 %shr10.i.i, i32 %conv.i.i
  %add13.i.i = add i32 %blk.0.i.i, %cond.i.i
  br label %onenand_block.exit

onenand_block.exit:                               ; preds = %flexonenand_block.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %add13.i.i, %flexonenand_block.exit.i ], [ %conv.i, %if.then.i ]
  %bbt = getelementptr inbounds %struct.bbm_info, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bbt, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %onenand_block.exit.if.end_crit_edge, label %if.then

onenand_block.exit.if.end_crit_edge:              ; preds = %onenand_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %onenand_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and = shl i32 %retval.0.i, 1
  %shl = and i32 %and, 6
  %shl2 = shl nuw nsw i32 1, %shl
  %shr = ashr i32 %retval.0.i, 2
  %arrayidx = getelementptr i8, ptr %33, i32 %shr
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %36 = trunc i32 %shl2 to i8
  %conv4 = or i8 %35, %36
  store i8 %conv4, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %onenand_block.exit.if.end_crit_edge
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %37 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oobsize, align 4
  %badblockpos = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %badblockpos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %badblockpos, align 8
  %and5 = and i32 %40, -2
  %add = add i32 %and5, %38
  %conv6 = zext i32 %add to i64
  %add7 = add i64 %conv6, %ofs
  %call8 = call fastcc i32 @onenand_write_oob_nolock(ptr noundef %mtd, i64 noundef %add7, ptr noundef nonnull %ops)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #13
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onenand_default_bbt(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_sync_read_bufferram(ptr noundef %mtd, i32 noundef %area, ptr nocapture noundef writeonly %buffer, i32 noundef %offset, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %area
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufferram_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.onenand_bufferram_offset.exit_crit_edge, label %if.then.i

entry.onenand_bufferram_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_bufferram_offset.exit

if.then.i:                                        ; preds = %entry
  %6 = zext i32 %area to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %area, label %if.then.i.onenand_bufferram_offset.exit_crit_edge [
    i32 1024, label %if.then1.i
    i32 65568, label %if.then3.i
  ]

if.then.i.onenand_bufferram_offset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_bufferram_offset.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize.i, align 8
  br label %onenand_bufferram_offset.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %9 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize.i, align 4
  br label %onenand_bufferram_offset.exit

onenand_bufferram_offset.exit:                    ; preds = %if.then3.i, %if.then1.i, %if.then.i.onenand_bufferram_offset.exit_crit_edge, %entry.onenand_bufferram_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then1.i ], [ %10, %if.then3.i ], [ 0, %if.then.i.onenand_bufferram_offset.exit_crit_edge ], [ 0, %entry.onenand_bufferram_offset.exit_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i
  %mmcontrol = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %mmcontrol to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmcontrol, align 8
  tail call void %12(ptr noundef %mtd, i32 noundef 32768) #13
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %onenand_bufferram_offset.exit.if.end_crit_edge, label %if.then

onenand_bufferram_offset.exit.if.end_crit_edge:   ; preds = %onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %count, -1
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_word, align 8
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %offset
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %dec
  %call4 = tail call zeroext i16 %14(ptr noundef %add.ptr3) #13
  %conv6 = trunc i16 %call4 to i8
  %arrayidx = getelementptr i8, ptr %buffer, i32 %dec
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %onenand_bufferram_offset.exit.if.end_crit_edge
  %count.addr.0 = phi i32 [ %dec, %if.then ], [ %count, %onenand_bufferram_offset.exit.if.end_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %add.ptr1, i32 %offset
  %16 = call ptr @memcpy(ptr %buffer, ptr %add.ptr7, i32 %count.addr.0)
  %17 = ptrtoint ptr %mmcontrol to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmcontrol, align 8
  tail call void %18(ptr noundef %mtd, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_count_freebytes(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_erase(ptr noundef %mtd, ptr nocapture noundef %instr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %instr, align 8
  %len2 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_erase.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_erase, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %instr, align 8
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len2, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_erase.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, i64 noundef %7, i64 noundef %9) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_id, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %12 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numeraseregions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.i = icmp sgt i32 %13, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %if.then8.flexonenand_region.exit_crit_edge

if.then8.flexonenand_region.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_region.exit

for.body.lr.ph.i:                                 ; preds = %if.then8
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %14 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eraseregions.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtd_erase_region_info, ptr %15, i32 %i.07.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %3)
  %cmp1.i = icmp ugt i64 %17, %3
  br i1 %cmp1.i, label %for.body.i.flexonenand_region.exit_crit_edge, label %for.inc.i

for.body.i.flexonenand_region.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_region.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.flexonenand_region.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.flexonenand_region.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_region.exit

flexonenand_region.exit:                          ; preds = %for.inc.i.flexonenand_region.exit_crit_edge, %for.body.i.flexonenand_region.exit_crit_edge, %if.then8.flexonenand_region.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then8.flexonenand_region.exit_crit_edge ], [ %13, %for.inc.i.flexonenand_region.exit_crit_edge ], [ %i.07.i, %for.body.i.flexonenand_region.exit_crit_edge ]
  %sub.i = add nsw i32 %i.0.lcssa.i, -1
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %18 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eraseregions, align 4
  %arrayidx = getelementptr %struct.mtd_erase_region_info, ptr %19, i32 %sub.i
  %erasesize = getelementptr %struct.mtd_erase_region_info, ptr %19, i32 %sub.i, i32 1
  %20 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %erasesize, align 8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx, align 8
  br label %if.end10

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erase_shift, align 4
  %shl = shl nuw i32 1, %25
  br label %if.end10

if.end10:                                         ; preds = %if.else, %flexonenand_region.exit
  %region.0 = phi ptr [ %arrayidx, %flexonenand_region.exit ], [ null, %if.else ]
  %region_offset.0 = phi i64 [ %23, %flexonenand_region.exit ], [ 0, %if.else ]
  %block_size.0 = phi i32 [ %21, %flexonenand_region.exit ], [ %shl, %if.else ]
  %sub = sub i64 %3, %region_offset.0
  %sub11 = add i32 %block_size.0, -1
  %conv = zext i32 %sub11 to i64
  %and12 = and i64 %sub, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end26, label %do.end23, !prof !409

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103) #16
  br label %cleanup

if.end26:                                         ; preds = %if.end10
  %and29 = and i64 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29)
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.end43, label %do.end40, !prof !409

do.end40:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.103) #16
  br label %cleanup

if.end43:                                         ; preds = %if.end26
  %call44 = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 4)
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %options, align 4
  %and45 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %tobool47.not = icmp eq ptr %region.0, null
  %or.cond = and i1 %tobool47.not, %tobool46.not
  br i1 %or.cond, label %lor.lhs.false48, label %if.end43.if.then52_crit_edge

if.end43.if.then52_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

lor.lhs.false48:                                  ; preds = %if.end43
  %28 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %len2, align 8
  %mul = shl i32 %block_size.0, 1
  %conv50 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv50)
  %cmp = icmp ult i64 %29, %conv50
  br i1 %cmp, label %lor.lhs.false48.if.then52_crit_edge, label %if.else54

lor.lhs.false48.if.then52_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false48.if.then52_crit_edge, %if.end43.if.then52_crit_edge
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %32 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %instr, align 8
  %34 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %len2, align 8
  %conv.i = trunc i64 %35 to i32
  br i1 %tobool47.not, label %if.then52.if.end.i_crit_edge, label %if.then.i

if.then52.if.end.i_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %region.0 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %region.0, align 8
  %erasesize.i = getelementptr inbounds %struct.mtd_erase_region_info, ptr %region.0, i32 0, i32 1
  %38 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %erasesize.i, align 8
  %numblocks.i = getelementptr inbounds %struct.mtd_erase_region_info, ptr %region.0, i32 0, i32 2
  %40 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %numblocks.i, align 4
  %mul.i = mul i32 %41, %39
  %conv3.i = zext i32 %mul.i to i64
  %add.i = add i64 %37, %conv3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then52.if.end.i_crit_edge
  %region_end.0.i = phi i64 [ %add.i, %if.then.i ], [ 0, %if.then52.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not92.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not92.i, label %if.end.i.if.end56_crit_edge, label %while.body.lr.ph.i

if.end.i.if.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

while.body.lr.ph.i:                               ; preds = %if.end.i
  %command.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 17
  %wait.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 18
  br label %while.body.i

while.body.i:                                     ; preds = %if.end46.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %region.addr.097.i = phi ptr [ %region.0, %while.body.lr.ph.i ], [ %region.addr.1.i, %if.end46.i.while.body.i_crit_edge ]
  %block_size.addr.096.i = phi i32 [ %block_size.0, %while.body.lr.ph.i ], [ %block_size.addr.1.i, %if.end46.i.while.body.i_crit_edge ]
  %region_end.195.i = phi i64 [ %region_end.0.i, %while.body.lr.ph.i ], [ %region_end.2.i, %if.end46.i.while.body.i_crit_edge ]
  %len.094.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %sub.i85, %if.end46.i.while.body.i_crit_edge ]
  %addr.093.i = phi i64 [ %33, %while.body.lr.ph.i ], [ %add.i.i, %if.end46.i.while.body.i_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2279, i32 noundef 0) #13
  %call.i.i = tail call i32 @__cond_resched() #13
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %bbm1.i.i = getelementptr inbounds %struct.onenand_chip, ptr %43, i32 0, i32 40
  %44 = ptrtoint ptr %bbm1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bbm1.i.i, align 8
  %isbad_bbt.i.i = getelementptr inbounds %struct.bbm_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %isbad_bbt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %isbad_bbt.i.i, align 4
  %call.i82.i = tail call i32 %47(ptr noundef %mtd, i64 noundef %addr.093.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool6.not.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool6.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i64 noundef %addr.093.i) #16
  br label %if.end56

if.end10.i:                                       ; preds = %while.body.i
  %48 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %command.i, align 8
  %call11.i = tail call i32 %49(ptr noundef %mtd, i32 noundef 148, i64 noundef %addr.093.i, i32 noundef %block_size.addr.096.i) #13
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %conv.i.i = zext i32 %block_size.addr.096.i to i64
  %add.i.i = add i64 %addr.093.i, %conv.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %51, i32 0, i32 12
  %arrayidx.i.i = getelementptr %struct.onenand_chip, ptr %51, i32 0, i32 16, i32 0
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  %54 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_shift.i.i, align 8
  %shl.i.i = shl i32 %53, %55
  %conv2.i.i = sext i32 %shl.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.093.i, i64 %conv2.i.i)
  %cmp3.not.i.i = icmp sle i64 %addr.093.i, %conv2.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %conv2.i.i)
  %cmp5.i.i = icmp sgt i64 %add.i.i, %conv2.i.i
  %or.cond.i.i = and i1 %cmp3.not.i.i, %cmp5.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end10.i.if.end.i.i_crit_edge

if.end10.i.if.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %arrayidx.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end10.i.if.end.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.onenand_chip, ptr %51, i32 0, i32 16, i32 1
  %57 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.1.i.i, align 4
  %59 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page_shift.i.i, align 8
  %shl.1.i.i = shl i32 %58, %60
  %conv2.1.i.i = sext i32 %shl.1.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.093.i, i64 %conv2.1.i.i)
  %cmp3.not.1.i.i = icmp sle i64 %addr.093.i, %conv2.1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %conv2.1.i.i)
  %cmp5.1.i.i = icmp sgt i64 %add.i.i, %conv2.1.i.i
  %or.cond.1.i.i = and i1 %cmp3.not.1.i.i, %cmp5.1.i.i
  br i1 %or.cond.1.i.i, label %if.then.1.i.i, label %if.end.i.i.onenand_invalidate_bufferram.exit.i_crit_edge

if.end.i.i.onenand_invalidate_bufferram.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_invalidate_bufferram.exit.i

if.then.1.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %arrayidx.1.i.i, align 4
  br label %onenand_invalidate_bufferram.exit.i

onenand_invalidate_bufferram.exit.i:              ; preds = %if.then.1.i.i, %if.end.i.i.onenand_invalidate_bufferram.exit.i_crit_edge
  %62 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wait.i, align 4
  %call12.i = tail call i32 %63(ptr noundef %mtd, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end21.i, label %do.end17.i

do.end17.i:                                       ; preds = %onenand_invalidate_bufferram.exit.i
  %device_id.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 5
  %64 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %device_id.i.i, align 4
  %and.i.i = and i32 %65, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i85.i, label %if.end.i86.i

if.then.i85.i:                                    ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 11
  %66 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %67 to i64
  %shr.i.i = ashr i64 %addr.093.i, %sh_prom.i.i
  %conv.i84.i = trunc i64 %shr.i.i to i32
  br label %onenand_block.exit.i

if.end.i86.i:                                     ; preds = %do.end17.i
  %and.i.i.i = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i86.i.if.end.thread.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i86.i.if.end.thread.i.i.i_crit_edge:       ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i86.i
  %diesize.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 3
  %68 = ptrtoint ptr %diesize.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %diesize.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.093.i, i64 %69)
  %cmp.not.i.i.i = icmp slt i64 %addr.093.i, %69
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.if.end.thread.i.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true.i.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %land.lhs.true.i.i.i.if.end.thread.i.i.i_crit_edge, %if.end.i86.i.if.end.thread.i.i.i_crit_edge
  %arrayidx430.i.i.i = getelementptr %struct.onenand_chip, ptr %31, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i64 %addr.093.i, %69
  %arrayidx4.i.i.i = getelementptr %struct.onenand_chip, ptr %31, i32 0, i32 2, i32 1
  %density_mask.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 8
  %70 = ptrtoint ptr %density_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %density_mask.i.i.i, align 8
  br label %flexonenand_block.exit.i.i

flexonenand_block.exit.i.i:                       ; preds = %cond.true.i.i.i, %if.end.thread.i.i.i
  %.in33.i.i.i = phi ptr [ %arrayidx4.i.i.i, %cond.true.i.i.i ], [ %arrayidx430.i.i.i, %if.end.thread.i.i.i ]
  %addr.addr.032.i.i.i = phi i64 [ %sub.i.i.i, %cond.true.i.i.i ], [ %addr.093.i, %if.end.thread.i.i.i ]
  %cond.i.i.i = phi i32 [ %71, %cond.true.i.i.i ], [ 0, %if.end.thread.i.i.i ]
  %72 = ptrtoint ptr %.in33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %.in33.i.i.i, align 4
  %.in.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 11
  %74 = ptrtoint ptr %.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %.in.i.i.i, align 4
  %sub5.i.i.i = add i32 %75, -1
  %sh_prom.i.i.i = zext i32 %sub5.i.i.i to i64
  %shr.i.i.i = ashr i64 %addr.addr.032.i.i.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %conv.i.i.i)
  %cmp6.i.i.i = icmp ult i32 %73, %conv.i.i.i
  %add.i.i.i = add i32 %73, 1
  %add9.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %shr10.i.i.i = lshr i32 %add9.i.i.i, 1
  %blk.0.i.i.i = select i1 %cmp6.i.i.i, i32 %shr10.i.i.i, i32 %conv.i.i.i
  %add13.i.i.i = add i32 %blk.0.i.i.i, %cond.i.i.i
  br label %onenand_block.exit.i

onenand_block.exit.i:                             ; preds = %flexonenand_block.exit.i.i, %if.then.i85.i
  %retval.0.i.i = phi i32 [ %add13.i.i.i, %flexonenand_block.exit.i.i ], [ %conv.i84.i, %if.then.i85.i ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110, i32 noundef %retval.0.i.i) #16
  %fail_addr.i = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 2
  %76 = ptrtoint ptr %fail_addr.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %addr.093.i, ptr %fail_addr.i, align 8
  br label %if.end56

if.end21.i:                                       ; preds = %onenand_invalidate_bufferram.exit.i
  %sub.i85 = sub i32 %len.094.i, %block_size.addr.096.i
  %tobool24.not.i = icmp eq ptr %region.addr.097.i, null
  br i1 %tobool24.not.i, label %if.end21.i.if.end46.i_crit_edge, label %land.lhs.true.i

if.end21.i.if.end46.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %region_end.195.i)
  %cmp.i = icmp eq i64 %add.i.i, %region_end.195.i
  br i1 %cmp.i, label %if.then26.i, label %land.lhs.true.i.if.end46.i_crit_edge

land.lhs.true.i.if.end46.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i85)
  %tobool27.not.i = icmp eq i32 %sub.i85, 0
  br i1 %tobool27.not.i, label %if.then26.i.if.end56_crit_edge, label %if.end29.i

if.then26.i.if.end56_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end29.i:                                       ; preds = %if.then26.i
  %incdec.ptr.i = getelementptr %struct.mtd_erase_region_info, ptr %region.addr.097.i, i32 1
  %erasesize30.i = getelementptr %struct.mtd_erase_region_info, ptr %region.addr.097.i, i32 1, i32 1
  %77 = ptrtoint ptr %erasesize30.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %erasesize30.i, align 8
  %79 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %incdec.ptr.i, align 8
  %numblocks33.i = getelementptr %struct.mtd_erase_region_info, ptr %region.addr.097.i, i32 1, i32 2
  %81 = ptrtoint ptr %numblocks33.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %numblocks33.i, align 4
  %mul34.i = mul i32 %82, %78
  %conv35.i = zext i32 %mul34.i to i64
  %add36.i = add i64 %80, %conv35.i
  %sub37.i = add i32 %78, -1
  %and.i = and i32 %sub37.i, %sub.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %if.end29.i.if.end46.i_crit_edge, label %do.end42.i

if.end29.i.if.end46.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

do.end42.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.110) #16
  br label %if.end56

if.end46.i:                                       ; preds = %if.end29.i.if.end46.i_crit_edge, %land.lhs.true.i.if.end46.i_crit_edge, %if.end21.i.if.end46.i_crit_edge
  %region_end.2.i = phi i64 [ %add36.i, %if.end29.i.if.end46.i_crit_edge ], [ %region_end.195.i, %land.lhs.true.i.if.end46.i_crit_edge ], [ %region_end.195.i, %if.end21.i.if.end46.i_crit_edge ]
  %block_size.addr.1.i = phi i32 [ %78, %if.end29.i.if.end46.i_crit_edge ], [ %block_size.addr.096.i, %land.lhs.true.i.if.end46.i_crit_edge ], [ %block_size.addr.096.i, %if.end21.i.if.end46.i_crit_edge ]
  %region.addr.1.i = phi ptr [ %incdec.ptr.i, %if.end29.i.if.end46.i_crit_edge ], [ %region.addr.097.i, %land.lhs.true.i.if.end46.i_crit_edge ], [ null, %if.end21.i.if.end46.i_crit_edge ]
  %tobool4.not.i = icmp eq i32 %sub.i85, 0
  br i1 %tobool4.not.i, label %if.end46.i.if.end56_crit_edge, label %if.end46.i.while.body.i_crit_edge

if.end46.i.while.body.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end46.i.if.end56_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.else54:                                        ; preds = %lor.lhs.false48
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %85 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %instr, align 8
  %conv.i89 = trunc i64 %29 to i32
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 5
  %87 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %device_id.i, align 4
  %and.i90 = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %if.else54.if.end11.i_crit_edge, label %if.then.i94

if.else54.if.end11.i_crit_edge:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then.i94:                                      ; preds = %if.else54
  %chipsize.i = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 4
  %89 = ptrtoint ptr %chipsize.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %chipsize.i, align 8
  %shr.i = lshr i32 %90, 1
  %conv3.i92 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %conv3.i92)
  %cmp.i93 = icmp slt i64 %86, %conv3.i92
  br i1 %cmp.i93, label %land.lhs.true.i97, label %if.then.i94.if.end11.i_crit_edge

if.then.i94.if.end11.i_crit_edge:                 ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

land.lhs.true.i97:                                ; preds = %if.then.i94
  %conv5.i = sext i32 %conv.i89 to i64
  %add.i95 = add i64 %86, %conv5.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i95, i64 %conv3.i92)
  %cmp6.i96 = icmp sgt i64 %add.i95, %conv3.i92
  br i1 %cmp6.i96, label %if.then8.i, label %land.lhs.true.i97.if.end11.i_crit_edge

land.lhs.true.i97.if.end11.i_crit_edge:           ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then8.i:                                       ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 11
  %91 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %erase_shift.i, align 4
  %sh_prom.i = zext i32 %92 to i64
  %shr9.i = lshr i64 %conv3.i92, %sh_prom.i
  %conv10.i = trunc i64 %shr9.i to i32
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true.i97.if.end11.i_crit_edge, %if.then.i94.if.end11.i_crit_edge, %if.else54.if.end11.i_crit_edge
  %bdry_block.1.i = phi i32 [ 0, %if.else54.if.end11.i_crit_edge ], [ %conv10.i, %if.then8.i ], [ 0, %land.lhs.true.i97.if.end11.i_crit_edge ], [ 0, %if.then.i94.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i89)
  %tobool12.not257.i = icmp eq i32 %conv.i89, 0
  br i1 %tobool12.not257.i, label %if.end11.i.while.end.i_crit_edge, label %while.body.lr.ph.i98

if.end11.i.while.end.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i98:                             ; preds = %if.end11.i
  %conv17.i = zext i32 %block_size.0 to i64
  br label %while.body.i103

while.body.i103:                                  ; preds = %if.end16.i.while.body.i103_crit_edge, %while.body.lr.ph.i98
  %addr.0259.i = phi i64 [ %86, %while.body.lr.ph.i98 ], [ %add18.i, %if.end16.i.while.body.i103_crit_edge ]
  %len.0258.i = phi i32 [ %conv.i89, %while.body.lr.ph.i98 ], [ %sub.i105, %if.end16.i.while.body.i103_crit_edge ]
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv, align 8
  %bbm1.i.i99 = getelementptr inbounds %struct.onenand_chip, ptr %94, i32 0, i32 40
  %95 = ptrtoint ptr %bbm1.i.i99 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bbm1.i.i99, align 8
  %isbad_bbt.i.i100 = getelementptr inbounds %struct.bbm_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %isbad_bbt.i.i100 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %isbad_bbt.i.i100, align 4
  %call.i.i101 = tail call i32 %98(ptr noundef %mtd, i64 noundef %addr.0259.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %tobool13.not.i102 = icmp eq i32 %call.i.i101, 0
  br i1 %tobool13.not.i102, label %if.end16.i, label %do.end.i104

do.end.i104:                                      ; preds = %while.body.i103
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.116, i64 noundef %addr.0259.i) #16
  br label %if.end56

if.end16.i:                                       ; preds = %while.body.i103
  %sub.i105 = sub i32 %len.0258.i, %block_size.0
  %add18.i = add i64 %addr.0259.i, %conv17.i
  %tobool12.not.i = icmp eq i32 %sub.i105, 0
  br i1 %tobool12.not.i, label %if.end16.i.while.end.i_crit_edge, label %if.end16.i.while.body.i103_crit_edge

if.end16.i.while.body.i103_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i103

if.end16.i.while.end.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %if.end16.i.while.end.i_crit_edge, %if.end11.i.while.end.i_crit_edge
  %99 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %len2, align 8
  %conv20.i = trunc i64 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20.i)
  %tobool23.not269.i = icmp eq i32 %conv20.i, 0
  br i1 %tobool23.not269.i, label %while.end.i.if.end56_crit_edge, label %while.body24.lr.ph.i

while.end.i.if.end56_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

while.body24.lr.ph.i:                             ; preds = %while.end.i
  %101 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %instr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bdry_block.1.i)
  %tobool27.not.i106 = icmp eq i32 %bdry_block.1.i, 0
  %erase_shift29.i = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 11
  %command.i107 = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 17
  %conv.i.i108 = zext i32 %block_size.0 to i64
  %wait.i109 = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 18
  br label %while.body24.i

while.body24.i:                                   ; preds = %cleanup.i.while.body24.i_crit_edge, %while.body24.lr.ph.i
  %addr.1271.i = phi i64 [ %102, %while.body24.lr.ph.i ], [ %add.i175.i, %cleanup.i.while.body24.i_crit_edge ]
  %len.1270.i = phi i32 [ %conv20.i, %while.body24.lr.ph.i ], [ %sub80.i, %cleanup.i.while.body24.i_crit_edge ]
  br i1 %tobool27.not.i106, label %while.body24.i.if.end41.i_crit_edge, label %if.then28.i

while.body24.i.if.end41.i_crit_edge:              ; preds = %while.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then28.i:                                      ; preds = %while.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %erase_shift29.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %erase_shift29.i, align 4
  %sh_prom30.i = zext i32 %104 to i64
  %shr31.i = ashr i64 %addr.1271.i, %sh_prom30.i
  %conv32.i = trunc i64 %shr31.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bdry_block.1.i, i32 %conv32.i)
  %cmp33.i = icmp sgt i32 %bdry_block.1.i, %conv32.i
  %sub36.i = sub i32 %bdry_block.1.i, %conv32.i
  %105 = tail call i32 @llvm.smin.i32(i32 %sub36.i, i32 64) #13
  %max_eb_count.0.i = select i1 %cmp33.i, i32 %105, i32 64
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then28.i, %while.body24.i.if.end41.i_crit_edge
  %max_eb_count.1.i = phi i32 [ %max_eb_count.0.i, %if.then28.i ], [ 64, %while.body24.i.if.end41.i_crit_edge ]
  %sub45.i = add i32 %max_eb_count.1.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1270.i, i32 %block_size.0)
  %cmp43260.i = icmp ugt i32 %len.1270.i, %block_size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45.i)
  %cmp46261.i = icmp sgt i32 %sub45.i, 0
  %or.cond262.i = select i1 %cmp43260.i, i1 %cmp46261.i, i1 false
  br i1 %or.cond262.i, label %if.end41.i.while.body48.i_crit_edge, label %if.end41.i.while.end63.i_crit_edge

if.end41.i.while.end63.i_crit_edge:               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end63.i

if.end41.i.while.body48.i_crit_edge:              ; preds = %if.end41.i
  br label %while.body48.i

while.body48.i:                                   ; preds = %if.end59.i.while.body48.i_crit_edge, %if.end41.i.while.body48.i_crit_edge
  %addr.2265.i = phi i64 [ %add.i.i110, %if.end59.i.while.body48.i_crit_edge ], [ %addr.1271.i, %if.end41.i.while.body48.i_crit_edge ]
  %len.2264.i = phi i32 [ %sub60.i, %if.end59.i.while.body48.i_crit_edge ], [ %len.1270.i, %if.end41.i.while.body48.i_crit_edge ]
  %eb_count.0263.i = phi i32 [ %inc.i160, %if.end59.i.while.body48.i_crit_edge ], [ 0, %if.end41.i.while.body48.i_crit_edge ]
  %106 = ptrtoint ptr %command.i107 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %command.i107, align 8
  %call49.i = tail call i32 %107(ptr noundef %mtd, i32 noundef 149, i64 noundef %addr.2265.i, i32 noundef %block_size.0) #13
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  %add.i.i110 = add i64 %addr.2265.i, %conv.i.i108
  %page_shift.i.i111 = getelementptr inbounds %struct.onenand_chip, ptr %109, i32 0, i32 12
  %arrayidx.i.i112 = getelementptr %struct.onenand_chip, ptr %109, i32 0, i32 16, i32 0
  %110 = ptrtoint ptr %arrayidx.i.i112 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i.i112, align 4
  %112 = ptrtoint ptr %page_shift.i.i111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %page_shift.i.i111, align 8
  %shl.i.i113 = shl i32 %111, %113
  %conv2.i.i114 = sext i32 %shl.i.i113 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.2265.i, i64 %conv2.i.i114)
  %cmp3.not.i.i115 = icmp sle i64 %addr.2265.i, %conv2.i.i114
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i110, i64 %conv2.i.i114)
  %cmp5.i.i116 = icmp sgt i64 %add.i.i110, %conv2.i.i114
  %or.cond.i.i117 = and i1 %cmp3.not.i.i115, %cmp5.i.i116
  br i1 %or.cond.i.i117, label %if.then.i.i118, label %while.body48.i.if.end.i.i125_crit_edge

while.body48.i.if.end.i.i125_crit_edge:           ; preds = %while.body48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i125

if.then.i.i118:                                   ; preds = %while.body48.i
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %arrayidx.i.i112 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %arrayidx.i.i112, align 4
  br label %if.end.i.i125

if.end.i.i125:                                    ; preds = %if.then.i.i118, %while.body48.i.if.end.i.i125_crit_edge
  %arrayidx.1.i.i119 = getelementptr %struct.onenand_chip, ptr %109, i32 0, i32 16, i32 1
  %115 = ptrtoint ptr %arrayidx.1.i.i119 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.1.i.i119, align 4
  %117 = ptrtoint ptr %page_shift.i.i111 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %page_shift.i.i111, align 8
  %shl.1.i.i120 = shl i32 %116, %118
  %conv2.1.i.i121 = sext i32 %shl.1.i.i120 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.2265.i, i64 %conv2.1.i.i121)
  %cmp3.not.1.i.i122 = icmp sle i64 %addr.2265.i, %conv2.1.i.i121
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i110, i64 %conv2.1.i.i121)
  %cmp5.1.i.i123 = icmp sgt i64 %add.i.i110, %conv2.1.i.i121
  %or.cond.1.i.i124 = and i1 %cmp3.not.1.i.i122, %cmp5.1.i.i123
  br i1 %or.cond.1.i.i124, label %if.then.1.i.i126, label %if.end.i.i125.onenand_invalidate_bufferram.exit.i127_crit_edge

if.end.i.i125.onenand_invalidate_bufferram.exit.i127_crit_edge: ; preds = %if.end.i.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_invalidate_bufferram.exit.i127

if.then.1.i.i126:                                 ; preds = %if.end.i.i125
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %arrayidx.1.i.i119 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %arrayidx.1.i.i119, align 4
  br label %onenand_invalidate_bufferram.exit.i127

onenand_invalidate_bufferram.exit.i127:           ; preds = %if.then.1.i.i126, %if.end.i.i125.onenand_invalidate_bufferram.exit.i127_crit_edge
  %120 = ptrtoint ptr %wait.i109 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wait.i109, align 4
  %call50.i = tail call i32 %121(ptr noundef %mtd, i32 noundef 25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end59.i, label %do.end55.i

do.end55.i:                                       ; preds = %onenand_invalidate_bufferram.exit.i127
  %122 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %device_id.i, align 4
  %and.i.i128 = and i32 %123, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i128)
  %tobool.not.i.i129 = icmp eq i32 %and.i.i128, 0
  br i1 %tobool.not.i.i129, label %if.then.i170.i, label %if.end.i171.i

if.then.i170.i:                                   ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %erase_shift29.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %erase_shift29.i, align 4
  %sh_prom.i.i130 = zext i32 %125 to i64
  %shr.i.i131 = ashr i64 %addr.2265.i, %sh_prom.i.i130
  %conv.i169.i = trunc i64 %shr.i.i131 to i32
  br label %onenand_block.exit.i159

if.end.i171.i:                                    ; preds = %do.end55.i
  %and.i.i.i132 = and i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i132)
  %tobool.not.i.i.i133 = icmp eq i32 %and.i.i.i132, 0
  br i1 %tobool.not.i.i.i133, label %if.end.i171.i.if.end.thread.i.i.i138_crit_edge, label %land.lhs.true.i.i.i136

if.end.i171.i.if.end.thread.i.i.i138_crit_edge:   ; preds = %if.end.i171.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i.i138

land.lhs.true.i.i.i136:                           ; preds = %if.end.i171.i
  %diesize.i.i.i134 = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 3
  %126 = ptrtoint ptr %diesize.i.i.i134 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %diesize.i.i.i134, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.2265.i, i64 %127)
  %cmp.not.i.i.i135 = icmp slt i64 %addr.2265.i, %127
  br i1 %cmp.not.i.i.i135, label %land.lhs.true.i.i.i136.if.end.thread.i.i.i138_crit_edge, label %cond.true.i.i.i142

land.lhs.true.i.i.i136.if.end.thread.i.i.i138_crit_edge: ; preds = %land.lhs.true.i.i.i136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i.i138

if.end.thread.i.i.i138:                           ; preds = %land.lhs.true.i.i.i136.if.end.thread.i.i.i138_crit_edge, %if.end.i171.i.if.end.thread.i.i.i138_crit_edge
  %arrayidx430.i.i.i137 = getelementptr %struct.onenand_chip, ptr %84, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i.i156

cond.true.i.i.i142:                               ; preds = %land.lhs.true.i.i.i136
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i139 = sub i64 %addr.2265.i, %127
  %arrayidx4.i.i.i140 = getelementptr %struct.onenand_chip, ptr %84, i32 0, i32 2, i32 1
  %density_mask.i.i.i141 = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 8
  %128 = ptrtoint ptr %density_mask.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %density_mask.i.i.i141, align 8
  br label %flexonenand_block.exit.i.i156

flexonenand_block.exit.i.i156:                    ; preds = %cond.true.i.i.i142, %if.end.thread.i.i.i138
  %.in33.i.i.i143 = phi ptr [ %arrayidx4.i.i.i140, %cond.true.i.i.i142 ], [ %arrayidx430.i.i.i137, %if.end.thread.i.i.i138 ]
  %addr.addr.032.i.i.i144 = phi i64 [ %sub.i.i.i139, %cond.true.i.i.i142 ], [ %addr.2265.i, %if.end.thread.i.i.i138 ]
  %cond.i.i.i145 = phi i32 [ %129, %cond.true.i.i.i142 ], [ 0, %if.end.thread.i.i.i138 ]
  %130 = ptrtoint ptr %.in33.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %.in33.i.i.i143, align 4
  %132 = ptrtoint ptr %erase_shift29.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %erase_shift29.i, align 4
  %sub5.i.i.i146 = add i32 %133, -1
  %sh_prom.i.i.i147 = zext i32 %sub5.i.i.i146 to i64
  %shr.i.i.i148 = ashr i64 %addr.addr.032.i.i.i144, %sh_prom.i.i.i147
  %conv.i.i.i149 = trunc i64 %shr.i.i.i148 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %conv.i.i.i149)
  %cmp6.i.i.i150 = icmp ult i32 %131, %conv.i.i.i149
  %add.i.i.i151 = add i32 %131, 1
  %add9.i.i.i152 = add i32 %add.i.i.i151, %conv.i.i.i149
  %shr10.i.i.i153 = lshr i32 %add9.i.i.i152, 1
  %blk.0.i.i.i154 = select i1 %cmp6.i.i.i150, i32 %shr10.i.i.i153, i32 %conv.i.i.i149
  %add13.i.i.i155 = add i32 %blk.0.i.i.i154, %cond.i.i.i145
  br label %onenand_block.exit.i159

onenand_block.exit.i159:                          ; preds = %flexonenand_block.exit.i.i156, %if.then.i170.i
  %retval.0.i.i157 = phi i32 [ %add13.i.i.i155, %flexonenand_block.exit.i.i156 ], [ %conv.i169.i, %if.then.i170.i ]
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116, i32 noundef %retval.0.i.i157) #16
  %fail_addr.i158 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 2
  %134 = ptrtoint ptr %fail_addr.i158 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 -1, ptr %fail_addr.i158, align 8
  br label %if.end56

if.end59.i:                                       ; preds = %onenand_invalidate_bufferram.exit.i127
  %sub60.i = sub i32 %len.2264.i, %block_size.0
  %inc.i160 = add nuw nsw i32 %eb_count.0263.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub60.i, i32 %block_size.0)
  %cmp43.i = icmp ugt i32 %sub60.i, %block_size.0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i160, i32 %sub45.i)
  %cmp46.i = icmp slt i32 %inc.i160, %sub45.i
  %or.cond.i = select i1 %cmp43.i, i1 %cmp46.i, i1 false
  br i1 %or.cond.i, label %if.end59.i.while.body48.i_crit_edge, label %if.end59.i.while.end63.i_crit_edge

if.end59.i.while.end63.i_crit_edge:               ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end63.i

if.end59.i.while.body48.i_crit_edge:              ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body48.i

while.end63.i:                                    ; preds = %if.end59.i.while.end63.i_crit_edge, %if.end41.i.while.end63.i_crit_edge
  %eb_count.0.lcssa.i = phi i32 [ 0, %if.end41.i.while.end63.i_crit_edge ], [ %inc.i160, %if.end59.i.while.end63.i_crit_edge ]
  %len.2.lcssa.i = phi i32 [ %len.1270.i, %if.end41.i.while.end63.i_crit_edge ], [ %sub60.i, %if.end59.i.while.end63.i_crit_edge ]
  %addr.2.lcssa.i = phi i64 [ %addr.1271.i, %if.end41.i.while.end63.i_crit_edge ], [ %add.i.i110, %if.end59.i.while.end63.i_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2223, i32 noundef 0) #13
  %call.i172.i = tail call i32 @__cond_resched() #13
  %135 = ptrtoint ptr %command.i107 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %command.i107, align 8
  %call67.i = tail call i32 %136(ptr noundef %mtd, i32 noundef 148, i64 noundef %addr.2.lcssa.i, i32 noundef %block_size.0) #13
  %137 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %priv, align 8
  %add.i175.i = add i64 %addr.2.lcssa.i, %conv.i.i108
  %page_shift.i176.i = getelementptr inbounds %struct.onenand_chip, ptr %138, i32 0, i32 12
  %arrayidx.i177.i = getelementptr %struct.onenand_chip, ptr %138, i32 0, i32 16, i32 0
  %139 = ptrtoint ptr %arrayidx.i177.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i177.i, align 4
  %141 = ptrtoint ptr %page_shift.i176.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %page_shift.i176.i, align 8
  %shl.i178.i = shl i32 %140, %142
  %conv2.i179.i = sext i32 %shl.i178.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.2.lcssa.i, i64 %conv2.i179.i)
  %cmp3.not.i180.i = icmp sle i64 %addr.2.lcssa.i, %conv2.i179.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i175.i, i64 %conv2.i179.i)
  %cmp5.i181.i = icmp sgt i64 %add.i175.i, %conv2.i179.i
  %or.cond.i182.i = and i1 %cmp3.not.i180.i, %cmp5.i181.i
  br i1 %or.cond.i182.i, label %if.then.i183.i, label %while.end63.i.if.end.i190.i_crit_edge

while.end63.i.if.end.i190.i_crit_edge:            ; preds = %while.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i190.i

if.then.i183.i:                                   ; preds = %while.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %arrayidx.i177.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %arrayidx.i177.i, align 4
  br label %if.end.i190.i

if.end.i190.i:                                    ; preds = %if.then.i183.i, %while.end63.i.if.end.i190.i_crit_edge
  %arrayidx.1.i184.i = getelementptr %struct.onenand_chip, ptr %138, i32 0, i32 16, i32 1
  %144 = ptrtoint ptr %arrayidx.1.i184.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.1.i184.i, align 4
  %146 = ptrtoint ptr %page_shift.i176.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %page_shift.i176.i, align 8
  %shl.1.i185.i = shl i32 %145, %147
  %conv2.1.i186.i = sext i32 %shl.1.i185.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.2.lcssa.i, i64 %conv2.1.i186.i)
  %cmp3.not.1.i187.i = icmp sle i64 %addr.2.lcssa.i, %conv2.1.i186.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i175.i, i64 %conv2.1.i186.i)
  %cmp5.1.i188.i = icmp sgt i64 %add.i175.i, %conv2.1.i186.i
  %or.cond.1.i189.i = and i1 %cmp3.not.1.i187.i, %cmp5.1.i188.i
  br i1 %or.cond.1.i189.i, label %if.then.1.i191.i, label %if.end.i190.i.onenand_invalidate_bufferram.exit192.i_crit_edge

if.end.i190.i.onenand_invalidate_bufferram.exit192.i_crit_edge: ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_invalidate_bufferram.exit192.i

if.then.1.i191.i:                                 ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %arrayidx.1.i184.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %arrayidx.1.i184.i, align 4
  br label %onenand_invalidate_bufferram.exit192.i

onenand_invalidate_bufferram.exit192.i:           ; preds = %if.then.1.i191.i, %if.end.i190.i.onenand_invalidate_bufferram.exit192.i_crit_edge
  %149 = ptrtoint ptr %wait.i109 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wait.i109, align 4
  %call69.i = tail call i32 %150(ptr noundef %mtd, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end79.i, label %do.end74.i

do.end74.i:                                       ; preds = %onenand_invalidate_bufferram.exit192.i
  %151 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %device_id.i, align 4
  %and.i194.i = and i32 %152, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194.i)
  %tobool.not.i195.i = icmp eq i32 %and.i194.i, 0
  br i1 %tobool.not.i195.i, label %if.then.i200.i, label %if.end.i203.i

if.then.i200.i:                                   ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  %153 = ptrtoint ptr %erase_shift29.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %erase_shift29.i, align 4
  %sh_prom.i197.i = zext i32 %154 to i64
  %shr.i198.i = ashr i64 %addr.2.lcssa.i, %sh_prom.i197.i
  %conv.i199.i = trunc i64 %shr.i198.i to i32
  br label %onenand_block.exit229.i

if.end.i203.i:                                    ; preds = %do.end74.i
  %and.i.i201.i = and i32 %152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i201.i)
  %tobool.not.i.i202.i = icmp eq i32 %and.i.i201.i, 0
  br i1 %tobool.not.i.i202.i, label %if.end.i203.i.if.end.thread.i.i208.i_crit_edge, label %land.lhs.true.i.i206.i

if.end.i203.i.if.end.thread.i.i208.i_crit_edge:   ; preds = %if.end.i203.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i208.i

land.lhs.true.i.i206.i:                           ; preds = %if.end.i203.i
  %diesize.i.i204.i = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 3
  %155 = ptrtoint ptr %diesize.i.i204.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %diesize.i.i204.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.2.lcssa.i, i64 %156)
  %cmp.not.i.i205.i = icmp slt i64 %addr.2.lcssa.i, %156
  br i1 %cmp.not.i.i205.i, label %land.lhs.true.i.i206.i.if.end.thread.i.i208.i_crit_edge, label %cond.true.i.i212.i

land.lhs.true.i.i206.i.if.end.thread.i.i208.i_crit_edge: ; preds = %land.lhs.true.i.i206.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i208.i

if.end.thread.i.i208.i:                           ; preds = %land.lhs.true.i.i206.i.if.end.thread.i.i208.i_crit_edge, %if.end.i203.i.if.end.thread.i.i208.i_crit_edge
  %arrayidx430.i.i207.i = getelementptr %struct.onenand_chip, ptr %84, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i227.i

cond.true.i.i212.i:                               ; preds = %land.lhs.true.i.i206.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i209.i = sub i64 %addr.2.lcssa.i, %156
  %arrayidx4.i.i210.i = getelementptr %struct.onenand_chip, ptr %84, i32 0, i32 2, i32 1
  %density_mask.i.i211.i = getelementptr inbounds %struct.onenand_chip, ptr %84, i32 0, i32 8
  %157 = ptrtoint ptr %density_mask.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %density_mask.i.i211.i, align 8
  br label %flexonenand_block.exit.i227.i

flexonenand_block.exit.i227.i:                    ; preds = %cond.true.i.i212.i, %if.end.thread.i.i208.i
  %.in33.i.i213.i = phi ptr [ %arrayidx4.i.i210.i, %cond.true.i.i212.i ], [ %arrayidx430.i.i207.i, %if.end.thread.i.i208.i ]
  %addr.addr.032.i.i214.i = phi i64 [ %sub.i.i209.i, %cond.true.i.i212.i ], [ %addr.2.lcssa.i, %if.end.thread.i.i208.i ]
  %cond.i.i215.i = phi i32 [ %158, %cond.true.i.i212.i ], [ 0, %if.end.thread.i.i208.i ]
  %159 = ptrtoint ptr %.in33.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %.in33.i.i213.i, align 4
  %161 = ptrtoint ptr %erase_shift29.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %erase_shift29.i, align 4
  %sub5.i.i217.i = add i32 %162, -1
  %sh_prom.i.i218.i = zext i32 %sub5.i.i217.i to i64
  %shr.i.i219.i = ashr i64 %addr.addr.032.i.i214.i, %sh_prom.i.i218.i
  %conv.i.i220.i = trunc i64 %shr.i.i219.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %conv.i.i220.i)
  %cmp6.i.i221.i = icmp ult i32 %160, %conv.i.i220.i
  %add.i.i222.i = add i32 %160, 1
  %add9.i.i223.i = add i32 %add.i.i222.i, %conv.i.i220.i
  %shr10.i.i224.i = lshr i32 %add9.i.i223.i, 1
  %blk.0.i.i225.i = select i1 %cmp6.i.i221.i, i32 %shr10.i.i224.i, i32 %conv.i.i220.i
  %add13.i.i226.i = add i32 %blk.0.i.i225.i, %cond.i.i215.i
  br label %onenand_block.exit229.i

onenand_block.exit229.i:                          ; preds = %flexonenand_block.exit.i227.i, %if.then.i200.i
  %retval.0.i228.i = phi i32 [ %add13.i.i226.i, %flexonenand_block.exit.i227.i ], [ %conv.i199.i, %if.then.i200.i ]
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.116, i32 noundef %retval.0.i228.i) #16
  %fail_addr78.i = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 2
  %163 = ptrtoint ptr %fail_addr78.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 -1, ptr %fail_addr78.i, align 8
  br label %if.end56

if.end79.i:                                       ; preds = %onenand_invalidate_bufferram.exit192.i
  %sub80.i = sub i32 %len.2.lcssa.i, %block_size.0
  %inc83.i = add nuw i32 %eb_count.0.lcssa.i, 1
  %mul.i161 = mul i32 %inc83.i, %block_size.0
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv, align 8
  %erase_shift.i232.i = getelementptr inbounds %struct.onenand_chip, ptr %165, i32 0, i32 11
  %166 = ptrtoint ptr %erase_shift.i232.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %erase_shift.i232.i, align 4
  %shl.i233.i = shl nuw i32 1, %167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i161)
  %tobool.not28.i.i = icmp eq i32 %mul.i161, 0
  br i1 %tobool.not28.i.i, label %if.end79.i.cleanup.i_crit_edge, label %while.body.lr.ph.i.i

if.end79.i.cleanup.i_crit_edge:                   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

while.body.lr.ph.i.i:                             ; preds = %if.end79.i
  %command.i.i = getelementptr inbounds %struct.onenand_chip, ptr %165, i32 0, i32 17
  %wait.i.i = getelementptr inbounds %struct.onenand_chip, ptr %165, i32 0, i32 18
  %conv7.i.i = zext i32 %shl.i233.i to i64
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i242.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %len.030.i.i = phi i32 [ %mul.i161, %while.body.lr.ph.i.i ], [ %sub.i.i, %if.end.i242.i.while.body.i.i_crit_edge ]
  %addr.029.i.i = phi i64 [ %addr.1271.i, %while.body.lr.ph.i.i ], [ %add.i240.i, %if.end.i242.i.while.body.i.i_crit_edge ]
  %168 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %command.i.i, align 8
  %call.i234.i = tail call i32 %169(ptr noundef %mtd, i32 noundef 113, i64 noundef %addr.029.i.i, i32 noundef %shl.i233.i) #13
  %170 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wait.i.i, align 4
  %call3.i.i = tail call i32 %171(ptr noundef %mtd, i32 noundef 26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i242.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  %erase_shift.i232.i.le = getelementptr inbounds %struct.onenand_chip, ptr %165, i32 0, i32 11
  %device_id.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %165, i32 0, i32 5
  %172 = ptrtoint ptr %device_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %device_id.i.i.i, align 4
  %and.i.i235.i = and i32 %173, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i235.i)
  %tobool.not.i.i236.i = icmp eq i32 %and.i.i235.i, 0
  br i1 %tobool.not.i.i236.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %174 = ptrtoint ptr %erase_shift.i232.i.le to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %erase_shift.i232.i.le, align 4
  %sh_prom.i.i237.i = zext i32 %175 to i64
  %shr.i.i238.i = ashr i64 %addr.029.i.i, %sh_prom.i.i237.i
  %conv.i.i239.i = trunc i64 %shr.i.i238.i to i32
  br label %if.then88.i

if.end.i.i.i:                                     ; preds = %do.end.i.i
  %and.i.i.i.i = and i32 %173, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.if.end.thread.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.if.end.thread.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %diesize.i.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %165, i32 0, i32 3
  %176 = ptrtoint ptr %diesize.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %diesize.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %addr.029.i.i, i64 %177)
  %cmp.not.i.i.i.i = icmp slt i64 %addr.029.i.i, %177
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end.thread.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

land.lhs.true.i.i.i.i.if.end.thread.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i.i.i

if.end.thread.i.i.i.i:                            ; preds = %land.lhs.true.i.i.i.i.if.end.thread.i.i.i.i_crit_edge, %if.end.i.i.i.if.end.thread.i.i.i.i_crit_edge
  %arrayidx430.i.i.i.i = getelementptr %struct.onenand_chip, ptr %165, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i.i.i

cond.true.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i = sub i64 %addr.029.i.i, %177
  %arrayidx4.i.i.i.i = getelementptr %struct.onenand_chip, ptr %165, i32 0, i32 2, i32 1
  %density_mask.i.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %165, i32 0, i32 8
  %178 = ptrtoint ptr %density_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %density_mask.i.i.i.i, align 8
  br label %flexonenand_block.exit.i.i.i

flexonenand_block.exit.i.i.i:                     ; preds = %cond.true.i.i.i.i, %if.end.thread.i.i.i.i
  %.in33.i.i.i.i = phi ptr [ %arrayidx4.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx430.i.i.i.i, %if.end.thread.i.i.i.i ]
  %addr.addr.032.i.i.i.i = phi i64 [ %sub.i.i.i.i, %cond.true.i.i.i.i ], [ %addr.029.i.i, %if.end.thread.i.i.i.i ]
  %cond.i.i.i.i = phi i32 [ %179, %cond.true.i.i.i.i ], [ 0, %if.end.thread.i.i.i.i ]
  %180 = ptrtoint ptr %.in33.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %.in33.i.i.i.i, align 4
  %182 = ptrtoint ptr %erase_shift.i232.i.le to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %erase_shift.i232.i.le, align 4
  %sub5.i.i.i.i = add i32 %183, -1
  %sh_prom.i.i.i.i = zext i32 %sub5.i.i.i.i to i64
  %shr.i.i.i.i = ashr i64 %addr.addr.032.i.i.i.i, %sh_prom.i.i.i.i
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %conv.i.i.i.i)
  %cmp6.i.i.i.i = icmp ult i32 %181, %conv.i.i.i.i
  %add.i.i.i.i = add i32 %181, 1
  %add9.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %shr10.i.i.i.i = lshr i32 %add9.i.i.i.i, 1
  %blk.0.i.i.i.i = select i1 %cmp6.i.i.i.i, i32 %shr10.i.i.i.i, i32 %conv.i.i.i.i
  %add13.i.i.i.i = add i32 %blk.0.i.i.i.i, %cond.i.i.i.i
  br label %if.then88.i

if.end.i242.i:                                    ; preds = %while.body.i.i
  %sub.i.i = sub i32 %len.030.i.i, %shl.i233.i
  %add.i240.i = add i64 %addr.029.i.i, %conv7.i.i
  %tobool.not.i241.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i241.i, label %if.end.i242.i.cleanup.i_crit_edge, label %if.end.i242.i.while.body.i.i_crit_edge

if.end.i242.i.while.body.i.i_crit_edge:           ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end.i242.i.cleanup.i_crit_edge:                ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then88.i:                                      ; preds = %flexonenand_block.exit.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add13.i.i.i.i, %flexonenand_block.exit.i.i.i ], [ %conv.i.i239.i, %if.then.i.i.i ]
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %retval.0.i.i.i) #16
  %fail_addr90.i = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 2
  %184 = ptrtoint ptr %fail_addr90.i to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %addr.029.i.i, ptr %fail_addr90.i, align 8
  br label %if.end56

cleanup.i:                                        ; preds = %if.end.i242.i.cleanup.i_crit_edge, %if.end79.i.cleanup.i_crit_edge
  %tobool23.not.i = icmp eq i32 %sub80.i, 0
  br i1 %tobool23.not.i, label %cleanup.i.if.end56_crit_edge, label %cleanup.i.while.body24.i_crit_edge

cleanup.i.while.body24.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body24.i

cleanup.i.if.end56_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end56:                                         ; preds = %cleanup.i.if.end56_crit_edge, %if.then88.i, %onenand_block.exit229.i, %onenand_block.exit.i159, %while.end.i.if.end56_crit_edge, %do.end.i104, %if.end46.i.if.end56_crit_edge, %do.end42.i, %if.then26.i.if.end56_crit_edge, %onenand_block.exit.i, %do.end.i, %if.end.i.if.end56_crit_edge
  %ret.0 = phi i32 [ -5, %do.end.i ], [ -5, %onenand_block.exit.i ], [ -5, %do.end42.i ], [ 0, %if.end.i.if.end56_crit_edge ], [ -5, %do.end.i104 ], [ -5, %if.then88.i ], [ -5, %onenand_block.exit229.i ], [ -5, %onenand_block.exit.i159 ], [ 0, %while.end.i.if.end56_crit_edge ], [ 0, %if.then26.i.if.end56_crit_edge ], [ 0, %if.end46.i.if.end56_crit_edge ], [ 0, %cleanup.i.if.end56_crit_edge ]
  %185 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %186, i32 0, i32 35
  %187 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %188)
  %cmp.not.i = icmp eq i32 %188, 12
  br i1 %cmp.not.i, label %if.end56.onenand_release_device.exit_crit_edge, label %land.lhs.true.i164

if.end56.onenand_release_device.exit_crit_edge:   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i164:                               ; preds = %if.end56
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %186, i32 0, i32 30
  %189 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %disable.i, align 4
  %tobool.not.i163 = icmp eq ptr %190, null
  br i1 %tobool.not.i163, label %land.lhs.true.i164.onenand_release_device.exit_crit_edge, label %if.then.i165

land.lhs.true.i164.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i165:                                     ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %190(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i165, %land.lhs.true.i164.onenand_release_device.exit_crit_edge, %if.end56.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %186, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %191 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %186, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %onenand_release_device.exit, %do.end40, %do.end23
  %retval.0 = phi i32 [ -22, %do.end23 ], [ -22, %do.end40 ], [ %ret.0, %onenand_release_device.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_read_oob(ptr noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %call = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 21)
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %4 = ptrtoint ptr %datbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %datbuf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %options, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @onenand_mlc_read_ops_nolock(ptr noundef %mtd, i64 noundef %from, ptr noundef %ops)
  br label %if.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call fastcc i32 @onenand_read_ops_nolock(ptr noundef %mtd, i64 noundef %from, ptr noundef %ops)
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call fastcc i32 @onenand_read_oob_nolock(ptr noundef %mtd, i64 noundef %from, ptr noundef %ops)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false, %cond.true
  %ret.0 = phi i32 [ %call5, %if.else ], [ %call3, %cond.true ], [ %call4, %cond.false ]
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 12
  br i1 %cmp.not.i, label %if.end.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

if.end.onenand_release_device.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %if.end
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 30
  %12 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %13(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %if.end.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %onenand_release_device.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %onenand_release_device.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_write_oob(ptr noundef %mtd, i64 noundef %to, ptr nocapture noundef %ops) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %call = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 7)
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %2 = ptrtoint ptr %datbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %datbuf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc i32 @onenand_write_ops_nolock(ptr noundef %mtd, i64 noundef %to, ptr noundef %ops)
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @onenand_write_oob_nolock(ptr noundef %mtd, i64 noundef %to, ptr noundef %ops)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 12
  br i1 %cmp.not.i, label %if.end.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

if.end.onenand_release_device.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %if.end
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %5, i32 0, i32 30
  %8 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %9(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %if.end.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %5, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %5, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %onenand_release_device.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %onenand_release_device.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_panic_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %entry.cleanup76_crit_edge, label %if.end

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup76

if.end:                                           ; preds = %entry
  %read_word.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %i.03.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %read_word.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_word.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 124034
  %call.i = tail call zeroext i16 %5(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i)
  %tobool.not.i = icmp sgt i16 %call.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.onenand_panic_wait.exit_crit_edge

for.body.i.onenand_panic_wait.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_panic_wait.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #13
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2000
  br i1 %exitcond.not.i, label %if.end.i.onenand_panic_wait.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.onenand_panic_wait.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_panic_wait.exit

onenand_panic_wait.exit:                          ; preds = %if.end.i.onenand_panic_wait.exit_crit_edge, %for.body.i.onenand_panic_wait.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_panic_write.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_panic_write, %if.then3)) #13
          to label %do.end [label %if.then3], !srcloc !407

if.then3:                                         ; preds = %onenand_panic_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %to to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_panic_write.__UNIQUE_ID_ddebug214, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.142, i32 noundef %conv, i32 noundef %len) #13
  br label %do.end

do.end:                                           ; preds = %if.then3, %onenand_panic_wait.exit
  %subpagesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 39
  %9 = ptrtoint ptr %subpagesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %subpagesize, align 4
  %sub = add i32 %10, -1
  %conv5 = sext i32 %sub to i64
  %and = and i64 %conv5, %to
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp6.not = icmp ne i64 %and, 0
  %and10 = and i32 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp ne i32 %and10, 0
  %11 = select i1 %cmp6.not, i1 true, i1 %cmp11
  br i1 %11, label %do.end22, label %if.end25, !prof !408

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.142) #16
  br label %cleanup76

if.end25:                                         ; preds = %do.end
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp30193.not = icmp eq i32 %len, 0
  br i1 %cmp30193.not, label %if.end25.while.end_crit_edge, label %while.body.lr.ph

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end25
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize, align 4
  %sub26 = add i32 %13, -1
  %14 = trunc i64 %to to i32
  %conv29 = and i32 %sub26, %14
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %write_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 22
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %bufferram_index = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %writesize61 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %to.addr.0197 = phi i64 [ %to, %while.body.lr.ph ], [ %add73, %cleanup.while.body_crit_edge ]
  %buf.addr.0196 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr74, %cleanup.while.body_crit_edge ]
  %written.0195 = phi i32 [ 0, %while.body.lr.ph ], [ %add67, %cleanup.while.body_crit_edge ]
  %column.0194 = phi i32 [ %conv29, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %15 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize, align 4
  %sub33 = sub i32 %16, %column.0194
  %sub34 = sub i32 %len, %written.0195
  %17 = tail call i32 @llvm.smin.i32(i32 %sub33, i32 %sub34)
  %18 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %command, align 8
  %call38 = tail call i32 %19(ptr noundef %mtd, i32 noundef 6520, i64 noundef %to.addr.0197, i32 noundef %17) #13
  %20 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp40 = icmp ult i32 %17, %21
  br i1 %cmp40, label %if.then43, label %while.body.if.end47_crit_edge

while.body.if.end47_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then43:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page_buf, align 8
  %24 = call ptr @memset(ptr %23, i32 255, i32 %21)
  %25 = load ptr, ptr %page_buf, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 %column.0194
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0196, i32 %17)
  %27 = load ptr, ptr %page_buf, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %while.body.if.end47_crit_edge
  %wbuf.0 = phi ptr [ %27, %if.then43 ], [ %buf.addr.0196, %while.body.if.end47_crit_edge ]
  %28 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_bufferram, align 4
  %30 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %writesize, align 4
  %call49 = tail call i32 %29(ptr noundef %mtd, i32 noundef 1024, ptr noundef %wbuf.0, i32 noundef 0, i32 noundef %31) #13
  %32 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_bufferram, align 4
  %34 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %oobsize, align 4
  %call51 = tail call i32 %33(ptr noundef %mtd, i32 noundef 65568, ptr noundef nonnull @ffchars, i32 noundef 0, i32 noundef %35) #13
  %36 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %command, align 8
  %38 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %writesize, align 4
  %call54 = tail call i32 %37(ptr noundef %mtd, i32 noundef 128, i64 noundef %to.addr.0197, i32 noundef %39) #13
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %read_word.i135 = getelementptr inbounds %struct.onenand_chip, ptr %41, i32 0, i32 23
  br label %for.body.i140

for.body.i140:                                    ; preds = %if.end.i143.for.body.i140_crit_edge, %if.end47
  %i.03.i136 = phi i32 [ 0, %if.end47 ], [ %inc.i141, %if.end.i143.for.body.i140_crit_edge ]
  %42 = ptrtoint ptr %read_word.i135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_word.i135, align 8
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 8
  %add.ptr.i137 = getelementptr i8, ptr %45, i32 124034
  %call.i138 = tail call zeroext i16 %43(ptr noundef %add.ptr.i137) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i138)
  %tobool.not.i139 = icmp sgt i16 %call.i138, -1
  br i1 %tobool.not.i139, label %if.end.i143, label %for.body.i140.onenand_panic_wait.exit144_crit_edge

for.body.i140.onenand_panic_wait.exit144_crit_edge: ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_panic_wait.exit144

if.end.i143:                                      ; preds = %for.body.i140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #13
  %inc.i141 = add nuw nsw i32 %i.03.i136, 1
  %exitcond.not.i142 = icmp eq i32 %inc.i141, 2000
  br i1 %exitcond.not.i142, label %if.end.i143.onenand_panic_wait.exit144_crit_edge, label %if.end.i143.for.body.i140_crit_edge

if.end.i143.for.body.i140_crit_edge:              ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i140

if.end.i143.onenand_panic_wait.exit144_crit_edge: ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_panic_wait.exit144

onenand_panic_wait.exit144:                       ; preds = %if.end.i143.onenand_panic_wait.exit144_crit_edge, %for.body.i140.onenand_panic_wait.exit144_crit_edge
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %options.i, align 4
  %and.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i146 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i146, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %onenand_panic_wait.exit144
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 11
  %51 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %52 to i64
  %shr.i.i = ashr i64 %to.addr.0197, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 14
  %53 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %54 to i64
  %and2.i.i = and i64 %to.addr.0197, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 12
  %55 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %56, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %to.addr.0197, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 13
  %57 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %58, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i147

if.else.i:                                        ; preds = %onenand_panic_wait.exit144
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 12
  %59 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %60 to i64
  %shr.i = ashr i64 %to.addr.0197, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i147

if.end.i147:                                      ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 15
  %61 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %62, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %48, i32 0, i32 16, i32 %xor.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %blockpage.0.i)
  %cmp.i = icmp eq i32 %64, %blockpage.0.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i147.onenand_update_bufferram.exit_crit_edge

if.end.i147.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i147.onenand_update_bufferram.exit_crit_edge
  %66 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bufferram_index.i, align 4
  %spec.select.i = select i1 %cmp40, i32 -1, i32 %blockpage.0.i
  %68 = getelementptr %struct.onenand_chip, ptr %48, i32 0, i32 16, i32 %67
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.select.i, ptr %68, align 4
  %70 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %options, align 4
  %and58 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %onenand_update_bufferram.exit.if.end66_crit_edge, label %if.then60

onenand_update_bufferram.exit.if.end66_crit_edge: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then60:                                        ; preds = %onenand_update_bufferram.exit
  %72 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %bufferram_index, align 4
  %73 = ptrtoint ptr %writesize61 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %writesize61, align 8
  %conv62 = zext i32 %74 to i64
  %add = add i64 %to.addr.0197, %conv62
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 8
  %options.i149 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %options.i149 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %options.i149, align 4
  %and.i150 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %if.else.i177, label %if.then.i172

if.then.i172:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i152 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 11
  %79 = ptrtoint ptr %erase_shift.i.i152 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %erase_shift.i.i152, align 4
  %sh_prom.i.i153 = zext i32 %80 to i64
  %shr.i.i154 = ashr i64 %add, %sh_prom.i.i153
  %conv.i.i155 = trunc i64 %shr.i.i154 to i32
  %and.i.i156 = and i32 %conv.i.i155, 33554430
  %writesize.i.i157 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 14
  %81 = ptrtoint ptr %writesize.i.i157 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %writesize.i.i157, align 8
  %conv1.i.i158 = zext i32 %82 to i64
  %and2.i.i159 = and i64 %add, %conv1.i.i158
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i159)
  %tobool.not.i.i160 = icmp ne i64 %and2.i.i159, 0
  %masksel.i.i161 = zext i1 %tobool.not.i.i160 to i32
  %spec.select.i.i162 = or i32 %and.i.i156, %masksel.i.i161
  %page_shift.i.i163 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 12
  %83 = ptrtoint ptr %page_shift.i.i163 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_shift.i.i163, align 8
  %add.i.i164 = add i32 %84, 1
  %sh_prom3.i.i165 = zext i32 %add.i.i164 to i64
  %shr4.i.i166 = ashr i64 %add, %sh_prom3.i.i165
  %conv5.i.i167 = trunc i64 %shr4.i.i166 to i32
  %page_mask.i.i168 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 13
  %85 = ptrtoint ptr %page_mask.i.i168 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %page_mask.i.i168, align 4
  %and6.i.i169 = and i32 %86, %conv5.i.i167
  %shl.i.i170 = shl nuw i32 %spec.select.i.i162, 7
  %or.i.i171 = or i32 %shl.i.i170, %and6.i.i169
  br label %if.end.i183

if.else.i177:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i173 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 12
  %87 = ptrtoint ptr %page_shift.i173 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %page_shift.i173, align 8
  %sh_prom.i174 = zext i32 %88 to i64
  %shr.i175 = ashr i64 %add, %sh_prom.i174
  %conv.i176 = trunc i64 %shr.i175 to i32
  br label %if.end.i183

if.end.i183:                                      ; preds = %if.else.i177, %if.then.i172
  %blockpage.0.i178 = phi i32 [ %or.i.i171, %if.then.i172 ], [ %conv.i176, %if.else.i177 ]
  %bufferram_index.i179 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 15
  %89 = ptrtoint ptr %bufferram_index.i179 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bufferram_index.i179, align 4
  %xor.i180 = xor i32 %90, 1
  %arrayidx.i181 = getelementptr %struct.onenand_chip, ptr %76, i32 0, i32 16, i32 %xor.i180
  %91 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i181, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %blockpage.0.i178)
  %cmp.i182 = icmp eq i32 %92, %blockpage.0.i178
  br i1 %cmp.i182, label %if.then3.i184, label %if.end.i183.onenand_update_bufferram.exit186_crit_edge

if.end.i183.onenand_update_bufferram.exit186_crit_edge: ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit186

if.then3.i184:                                    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %arrayidx.i181, align 4
  br label %onenand_update_bufferram.exit186

onenand_update_bufferram.exit186:                 ; preds = %if.then3.i184, %if.end.i183.onenand_update_bufferram.exit186_crit_edge
  %94 = ptrtoint ptr %bufferram_index.i179 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bufferram_index.i179, align 4
  %spec.select.i185 = select i1 %cmp40, i32 -1, i32 %blockpage.0.i178
  %96 = getelementptr %struct.onenand_chip, ptr %76, i32 0, i32 16, i32 %95
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %spec.select.i185, ptr %96, align 4
  br label %if.end66

if.end66:                                         ; preds = %onenand_update_bufferram.exit186, %onenand_update_bufferram.exit.if.end66_crit_edge
  %add67 = add i32 %17, %written.0195
  call void @__sanitizer_cov_trace_cmp4(i32 %add67, i32 %len)
  %cmp68 = icmp eq i32 %add67, %len
  br i1 %cmp68, label %if.end66.while.end_crit_edge, label %cleanup

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup:                                          ; preds = %if.end66
  %conv72 = sext i32 %17 to i64
  %add73 = add i64 %to.addr.0197, %conv72
  %add.ptr74 = getelementptr i8, ptr %buf.addr.0196, i32 %17
  %cmp30 = icmp ult i32 %add67, %len
  br i1 %cmp30, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end66.while.end_crit_edge, %if.end25.while.end_crit_edge
  %written.1 = phi i32 [ 0, %if.end25.while.end_crit_edge ], [ %add67, %cleanup.while.end_crit_edge ], [ %len, %if.end66.while.end_crit_edge ]
  %98 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %written.1, ptr %retlen, align 4
  br label %cleanup76

cleanup76:                                        ; preds = %while.end, %do.end22, %entry.cleanup76_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ 0, %while.end ], [ -16, %entry.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_get_fact_prot_info(ptr noundef %mtd, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_otp_walk(ptr noundef %mtd, i64 noundef 0, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef null, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_read_fact_prot_reg(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_otp_read, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_get_user_prot_info(ptr noundef %mtd, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_otp_walk(ptr noundef %mtd, i64 noundef 0, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef null, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_read_user_prot_reg(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_otp_read, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_write_user_prot_reg(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf, ptr noundef nonnull @do_otp_write, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_lock_user_prot_reg(ptr noundef %mtd, i64 noundef %from, i32 noundef %len) #4 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_id, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %oob_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 37
  %cond.in = select i1 %tobool.not, ptr %oob_buf, ptr %page_buf
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #13
  %5 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %retlen, align 4, !annotation !416
  %writesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %cond7.in = select i1 %tobool.not, ptr %oobsize, ptr %writesize
  %6 = ptrtoint ptr %cond7.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond7 = load i32, ptr %cond7.in, align 4
  %7 = call ptr @memset(ptr %cond, i32 255, i32 %cond7)
  %8 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_id, align 4
  %and9 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %entry.cond.end14_crit_edge, label %cond.true11

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end14

cond.true11:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %writesize12 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %10 = ptrtoint ptr %writesize12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize12, align 4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.true11, %entry.cond.end14_crit_edge
  %spec.select = phi i32 [ 14, %entry.cond.end14_crit_edge ], [ 2048, %cond.true11 ]
  %cond15 = phi i32 [ 16, %entry.cond.end14_crit_edge ], [ %11, %cond.true11 ]
  %12 = load i32, ptr @otp, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %12, label %do.end [
    i32 1, label %if.then19
    i32 2, label %if.then21
    i32 3, label %if.then25
    i32 0, label %cond.end14.if.end33_crit_edge
  ]

cond.end14.if.end33_crit_edge:                    ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then19:                                        ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr i8, ptr %cond, i32 %spec.select
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -4, ptr %arrayidx, align 1
  br label %if.end33

if.then21:                                        ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx22 = getelementptr i8, ptr %cond, i32 %spec.select
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -13, ptr %arrayidx22, align 1
  br label %if.end33

if.then25:                                        ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx26 = getelementptr i8, ptr %cond, i32 %spec.select
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -16, ptr %arrayidx26, align 1
  br label %if.end33

do.end:                                           ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #16
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.then25, %if.then21, %if.then19, %cond.end14.if.end33_crit_edge
  %call34 = call fastcc i32 @onenand_otp_walk(ptr noundef %mtd, i64 noundef 0, i32 noundef %cond15, ptr noundef nonnull %retlen, ptr noundef %cond, ptr noundef nonnull @do_otp_lock, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cond.false37, label %if.end33.cond.end38_crit_edge

if.end33.cond.end38_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end38

cond.false37:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %retlen, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %if.end33.cond.end38_crit_edge
  %cond39 = phi i32 [ %18, %cond.false37 ], [ %call34, %if.end33.cond.end38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #13
  ret i32 %cond39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @onenand_sync(ptr noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_sync.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_sync, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_sync.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.172) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 13)
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 12
  br i1 %cmp.not.i, label %do.end.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

do.end.onenand_release_device.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %do.end
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %5(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %do.end.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_lock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 15)
  %conv = trunc i64 %len to i32
  tail call fastcc void @onenand_do_lock_cmd(ptr noundef %mtd, i64 noundef %ofs, i32 noundef %conv, i32 noundef 42)
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 12
  br i1 %cmp.not.i, label %entry.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

entry.onenand_release_device.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %entry
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %5(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %entry.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_unlock(ptr noundef %mtd, i64 noundef %ofs, i64 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 15)
  %conv = trunc i64 %len to i32
  tail call fastcc void @onenand_do_lock_cmd(ptr noundef %mtd, i64 noundef %ofs, i32 noundef %conv, i32 noundef 35)
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 12
  br i1 %cmp.not.i, label %entry.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

entry.onenand_release_device.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %entry
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %5(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %entry.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_suspend(ptr nocapture noundef readonly %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp100.i = icmp eq i32 %3, 0
  br i1 %cmp100.i, label %if.then.i, label %if.end8.lr.ph.i

if.end8.lr.ph.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp13.i = icmp eq i32 %5, 12
  %cond.i = select i1 %cmp13.i, i32 0, i32 -11
  br label %onenand_get_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %state.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  br label %onenand_get_device.exit

onenand_get_device.exit:                          ; preds = %if.then.i, %if.end8.lr.ph.i
  %retval.0.i = phi i32 [ %cond.i, %if.end8.lr.ph.i ], [ 0, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @onenand_resume(ptr noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %onenand_release_device.exit, label %do.end

onenand_release_device.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %onenand_release_device.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_block_isbad(ptr noundef %mtd, i64 noundef %ofs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 21)
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bbm1.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bbm1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbm1.i, align 8
  %isbad_bbt.i = getelementptr inbounds %struct.bbm_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %isbad_bbt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isbad_bbt.i, align 4
  %call.i = tail call i32 %5(ptr noundef %mtd, i64 noundef %ofs, i32 noundef 0) #13
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 12
  br i1 %cmp.not.i, label %entry.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

entry.onenand_release_device.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %entry
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %7, i32 0, i32 30
  %10 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i5 = tail call i32 %11(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %entry.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %7, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %7, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_block_markbad(ptr noundef %mtd, i64 noundef %ofs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 21) #13
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %bbm1.i.i = getelementptr inbounds %struct.onenand_chip, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %bbm1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bbm1.i.i, align 8
  %isbad_bbt.i.i = getelementptr inbounds %struct.bbm_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %isbad_bbt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isbad_bbt.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %mtd, i64 noundef %ofs, i32 noundef 0) #13
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %state.i.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 12
  br i1 %cmp.not.i.i, label %entry.onenand_block_isbad.exit_crit_edge, label %land.lhs.true.i.i

entry.onenand_block_isbad.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_block_isbad.exit

land.lhs.true.i.i:                                ; preds = %entry
  %disable.i.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 30
  %12 = ptrtoint ptr %disable.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.onenand_block_isbad.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.onenand_block_isbad.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_block_isbad.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i5.i = tail call i32 %13(ptr noundef %mtd) #13
  br label %onenand_block_isbad.exit

onenand_block_isbad.exit:                         ; preds = %if.then.i.i, %land.lhs.true.i.i.onenand_block_isbad.exit_crit_edge, %entry.onenand_block_isbad.exit_crit_edge
  %chip_lock.i.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i.i) #13
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i.i, align 4
  %wq.i.i = getelementptr inbounds %struct.onenand_chip, ptr %9, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %onenand_block_isbad.exit
  call void @__sanitizer_cov_trace_pc() #15
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0)
  br label %cleanup

if.end2:                                          ; preds = %onenand_block_isbad.exit
  %call3 = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 7)
  %block_markbad = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 27
  %16 = ptrtoint ptr %block_markbad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %block_markbad, align 8
  %call4 = tail call i32 %17(ptr noundef %mtd, i64 noundef %ofs) #13
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %19, i32 0, i32 35
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 12
  br i1 %cmp.not.i, label %if.end2.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

if.end2.onenand_release_device.exit_crit_edge:    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %if.end2
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %19, i32 0, i32 30
  %22 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i14 = tail call i32 %23(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %if.end2.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %19, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %19, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %onenand_release_device.exit, %if.then
  %retval.0 = phi i32 [ %call4, %onenand_release_device.exit ], [ %15, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @onenand_release(ptr noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #13
  %bbm = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bbm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbm, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bbt = getelementptr inbounds %struct.bbm_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bbt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bbt, align 4
  tail call void @kfree(ptr noundef %5) #13
  %6 = ptrtoint ptr %bbm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bbm, align 8
  tail call void @kfree(ptr noundef %7) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options, align 4
  %and = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %10 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page_buf, align 8
  tail call void @kfree(ptr noundef %11) #13
  %verify_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 38
  %12 = ptrtoint ptr %verify_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %verify_buf, align 8
  tail call void @kfree(ptr noundef %13) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %14 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %options, align 4
  %and8 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %oob_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 37
  %16 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oob_buf, align 4
  tail call void @kfree(ptr noundef %17) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %18 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eraseregions, align 4
  tail call void @kfree(ptr noundef %19) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_wait(ptr nocapture noundef %mtd, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %add.neg = sub i32 -2, %2
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub144 = add i32 %add.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub144)
  %cmp145 = icmp slt i32 %sub144, 0
  br i1 %cmp145, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_word, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 124034
  %call1 = tail call zeroext i16 %5(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1)
  %tobool.not = icmp sgt i16 %call1, -1
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %state, label %if.then6 [
    i32 21, label %if.end.if.end8_crit_edge
    i32 25, label %if.end.if.end8_crit_edge146
  ]

if.end.if.end8_crit_edge146:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 570, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %9
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end8.while.body_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %10 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_word, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr11 = getelementptr i8, ptr %13, i32 124034
  %call12 = tail call zeroext i16 %11(ptr noundef %add.ptr11) #13
  %conv13 = zext i16 %call12 to i32
  %14 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_word, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %add.ptr16 = getelementptr i8, ptr %17, i32 124032
  %call17 = tail call zeroext i16 %15(ptr noundef %add.ptr16) #13
  %conv18 = zext i16 %call17 to i32
  %and19 = and i32 %conv13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else43, label %if.then21

if.then21:                                        ; preds = %while.end
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_id.i, align 4
  %and.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then21.if.end.i_crit_edge

if.then21.if.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then21
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options.i, align 4
  %and1.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_word, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 130560
  %call.i124 = tail call zeroext i16 %23(ptr noundef %add.ptr.i) #13
  %conv.i = zext i16 %call.i124 to i32
  br label %onenand_read_ecc.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then21.if.end.i_crit_edge
  %26 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_word, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %add.ptr6.i = getelementptr i8, ptr %29, i32 130560
  %call8.i = tail call zeroext i16 %27(ptr noundef %add.ptr6.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %tobool10.not.i = icmp eq i16 %call8.i, 0
  br i1 %tobool10.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end15.i, !prof !409

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.end.i
  %30 = and i16 %call8.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool17.not.i = icmp eq i16 %30, 0
  br i1 %tobool17.not.i, label %if.end15.i.for.inc.i_crit_edge, label %if.end15.i.do.end_crit_edge

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end15.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %result.1.i = phi i32 [ 0, %if.end.i.for.inc.i_crit_edge ], [ 21845, %if.end15.i.for.inc.i_crit_edge ]
  %31 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_word, align 8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr7.1.i = getelementptr i8, ptr %34, i32 130562
  %call8.1.i = tail call zeroext i16 %32(ptr noundef %add.ptr7.1.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.1.i)
  %tobool10.not.1.i = icmp eq i16 %call8.1.i, 0
  br i1 %tobool10.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end15.1.i, !prof !409

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end15.1.i:                                     ; preds = %for.inc.i
  %35 = and i16 %call8.1.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool17.not.1.i = icmp eq i16 %35, 0
  br i1 %tobool17.not.1.i, label %if.end15.1.i.for.inc.1.i_crit_edge, label %if.end15.1.i.do.end_crit_edge

if.end15.1.i.do.end_crit_edge:                    ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end15.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %result.1.1.i = phi i32 [ %result.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ 21845, %if.end15.1.i.for.inc.1.i_crit_edge ]
  %36 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read_word, align 8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr7.2.i = getelementptr i8, ptr %39, i32 130564
  %call8.2.i = tail call zeroext i16 %37(ptr noundef %add.ptr7.2.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.2.i)
  %tobool10.not.2.i = icmp eq i16 %call8.2.i, 0
  br i1 %tobool10.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end15.2.i, !prof !409

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end15.2.i:                                     ; preds = %for.inc.1.i
  %40 = and i16 %call8.2.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool17.not.2.i = icmp eq i16 %40, 0
  br i1 %tobool17.not.2.i, label %if.end15.2.i.for.inc.2.i_crit_edge, label %if.end15.2.i.do.end_crit_edge

if.end15.2.i.do.end_crit_edge:                    ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end15.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %result.1.2.i = phi i32 [ %result.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ 21845, %if.end15.2.i.for.inc.2.i_crit_edge ]
  %41 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_word, align 8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %add.ptr7.3.i = getelementptr i8, ptr %44, i32 130566
  %call8.3.i = tail call zeroext i16 %42(ptr noundef %add.ptr7.3.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.3.i)
  %tobool10.not.3.i = icmp eq i16 %call8.3.i, 0
  br i1 %tobool10.not.3.i, label %for.inc.2.i.onenand_read_ecc.exit_crit_edge, label %if.end15.3.i, !prof !409

for.inc.2.i.onenand_read_ecc.exit_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_read_ecc.exit

if.end15.3.i:                                     ; preds = %for.inc.2.i
  %45 = and i16 %call8.3.i, 4112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool17.not.3.i = icmp eq i16 %45, 0
  br i1 %tobool17.not.3.i, label %if.end15.3.i.do.end35_crit_edge, label %if.end15.3.i.do.end_crit_edge

if.end15.3.i.do.end_crit_edge:                    ; preds = %if.end15.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.3.i.do.end35_crit_edge:                  ; preds = %if.end15.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

onenand_read_ecc.exit:                            ; preds = %for.inc.2.i.onenand_read_ecc.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %result.1.2.i, %for.inc.2.i.onenand_read_ecc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool23.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool23.not, label %onenand_read_ecc.exit.if.end53_crit_edge, label %if.then24

onenand_read_ecc.exit.if.end53_crit_edge:         ; preds = %onenand_read_ecc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then24:                                        ; preds = %onenand_read_ecc.exit
  %and25 = and i32 %retval.0.i, 43690
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %if.then24.do.end_crit_edge

if.then24.do.end_crit_edge:                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.then24.do.end_crit_edge, %if.end15.3.i.do.end_crit_edge, %if.end15.2.i.do.end_crit_edge, %if.end15.1.i.do.end_crit_edge, %if.end15.i.do.end_crit_edge
  %retval.0.i127131 = phi i32 [ %retval.0.i, %if.then24.do.end_crit_edge ], [ 43690, %if.end15.3.i.do.end_crit_edge ], [ 43690, %if.end15.2.i.do.end_crit_edge ], [ 43690, %if.end15.1.i.do.end_crit_edge ], [ 43690, %if.end15.i.do.end_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i127131) #16
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %46 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %failed, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %failed, align 4
  br label %cleanup93

if.else:                                          ; preds = %if.then24
  %and30 = and i32 %retval.0.i, 21845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else.if.end53_crit_edge, label %if.else.do.end35_crit_edge

if.else.do.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.end35:                                         ; preds = %if.else.do.end35_crit_edge, %if.end15.3.i.do.end35_crit_edge
  %retval.0.i127139143 = phi i32 [ %retval.0.i, %if.else.do.end35_crit_edge ], [ 21845, %if.end15.3.i.do.end35_crit_edge ]
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i127139143) #16
  %ecc_stats38 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %48 = ptrtoint ptr %ecc_stats38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ecc_stats38, align 4
  %inc39 = add i32 %49, 1
  store i32 %inc39, ptr %ecc_stats38, align 4
  br label %if.end53

if.else43:                                        ; preds = %while.end
  %50 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %state, label %if.else43.if.end65_crit_edge [
    i32 21, label %do.end49
    i32 25, label %land.lhs.true56
  ]

if.else43.if.end65_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

do.end49:                                         ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #15
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %conv18, i32 noundef %conv13) #16
  br label %cleanup93

if.end53:                                         ; preds = %do.end35, %if.else.if.end53_crit_edge, %onenand_read_ecc.exit.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %state)
  %cmp54 = icmp eq i32 %state, 25
  %and57 = and i32 %conv13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %or.cond = select i1 %cmp54, i1 %tobool58.not, i1 false
  br i1 %or.cond, label %if.end53.do.end62_crit_edge, label %if.end53.if.end65_crit_edge

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end53.do.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end62

land.lhs.true56:                                  ; preds = %if.else43
  %and57.old = and i32 %conv13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.old)
  %tobool58.not.old = icmp eq i32 %and57.old, 0
  br i1 %tobool58.not.old, label %land.lhs.true56.do.end62_crit_edge, label %land.lhs.true56.if.end65_crit_edge

land.lhs.true56.if.end65_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

land.lhs.true56.do.end62_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end62

do.end62:                                         ; preds = %land.lhs.true56.do.end62_crit_edge, %if.end53.do.end62_crit_edge
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %conv18, i32 noundef %conv13) #16
  br label %cleanup93

if.end65:                                         ; preds = %land.lhs.true56.if.end65_crit_edge, %if.end53.if.end65_crit_edge, %if.else43.if.end65_crit_edge
  %and66 = and i32 %conv13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17, i32 noundef %conv18, i32 noundef %conv13) #16
  br label %cleanup93

if.end74:                                         ; preds = %if.end65
  %and75 = and i32 %conv18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.cleanup93_crit_edge, label %do.end80

if.end74.cleanup93_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup93

do.end80:                                         ; preds = %if.end74
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.17, i32 noundef %conv18) #16
  %and83 = and i32 %conv18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.end80.cleanup93_crit_edge, label %do.end88

do.end80.cleanup93_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup93

do.end88:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #15
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.17) #16
  br label %cleanup93

cleanup93:                                        ; preds = %do.end88, %do.end80.cleanup93_crit_edge, %if.end74.cleanup93_crit_edge, %do.end71, %do.end62, %do.end49, %do.end
  %retval.1 = phi i32 [ -5, %do.end71 ], [ -5, %do.end62 ], [ -5, %do.end49 ], [ -74, %do.end ], [ -5, %do.end88 ], [ -5, %do.end80.cleanup93_crit_edge ], [ 0, %if.end74.cleanup93_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_interrupt(i32 noundef %irq, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.onenand_chip, ptr %data, i32 0, i32 31
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %complete, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @complete(ptr noundef %complete) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_try_interrupt_wait(ptr nocapture noundef %mtd, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @onenand_interrupt_wait, ptr %wait, align 4
  %complete = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 31
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #16
  %irq = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 8
  %call3 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %1) #13
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @onenand_wait, ptr %wait, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call5 = tail call i32 @onenand_wait(ptr noundef %mtd, i32 noundef %state)
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @onenand_interrupt_wait(ptr nocapture noundef %mtd, i32 noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %complete = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 31
  tail call void @wait_for_completion(ptr noundef %complete) #13
  %call = tail call i32 @onenand_wait(ptr noundef %mtd, i32 noundef %state)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @onenand_do_lock_cmd(ptr noundef %mtd, i64 noundef %ofs, i32 noundef %len, i32 noundef %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_id.i, align 4
  %and.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i8, label %if.end.i

if.end.i:                                         ; preds = %entry
  %and.i.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.thread.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end.thread.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %diesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %diesize.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %diesize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %ofs)
  %cmp.not.i.i = icmp sgt i64 %5, %ofs
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.thread.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.if.end.thread.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %land.lhs.true.i.i.if.end.thread.i.i_crit_edge, %if.end.i.if.end.thread.i.i_crit_edge
  %arrayidx430.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 0
  br label %if.end.i11

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i64 %ofs, %5
  %arrayidx4.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 1
  %density_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %density_mask.i.i, align 8
  br label %if.end.i11

if.then.i8:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erase_shift.i, align 4
  %sh_prom.i = zext i32 %9 to i64
  %shr.i = ashr i64 %ofs, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv45 = zext i32 %len to i64
  %add46 = add i64 %conv45, %ofs
  %shr.i6 = ashr i64 %add46, %sh_prom.i
  %conv.i7 = trunc i64 %shr.i6 to i32
  br label %onenand_block.exit37

if.end.i11:                                       ; preds = %cond.true.i.i, %if.end.thread.i.i
  %.in33.i.i = phi ptr [ %arrayidx4.i.i, %cond.true.i.i ], [ %arrayidx430.i.i, %if.end.thread.i.i ]
  %addr.addr.032.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %ofs, %if.end.thread.i.i ]
  %cond.i.i = phi i32 [ %7, %cond.true.i.i ], [ 0, %if.end.thread.i.i ]
  %10 = ptrtoint ptr %.in33.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %.in33.i.i, align 4
  %.in.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %.in.i.i, align 4
  %sub5.i.i = add i32 %13, -1
  %sh_prom.i.i = zext i32 %sub5.i.i to i64
  %shr.i.i = ashr i64 %addr.addr.032.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i.i)
  %cmp6.i.i = icmp ult i32 %11, %conv.i.i
  %add.i.i = add i32 %11, 1
  %add9.i.i = add i32 %add.i.i, %conv.i.i
  %shr10.i.i = lshr i32 %add9.i.i, 1
  %blk.0.i.i = select i1 %cmp6.i.i, i32 %shr10.i.i, i32 %conv.i.i
  %add13.i.i = add i32 %blk.0.i.i, %cond.i.i
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %ofs
  br i1 %tobool.not.i.i, label %if.end.i11.if.end.thread.i.i16_crit_edge, label %land.lhs.true.i.i14

if.end.i11.if.end.thread.i.i16_crit_edge:         ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i16

land.lhs.true.i.i14:                              ; preds = %if.end.i11
  %diesize.i.i12 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %diesize.i.i12 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %diesize.i.i12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp.not.i.i13 = icmp slt i64 %add, %15
  br i1 %cmp.not.i.i13, label %land.lhs.true.i.i14.if.end.thread.i.i16_crit_edge, label %cond.true.i.i20

land.lhs.true.i.i14.if.end.thread.i.i16_crit_edge: ; preds = %land.lhs.true.i.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread.i.i16

if.end.thread.i.i16:                              ; preds = %land.lhs.true.i.i14.if.end.thread.i.i16_crit_edge, %if.end.i11.if.end.thread.i.i16_crit_edge
  %arrayidx430.i.i15 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i35

cond.true.i.i20:                                  ; preds = %land.lhs.true.i.i14
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i17 = sub i64 %add, %15
  %arrayidx4.i.i18 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 1
  %density_mask.i.i19 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %density_mask.i.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %density_mask.i.i19, align 8
  br label %flexonenand_block.exit.i35

flexonenand_block.exit.i35:                       ; preds = %cond.true.i.i20, %if.end.thread.i.i16
  %.in33.i.i21 = phi ptr [ %arrayidx4.i.i18, %cond.true.i.i20 ], [ %arrayidx430.i.i15, %if.end.thread.i.i16 ]
  %addr.addr.032.i.i22 = phi i64 [ %sub.i.i17, %cond.true.i.i20 ], [ %add, %if.end.thread.i.i16 ]
  %cond.i.i23 = phi i32 [ %17, %cond.true.i.i20 ], [ 0, %if.end.thread.i.i16 ]
  %18 = ptrtoint ptr %.in33.i.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %.in33.i.i21, align 4
  %20 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %.in.i.i, align 4
  %sub5.i.i25 = add i32 %21, -1
  %sh_prom.i.i26 = zext i32 %sub5.i.i25 to i64
  %shr.i.i27 = ashr i64 %addr.addr.032.i.i22, %sh_prom.i.i26
  %conv.i.i28 = trunc i64 %shr.i.i27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i.i28)
  %cmp6.i.i29 = icmp ult i32 %19, %conv.i.i28
  %add.i.i30 = add i32 %19, 1
  %add9.i.i31 = add i32 %add.i.i30, %conv.i.i28
  %shr10.i.i32 = lshr i32 %add9.i.i31, 1
  %blk.0.i.i33 = select i1 %cmp6.i.i29, i32 %shr10.i.i32, i32 %conv.i.i28
  %add13.i.i34 = add i32 %blk.0.i.i33, %cond.i.i23
  br label %onenand_block.exit37

onenand_block.exit37:                             ; preds = %flexonenand_block.exit.i35, %if.then.i8
  %retval.0.i47 = phi i32 [ %add13.i.i, %flexonenand_block.exit.i35 ], [ %conv.i, %if.then.i8 ]
  %retval.0.i36 = phi i32 [ %add13.i.i34, %flexonenand_block.exit.i35 ], [ %conv.i7, %if.then.i8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 42
  %. = select i1 %cmp, i32 2, i32 4
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %options, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then3

for.cond.preheader:                               ; preds = %onenand_block.exit37
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i47, i32 %retval.0.i36)
  %cmp2951 = icmp slt i32 %retval.0.i47, %retval.0.i36
  br i1 %cmp2951, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %density_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %write_word32 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %command45 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %wait47 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %read_word50 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  br label %for.body

if.then3:                                         ; preds = %onenand_block.exit37
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_word, align 4
  %conv4 = trunc i32 %retval.0.i47 to i16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %27, i32 124056
  tail call void %25(i16 noundef zeroext %conv4, ptr noundef %add.ptr) #13
  %28 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_word, align 4
  %30 = trunc i32 %retval.0.i36 to i16
  %conv6 = add i16 %30, -1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %add.ptr8 = getelementptr i8, ptr %32, i32 124058
  tail call void %29(i16 noundef zeroext %conv6, ptr noundef %add.ptr8) #13
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %33 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %command, align 8
  %call9 = tail call i32 %34(ptr noundef %mtd, i32 noundef %cmd, i64 noundef 0, i32 noundef 0) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %35 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wait, align 4
  %call10 = tail call i32 %36(ptr noundef %mtd, i32 noundef 15) #13
  %read_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then3
  %37 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_word, align 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %add.ptr12 = getelementptr i8, ptr %40, i32 124032
  %call13 = tail call zeroext i16 %38(ptr noundef %add.ptr12) #13
  %tobool16.not = icmp sgt i16 %call13, -1
  br i1 %tobool16.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = ptrtoint ptr %read_word to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_word, align 8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %add.ptr19 = getelementptr i8, ptr %44, i32 124060
  %call20 = tail call zeroext i16 %42(ptr noundef %add.ptr19) #13
  %conv21 = zext i16 %call20 to i32
  %and22 = and i32 %., %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.end, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %conv21) #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %block.052 = phi i32 [ %retval.0.i47, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %45 = ptrtoint ptr %density_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %density_mask.i, align 8
  %and.i38 = and i32 %46, %block.052
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  %xor.i = xor i32 %46, %block.052
  %or.i = or i32 %xor.i, 32768
  %retval.0.i40 = select i1 %tobool.not.i39, i32 %block.052, i32 %or.i
  %47 = ptrtoint ptr %write_word32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_word32, align 4
  %conv33 = trunc i32 %retval.0.i40 to i16
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %add.ptr35 = getelementptr i8, ptr %50, i32 123392
  tail call void %48(i16 noundef zeroext %conv33, ptr noundef %add.ptr35) #13
  %51 = ptrtoint ptr %density_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %density_mask.i, align 8
  %and.i42 = and i32 %52, %block.052
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  %53 = ptrtoint ptr %write_word32 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_word32, align 4
  %conv38 = select i1 %tobool.not.i43, i16 0, i16 -32768
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %add.ptr40 = getelementptr i8, ptr %56, i32 123394
  tail call void %54(i16 noundef zeroext %conv38, ptr noundef %add.ptr40) #13
  %57 = ptrtoint ptr %write_word32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_word32, align 4
  %conv42 = trunc i32 %block.052 to i16
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %add.ptr44 = getelementptr i8, ptr %60, i32 124056
  tail call void %58(i16 noundef zeroext %conv42, ptr noundef %add.ptr44) #13
  %61 = ptrtoint ptr %command45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %command45, align 8
  %call46 = tail call i32 %62(ptr noundef %mtd, i32 noundef %cmd, i64 noundef 0, i32 noundef 0) #13
  %63 = ptrtoint ptr %wait47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wait47, align 4
  %call48 = tail call i32 %64(ptr noundef %mtd, i32 noundef 15) #13
  br label %while.cond49

while.cond49:                                     ; preds = %while.cond49.while.cond49_crit_edge, %for.body
  %65 = ptrtoint ptr %read_word50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_word50, align 8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %add.ptr52 = getelementptr i8, ptr %68, i32 124032
  %call53 = tail call zeroext i16 %66(ptr noundef %add.ptr52) #13
  %tobool56.not = icmp sgt i16 %call53, -1
  br i1 %tobool56.not, label %while.end58, label %while.cond49.while.cond49_crit_edge

while.cond49.while.cond49_crit_edge:              ; preds = %while.cond49
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond49

while.end58:                                      ; preds = %while.cond49
  %69 = ptrtoint ptr %read_word50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_word50, align 8
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %add.ptr61 = getelementptr i8, ptr %72, i32 124060
  %call62 = tail call zeroext i16 %70(ptr noundef %add.ptr61) #13
  %conv63 = zext i16 %call62 to i32
  %and64 = and i32 %., %conv63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.end69, label %while.end58.for.inc_crit_edge

while.end58.for.inc_crit_edge:                    ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end69:                                         ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #15
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.49, i32 noundef %block.052, i32 noundef %conv63) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end69, %while.end58.for.inc_crit_edge
  %inc = add nsw i32 %block.052, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i36
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %while.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_write_oob_nolock(ptr noundef %mtd, i64 noundef %to, ptr nocapture noundef %ops) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %2 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ooblen, align 4
  %oobbuf1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %4 = ptrtoint ptr %oobbuf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oobbuf1, align 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ops, align 4
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %8 = ptrtoint ptr %ooboffs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ooboffs, align 4
  %conv = zext i32 %9 to i64
  %add = add i64 %conv, %to
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_write_oob_nolock.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_write_oob_nolock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv5 = trunc i64 %add to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_write_oob_nolock.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %conv5, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %10 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %oobretlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %oobsize8 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %oobsize.0.in = select i1 %cmp, ptr %oobavail, ptr %oobsize8
  %11 = ptrtoint ptr %oobsize.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %oobsize.0 = load i32, ptr %oobsize.0.in, align 4
  %12 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize8, align 4
  %sub = add i32 %13, -1
  %14 = trunc i64 %add to i32
  %conv12 = and i32 %sub, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %oobsize.0)
  %cmp13.not = icmp slt i32 %conv12, %oobsize.0
  br i1 %cmp13.not, label %if.end27, label %do.end24, !prof !409

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57) #16
  br label %cleanup114

if.end27:                                         ; preds = %do.end
  %add28 = add i32 %conv12, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %oobsize.0)
  %cmp29 = icmp ugt i32 %add28, %oobsize.0
  br i1 %cmp29, label %do.end40, label %if.end43, !prof !408

do.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.57) #16
  br label %cleanup114

if.end43:                                         ; preds = %if.end27
  %oob_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 37
  %15 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oob_buf, align 4
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options, align 4
  %and44 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %cond = select i1 %tobool45.not, i32 26, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp46268.not = icmp eq i32 %3, 0
  br i1 %cmp46268.not, label %if.end43.while.end_crit_edge, label %while.body.lr.ph

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end43
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %write_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 22
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %bufferram_index = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %writesize82 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %to.addr.0274 = phi i64 [ %add, %while.body.lr.ph ], [ %add111, %cleanup.while.body_crit_edge ]
  %column.0273 = phi i32 [ %conv12, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %written.0271 = phi i32 [ 0, %while.body.lr.ph ], [ %add104, %cleanup.while.body_crit_edge ]
  %buf.0269 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr112, %cleanup.while.body_crit_edge ]
  %sub48 = sub i32 %3, %written.0271
  %19 = tail call i32 @llvm.smin.i32(i32 %oobsize.0, i32 %sub48)
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2013, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %20 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %command, align 8
  %22 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oobsize8, align 4
  %call56 = tail call i32 %21(ptr noundef %mtd, i32 noundef 6520, i64 noundef %to.addr.0274, i32 noundef %23) #13
  %24 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oobsize8, align 4
  %26 = call ptr @memset(ptr %16, i32 255, i32 %25)
  br i1 %cmp, label %if.then60, label %if.else62

if.then60:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call.i197 = tail call i32 @mtd_ooblayout_set_databytes(ptr noundef %mtd, ptr noundef %buf.0269, ptr noundef %16, i32 noundef %column.0273, i32 noundef %19) #13
  br label %if.end63

if.else62:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %16, i32 %column.0273
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %buf.0269, i32 %19)
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then60
  %28 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_bufferram, align 4
  %30 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oobsize8, align 4
  %call65 = tail call i32 %29(ptr noundef %mtd, i32 noundef 65568, ptr noundef %16, i32 noundef 0, i32 noundef %31) #13
  %32 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %options, align 4
  %and67 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end63.if.end74_crit_edge, label %if.then69

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %page_buf, align 8
  %36 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize, align 4
  %38 = call ptr @memset(ptr %35, i32 255, i32 %37)
  %39 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_bufferram, align 4
  %41 = load ptr, ptr %page_buf, align 8
  %42 = load i32, ptr %writesize, align 4
  %call73 = tail call i32 %40(ptr noundef %mtd, i32 noundef 1024, ptr noundef %41, i32 noundef 0, i32 noundef %42) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end63.if.end74_crit_edge
  %43 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %command, align 8
  %45 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %oobsize8, align 4
  %call77 = tail call i32 %44(ptr noundef %mtd, i32 noundef %cond, i64 noundef %to.addr.0274, i32 noundef %46) #13
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %options.i, align 4
  %and.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 11
  %51 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %52 to i64
  %shr.i.i = ashr i64 %to.addr.0274, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 14
  %53 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %54 to i64
  %and2.i.i = and i64 %to.addr.0274, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 12
  %55 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %56, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %to.addr.0274, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 13
  %57 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %58, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 12
  %59 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %60 to i64
  %shr.i = ashr i64 %to.addr.0274, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %48, i32 0, i32 15
  %61 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %62, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %48, i32 0, i32 16, i32 %xor.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %blockpage.0.i)
  %cmp.i = icmp eq i32 %64, %blockpage.0.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.onenand_update_bufferram.exit_crit_edge

if.end.i.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i.onenand_update_bufferram.exit_crit_edge
  %66 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bufferram_index.i, align 4
  %68 = getelementptr %struct.onenand_chip, ptr %48, i32 0, i32 16, i32 %67
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %68, align 4
  %70 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %options, align 4
  %and79 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %onenand_update_bufferram.exit.if.end85_crit_edge, label %if.then81

onenand_update_bufferram.exit.if.end85_crit_edge: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then81:                                        ; preds = %onenand_update_bufferram.exit
  %72 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %bufferram_index, align 4
  %73 = ptrtoint ptr %writesize82 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %writesize82, align 8
  %conv83 = zext i32 %74 to i64
  %add84 = add i64 %to.addr.0274, %conv83
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 8
  %options.i199 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %options.i199 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %options.i199, align 4
  %and.i200 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool.not.i201 = icmp eq i32 %and.i200, 0
  br i1 %tobool.not.i201, label %if.else.i227, label %if.then.i222

if.then.i222:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i202 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 11
  %79 = ptrtoint ptr %erase_shift.i.i202 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %erase_shift.i.i202, align 4
  %sh_prom.i.i203 = zext i32 %80 to i64
  %shr.i.i204 = ashr i64 %add84, %sh_prom.i.i203
  %conv.i.i205 = trunc i64 %shr.i.i204 to i32
  %and.i.i206 = and i32 %conv.i.i205, 33554430
  %writesize.i.i207 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 14
  %81 = ptrtoint ptr %writesize.i.i207 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %writesize.i.i207, align 8
  %conv1.i.i208 = zext i32 %82 to i64
  %and2.i.i209 = and i64 %add84, %conv1.i.i208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i209)
  %tobool.not.i.i210 = icmp ne i64 %and2.i.i209, 0
  %masksel.i.i211 = zext i1 %tobool.not.i.i210 to i32
  %spec.select.i.i212 = or i32 %and.i.i206, %masksel.i.i211
  %page_shift.i.i213 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 12
  %83 = ptrtoint ptr %page_shift.i.i213 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_shift.i.i213, align 8
  %add.i.i214 = add i32 %84, 1
  %sh_prom3.i.i215 = zext i32 %add.i.i214 to i64
  %shr4.i.i216 = ashr i64 %add84, %sh_prom3.i.i215
  %conv5.i.i217 = trunc i64 %shr4.i.i216 to i32
  %page_mask.i.i218 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 13
  %85 = ptrtoint ptr %page_mask.i.i218 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %page_mask.i.i218, align 4
  %and6.i.i219 = and i32 %86, %conv5.i.i217
  %shl.i.i220 = shl nuw i32 %spec.select.i.i212, 7
  %or.i.i221 = or i32 %shl.i.i220, %and6.i.i219
  br label %if.end.i233

if.else.i227:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i223 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 12
  %87 = ptrtoint ptr %page_shift.i223 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %page_shift.i223, align 8
  %sh_prom.i224 = zext i32 %88 to i64
  %shr.i225 = ashr i64 %add84, %sh_prom.i224
  %conv.i226 = trunc i64 %shr.i225 to i32
  br label %if.end.i233

if.end.i233:                                      ; preds = %if.else.i227, %if.then.i222
  %blockpage.0.i228 = phi i32 [ %or.i.i221, %if.then.i222 ], [ %conv.i226, %if.else.i227 ]
  %bufferram_index.i229 = getelementptr inbounds %struct.onenand_chip, ptr %76, i32 0, i32 15
  %89 = ptrtoint ptr %bufferram_index.i229 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bufferram_index.i229, align 4
  %xor.i230 = xor i32 %90, 1
  %arrayidx.i231 = getelementptr %struct.onenand_chip, ptr %76, i32 0, i32 16, i32 %xor.i230
  %91 = ptrtoint ptr %arrayidx.i231 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i231, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %blockpage.0.i228)
  %cmp.i232 = icmp eq i32 %92, %blockpage.0.i228
  br i1 %cmp.i232, label %if.then3.i234, label %if.end.i233.onenand_update_bufferram.exit235_crit_edge

if.end.i233.onenand_update_bufferram.exit235_crit_edge: ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit235

if.then3.i234:                                    ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %arrayidx.i231 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %arrayidx.i231, align 4
  br label %onenand_update_bufferram.exit235

onenand_update_bufferram.exit235:                 ; preds = %if.then3.i234, %if.end.i233.onenand_update_bufferram.exit235_crit_edge
  %94 = ptrtoint ptr %bufferram_index.i229 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bufferram_index.i229, align 4
  %96 = getelementptr %struct.onenand_chip, ptr %76, i32 0, i32 16, i32 %95
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %96, align 4
  br label %if.end85

if.end85:                                         ; preds = %onenand_update_bufferram.exit235, %onenand_update_bufferram.exit.if.end85_crit_edge
  %98 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wait, align 4
  %call86 = tail call i32 %99(ptr noundef %mtd, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end94, label %do.end91

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57, i32 noundef %call86) #16
  br label %while.end

if.end94:                                         ; preds = %if.end85
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %oob_buf1.i = getelementptr inbounds %struct.onenand_chip, ptr %101, i32 0, i32 37
  %102 = ptrtoint ptr %oob_buf1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %oob_buf1.i, align 4
  %options.i237 = getelementptr inbounds %struct.onenand_chip, ptr %101, i32 0, i32 9
  %104 = ptrtoint ptr %options.i237 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %options.i237, align 4
  %and.i238 = and i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool.not.i239 = icmp eq i32 %and.i238, 0
  %cond.i = select i1 %tobool.not.i239, i32 19, i32 0
  %command.i = getelementptr inbounds %struct.onenand_chip, ptr %101, i32 0, i32 17
  %106 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %command.i, align 8
  %108 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %oobsize8, align 4
  %call.i240 = tail call i32 %107(ptr noundef %mtd, i32 noundef %cond.i, i64 noundef %to.addr.0274, i32 noundef %109) #13
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 8
  %options.i.i = getelementptr inbounds %struct.onenand_chip, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %options.i.i, align 4
  %and.i.i241 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i241)
  %tobool.not.i.i242 = icmp eq i32 %and.i.i241, 0
  br i1 %tobool.not.i.i242, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %111, i32 0, i32 11
  %114 = ptrtoint ptr %erase_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %erase_shift.i.i.i, align 4
  %sh_prom.i.i.i = zext i32 %115 to i64
  %shr.i.i.i = ashr i64 %to.addr.0274, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %and.i.i.i = and i32 %conv.i.i.i, 33554430
  %writesize.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %111, i32 0, i32 14
  %116 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %writesize.i.i.i, align 8
  %conv1.i.i.i = zext i32 %117 to i64
  %and2.i.i.i = and i64 %to.addr.0274, %conv1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i.i)
  %tobool.not.i.i.i = icmp ne i64 %and2.i.i.i, 0
  %masksel.i.i.i = zext i1 %tobool.not.i.i.i to i32
  %spec.select.i.i.i = or i32 %and.i.i.i, %masksel.i.i.i
  %page_shift.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %111, i32 0, i32 12
  %118 = ptrtoint ptr %page_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %page_shift.i.i.i, align 8
  %add.i.i.i = add i32 %119, 1
  %sh_prom3.i.i.i = zext i32 %add.i.i.i to i64
  %shr4.i.i.i = ashr i64 %to.addr.0274, %sh_prom3.i.i.i
  %conv5.i.i.i = trunc i64 %shr4.i.i.i to i32
  %page_mask.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %111, i32 0, i32 13
  %120 = ptrtoint ptr %page_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %page_mask.i.i.i, align 4
  %and6.i.i.i = and i32 %121, %conv5.i.i.i
  %shl.i.i.i = shl nuw i32 %spec.select.i.i.i, 7
  %or.i.i.i = or i32 %shl.i.i.i, %and6.i.i.i
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i.i243 = getelementptr inbounds %struct.onenand_chip, ptr %111, i32 0, i32 12
  %122 = ptrtoint ptr %page_shift.i.i243 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %page_shift.i.i243, align 8
  %sh_prom.i.i244 = zext i32 %123 to i64
  %shr.i.i245 = ashr i64 %to.addr.0274, %sh_prom.i.i244
  %conv.i.i246 = trunc i64 %shr.i.i245 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %blockpage.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ %conv.i.i246, %if.else.i.i ]
  %bufferram_index.i.i = getelementptr inbounds %struct.onenand_chip, ptr %111, i32 0, i32 15
  %124 = ptrtoint ptr %bufferram_index.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bufferram_index.i.i, align 4
  %xor.i.i = xor i32 %125, 1
  %arrayidx.i.i = getelementptr %struct.onenand_chip, ptr %111, i32 0, i32 16, i32 %xor.i.i
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %blockpage.0.i.i)
  %cmp.i.i = icmp eq i32 %127, %blockpage.0.i.i
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.onenand_update_bufferram.exit.i_crit_edge

if.end.i.i.onenand_update_bufferram.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %arrayidx.i.i, align 4
  br label %onenand_update_bufferram.exit.i

onenand_update_bufferram.exit.i:                  ; preds = %if.then3.i.i, %if.end.i.i.onenand_update_bufferram.exit.i_crit_edge
  %129 = ptrtoint ptr %bufferram_index.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bufferram_index.i.i, align 4
  %131 = getelementptr %struct.onenand_chip, ptr %111, i32 0, i32 16, i32 %130
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %131, align 4
  %wait.i = getelementptr inbounds %struct.onenand_chip, ptr %101, i32 0, i32 18
  %133 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wait.i, align 4
  %call2.i = tail call i32 %134(ptr noundef %mtd, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i247, label %onenand_update_bufferram.exit.i.do.end100_crit_edge

onenand_update_bufferram.exit.i.do.end100_crit_edge: ; preds = %onenand_update_bufferram.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end100

if.end.i247:                                      ; preds = %onenand_update_bufferram.exit.i
  %read_bufferram.i = getelementptr inbounds %struct.onenand_chip, ptr %101, i32 0, i32 21
  %135 = ptrtoint ptr %read_bufferram.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read_bufferram.i, align 8
  %137 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %oobsize8, align 4
  %call5.i = tail call i32 %136(ptr noundef %mtd, i32 noundef 65568, ptr noundef %103, i32 noundef 0, i32 noundef %138) #13
  %139 = ptrtoint ptr %oobsize8 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %oobsize8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp40.not.i = icmp eq i32 %140, 0
  br i1 %cmp40.not.i, label %if.end.i247.if.end103_crit_edge, label %if.end.i247.for.body.i_crit_edge

if.end.i247.for.body.i_crit_edge:                 ; preds = %if.end.i247
  br label %for.body.i

if.end.i247.if.end103_crit_edge:                  ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i247.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i247.for.body.i_crit_edge ]
  %arrayidx.i248 = getelementptr i8, ptr %16, i32 %i.041.i
  %141 = ptrtoint ptr %arrayidx.i248 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i248, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %142)
  %cmp7.not.i = icmp eq i8 %142, -1
  br i1 %cmp7.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx11.i = getelementptr i8, ptr %103, i32 %i.041.i
  %143 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp13.not.i = icmp eq i8 %142, %144
  br i1 %cmp13.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.do.end100_crit_edge

land.lhs.true.i.do.end100_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end100

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %140
  br i1 %exitcond.not.i, label %for.inc.i.if.end103_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end103_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

do.end100:                                        ; preds = %land.lhs.true.i.do.end100_crit_edge, %onenand_update_bufferram.exit.i.do.end100_crit_edge
  %retval.0.i249 = phi i32 [ -74, %land.lhs.true.i.do.end100_crit_edge ], [ %call2.i, %onenand_update_bufferram.exit.i.do.end100_crit_edge ]
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i249) #16
  br label %while.end

if.end103:                                        ; preds = %for.inc.i.if.end103_crit_edge, %if.end.i247.if.end103_crit_edge
  %add104 = add i32 %19, %written.0271
  call void @__sanitizer_cov_trace_cmp4(i32 %add104, i32 %3)
  %cmp105 = icmp eq i32 %add104, %3
  br i1 %cmp105, label %if.end103.while.end_crit_edge, label %cleanup

if.end103.while.end_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup:                                          ; preds = %if.end103
  %145 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %writesize, align 4
  %conv110 = zext i32 %146 to i64
  %add111 = add i64 %to.addr.0274, %conv110
  %add.ptr112 = getelementptr i8, ptr %buf.0269, i32 %19
  %cmp46 = icmp ugt i32 %3, %add104
  br i1 %cmp46, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end103.while.end_crit_edge, %do.end100, %do.end91, %if.end43.while.end_crit_edge
  %written.2 = phi i32 [ %written.0271, %do.end100 ], [ %written.0271, %do.end91 ], [ 0, %if.end43.while.end_crit_edge ], [ %add104, %cleanup.while.end_crit_edge ], [ %3, %if.end103.while.end_crit_edge ]
  %ret.2 = phi i32 [ %retval.0.i249, %do.end100 ], [ %call86, %do.end91 ], [ 0, %if.end43.while.end_crit_edge ], [ 0, %if.end103.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %147 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %written.2, ptr %oobretlen, align 4
  br label %cleanup114

cleanup114:                                       ; preds = %while.end, %do.end40, %do.end24
  %retval.0 = phi i32 [ -22, %do.end24 ], [ -22, %do.end40 ], [ %ret.2, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_databytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexonenand_get_size(ptr noundef %mtd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_id, align 4
  %4 = lshr i32 %3, 4
  %and.i = and i32 %4, 15
  %shl = shl nuw nsw i32 16, %and.i
  %5 = zext i32 %shl to i64
  %shl1 = shl nuw nsw i64 %5, 20
  %erase_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %erase_shift, align 4
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %shl1, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %and = lshr i32 %3, 3
  %and.lobit = and i32 %and, 1
  %shr4 = ashr i32 %conv2, %and.lobit
  %sub = add i32 %shr4, -1
  %sub6 = add i32 %7, -1
  %dies = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dies, align 4
  %shl7 = shl i32 %9, 1
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %10 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl7, ptr %numeraseregions, align 8
  %read_word.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %read_word.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_word.i, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 123970
  %call.i = tail call zeroext i16 %12(ptr noundef %add.ptr.i) #13
  %write_word.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %write_word.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_word.i, align 4
  %17 = or i16 %call.i, 256
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr3.i = getelementptr i8, ptr %19, i32 123970
  tail call void %16(i16 noundef zeroext %17, ptr noundef %add.ptr3.i) #13
  %20 = ptrtoint ptr %dies to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.not.i = icmp eq i32 %21, 0
  br i1 %cmp1.not.i, label %entry.flexonenand_get_boundary.exit_crit_edge, label %for.body.lr.ph.i

entry.flexonenand_get_boundary.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_get_boundary.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %command.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %wait.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %die.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %command.i, align 8
  %conv5.i = zext i32 %die.02.i to i64
  %call6.i = tail call i32 %23(ptr noundef %mtd, i32 noundef 102, i64 noundef %conv5.i, i32 noundef 0) #13
  %24 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wait.i, align 4
  %call7.i = tail call i32 %25(ptr noundef %mtd, i32 noundef 13) #13
  %26 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %command.i, align 8
  %call10.i = tail call i32 %27(ptr noundef %mtd, i32 noundef 6533, i64 noundef %conv5.i, i32 noundef 0) #13
  %28 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wait.i, align 4
  %call12.i = tail call i32 %29(ptr noundef %mtd, i32 noundef 21) #13
  %30 = ptrtoint ptr %read_word.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_word.i, align 8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %add.ptr15.i = getelementptr i8, ptr %33, i32 1024
  %call16.i = tail call zeroext i16 %31(ptr noundef %add.ptr15.i) #13
  %conv17.i = zext i16 %call16.i to i32
  %shr.mask.i = and i32 %conv17.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.mask.i)
  %cmp18.i = icmp eq i32 %shr.mask.i, 49152
  %.str.102..str.101.i = select i1 %cmp18.i, ptr @.str.102, ptr @.str.101
  %and.i223 = and i32 %conv17.i, 1023
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 %die.02.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i223, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %command.i, align 8
  %call21.i = tail call i32 %36(ptr noundef %mtd, i32 noundef 240, i64 noundef 0, i32 noundef 0) #13
  %37 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wait.i, align 4
  %call23.i = tail call i32 %38(ptr noundef %mtd, i32 noundef 23) #13
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %die.02.i, i32 noundef %40, ptr noundef nonnull %.str.102..str.101.i) #16
  %inc.i = add nuw i32 %die.02.i, 1
  %41 = ptrtoint ptr %dies to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dies, align 4
  %cmp.i = icmp ult i32 %inc.i, %42
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.flexonenand_get_boundary.exit_crit_edge

for.body.i.flexonenand_get_boundary.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_get_boundary.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

flexonenand_get_boundary.exit:                    ; preds = %for.body.i.flexonenand_get_boundary.exit_crit_edge, %entry.flexonenand_get_boundary.exit_crit_edge
  %43 = ptrtoint ptr %write_word.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_word.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %add.ptr30.i = getelementptr i8, ptr %46, i32 123970
  tail call void %44(i16 noundef zeroext %call.i, ptr noundef %add.ptr30.i) #13
  %47 = ptrtoint ptr %dies to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp224.not = icmp eq i32 %48, 0
  br i1 %cmp224.not, label %flexonenand_get_boundary.exit.for.end_crit_edge, label %for.body.lr.ph

flexonenand_get_boundary.exit.for.end_crit_edge:  ; preds = %flexonenand_get_boundary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %flexonenand_get_boundary.exit
  %eraseregions35 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %die.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %inc74, %for.inc.for.body_crit_edge ]
  %ofs.0229 = phi i64 [ 0, %for.body.lr.ph ], [ %ofs.2, %for.inc.for.body_crit_edge ]
  %i.0227 = phi i32 [ -1, %for.body.lr.ph ], [ %i.2, %for.inc.for.body_crit_edge ]
  %eraseshift.0225 = phi i32 [ %sub6, %for.body.lr.ph ], [ %eraseshift.2, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %die.0230)
  %tobool11.not = icmp eq i32 %die.0230, 0
  br i1 %tobool11.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %sub12 = add i32 %die.0230, -1
  %arrayidx = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 %sub12
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub)
  %cmp13.not = icmp eq i32 %50, %sub
  br i1 %cmp13.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %inc = add i32 %i.0227, 1
  %51 = ptrtoint ptr %eraseregions35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eraseregions35, align 4
  %arrayidx15 = getelementptr %struct.mtd_erase_region_info, ptr %52, i32 %inc
  %53 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %ofs.0229, ptr %arrayidx15, align 8
  %shl16 = shl nuw i32 1, %eraseshift.0225
  %54 = load ptr, ptr %eraseregions35, align 4
  %erasesize = getelementptr %struct.mtd_erase_region_info, ptr %54, i32 %inc, i32 1
  %55 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl16, ptr %erasesize, align 8
  %arrayidx20 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 %die.0230
  %56 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx20, align 4
  %add = add i32 %57, 1
  %58 = load ptr, ptr %eraseregions35, align 4
  %numblocks = getelementptr %struct.mtd_erase_region_info, ptr %58, i32 %inc, i32 2
  %59 = ptrtoint ptr %numblocks to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add, ptr %numblocks, align 4
  %60 = load ptr, ptr %eraseregions35, align 4
  %numblocks25 = getelementptr %struct.mtd_erase_region_info, ptr %60, i32 %inc, i32 2
  %61 = ptrtoint ptr %numblocks25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %numblocks25, align 4
  %shl26 = shl i32 %62, %eraseshift.0225
  %inc29 = add i32 %eraseshift.0225, 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %numeraseregions, align 8
  %sub31 = add i32 %64, -1
  store i32 %sub31, ptr %numeraseregions, align 8
  %arrayidx33 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 %die.0230
  %65 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %66, 1
  %67 = ptrtoint ptr %eraseregions35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %eraseregions35, align 4
  %numblocks37 = getelementptr %struct.mtd_erase_region_info, ptr %68, i32 %i.0227, i32 2
  %69 = ptrtoint ptr %numblocks37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %numblocks37, align 4
  %add38 = add i32 %add34, %70
  store i32 %add38, ptr %numblocks37, align 4
  %71 = load i32, ptr %arrayidx33, align 4
  %add41 = add i32 %71, 1
  %sub42 = add i32 %eraseshift.0225, -1
  %shl43 = shl i32 %add41, %sub42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %eraseshift.1 = phi i32 [ %inc29, %if.then ], [ %eraseshift.0225, %if.else ]
  %i.1 = phi i32 [ %inc, %if.then ], [ %i.0227, %if.else ]
  %conv27.pn.in = phi i32 [ %shl26, %if.then ], [ %shl43, %if.else ]
  %conv27.pn = zext i32 %conv27.pn.in to i64
  %ofs.1 = add i64 %ofs.0229, %conv27.pn
  %arrayidx47 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 %die.0230
  %72 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %sub)
  %cmp48.not = icmp eq i32 %73, %sub
  br i1 %cmp48.not, label %if.else70, label %if.then50

if.then50:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %inc51 = add i32 %i.1, 1
  %74 = ptrtoint ptr %eraseregions35 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %eraseregions35, align 4
  %arrayidx53 = getelementptr %struct.mtd_erase_region_info, ptr %75, i32 %inc51
  %76 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %ofs.1, ptr %arrayidx53, align 8
  %shl55 = shl nuw i32 1, %eraseshift.1
  %77 = load ptr, ptr %eraseregions35, align 4
  %erasesize58 = getelementptr %struct.mtd_erase_region_info, ptr %77, i32 %inc51, i32 1
  %78 = ptrtoint ptr %erasesize58 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %shl55, ptr %erasesize58, align 8
  %79 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx47, align 4
  %xor = xor i32 %80, %sub
  %81 = load ptr, ptr %eraseregions35, align 4
  %numblocks63 = getelementptr %struct.mtd_erase_region_info, ptr %81, i32 %inc51, i32 2
  %82 = ptrtoint ptr %numblocks63 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %xor, ptr %numblocks63, align 4
  %83 = load ptr, ptr %eraseregions35, align 4
  %numblocks66 = getelementptr %struct.mtd_erase_region_info, ptr %83, i32 %inc51, i32 2
  %84 = ptrtoint ptr %numblocks66 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %numblocks66, align 4
  %shl67 = shl i32 %85, %eraseshift.1
  %conv68 = zext i32 %shl67 to i64
  %add69 = add i64 %ofs.1, %conv68
  %dec = add i32 %eraseshift.1, -1
  br label %for.inc

if.else70:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %numeraseregions, align 8
  %sub72 = add i32 %87, -1
  store i32 %sub72, ptr %numeraseregions, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else70, %if.then50
  %eraseshift.2 = phi i32 [ %dec, %if.then50 ], [ %eraseshift.1, %if.else70 ]
  %i.2 = phi i32 [ %inc51, %if.then50 ], [ %i.1, %if.else70 ]
  %ofs.2 = phi i64 [ %add69, %if.then50 ], [ %ofs.1, %if.else70 ]
  %inc74 = add nuw i32 %die.0230, 1
  %88 = ptrtoint ptr %dies to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dies, align 4
  %cmp = icmp ult i32 %inc74, %89
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %flexonenand_get_boundary.exit.for.end_crit_edge
  %90 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %erase_shift, align 4
  %shl76 = shl nuw i32 1, %91
  %erasesize77 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %92 = ptrtoint ptr %erasesize77 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %shl76, ptr %erasesize77, align 8
  %93 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp79 = icmp eq i32 %94, 1
  br i1 %cmp79, label %if.then81, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %shr83 = lshr i32 %shl76, 1
  %95 = ptrtoint ptr %erasesize77 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shr83, ptr %erasesize77, align 8
  br label %do.end

do.end:                                           ; preds = %if.then81, %for.end.do.end_crit_edge
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %94) #16
  %96 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp89233 = icmp sgt i32 %97, 0
  br i1 %cmp89233, label %do.end94.lr.ph, label %do.end.for.end109_crit_edge

do.end.for.end109_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end109

do.end94.lr.ph:                                   ; preds = %do.end
  %eraseregions96 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  br label %do.end94

do.end94:                                         ; preds = %do.end94.do.end94_crit_edge, %do.end94.lr.ph
  %i.3234 = phi i32 [ 0, %do.end94.lr.ph ], [ %inc108, %do.end94.do.end94_crit_edge ]
  %98 = ptrtoint ptr %eraseregions96 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %eraseregions96, align 4
  %arrayidx97 = getelementptr %struct.mtd_erase_region_info, ptr %99, i32 %i.3234
  %100 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx97, align 8
  %conv99 = trunc i64 %101 to i32
  %erasesize102 = getelementptr %struct.mtd_erase_region_info, ptr %99, i32 %i.3234, i32 1
  %102 = ptrtoint ptr %erasesize102 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %erasesize102, align 8
  %numblocks105 = getelementptr %struct.mtd_erase_region_info, ptr %99, i32 %i.3234, i32 2
  %104 = ptrtoint ptr %numblocks105 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %numblocks105, align 4
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %conv99, i32 noundef %103, i32 noundef %105) #16
  %inc108 = add nuw nsw i32 %i.3234, 1
  %106 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %numeraseregions, align 8
  %cmp89 = icmp slt i32 %inc108, %107
  br i1 %cmp89, label %do.end94.do.end94_crit_edge, label %do.end94.for.end109_crit_edge

do.end94.for.end109_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end109

do.end94.do.end94_crit_edge:                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end94

for.end109:                                       ; preds = %do.end94.for.end109_crit_edge, %do.end.for.end109_crit_edge
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %108 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 0, ptr %size, align 8
  %109 = ptrtoint ptr %dies to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp112235.not = icmp eq i32 %110, 0
  br i1 %cmp112235.not, label %for.end109.for.end137_crit_edge, label %for.body114.lr.ph

for.end109.for.end137_crit_edge:                  ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end137

for.body114.lr.ph:                                ; preds = %for.end109
  %conv115 = sext i32 %shr4 to i64
  br label %for.body114

for.body114:                                      ; preds = %for.body114.for.body114_crit_edge, %for.body114.lr.ph
  %die.1236 = phi i32 [ 0, %for.body114.lr.ph ], [ %inc136, %for.body114.for.body114_crit_edge ]
  %111 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %erase_shift, align 4
  %sh_prom117 = zext i32 %112 to i64
  %shl118 = shl i64 %conv115, %sh_prom117
  %arrayidx119 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 3, i32 %die.1236
  %113 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %shl118, ptr %arrayidx119, align 8
  %arrayidx121 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 %die.1236
  %114 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %115, 1
  %conv123 = zext i32 %add122 to i64
  %116 = load i32, ptr %erase_shift, align 4
  %sub125 = add i32 %116, -1
  %sh_prom126 = zext i32 %sub125 to i64
  %shl127 = shl i64 %conv123, %sh_prom126
  %sub130 = sub i64 %shl118, %shl127
  store i64 %sub130, ptr %arrayidx119, align 8
  %117 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %size, align 8
  %add134 = add i64 %sub130, %118
  store i64 %add134, ptr %size, align 8
  %inc136 = add nuw i32 %die.1236, 1
  %119 = ptrtoint ptr %dies to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dies, align 4
  %cmp112 = icmp ult i32 %inc136, %120
  br i1 %cmp112, label %for.body114.for.body114_crit_edge, label %for.body114.for.end137_crit_edge

for.body114.for.end137_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end137

for.body114.for.body114_crit_edge:                ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body114

for.end137:                                       ; preds = %for.body114.for.end137_crit_edge, %for.end109.for.end137_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @flexonenand_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %section)
  %cmp = icmp sgt i32 %section, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 6
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @flexonenand_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %section)
  %cmp = icmp sgt i32 %section, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 2
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @onenand_ooblayout_128_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %section)
  %cmp = icmp sgt i32 %section, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 7
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 9, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @onenand_ooblayout_128_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %section)
  %cmp = icmp sgt i32 %section, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 2
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @onenand_ooblayout_32_64_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 8
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @onenand_ooblayout_32_64_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  %2 = lshr i32 %1, 4
  %mul = and i32 %2, 268435454
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %section)
  %cmp.not = icmp sgt i32 %mul, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %section, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %mul3 = shl i32 %section, 4
  %add = add i32 %mul3, -2
  %add4 = or i32 %mul3, 2
  %add.sink = select i1 %tobool.not, i32 %add4, i32 %add
  %3 = xor i32 %and, 3
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.sink, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_mlc_read_ops_nolock(ptr noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %len1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %ooblen2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %4 = ptrtoint ptr %ooblen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ooblen2, align 4
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = ptrtoint ptr %datbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %datbuf, align 4
  %oobbuf3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %8 = ptrtoint ptr %oobbuf3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oobbuf3, align 4
  %writesize4 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %writesize4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_mlc_read_ops_nolock.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_mlc_read_ops_nolock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %from to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_mlc_read_ops_nolock.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.124, i32 noundef %conv, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  %oobavail.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %cond.in.i = select i1 %cmp.i, ptr %oobavail.i, ptr %oobsize.i
  %14 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %conv11 = zext i32 %3 to i64
  %add = add i64 %conv11, %from
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %16)
  %cmp = icmp ugt i64 %add, %16
  br i1 %cmp, label %do.end16, label %if.end19

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124) #16
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %17 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %retlen, align 4
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %18 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %oobretlen, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %ecc_stats = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %19 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %stats.sroa.0.0.copyload = load i32, ptr %ecc_stats, align 4
  %stats.sroa.5.0.ecc_stats.sroa_idx = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %20 = ptrtoint ptr %stats.sroa.5.0.ecc_stats.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %stats.sroa.5.0.copyload = load i32, ptr %stats.sroa.5.0.ecc_stats.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20216.not = icmp eq i32 %3, 0
  br i1 %cmp20216.not, label %if.end19.if.end97_crit_edge, label %while.body.lr.ph

if.end19.if.end97_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

while.body.lr.ph:                                 ; preds = %if.end19
  %21 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oobsize.i, align 4
  %sub = add i32 %22, -1
  %23 = trunc i64 %from to i32
  %conv10 = and i32 %sub, %23
  %sub28 = add i32 %11, -1
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %read_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %if.end89.while.body_crit_edge, %while.body.lr.ph
  %from.addr.0225 = phi i64 [ %from, %while.body.lr.ph ], [ %add91, %if.end89.while.body_crit_edge ]
  %oobcolumn.0224 = phi i32 [ %conv10, %while.body.lr.ph ], [ %oobcolumn.1, %if.end89.while.body_crit_edge ]
  %oobread.0222 = phi i32 [ 0, %while.body.lr.ph ], [ %oobread.1, %if.end89.while.body_crit_edge ]
  %read.0220 = phi i32 [ 0, %while.body.lr.ph ], [ %add85, %if.end89.while.body_crit_edge ]
  %oobbuf.0218 = phi ptr [ %9, %while.body.lr.ph ], [ %oobbuf.1, %if.end89.while.body_crit_edge ]
  %buf.0217 = phi ptr [ %7, %while.body.lr.ph ], [ %add.ptr92, %if.end89.while.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1146, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %sub24 = sub i32 %3, %read.0220
  %24 = tail call i32 @llvm.smin.i32(i32 %11, i32 %sub24)
  %25 = trunc i64 %from.addr.0225 to i32
  %conv31 = and i32 %sub28, %25
  %add32 = add i32 %conv31, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %11)
  %cmp33 = icmp sgt i32 %add32, %11
  %sub36 = sub i32 %11, %conv31
  %thislen.0 = select i1 %cmp33, i32 %sub36, i32 %24
  %call38 = tail call fastcc i32 @onenand_check_bufferram(ptr noundef %mtd, i64 noundef %from.addr.0225)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %while.body.if.end63_crit_edge

while.body.if.end63_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then40:                                        ; preds = %while.body
  %26 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %command, align 8
  %call41 = tail call i32 %27(ptr noundef %mtd, i32 noundef 0, i64 noundef %from.addr.0225, i32 noundef %11) #13
  %28 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wait, align 4
  %call42 = tail call i32 %29(ptr noundef %mtd, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then40.if.end52_crit_edge, label %if.then50, !prof !409

if.then40.if.end52_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then50:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %call51 = tail call fastcc i32 @onenand_recover_lsb(ptr noundef %mtd, i64 noundef %from.addr.0225, i32 noundef %call42)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then40.if.end52_crit_edge
  %ret.1 = phi i32 [ %call51, %if.then50 ], [ 0, %if.then40.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool53.not.not = icmp eq i32 %ret.1, 0
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %options.i, align 4
  %and.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 11
  %34 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %35 to i64
  %shr.i.i = ashr i64 %from.addr.0225, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 14
  %36 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %37 to i64
  %and2.i.i = and i64 %from.addr.0225, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 12
  %38 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %39, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %from.addr.0225, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 13
  %40 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %41, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 12
  %42 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %43 to i64
  %shr.i = ashr i64 %from.addr.0225, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %31, i32 0, i32 15
  %44 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %45, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %31, i32 0, i32 16, i32 %xor.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %blockpage.0.i)
  %cmp.i200 = icmp eq i32 %47, %blockpage.0.i
  br i1 %cmp.i200, label %if.then3.i, label %if.end.i.onenand_update_bufferram.exit_crit_edge

if.end.i.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i.onenand_update_bufferram.exit_crit_edge
  %49 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bufferram_index.i, align 4
  %spec.select.i = select i1 %tobool53.not.not, i32 %blockpage.0.i, i32 -1
  %51 = getelementptr %struct.onenand_chip, ptr %31, i32 0, i32 16, i32 %50
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i, ptr %51, align 4
  %53 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %ret.1, label %while.end [
    i32 -74, label %onenand_update_bufferram.exit.if.end63_crit_edge
    i32 0, label %onenand_update_bufferram.exit.if.end63_crit_edge241
  ]

onenand_update_bufferram.exit.if.end63_crit_edge241: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

onenand_update_bufferram.exit.if.end63_crit_edge: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end63:                                         ; preds = %onenand_update_bufferram.exit.if.end63_crit_edge, %onenand_update_bufferram.exit.if.end63_crit_edge241, %while.body.if.end63_crit_edge
  %54 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_bufferram, align 8
  %call64 = tail call i32 %55(ptr noundef %mtd, i32 noundef 1024, ptr noundef %buf.0217, i32 noundef %conv31, i32 noundef %thislen.0) #13
  %tobool65.not = icmp eq ptr %oobbuf.0218, null
  br i1 %tobool65.not, label %if.end63.if.end84_crit_edge, label %if.then66

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then66:                                        ; preds = %if.end63
  %sub67 = sub i32 %cond.i, %oobcolumn.0224
  %sub68 = sub i32 %5, %oobread.0222
  %56 = tail call i32 @llvm.smin.i32(i32 %sub67, i32 %sub68)
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp76 = icmp eq i32 %58, 1
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %read_bufferram.i = getelementptr inbounds %struct.onenand_chip, ptr %60, i32 0, i32 21
  %61 = ptrtoint ptr %read_bufferram.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_bufferram.i, align 8
  %oob_buf.i = getelementptr inbounds %struct.onenand_chip, ptr %60, i32 0, i32 37
  %63 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %oob_buf.i, align 4
  %65 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %oobsize.i, align 4
  %call.i205 = tail call i32 %62(ptr noundef %mtd, i32 noundef 65568, ptr noundef %64, i32 noundef 0, i32 noundef %66) #13
  %67 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %oob_buf.i, align 4
  %call2.i = tail call i32 @mtd_ooblayout_get_databytes(ptr noundef %mtd, ptr noundef nonnull %oobbuf.0218, ptr noundef %68, i32 noundef %oobcolumn.0224, i32 noundef %56) #13
  br label %if.end82

if.else:                                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_bufferram, align 8
  %call81 = tail call i32 %70(ptr noundef %mtd, i32 noundef 65568, ptr noundef nonnull %oobbuf.0218, i32 noundef %oobcolumn.0224, i32 noundef %56) #13
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then78
  %add83 = add i32 %56, %oobread.0222
  %add.ptr = getelementptr i8, ptr %oobbuf.0218, i32 %56
  br label %if.end84

if.end84:                                         ; preds = %if.end82, %if.end63.if.end84_crit_edge
  %oobbuf.1 = phi ptr [ %add.ptr, %if.end82 ], [ null, %if.end63.if.end84_crit_edge ]
  %oobread.1 = phi i32 [ %add83, %if.end82 ], [ %oobread.0222, %if.end63.if.end84_crit_edge ]
  %oobcolumn.1 = phi i32 [ 0, %if.end82 ], [ %oobcolumn.0224, %if.end63.if.end84_crit_edge ]
  %add85 = add i32 %thislen.0, %read.0220
  call void @__sanitizer_cov_trace_cmp4(i32 %add85, i32 %3)
  %cmp86 = icmp eq i32 %add85, %3
  br i1 %cmp86, label %if.end84.if.end97_crit_edge, label %if.end89

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.end89:                                         ; preds = %if.end84
  %conv90 = sext i32 %thislen.0 to i64
  %add91 = add i64 %from.addr.0225, %conv90
  %add.ptr92 = getelementptr i8, ptr %buf.0217, i32 %thislen.0
  %cmp20 = icmp ugt i32 %3, %add85
  br i1 %cmp20, label %if.end89.while.body_crit_edge, label %if.end89.if.end97_crit_edge

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.end89.while.body_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  %retlen93 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %71 = ptrtoint ptr %retlen93 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %read.0220, ptr %retlen93, align 4
  %oobretlen94 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %72 = ptrtoint ptr %oobretlen94 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %oobread.0222, ptr %oobretlen94, align 4
  br label %cleanup

if.end97:                                         ; preds = %if.end89.if.end97_crit_edge, %if.end84.if.end97_crit_edge, %if.end19.if.end97_crit_edge
  %read.1.ph = phi i32 [ 0, %if.end19.if.end97_crit_edge ], [ %add85, %if.end89.if.end97_crit_edge ], [ %3, %if.end84.if.end97_crit_edge ]
  %oobread.2.ph = phi i32 [ 0, %if.end19.if.end97_crit_edge ], [ %oobread.1, %if.end84.if.end97_crit_edge ], [ %oobread.1, %if.end89.if.end97_crit_edge ]
  %retlen93210 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %73 = ptrtoint ptr %retlen93210 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %read.1.ph, ptr %retlen93210, align 4
  %oobretlen94211 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %74 = ptrtoint ptr %oobretlen94211 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %oobread.2.ph, ptr %oobretlen94211, align 4
  %75 = ptrtoint ptr %stats.sroa.5.0.ecc_stats.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %stats.sroa.5.0.ecc_stats.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %stats.sroa.5.0.copyload)
  %tobool101.not = icmp eq i32 %76, %stats.sroa.5.0.copyload
  br i1 %tobool101.not, label %if.end103, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ecc_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %stats.sroa.0.0.copyload)
  %cmp106.not = icmp ne i32 %78, %stats.sroa.0.0.copyload
  %cond108 = zext i1 %cmp106.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.end97.cleanup_crit_edge, %while.end, %do.end16
  %retval.0 = phi i32 [ -22, %do.end16 ], [ %cond108, %if.end103 ], [ %ret.1, %while.end ], [ -74, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_read_ops_nolock(ptr noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %len1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %ooblen2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %4 = ptrtoint ptr %ooblen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ooblen2, align 4
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = ptrtoint ptr %datbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %datbuf, align 4
  %oobbuf3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %8 = ptrtoint ptr %oobbuf3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oobbuf3, align 4
  %writesize4 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %writesize4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_read_ops_nolock.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_read_ops_nolock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %from to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_read_ops_nolock.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, i32 noundef %conv, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  %oobavail.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %cond.in.i = select i1 %cmp.i, ptr %oobavail.i, ptr %oobsize.i
  %14 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %15 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oobsize.i, align 4
  %sub = add i32 %16, -1
  %17 = trunc i64 %from to i32
  %conv10 = and i32 %sub, %17
  %conv11 = zext i32 %3 to i64
  %add = add i64 %conv11, %from
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp = icmp ugt i64 %add, %19
  br i1 %cmp, label %do.end16, label %if.end19

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.126) #16
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %20 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %retlen, align 4
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %21 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %oobretlen, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %ecc_stats = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %22 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %22)
  %stats.sroa.0.0.copyload = load i32, ptr %ecc_stats, align 4
  %stats.sroa.5.0.ecc_stats.sroa_idx = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %23 = ptrtoint ptr %stats.sroa.5.0.ecc_stats.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %stats.sroa.5.0.copyload = load i32, ptr %stats.sroa.5.0.ecc_stats.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %if.end19.while.body.lr.ph_crit_edge, label %if.then22

if.end19.while.body.lr.ph_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

if.then22:                                        ; preds = %if.end19
  %call23 = tail call fastcc i32 @onenand_check_bufferram(ptr noundef %mtd, i64 noundef %from)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then22.while.body.lr.ph_crit_edge

if.then22.while.body.lr.ph_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

if.then25:                                        ; preds = %if.then22
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %command, align 8
  %call26 = tail call i32 %25(ptr noundef %mtd, i32 noundef 0, i64 noundef %from, i32 noundef %11) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wait, align 4
  %call27 = tail call i32 %27(ptr noundef %mtd, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not.not = icmp eq i32 %call27, 0
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %options.i, align 4
  %and.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %29, i32 0, i32 11
  %32 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %33 to i64
  %shr.i.i = ashr i64 %from, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %29, i32 0, i32 14
  %34 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %35 to i64
  %and2.i.i = and i64 %conv1.i.i, %from
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %29, i32 0, i32 12
  %36 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %37, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %from, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %29, i32 0, i32 13
  %38 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %39, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %29, i32 0, i32 12
  %40 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %41 to i64
  %shr.i = ashr i64 %from, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %29, i32 0, i32 15
  %42 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %43, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %29, i32 0, i32 16, i32 %xor.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %blockpage.0.i)
  %cmp.i270 = icmp eq i32 %45, %blockpage.0.i
  br i1 %cmp.i270, label %if.then3.i, label %if.end.i.onenand_update_bufferram.exit_crit_edge

if.end.i.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i.onenand_update_bufferram.exit_crit_edge
  %47 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bufferram_index.i, align 4
  %spec.select.i = select i1 %tobool28.not.not, i32 %blockpage.0.i, i32 -1
  %49 = getelementptr %struct.onenand_chip, ptr %29, i32 0, i32 16, i32 %48
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.select.i, ptr %49, align 4
  %51 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %call27, label %onenand_update_bufferram.exit.if.then141.critedge_crit_edge [
    i32 -74, label %onenand_update_bufferram.exit.while.body.lr.ph_crit_edge
    i32 0, label %onenand_update_bufferram.exit.while.body.lr.ph_crit_edge349
  ]

onenand_update_bufferram.exit.while.body.lr.ph_crit_edge349: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

onenand_update_bufferram.exit.while.body.lr.ph_crit_edge: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

onenand_update_bufferram.exit.if.then141.critedge_crit_edge: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141.critedge

while.body.lr.ph:                                 ; preds = %onenand_update_bufferram.exit.while.body.lr.ph_crit_edge, %onenand_update_bufferram.exit.while.body.lr.ph_crit_edge349, %if.then22.while.body.lr.ph_crit_edge, %if.end19.while.body.lr.ph_crit_edge
  %sub41 = add i32 %11, -1
  %conv44 = and i32 %sub41, %17
  %52 = tail call i32 @llvm.smin.i32(i32 %11, i32 %3)
  %add45 = add i32 %conv44, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %11)
  %cmp46 = icmp sgt i32 %add45, %11
  %sub49 = sub i32 %11, %conv44
  %thislen.0 = select i1 %cmp46, i32 %sub49, i32 %52
  %command60 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %chipsize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 4
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %bufferram_index = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %read_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 21
  %wait129 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.lr.ph
  %from.addr.0333 = phi i64 [ %from, %while.body.lr.ph ], [ %add55, %while.body.backedge ]
  %boundary.0332 = phi i32 [ 0, %while.body.lr.ph ], [ %boundary.2, %while.body.backedge ]
  %oobcolumn.0331 = phi i32 [ %conv10, %while.body.lr.ph ], [ %oobcolumn.1, %while.body.backedge ]
  %oobread.0330 = phi i32 [ 0, %while.body.lr.ph ], [ %oobread.1, %while.body.backedge ]
  %thislen.1329 = phi i32 [ %thislen.0, %while.body.lr.ph ], [ %88, %while.body.backedge ]
  %column.0328 = phi i32 [ %conv44, %while.body.lr.ph ], [ 0, %while.body.backedge ]
  %read.0327 = phi i32 [ 0, %while.body.lr.ph ], [ %add56, %while.body.backedge ]
  %oobbuf.0325 = phi ptr [ %9, %while.body.lr.ph ], [ %oobbuf.1, %while.body.backedge ]
  %buf.0324 = phi ptr [ %7, %while.body.lr.ph ], [ %add.ptr118, %while.body.backedge ]
  %conv54 = sext i32 %thislen.1329 to i64
  %add55 = add i64 %from.addr.0333, %conv54
  %add56 = add i32 %thislen.1329, %read.0327
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add56)
  %cmp57 = icmp ugt i32 %3, %add56
  br i1 %cmp57, label %if.then59, label %while.body.if.end75_crit_edge

while.body.if.end75_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then59:                                        ; preds = %while.body
  %53 = ptrtoint ptr %command60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %command60, align 8
  %call61 = tail call i32 %54(ptr noundef %mtd, i32 noundef 0, i64 noundef %add55, i32 noundef %11) #13
  %55 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %device_id, align 4
  %and62 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then59.if.end74_crit_edge, label %land.lhs.true

if.then59.if.end74_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

land.lhs.true:                                    ; preds = %if.then59
  %57 = ptrtoint ptr %chipsize to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chipsize, align 8
  %shr = lshr i32 %58, 1
  %conv64 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add55, i64 %conv64)
  %cmp65 = icmp eq i64 %add55, %conv64
  br i1 %cmp65, label %if.then73, label %land.lhs.true.if.end74_crit_edge, !prof !408

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_word, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %62, i32 123394
  tail call void %60(i16 noundef zeroext 0, ptr noundef %add.ptr) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %land.lhs.true.if.end74_crit_edge, %if.then59.if.end74_crit_edge
  %boundary.1 = phi i32 [ 1, %if.then73 ], [ 0, %land.lhs.true.if.end74_crit_edge ], [ 0, %if.then59.if.end74_crit_edge ]
  %63 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bufferram_index, align 4
  %xor = xor i32 %64, 1
  store i32 %xor, ptr %bufferram_index, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %while.body.if.end75_crit_edge
  %boundary.2 = phi i32 [ %boundary.1, %if.end74 ], [ %boundary.0332, %while.body.if.end75_crit_edge ]
  %65 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_bufferram, align 8
  %call76 = tail call i32 %66(ptr noundef %mtd, i32 noundef 1024, ptr noundef %buf.0324, i32 noundef %column.0328, i32 noundef %thislen.1329) #13
  %tobool77.not = icmp eq ptr %oobbuf.0325, null
  br i1 %tobool77.not, label %if.end75.if.end98_crit_edge, label %if.then78

if.end75.if.end98_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then78:                                        ; preds = %if.end75
  %sub79 = sub i32 %cond.i, %oobcolumn.0331
  %sub80 = sub i32 %5, %oobread.0330
  %67 = tail call i32 @llvm.smin.i32(i32 %sub79, i32 %sub80)
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp88 = icmp eq i32 %69, 1
  br i1 %cmp88, label %if.then90, label %if.else92

if.then90:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %read_bufferram.i = getelementptr inbounds %struct.onenand_chip, ptr %71, i32 0, i32 21
  %72 = ptrtoint ptr %read_bufferram.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_bufferram.i, align 8
  %oob_buf.i = getelementptr inbounds %struct.onenand_chip, ptr %71, i32 0, i32 37
  %74 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %oob_buf.i, align 4
  %76 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %oobsize.i, align 4
  %call.i = tail call i32 %73(ptr noundef %mtd, i32 noundef 65568, ptr noundef %75, i32 noundef 0, i32 noundef %77) #13
  %78 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %oob_buf.i, align 4
  %call2.i = tail call i32 @mtd_ooblayout_get_databytes(ptr noundef %mtd, ptr noundef nonnull %oobbuf.0325, ptr noundef %79, i32 noundef %oobcolumn.0331, i32 noundef %67) #13
  br label %if.end95

if.else92:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read_bufferram, align 8
  %call94 = tail call i32 %81(ptr noundef %mtd, i32 noundef 65568, ptr noundef nonnull %oobbuf.0325, i32 noundef %oobcolumn.0331, i32 noundef %67) #13
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %if.then90
  %add96 = add i32 %67, %oobread.0330
  %add.ptr97 = getelementptr i8, ptr %oobbuf.0325, i32 %67
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %if.end75.if.end98_crit_edge
  %oobbuf.1 = phi ptr [ %add.ptr97, %if.end95 ], [ null, %if.end75.if.end98_crit_edge ]
  %oobread.1 = phi i32 [ %add96, %if.end95 ], [ %oobread.0330, %if.end75.if.end98_crit_edge ]
  %oobcolumn.1 = phi i32 [ 0, %if.end95 ], [ %oobcolumn.0331, %if.end75.if.end98_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add56)
  %cmp100 = icmp eq i32 %3, %add56
  br i1 %cmp100, label %if.end142, label %if.end103

if.end103:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boundary.2)
  %tobool104.not = icmp eq i32 %boundary.2, 0
  br i1 %tobool104.not, label %if.end103.if.end115_crit_edge, label %if.then111, !prof !409

if.end103.if.end115_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then111:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_word, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  %add.ptr114 = getelementptr i8, ptr %85, i32 123394
  tail call void %83(i16 noundef zeroext -32768, ptr noundef %add.ptr114) #13
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.end103.if.end115_crit_edge
  %86 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bufferram_index, align 4
  %xor117 = xor i32 %87, 1
  store i32 %xor117, ptr %bufferram_index, align 4
  %add.ptr118 = getelementptr i8, ptr %buf.0324, i32 %thislen.1329
  %sub119 = sub i32 %3, %add56
  %88 = tail call i32 @llvm.smin.i32(i32 %11, i32 %sub119)
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1310, i32 noundef 0) #13
  %call.i275 = tail call i32 @__cond_resched() #13
  %89 = ptrtoint ptr %wait129 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wait129, align 4
  %call130 = tail call i32 %90(ptr noundef %mtd, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not.not = icmp eq i32 %call130, 0
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  %options.i277 = getelementptr inbounds %struct.onenand_chip, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %options.i277 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %options.i277, align 4
  %and.i278 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278)
  %tobool.not.i279 = icmp eq i32 %and.i278, 0
  br i1 %tobool.not.i279, label %if.else.i305, label %if.then.i300

if.then.i300:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i280 = getelementptr inbounds %struct.onenand_chip, ptr %92, i32 0, i32 11
  %95 = ptrtoint ptr %erase_shift.i.i280 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %erase_shift.i.i280, align 4
  %sh_prom.i.i281 = zext i32 %96 to i64
  %shr.i.i282 = ashr i64 %add55, %sh_prom.i.i281
  %conv.i.i283 = trunc i64 %shr.i.i282 to i32
  %and.i.i284 = and i32 %conv.i.i283, 33554430
  %writesize.i.i285 = getelementptr inbounds %struct.onenand_chip, ptr %92, i32 0, i32 14
  %97 = ptrtoint ptr %writesize.i.i285 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %writesize.i.i285, align 8
  %conv1.i.i286 = zext i32 %98 to i64
  %and2.i.i287 = and i64 %add55, %conv1.i.i286
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i287)
  %tobool.not.i.i288 = icmp ne i64 %and2.i.i287, 0
  %masksel.i.i289 = zext i1 %tobool.not.i.i288 to i32
  %spec.select.i.i290 = or i32 %and.i.i284, %masksel.i.i289
  %page_shift.i.i291 = getelementptr inbounds %struct.onenand_chip, ptr %92, i32 0, i32 12
  %99 = ptrtoint ptr %page_shift.i.i291 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %page_shift.i.i291, align 8
  %add.i.i292 = add i32 %100, 1
  %sh_prom3.i.i293 = zext i32 %add.i.i292 to i64
  %shr4.i.i294 = ashr i64 %add55, %sh_prom3.i.i293
  %conv5.i.i295 = trunc i64 %shr4.i.i294 to i32
  %page_mask.i.i296 = getelementptr inbounds %struct.onenand_chip, ptr %92, i32 0, i32 13
  %101 = ptrtoint ptr %page_mask.i.i296 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %page_mask.i.i296, align 4
  %and6.i.i297 = and i32 %102, %conv5.i.i295
  %shl.i.i298 = shl nuw i32 %spec.select.i.i290, 7
  %or.i.i299 = or i32 %shl.i.i298, %and6.i.i297
  br label %if.end.i311

if.else.i305:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i301 = getelementptr inbounds %struct.onenand_chip, ptr %92, i32 0, i32 12
  %103 = ptrtoint ptr %page_shift.i301 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %page_shift.i301, align 8
  %sh_prom.i302 = zext i32 %104 to i64
  %shr.i303 = ashr i64 %add55, %sh_prom.i302
  %conv.i304 = trunc i64 %shr.i303 to i32
  br label %if.end.i311

if.end.i311:                                      ; preds = %if.else.i305, %if.then.i300
  %blockpage.0.i306 = phi i32 [ %or.i.i299, %if.then.i300 ], [ %conv.i304, %if.else.i305 ]
  %bufferram_index.i307 = getelementptr inbounds %struct.onenand_chip, ptr %92, i32 0, i32 15
  %105 = ptrtoint ptr %bufferram_index.i307 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bufferram_index.i307, align 4
  %xor.i308 = xor i32 %106, 1
  %arrayidx.i309 = getelementptr %struct.onenand_chip, ptr %92, i32 0, i32 16, i32 %xor.i308
  %107 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i309, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %blockpage.0.i306)
  %cmp.i310 = icmp eq i32 %108, %blockpage.0.i306
  br i1 %cmp.i310, label %if.then3.i312, label %if.end.i311.onenand_update_bufferram.exit315_crit_edge

if.end.i311.onenand_update_bufferram.exit315_crit_edge: ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit315

if.then3.i312:                                    ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %arrayidx.i309, align 4
  br label %onenand_update_bufferram.exit315

onenand_update_bufferram.exit315:                 ; preds = %if.then3.i312, %if.end.i311.onenand_update_bufferram.exit315_crit_edge
  %110 = ptrtoint ptr %bufferram_index.i307 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bufferram_index.i307, align 4
  %spec.select.i314 = select i1 %tobool131.not.not, i32 %blockpage.0.i306, i32 -1
  %112 = getelementptr %struct.onenand_chip, ptr %92, i32 0, i32 16, i32 %111
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.select.i314, ptr %112, align 4
  %114 = zext i32 %call130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call130, label %onenand_update_bufferram.exit315.if.then141.critedge_crit_edge [
    i32 -74, label %onenand_update_bufferram.exit315.while.body.backedge_crit_edge
    i32 0, label %onenand_update_bufferram.exit315.while.body.backedge_crit_edge350
  ]

onenand_update_bufferram.exit315.while.body.backedge_crit_edge350: ; preds = %onenand_update_bufferram.exit315
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.backedge

onenand_update_bufferram.exit315.while.body.backedge_crit_edge: ; preds = %onenand_update_bufferram.exit315
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.backedge

onenand_update_bufferram.exit315.if.then141.critedge_crit_edge: ; preds = %onenand_update_bufferram.exit315
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141.critedge

while.body.backedge:                              ; preds = %onenand_update_bufferram.exit315.while.body.backedge_crit_edge, %onenand_update_bufferram.exit315.while.body.backedge_crit_edge350
  br label %while.body

if.then141.critedge:                              ; preds = %onenand_update_bufferram.exit315.if.then141.critedge_crit_edge, %onenand_update_bufferram.exit.if.then141.critedge_crit_edge
  %read.0.lcssa = phi i32 [ 0, %onenand_update_bufferram.exit.if.then141.critedge_crit_edge ], [ %add56, %onenand_update_bufferram.exit315.if.then141.critedge_crit_edge ]
  %oobread.0.lcssa = phi i32 [ 0, %onenand_update_bufferram.exit.if.then141.critedge_crit_edge ], [ %oobread.1, %onenand_update_bufferram.exit315.if.then141.critedge_crit_edge ]
  %ret.1.lcssa = phi i32 [ %call27, %onenand_update_bufferram.exit.if.then141.critedge_crit_edge ], [ %call130, %onenand_update_bufferram.exit315.if.then141.critedge_crit_edge ]
  %retlen138.c = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %115 = ptrtoint ptr %retlen138.c to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %read.0.lcssa, ptr %retlen138.c, align 4
  %oobretlen139.c = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %116 = ptrtoint ptr %oobretlen139.c to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %oobread.0.lcssa, ptr %oobretlen139.c, align 4
  br label %cleanup

if.end142:                                        ; preds = %if.end98
  %retlen138 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %117 = ptrtoint ptr %retlen138 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %3, ptr %retlen138, align 4
  %oobretlen139 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %118 = ptrtoint ptr %oobretlen139 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %oobread.1, ptr %oobretlen139, align 4
  %119 = ptrtoint ptr %stats.sroa.5.0.ecc_stats.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %stats.sroa.5.0.ecc_stats.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %stats.sroa.5.0.copyload)
  %tobool146.not = icmp eq i32 %120, %stats.sroa.5.0.copyload
  br i1 %tobool146.not, label %if.end148, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end148:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ecc_stats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %stats.sroa.0.0.copyload)
  %cmp151.not = icmp ne i32 %122, %stats.sroa.0.0.copyload
  %cond153 = zext i1 %cmp151.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end148, %if.end142.cleanup_crit_edge, %if.then141.critedge, %do.end16
  %retval.0 = phi i32 [ -22, %do.end16 ], [ %cond153, %if.end148 ], [ %ret.1.lcssa, %if.then141.critedge ], [ -74, %if.end142.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_read_oob_nolock(ptr noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ooblen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %2 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ooblen, align 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ops, align 4
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %6 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oobbuf, align 4
  %ooboffs = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %8 = ptrtoint ptr %ooboffs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ooboffs, align 4
  %conv = zext i32 %9 to i64
  %add = add i64 %conv, %from
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_read_oob_nolock.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_read_oob_nolock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv4 = trunc i64 %add to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_read_oob_nolock.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.127, i32 noundef %conv4, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %10 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %oobretlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %oobsize7 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %oobsize.0.in = select i1 %cmp, ptr %oobavail, ptr %oobsize7
  %11 = ptrtoint ptr %oobsize.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %oobsize.0 = load i32, ptr %oobsize.0.in, align 4
  %12 = ptrtoint ptr %oobsize7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize7, align 4
  %sub = add i32 %13, -1
  %14 = trunc i64 %add to i32
  %conv11 = and i32 %sub, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %oobsize.0)
  %cmp12.not = icmp slt i32 %conv11, %oobsize.0
  br i1 %cmp12.not, label %if.end26, label %do.end23, !prof !409

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127) #16
  br label %cleanup

if.end26:                                         ; preds = %do.end
  %stats.sroa.4.0.ecc_stats.sroa_idx = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %15 = ptrtoint ptr %stats.sroa.4.0.ecc_stats.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %stats.sroa.4.0.copyload = load i32, ptr %stats.sroa.4.0.ecc_stats.sroa_idx, align 4
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %options, align 4
  %and27 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %cond = select i1 %tobool28.not, i32 19, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29165.not = icmp eq i32 %3, 0
  br i1 %cmp29165.not, label %if.end26.if.end82_crit_edge, label %while.body.lr.ph

if.end26.if.end82_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

while.body.lr.ph:                                 ; preds = %if.end26
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %read_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 21
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end78, %while.body.lr.ph
  %from.addr.0172 = phi i64 [ %add, %while.body.lr.ph ], [ %add77, %if.end78 ]
  %buf.0170 = phi ptr [ %7, %while.body.lr.ph ], [ %add.ptr, %if.end78 ]
  %column.0168 = phi i32 [ %conv11, %while.body.lr.ph ], [ 0, %if.end78 ]
  %read.0166 = phi i32 [ 0, %while.body.lr.ph ], [ %add68, %if.end78 ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1381, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %sub33 = sub i32 %oobsize.0, %column.0168
  %18 = tail call i32 @llvm.smin.i32(i32 %sub33, i32 %3)
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %command, align 8
  %21 = ptrtoint ptr %oobsize7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oobsize7, align 4
  %call39 = tail call i32 %20(ptr noundef %mtd, i32 noundef %cond, i64 noundef %from.addr.0172, i32 noundef %22) #13
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %options.i, align 4
  %and.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %28 to i64
  %shr.i.i = ashr i64 %from.addr.0172, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %24, i32 0, i32 14
  %29 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %30 to i64
  %and2.i.i = and i64 %from.addr.0172, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %24, i32 0, i32 12
  %31 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %32, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %from.addr.0172, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %24, i32 0, i32 13
  %33 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %34, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %24, i32 0, i32 12
  %35 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %36 to i64
  %shr.i = ashr i64 %from.addr.0172, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %24, i32 0, i32 15
  %37 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %38, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %24, i32 0, i32 16, i32 %xor.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %blockpage.0.i)
  %cmp.i = icmp eq i32 %40, %blockpage.0.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.onenand_update_bufferram.exit_crit_edge

if.end.i.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i.onenand_update_bufferram.exit_crit_edge
  %42 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bufferram_index.i, align 4
  %44 = getelementptr %struct.onenand_chip, ptr %24, i32 0, i32 16, i32 %43
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %44, align 4
  %46 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wait, align 4
  %call40 = tail call i32 %47(ptr noundef %mtd, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %onenand_update_bufferram.exit.if.end60_crit_edge, label %if.end50, !prof !409

onenand_update_bufferram.exit.if.end60_crit_edge: ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end50:                                         ; preds = %onenand_update_bufferram.exit
  %call49 = tail call fastcc i32 @onenand_recover_lsb(ptr noundef %mtd, i64 noundef %from.addr.0172, i32 noundef %call40)
  %48 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %call49, label %while.end.thread [
    i32 0, label %if.end50.if.end60_crit_edge
    i32 -74, label %if.end60.fold.split
  ]

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

while.end.thread:                                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.127, i32 noundef %call49) #16
  %49 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %read.0166, ptr %oobretlen, align 4
  br label %cleanup

if.end60.fold.split:                              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end60:                                         ; preds = %if.end60.fold.split, %if.end50.if.end60_crit_edge, %onenand_update_bufferram.exit.if.end60_crit_edge
  %tobool80.not = phi i1 [ true, %if.end50.if.end60_crit_edge ], [ false, %if.end60.fold.split ], [ true, %onenand_update_bufferram.exit.if.end60_crit_edge ]
  %ret.1160 = phi i32 [ %call49, %if.end50.if.end60_crit_edge ], [ -74, %if.end60.fold.split ], [ 0, %onenand_update_bufferram.exit.if.end60_crit_edge ]
  br i1 %cmp, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %read_bufferram.i = getelementptr inbounds %struct.onenand_chip, ptr %51, i32 0, i32 21
  %52 = ptrtoint ptr %read_bufferram.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_bufferram.i, align 8
  %oob_buf.i = getelementptr inbounds %struct.onenand_chip, ptr %51, i32 0, i32 37
  %54 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %oob_buf.i, align 4
  %56 = ptrtoint ptr %oobsize7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %oobsize7, align 4
  %call.i156 = tail call i32 %53(ptr noundef %mtd, i32 noundef 65568, ptr noundef %55, i32 noundef 0, i32 noundef %57) #13
  %58 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %oob_buf.i, align 4
  %call2.i = tail call i32 @mtd_ooblayout_get_databytes(ptr noundef %mtd, ptr noundef %buf.0170, ptr noundef %59, i32 noundef %column.0168, i32 noundef %18) #13
  br label %if.end67

if.else65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_bufferram, align 8
  %call66 = tail call i32 %61(ptr noundef %mtd, i32 noundef 65568, ptr noundef %buf.0170, i32 noundef %column.0168, i32 noundef %18) #13
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then63
  %add68 = add i32 %18, %read.0166
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %3)
  %cmp69 = icmp eq i32 %add68, %3
  br i1 %cmp69, label %if.end67.while.end_crit_edge, label %if.end72

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end72:                                         ; preds = %if.end67
  %cmp73 = icmp ult i32 %add68, %3
  br i1 %cmp73, label %if.end78, label %if.end72.while.end_crit_edge

if.end72.while.end_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %buf.0170, i32 %18
  %62 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %writesize, align 4
  %conv76 = zext i32 %63 to i64
  %add77 = add i64 %from.addr.0172, %conv76
  br label %while.body

while.end:                                        ; preds = %if.end72.while.end_crit_edge, %if.end67.while.end_crit_edge
  %read.1 = phi i32 [ %3, %if.end67.while.end_crit_edge ], [ %add68, %if.end72.while.end_crit_edge ]
  %64 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %read.1, ptr %oobretlen, align 4
  br i1 %tobool80.not, label %while.end.if.end82_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.end.if.end82_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.end82:                                         ; preds = %while.end.if.end82_crit_edge, %if.end26.if.end82_crit_edge
  %65 = ptrtoint ptr %stats.sroa.4.0.ecc_stats.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stats.sroa.4.0.ecc_stats.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %stats.sroa.4.0.copyload)
  %tobool86.not = icmp eq i32 %66, %stats.sroa.4.0.copyload
  %. = select i1 %tobool86.not, i32 0, i32 -74
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %while.end.cleanup_crit_edge, %while.end.thread, %do.end23
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %ret.1160, %while.end.cleanup_crit_edge ], [ %., %if.end82 ], [ %call49, %while.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_check_bufferram(ptr nocapture noundef readonly %mtd, i64 noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erase_shift.i, align 4
  %sh_prom.i = zext i32 %5 to i64
  %shr.i = ashr i64 %addr, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i32 %conv.i, 33554430
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize.i, align 8
  %conv1.i = zext i32 %7 to i64
  %and2.i = and i64 %conv1.i, %addr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool.not.i = icmp ne i64 %and2.i, 0
  %masksel.i = zext i1 %tobool.not.i to i32
  %spec.select.i = or i32 %and.i, %masksel.i
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_shift.i, align 8
  %add.i = add i32 %9, 1
  %sh_prom3.i = zext i32 %add.i to i64
  %shr4.i = ashr i64 %addr, %sh_prom3.i
  %conv5.i = trunc i64 %shr4.i to i32
  %page_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_mask.i, align 4
  %and6.i = and i32 %11, %conv5.i
  %shl.i = shl nuw i32 %spec.select.i, 7
  %or.i = or i32 %shl.i, %and6.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_shift, align 8
  %sh_prom = zext i32 %13 to i64
  %shr = ashr i64 %addr, %sh_prom
  %conv = trunc i64 %shr to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %blockpage.0 = phi i32 [ %or.i, %if.then ], [ %conv, %if.else ]
  %bufferram_index = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufferram_index, align 4
  %arrayidx = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 16, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %blockpage.0)
  %cmp = icmp eq i32 %17, %blockpage.0
  br i1 %cmp, label %if.end.land.lhs.true_crit_edge, label %if.else4

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.else4:                                         ; preds = %if.end
  %xor = xor i32 %15, 1
  %arrayidx7 = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 16, i32 %xor
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %blockpage.0)
  %cmp9 = icmp eq i32 %19, %blockpage.0
  br i1 %cmp9, label %if.then11, label %if.else4.if.end23_crit_edge

if.else4.if.end23_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then11:                                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor, ptr %bufferram_index, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then11, %if.end.land.lhs.true_crit_edge
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_id, align 4
  %and17 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end23_crit_edge, label %if.then19

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  %and.i41 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i42 = icmp eq i32 %and.i41, 0
  br i1 %tobool.not.i42, label %if.then.i, label %land.lhs.true.i.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i43 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %erase_shift.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %erase_shift.i43, align 4
  %sh_prom.i44 = zext i32 %24 to i64
  %shr.i45 = ashr i64 %addr, %sh_prom.i44
  %conv.i46 = trunc i64 %shr.i45 to i32
  br label %onenand_block.exit

land.lhs.true.i.i:                                ; preds = %if.then19
  %diesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %diesize.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %diesize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %addr)
  %cmp.not.i.i = icmp sgt i64 %26, %addr
  br i1 %cmp.not.i.i, label %if.end.thread.i.i, label %cond.true.i.i

if.end.thread.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx430.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 0
  br label %flexonenand_block.exit.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i64 %addr, %26
  %arrayidx4.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 1
  %density_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %density_mask.i.i, align 8
  br label %flexonenand_block.exit.i

flexonenand_block.exit.i:                         ; preds = %cond.true.i.i, %if.end.thread.i.i
  %.in33.i.i = phi ptr [ %arrayidx4.i.i, %cond.true.i.i ], [ %arrayidx430.i.i, %if.end.thread.i.i ]
  %addr.addr.032.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %addr, %if.end.thread.i.i ]
  %cond.i.i = phi i32 [ %28, %cond.true.i.i ], [ 0, %if.end.thread.i.i ]
  %29 = ptrtoint ptr %.in33.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %.in33.i.i, align 4
  %.in.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %.in.i.i, align 4
  %sub5.i.i = add i32 %32, -1
  %sh_prom.i.i = zext i32 %sub5.i.i to i64
  %shr.i.i = ashr i64 %addr.addr.032.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i.i)
  %cmp6.i.i = icmp ult i32 %30, %conv.i.i
  %add.i.i = add i32 %30, 1
  %add9.i.i = add i32 %add.i.i, %conv.i.i
  %shr10.i.i = lshr i32 %add9.i.i, 1
  %blk.0.i.i = select i1 %cmp6.i.i, i32 %shr10.i.i, i32 %conv.i.i
  %add13.i.i = add i32 %blk.0.i.i, %cond.i.i
  br label %onenand_block.exit

onenand_block.exit:                               ; preds = %flexonenand_block.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %add13.i.i, %flexonenand_block.exit.i ], [ %conv.i46, %if.then.i ]
  %density_mask.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %density_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %density_mask.i, align 8
  %and.i47 = and i32 %34, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  %write_word = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %35 = ptrtoint ptr %write_word to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_word, align 4
  %conv22 = select i1 %tobool.not.i48, i16 0, i16 -32768
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %38, i32 123394
  tail call void %36(i16 noundef zeroext %conv22, ptr noundef %add.ptr) #13
  br label %if.end23

if.end23:                                         ; preds = %onenand_block.exit, %land.lhs.true.if.end23_crit_edge, %if.else4.if.end23_crit_edge
  %found.052 = phi i32 [ 1, %onenand_block.exit ], [ 1, %land.lhs.true.if.end23_crit_edge ], [ 0, %if.else4.if.end23_crit_edge ]
  ret i32 %found.052
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_databytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_write_ops_nolock(ptr noundef %mtd, i64 noundef %to, ptr nocapture noundef %ops) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %len1 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %ooblen2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %4 = ptrtoint ptr %ooblen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ooblen2, align 4
  %datbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %6 = ptrtoint ptr %datbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %datbuf, align 4
  %oobbuf = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %8 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oobbuf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @onenand_write_ops_nolock.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@onenand_write_ops_nolock, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !407

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i64 %to to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @onenand_write_ops_nolock.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.132, i32 noundef %conv, i32 noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %10 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %retlen, align 4
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  %11 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %oobretlen, align 4
  %subpagesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 39
  %12 = ptrtoint ptr %subpagesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %subpagesize, align 4
  %sub = add i32 %13, -1
  %conv6 = sext i32 %sub to i64
  %and = and i64 %conv6, %to
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp.not = icmp ne i64 %and, 0
  %and10 = and i32 %sub, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp ne i32 %and10, 0
  %14 = select i1 %cmp.not, i1 true, i1 %cmp11
  br i1 %14, label %do.end22, label %if.end25, !prof !408

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132) #16
  br label %cleanup

if.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool26.not = icmp eq i32 %3, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  %oobavail.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %cond.in.i = select i1 %cmp.i, ptr %oobavail.i, ptr %oobsize.i
  %17 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %18 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oobsize.i, align 4
  %sub31 = add i32 %19, -1
  %20 = trunc i64 %to to i32
  %conv34 = and i32 %sub31, %20
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  %sub35 = add i32 %22, -1
  %conv38 = and i32 %sub35, %20
  %bufferram_index = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %write_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 22
  %oob_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 37
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %ongoing = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 42
  %device_id.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %diesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 3
  %arrayidx4.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 1
  %density_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %arrayidx430.i.i = getelementptr %struct.onenand_chip, ptr %1, i32 0, i32 2, i32 0
  %.in.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %if.end199, %if.end28
  %tobool94.not = phi i1 [ false, %if.end199 ], [ true, %if.end28 ]
  %oobwritten.0 = phi i32 [ %oobwritten.2, %if.end199 ], [ 0, %if.end28 ]
  %oobcolumn.0 = phi i32 [ %oobcolumn.2, %if.end199 ], [ %conv34, %if.end28 ]
  %buf.0 = phi ptr [ %add.ptr203, %if.end199 ], [ %7, %if.end28 ]
  %oob.0 = phi ptr [ %oob.2, %if.end199 ], [ %9, %if.end28 ]
  %prev.0 = phi i32 [ %conv200, %if.end199 ], [ 0, %if.end28 ]
  %subpage.0 = phi i32 [ %subpage.1, %if.end199 ], [ 0, %if.end28 ]
  %thislen.0 = phi i32 [ %thislen.1, %if.end199 ], [ 0, %if.end28 ]
  %column.0 = phi i32 [ 0, %if.end199 ], [ %conv38, %if.end28 ]
  %written.0 = phi i32 [ %written.1, %if.end199 ], [ 0, %if.end28 ]
  %to.addr.0 = phi i64 [ %add202, %if.end199 ], [ %to, %if.end28 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %written.0)
  %cmp39 = icmp ugt i32 %3, %written.0
  br i1 %cmp39, label %if.then41, label %if.else86

if.then41:                                        ; preds = %while.cond
  %23 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writesize, align 4
  %sub43 = sub i32 %24, %column.0
  %sub44 = sub i32 %3, %written.0
  %25 = tail call i32 @llvm.smin.i32(i32 %sub43, i32 %sub44)
  %sub48 = sub i32 %cond.i, %oobcolumn.0
  %sub49 = sub i32 %5, %oobwritten.0
  %26 = tail call i32 @llvm.smin.i32(i32 %sub48, i32 %sub49)
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1829, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %27 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %command, align 8
  %call59 = tail call i32 %28(ptr noundef %mtd, i32 noundef 6520, i64 noundef %to.addr.0, i32 noundef %25) #13
  %29 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %30)
  %cmp61 = icmp ult i32 %25, %30
  %conv62 = zext i1 %cmp61 to i32
  br i1 %cmp61, label %if.then64, label %if.then41.if.end68_crit_edge

if.then41.if.end68_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then64:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page_buf, align 8
  %33 = call ptr @memset(ptr %32, i32 255, i32 %30)
  %34 = load ptr, ptr %page_buf, align 8
  %add.ptr = getelementptr i8, ptr %34, i32 %column.0
  %35 = call ptr @memcpy(ptr %add.ptr, ptr %buf.0, i32 %25)
  %36 = load ptr, ptr %page_buf, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.then41.if.end68_crit_edge
  %wbuf.0 = phi ptr [ %36, %if.then64 ], [ %buf.0, %if.then41.if.end68_crit_edge ]
  %37 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_bufferram, align 4
  %39 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writesize, align 4
  %call70 = tail call i32 %38(ptr noundef %mtd, i32 noundef 1024, ptr noundef %wbuf.0, i32 noundef 0, i32 noundef %40) #13
  %tobool71.not = icmp eq ptr %oob.0, null
  br i1 %tobool71.not, label %if.end68.if.end82_crit_edge, label %if.then72

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then72:                                        ; preds = %if.end68
  %41 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %oob_buf, align 4
  %43 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oobsize.i, align 4
  %45 = call ptr @memset(ptr %42, i32 255, i32 %44)
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp74 = icmp eq i32 %47, 1
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %call.i361 = tail call i32 @mtd_ooblayout_set_databytes(ptr noundef %mtd, ptr noundef nonnull %oob.0, ptr noundef %42, i32 noundef %oobcolumn.0, i32 noundef %26) #13
  br label %if.end79

if.else:                                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr78 = getelementptr i8, ptr %42, i32 %oobcolumn.0
  %48 = call ptr @memcpy(ptr %add.ptr78, ptr %oob.0, i32 %26)
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then76
  %add = add i32 %26, %oobwritten.0
  %add.ptr80 = getelementptr i8, ptr %oob.0, i32 %26
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %if.end68.if.end82_crit_edge
  %oobwritten.1 = phi i32 [ %add, %if.end79 ], [ %oobwritten.0, %if.end68.if.end82_crit_edge ]
  %oobcolumn.1 = phi i32 [ 0, %if.end79 ], [ %oobcolumn.0, %if.end68.if.end82_crit_edge ]
  %oob.1 = phi ptr [ %add.ptr80, %if.end79 ], [ null, %if.end68.if.end82_crit_edge ]
  %oobbuf3.0 = phi ptr [ %42, %if.end79 ], [ @ffchars, %if.end68.if.end82_crit_edge ]
  %49 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_bufferram, align 4
  %51 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %oobsize.i, align 4
  %call85 = tail call i32 %50(ptr noundef %mtd, i32 noundef 65568, ptr noundef %oobbuf3.0, i32 noundef 0, i32 noundef %52) #13
  br label %if.end87

if.else86:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bufferram_index, align 4
  %xor = xor i32 %54, 1
  store i32 %xor, ptr %bufferram_index, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.end82
  %oobwritten.2 = phi i32 [ %oobwritten.1, %if.end82 ], [ %oobwritten.0, %if.else86 ]
  %oobcolumn.2 = phi i32 [ %oobcolumn.1, %if.end82 ], [ %oobcolumn.0, %if.else86 ]
  %oob.2 = phi ptr [ %oob.1, %if.end82 ], [ %oob.0, %if.else86 ]
  %subpage.1 = phi i32 [ %conv62, %if.end82 ], [ %subpage.0, %if.else86 ]
  %thislen.1 = phi i32 [ %25, %if.end82 ], [ %thislen.0, %if.else86 ]
  %55 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %options, align 4
  %57 = and i32 %56, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %58 = icmp ne i32 %57, 0
  %brmerge = or i1 %tobool94.not, %58
  br i1 %brmerge, label %if.end87.if.end131_crit_edge, label %if.then95

if.end87.if.end131_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.then95:                                        ; preds = %if.end87
  %59 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bufferram_index, align 4
  %xor97 = xor i32 %60, 1
  store i32 %xor97, ptr %bufferram_index, align 4
  %61 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wait, align 4
  %call98 = tail call i32 %62(ptr noundef %mtd, i32 noundef 7) #13
  %conv99 = sext i32 %prev.0 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool100.not = icmp eq i32 %call98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subpage.0)
  %tobool101.not = icmp ne i32 %subpage.0, 0
  %not.tobool100.not = xor i1 %tobool100.not, true
  %spec.select = select i1 %not.tobool100.not, i1 true, i1 %tobool101.not
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %options.i, align 4
  %and.i = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 11
  %67 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %68 to i64
  %shr.i.i = ashr i64 %conv99, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 14
  %69 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %70 to i64
  %and2.i.i = and i64 %conv1.i.i, %conv99
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 12
  %71 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %72, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %conv99, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 13
  %73 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %74, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 12
  %75 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %76 to i64
  %shr.i = ashr i64 %conv99, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 15
  %77 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %78, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %64, i32 0, i32 16, i32 %xor.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %blockpage.0.i)
  %cmp.i362 = icmp eq i32 %80, %blockpage.0.i
  br i1 %cmp.i362, label %if.then3.i, label %if.end.i.onenand_update_bufferram.exit_crit_edge

if.end.i.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i.onenand_update_bufferram.exit_crit_edge
  %82 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bufferram_index.i, align 4
  %spec.select.i = select i1 %spec.select, i32 -1, i32 %blockpage.0.i
  %84 = getelementptr %struct.onenand_chip, ptr %64, i32 0, i32 16, i32 %83
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.select.i, ptr %84, align 4
  br i1 %tobool100.not, label %if.end112, label %if.then105

if.then105:                                       ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub106 = sub i32 %written.0, %thislen.0
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.132, i32 noundef %call98) #16
  br label %while.end

if.end112:                                        ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %written.0)
  %cmp113 = icmp eq i32 %3, %written.0
  br i1 %cmp113, label %if.then115, label %if.end128

if.then115:                                       ; preds = %if.end112
  %idx.neg = sub i32 0, %3
  %add.ptr116 = getelementptr i8, ptr %buf.0, i32 %idx.neg
  %conv117 = zext i32 %3 to i64
  %sub118 = sub i64 %to.addr.0, %conv117
  %call119 = tail call fastcc i32 @onenand_verify(ptr noundef %mtd, ptr noundef %add.ptr116, i64 noundef %sub118, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then115.if.end207_crit_edge, label %do.end124

if.then115.if.end207_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

do.end124:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.132, i32 noundef %call119) #16
  br label %if.end207

if.end128:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bufferram_index, align 4
  %xor130 = xor i32 %87, 1
  store i32 %xor130, ptr %bufferram_index, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end128, %if.end87.if.end131_crit_edge
  %88 = ptrtoint ptr %ongoing to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %ongoing, align 8
  %89 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %options, align 4
  %and133 = and i32 %90, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end131.if.end155_crit_edge, label %land.lhs.true135

if.end131.if.end155_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

land.lhs.true135:                                 ; preds = %if.end131
  %91 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %device_id.i, align 4
  %and.i363 = and i32 %92, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i363)
  %tobool.not.i364 = icmp eq i32 %and.i363, 0
  br i1 %tobool.not.i364, label %if.then.i368, label %if.end.i371

if.then.i368:                                     ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %.in.i.i, align 4
  %sh_prom.i365 = zext i32 %94 to i64
  %shr.i366 = ashr i64 %to.addr.0, %sh_prom.i365
  %conv.i367 = trunc i64 %shr.i366 to i32
  br label %onenand_block.exit

if.end.i371:                                      ; preds = %land.lhs.true135
  %and.i.i369 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i369)
  %tobool.not.i.i370 = icmp eq i32 %and.i.i369, 0
  br i1 %tobool.not.i.i370, label %if.end.i371.flexonenand_block.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i371.flexonenand_block.exit.i_crit_edge:   ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_block.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i371
  %95 = ptrtoint ptr %diesize.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %diesize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %to.addr.0, i64 %96)
  %cmp.not.i.i = icmp slt i64 %to.addr.0, %96
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.flexonenand_block.exit.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.flexonenand_block.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flexonenand_block.exit.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i64 %to.addr.0, %96
  %97 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %density_mask.i.i, align 8
  br label %flexonenand_block.exit.i

flexonenand_block.exit.i:                         ; preds = %cond.true.i.i, %land.lhs.true.i.i.flexonenand_block.exit.i_crit_edge, %if.end.i371.flexonenand_block.exit.i_crit_edge
  %.in33.i.i = phi ptr [ %arrayidx4.i.i, %cond.true.i.i ], [ %arrayidx430.i.i, %land.lhs.true.i.i.flexonenand_block.exit.i_crit_edge ], [ %arrayidx430.i.i, %if.end.i371.flexonenand_block.exit.i_crit_edge ]
  %addr.addr.032.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %to.addr.0, %land.lhs.true.i.i.flexonenand_block.exit.i_crit_edge ], [ %to.addr.0, %if.end.i371.flexonenand_block.exit.i_crit_edge ]
  %cond.i.i = phi i32 [ %98, %cond.true.i.i ], [ 0, %land.lhs.true.i.i.flexonenand_block.exit.i_crit_edge ], [ 0, %if.end.i371.flexonenand_block.exit.i_crit_edge ]
  %99 = ptrtoint ptr %.in33.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %.in33.i.i, align 4
  %101 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %.in.i.i, align 4
  %sub5.i.i = add i32 %102, -1
  %sh_prom.i.i372 = zext i32 %sub5.i.i to i64
  %shr.i.i373 = ashr i64 %addr.addr.032.i.i, %sh_prom.i.i372
  %conv.i.i374 = trunc i64 %shr.i.i373 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %conv.i.i374)
  %cmp6.i.i = icmp ult i32 %100, %conv.i.i374
  %add.i.i375 = add i32 %100, 1
  %add9.i.i = add i32 %add.i.i375, %conv.i.i374
  %shr10.i.i = lshr i32 %add9.i.i, 1
  %blk.0.i.i = select i1 %cmp6.i.i, i32 %shr10.i.i, i32 %conv.i.i374
  %add13.i.i = add i32 %blk.0.i.i, %cond.i.i
  br label %onenand_block.exit

onenand_block.exit:                               ; preds = %flexonenand_block.exit.i, %if.then.i368
  %retval.0.i376 = phi i32 [ %add13.i.i, %flexonenand_block.exit.i ], [ %conv.i367, %if.then.i368 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i376)
  %cmp137.not = icmp eq i32 %retval.0.i376, 0
  br i1 %cmp137.not, label %onenand_block.exit.if.end155_crit_edge, label %land.lhs.true145, !prof !408

onenand_block.exit.if.end155_crit_edge:           ; preds = %onenand_block.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

land.lhs.true145:                                 ; preds = %onenand_block.exit
  %and147 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp ne i32 %and147, 0
  %add150 = add i32 %thislen.1, %written.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add150, i32 %3)
  %cmp151 = icmp ult i32 %add150, %3
  %or.cond358 = select i1 %tobool148.not, i1 %cmp151, i1 false
  br i1 %or.cond358, label %if.then153, label %land.lhs.true145.if.end155_crit_edge

land.lhs.true145.if.end155_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then153:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %ongoing to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %ongoing, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %land.lhs.true145.if.end155_crit_edge, %onenand_block.exit.if.end155_crit_edge, %if.end131.if.end155_crit_edge
  %cmd.0 = phi i32 [ 127, %if.then153 ], [ 128, %land.lhs.true145.if.end155_crit_edge ], [ 128, %onenand_block.exit.if.end155_crit_edge ], [ 128, %if.end131.if.end155_crit_edge ]
  %104 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %command, align 8
  %106 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %writesize, align 4
  %call158 = tail call i32 %105(ptr noundef %mtd, i32 noundef %cmd.0, i64 noundef %to.addr.0, i32 noundef %107) #13
  %108 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %options, align 4
  %110 = and i32 %109, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %if.else197, label %if.then165

if.then165:                                       ; preds = %if.end155
  %112 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wait, align 4
  %call167 = tail call i32 %113(ptr noundef %mtd, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subpage.1)
  %tobool170.not = icmp ne i32 %subpage.1, 0
  %not.tobool168.not = xor i1 %tobool168.not, true
  %spec.select360 = select i1 %not.tobool168.not, i1 true, i1 %tobool170.not
  %114 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv, align 8
  %options.i378 = getelementptr inbounds %struct.onenand_chip, ptr %115, i32 0, i32 9
  %116 = ptrtoint ptr %options.i378 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %options.i378, align 4
  %and.i379 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i379)
  %tobool.not.i380 = icmp eq i32 %and.i379, 0
  br i1 %tobool.not.i380, label %if.else.i406, label %if.then.i401

if.then.i401:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i381 = getelementptr inbounds %struct.onenand_chip, ptr %115, i32 0, i32 11
  %118 = ptrtoint ptr %erase_shift.i.i381 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %erase_shift.i.i381, align 4
  %sh_prom.i.i382 = zext i32 %119 to i64
  %shr.i.i383 = ashr i64 %to.addr.0, %sh_prom.i.i382
  %conv.i.i384 = trunc i64 %shr.i.i383 to i32
  %and.i.i385 = and i32 %conv.i.i384, 33554430
  %writesize.i.i386 = getelementptr inbounds %struct.onenand_chip, ptr %115, i32 0, i32 14
  %120 = ptrtoint ptr %writesize.i.i386 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %writesize.i.i386, align 8
  %conv1.i.i387 = zext i32 %121 to i64
  %and2.i.i388 = and i64 %to.addr.0, %conv1.i.i387
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i388)
  %tobool.not.i.i389 = icmp ne i64 %and2.i.i388, 0
  %masksel.i.i390 = zext i1 %tobool.not.i.i389 to i32
  %spec.select.i.i391 = or i32 %and.i.i385, %masksel.i.i390
  %page_shift.i.i392 = getelementptr inbounds %struct.onenand_chip, ptr %115, i32 0, i32 12
  %122 = ptrtoint ptr %page_shift.i.i392 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %page_shift.i.i392, align 8
  %add.i.i393 = add i32 %123, 1
  %sh_prom3.i.i394 = zext i32 %add.i.i393 to i64
  %shr4.i.i395 = ashr i64 %to.addr.0, %sh_prom3.i.i394
  %conv5.i.i396 = trunc i64 %shr4.i.i395 to i32
  %page_mask.i.i397 = getelementptr inbounds %struct.onenand_chip, ptr %115, i32 0, i32 13
  %124 = ptrtoint ptr %page_mask.i.i397 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %page_mask.i.i397, align 4
  %and6.i.i398 = and i32 %125, %conv5.i.i396
  %shl.i.i399 = shl nuw i32 %spec.select.i.i391, 7
  %or.i.i400 = or i32 %shl.i.i399, %and6.i.i398
  br label %if.end.i412

if.else.i406:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i402 = getelementptr inbounds %struct.onenand_chip, ptr %115, i32 0, i32 12
  %126 = ptrtoint ptr %page_shift.i402 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %page_shift.i402, align 8
  %sh_prom.i403 = zext i32 %127 to i64
  %shr.i404 = ashr i64 %to.addr.0, %sh_prom.i403
  %conv.i405 = trunc i64 %shr.i404 to i32
  br label %if.end.i412

if.end.i412:                                      ; preds = %if.else.i406, %if.then.i401
  %blockpage.0.i407 = phi i32 [ %or.i.i400, %if.then.i401 ], [ %conv.i405, %if.else.i406 ]
  %bufferram_index.i408 = getelementptr inbounds %struct.onenand_chip, ptr %115, i32 0, i32 15
  %128 = ptrtoint ptr %bufferram_index.i408 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bufferram_index.i408, align 4
  %xor.i409 = xor i32 %129, 1
  %arrayidx.i410 = getelementptr %struct.onenand_chip, ptr %115, i32 0, i32 16, i32 %xor.i409
  %130 = ptrtoint ptr %arrayidx.i410 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i410, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %blockpage.0.i407)
  %cmp.i411 = icmp eq i32 %131, %blockpage.0.i407
  br i1 %cmp.i411, label %if.then3.i413, label %if.end.i412.onenand_update_bufferram.exit416_crit_edge

if.end.i412.onenand_update_bufferram.exit416_crit_edge: ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit416

if.then3.i413:                                    ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %arrayidx.i410 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %arrayidx.i410, align 4
  br label %onenand_update_bufferram.exit416

onenand_update_bufferram.exit416:                 ; preds = %if.then3.i413, %if.end.i412.onenand_update_bufferram.exit416_crit_edge
  %133 = ptrtoint ptr %bufferram_index.i408 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bufferram_index.i408, align 4
  %spec.select.i415 = select i1 %spec.select360, i32 -1, i32 %blockpage.0.i407
  %135 = getelementptr %struct.onenand_chip, ptr %115, i32 0, i32 16, i32 %134
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %spec.select.i415, ptr %135, align 4
  br i1 %tobool168.not, label %if.end182, label %do.end179

do.end179:                                        ; preds = %onenand_update_bufferram.exit416
  call void @__sanitizer_cov_trace_pc() #15
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.132, i32 noundef %call167) #16
  br label %while.end

if.end182:                                        ; preds = %onenand_update_bufferram.exit416
  %call183 = tail call fastcc i32 @onenand_verify(ptr noundef %mtd, ptr noundef %buf.0, i64 noundef %to.addr.0, i32 noundef %thislen.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end191, label %do.end188

do.end188:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.132, i32 noundef %call183) #16
  br label %while.end

if.end191:                                        ; preds = %if.end182
  %add192 = add i32 %thislen.1, %written.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add192, i32 %3)
  %cmp193 = icmp eq i32 %add192, %3
  br i1 %cmp193, label %if.end191.if.end207_crit_edge, label %if.end191.if.end199_crit_edge

if.end191.if.end199_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.end191.if.end207_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.else197:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  %add198 = add i32 %thislen.1, %written.0
  br label %if.end199

if.end199:                                        ; preds = %if.else197, %if.end191.if.end199_crit_edge
  %written.1 = phi i32 [ %add192, %if.end191.if.end199_crit_edge ], [ %add198, %if.else197 ]
  %conv200 = trunc i64 %to.addr.0 to i32
  %conv201 = sext i32 %thislen.1 to i64
  %add202 = add i64 %to.addr.0, %conv201
  %add.ptr203 = getelementptr i8, ptr %buf.0, i32 %thislen.1
  br label %while.cond

while.end:                                        ; preds = %do.end188, %do.end179, %if.then105
  %ret.0 = phi i32 [ %call167, %do.end179 ], [ %call183, %do.end188 ], [ %call98, %if.then105 ]
  %written.2 = phi i32 [ %written.0, %do.end179 ], [ %written.0, %do.end188 ], [ %sub106, %if.then105 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %written.2, i32 %3)
  %cmp204.not = icmp eq i32 %written.2, %3
  br i1 %cmp204.not, label %while.end.if.end207_crit_edge, label %if.then206

while.end.if.end207_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.then206:                                       ; preds = %while.end
  %137 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %priv, align 8
  %page_shift.i418 = getelementptr inbounds %struct.onenand_chip, ptr %138, i32 0, i32 12
  %arrayidx.i419 = getelementptr %struct.onenand_chip, ptr %138, i32 0, i32 16, i32 0
  %139 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i419, align 4
  %141 = ptrtoint ptr %page_shift.i418 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %page_shift.i418, align 8
  %shl.i = shl i32 %140, %142
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl.i)
  %cmp3.not.i = icmp sgt i32 %shl.i, -1
  br i1 %cmp3.not.i, label %if.then.i420, label %if.then206.if.end.i421_crit_edge

if.then206.if.end.i421_crit_edge:                 ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i421

if.then.i420:                                     ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %arrayidx.i419, align 4
  br label %if.end.i421

if.end.i421:                                      ; preds = %if.then.i420, %if.then206.if.end.i421_crit_edge
  %arrayidx.1.i = getelementptr %struct.onenand_chip, ptr %138, i32 0, i32 16, i32 1
  %144 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.1.i, align 4
  %146 = ptrtoint ptr %page_shift.i418 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %page_shift.i418, align 8
  %shl.1.i = shl i32 %145, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl.1.i)
  %cmp3.not.1.i = icmp sgt i32 %shl.1.i, -1
  br i1 %cmp3.not.1.i, label %if.then.1.i, label %if.end.i421.if.end207_crit_edge

if.end.i421.if.end207_crit_edge:                  ; preds = %if.end.i421
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.then.1.i:                                      ; preds = %if.end.i421
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %arrayidx.1.i, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.then.1.i, %if.end.i421.if.end207_crit_edge, %while.end.if.end207_crit_edge, %if.end191.if.end207_crit_edge, %do.end124, %if.then115.if.end207_crit_edge
  %written.2477 = phi i32 [ %written.2, %if.then.1.i ], [ %written.2, %if.end.i421.if.end207_crit_edge ], [ %written.2, %while.end.if.end207_crit_edge ], [ %3, %do.end124 ], [ %3, %if.then115.if.end207_crit_edge ], [ %3, %if.end191.if.end207_crit_edge ]
  %ret.0476 = phi i32 [ %ret.0, %if.then.1.i ], [ %ret.0, %if.end.i421.if.end207_crit_edge ], [ %ret.0, %while.end.if.end207_crit_edge ], [ %call119, %do.end124 ], [ 0, %if.then115.if.end207_crit_edge ], [ 0, %if.end191.if.end207_crit_edge ]
  %149 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %written.2477, ptr %retlen, align 4
  %150 = ptrtoint ptr %oobretlen to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %oobwritten.2, ptr %oobretlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %if.end25.cleanup_crit_edge, %do.end22
  %retval.0 = phi i32 [ -22, %do.end22 ], [ %ret.0476, %if.end207 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_verify(ptr noundef %mtd, ptr nocapture noundef readonly %buf, i64 noundef %addr, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %writesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not87 = icmp eq i32 %len, 0
  br i1 %cmp.not87, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 8
  %sub = add i32 %3, -1
  %4 = trunc i64 %addr to i32
  %conv1 = and i32 %sub, %4
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %read_bufferram = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 21
  %verify_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 38
  %writesize9 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %column.092 = phi i32 [ %conv1, %while.body.lr.ph ], [ 0, %if.end15.while.body_crit_edge ]
  %len.addr.091 = phi i32 [ %len, %while.body.lr.ph ], [ %sub16, %if.end15.while.body_crit_edge ]
  %addr.addr.089 = phi i64 [ %addr, %while.body.lr.ph ], [ %add, %if.end15.while.body_crit_edge ]
  %buf.addr.088 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr17, %if.end15.while.body_crit_edge ]
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 8
  %sub4 = sub i32 %6, %column.092
  %7 = tail call i32 @llvm.smin.i32(i32 %sub4, i32 %len.addr.091)
  %8 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command, align 8
  %call = tail call i32 %9(ptr noundef %mtd, i32 noundef 0, i64 noundef %addr.addr.089, i32 noundef %6) #13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %options.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %erase_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erase_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %15 to i64
  %shr.i.i = ashr i64 %addr.addr.089, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i.i, 33554430
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %11, i32 0, i32 14
  %16 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize.i.i, align 8
  %conv1.i.i = zext i32 %17 to i64
  %and2.i.i = and i64 %addr.addr.089, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool.not.i.i = icmp ne i64 %and2.i.i, 0
  %masksel.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = or i32 %and.i.i, %masksel.i.i
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %11, i32 0, i32 12
  %18 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_shift.i.i, align 8
  %add.i.i = add i32 %19, 1
  %sh_prom3.i.i = zext i32 %add.i.i to i64
  %shr4.i.i = ashr i64 %addr.addr.089, %sh_prom3.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %11, i32 0, i32 13
  %20 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_mask.i.i, align 4
  %and6.i.i = and i32 %21, %conv5.i.i
  %shl.i.i = shl nuw i32 %spec.select.i.i, 7
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %11, i32 0, i32 12
  %22 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_shift.i, align 8
  %sh_prom.i = zext i32 %23 to i64
  %shr.i = ashr i64 %addr.addr.089, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blockpage.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %11, i32 0, i32 15
  %24 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %25, 1
  %arrayidx.i = getelementptr %struct.onenand_chip, ptr %11, i32 0, i32 16, i32 %xor.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %blockpage.0.i)
  %cmp.i = icmp eq i32 %27, %blockpage.0.i
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.onenand_update_bufferram.exit_crit_edge

if.end.i.onenand_update_bufferram.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %onenand_update_bufferram.exit

onenand_update_bufferram.exit:                    ; preds = %if.then3.i, %if.end.i.onenand_update_bufferram.exit_crit_edge
  %29 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bufferram_index.i, align 4
  %31 = getelementptr %struct.onenand_chip, ptr %11, i32 0, i32 16, i32 %30
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %31, align 4
  %33 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wait, align 4
  %call8 = tail call i32 %34(ptr noundef %mtd, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %onenand_update_bufferram.exit.cleanup_crit_edge

onenand_update_bufferram.exit.cleanup_crit_edge:  ; preds = %onenand_update_bufferram.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %onenand_update_bufferram.exit
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %options.i50 = getelementptr inbounds %struct.onenand_chip, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %options.i50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %options.i50, align 4
  %and.i51 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %if.else.i78, label %if.then.i73

if.then.i73:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i53 = getelementptr inbounds %struct.onenand_chip, ptr %36, i32 0, i32 11
  %39 = ptrtoint ptr %erase_shift.i.i53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %erase_shift.i.i53, align 4
  %sh_prom.i.i54 = zext i32 %40 to i64
  %shr.i.i55 = ashr i64 %addr.addr.089, %sh_prom.i.i54
  %conv.i.i56 = trunc i64 %shr.i.i55 to i32
  %and.i.i57 = and i32 %conv.i.i56, 33554430
  %writesize.i.i58 = getelementptr inbounds %struct.onenand_chip, ptr %36, i32 0, i32 14
  %41 = ptrtoint ptr %writesize.i.i58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %writesize.i.i58, align 8
  %conv1.i.i59 = zext i32 %42 to i64
  %and2.i.i60 = and i64 %addr.addr.089, %conv1.i.i59
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i60)
  %tobool.not.i.i61 = icmp ne i64 %and2.i.i60, 0
  %masksel.i.i62 = zext i1 %tobool.not.i.i61 to i32
  %spec.select.i.i63 = or i32 %and.i.i57, %masksel.i.i62
  %page_shift.i.i64 = getelementptr inbounds %struct.onenand_chip, ptr %36, i32 0, i32 12
  %43 = ptrtoint ptr %page_shift.i.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %page_shift.i.i64, align 8
  %add.i.i65 = add i32 %44, 1
  %sh_prom3.i.i66 = zext i32 %add.i.i65 to i64
  %shr4.i.i67 = ashr i64 %addr.addr.089, %sh_prom3.i.i66
  %conv5.i.i68 = trunc i64 %shr4.i.i67 to i32
  %page_mask.i.i69 = getelementptr inbounds %struct.onenand_chip, ptr %36, i32 0, i32 13
  %45 = ptrtoint ptr %page_mask.i.i69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_mask.i.i69, align 4
  %and6.i.i70 = and i32 %46, %conv5.i.i68
  %shl.i.i71 = shl nuw i32 %spec.select.i.i63, 7
  %or.i.i72 = or i32 %shl.i.i71, %and6.i.i70
  br label %if.end.i84

if.else.i78:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i74 = getelementptr inbounds %struct.onenand_chip, ptr %36, i32 0, i32 12
  %47 = ptrtoint ptr %page_shift.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page_shift.i74, align 8
  %sh_prom.i75 = zext i32 %48 to i64
  %shr.i76 = ashr i64 %addr.addr.089, %sh_prom.i75
  %conv.i77 = trunc i64 %shr.i76 to i32
  br label %if.end.i84

if.end.i84:                                       ; preds = %if.else.i78, %if.then.i73
  %blockpage.0.i79 = phi i32 [ %or.i.i72, %if.then.i73 ], [ %conv.i77, %if.else.i78 ]
  %bufferram_index.i80 = getelementptr inbounds %struct.onenand_chip, ptr %36, i32 0, i32 15
  %49 = ptrtoint ptr %bufferram_index.i80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bufferram_index.i80, align 4
  %xor.i81 = xor i32 %50, 1
  %arrayidx.i82 = getelementptr %struct.onenand_chip, ptr %36, i32 0, i32 16, i32 %xor.i81
  %51 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %blockpage.0.i79)
  %cmp.i83 = icmp eq i32 %52, %blockpage.0.i79
  br i1 %cmp.i83, label %if.then3.i85, label %if.end.i84.onenand_update_bufferram.exit86_crit_edge

if.end.i84.onenand_update_bufferram.exit86_crit_edge: ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit86

if.then3.i85:                                     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %arrayidx.i82, align 4
  br label %onenand_update_bufferram.exit86

onenand_update_bufferram.exit86:                  ; preds = %if.then3.i85, %if.end.i84.onenand_update_bufferram.exit86_crit_edge
  %54 = ptrtoint ptr %bufferram_index.i80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bufferram_index.i80, align 4
  %56 = getelementptr %struct.onenand_chip, ptr %36, i32 0, i32 16, i32 %55
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %blockpage.0.i79, ptr %56, align 4
  %58 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_bufferram, align 8
  %60 = ptrtoint ptr %verify_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %verify_buf, align 8
  %62 = ptrtoint ptr %writesize9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %writesize9, align 4
  %call10 = tail call i32 %59(ptr noundef %mtd, i32 noundef 1024, ptr noundef %61, i32 noundef 0, i32 noundef %63) #13
  %64 = ptrtoint ptr %verify_buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %verify_buf, align 8
  %add.ptr = getelementptr i8, ptr %65, i32 %column.092
  %bcmp = tail call i32 @bcmp(ptr %buf.addr.088, ptr %add.ptr, i32 %7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.end15, label %onenand_update_bufferram.exit86.cleanup_crit_edge

onenand_update_bufferram.exit86.cleanup_crit_edge: ; preds = %onenand_update_bufferram.exit86
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %onenand_update_bufferram.exit86
  %sub16 = sub i32 %len.addr.091, %7
  %add.ptr17 = getelementptr i8, ptr %buf.addr.088, i32 %7
  %conv18 = sext i32 %7 to i64
  %add = add i64 %addr.addr.089, %conv18
  %cmp.not = icmp eq i32 %sub16, 0
  br i1 %cmp.not, label %if.end15.cleanup_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %onenand_update_bufferram.exit86.cleanup_crit_edge, %onenand_update_bufferram.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ -74, %onenand_update_bufferram.exit86.cleanup_crit_edge ], [ %call8, %onenand_update_bufferram.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @onenand_otp_walk(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf, ptr noundef readonly %action, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  %tmp_retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retlen, align 4
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_id, align 4
  %5 = and i32 %4, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i32 20, i32 50
  %6 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %mode, label %entry.if.else16_crit_edge [
    i32 1, label %if.end3.thread
    i32 2, label %if.then6
  ]

entry.if.else16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else16

if.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %mul = mul i32 %8, %.
  %conv = zext i32 %mul to i64
  %add = add i64 %conv, %from
  %sub = sub nuw nsw i32 64, %.
  br label %if.else16

if.then6:                                         ; preds = %entry
  %writesize7 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %9 = ptrtoint ptr %writesize7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize7, align 4
  %mul8 = mul i32 %10, %.
  %conv9 = zext i32 %mul8 to i64
  %conv10 = zext i32 %len to i64
  %add11 = add i64 %conv10, %from
  call void @__sanitizer_cov_trace_cmp8(i64 %add11, i64 %conv9)
  %cmp12 = icmp sgt i64 %add11, %conv9
  br i1 %cmp12, label %if.then6.cleanup53_crit_edge, label %if.then6.if.end23_crit_edge

if.then6.if.end23_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then6.cleanup53_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53

if.else16:                                        ; preds = %if.end3.thread, %entry.if.else16_crit_edge
  %otp_pages.198 = phi i32 [ %sub, %if.end3.thread ], [ %., %entry.if.else16_crit_edge ]
  %from.addr.096 = phi i64 [ %add, %if.end3.thread ], [ %from, %entry.if.else16_crit_edge ]
  %writesize17 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %11 = ptrtoint ptr %writesize17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize17, align 4
  %mul18 = mul i32 %12, %otp_pages.198
  call void @__sanitizer_cov_trace_cmp4(i32 %mul18, i32 %len)
  %cmp19 = icmp ult i32 %mul18, %len
  br i1 %cmp19, label %if.else16.cleanup53_crit_edge, label %if.else16.if.end23_crit_edge

if.else16.if.end23_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.else16.cleanup53_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup53

if.end23:                                         ; preds = %if.else16.if.end23_crit_edge, %if.then6.if.end23_crit_edge
  %otp_pages.197 = phi i32 [ %otp_pages.198, %if.else16.if.end23_crit_edge ], [ %., %if.then6.if.end23_crit_edge ]
  %from.addr.095 = phi i64 [ %from.addr.096, %if.else16.if.end23_crit_edge ], [ %from, %if.then6.if.end23_crit_edge ]
  %call24 = tail call fastcc i32 @onenand_get_device(ptr noundef %mtd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp25.not108.not = icmp eq i32 %len, 0
  br i1 %cmp25.not108.not, label %if.end23.while.end_crit_edge, label %while.body.lr.ph

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end23
  %tobool.not = icmp eq ptr %action, null
  %writesize36 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %while.body.lr.ph
  %otp_pages.2114 = phi i32 [ %otp_pages.197, %while.body.lr.ph ], [ %dec, %if.end52.while.body_crit_edge ]
  %from.addr.1113 = phi i64 [ %from.addr.095, %while.body.lr.ph ], [ %from.addr.3, %if.end52.while.body_crit_edge ]
  %len.addr.0112 = phi i32 [ %len, %while.body.lr.ph ], [ %len.addr.2, %if.end52.while.body_crit_edge ]
  %buf.addr.0111 = phi ptr [ %buf, %while.body.lr.ph ], [ %buf.addr.3, %if.end52.while.body_crit_edge ]
  br i1 %tobool.not, label %if.then29, label %if.else41

if.then29:                                        ; preds = %while.body
  %sub30 = add i32 %len.addr.0112, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp31 = icmp eq i32 %sub30, 0
  br i1 %cmp31, label %if.then29.while.end_crit_edge, label %cleanup.thread

if.then29.while.end_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.thread:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %conv35 = trunc i64 %from.addr.1113 to i32
  %13 = ptrtoint ptr %buf.addr.0111 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv35, ptr %buf.addr.0111, align 4
  %14 = ptrtoint ptr %writesize36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writesize36, align 4
  %length = getelementptr inbounds %struct.otp_info, ptr %buf.addr.0111, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %length, align 4
  %locked = getelementptr inbounds %struct.otp_info, ptr %buf.addr.0111, i32 0, i32 2
  %17 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %locked, align 4
  %18 = load i32, ptr %writesize36, align 4
  %conv38 = zext i32 %18 to i64
  %add39 = add i64 %from.addr.1113, %conv38
  %add.ptr = getelementptr i8, ptr %buf.addr.0111, i32 12
  %19 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retlen, align 4
  %add40 = add i32 %20, 12
  store i32 %add40, ptr %retlen, align 4
  br label %if.end52

if.else41:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_retlen) #13
  %21 = ptrtoint ptr %tmp_retlen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %tmp_retlen, align 4, !annotation !416
  %call42 = call i32 %action(ptr noundef %mtd, i64 noundef %from.addr.1113, i32 noundef %len.addr.0112, ptr noundef nonnull %tmp_retlen, ptr noundef %buf.addr.0111) #13, !callees !417
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup49.thread, label %cleanup49

cleanup49.thread:                                 ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %tmp_retlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp_retlen, align 4
  %add.ptr46 = getelementptr i8, ptr %buf.addr.0111, i32 %23
  %sub47 = sub i32 %len.addr.0112, %23
  %24 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retlen, align 4
  %add48 = add i32 %25, %23
  store i32 %add48, ptr %retlen, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_retlen) #13
  br label %if.end52

cleanup49:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_retlen) #13
  br label %while.end

if.end52:                                         ; preds = %cleanup49.thread, %cleanup.thread
  %buf.addr.3 = phi ptr [ %add.ptr, %cleanup.thread ], [ %add.ptr46, %cleanup49.thread ]
  %len.addr.2 = phi i32 [ %sub30, %cleanup.thread ], [ %sub47, %cleanup49.thread ]
  %from.addr.3 = phi i64 [ %add39, %cleanup.thread ], [ %from.addr.1113, %cleanup49.thread ]
  %dec = add nsw i32 %otp_pages.2114, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.2)
  %cmp25.not = icmp ne i32 %len.addr.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %otp_pages.2114)
  %cmp27 = icmp sgt i32 %otp_pages.2114, 1
  %or.cond = select i1 %cmp25.not, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.end52.while.body_crit_edge, label %if.end52.while.end_crit_edge

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %cleanup49, %if.then29.while.end_crit_edge, %if.end23.while.end_crit_edge
  %ret.3 = phi i32 [ %call42, %cleanup49 ], [ 0, %if.end23.while.end_crit_edge ], [ 0, %if.end52.while.end_crit_edge ], [ -28, %if.then29.while.end_crit_edge ]
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.onenand_chip, ptr %27, i32 0, i32 35
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 12
  br i1 %cmp.not.i, label %while.end.onenand_release_device.exit_crit_edge, label %land.lhs.true.i

while.end.onenand_release_device.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

land.lhs.true.i:                                  ; preds = %while.end
  %disable.i = getelementptr inbounds %struct.onenand_chip, ptr %27, i32 0, i32 30
  %30 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %land.lhs.true.i.onenand_release_device.exit_crit_edge, label %if.then.i

land.lhs.true.i.onenand_release_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_release_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 %31(ptr noundef %mtd) #13
  br label %onenand_release_device.exit

onenand_release_device.exit:                      ; preds = %if.then.i, %land.lhs.true.i.onenand_release_device.exit_crit_edge, %while.end.onenand_release_device.exit_crit_edge
  %chip_lock.i = getelementptr inbounds %struct.onenand_chip, ptr %27, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %chip_lock.i) #13
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state.i, align 4
  %wq.i = getelementptr inbounds %struct.onenand_chip, ptr %27, i32 0, i32 34
  call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  call void @_raw_spin_unlock(ptr noundef %chip_lock.i) #13
  br label %cleanup53

cleanup53:                                        ; preds = %onenand_release_device.exit, %if.else16.cleanup53_crit_edge, %if.then6.cleanup53_crit_edge
  %retval.0 = phi i32 [ %ret.3, %onenand_release_device.exit ], [ 0, %if.then6.cleanup53_crit_edge ], [ 0, %if.else16.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_read(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef readnone %retlen, ptr noundef %buf) #4 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #13
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %4 = call ptr @memset(ptr %ops, i32 0, i32 32)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %3, align 4
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %command, align 8
  %call = tail call i32 %8(ptr noundef %mtd, i32 noundef 101, i64 noundef 0, i32 noundef 0) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wait, align 4
  %call3 = tail call i32 %10(ptr noundef %mtd, i32 noundef 24) #13
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call fastcc i32 @onenand_mlc_read_ops_nolock(ptr noundef %mtd, i64 noundef %from, ptr noundef nonnull %ops)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call fastcc i32 @onenand_read_ops_nolock(ptr noundef %mtd, i64 noundef %from, ptr noundef nonnull %ops)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call4, %cond.true ], [ %call5, %cond.false ]
  %13 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %command, align 8
  %call7 = tail call i32 %14(ptr noundef %mtd, i32 noundef 240, i64 noundef 0, i32 noundef 0) #13
  %15 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wait, align 4
  %call9 = tail call i32 %16(ptr noundef %mtd, i32 noundef 23) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #13
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #4 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #13
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %2 = call ptr @memset(ptr %ops, i32 255, i32 24)
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %len)
  %cmp = icmp ugt i32 %4, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %5 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page_buf, align 8
  %7 = call ptr @memcpy(ptr %6, ptr %buf, i32 %len)
  %8 = load ptr, ptr %page_buf, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %len
  %9 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize, align 4
  %sub = sub i32 %10, %len
  %11 = call ptr @memset(ptr %add.ptr, i32 255, i32 %sub)
  %12 = load ptr, ptr %page_buf, align 8
  %13 = load i32, ptr %writesize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %13, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %pbuf.0 = phi ptr [ %12, %if.then ], [ %buf, %entry.if.end_crit_edge ]
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %17 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %18 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %command, align 8
  %call = tail call i32 %20(ptr noundef %mtd, i32 noundef 101, i64 noundef 0, i32 noundef 0) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wait, align 4
  %call5 = tail call i32 %22(ptr noundef %mtd, i32 noundef 24) #13
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %len.addr.0, ptr %18, align 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %16, align 4
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pbuf.0, ptr %15, align 4
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %14, align 4
  %call7 = call fastcc i32 @onenand_write_ops_nolock(ptr noundef %mtd, i64 noundef %to, ptr noundef nonnull %ops)
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %17, align 4
  %29 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %retlen, align 4
  %30 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %command, align 8
  %call10 = tail call i32 %31(ptr noundef %mtd, i32 noundef 240, i64 noundef 0, i32 noundef 0) #13
  %32 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wait, align 4
  %call12 = tail call i32 %33(ptr noundef %mtd, i32 noundef 23) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #13
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_otp_lock(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #4 align 64 {
entry:
  %ops = alloca %struct.mtd_oob_ops, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops) #13
  %2 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %4 = call ptr @memset(ptr %ops, i32 255, i32 24)
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_id, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %9 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command, align 8
  %call = tail call i32 %11(ptr noundef %mtd, i32 noundef 101, i64 noundef 0, i32 noundef 0) #13
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait, align 4
  %call1 = tail call i32 %13(ptr noundef %mtd, i32 noundef 24) #13
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %14 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writesize, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %9, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %2, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %7, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %3, align 4
  %mul = mul i32 %15, 49
  %conv = zext i32 %mul to i64
  %call4 = call fastcc i32 @onenand_write_ops_nolock(ptr noundef %mtd, i64 noundef %conv, ptr noundef nonnull %ops)
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %8, align 4
  %22 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %retlen, align 4
  %23 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command, align 8
  %call7 = tail call i32 %24(ptr noundef %mtd, i32 noundef 240, i64 noundef 0, i32 noundef 0) #13
  %25 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wait, align 4
  %call9 = tail call i32 %26(ptr noundef %mtd, i32 noundef 23) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ops, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %len, ptr %2, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf, ptr %3, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %27, align 4
  %oobsize2.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %32 = ptrtoint ptr %oobsize2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oobsize2.i, align 4
  %oob_buf.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 37
  %34 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %oob_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp255.not.i = icmp eq i32 %len, 0
  br i1 %cmp255.not.i, label %if.else.onenand_otp_write_oob_nolock.exit_crit_edge, label %while.body.lr.ph.i

if.else.onenand_otp_write_oob_nolock.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_otp_write_oob_nolock.exit

while.body.lr.ph.i:                               ; preds = %if.else
  %sub.i = add i32 %33, -1
  %36 = trunc i64 %from to i32
  %conv5.i = and i32 %sub.i, %36
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %density_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 8
  %write_word.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 24
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %command.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %wait.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %write_bufferram.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 22
  %options.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %read_word.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 23
  %writesize115.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %to.addr.0259.i = phi i64 [ %from, %while.body.lr.ph.i ], [ %add117.i, %cleanup.i.while.body.i_crit_edge ]
  %column.0258.i = phi i32 [ %conv5.i, %while.body.lr.ph.i ], [ 0, %cleanup.i.while.body.i_crit_edge ]
  %written.0257.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add110.i, %cleanup.i.while.body.i_crit_edge ]
  %buf.0256.i = phi ptr [ %buf, %while.body.lr.ph.i ], [ %add.ptr118.i, %cleanup.i.while.body.i_crit_edge ]
  %sub7.i = sub i32 %len, %written.0257.i
  %37 = tail call i32 @llvm.smin.i32(i32 %33, i32 %sub7.i) #13
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2790, i32 noundef 0) #13
  %call.i.i = tail call i32 @__cond_resched() #13
  %38 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %erase_shift.i, align 4
  %sh_prom.i = zext i32 %39 to i64
  %shr.i = ashr i64 %to.addr.0259.i, %sh_prom.i
  %conv11.i = trunc i64 %shr.i to i32
  %40 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %density_mask.i.i, align 8
  %and.i.i = and i32 %41, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %xor.i.i = xor i32 %41, %conv11.i
  %or.i.i = or i32 %xor.i.i, 32768
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %conv11.i, i32 %or.i.i
  %42 = ptrtoint ptr %write_word.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_word.i, align 4
  %conv13.i = trunc i32 %retval.0.i.i to i16
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %45, i32 123392
  tail call void %43(i16 noundef zeroext %conv13.i, ptr noundef %add.ptr.i) #13
  %46 = ptrtoint ptr %density_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %density_mask.i.i, align 8
  %and.i195.i = and i32 %47, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195.i)
  %tobool.not.i196.i = icmp eq i32 %and.i195.i, 0
  %48 = ptrtoint ptr %write_word.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_word.i, align 4
  %conv16.i = select i1 %tobool.not.i196.i, i16 0, i16 -32768
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %add.ptr18.i = getelementptr i8, ptr %51, i32 123394
  tail call void %49(i16 noundef zeroext %conv16.i, ptr noundef %add.ptr18.i) #13
  %52 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bufferram_index.i, align 4
  %xor.i = xor i32 %53, 1
  store i32 %xor.i, ptr %bufferram_index.i, align 4
  %54 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %command.i, align 8
  %call19.i = tail call i32 %55(ptr noundef %mtd, i32 noundef 101, i64 noundef 0, i32 noundef 0) #13
  %56 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wait.i, align 4
  %call20.i = tail call i32 %57(ptr noundef %mtd, i32 noundef 24) #13
  %add.ptr21.i = getelementptr i8, ptr %35, i32 %column.0258.i
  %58 = call ptr @memcpy(ptr %add.ptr21.i, ptr %buf.0256.i, i32 %37)
  %59 = ptrtoint ptr %write_bufferram.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_bufferram.i, align 4
  %61 = ptrtoint ptr %oobsize2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %oobsize2.i, align 4
  %call23.i = tail call i32 %60(ptr noundef %mtd, i32 noundef 65568, ptr noundef %35, i32 noundef 0, i32 noundef %62) #13
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %erase_shift1.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %erase_shift1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %erase_shift1.i.i, align 4
  %sh_prom2.i.i = zext i32 %66 to i64
  %shr3.i.i = ashr i64 %to.addr.0259.i, %sh_prom2.i.i
  %conv4.i.i = trunc i64 %shr3.i.i to i32
  %page_shift.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 12
  %67 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %page_shift.i.i, align 8
  %sh_prom5.i.i = zext i32 %68 to i64
  %shr6.i.i = ashr i64 %to.addr.0259.i, %sh_prom5.i.i
  %conv7.i.i = trunc i64 %shr6.i.i to i32
  %options.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 9
  %69 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %options.i.i, align 4
  %and.i197.i = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197.i)
  %tobool.not.i198.i = icmp eq i32 %and.i197.i, 0
  br i1 %tobool.not.i198.i, label %while.body.i.if.end14.i.i_crit_edge, label %if.then.i.i

while.body.i.if.end14.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i.i

if.then.i.i:                                      ; preds = %while.body.i
  %writesize.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 14
  %71 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %writesize.i.i, align 8
  %conv9.i.i = zext i32 %72 to i64
  %and10.i.i = and i64 %to.addr.0259.i, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %tobool11.not.i.i = icmp eq i64 %and10.i.i, 0
  %inc.i.i = or i32 %conv4.i.i, 1
  %shr13.i.i = ashr i32 %conv7.i.i, 1
  br i1 %tobool11.not.i.i, label %if.end14.thread.i.i, label %if.then.i.i.if.end14.i.i_crit_edge

if.then.i.i.if.end14.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i.i

if.end14.thread.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and8.i.i = and i32 %conv4.i.i, -2
  %page_mask6.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 13
  %73 = ptrtoint ptr %page_mask6.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %page_mask6.i.i, align 4
  %and157.i.i = and i32 %74, %shr13.i.i
  br label %if.then17.i.i

if.end14.i.i:                                     ; preds = %if.then.i.i.if.end14.i.i_crit_edge, %while.body.i.if.end14.i.i_crit_edge
  %block.1.i.i = phi i32 [ %inc.i.i, %if.then.i.i.if.end14.i.i_crit_edge ], [ %conv4.i.i, %while.body.i.if.end14.i.i_crit_edge ]
  %page.0.i.i = phi i32 [ %shr13.i.i, %if.then.i.i.if.end14.i.i_crit_edge ], [ %conv7.i.i, %while.body.i.if.end14.i.i_crit_edge ]
  %page_mask.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 13
  %75 = ptrtoint ptr %page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %page_mask.i.i, align 4
  %and15.i.i = and i32 %76, %page.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %block.1.i.i)
  %cmp.not.i.i = icmp eq i32 %block.1.i.i, -1
  br i1 %cmp.not.i.i, label %if.end14.i.i.if.end19.i.i_crit_edge, label %if.end14.i.i.if.then17.i.i_crit_edge

if.end14.i.i.if.then17.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i.i

if.end14.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i.if.then17.i.i_crit_edge, %if.end14.thread.i.i
  %and1510.i.i = phi i32 [ %and157.i.i, %if.end14.thread.i.i ], [ %and15.i.i, %if.end14.i.i.if.then17.i.i_crit_edge ]
  %block.19.i.i = phi i32 [ %and8.i.i, %if.end14.thread.i.i ], [ %block.1.i.i, %if.end14.i.i.if.then17.i.i_crit_edge ]
  %density_mask.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 8
  %77 = ptrtoint ptr %density_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %density_mask.i.i.i, align 8
  %and.i.i.i = and i32 %78, %block.19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %xor.i.i.i = xor i32 %78, %block.19.i.i
  %or.i.i.i = or i32 %xor.i.i.i, 32768
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %block.19.i.i, i32 %or.i.i.i
  %write_word.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 24
  %79 = ptrtoint ptr %write_word.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_word.i.i, align 4
  %conv18.i.i = trunc i32 %retval.0.i.i.i to i16
  %81 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %64, align 8
  %add.ptr.i.i = getelementptr i8, ptr %82, i32 123392
  tail call void %80(i16 noundef zeroext %conv18.i.i, ptr noundef %add.ptr.i.i) #13
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %if.end14.i.i.if.end19.i.i_crit_edge
  %and1511.i.i = phi i32 [ %and1510.i.i, %if.then17.i.i ], [ %and15.i.i, %if.end14.i.i.if.end19.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and1511.i.i)
  %cmp20.not.i.i = icmp eq i32 %and1511.i.i, -1
  br i1 %cmp20.not.i.i, label %if.end19.i.i.onenand_otp_command.exit.i_crit_edge, label %if.then22.i.i

if.end19.i.i.onenand_otp_command.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_otp_command.exit.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bufferram_index.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 15
  %83 = ptrtoint ptr %bufferram_index.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bufferram_index.i.i, align 4
  %write_word33.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 24
  %85 = ptrtoint ptr %write_word33.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_word33.i.i, align 4
  %and1511.tr.i.i = trunc i32 %and1511.i.i to i16
  %87 = shl i16 %and1511.tr.i.i, 2
  %conv34.i.i = and i16 %87, 508
  %88 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %64, align 8
  %add.ptr36.i.i = getelementptr i8, ptr %89, i32 123406
  tail call void %86(i16 noundef zeroext %conv34.i.i, ptr noundef %add.ptr36.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i2.i.i = icmp eq i32 %84, 0
  %90 = ptrtoint ptr %write_word33.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_word33.i.i, align 4
  %conv39.i.i = select i1 %tobool.not.i2.i.i, i16 2052, i16 3076
  %92 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %64, align 8
  %add.ptr41.i.i = getelementptr i8, ptr %93, i32 123904
  tail call void %91(i16 noundef zeroext %conv39.i.i, ptr noundef %add.ptr41.i.i) #13
  br label %onenand_otp_command.exit.i

onenand_otp_command.exit.i:                       ; preds = %if.then22.i.i, %if.end19.i.i.onenand_otp_command.exit.i_crit_edge
  %write_word43.i.i = getelementptr inbounds %struct.onenand_chip, ptr %64, i32 0, i32 24
  %94 = ptrtoint ptr %write_word43.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_word43.i.i, align 4
  %96 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %64, align 8
  %add.ptr45.i.i = getelementptr i8, ptr %97, i32 124034
  tail call void %95(i16 noundef zeroext 0, ptr noundef %add.ptr45.i.i) #13
  %98 = ptrtoint ptr %write_word43.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_word43.i.i, align 4
  %100 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %64, align 8
  %add.ptr49.i.i = getelementptr i8, ptr %101, i32 123968
  tail call void %99(i16 noundef zeroext 26, ptr noundef %add.ptr49.i.i) #13
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 8
  %options.i200.i = getelementptr inbounds %struct.onenand_chip, ptr %103, i32 0, i32 9
  %104 = ptrtoint ptr %options.i200.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %options.i200.i, align 4
  %and.i201.i = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i201.i)
  %tobool.not.i202.i = icmp eq i32 %and.i201.i, 0
  br i1 %tobool.not.i202.i, label %if.else.i.i, label %if.then.i206.i

if.then.i206.i:                                   ; preds = %onenand_otp_command.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %103, i32 0, i32 11
  %106 = ptrtoint ptr %erase_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %erase_shift.i.i.i, align 4
  %sh_prom.i.i.i = zext i32 %107 to i64
  %shr.i.i.i = ashr i64 %to.addr.0259.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %and.i.i203.i = and i32 %conv.i.i.i, 33554430
  %writesize.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %103, i32 0, i32 14
  %108 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %writesize.i.i.i, align 8
  %conv1.i.i.i = zext i32 %109 to i64
  %and2.i.i.i = and i64 %to.addr.0259.i, %conv1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i.i)
  %tobool.not.i.i204.i = icmp ne i64 %and2.i.i.i, 0
  %masksel.i.i.i = zext i1 %tobool.not.i.i204.i to i32
  %spec.select.i.i.i = or i32 %and.i.i203.i, %masksel.i.i.i
  %page_shift.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %103, i32 0, i32 12
  %110 = ptrtoint ptr %page_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %page_shift.i.i.i, align 8
  %add.i.i.i = add i32 %111, 1
  %sh_prom3.i.i.i = zext i32 %add.i.i.i to i64
  %shr4.i.i.i = ashr i64 %to.addr.0259.i, %sh_prom3.i.i.i
  %conv5.i.i.i = trunc i64 %shr4.i.i.i to i32
  %page_mask.i.i.i = getelementptr inbounds %struct.onenand_chip, ptr %103, i32 0, i32 13
  %112 = ptrtoint ptr %page_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %page_mask.i.i.i, align 4
  %and6.i.i.i = and i32 %113, %conv5.i.i.i
  %shl.i.i.i = shl nuw i32 %spec.select.i.i.i, 7
  %or.i.i205.i = or i32 %shl.i.i.i, %and6.i.i.i
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %onenand_otp_command.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i207.i = getelementptr inbounds %struct.onenand_chip, ptr %103, i32 0, i32 12
  %114 = ptrtoint ptr %page_shift.i207.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %page_shift.i207.i, align 8
  %sh_prom.i.i = zext i32 %115 to i64
  %shr.i.i = ashr i64 %to.addr.0259.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i206.i
  %blockpage.0.i.i = phi i32 [ %or.i.i205.i, %if.then.i206.i ], [ %conv.i.i, %if.else.i.i ]
  %bufferram_index.i208.i = getelementptr inbounds %struct.onenand_chip, ptr %103, i32 0, i32 15
  %116 = ptrtoint ptr %bufferram_index.i208.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bufferram_index.i208.i, align 4
  %xor.i209.i = xor i32 %117, 1
  %arrayidx.i.i = getelementptr %struct.onenand_chip, ptr %103, i32 0, i32 16, i32 %xor.i209.i
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %blockpage.0.i.i)
  %cmp.i.i = icmp eq i32 %119, %blockpage.0.i.i
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.onenand_update_bufferram.exit.i_crit_edge

if.end.i.i.onenand_update_bufferram.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %arrayidx.i.i, align 4
  br label %onenand_update_bufferram.exit.i

onenand_update_bufferram.exit.i:                  ; preds = %if.then3.i.i, %if.end.i.i.onenand_update_bufferram.exit.i_crit_edge
  %121 = ptrtoint ptr %bufferram_index.i208.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bufferram_index.i208.i, align 4
  %123 = getelementptr %struct.onenand_chip, ptr %103, i32 0, i32 16, i32 %122
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %123, align 4
  %125 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %options.i, align 4
  %and26.i = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool.not.i, label %onenand_update_bufferram.exit.i.if.end.i_crit_edge, label %if.then.i

onenand_update_bufferram.exit.i.if.end.i_crit_edge: ; preds = %onenand_update_bufferram.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %onenand_update_bufferram.exit.i
  %127 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %bufferram_index.i, align 4
  %128 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %writesize.i, align 8
  %conv28.i = zext i32 %129 to i64
  %add29.i = add i64 %to.addr.0259.i, %conv28.i
  %130 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv, align 8
  %options.i211.i = getelementptr inbounds %struct.onenand_chip, ptr %131, i32 0, i32 9
  %132 = ptrtoint ptr %options.i211.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %options.i211.i, align 4
  %and.i212.i = and i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i212.i)
  %tobool.not.i213.i = icmp eq i32 %and.i212.i, 0
  br i1 %tobool.not.i213.i, label %if.else.i239.i, label %if.then.i234.i

if.then.i234.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %erase_shift.i.i214.i = getelementptr inbounds %struct.onenand_chip, ptr %131, i32 0, i32 11
  %134 = ptrtoint ptr %erase_shift.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %erase_shift.i.i214.i, align 4
  %sh_prom.i.i215.i = zext i32 %135 to i64
  %shr.i.i216.i = ashr i64 %add29.i, %sh_prom.i.i215.i
  %conv.i.i217.i = trunc i64 %shr.i.i216.i to i32
  %and.i.i218.i = and i32 %conv.i.i217.i, 33554430
  %writesize.i.i219.i = getelementptr inbounds %struct.onenand_chip, ptr %131, i32 0, i32 14
  %136 = ptrtoint ptr %writesize.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %writesize.i.i219.i, align 8
  %conv1.i.i220.i = zext i32 %137 to i64
  %and2.i.i221.i = and i64 %add29.i, %conv1.i.i220.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i221.i)
  %tobool.not.i.i222.i = icmp ne i64 %and2.i.i221.i, 0
  %masksel.i.i223.i = zext i1 %tobool.not.i.i222.i to i32
  %spec.select.i.i224.i = or i32 %and.i.i218.i, %masksel.i.i223.i
  %page_shift.i.i225.i = getelementptr inbounds %struct.onenand_chip, ptr %131, i32 0, i32 12
  %138 = ptrtoint ptr %page_shift.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %page_shift.i.i225.i, align 8
  %add.i.i226.i = add i32 %139, 1
  %sh_prom3.i.i227.i = zext i32 %add.i.i226.i to i64
  %shr4.i.i228.i = ashr i64 %add29.i, %sh_prom3.i.i227.i
  %conv5.i.i229.i = trunc i64 %shr4.i.i228.i to i32
  %page_mask.i.i230.i = getelementptr inbounds %struct.onenand_chip, ptr %131, i32 0, i32 13
  %140 = ptrtoint ptr %page_mask.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %page_mask.i.i230.i, align 4
  %and6.i.i231.i = and i32 %141, %conv5.i.i229.i
  %shl.i.i232.i = shl nuw i32 %spec.select.i.i224.i, 7
  %or.i.i233.i = or i32 %shl.i.i232.i, %and6.i.i231.i
  br label %if.end.i245.i

if.else.i239.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %page_shift.i235.i = getelementptr inbounds %struct.onenand_chip, ptr %131, i32 0, i32 12
  %142 = ptrtoint ptr %page_shift.i235.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %page_shift.i235.i, align 8
  %sh_prom.i236.i = zext i32 %143 to i64
  %shr.i237.i = ashr i64 %add29.i, %sh_prom.i236.i
  %conv.i238.i = trunc i64 %shr.i237.i to i32
  br label %if.end.i245.i

if.end.i245.i:                                    ; preds = %if.else.i239.i, %if.then.i234.i
  %blockpage.0.i240.i = phi i32 [ %or.i.i233.i, %if.then.i234.i ], [ %conv.i238.i, %if.else.i239.i ]
  %bufferram_index.i241.i = getelementptr inbounds %struct.onenand_chip, ptr %131, i32 0, i32 15
  %144 = ptrtoint ptr %bufferram_index.i241.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bufferram_index.i241.i, align 4
  %xor.i242.i = xor i32 %145, 1
  %arrayidx.i243.i = getelementptr %struct.onenand_chip, ptr %131, i32 0, i32 16, i32 %xor.i242.i
  %146 = ptrtoint ptr %arrayidx.i243.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i243.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %blockpage.0.i240.i)
  %cmp.i244.i = icmp eq i32 %147, %blockpage.0.i240.i
  br i1 %cmp.i244.i, label %if.then3.i246.i, label %if.end.i245.i.onenand_update_bufferram.exit247.i_crit_edge

if.end.i245.i.onenand_update_bufferram.exit247.i_crit_edge: ; preds = %if.end.i245.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_update_bufferram.exit247.i

if.then3.i246.i:                                  ; preds = %if.end.i245.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %arrayidx.i243.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %arrayidx.i243.i, align 4
  br label %onenand_update_bufferram.exit247.i

onenand_update_bufferram.exit247.i:               ; preds = %if.then3.i246.i, %if.end.i245.i.onenand_update_bufferram.exit247.i_crit_edge
  %149 = ptrtoint ptr %bufferram_index.i241.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bufferram_index.i241.i, align 4
  %151 = getelementptr %struct.onenand_chip, ptr %131, i32 0, i32 16, i32 %150
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %151, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %onenand_update_bufferram.exit247.i, %onenand_update_bufferram.exit.i.if.end.i_crit_edge
  %153 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wait.i, align 4
  %call31.i = tail call i32 %154(ptr noundef %mtd, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end36.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.145, i32 noundef %call31.i) #16
  br label %onenand_otp_write_oob_nolock.exit

if.end36.i:                                       ; preds = %if.end.i
  %155 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %command.i, align 8
  %call38.i = tail call i32 %156(ptr noundef %mtd, i32 noundef 240, i64 noundef 0, i32 noundef 0) #13
  %157 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %wait.i, align 4
  %call40.i = tail call i32 %158(ptr noundef %mtd, i32 noundef 23) #13
  %159 = ptrtoint ptr %read_word.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %read_word.i, align 8
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 8
  %add.ptr42.i = getelementptr i8, ptr %162, i32 124032
  %call43.i = tail call zeroext i16 %160(ptr noundef %add.ptr42.i) #13
  %163 = trunc i16 %call43.i to i7
  %trunc.i = and i7 %163, -32
  %164 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.214)
  switch i7 %trunc.i, label %if.end36.i.if.end109.i_crit_edge [
    i7 -32, label %if.end36.i.if.end109.sink.split.i_crit_edge
    i7 32, label %do.end69.i
    i7 -64, label %do.end88.i
  ]

if.end36.i.if.end109.sink.split.i_crit_edge:      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.sink.split.i

if.end36.i.if.end109.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.i

do.end69.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.sink.split.i

do.end88.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.sink.split.i

if.end109.sink.split.i:                           ; preds = %do.end88.i, %do.end69.i, %if.end36.i.if.end109.sink.split.i_crit_edge
  %.str.150.sink.i = phi ptr [ @.str.150, %do.end69.i ], [ @.str.165, %do.end88.i ], [ @.str.150, %if.end36.i.if.end109.sink.split.i_crit_edge ]
  %.str.160.sink.ph.i = phi ptr [ @.str.160, %do.end69.i ], [ @.str.153, %do.end88.i ], [ @.str.153, %if.end36.i.if.end109.sink.split.i_crit_edge ]
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #16
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.150.sink.i) #16
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.end109.sink.split.i, %if.end36.i.if.end109.i_crit_edge
  %.str.160.sink.i = phi ptr [ @.str.170, %if.end36.i.if.end109.i_crit_edge ], [ %.str.160.sink.ph.i, %if.end109.sink.split.i ]
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.160.sink.i) #16
  %add110.i = add i32 %37, %written.0257.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add110.i, i32 %len)
  %cmp111.i = icmp eq i32 %add110.i, %len
  br i1 %cmp111.i, label %if.end109.i.onenand_otp_write_oob_nolock.exit_crit_edge, label %cleanup.i

if.end109.i.onenand_otp_write_oob_nolock.exit_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_otp_write_oob_nolock.exit

cleanup.i:                                        ; preds = %if.end109.i
  %165 = ptrtoint ptr %writesize115.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %writesize115.i, align 4
  %conv116.i = zext i32 %166 to i64
  %add117.i = add i64 %to.addr.0259.i, %conv116.i
  %add.ptr118.i = getelementptr i8, ptr %buf.0256.i, i32 %37
  %cmp.i = icmp ult i32 %add110.i, %len
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.onenand_otp_write_oob_nolock.exit_crit_edge

cleanup.i.onenand_otp_write_oob_nolock.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %onenand_otp_write_oob_nolock.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

onenand_otp_write_oob_nolock.exit:                ; preds = %cleanup.i.onenand_otp_write_oob_nolock.exit_crit_edge, %if.end109.i.onenand_otp_write_oob_nolock.exit_crit_edge, %do.end.i, %if.else.onenand_otp_write_oob_nolock.exit_crit_edge
  %written.2.i = phi i32 [ %written.0257.i, %do.end.i ], [ 0, %if.else.onenand_otp_write_oob_nolock.exit_crit_edge ], [ %len, %if.end109.i.onenand_otp_write_oob_nolock.exit_crit_edge ], [ %add110.i, %cleanup.i.onenand_otp_write_oob_nolock.exit_crit_edge ]
  %ret.1.i = phi i32 [ %call31.i, %do.end.i ], [ 0, %if.else.onenand_otp_write_oob_nolock.exit_crit_edge ], [ 0, %cleanup.i.onenand_otp_write_oob_nolock.exit_crit_edge ], [ 0, %if.end109.i.onenand_otp_write_oob_nolock.exit_crit_edge ]
  %167 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %written.2.i, ptr %retlen, align 4
  br label %if.end

if.end:                                           ; preds = %onenand_otp_write_oob_nolock.exit, %if.then
  %ret.0 = phi i32 [ %call4, %if.then ], [ %ret.1.i, %onenand_otp_write_oob_nolock.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops) #13
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !127, !129, !130, !131, !132, !134, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !209, !210, !212, !214, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !285, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !303, !304, !306, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !333, !334, !336, !337, !338, !340, !341, !343, !344, !345, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !361, !363, !364, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395}
!llvm.named.register.sp = !{!397}
!llvm.module.flags = !{!398, !399, !400, !401, !402, !403, !404, !405}
!llvm.ident = !{!406}

!0 = !{ptr @__param_flex_bdry, !1, !"__param_flex_bdry", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_flex_bdrytype189, !1, !"__UNIQUE_ID_flex_bdrytype189", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_flex_bdry190, !4, !"__UNIQUE_ID_flex_bdry190", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 43, i32 1}
!5 = !{ptr @__param_otp, !6, !"__param_otp", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_otptype191, !6, !"__UNIQUE_ID_otptype191", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_otp192, !9, !"__UNIQUE_ID_otp192", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 54, i32 1}
!10 = !{ptr @__ksymtab_onenand_addr, !11, !"__ksymtab_onenand_addr", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 358, i32 1}
!12 = !{ptr @__ksymtab_flexonenand_region, !13, !"__ksymtab_flexonenand_region", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 386, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1535, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @onenand_bbt_read_oob.__UNIQUE_ID_ddebug209, !15, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1543, i32 3}
!22 = !{ptr @onenand_bbt_read_oob._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @onenand_bbt_read_oob._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3850, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @onenand_scan._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @onenand_scan._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @onenand_scan.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3884, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @onenand_scan.__key.8, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3885, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3913, i32 3}
!37 = !{ptr @onenand_scan._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @onenand_scan._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_onenand_scan, !40, !"__ksymtab_onenand_scan", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 4010, i32 1}
!41 = !{ptr @__ksymtab_onenand_release, !42, !"__ksymtab_onenand_release", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 4011, i32 1}
!43 = !{ptr @__UNIQUE_ID_file235, !44, !"__UNIQUE_ID_file235", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 4013, i32 1}
!45 = !{ptr @__UNIQUE_ID_license236, !44, !"__UNIQUE_ID_license236", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_author237, !47, !"__UNIQUE_ID_author237", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 4014, i32 1}
!48 = !{ptr @__UNIQUE_ID_description238, !49, !"__UNIQUE_ID_description238", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 4015, i32 1}
!50 = !{ptr @otp, !51, !"otp", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 51, i32 12}
!52 = !{ptr @__param_str_flex_bdry, !1, !"__param_str_flex_bdry", i1 false, i1 false}
!53 = !{ptr @__param_arr_flex_bdry, !1, !"__param_arr_flex_bdry", i1 false, i1 false}
!54 = !{ptr @__param_str_otp, !6, !"__param_str_otp", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1015, i32 3}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1096, i32 2}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @onenand_recover_lsb._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @onenand_recover_lsb._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @init_completion.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/completion.h", i32 87, i32 2}
!64 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 586, i32 5}
!67 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @onenand_wait._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @onenand_wait._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 591, i32 5}
!72 = !{ptr @onenand_wait._entry.18, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @onenand_wait._entry_ptr.20, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 597, i32 3}
!76 = !{ptr @onenand_wait._entry.21, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @onenand_wait._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 603, i32 3}
!80 = !{ptr @onenand_wait._entry.24, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @onenand_wait._entry_ptr.26, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 609, i32 3}
!84 = !{ptr @onenand_wait._entry.27, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @onenand_wait._entry_ptr.29, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 616, i32 3}
!88 = !{ptr @onenand_wait._entry.30, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @onenand_wait._entry_ptr.32, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 619, i32 4}
!92 = !{ptr @onenand_wait._entry.33, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @onenand_wait._entry_ptr.35, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 678, i32 3}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @onenand_try_interrupt_wait._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @onenand_try_interrupt_wait._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1496, i32 4}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @onenand_bbt_wait._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @onenand_bbt_wait._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1502, i32 3}
!106 = !{ptr @onenand_bbt_wait._entry.40, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @onenand_bbt_wait._entry_ptr.42, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1510, i32 3}
!110 = !{ptr @onenand_bbt_wait._entry.43, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @onenand_bbt_wait._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2625, i32 4}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @onenand_check_lock_status._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @onenand_check_lock_status._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2527, i32 4}
!119 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @onenand_do_lock_cmd._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @onenand_do_lock_cmd._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @onenand_do_lock_cmd._entry.50, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2557, i32 4}
!124 = !{ptr @onenand_do_lock_cmd._entry_ptr.51, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3371, i32 10}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3373, i32 2}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @onenand_check_maf._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @onenand_check_maf._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3348, i32 31}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3349, i32 24}
!136 = !{ptr @onenand_manuf_ids, !137, !"onenand_manuf_ids", i1 false, i1 false}
!137 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3347, i32 43}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1979, i32 2}
!140 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @onenand_write_oob_nolock.__UNIQUE_ID_ddebug222, !139, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1993, i32 3}
!144 = !{ptr @onenand_write_oob_nolock._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @onenand_write_oob_nolock._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2000, i32 3}
!148 = !{ptr @onenand_write_oob_nolock._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @onenand_write_oob_nolock._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2043, i32 4}
!152 = !{ptr @onenand_write_oob_nolock._entry.63, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @onenand_write_oob_nolock._entry_ptr.65, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2049, i32 4}
!156 = !{ptr @onenand_write_oob_nolock._entry.66, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @onenand_write_oob_nolock._entry_ptr.68, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3337, i32 2}
!160 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @onenand_print_device_info._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @onenand_print_device_info._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3344, i32 2}
!171 = !{ptr @onenand_print_device_info._entry.77, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @onenand_print_device_info._entry_ptr.79, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3310, i32 3}
!175 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @onenand_check_features._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @onenand_check_features._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3312, i32 3}
!180 = !{ptr @onenand_check_features._entry.82, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @onenand_check_features._entry_ptr.84, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3314, i32 3}
!184 = !{ptr @onenand_check_features._entry.85, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @onenand_check_features._entry_ptr.87, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3316, i32 3}
!188 = !{ptr @onenand_check_features._entry.88, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @onenand_check_features._entry_ptr.90, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3318, i32 3}
!192 = !{ptr @onenand_check_features._entry.91, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @onenand_check_features._entry_ptr.93, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3474, i32 2}
!196 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @flexonenand_get_size._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @flexonenand_get_size._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3476, i32 3}
!201 = !{ptr @flexonenand_get_size._entry.96, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @flexonenand_get_size._entry_ptr.98, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3409, i32 3}
!205 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @flexonenand_get_boundary._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @flexonenand_get_boundary._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @flexonenand_ooblayout_ops, !211, !"flexonenand_ooblayout_ops", i1 false, i1 false}
!211 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 90, i32 39}
!212 = !{ptr @onenand_oob_128_ooblayout_ops, !213, !"onenand_oob_128_ooblayout_ops", i1 false, i1 false}
!213 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 130, i32 39}
!214 = !{ptr @onenand_oob_32_64_ooblayout_ops, !215, !"onenand_oob_32_64_ooblayout_ops", i1 false, i1 false}
!215 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 169, i32 39}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2341, i32 2}
!218 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @onenand_erase.__UNIQUE_ID_ddebug227, !217, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2361, i32 3}
!222 = !{ptr @onenand_erase._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @onenand_erase._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2367, i32 3}
!226 = !{ptr @onenand_erase._entry.106, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @onenand_erase._entry_ptr.108, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2283, i32 4}
!230 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @onenand_block_by_block_erase._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @onenand_block_by_block_erase._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2296, i32 4}
!235 = !{ptr @onenand_block_by_block_erase._entry.111, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @onenand_block_by_block_erase._entry_ptr.113, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @onenand_block_by_block_erase._entry.114, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2315, i32 5}
!239 = !{ptr @onenand_block_by_block_erase._entry_ptr.115, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2171, i32 4}
!242 = !{ptr @onenand_multiblock_erase._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @onenand_multiblock_erase._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2210, i32 5}
!246 = !{ptr @onenand_multiblock_erase._entry.117, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @onenand_multiblock_erase._entry_ptr.119, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @onenand_multiblock_erase._entry.120, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2230, i32 4}
!250 = !{ptr @onenand_multiblock_erase._entry_ptr.121, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2131, i32 4}
!253 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @onenand_multiblock_erase_verify._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @onenand_multiblock_erase_verify._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.124, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1128, i32 2}
!258 = !{ptr @.str.125, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @onenand_mlc_read_ops_nolock.__UNIQUE_ID_ddebug194, !257, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!260 = !{ptr @onenand_mlc_read_ops_nolock._entry, !261, !"_entry", i1 false, i1 false}
!261 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1136, i32 3}
!262 = !{ptr @onenand_mlc_read_ops_nolock._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1229, i32 2}
!265 = !{ptr @onenand_read_ops_nolock.__UNIQUE_ID_ddebug199, !264, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!266 = !{ptr @onenand_read_ops_nolock._entry, !267, !"_entry", i1 false, i1 false}
!267 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1237, i32 3}
!268 = !{ptr @onenand_read_ops_nolock._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1357, i32 2}
!271 = !{ptr @onenand_read_oob_nolock.__UNIQUE_ID_ddebug206, !270, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!272 = !{ptr @.str.128, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1371, i32 3}
!274 = !{ptr @onenand_read_oob_nolock._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @onenand_read_oob_nolock._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.130, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1395, i32 4}
!278 = !{ptr @onenand_read_oob_nolock._entry.129, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @onenand_read_oob_nolock._entry_ptr.131, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.132, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1799, i32 2}
!282 = !{ptr @onenand_write_ops_nolock.__UNIQUE_ID_ddebug217, !281, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1808, i32 3}
!285 = !{ptr @onenand_write_ops_nolock._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @onenand_write_ops_nolock._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @onenand_write_ops_nolock._entry.134, !288, !"_entry", i1 false, i1 false}
!288 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1877, i32 5}
!289 = !{ptr @onenand_write_ops_nolock._entry_ptr.135, !288, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @onenand_write_ops_nolock._entry.136, !291, !"_entry", i1 false, i1 false}
!291 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1886, i32 6}
!292 = !{ptr @onenand_write_ops_nolock._entry_ptr.137, !291, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @onenand_write_ops_nolock._entry.138, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1917, i32 5}
!295 = !{ptr @onenand_write_ops_nolock._entry_ptr.139, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @onenand_write_ops_nolock._entry.140, !297, !"_entry", i1 false, i1 false}
!297 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1925, i32 5}
!298 = !{ptr @onenand_write_ops_nolock._entry_ptr.141, !297, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @ffchars, !300, !"ffchars", i1 false, i1 false}
!300 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 174, i32 28}
!301 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1708, i32 2}
!303 = !{ptr @onenand_panic_write.__UNIQUE_ID_ddebug214, !302, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!304 = !{ptr @onenand_panic_write._entry, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 1713, i32 3}
!306 = !{ptr @onenand_panic_write._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.143, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3222, i32 3}
!309 = !{ptr @.str.144, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @onenand_lock_user_prot_reg._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @onenand_lock_user_prot_reg._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.145, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2840, i32 4}
!314 = !{ptr @onenand_otp_write_oob_nolock._entry, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.147, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2852, i32 4}
!318 = !{ptr @onenand_otp_write_oob_nolock._entry.146, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.148, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.150, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2853, i32 4}
!322 = !{ptr @onenand_otp_write_oob_nolock._entry.149, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.151, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.153, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2854, i32 4}
!326 = !{ptr @onenand_otp_write_oob_nolock._entry.152, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.154, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @onenand_otp_write_oob_nolock._entry.155, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2856, i32 4}
!330 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.156, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @onenand_otp_write_oob_nolock._entry.157, !332, !"_entry", i1 false, i1 false}
!332 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2857, i32 4}
!333 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.158, !332, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2858, i32 4}
!336 = !{ptr @onenand_otp_write_oob_nolock._entry.159, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.161, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @onenand_otp_write_oob_nolock._entry.162, !339, !"_entry", i1 false, i1 false}
!339 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2860, i32 4}
!340 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.163, !339, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.165, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2861, i32 4}
!343 = !{ptr @onenand_otp_write_oob_nolock._entry.164, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.166, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @onenand_otp_write_oob_nolock._entry.167, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2862, i32 4}
!347 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.168, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.170, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2864, i32 4}
!350 = !{ptr @onenand_otp_write_oob_nolock._entry.169, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @onenand_otp_write_oob_nolock._entry_ptr.171, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.172, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 2397, i32 2}
!354 = !{ptr @.str.173, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @onenand_sync.__UNIQUE_ID_ddebug228, !353, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!356 = !{ptr @.str.174, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3799, i32 3}
!358 = !{ptr @.str.175, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @onenand_resume._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @onenand_resume._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.176, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3570, i32 3}
!363 = !{ptr @.str.177, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @flexonenand_set_boundary._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @flexonenand_set_boundary._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3580, i32 3}
!368 = !{ptr @flexonenand_set_boundary._entry.178, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @flexonenand_set_boundary._entry_ptr.180, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.182, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3594, i32 3}
!372 = !{ptr @flexonenand_set_boundary._entry.181, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @flexonenand_set_boundary._entry_ptr.183, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.185, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3599, i32 2}
!376 = !{ptr @flexonenand_set_boundary._entry.184, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @flexonenand_set_boundary._entry_ptr.186, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.188, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3610, i32 3}
!380 = !{ptr @flexonenand_set_boundary._entry.187, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @flexonenand_set_boundary._entry_ptr.189, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.191, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3619, i32 3}
!384 = !{ptr @flexonenand_set_boundary._entry.190, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @flexonenand_set_boundary._entry_ptr.192, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.193, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3518, i32 2}
!388 = !{ptr @.str.194, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @flexonenand_check_blocks_erased._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @flexonenand_check_blocks_erased._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.196, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 3538, i32 4}
!393 = !{ptr @flexonenand_check_blocks_erased._entry.195, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @flexonenand_check_blocks_erased._entry_ptr.197, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @flex_bdry, !396, !"flex_bdry", i1 false, i1 false}
!396 = !{!"../drivers/mtd/nand/onenand/onenand_base.c", i32 40, i32 12}
!397 = !{!"sp"}
!398 = !{i32 1, !"wchar_size", i32 2}
!399 = !{i32 1, !"min_enum_size", i32 4}
!400 = !{i32 8, !"branch-target-enforcement", i32 0}
!401 = !{i32 8, !"sign-return-address", i32 0}
!402 = !{i32 8, !"sign-return-address-all", i32 0}
!403 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!404 = !{i32 7, !"uwtable", i32 1}
!405 = !{i32 7, !"frame-pointer", i32 2}
!406 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!407 = !{i64 2148794634, i64 2148794639, i64 2148794652, i64 2148794696, i64 2148794730, i64 2148794751}
!408 = !{!"branch_weights", i32 1, i32 2000}
!409 = !{!"branch_weights", i32 2000, i32 1}
!410 = !{i64 2153339984}
!411 = !{i32 0, i32 33}
!412 = !{i64 5131279}
!413 = !{i64 2153315798}
!414 = !{i64 2153316001}
!415 = !{i64 5131079}
!416 = !{!"auto-init"}
!417 = !{ptr @do_otp_lock, ptr @do_otp_read, ptr @do_otp_write}
