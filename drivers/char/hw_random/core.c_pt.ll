; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/core.c_pt.bc'
source_filename = "../drivers/char/hw_random/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hwrng_register\22, \22a\22\09"
module asm "\09.weak\09__crc_hwrng_register\09\09\09\09"
module asm "\09.long\09__crc_hwrng_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22hwrng_register\22\09\09\09\09\09"
module asm "__kstrtabns_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwrng_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_hwrng_unregister\09\09\09\09"
module asm "\09.long\09__crc_hwrng_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hwrng_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_hwrng_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_hwrng_register\09\09\09\09"
module asm "\09.long\09__crc_devm_hwrng_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwrng_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_hwrng_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_hwrng_unregister\09\09\09\09"
module asm "\09.long\09__crc_devm_hwrng_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwrng_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_current_quality = internal constant [25 x i8] c"rng_core.current_quality\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@current_quality = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_current_quality = internal constant %struct.kernel_param { ptr @__param_str_current_quality, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @current_quality } }, section "__param", align 4
@__UNIQUE_ID_current_qualitytype223 = internal constant [41 x i8] c"rng_core.parmtype=current_quality:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_current_quality224 = internal constant [86 x i8] c"rng_core.parm=current_quality:current hwrng entropy estimation per 1024 bits of input\00", section ".modinfo", align 1
@__param_str_default_quality = internal constant [25 x i8] c"rng_core.default_quality\00", align 1
@default_quality = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_default_quality = internal constant %struct.kernel_param { ptr @__param_str_default_quality, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @default_quality } }, section "__param", align 4
@__UNIQUE_ID_default_qualitytype225 = internal constant [41 x i8] c"rng_core.parmtype=default_quality:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_default_quality226 = internal constant [86 x i8] c"rng_core.parm=default_quality:default entropy content of hwrng per 1024 bits of input\00", section ".modinfo", align 1
@rng_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 183, ptr @.str.1, ptr @rng_chrdev_ops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @rng_dev_groups, ptr @.str.2, i16 0 }, [56 x i8] zeroinitializer }, align 32
@rng_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rng_mutex, i64 52), ptr getelementptr (i8, ptr @rng_mutex, i64 52) }, ptr @rng_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rng_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rng_list, ptr @rng_list }, [24 x i8] zeroinitializer }, align 32
@current_rng = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cur_rng_set_by_user = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_hwrng_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwrng_register = external dso_local constant [0 x i8], align 1
@__ksymtab_hwrng_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwrng_register to i32), ptr @__kstrtab_hwrng_register, ptr @__kstrtabns_hwrng_register }, section "___ksymtab_gpl+hwrng_register", align 4
@hwrng_fill = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hwrng_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwrng_unregister to i32), ptr @__kstrtab_hwrng_unregister, ptr @__kstrtabns_hwrng_unregister }, section "___ksymtab_gpl+hwrng_unregister", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devm_hwrng_release\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_devm_hwrng_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwrng_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwrng_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwrng_register to i32), ptr @__kstrtab_devm_hwrng_register, ptr @__kstrtabns_devm_hwrng_register }, section "___ksymtab_gpl+devm_hwrng_register", align 4
@__kstrtab_devm_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwrng_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwrng_unregister to i32), ptr @__kstrtab_devm_hwrng_unregister, ptr @__kstrtabns_devm_hwrng_unregister }, section "___ksymtab_gpl+devm_hwrng_unregister", align 4
@rng_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rng_fillbuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_rng_core__229_641_hwrng_modinit6 = internal global ptr @hwrng_modinit, section ".initcall6.init", align 4
@__exitcall_hwrng_modexit = internal global ptr @hwrng_modexit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [62 x i8] c"rng_core.description=H/W Random Number Generator (RNG) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [46 x i8] c"rng_core.file=drivers/char/hw_random/rng-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [21 x i8] c"rng_core.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hw_random\00", [22 x i8] zeroinitializer }, align 32
@rng_chrdev_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @rng_dev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rng_dev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rng_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rng_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwrng\00", [26 x i8] zeroinitializer }, align 32
@reading_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reading_mutex, i64 52), ptr getelementptr (i8, ptr @reading_mutex, i64 52) }, ptr @reading_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@data_avail = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reading_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reading_mutex\00", [18 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rng_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rng_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rng_dev_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_rng_current, ptr @dev_attr_rng_available, ptr @dev_attr_rng_selected, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_rng_current = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rng_current_show, ptr @rng_current_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rng_available = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rng_available_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rng_selected = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rng_selected_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rng_current\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rng_available\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rng_selected\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rng_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rng_mutex\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@start_khwrngd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hwrng_fill thread creation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start_khwrngd\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/char/hw_random/core.c\00", [34 x i8] zeroinitializer }, align 32
@start_khwrngd._entry_ptr = internal global ptr @start_khwrngd._entry, section ".printk_index", align 4
@hwrng_fillfn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.22, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014hwrng: no data available\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hwrng_fillfn\00", [19 x i8] zeroinitializer }, align 32
@hwrng_fillfn._entry_ptr = internal global ptr @hwrng_fillfn._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"current_quality\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 42, i32 23 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"default_quality\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 43, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"rng_miscdev\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 291, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"rng_mutex\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"rng_list\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 35, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"current_rng\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 30, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"cur_rng_set_by_user\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"hwrng_fill\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 33, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 584, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"rng_buffer\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 41, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"rng_fillbuf\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 41, i32 25 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 293, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"rng_chrdev_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 282, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"rng_dev_groups\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 294, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"reading_mutex\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"data_avail\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 40, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 39, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 230, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 214, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 174, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"rng_dev_group\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 413, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"rng_dev_attrs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 406, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"dev_attr_rng_current\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"dev_attr_rng_available\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"dev_attr_rng_selected\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 402, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 368, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 368, i32 59 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 334, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 403, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 387, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 389, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 404, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 399, i32 25 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 37, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 87, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 457, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [33 x i8] c"../drivers/char/hw_random/core.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 441, i32 4 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_current_quality224, ptr @__UNIQUE_ID_current_qualitytype223, ptr @__UNIQUE_ID_default_quality226, ptr @__UNIQUE_ID_default_qualitytype225, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_hwrng_modexit, ptr @__initcall__kmod_rng_core__229_641_hwrng_modinit6, ptr @__ksymtab_devm_hwrng_register, ptr @__ksymtab_devm_hwrng_unregister, ptr @__ksymtab_hwrng_register, ptr @__ksymtab_hwrng_unregister, ptr @__param_current_quality, ptr @__param_default_quality, ptr @hwrng_fillfn._entry, ptr @hwrng_fillfn._entry_ptr, ptr @hwrng_modexit, ptr @start_khwrngd._entry, ptr @start_khwrngd._entry_ptr, ptr @unregister_miscdev, ptr @current_quality, ptr @default_quality, ptr @rng_miscdev, ptr @rng_mutex, ptr @rng_list, ptr @current_rng, ptr @cur_rng_set_by_user, ptr @hwrng_fill, ptr @.str, ptr @rng_buffer, ptr @rng_fillbuf, ptr @.str.1, ptr @rng_chrdev_ops, ptr @rng_dev_groups, ptr @.str.2, ptr @reading_mutex, ptr @data_avail, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rng_dev_group, ptr @rng_dev_attrs, ptr @dev_attr_rng_current, ptr @dev_attr_rng_available, ptr @dev_attr_rng_selected, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_quality to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_quality to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_rng to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cur_rng_set_by_user to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwrng_fill to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_fillbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_chrdev_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reading_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_avail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_dev_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rng_current to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rng_available to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rng_selected to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_khwrngd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwrng_fillfn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @unregister_miscdev() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @misc_deregister(ptr noundef nonnull @rng_miscdev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwrng_register(ptr noundef %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rng, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data_read = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 4
  %2 = ptrtoint ptr %data_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_read, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %read = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 5
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @rng_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @rng_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %tmp.0 = getelementptr i8, ptr %.pn, i32 -32
  %7 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp.0, align 4
  %9 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rng, align 4
  %call = tail call i32 @strcmp(ptr noundef %8, ptr noundef %10) #16
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %for.body.out_unlock_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.out_unlock_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

for.end:                                          ; preds = %for.cond
  %cleanup_done = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 10
  %11 = ptrtoint ptr %cleanup_done to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cleanup_done, align 4
  %wait.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #13
  tail call void @complete(ptr noundef %cleanup_done) #13
  %quality22 = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 7
  br label %for.cond14

for.cond14:                                       ; preds = %for.body18.for.cond14_crit_edge, %for.end
  %rng_list_ptr.0.in = phi ptr [ @rng_list, %for.end ], [ %rng_list_ptr.0, %for.body18.for.cond14_crit_edge ]
  %12 = ptrtoint ptr %rng_list_ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %rng_list_ptr.0 = load ptr, ptr %rng_list_ptr.0.in, align 4
  %cmp.i.not = icmp eq ptr %rng_list_ptr.0, @rng_list
  br i1 %cmp.i.not, label %for.cond14.for.end30_crit_edge, label %for.body18

for.cond14.for.end30_crit_edge:                   ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.body18:                                       ; preds = %for.cond14
  %quality = getelementptr i8, ptr %rng_list_ptr.0, i32 -4
  %13 = ptrtoint ptr %quality to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %quality, align 4
  %15 = ptrtoint ptr %quality22 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %quality22, align 4
  %cmp24 = icmp ult i16 %14, %16
  br i1 %cmp24, label %for.body18.for.end30_crit_edge, label %for.body18.for.cond14_crit_edge

for.body18.for.cond14_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond14

for.body18.for.end30_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.end30:                                        ; preds = %for.body18.for.end30_crit_edge, %for.cond14.for.end30_crit_edge
  %list31 = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rng_list_ptr.0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list31, ptr noundef %18, ptr noundef %rng_list_ptr.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.end30.list_add_tail.exit_crit_edge

for.end30.list_add_tail.exit_crit_edge:           ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list31, ptr %prev.i, align 4
  %20 = ptrtoint ptr %list31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rng_list_ptr.0, ptr %list31, align 4
  %prev3.i.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list31, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end30.list_add_tail.exit_crit_edge
  %23 = load ptr, ptr @current_rng, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %list_add_tail.exit.if.then42_crit_edge, label %lor.lhs.false33

list_add_tail.exit.if.then42_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

lor.lhs.false33:                                  ; preds = %list_add_tail.exit
  %.b = load i1, ptr @cur_rng_set_by_user, align 4
  br i1 %.b, label %lor.lhs.false33.lor.lhs.false50_crit_edge, label %land.lhs.true35

lor.lhs.false33.lor.lhs.false50_crit_edge:        ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false50

land.lhs.true35:                                  ; preds = %lor.lhs.false33
  %24 = ptrtoint ptr %quality22 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %quality22, align 4
  %quality38 = getelementptr inbounds %struct.hwrng, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %quality38 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %quality38, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp40 = icmp ugt i16 %25, %27
  br i1 %cmp40, label %land.lhs.true35.if.then42_crit_edge, label %land.lhs.true35.lor.lhs.false50_crit_edge

land.lhs.true35.lor.lhs.false50_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false50

land.lhs.true35.if.then42_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then42:                                        ; preds = %land.lhs.true35.if.then42_crit_edge, %list_add_tail.exit.if.then42_crit_edge
  %call43 = tail call fastcc i32 @set_current_rng(ptr noundef %rng)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then42.out_unlock_crit_edge

if.then42.out_unlock_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end46:                                         ; preds = %if.then42
  %ref = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end46.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !123

if.end46.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end46
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end46.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end46.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  tail call fastcc void @add_early_randomness(ptr noundef %rng)
  tail call fastcc void @put_rng(ptr noundef %rng)
  br label %cleanup

lor.lhs.false50:                                  ; preds = %land.lhs.true35.lor.lhs.false50_crit_edge, %lor.lhs.false33.lor.lhs.false50_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  %init = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 1
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init, align 4
  %tobool51.not = icmp eq ptr %31, null
  br i1 %tobool51.not, label %cleanup.critedge, label %lor.lhs.false50.cleanup_crit_edge

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_unlock:                                       ; preds = %if.then42.out_unlock_crit_edge, %for.body.out_unlock_crit_edge
  %err.0 = phi i32 [ %call43, %if.then42.out_unlock_crit_edge ], [ -17, %for.body.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  br label %cleanup

cleanup.critedge:                                 ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_early_randomness(ptr noundef %rng)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %out_unlock, %lor.lhs.false50.cleanup_crit_edge, %kref_get.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false50.cleanup_crit_edge ], [ 0, %kref_get.exit ], [ %err.0, %out_unlock ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_current_rng(ptr noundef %rng) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #13
  br i1 %call, label %do.end8, label %do.body3, !prof !124

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !125
  unreachable

do.end8:                                          ; preds = %entry
  %ref.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #13
  %0 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.end8
  %2 = phi i32 [ %1, %do.end8 ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 %5, i32 %add.i.i.i.i.i, ptr elementtype(i32) %ref.i) #13, !srcloc !126
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !124

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !124

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 0) #13
  %10 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr42.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr42.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not.i, label %if.end.i, label %kref_get_unless_zero.exit.i.skip_init.i_crit_edge

kref_get_unless_zero.exit.i.skip_init.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_init.i

if.end.i:                                         ; preds = %kref_get_unless_zero.exit.i
  %init.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 1
  %12 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then2.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %13(ptr noundef %rng) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end8.i_crit_edge, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then2.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  %14 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %ref.i, align 4
  %cleanup_done.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 10
  %15 = ptrtoint ptr %cleanup_done.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cleanup_done.i, align 4
  br label %skip_init.i

skip_init.i:                                      ; preds = %if.end8.i, %kref_get_unless_zero.exit.i.skip_init.i_crit_edge
  %quality.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 7
  %16 = ptrtoint ptr %quality.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %quality.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool10.not.i = icmp eq i16 %17, 0
  br i1 %tobool10.not.i, label %cond.false.i, label %skip_init.i.cond.end.i_crit_edge

skip_init.i.cond.end.i_crit_edge:                 ; preds = %skip_init.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %skip_init.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = load i16, ptr @default_quality, align 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %skip_init.i.cond.end.i_crit_edge
  %cond.in.i = phi i16 [ %18, %cond.false.i ], [ %17, %skip_init.i.cond.end.i_crit_edge ]
  %19 = call i16 @llvm.umin.i16(i16 %cond.in.i, i16 1024) #13
  store i16 %19, ptr @current_quality, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp18.i = icmp eq i16 %19, 0
  br i1 %cmp18.i, label %land.lhs.true.i, label %cond.end.i.land.lhs.true27.i_crit_edge

cond.end.i.land.lhs.true27.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true27.i

land.lhs.true.i:                                  ; preds = %cond.end.i
  %20 = load ptr, ptr @hwrng_fill, align 4
  %tobool20.not.i = icmp eq ptr %20, null
  br i1 %tobool20.not.i, label %land.lhs.true.i.if.end12_crit_edge, label %if.end23.i

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end23.i:                                       ; preds = %land.lhs.true.i
  %call22.i = call i32 @kthread_stop(ptr noundef nonnull %20) #13
  %.pr.i = load i16, ptr @current_quality, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp25.not.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp25.not.i, label %if.end23.i.if.end12_crit_edge, label %if.end23.i.land.lhs.true27.i_crit_edge

if.end23.i.land.lhs.true27.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true27.i

if.end23.i.if.end12_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true27.i:                                ; preds = %if.end23.i.land.lhs.true27.i_crit_edge, %cond.end.i.land.lhs.true27.i_crit_edge
  %21 = load ptr, ptr @hwrng_fill, align 4
  %tobool28.not.i = icmp eq ptr %21, null
  br i1 %tobool28.not.i, label %if.then29.i, label %land.lhs.true27.i.if.end12_crit_edge

land.lhs.true27.i.if.end12_crit_edge:             ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then29.i:                                      ; preds = %land.lhs.true27.i
  %call.i.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @hwrng_fillfn, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.2) #13
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i = call i32 @wake_up_process(ptr noundef %call.i.i) #13
  br label %start_khwrngd.exit.i

do.end.i.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %call.i.i, ptr @hwrng_fill, align 4
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  br label %start_khwrngd.exit.i

start_khwrngd.exit.i:                             ; preds = %do.end.i.i, %if.end.i.i
  %storemerge.i.i = phi ptr [ %call.i.i, %if.end.i.i ], [ null, %do.end.i.i ]
  store ptr %storemerge.i.i, ptr @hwrng_fill, align 4
  br label %if.end12

if.end12:                                         ; preds = %start_khwrngd.exit.i, %land.lhs.true27.i.if.end12_crit_edge, %if.end23.i.if.end12_crit_edge, %land.lhs.true.i.if.end12_crit_edge
  call fastcc void @drop_current_rng()
  store ptr %rng, ptr @current_rng, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call4.i, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_early_randomness(ptr noundef %rng) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @reading_mutex, i32 noundef 0) #13
  %0 = load ptr, ptr @rng_buffer, align 4
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @reading_mutex) #13
  br i1 %call.i, label %do.end8.i, label %do.body3.i, !prof !124

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #13, !srcloc !127
  unreachable

