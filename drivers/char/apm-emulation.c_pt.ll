; ModuleID = '/llk/IR_all_yes/drivers/char/apm-emulation.c_pt.bc'
source_filename = "../drivers/char/apm-emulation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+apm_get_power_status\22, \22a\22\09"
module asm "\09.weak\09__crc_apm_get_power_status\09\09\09\09"
module asm "\09.long\09__crc_apm_get_power_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_apm_get_power_status:\09\09\09\09\09"
module asm "\09.asciz \09\22apm_get_power_status\22\09\09\09\09\09"
module asm "__kstrtabns_apm_get_power_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+apm_queue_event\22, \22a\22\09"
module asm "\09.weak\09__crc_apm_queue_event\09\09\09\09"
module asm "\09.long\09__crc_apm_queue_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_apm_queue_event:\09\09\09\09\09"
module asm "\09.asciz \09\22apm_queue_event\22\09\09\09\09\09"
module asm "__kstrtabns_apm_queue_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.apm_queue = type { i32, i32, [16 x i16] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.apm_user = type { %struct.list_head, i8, i32, i32, %struct.apm_queue }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.apm_power_info = type { i8, i8, i8, i32, i32, i32 }

@apm_get_power_status = dso_local global { ptr, [28 x i8] } { ptr @__apm_get_power_status, [28 x i8] zeroinitializer }, align 32
@__kstrtab_apm_get_power_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_apm_get_power_status = external dso_local constant [0 x i8], align 1
@__ksymtab_apm_get_power_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @apm_get_power_status to i32), ptr @__kstrtab_apm_get_power_status, ptr @__kstrtabns_apm_get_power_status }, section "___ksymtab+apm_get_power_status", align 4
@apm_notif_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @apm_suspend_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@apm_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 134, ptr @.str.8, ptr @apm_bios_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apm\00", [28 x i8] zeroinitializer }, align 32
@kapmd_tsk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_apm_emulation__288_679_apm_init6 = internal global ptr @apm_init, section ".initcall6.init", align 4
@__exitcall_apm_exit = internal global ptr @apm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [38 x i8] c"apm_emulation.author=Stephen Rothwell\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [52 x i8] c"apm_emulation.description=Advanced Power Management\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"apm_emulation.file=drivers/char/apm-emulation\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"apm_emulation.license=GPL\00", section ".modinfo", align 1
@__setup_str_apm_setup = internal constant [5 x i8] c"apm=\00", section ".init.rodata", align 1
@__setup_apm_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_apm_setup, ptr @apm_setup, i32 0 }, section ".init.setup", align 4
@kapmd_queue_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kapmd_queue = internal global { %struct.apm_queue, [56 x i8] } zeroinitializer, align 32
@kapmd_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @kapmd_wait, i64 44), ptr getelementptr (i8, ptr @kapmd_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_apm_queue_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_apm_queue_event = external dso_local constant [0 x i8], align 1
@__ksymtab_apm_queue_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @apm_queue_event to i32), ptr @__kstrtab_apm_queue_event, ptr @__kstrtabns_apm_queue_event }, section "___ksymtab+apm_queue_event", align 4
@userspace_notification_inhibit = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@state_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @state_lock, i64 52), ptr getelementptr (i8, ptr @state_lock, i64 52) }, ptr @state_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@user_list_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @user_list_lock, i64 56), ptr getelementptr (i8, ptr @user_list_lock, i64 56) }, ptr @user_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@apm_user_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @apm_user_list, ptr @apm_user_list }, [24 x i8] zeroinitializer }, align 32
@suspend_acks_pending = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@apm_waitqueue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @apm_waitqueue, i64 44), ptr getelementptr (i8, ptr @apm_waitqueue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/char/apm-emulation.c\00", [35 x i8] zeroinitializer }, align 32
@apm_suspend_waitqueue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @apm_suspend_waitqueue, i64 44), ptr getelementptr (i8, ptr @apm_suspend_waitqueue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"state_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"user_list_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"user_list_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apm_waitqueue.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"apm_suspend_waitqueue.lock\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apm_bios\00", [23 x i8] zeroinitializer }, align 32
@apm_bios_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @apm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apm_poll, ptr @apm_ioctl, ptr null, ptr null, i32 0, ptr @apm_open, ptr null, ptr @apm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@apm_disabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@apm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015apm: disabled on user request.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apm_init\00", [23 x i8] zeroinitializer }, align 32
@apm_init._entry_ptr = internal global ptr @apm_init._entry, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kapmd\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sec\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s 1.2 0x%02x 0x%02x 0x%02x 0x%02x %d%% %d %s\0A\00", [49 x i8] zeroinitializer }, align 32
@driver_version = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.13\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c", \09\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kapmd_queue_lock\00", [47 x i8] zeroinitializer }, align 32
@queue_add_event.notified = internal global { i32, [28 x i8] } zeroinitializer, align 32
@queue_add_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.1, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013apm: an event queue overflowed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"queue_add_event\00", [16 x i8] zeroinitializer }, align 32
@queue_add_event._entry_ptr = internal global ptr @queue_add_event._entry, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kapmd_wait.lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 16, i64 2, i64 5, i64 6, i64 8, i64 10]
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"apm_get_power_status\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 159, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"apm_notif_block\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 626, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"apm_device\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 390, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 674, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"kapmd_tsk\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 122, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"kapmd_queue_lock\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"kapmd_queue\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 140, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"kapmd_wait\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"userspace_notification_inhibit\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 120, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"state_lock\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"user_list_lock\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"apm_user_list\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 131, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"suspend_acks_pending\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 119, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"apm_waitqueue\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 554, i32 9 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"apm_suspend_waitqueue\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 142, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 130, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 124, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 125, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 392, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"apm_bios_fops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 380, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 174, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 57, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"apm_disabled\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 635, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 639, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 452, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 453, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 454, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 457, i32 16 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 144, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 690, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 692, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 696, i32 23 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 139, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"notified\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 181, i32 14 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 184, i32 7 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [32 x i8] c"../drivers/char/apm-emulation.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 138, i32 8 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_apm_exit, ptr @__initcall__kmod_apm_emulation__288_679_apm_init6, ptr @__ksymtab_apm_get_power_status, ptr @__ksymtab_apm_queue_event, ptr @__setup_apm_setup, ptr @apm_exit, ptr @apm_init._entry, ptr @apm_init._entry_ptr, ptr @queue_add_event._entry, ptr @queue_add_event._entry_ptr, ptr @apm_get_power_status, ptr @apm_notif_block, ptr @apm_device, ptr @.str, ptr @kapmd_tsk, ptr @kapmd_queue_lock, ptr @kapmd_queue, ptr @kapmd_wait, ptr @userspace_notification_inhibit, ptr @state_lock, ptr @user_list_lock, ptr @apm_user_list, ptr @suspend_acks_pending, ptr @apm_waitqueue, ptr @.str.1, ptr @apm_suspend_waitqueue, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @apm_bios_fops, ptr @.str.11, ptr @.str.12, ptr @apm_disabled, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @driver_version, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @queue_add_event.notified, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_get_power_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_notif_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kapmd_tsk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kapmd_queue_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kapmd_queue to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kapmd_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_notification_inhibit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_list_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_user_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_acks_pending to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_waitqueue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_suspend_waitqueue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_bios_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_version to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_add_event.notified to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_add_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__apm_get_power_status(ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apm_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_pm_notifier(ptr noundef nonnull @apm_notif_block) #11
  tail call void @misc_deregister(ptr noundef nonnull @apm_device) #11
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #11
  %0 = load ptr, ptr @kapmd_tsk, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @apm_disabled, align 4
  br i1 %.b, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kapmd, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.15) #11
  store ptr %call1, ptr @kapmd_tsk, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call1 to i32
  store ptr null, ptr @kapmd_tsk, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @wake_up_process(ptr noundef %call1) #11
  %call7 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_apm_show, ptr noundef null) #11
  %call8 = tail call i32 @misc_register(ptr noundef nonnull @apm_device) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.out_stop_crit_edge

if.end5.out_stop_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_stop

if.end11:                                         ; preds = %if.end5
  %call12 = tail call i32 @register_pm_notifier(ptr noundef nonnull @apm_notif_block) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %out_unregister

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_unregister:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @misc_deregister(ptr noundef nonnull @apm_device) #11
  br label %out_stop

out_stop:                                         ; preds = %out_unregister, %if.end5.out_stop_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end5.out_stop_crit_edge ], [ %call12, %out_unregister ]
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #11
  %1 = load ptr, ptr @kapmd_tsk, align 4
  %call16 = tail call i32 @kthread_stop(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %out_stop, %if.end11.cleanup_crit_edge, %if.then3, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ %0, %if.then3 ], [ %ret.0, %out_stop ]
  ret i32 %retval.0
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_setup(ptr noundef readonly %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not23 = icmp eq ptr %str, null
  br i1 %cmp.not23, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %if.end15.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %str.addr.024 = phi ptr [ %add.ptr, %if.end15.land.rhs_crit_edge ], [ %str, %entry.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %str.addr.024 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.addr.024, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.not = icmp eq i8 %1, 0
  br i1 %cmp1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call = tail call i32 @strncmp(ptr noundef nonnull %str.addr.024, ptr noundef nonnull dereferenceable(4) @.str.20, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @apm_disabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call5 = tail call i32 @strncmp(ptr noundef nonnull %str.addr.024, ptr noundef nonnull dereferenceable(3) @.str.21, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @apm_disabled, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @strchr(ptr noundef nonnull %str.addr.024, i32 noundef 44)
  %cmp11.not = icmp eq ptr %call10, null
  br i1 %cmp11.not, label %if.end9.while.end_crit_edge, label %if.end15

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end15:                                         ; preds = %if.end9
  %call14 = tail call i32 @strspn(ptr noundef nonnull %call10, ptr noundef nonnull @.str.22)
  %add.ptr = getelementptr i8, ptr %call10, i32 %call14
  %cmp.not = icmp eq ptr %add.ptr, null
  br i1 %cmp.not, label %if.end15.while.end_crit_edge, label %if.end15.land.rhs_crit_edge

if.end15.land.rhs_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %if.end9.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @apm_queue_event(i16 noundef zeroext %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kapmd_queue_lock) #11
  %0 = load i32, ptr @kapmd_queue, align 4
  %add.i = add i32 %0, 1
  %rem.i = and i32 %add.i, 15
  store i32 %rem.i, ptr @kapmd_queue, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %1)
  %cmp.i = icmp eq i32 %rem.i, %1
  br i1 %cmp.i, label %if.then.i, label %entry.queue_add_event.exit_crit_edge

entry.queue_add_event.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %queue_add_event.exit

if.then.i:                                        ; preds = %entry
  %2 = load i32, ptr @queue_add_event.notified, align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr @queue_add_event.notified, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.i = icmp eq i32 %2, 0
  br i1 %cmp3.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  %add6.i = add i32 %3, 1
  %rem7.i = and i32 %add6.i, 15
  store i32 %rem7.i, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  br label %queue_add_event.exit

queue_add_event.exit:                             ; preds = %if.end.i, %entry.queue_add_event.exit_crit_edge
  %4 = load i32, ptr @kapmd_queue, align 4
  %arrayidx.i = getelementptr %struct.apm_queue, ptr @kapmd_queue, i32 0, i32 2, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %event, ptr %arrayidx.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kapmd_queue_lock, i32 noundef %call2) #11
  tail call void @__wake_up(ptr noundef nonnull @kapmd_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_suspend_notifier(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readnone %dummy) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @userspace_notification_inhibit, i32 noundef 4) #11
  %0 = load volatile i32, ptr @userspace_notification_inhibit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup135_crit_edge

entry.cleanup135_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup135

if.end:                                           ; preds = %entry
  %1 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.cleanup135_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge215
    i32 4, label %if.end.sw.bb108_crit_edge
    i32 2, label %if.end.sw.bb108_crit_edge216
  ]

if.end.sw.bb108_crit_edge216:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb108

if.end.sw.bb108_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb108

if.end.sw.bb_crit_edge215:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.cleanup135_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup135

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge215
  tail call void @mutex_lock_nested(ptr noundef nonnull @state_lock, i32 noundef 0) #11
  tail call void @down_read(ptr noundef nonnull @user_list_lock) #11
  %as.0194 = load ptr, ptr @apm_user_list, align 4
  %cmp1.not195 = icmp eq ptr %as.0194, @apm_user_list
  br i1 %cmp1.not195, label %sw.bb.for.end_crit_edge, label %for.body.lr.ph

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp = icmp eq i32 %event, 3
  %conv = select i1 %cmp, i16 10, i16 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %as.0196 = phi ptr [ %as.0194, %for.body.lr.ph ], [ %as.0, %for.inc.for.body_crit_edge ]
  %suspend_state = getelementptr inbounds %struct.apm_user, ptr %as.0196, i32 0, i32 3
  %2 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp2.not = icmp eq i32 %3, 5
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %reader = getelementptr inbounds %struct.apm_user, ptr %as.0196, i32 0, i32 1
  %4 = ptrtoint ptr %reader to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %reader, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -33
  br i1 %.not, label %if.then15, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then15:                                        ; preds = %land.lhs.true
  %5 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %suspend_state, align 4
  %call.i.i170 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @suspend_acks_pending, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @suspend_acks_pending, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @suspend_acks_pending, ptr nonnull @suspend_acks_pending, i32 1, ptr nonnull elementtype(i32) @suspend_acks_pending) #11, !srcloc !113
  %queue = getelementptr inbounds %struct.apm_user, ptr %as.0196, i32 0, i32 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue, align 4
  %add.i = add i32 %8, 1
  %rem.i = and i32 %add.i, 15
  store i32 %rem.i, ptr %queue, align 4
  %event_tail.i = getelementptr inbounds %struct.apm_user, ptr %as.0196, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %10)
  %cmp.i = icmp eq i32 %rem.i, %10
  br i1 %cmp.i, label %if.then.i, label %if.then15.queue_add_event.exit_crit_edge