do.end8.i:                                        ; preds = %entry
  %read.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 5
  %1 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read.i, align 4
  %tobool9.not.i = icmp eq ptr %2, null
  br i1 %tobool9.not.i, label %if.end14.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call i32 %2(ptr noundef %rng, ptr noundef %0, i32 noundef 16, i1 noundef zeroext false) #13
  br label %rng_get_data.exit

if.end14.i:                                       ; preds = %do.end8.i
  %data_present.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 3
  %3 = ptrtoint ptr %data_present.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_present.i, align 4
  %tobool15.not.i = icmp eq ptr %4, null
  br i1 %tobool15.not.i, label %if.end14.i.if.then21.i_crit_edge, label %if.then16.i

if.end14.i.if.then21.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.then16.i:                                      ; preds = %if.end14.i
  %call18.i = tail call i32 %4(ptr noundef %rng, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %phi.cmp.i = icmp eq i32 %call18.i, 0
  br i1 %phi.cmp.i, label %rng_get_data.exit.thread, label %if.then16.i.if.then21.i_crit_edge

if.then16.i.if.then21.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

rng_get_data.exit.thread:                         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #13
  br label %if.end

if.then21.i:                                      ; preds = %if.then16.i.if.then21.i_crit_edge, %if.end14.i.if.then21.i_crit_edge
  %data_read.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 4
  %5 = ptrtoint ptr %data_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data_read.i, align 4
  %call22.i = tail call i32 %6(ptr noundef %rng, ptr noundef %0) #13
  br label %rng_get_data.exit

rng_get_data.exit:                                ; preds = %if.then21.i, %if.then10.i
  %retval.0.i = phi i32 [ %call13.i, %if.then10.i ], [ %call22.i, %if.then21.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp2, label %if.then, label %rng_get_data.exit.if.end_crit_edge

rng_get_data.exit.if.end_crit_edge:               ; preds = %rng_get_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %rng_get_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  %7 = load ptr, ptr @rng_buffer, align 4
  tail call void @add_device_randomness(ptr noundef %7, i32 noundef %retval.0.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %rng_get_data.exit.if.end_crit_edge, %rng_get_data.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_rng(ptr noundef %rng) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %rng, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %ref = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !130
  %cleanup.i.i = getelementptr %struct.hwrng, ptr %rng, i32 0, i32 2
  %1 = ptrtoint ptr %cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cleanup.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_rng.exit.i_crit_edge, label %if.then.i.i

if.then.i.cleanup_rng.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_rng.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %2(ptr noundef nonnull %rng) #13
  br label %cleanup_rng.exit.i

cleanup_rng.exit.i:                               ; preds = %if.then.i.i, %if.then.i.cleanup_rng.exit.i_crit_edge
  %cleanup_done.i.i = getelementptr %struct.hwrng, ptr %rng, i32 0, i32 10
  tail call void @complete(ptr noundef %cleanup_done.i.i) #13
  br label %if.end

if.end:                                           ; preds = %cleanup_rng.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwrng_unregister(ptr noundef %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  %0 = load ptr, ptr @current_rng, align 4
  %list = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %9 = load ptr, ptr @current_rng, align 4
  %cmp = icmp eq ptr %9, %rng
  br i1 %cmp, label %if.then, label %list_del.exit.if.end2_crit_edge

list_del.exit.if.end2_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then:                                          ; preds = %list_del.exit
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #13
  br i1 %call.i, label %do.end8.i, label %do.body3.i, !prof !124

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #13, !srcloc !131
  unreachable

do.end8.i:                                        ; preds = %if.then
  %10 = load volatile ptr, ptr @rng_list, align 4
  %cmp.i.not.i = icmp eq ptr %10, @rng_list
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %do.end8.i
  %add.ptr.i = getelementptr i8, ptr %10, i32 -32
  %11 = load ptr, ptr @current_rng, align 4
  %cmp.i = icmp eq ptr %add.ptr.i, %11
  br i1 %cmp.i, label %if.then11.i.if.end2thread-pre-split_crit_edge, label %cond.end.i

if.then11.i.if.end2thread-pre-split_crit_edge:    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2thread-pre-split

cond.end.i:                                       ; preds = %if.then11.i
  %call12.i = tail call fastcc i32 @set_current_rng(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %cond.end.i.if.end2thread-pre-split_crit_edge, label %if.then1

cond.end.i.if.end2thread-pre-split_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2thread-pre-split

if.else.i:                                        ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drop_current_rng() #13
  br label %if.end2thread-pre-split

if.then1:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drop_current_rng()
  br label %if.end2thread-pre-split

if.end2thread-pre-split:                          ; preds = %if.then1, %if.else.i, %cond.end.i.if.end2thread-pre-split_crit_edge, %if.then11.i.if.end2thread-pre-split_crit_edge
  store i1 false, ptr @cur_rng_set_by_user, align 4
  %.pr = load ptr, ptr @current_rng, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end2thread-pre-split, %list_del.exit.if.end2_crit_edge
  %12 = phi ptr [ %.pr, %if.end2thread-pre-split ], [ %9, %list_del.exit.if.end2_crit_edge ]
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end2.get_current_rng_nolock.exit_crit_edge, label %if.then.i

if.end2.get_current_rng_nolock.exit_crit_edge:    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_rng_nolock.exit

if.then.i:                                        ; preds = %if.end2
  %ref.i = getelementptr inbounds %struct.hwrng, ptr %12, i32 0, i32 9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !122
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !123

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_current_rng_nolock.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_current_rng_nolock.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_rng_nolock.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_current_rng_nolock.exit

get_current_rng_nolock.exit:                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_current_rng_nolock.exit_crit_edge, %if.end2.get_current_rng_nolock.exit_crit_edge
  %15 = load ptr, ptr @current_rng, align 4
  %16 = load volatile ptr, ptr @rng_list, align 4
  %cmp.i23.not = icmp eq ptr %16, @rng_list
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  br i1 %cmp.i23.not, label %if.then6, label %get_current_rng_nolock.exit.if.end11_crit_edge

get_current_rng_nolock.exit.if.end11_crit_edge:   ; preds = %get_current_rng_nolock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then6:                                         ; preds = %get_current_rng_nolock.exit
  %17 = load ptr, ptr @hwrng_fill, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.then6.if.end11_crit_edge, label %if.then8

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @kthread_stop(ptr noundef nonnull %17) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then6.if.end11_crit_edge, %get_current_rng_nolock.exit.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %if.then13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  %cmp14.not = icmp eq ptr %0, %15
  br i1 %cmp14.not, label %if.then13.if.end16_crit_edge, label %if.then15

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_early_randomness(ptr noundef nonnull %15)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13.if.end16_crit_edge
  tail call fastcc void @put_rng(ptr noundef nonnull %15)
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end11.if.end17_crit_edge
  %cleanup_done = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 10
  tail call void @wait_for_completion(ptr noundef %cleanup_done) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drop_current_rng() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #13
  br i1 %call, label %do.end6, label %do.body3, !prof !124

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #13, !srcloc !132
  unreachable

do.end6:                                          ; preds = %entry
  %0 = load ptr, ptr @current_rng, align 4
  %tobool7.not = icmp eq ptr %0, null
  br i1 %tobool7.not, label %do.end6.return_crit_edge, label %if.end9

do.end6.return_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end9:                                          ; preds = %do.end6
  %ref = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !130
  %cleanup.i.i = getelementptr %struct.hwrng, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cleanup.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_rng.exit.i_crit_edge, label %if.then.i.i

if.then.i.cleanup_rng.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_rng.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef nonnull %0) #13
  br label %cleanup_rng.exit.i

cleanup_rng.exit.i:                               ; preds = %if.then.i.i, %if.then.i.cleanup_rng.exit.i_crit_edge
  %cleanup_done.i.i = getelementptr %struct.hwrng, ptr %0, i32 0, i32 10
  tail call void @complete(ptr noundef %cleanup_done.i.i) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %cleanup_rng.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  store ptr null, ptr @current_rng, align 4
  br label %return

return:                                           ; preds = %kref_put.exit, %do.end6.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_hwrng_register(ptr noundef %dev, ptr noundef %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_hwrng_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hwrng_register(ptr noundef %rng)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @devres_free(ptr noundef nonnull %call) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rng, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_hwrng_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @hwrng_unregister(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_hwrng_unregister(ptr noundef %dev, ptr noundef %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_hwrng_release, ptr noundef nonnull @devm_hwrng_match, ptr noundef %rng) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_hwrng_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !123

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 573, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hwrng_modexit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  %0 = load ptr, ptr @current_rng, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !124

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 633, 0\0A.popsection", ""() #13, !srcloc !133
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = load ptr, ptr @rng_buffer, align 4
  tail call void @kfree(ptr noundef %1) #13
  %2 = load ptr, ptr @rng_fillbuf, align 4
  tail call void @kfree(ptr noundef %2) #13
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  tail call void @misc_deregister(ptr noundef nonnull @rng_miscdev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hwrng_modinit() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 128) #18
  store ptr %call7.i, ptr @rng_buffer, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 128) #18
  store ptr %call7.i12, ptr @rng_fillbuf, align 4
  %tobool4.not = icmp eq ptr %call7.i12, null
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @misc_register(ptr noundef nonnull @rng_miscdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load ptr, ptr @rng_fillbuf, align 4
  tail call void @kfree(ptr noundef %2) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then9, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.then9 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  %3 = load ptr, ptr @rng_buffer, align 4
  tail call void @kfree(ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_dev_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %offp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %entry
  %size.addr.0 = phi i32 [ %size, %entry ], [ %size.addr.1, %signal_pending.exit.while.cond_crit_edge ]
  %ret.0 = phi i32 [ 0, %entry ], [ %ret.1, %signal_pending.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %tobool.not = icmp eq i32 %size.addr.0, 0
  br i1 %tobool.not, label %while.cond.out_crit_edge, label %while.body

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body:                                       ; preds = %while.cond
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %while.body
  %0 = load ptr, ptr @current_rng, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i, label %if.end.thread, label %if.then.i.i63

if.end.thread:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  br label %out

if.then.i.i63:                                    ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #13, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i63.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !123

if.then.i.i63.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i63
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_rng.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i63.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i63.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %get_current_rng.exit

get_current_rng.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge
  %.pr = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  %cmp.i = icmp ugt ptr %.pr, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_current_rng.exit.if.then_crit_edge, label %if.end

get_current_rng.exit.if.then_crit_edge:           ; preds = %get_current_rng.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %get_current_rng.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  %retval.0.i72 = phi ptr [ %.pr, %get_current_rng.exit.if.then_crit_edge ], [ inttoptr (i32 -512 to ptr), %while.body.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i72 to i32
  br label %out

if.end:                                           ; preds = %get_current_rng.exit
  %tobool3.not = icmp eq ptr %.pr, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @reading_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_put_crit_edge

if.end5.out_put_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end9:                                          ; preds = %if.end5
  %4 = load i32, ptr @data_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.else_crit_edge

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then11:                                        ; preds = %if.end9
  %5 = load ptr, ptr @rng_buffer, align 4
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = lshr i32 %7, 11
  %and.lobit = and i32 %and, 1
  %8 = xor i32 %and.lobit, 1
  %call.i64 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @reading_mutex) #13
  br i1 %call.i64, label %do.end8.i, label %do.body3.i, !prof !124

do.body3.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #13, !srcloc !127
  unreachable

do.end8.i:                                        ; preds = %if.then11
  %read.i = getelementptr inbounds %struct.hwrng, ptr %.pr, i32 0, i32 5
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %tobool9.not.i = icmp eq ptr %10, null
  br i1 %tobool9.not.i, label %if.end14.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.i = icmp ne i32 %8, 0
  %call13.i = tail call i32 %10(ptr noundef nonnull %.pr, ptr noundef %5, i32 noundef 128, i1 noundef zeroext %tobool12.i) #13
  br label %rng_get_data.exit

if.end14.i:                                       ; preds = %do.end8.i
  %data_present.i = getelementptr inbounds %struct.hwrng, ptr %.pr, i32 0, i32 3
  %11 = ptrtoint ptr %data_present.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_present.i, align 4
  %tobool15.not.i = icmp eq ptr %12, null
  br i1 %tobool15.not.i, label %if.end14.i.if.then21.i_crit_edge, label %if.then16.i

if.end14.i.if.then21.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.then16.i:                                      ; preds = %if.end14.i
  %call18.i = tail call i32 %12(ptr noundef nonnull %.pr, i32 noundef %8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %phi.cmp.i = icmp eq i32 %call18.i, 0
  br i1 %phi.cmp.i, label %if.end17.thread80, label %if.then16.i.if.then21.i_crit_edge

if.then16.i.if.then21.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.end17.thread80:                                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 0, ptr @data_avail, align 4
  br label %if.then19

if.then21.i:                                      ; preds = %if.then16.i.if.then21.i_crit_edge, %if.end14.i.if.then21.i_crit_edge
  %data_read.i = getelementptr inbounds %struct.hwrng, ptr %.pr, i32 0, i32 4
  %13 = ptrtoint ptr %data_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_read.i, align 4
  %call22.i = tail call i32 %14(ptr noundef nonnull %.pr, ptr noundef %5) #13
  br label %rng_get_data.exit

rng_get_data.exit:                                ; preds = %if.then21.i, %if.then10.i
  %retval.0.i65 = phi i32 [ %call13.i, %if.then10.i ], [ %call22.i, %if.then21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i65)
  %cmp = icmp slt i32 %retval.0.i65, 0
  br i1 %cmp, label %rng_get_data.exit.out_unlock_reading_crit_edge, label %if.end17

rng_get_data.exit.out_unlock_reading_crit_edge:   ; preds = %rng_get_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_reading

if.end17:                                         ; preds = %rng_get_data.exit
  store i32 %retval.0.i65, ptr @data_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i65)
  %tobool18.not = icmp eq i32 %retval.0.i65, 0
  br i1 %tobool18.not, label %if.end17.if.then19_crit_edge, label %if.end17.if.else_crit_edge

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %if.end17.thread80
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and21 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then19.if.end34_crit_edge, label %if.then19.out_unlock_reading_crit_edge

if.then19.out_unlock_reading_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_reading

if.then19.if.end34_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.else:                                          ; preds = %if.end17.if.else_crit_edge, %if.end9.if.else_crit_edge
  %17 = phi i32 [ %retval.0.i65, %if.end17.if.else_crit_edge ], [ %4, %if.end9.if.else_crit_edge ]
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %size.addr.0)
  %sub = sub i32 %17, %18
  store i32 %sub, ptr @data_avail, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %ret.0
  %19 = load ptr, ptr @rng_buffer, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9.i.i = icmp slt i32 %18, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.else
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out_unlock_reading_crit_edge, label %if.then27.i.i, !prof !124

land.rhs16.i.i.out_unlock_reading_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_reading

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out_unlock_reading

if.then.i.i.i:                                    ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %add.ptr28, i32 noundef %18, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.out_unlock_reading_crit_edge, label %if.end.i.i

if.then.i.i.i.out_unlock_reading_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_reading

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %18, i32 -1226833920) #19, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_unlock_reading_crit_edge

if.end.i.i.out_unlock_reading_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_reading

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr28, i32 noundef %18) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %add.ptr28, i32 noundef %18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool30.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool30.not, label %if.end32, label %copy_to_user.exit.out_unlock_reading_crit_edge

copy_to_user.exit.out_unlock_reading_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock_reading

if.end32:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub33 = sub i32 %size.addr.0, %18
  %add = add i32 %18, %ret.0
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.then19.if.end34_crit_edge
  %size.addr.1 = phi i32 [ %sub33, %if.end32 ], [ %size.addr.0, %if.then19.if.end34_crit_edge ]
  %ret.1 = phi i32 [ %add, %if.end32 ], [ %ret.0, %if.then19.if.end34_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #13
  tail call fastcc void @put_rng(ptr noundef nonnull %.pr)
  %21 = tail call i32 @llvm.read_register.i32(metadata !112) #13
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 16384
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.not, label %if.end34.if.end38_crit_edge, label %if.then36

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  %26 = tail call i32 @llvm.read_register.i32(metadata !112) #13
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stack.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i66 = icmp eq i32 %34, 0
  br i1 %tobool.not.i66, label %signal_pending.exit, label %if.end38.out_crit_edge, !prof !124

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

signal_pending.exit:                              ; preds = %if.end38
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %31, align 4
  %and1.i.i.i.i.i = and i32 %36, 1
  %tobool41.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool41.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.out_crit_edge

signal_pending.exit.out_crit_edge:                ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

out:                                              ; preds = %out_put, %signal_pending.exit.out_crit_edge, %if.end38.out_crit_edge, %if.end.out_crit_edge, %if.then, %if.end.thread, %while.cond.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.then ], [ %ret.0, %out_put ], [ %ret.0, %if.end.thread ], [ %ret.1, %if.end38.out_crit_edge ], [ %ret.1, %signal_pending.exit.out_crit_edge ], [ %ret.0, %if.end.out_crit_edge ], [ %ret.0, %while.cond.out_crit_edge ]
  %err.0 = phi i32 [ %3, %if.then ], [ %err.2, %out_put ], [ -19, %if.end.thread ], [ -512, %if.end38.out_crit_edge ], [ -512, %signal_pending.exit.out_crit_edge ], [ -19, %if.end.out_crit_edge ], [ 0, %while.cond.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool44.not = icmp eq i32 %ret.2, 0
  %spec.select62 = select i1 %tobool44.not, i32 %err.0, i32 %ret.2
  ret i32 %spec.select62

out_unlock_reading:                               ; preds = %copy_to_user.exit.out_unlock_reading_crit_edge, %if.end.i.i.out_unlock_reading_crit_edge, %if.then.i.i.i.out_unlock_reading_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_unlock_reading_crit_edge, %if.then19.out_unlock_reading_crit_edge, %rng_get_data.exit.out_unlock_reading_crit_edge
  %err.1 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_unlock_reading_crit_edge ], [ %retval.0.i65, %rng_get_data.exit.out_unlock_reading_crit_edge ], [ -11, %if.then19.out_unlock_reading_crit_edge ], [ -14, %copy_to_user.exit.out_unlock_reading_crit_edge ], [ -14, %if.then.i.i.i.out_unlock_reading_crit_edge ], [ -14, %if.end.i.i.out_unlock_reading_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #13
  br label %out_put

out_put:                                          ; preds = %out_unlock_reading, %if.end5.out_put_crit_edge
  %err.2 = phi i32 [ %err.1, %out_unlock_reading ], [ -512, %if.end5.out_put_crit_edge ]
  tail call fastcc void @put_rng(ptr noundef nonnull %.pr)
  br label %out
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rng_dev_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  %retval.0 = select i1 %cmp, i32 -22, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_current_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %0 = load ptr, ptr @current_rng, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i, label %if.end.thread, label %if.then.i.i

if.end.thread:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  br label %cond.end

if.then.i.i:                                      ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #13, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !123

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_rng.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %get_current_rng.exit

get_current_rng.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge
  %.pr = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  %cmp.i = icmp ugt ptr %.pr, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_current_rng.exit.if.then_crit_edge, label %if.end

get_current_rng.exit.if.then_crit_edge:           ; preds = %get_current_rng.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %get_current_rng.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i12 = phi ptr [ %.pr, %get_current_rng.exit.if.then_crit_edge ], [ inttoptr (i32 -512 to ptr), %entry.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i12 to i32
  br label %cleanup

if.end:                                           ; preds = %get_current_rng.exit
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge, %if.end.thread
  %retval.0.i11 = phi ptr [ %.pr, %cond.true ], [ null, %if.end.cond.end_crit_edge ], [ null, %if.end.thread ]
  %cond = phi ptr [ %5, %cond.true ], [ @.str.10, %if.end.cond.end_crit_edge ], [ @.str.10, %if.end.thread ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %cond)
  tail call fastcc void @put_rng(ptr noundef %retval.0.i11)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call3, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_current_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @current_rng, align 4
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.11) #13
  br i1 %call1, label %if.then2, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.then2:                                         ; preds = %if.end
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #13
  br i1 %call.i, label %do.end8.i, label %do.body3.i, !prof !124

do.body3.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #13, !srcloc !131
  unreachable

do.end8.i:                                        ; preds = %if.then2
  %1 = load volatile ptr, ptr @rng_list, align 4
  %cmp.i.not.i = icmp eq ptr %1, @rng_list
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %do.end8.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %2 = load ptr, ptr @current_rng, align 4
  %cmp.i = icmp eq ptr %add.ptr.i, %2
  br i1 %cmp.i, label %if.then11.i.if.end16.sink.split.i_crit_edge, label %cond.end.i

if.then11.i.if.end16.sink.split.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.sink.split.i

cond.end.i:                                       ; preds = %if.then11.i
  %call12.i = tail call fastcc i32 @set_current_rng(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %cond.end.i.if.end16.sink.split.i_crit_edge, label %cond.end.i.if.end12_crit_edge

cond.end.i.if.end12_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

cond.end.i.if.end16.sink.split.i_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drop_current_rng() #13
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %if.else.i, %cond.end.i.if.end16.sink.split.i_crit_edge, %if.then11.i.if.end16.sink.split.i_crit_edge
  store i1 false, ptr @cur_rng_set_by_user, align 4
  br label %if.end12

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @rng_list, %if.end.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @rng_list
  br i1 %cmp.not, label %for.cond.if.end12_crit_edge, label %for.body

for.cond.if.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

for.body:                                         ; preds = %for.cond
  %rng.0 = getelementptr i8, ptr %.pn, i32 -32
  %4 = ptrtoint ptr %rng.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rng.0, align 4
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %5, ptr noundef %buf) #13
  br i1 %call4, label %if.then5, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %rng.0.le = getelementptr i8, ptr %.pn, i32 -32
  store i1 true, ptr @cur_rng_set_by_user, align 4
  %call6 = tail call fastcc i32 @set_current_rng(ptr noundef %rng.0.le)
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %for.cond.if.end12_crit_edge, %if.end16.sink.split.i, %cond.end.i.if.end12_crit_edge
  %err.0 = phi i32 [ %call6, %if.then5 ], [ %call12.i, %cond.end.i.if.end12_crit_edge ], [ 0, %if.end16.sink.split.i ], [ 0, %for.cond.if.end12_crit_edge ]
  %6 = load ptr, ptr @current_rng, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %get_current_rng_nolock.exit.thread, label %if.then.i

get_current_rng_nolock.exit.thread:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  br label %if.end19

if.then.i:                                        ; preds = %if.end12
  %ref.i = getelementptr inbounds %struct.hwrng, ptr %6, i32 0, i32 9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !122
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !123

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_current_rng_nolock.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_current_rng_nolock.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_rng_nolock.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_current_rng_nolock.exit

get_current_rng_nolock.exit:                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_current_rng_nolock.exit_crit_edge
  %.pr = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  %tobool14.not = icmp eq ptr %.pr, null
  br i1 %tobool14.not, label %get_current_rng_nolock.exit.if.end19_crit_edge, label %if.then15

get_current_rng_nolock.exit.if.end19_crit_edge:   ; preds = %get_current_rng_nolock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %get_current_rng_nolock.exit
  %cmp16.not = icmp eq ptr %.pr, %0
  br i1 %cmp16.not, label %if.then15.if.end18_crit_edge, label %if.then17

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @add_early_randomness(ptr noundef nonnull %.pr)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then15.if.end18_crit_edge
  tail call fastcc void @put_rng(ptr noundef nonnull %.pr)
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %get_current_rng_nolock.exit.if.end19_crit_edge, %get_current_rng_nolock.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool20.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool20.not, i32 %len, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end19 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_available_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %.pn16 = load ptr, ptr @rng_list, align 4
  %cmp.not17 = icmp eq ptr %.pn16, @rng_list
  br i1 %cmp.not17, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn16, %if.end.for.body_crit_edge ]
  %rng.0 = getelementptr i8, ptr %.pn18, i32 -32
  %1 = ptrtoint ptr %rng.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rng.0, align 4
  %call1 = tail call i32 @strlcat(ptr noundef %buf, ptr noundef %2, i32 noundef 4096) #13
  %call2 = tail call i32 @strlcat(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef 4096) #13
  %3 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, @rng_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call7 = tail call i32 @strlcat(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef 4096) #13
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  %call8 = tail call i32 @strlen(ptr noundef %buf) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.end ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_selected_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @cur_rng_set_by_user, align 4
  %0 = zext i1 %.b to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %0) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwrng_fillfn(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call25 = tail call zeroext i1 @kthread_should_stop() #13
  br i1 %call25, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @rng_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i:                                         ; preds = %while.body
  %0 = load ptr, ptr @current_rng, align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i, label %if.end.i.get_current_rng.exit_crit_edge, label %if.then.i.i

if.end.i.get_current_rng.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_rng.exit

if.then.i.i:                                      ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #13, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !123

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_current_rng.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %get_current_rng.exit

get_current_rng.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_current_rng.exit_crit_edge, %if.end.i.get_current_rng.exit_crit_edge
  %3 = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #13
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %tobool.not = icmp eq ptr %3, null
  %or.cond = or i1 %cmp.i, %tobool.not
  br i1 %or.cond, label %get_current_rng.exit.while.end_crit_edge, label %if.end

get_current_rng.exit.while.end_crit_edge:         ; preds = %get_current_rng.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %get_current_rng.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @reading_mutex, i32 noundef 0) #13
  %4 = load ptr, ptr @rng_fillbuf, align 4
  %call.i16 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @reading_mutex) #13
  br i1 %call.i16, label %do.end8.i, label %do.body3.i, !prof !124

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #13, !srcloc !127
  unreachable

do.end8.i:                                        ; preds = %if.end
  %read.i = getelementptr inbounds %struct.hwrng, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i, align 4
  %tobool9.not.i = icmp eq ptr %6, null
  br i1 %tobool9.not.i, label %if.end14.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call i32 %6(ptr noundef nonnull %3, ptr noundef %4, i32 noundef 128, i1 noundef zeroext true) #13
  br label %rng_get_data.exit

if.end14.i:                                       ; preds = %do.end8.i
  %data_present.i = getelementptr inbounds %struct.hwrng, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %data_present.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_present.i, align 4
  %tobool15.not.i = icmp eq ptr %8, null
  br i1 %tobool15.not.i, label %if.end14.i.if.then21.i_crit_edge, label %if.then16.i

if.end14.i.if.then21.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.then16.i:                                      ; preds = %if.end14.i
  %call18.i = tail call i32 %8(ptr noundef nonnull %3, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %phi.cmp.i = icmp eq i32 %call18.i, 0
  br i1 %phi.cmp.i, label %if.then16.i.rng_get_data.exit_crit_edge, label %if.then16.i.if.then21.i_crit_edge

if.then16.i.if.then21.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21.i

if.then16.i.rng_get_data.exit_crit_edge:          ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rng_get_data.exit

if.then21.i:                                      ; preds = %if.then16.i.if.then21.i_crit_edge, %if.end14.i.if.then21.i_crit_edge
  %data_read.i = getelementptr inbounds %struct.hwrng, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %data_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_read.i, align 4
  %call22.i = tail call i32 %10(ptr noundef nonnull %3, ptr noundef %4) #13
  br label %rng_get_data.exit

rng_get_data.exit:                                ; preds = %if.then21.i, %if.then16.i.rng_get_data.exit_crit_edge, %if.then10.i
  %retval.0.i17 = phi i32 [ %call13.i, %if.then10.i ], [ %call22.i, %if.then21.i ], [ 0, %if.then16.i.rng_get_data.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #13
  tail call fastcc void @put_rng(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i17)
  %cmp = icmp slt i32 %retval.0.i17, 1
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %rng_get_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #17
  %call7 = tail call i32 @msleep_interruptible(i32 noundef 10000) #13
  br label %cleanup

if.end8:                                          ; preds = %rng_get_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = load ptr, ptr @rng_fillbuf, align 4
  %12 = load i16, ptr @current_quality, align 2
  %conv = zext i16 %12 to i32
  %mul = shl i32 %retval.0.i17, 3
  %mul9 = mul i32 %mul, %conv
  %shr = ashr i32 %mul9, 10
  tail call void @add_hwgenerator_randomness(ptr noundef %11, i32 noundef %retval.0.i17, i32 noundef %shr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %call = tail call zeroext i1 @kthread_should_stop() #13
  br i1 %call, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %get_current_rng.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  store ptr null, ptr @hwrng_fill, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_hwgenerator_randomness(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !59, !61, !62, !64, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !83, !85, !87, !89, !90, !92, !94, !95, !96, !98, !100, !101, !103, !104, !105, !106, !107, !109, !110, !111}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__param_current_quality, !1, !"__param_current_quality", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/core.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_current_qualitytype223, !1, !"__UNIQUE_ID_current_qualitytype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_current_quality224, !4, !"__UNIQUE_ID_current_quality224", i1 false, i1 false}
!4 = !{!"../drivers/char/hw_random/core.c", i32 46, i32 1}
!5 = !{ptr @__param_default_quality, !6, !"__param_default_quality", i1 false, i1 false}
!6 = !{!"../drivers/char/hw_random/core.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_default_qualitytype225, !6, !"__UNIQUE_ID_default_qualitytype225", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_default_quality226, !9, !"__UNIQUE_ID_default_quality226", i1 false, i1 false}
!9 = !{!"../drivers/char/hw_random/core.c", i32 49, i32 1}
!10 = !{ptr @__ksymtab_hwrng_register, !11, !"__ksymtab_hwrng_register", i1 false, i1 false}
!11 = !{!"../drivers/char/hw_random/core.c", i32 527, i32 1}
!12 = !{ptr @__ksymtab_hwrng_unregister, !13, !"__ksymtab_hwrng_unregister", i1 false, i1 false}
!13 = !{!"../drivers/char/hw_random/core.c", i32 562, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/hw_random/core.c", i32 584, i32 8}
!16 = !{ptr @__ksymtab_devm_hwrng_register, !17, !"__ksymtab_devm_hwrng_register", i1 false, i1 false}
!17 = !{!"../drivers/char/hw_random/core.c", i32 598, i32 1}
!18 = !{ptr @__ksymtab_devm_hwrng_unregister, !19, !"__ksymtab_devm_hwrng_unregister", i1 false, i1 false}
!19 = !{!"../drivers/char/hw_random/core.c", i32 604, i32 1}
!20 = !{ptr @__initcall__kmod_rng_core__229_641_hwrng_modinit6, !21, !"__initcall__kmod_rng_core__229_641_hwrng_modinit6", i1 false, i1 false}
!21 = !{!"../drivers/char/hw_random/core.c", i32 641, i32 1}
!22 = !{ptr @__exitcall_hwrng_modexit, !23, !"__exitcall_hwrng_modexit", i1 false, i1 false}
!23 = !{!"../drivers/char/hw_random/core.c", i32 642, i32 1}
!24 = !{ptr @__UNIQUE_ID_description230, !25, !"__UNIQUE_ID_description230", i1 false, i1 false}
!25 = !{!"../drivers/char/hw_random/core.c", i32 644, i32 1}
!26 = !{ptr @__UNIQUE_ID_file231, !27, !"__UNIQUE_ID_file231", i1 false, i1 false}
!27 = !{!"../drivers/char/hw_random/core.c", i32 645, i32 1}
!28 = !{ptr @__UNIQUE_ID_license232, !27, !"__UNIQUE_ID_license232", i1 false, i1 false}
!29 = !{ptr @current_rng, !30, !"current_rng", i1 false, i1 false}
!30 = !{!"../drivers/char/hw_random/core.c", i32 30, i32 22}
!31 = distinct !{null, !32, !"cur_rng_set_by_user", i1 false, i1 false}
!32 = !{!"../drivers/char/hw_random/core.c", i32 32, i32 12}
!33 = !{ptr @hwrng_fill, !34, !"hwrng_fill", i1 false, i1 false}
!34 = !{!"../drivers/char/hw_random/core.c", i32 33, i32 28}
!35 = !{ptr @rng_buffer, !36, !"rng_buffer", i1 false, i1 false}
!36 = !{!"../drivers/char/hw_random/core.c", i32 41, i32 12}
!37 = !{ptr @rng_fillbuf, !38, !"rng_fillbuf", i1 false, i1 false}
!38 = !{!"../drivers/char/hw_random/core.c", i32 41, i32 25}
!39 = !{ptr @current_quality, !40, !"current_quality", i1 false, i1 false}
!40 = !{!"../drivers/char/hw_random/core.c", i32 42, i32 23}
!41 = !{ptr @default_quality, !42, !"default_quality", i1 false, i1 false}
!42 = !{!"../drivers/char/hw_random/core.c", i32 43, i32 23}
!43 = !{ptr @__param_str_current_quality, !1, !"__param_str_current_quality", i1 false, i1 false}
!44 = !{ptr @__param_str_default_quality, !6, !"__param_str_default_quality", i1 false, i1 false}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/hw_random/core.c", i32 293, i32 11}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/hw_random/core.c", i32 294, i32 14}
!49 = !{ptr @rng_miscdev, !50, !"rng_miscdev", i1 false, i1 false}
!50 = !{!"../drivers/char/hw_random/core.c", i32 291, i32 26}
!51 = !{ptr @rng_chrdev_ops, !52, !"rng_chrdev_ops", i1 false, i1 false}
!52 = !{!"../drivers/char/hw_random/core.c", i32 282, i32 37}
!53 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/hw_random/core.c", i32 39, i32 8}
!55 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @reading_mutex, !54, !"reading_mutex", i1 false, i1 false}
!57 = !{ptr @data_avail, !58, !"data_avail", i1 false, i1 false}
!58 = !{!"../drivers/char/hw_random/core.c", i32 40, i32 12}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!61 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!64 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!66 = !{ptr @rng_dev_groups, !67, !"rng_dev_groups", i1 false, i1 false}
!67 = !{!"../drivers/char/hw_random/core.c", i32 413, i32 1}
!68 = !{ptr @rng_dev_group, !67, !"rng_dev_group", i1 false, i1 false}
!69 = !{ptr @rng_dev_attrs, !70, !"rng_dev_attrs", i1 false, i1 false}
!70 = !{!"../drivers/char/hw_random/core.c", i32 406, i32 26}
!71 = !{ptr @.str.8, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/char/hw_random/core.c", i32 402, i32 8}
!73 = !{ptr @dev_attr_rng_current, !72, !"dev_attr_rng_current", i1 false, i1 false}
!74 = !{ptr @.str.9, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/char/hw_random/core.c", i32 368, i32 33}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/hw_random/core.c", i32 368, i32 59}
!78 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/hw_random/core.c", i32 334, i32 23}
!80 = !{ptr @.str.12, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/char/hw_random/core.c", i32 403, i32 8}
!82 = !{ptr @dev_attr_rng_available, !81, !"dev_attr_rng_available", i1 false, i1 false}
!83 = !{ptr @.str.13, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/char/hw_random/core.c", i32 387, i32 16}
!85 = !{ptr @.str.14, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/char/hw_random/core.c", i32 389, i32 15}
!87 = !{ptr @.str.15, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/char/hw_random/core.c", i32 404, i32 8}
!89 = !{ptr @dev_attr_rng_selected, !88, !"dev_attr_rng_selected", i1 false, i1 false}
!90 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/char/hw_random/core.c", i32 399, i32 25}
!92 = !{ptr @.str.17, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/hw_random/core.c", i32 37, i32 8}
!94 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rng_mutex, !93, !"rng_mutex", i1 false, i1 false}
!96 = !{ptr @rng_list, !97, !"rng_list", i1 false, i1 false}
!97 = !{!"../drivers/char/hw_random/core.c", i32 35, i32 8}
!98 = !{ptr @init_completion.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../include/linux/completion.h", i32 87, i32 2}
!100 = !{ptr @.str.19, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.20, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/hw_random/core.c", i32 457, i32 3}
!103 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @start_khwrngd._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @start_khwrngd._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/char/hw_random/core.c", i32 441, i32 4}
!109 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @hwrng_fillfn._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @hwrng_fillfn._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2148202204, i64 2148202236, i64 2148202265, i64 2148202299, i64 2148202330, i64 2148202353}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2153458945, i64 2153459438, i64 2153458982, i64 2153459038, i64 2153459072, i64 2153459096, i64 2153459137, i64 2153459158, i64 2153459186, i64 2153459220}
!126 = !{i64 684410, i64 684434, i64 684455, i64 684472, i64 684489}
!127 = !{i64 2153462563, i64 2153463057, i64 2153462600, i64 2153462656, i64 2153462690, i64 2153462714, i64 2153462755, i64 2153462776, i64 2153462804, i64 2153462838}
!128 = !{i64 2148290205}
!129 = !{i64 2148204669, i64 2148204701, i64 2148204730, i64 2148204764, i64 2148204795, i64 2148204818}
!130 = !{i64 2149568923}
!131 = !{i64 2153464380, i64 2153464874, i64 2153464417, i64 2153464473, i64 2153464507, i64 2153464531, i64 2153464572, i64 2153464593, i64 2153464621, i64 2153464655}
!132 = !{i64 2153460586, i64 2153461080, i64 2153460623, i64 2153460679, i64 2153460713, i64 2153460737, i64 2153460778, i64 2153460799, i64 2153460827, i64 2153460861}
!133 = !{i64 2153496684, i64 2153497178, i64 2153496721, i64 2153496777, i64 2153496811, i64 2153496835, i64 2153496876, i64 2153496897, i64 2153496925, i64 2153496959}
!134 = !{i64 2152663471, i64 2152663496}