if.then15.queue_add_event.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %queue_add_event.exit

if.then.i:                                        ; preds = %if.then15
  %11 = load i32, ptr @queue_add_event.notified, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr @queue_add_event.notified, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.i = icmp eq i32 %11, 0
  br i1 %cmp3.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_tail.i, align 4
  %add6.i = add i32 %13, 1
  %rem7.i = and i32 %add6.i, 15
  store i32 %rem7.i, ptr %event_tail.i, align 4
  br label %queue_add_event.exit

queue_add_event.exit:                             ; preds = %if.end.i, %if.then15.queue_add_event.exit_crit_edge
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue, align 4
  %arrayidx.i = getelementptr %struct.apm_user, ptr %as.0196, i32 0, i32 4, i32 2, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %arrayidx.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %queue_add_event.exit, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %as.0196 to i32
  call void @__asan_load4_noabort(i32 %17)
  %as.0 = load ptr, ptr %as.0196, align 4
  %cmp1.not = icmp eq ptr %as.0, @apm_user_list
  br i1 %cmp1.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @user_list_lock) #11
  tail call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  tail call void @__wake_up(ptr noundef nonnull @apm_waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 557) #11
  %call.i.i171 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @suspend_acks_pending, i32 noundef 4) #11
  %18 = load volatile i32, ptr @suspend_acks_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp26 = icmp eq i32 %18, 0
  br i1 %cmp26, label %for.end.cleanup135_crit_edge, label %if.then40

for.end.cleanup135_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup135

if.then40:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call43197 = call i32 @prepare_to_wait_event(ptr noundef nonnull @apm_suspend_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i172198 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @suspend_acks_pending, i32 noundef 4) #11
  %20 = load volatile i32, ptr @suspend_acks_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp46199 = icmp eq i32 %20, 0
  br i1 %cmp46199, label %if.end72.thread, label %if.then40.if.end65_crit_edge

if.then40.if.end65_crit_edge:                     ; preds = %if.then40
  br label %if.end65

if.end72.thread:                                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef nonnull @apm_suspend_waitqueue, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup135

if.end65:                                         ; preds = %cleanup.if.end65_crit_edge, %if.then40.if.end65_crit_edge
  %__ret41.1201 = phi i32 [ %__ret41.1, %cleanup.if.end65_crit_edge ], [ 500, %if.then40.if.end65_crit_edge ]
  %call43200 = phi i32 [ %call43, %cleanup.if.end65_crit_edge ], [ %call43197, %if.then40.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43200)
  %tobool66.not = icmp eq i32 %call43200, 0
  br i1 %tobool66.not, label %cleanup, label %if.end72.thread184

if.end72.thread184:                               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end102

cleanup:                                          ; preds = %if.end65
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret41.1201) #11
  %call43 = call i32 @prepare_to_wait_event(ptr noundef nonnull @apm_suspend_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i172 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @suspend_acks_pending, i32 noundef 4) #11
  %21 = load volatile i32, ptr @suspend_acks_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp46 = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool52.not = icmp eq i32 %call69, 0
  %22 = select i1 %cmp46, i1 %tobool52.not, i1 false
  %__ret41.1 = select i1 %22, i32 1, i32 %call69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.1)
  %tobool59.not = icmp eq i32 %__ret41.1, 0
  %23 = select i1 %cmp46, i1 true, i1 %tobool59.not
  br i1 %23, label %if.end72, label %cleanup.if.end65_crit_edge

cleanup.if.end65_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.end72:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef nonnull @apm_suspend_waitqueue, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.1)
  %cmp74 = icmp eq i32 %__ret41.1, 0
  br i1 %cmp74, label %if.then76, label %if.end72.if.end102_crit_edge

if.end72.if.end102_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then76:                                        ; preds = %if.end72
  call void @mutex_lock_nested(ptr noundef nonnull @state_lock, i32 noundef 0) #11
  call void @down_read(ptr noundef nonnull @user_list_lock) #11
  %as.1202 = load ptr, ptr @apm_user_list, align 4
  %cmp82.not203 = icmp eq ptr %as.1202, @apm_user_list
  br i1 %cmp82.not203, label %if.then76.for.end101_crit_edge, label %if.then76.for.body85_crit_edge

if.then76.for.body85_crit_edge:                   ; preds = %if.then76
  br label %for.body85

if.then76.for.end101_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.body85:                                       ; preds = %for.inc95.for.body85_crit_edge, %if.then76.for.body85_crit_edge
  %as.1204 = phi ptr [ %as.1, %for.inc95.for.body85_crit_edge ], [ %as.1202, %if.then76.for.body85_crit_edge ]
  %suspend_state86 = getelementptr inbounds %struct.apm_user, ptr %as.1204, i32 0, i32 3
  %24 = ptrtoint ptr %suspend_state86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %suspend_state86, align 4
  %.off = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then92, label %for.body85.for.inc95_crit_edge

for.body85.for.inc95_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc95

if.then92:                                        ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %suspend_state86 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %suspend_state86, align 4
  %call.i.i173 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @suspend_acks_pending, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @suspend_acks_pending, i32 1, i32 3, i32 1) #11
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @suspend_acks_pending, ptr nonnull @suspend_acks_pending, i32 1, ptr nonnull elementtype(i32) @suspend_acks_pending) #11, !srcloc !114
  br label %for.inc95

for.inc95:                                        ; preds = %if.then92, %for.body85.for.inc95_crit_edge
  %28 = ptrtoint ptr %as.1204 to i32
  call void @__asan_load4_noabort(i32 %28)
  %as.1 = load ptr, ptr %as.1204, align 4
  %cmp82.not = icmp eq ptr %as.1, @apm_user_list
  br i1 %cmp82.not, label %for.inc95.for.end101_crit_edge, label %for.inc95.for.body85_crit_edge

for.inc95.for.body85_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body85

for.inc95.for.end101_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.end101:                                       ; preds = %for.inc95.for.end101_crit_edge, %if.then76.for.end101_crit_edge
  call void @up_read(ptr noundef nonnull @user_list_lock) #11
  call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  br label %cleanup135

if.end102:                                        ; preds = %if.end72.if.end102_crit_edge, %if.end72.thread184
  %__ret.1183 = phi i32 [ %__ret41.1, %if.end72.if.end102_crit_edge ], [ %call43200, %if.end72.thread184 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__ret.1183)
  %cmp103 = icmp sgt i32 %__ret.1183, -1
  br i1 %cmp103, label %if.end102.cleanup135_crit_edge, label %if.end106

if.end102.cleanup135_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup135

if.end106:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 1, %__ret.1183
  %or.i = or i32 %sub.i, 32768
  br label %cleanup135

sw.bb108:                                         ; preds = %if.end.sw.bb108_crit_edge, %if.end.sw.bb108_crit_edge216
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cmp109 = icmp eq i32 %event, 4
  %conv112 = select i1 %cmp109, i16 3, i16 14
  tail call fastcc void @queue_event(i16 noundef zeroext %conv112)
  tail call void @mutex_lock_nested(ptr noundef nonnull @state_lock, i32 noundef 0) #11
  tail call void @down_read(ptr noundef nonnull @user_list_lock) #11
  %as.2191 = load ptr, ptr @apm_user_list, align 4
  %cmp118.not192 = icmp eq ptr %as.2191, @apm_user_list
  br i1 %cmp118.not192, label %sw.bb108.for.end134_crit_edge, label %sw.bb108.for.body121_crit_edge

sw.bb108.for.body121_crit_edge:                   ; preds = %sw.bb108
  br label %for.body121

sw.bb108.for.end134_crit_edge:                    ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end134

for.body121:                                      ; preds = %for.inc128.for.body121_crit_edge, %sw.bb108.for.body121_crit_edge
  %as.2193 = phi ptr [ %as.2, %for.inc128.for.body121_crit_edge ], [ %as.2191, %sw.bb108.for.body121_crit_edge ]
  %suspend_state122 = getelementptr inbounds %struct.apm_user, ptr %as.2193, i32 0, i32 3
  %29 = ptrtoint ptr %suspend_state122 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %suspend_state122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp123 = icmp eq i32 %30, 3
  br i1 %cmp123, label %if.then125, label %for.body121.for.inc128_crit_edge

for.body121.for.inc128_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc128

if.then125:                                       ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #13
  %suspend_result = getelementptr inbounds %struct.apm_user, ptr %as.2193, i32 0, i32 2
  %31 = ptrtoint ptr %suspend_result to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %suspend_result, align 4
  %32 = ptrtoint ptr %suspend_state122 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %suspend_state122, align 4
  br label %for.inc128

for.inc128:                                       ; preds = %if.then125, %for.body121.for.inc128_crit_edge
  %33 = ptrtoint ptr %as.2193 to i32
  call void @__asan_load4_noabort(i32 %33)
  %as.2 = load ptr, ptr %as.2193, align 4
  %cmp118.not = icmp eq ptr %as.2, @apm_user_list
  br i1 %cmp118.not, label %for.inc128.for.end134_crit_edge, label %for.inc128.for.body121_crit_edge

for.inc128.for.body121_crit_edge:                 ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body121

for.inc128.for.end134_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end134

for.end134:                                       ; preds = %for.inc128.for.end134_crit_edge, %sw.bb108.for.end134_crit_edge
  tail call void @up_read(ptr noundef nonnull @user_list_lock) #11
  tail call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  tail call void @__wake_up(ptr noundef nonnull @apm_suspend_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup135

cleanup135:                                       ; preds = %for.end134, %if.end106, %if.end102.cleanup135_crit_edge, %for.end101, %if.end72.thread, %for.end.cleanup135_crit_edge, %if.end.cleanup135_crit_edge, %entry.cleanup135_crit_edge
  %retval.0 = phi i32 [ 1, %for.end134 ], [ %or.i, %if.end106 ], [ 0, %entry.cleanup135_crit_edge ], [ 1, %if.end102.cleanup135_crit_edge ], [ 0, %if.end.cleanup135_crit_edge ], [ 1, %for.end.cleanup135_crit_edge ], [ 1, %for.end101 ], [ 1, %if.end72.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_event(i16 noundef zeroext %event) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @user_list_lock) #11
  %as.08 = load ptr, ptr @apm_user_list, align 4
  %cmp.not9 = icmp eq ptr %as.08, @apm_user_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %as.010 = phi ptr [ %as.0, %for.inc.for.body_crit_edge ], [ %as.08, %entry.for.body_crit_edge ]
  %reader = getelementptr inbounds %struct.apm_user, ptr %as.010, i32 0, i32 1
  %0 = ptrtoint ptr %reader to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %reader, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %queue = getelementptr inbounds %struct.apm_user, ptr %as.010, i32 0, i32 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue, align 4
  %add.i = add i32 %3, 1
  %rem.i = and i32 %add.i, 15
  store i32 %rem.i, ptr %queue, align 4
  %event_tail.i = getelementptr inbounds %struct.apm_user, ptr %as.010, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %5)
  %cmp.i = icmp eq i32 %rem.i, %5
  br i1 %cmp.i, label %if.then.i, label %if.then.queue_add_event.exit_crit_edge

if.then.queue_add_event.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %queue_add_event.exit

if.then.i:                                        ; preds = %if.then
  %6 = load i32, ptr @queue_add_event.notified, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr @queue_add_event.notified, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp eq i32 %6, 0
  br i1 %cmp3.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %7 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event_tail.i, align 4
  %add6.i = add i32 %8, 1
  %rem7.i = and i32 %add6.i, 15
  store i32 %rem7.i, ptr %event_tail.i, align 4
  br label %queue_add_event.exit

queue_add_event.exit:                             ; preds = %if.end.i, %if.then.queue_add_event.exit_crit_edge
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue, align 4
  %arrayidx.i = getelementptr %struct.apm_user, ptr %as.010, i32 0, i32 4, i32 2, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %event, ptr %arrayidx.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %queue_add_event.exit, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %as.010 to i32
  call void @__asan_load4_noabort(i32 %12)
  %as.0 = load ptr, ptr %as.010, align 4
  %cmp.not = icmp eq ptr %as.0, @apm_user_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @user_list_lock) #11
  tail call void @__wake_up(ptr noundef nonnull @apm_waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_read(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %event = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ult i32 %count, 2
  br i1 %cmp, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue, align 4
  %event_tail.i = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp eq i32 %3, %5
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.cleanup48_crit_edge

land.lhs.true.cleanup48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 215) #11
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue, align 4
  %10 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i68.not = icmp eq i32 %9, %11
  br i1 %cmp.i68.not, label %if.then10, label %if.end3.land.rhs.lr.ph_crit_edge

if.end3.land.rhs.lr.ph_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.lr.ph

if.then10:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call1284 = call i32 @prepare_to_wait_event(ptr noundef nonnull @apm_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %queue, align 4
  %15 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %event_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i71.not85 = icmp eq i32 %14, %16
  br i1 %cmp.i71.not85, label %if.then10.if.end17_crit_edge, label %if.then10.for.end_crit_edge

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  br label %if.end17

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.then10.if.end17_crit_edge
  %call1286 = phi i32 [ %call12, %cleanup.if.end17_crit_edge ], [ %call1284, %if.then10.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1286)
  %tobool18.not = icmp eq i32 %call1286, 0
  br i1 %tobool18.not, label %cleanup, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

cleanup:                                          ; preds = %if.end17
  call void @schedule() #11
  %call12 = call i32 @prepare_to_wait_event(ptr noundef nonnull @apm_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue, align 4
  %19 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event_tail.i, align 4
  %cmp.i71.not = icmp eq i32 %18, %20
  br i1 %cmp.i71.not, label %cleanup.if.end17_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @apm_waitqueue, ptr noundef nonnull %__wq_entry) #11
  br label %if.end21

if.end21:                                         ; preds = %for.end, %if.end17.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp2387 = icmp ugt i32 %count, 1
  br i1 %cmp2387, label %if.end21.land.rhs.lr.ph_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end21.land.rhs.lr.ph_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end21.land.rhs.lr.ph_crit_edge, %if.end3.land.rhs.lr.ph_crit_edge
  %suspend_state = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %queue, align 4
  %23 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %event_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i74.not101 = icmp eq i32 %22, %24
  br i1 %cmp.i74.not101, label %land.rhs.lr.ph.while.end_crit_edge, label %land.rhs.lr.ph.while.body_crit_edge

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %if.end42
  %add.ptr = getelementptr i8, ptr %buf.addr.090102, i32 2
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %queue, align 4
  %27 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %event_tail.i, align 4
  %cmp.i74.not = icmp eq i32 %26, %28
  br i1 %cmp.i74.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %29 = phi i32 [ %28, %land.rhs.while.body_crit_edge ], [ %24, %land.rhs.lr.ph.while.body_crit_edge ]
  %i.088103 = phi i32 [ %sub, %land.rhs.while.body_crit_edge ], [ %count, %land.rhs.lr.ph.while.body_crit_edge ]
  %buf.addr.090102 = phi ptr [ %add.ptr, %land.rhs.while.body_crit_edge ], [ %buf, %land.rhs.lr.ph.while.body_crit_edge ]
  %add.i = add i32 %29, 1
  %rem.i = and i32 %add.i, 15
  %30 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rem.i, ptr %event_tail.i, align 4
  %arrayidx.i = getelementptr %struct.apm_user, ptr %1, i32 0, i32 4, i32 2, i32 %rem.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i, align 2
  %33 = ptrtoint ptr %event to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %event, align 2
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %while.body.while.end_crit_edge, label %if.end.i.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i.i:                                       ; preds = %while.body
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.090102, i32 2, i32 -1226833920) #15, !srcloc !115
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.while.end_crit_edge

if.end.i.i.while.end_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef 2) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.090102, ptr noundef nonnull %event, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool30.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool30.not, label %if.end32, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end32:                                         ; preds = %copy_to_user.exit
  call void @mutex_lock_nested(ptr noundef nonnull @state_lock, i32 noundef 0) #11
  %35 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %suspend_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp33 = icmp eq i32 %36, 1
  br i1 %cmp33, label %land.lhs.true34, label %if.end32.if.end42_crit_edge

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true34:                                  ; preds = %if.end32
  %37 = ptrtoint ptr %event to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %event, align 2
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %38, label %land.lhs.true34.if.end42_crit_edge [
    i16 2, label %land.lhs.true34.if.then40_crit_edge
    i16 10, label %land.lhs.true34.if.then40_crit_edge113
  ]

land.lhs.true34.if.then40_crit_edge113:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

land.lhs.true34.if.then40_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

land.lhs.true34.if.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then40:                                        ; preds = %land.lhs.true34.if.then40_crit_edge, %land.lhs.true34.if.then40_crit_edge113
  %40 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %suspend_state, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true34.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  %sub = add i32 %i.088103, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp23 = icmp ugt i32 %sub, 1
  br i1 %cmp23, label %land.rhs, label %if.end42.while.end_crit_edge

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end.i.i.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %if.end21.while.end_crit_edge
  %i.0.lcssa = phi i32 [ %count, %if.end21.while.end_crit_edge ], [ %count, %land.rhs.lr.ph.while.end_crit_edge ], [ %sub, %land.rhs.while.end_crit_edge ], [ %i.088103, %copy_to_user.exit.while.end_crit_edge ], [ %sub, %if.end42.while.end_crit_edge ], [ %i.088103, %while.body.while.end_crit_edge ], [ %i.088103, %if.end.i.i.while.end_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end21.while.end_crit_edge ], [ 0, %land.rhs.lr.ph.while.end_crit_edge ], [ -14, %land.rhs.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ], [ -14, %if.end42.while.end_crit_edge ], [ -14, %while.body.while.end_crit_edge ], [ -14, %if.end.i.i.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %count)
  %cmp43 = icmp ult i32 %i.0.lcssa, %count
  %sub46 = sub i32 %count, %i.0.lcssa
  %spec.select = select i1 %cmp43, i32 %sub46, i32 %ret.1
  br label %cleanup48

cleanup48:                                        ; preds = %while.end, %land.lhs.true.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ %spec.select, %while.end ], [ -22, %entry.cleanup48_crit_edge ], [ -11, %land.lhs.true.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %event) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_poll(ptr noundef %fp, ptr noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %fp, ptr noundef nonnull @apm_waitqueue, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %queue = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue, align 4
  %event_tail.i = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %event_tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i.not = icmp eq i32 %5, %7
  %cond = select i1 %cmp.i.not, i32 0, i32 65
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %suser = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %suser to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %suser, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  br i1 %.not, label %if.end, label %entry.cleanup31_crit_edge

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16642, i32 %cmd)
  %cond = icmp eq i32 %cmd, 16642
  br i1 %cond, label %sw.bb, label %if.end.cleanup31_crit_edge

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

sw.bb:                                            ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @state_lock, i32 noundef 0) #11
  %suspend_result = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %suspend_result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -4, ptr %suspend_result, align 4
  %suspend_state = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspend_state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb5
    i32 4, label %sw.bb23
  ]

sw.bb5:                                           ; preds = %sw.bb
  %7 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %suspend_state, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @suspend_acks_pending, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @suspend_acks_pending, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @suspend_acks_pending, ptr nonnull @suspend_acks_pending, i32 1, ptr nonnull elementtype(i32) @suspend_acks_pending) #11, !srcloc !114
  tail call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  tail call void @__wake_up(ptr noundef nonnull @apm_suspend_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 298) #11
  %9 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %suspend_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.not60 = icmp eq i32 %10, 3
  br i1 %cmp.not60, label %sw.bb5.if.then11_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5.if.then11_crit_edge:                       ; preds = %sw.bb5
  br label %if.then11

if.then11:                                        ; preds = %if.end20.thread54.if.then11_crit_edge, %sw.bb5.if.then11_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call57 = call i32 @prepare_to_wait_event(ptr noundef nonnull @apm_suspend_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %12 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %suspend_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp14.not58 = icmp eq i32 %13, 3
  br i1 %cmp14.not58, label %if.then11.if.end16_crit_edge, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %cleanup.if.end16_crit_edge, %if.then11.if.end16_crit_edge
  %call59 = phi i32 [ %call, %cleanup.if.end16_crit_edge ], [ %call57, %if.then11.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool17.not = icmp eq i32 %call59, 0
  br i1 %tobool17.not, label %if.end19, label %if.end20.thread54

if.end20.thread54:                                ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @msleep(i32 noundef 10) #11
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 298) #11
  %14 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %suspend_state, align 4
  %cmp.not = icmp eq i32 %15, 3
  br i1 %cmp.not, label %if.end20.thread54.if.then11_crit_edge, label %if.end20.thread54.sw.epilog_crit_edge

if.end20.thread54.sw.epilog_crit_edge:            ; preds = %if.end20.thread54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end20.thread54.if.then11_crit_edge:            ; preds = %if.end20.thread54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.end19:                                         ; preds = %if.end16
  %16 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %21, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #11
  %22 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %27, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  %28 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end19.if.end.i.i.i_crit_edge

if.end19.if.end.i.i.i_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @debug_check_no_locks_held() #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end19.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 57) #11
  %34 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %38 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %freezing.exit.i.i.i.i, !prof !117

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %37) #11
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.cleanup_crit_edge, !prof !118

freezing.exit.i.i.i.i.cleanup_crit_edge:          ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @apm_suspend_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %39 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %suspend_state, align 4
  %cmp14.not = icmp eq i32 %40, 3
  br i1 %cmp14.not, label %cleanup.if.end16_crit_edge, label %cleanup.if.end20_crit_edge

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

cleanup.if.end16_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end20:                                         ; preds = %cleanup.if.end20_crit_edge, %if.then11.if.end20_crit_edge
  call void @finish_wait(ptr noundef nonnull @apm_suspend_waitqueue, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %sw.epilog

sw.bb23:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %suspend_result to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -110, ptr %suspend_result, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %suspend_state, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  %call26 = tail call i32 @pm_suspend(i32 noundef 3) #11
  %43 = ptrtoint ptr %suspend_result to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call26, ptr %suspend_result, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %if.end20, %if.end20.thread54.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @state_lock, i32 noundef 0) #11
  %44 = ptrtoint ptr %suspend_result to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %suspend_result, align 4
  %46 = ptrtoint ptr %suspend_state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %suspend_state, align 4
  call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  br label %cleanup31

cleanup31:                                        ; preds = %sw.epilog, %if.end.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup31_crit_edge ], [ %45, %sw.epilog ], [ -22, %if.end.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #11
  %suser = getelementptr inbounds %struct.apm_user, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %suser to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %suser, align 8
  %bf.shl = select i1 %call1, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.clear, %bf.shl
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %4 = trunc i32 %3 to i8
  %5 = shl i8 %4, 5
  %bf.shl5 = and i8 %5, 64
  %bf.set7 = or i8 %bf.shl5, %bf.set
  %bf.shl15 = and i8 %5, 32
  %bf.set17 = or i8 %bf.set7, %bf.shl15
  store i8 %bf.set17, ptr %suser, align 8
  tail call void @down_write(ptr noundef nonnull @user_list_lock) #11
  %6 = load ptr, ptr @apm_user_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @apm_user_list, ptr noundef %6) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @apm_user_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @apm_user_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @user_list_lock) #11
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %if.end

if.end:                                           ; preds = %list_add.exit, %entry.if.end_crit_edge
  %cond = phi i32 [ 0, %list_add.exit ], [ -12, %entry.if.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  store ptr null, ptr %private_data, align 4
  tail call void @down_write(ptr noundef nonnull @user_list_lock) #11
  %call.i.i8 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i8, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef nonnull @user_list_lock) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @state_lock, i32 noundef 0) #11
  %suspend_state = getelementptr inbounds %struct.apm_user, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %suspend_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %suspend_state, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @suspend_acks_pending, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @suspend_acks_pending, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @suspend_acks_pending, ptr nonnull @suspend_acks_pending, i32 1, ptr nonnull elementtype(i32) @suspend_acks_pending) #11, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @state_lock) #11
  tail call void @__wake_up(ptr noundef nonnull @apm_suspend_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_suspend(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kapmd(ptr nocapture noundef readnone %arg) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 473) #11
  %0 = load i32, ptr @kapmd_queue, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.i.not = icmp eq i32 %0, %1
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.if.end16_crit_edge

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

lor.lhs.false:                                    ; preds = %do.body
  %call5 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call5, label %lor.lhs.false.if.end16_crit_edge, label %if.then

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call751 = call i32 @prepare_to_wait_event(ptr noundef nonnull @kapmd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %3 = load i32, ptr @kapmd_queue, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.i39.not52 = icmp eq i32 %3, %4
  br i1 %cmp.i39.not52, label %if.then.lor.lhs.false10_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.lor.lhs.false10_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %cleanup.lor.lhs.false10_crit_edge, %if.then.lor.lhs.false10_crit_edge
  %call753 = phi i32 [ %call7, %cleanup.lor.lhs.false10_crit_edge ], [ %call751, %if.then.lor.lhs.false10_crit_edge ]
  %call11 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call11, label %lor.lhs.false10.for.end_crit_edge, label %if.end

lor.lhs.false10.for.end_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call753)
  %tobool13.not = icmp eq i32 %call753, 0
  br i1 %tobool13.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #11
  %call7 = call i32 @prepare_to_wait_event(ptr noundef nonnull @kapmd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %5 = load i32, ptr @kapmd_queue, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  %cmp.i39.not = icmp eq i32 %5, %6
  br i1 %cmp.i39.not, label %cleanup.lor.lhs.false10_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.lor.lhs.false10_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false10

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false10.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @kapmd_wait, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end16

if.end16:                                         ; preds = %__out, %lor.lhs.false.if.end16_crit_edge, %do.body.if.end16_crit_edge
  %call18 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call18, label %do.end34, label %if.end20

if.end20:                                         ; preds = %if.end16
  call void @_raw_spin_lock_irq(ptr noundef nonnull @kapmd_queue_lock) #11
  %7 = load i32, ptr @kapmd_queue, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp.i41.not = icmp eq i32 %7, %8
  br i1 %cmp.i41.not, label %if.end25.thread, label %if.end25

if.end25.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @kapmd_queue_lock) #11
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %sw.bb28, %sw.bb26, %sw.bb, %if.end25.do.body.backedge_crit_edge, %if.end25.thread
  br label %do.body

if.end25:                                         ; preds = %if.end20
  %add.i = add i32 %8, 1
  %rem.i = and i32 %add.i, 15
  store i32 %rem.i, ptr getelementptr inbounds (%struct.apm_queue, ptr @kapmd_queue, i32 0, i32 1), align 4
  %arrayidx.i = getelementptr %struct.apm_queue, ptr @kapmd_queue, i32 0, i32 2, i32 %rem.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @kapmd_queue_lock) #11
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %10, label %if.end25.do.body.backedge_crit_edge [
    i16 8, label %sw.bb28
    i16 5, label %if.end25.sw.bb_crit_edge
    i16 6, label %if.end25.sw.bb_crit_edge54
    i16 10, label %if.end25.sw.bb26_crit_edge
    i16 2, label %if.end25.sw.bb26_crit_edge55
  ]

if.end25.sw.bb26_crit_edge55:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

if.end25.sw.bb26_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

if.end25.sw.bb_crit_edge54:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end25.sw.bb_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end25.do.body.backedge_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

sw.bb:                                            ; preds = %if.end25.sw.bb_crit_edge, %if.end25.sw.bb_crit_edge54
  call fastcc void @queue_event(i16 noundef zeroext %10)
  br label %do.body.backedge

sw.bb26:                                          ; preds = %if.end25.sw.bb26_crit_edge, %if.end25.sw.bb26_crit_edge55
  %call27 = call i32 @pm_suspend(i32 noundef 3) #11
  br label %do.body.backedge

sw.bb28:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @userspace_notification_inhibit, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @userspace_notification_inhibit, i32 1, i32 3, i32 1) #11
  %12 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @userspace_notification_inhibit, ptr nonnull @userspace_notification_inhibit, i32 1, ptr nonnull elementtype(i32) @userspace_notification_inhibit) #11, !srcloc !113
  %call29 = call i32 @pm_suspend(i32 noundef 3) #11
  %call.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @userspace_notification_inhibit, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @userspace_notification_inhibit, i32 1, i32 3, i32 1) #11
  %13 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @userspace_notification_inhibit, ptr nonnull @userspace_notification_inhibit, i32 1, ptr nonnull elementtype(i32) @userspace_notification_inhibit) #11, !srcloc !114
  br label %do.body.backedge

do.end34:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_apm_show(ptr noundef %m, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  %info = alloca %struct.apm_power_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #11
  %0 = call ptr @memset(ptr %info, i32 255, i32 16)
  %1 = load ptr, ptr @apm_get_power_status, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void %1(ptr noundef nonnull %info) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %units1 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 5
  %time = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 4
  %battery_life = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 3
  %battery_flag = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 2
  %battery_status = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %units1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %units1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.18, ptr @.str.16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp11 = icmp eq i32 %3, 0
  %switch.select12 = select i1 %switch.selectcmp11, ptr @.str.17, ptr %switch.select
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %info, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %battery_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %battery_status, align 1
  %conv6 = zext i8 %7 to i32
  %8 = ptrtoint ptr %battery_flag to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %battery_flag, align 2
  %conv8 = zext i8 %9 to i32
  %10 = ptrtoint ptr %battery_life to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %battery_life, align 4
  %12 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %time, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull @driver_version, i32 noundef 2, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %switch.select12) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !48, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !92, !93, !95, !97, !98, !99, !100, !102}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @apm_get_power_status, !1, !"apm_get_power_status", i1 false, i1 false}
!1 = !{!"../drivers/char/apm-emulation.c", i32 159, i32 8}
!2 = !{ptr @__ksymtab_apm_get_power_status, !3, !"__ksymtab_apm_get_power_status", i1 false, i1 false}
!3 = !{!"../drivers/char/apm-emulation.c", i32 160, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/apm-emulation.c", i32 674, i32 20}
!6 = !{ptr @__initcall__kmod_apm_emulation__288_679_apm_init6, !7, !"__initcall__kmod_apm_emulation__288_679_apm_init6", i1 false, i1 false}
!7 = !{!"../drivers/char/apm-emulation.c", i32 679, i32 1}
!8 = !{ptr @__exitcall_apm_exit, !9, !"__exitcall_apm_exit", i1 false, i1 false}
!9 = !{!"../drivers/char/apm-emulation.c", i32 680, i32 1}
!10 = !{ptr @__UNIQUE_ID_author289, !11, !"__UNIQUE_ID_author289", i1 false, i1 false}
!11 = !{!"../drivers/char/apm-emulation.c", i32 682, i32 1}
!12 = !{ptr @__UNIQUE_ID_description290, !13, !"__UNIQUE_ID_description290", i1 false, i1 false}
!13 = !{!"../drivers/char/apm-emulation.c", i32 683, i32 1}
!14 = !{ptr @__UNIQUE_ID_file291, !15, !"__UNIQUE_ID_file291", i1 false, i1 false}
!15 = !{!"../drivers/char/apm-emulation.c", i32 684, i32 1}
!16 = !{ptr @__UNIQUE_ID_license292, !15, !"__UNIQUE_ID_license292", i1 false, i1 false}
!17 = !{ptr @__setup_apm_setup, !18, !"__setup_apm_setup", i1 false, i1 false}
!18 = !{!"../drivers/char/apm-emulation.c", i32 701, i32 1}
!19 = !{ptr @__ksymtab_apm_queue_event, !20, !"__ksymtab_apm_queue_event", i1 false, i1 false}
!20 = !{!"../drivers/char/apm-emulation.c", i32 726, i32 1}
!21 = !{ptr @kapmd_tsk, !22, !"kapmd_tsk", i1 false, i1 false}
!22 = !{!"../drivers/char/apm-emulation.c", i32 122, i32 28}
!23 = !{ptr @kapmd_queue, !24, !"kapmd_queue", i1 false, i1 false}
!24 = !{!"../drivers/char/apm-emulation.c", i32 140, i32 25}
!25 = !{ptr @apm_notif_block, !26, !"apm_notif_block", i1 false, i1 false}
!26 = !{!"../drivers/char/apm-emulation.c", i32 626, i32 30}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/apm-emulation.c", i32 554, i32 9}
!29 = !{ptr @userspace_notification_inhibit, !30, !"userspace_notification_inhibit", i1 false, i1 false}
!30 = !{!"../drivers/char/apm-emulation.c", i32 120, i32 17}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/apm-emulation.c", i32 142, i32 8}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @state_lock, !32, !"state_lock", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/apm-emulation.c", i32 130, i32 8}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @user_list_lock, !36, !"user_list_lock", i1 false, i1 false}
!39 = !{ptr @apm_user_list, !40, !"apm_user_list", i1 false, i1 false}
!40 = !{!"../drivers/char/apm-emulation.c", i32 131, i32 8}
!41 = !{ptr @suspend_acks_pending, !42, !"suspend_acks_pending", i1 false, i1 false}
!42 = !{!"../drivers/char/apm-emulation.c", i32 119, i32 17}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/apm-emulation.c", i32 124, i32 8}
!45 = !{ptr @apm_waitqueue, !44, !"apm_waitqueue", i1 false, i1 false}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/apm-emulation.c", i32 125, i32 8}
!48 = !{ptr @apm_suspend_waitqueue, !47, !"apm_suspend_waitqueue", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/char/apm-emulation.c", i32 392, i32 11}
!51 = !{ptr @apm_device, !52, !"apm_device", i1 false, i1 false}
!52 = !{!"../drivers/char/apm-emulation.c", i32 390, i32 26}
!53 = !{ptr @apm_bios_fops, !54, !"apm_bios_fops", i1 false, i1 false}
!54 = !{!"../drivers/char/apm-emulation.c", i32 380, i32 37}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!57 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/apm-emulation.c", i32 635, i32 3}
!66 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @apm_init._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @apm_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/char/apm-emulation.c", i32 639, i32 14}
!71 = distinct !{null, !72, !"apm_disabled", i1 false, i1 false}
!72 = !{!"../drivers/char/apm-emulation.c", i32 121, i32 12}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/char/apm-emulation.c", i32 452, i32 19}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/apm-emulation.c", i32 453, i32 19}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/char/apm-emulation.c", i32 454, i32 19}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/char/apm-emulation.c", i32 457, i32 16}
!81 = !{ptr @driver_version, !82, !"driver_version", i1 false, i1 false}
!82 = !{!"../drivers/char/apm-emulation.c", i32 144, i32 19}
!83 = !{ptr @__setup_str_apm_setup, !18, !"__setup_str_apm_setup", i1 false, i1 false}
!84 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/char/apm-emulation.c", i32 690, i32 20}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/char/apm-emulation.c", i32 692, i32 20}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/char/apm-emulation.c", i32 696, i32 23}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/char/apm-emulation.c", i32 139, i32 8}
!92 = !{ptr @kapmd_queue_lock, !91, !"kapmd_queue_lock", i1 false, i1 false}
!93 = !{ptr @queue_add_event.notified, !94, !"notified", i1 false, i1 false}
!94 = !{!"../drivers/char/apm-emulation.c", i32 181, i32 14}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/char/apm-emulation.c", i32 184, i32 7}
!97 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @queue_add_event._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @queue_add_event._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/char/apm-emulation.c", i32 138, i32 8}
!102 = !{ptr @kapmd_wait, !101, !"kapmd_wait", i1 false, i1 false}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2148355793, i64 2148355819, i64 2148355848, i64 2148355882, i64 2148355913, i64 2148355936}
!114 = !{i64 2148358258, i64 2148358284, i64 2148358313, i64 2148358347, i64 2148358378, i64 2148358401}
!115 = !{i64 2152425177, i64 2152425202}
!116 = !{i64 2154878670}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{!"branch_weights", i32 1, i32 2000}
