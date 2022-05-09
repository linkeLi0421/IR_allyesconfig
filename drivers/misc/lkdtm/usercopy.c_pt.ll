; ModuleID = '/llk/IR_all_yes/drivers/misc/lkdtm/usercopy.c_pt.bc'
source_filename = "../drivers/misc/lkdtm/usercopy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@lkdtm_USERCOPY_KERNEL._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014lkdtm: Failed to allocate user memory\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lkdtm_USERCOPY_KERNEL\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/misc/lkdtm/usercopy.c\00", [34 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr = internal global ptr @lkdtm_USERCOPY_KERNEL._entry, section ".printk_index", align 4
@lkdtm_USERCOPY_KERNEL._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016lkdtm: attempting good copy_to_user from kernel rodata: %px\0A\00", [33 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.5 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.3, section ".printk_index", align 4
@test_text = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"This is a test.\0A\00", [47 x i8] zeroinitializer }, align 32
@unconst = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lkdtm_USERCOPY_KERNEL._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014lkdtm: copy_to_user failed unexpectedly?!\0A\00", [51 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.8 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.6, section ".printk_index", align 4
@lkdtm_USERCOPY_KERNEL._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: attempting bad copy_to_user from kernel text: %px\0A\00", [36 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.11 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.9, section ".printk_index", align 4
@lkdtm_USERCOPY_KERNEL._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014lkdtm: copy_to_user failed, but lacked Oops\0A\00", [49 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.14 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.12, section ".printk_index", align 4
@lkdtm_USERCOPY_KERNEL._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013lkdtm: FAIL: bad copy_to_user() not detected!\0A\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.17 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hardened_usercopy\00", [46 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\014lkdtm: This is probably expected, since this %s was built with CONFIG_HARDENED_USERCOPY=y but booted with 'hardened_usercopy=N'\0A\00", [61 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.21 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.19, section ".printk_index", align 4
@lkdtm_kernel_info = external dso_local local_unnamed_addr global ptr, align 4
@lkdtm_USERCOPY_KERNEL._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_HARDENED_USERCOPY=y and booted with 'hardened_usercopy=Y'\0A\00", [50 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.24 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.22, section ".printk_index", align 4
@lkdtm_USERCOPY_KERNEL._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"\013lkdtm: Unexpected! This %s was built with CONFIG_HARDENED_USERCOPY=y (and booted without 'hardened_usercopy' specified)\0A\00", [37 x i8] zeroinitializer }, align 32
@lkdtm_USERCOPY_KERNEL._entry_ptr.27 = internal global ptr @lkdtm_USERCOPY_KERNEL._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lkdtm-usercopy\00", [17 x i8] zeroinitializer }, align 32
@cache_size = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@whitelist_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@do_usercopy_heap_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014lkdtm: Failed to allocate kernel memory\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"do_usercopy_heap_size\00", [42 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr = internal global ptr @do_usercopy_heap_size._entry, section ".printk_index", align 4
@do_usercopy_heap_size._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.30, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.32 = internal global ptr @do_usercopy_heap_size._entry.31, section ".printk_index", align 4
@do_usercopy_heap_size._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016lkdtm: attempting good copy_to_user of correct size\0A\00", [41 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.35 = internal global ptr @do_usercopy_heap_size._entry.33, section ".printk_index", align 4
@do_usercopy_heap_size._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.30, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.37 = internal global ptr @do_usercopy_heap_size._entry.36, section ".printk_index", align 4
@do_usercopy_heap_size._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016lkdtm: attempting bad copy_to_user of too large size\0A\00", [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.40 = internal global ptr @do_usercopy_heap_size._entry.38, section ".printk_index", align 4
@do_usercopy_heap_size._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.30, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.42 = internal global ptr @do_usercopy_heap_size._entry.41, section ".printk_index", align 4
@do_usercopy_heap_size._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016lkdtm: attempting good copy_from_user of correct size\0A\00", [39 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.45 = internal global ptr @do_usercopy_heap_size._entry.43, section ".printk_index", align 4
@do_usercopy_heap_size._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014lkdtm: copy_from_user failed unexpectedly?!\0A\00", [49 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.48 = internal global ptr @do_usercopy_heap_size._entry.46, section ".printk_index", align 4
@do_usercopy_heap_size._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.30, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016lkdtm: attempting bad copy_from_user of too large size\0A\00", [38 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.51 = internal global ptr @do_usercopy_heap_size._entry.49, section ".printk_index", align 4
@do_usercopy_heap_size._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.30, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014lkdtm: copy_from_user failed, but lacked Oops\0A\00", [47 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.54 = internal global ptr @do_usercopy_heap_size._entry.52, section ".printk_index", align 4
@do_usercopy_heap_size._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.30, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013lkdtm: FAIL: bad usercopy not detected!\0A\00", [53 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.57 = internal global ptr @do_usercopy_heap_size._entry.55, section ".printk_index", align 4
@do_usercopy_heap_size._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.30, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.59 = internal global ptr @do_usercopy_heap_size._entry.58, section ".printk_index", align 4
@do_usercopy_heap_size._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.30, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.61 = internal global ptr @do_usercopy_heap_size._entry.60, section ".printk_index", align 4
@do_usercopy_heap_size._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.30, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_size._entry_ptr.63 = internal global ptr @do_usercopy_heap_size._entry.62, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014lkdtm: Failed to allocate kernel cache\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"do_usercopy_heap_whitelist\00", [37 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr = internal global ptr @do_usercopy_heap_whitelist._entry, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014lkdtm: Failed to allocate buffer from whitelist cache\0A\00", [39 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.71 = internal global ptr @do_usercopy_heap_whitelist._entry.69, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.68, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.73 = internal global ptr @do_usercopy_heap_whitelist._entry.72, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.68, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016lkdtm: attempting good copy_to_user inside whitelist\0A\00", [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.76 = internal global ptr @do_usercopy_heap_whitelist._entry.74, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.68, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.78 = internal global ptr @do_usercopy_heap_whitelist._entry.77, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.68, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016lkdtm: attempting bad copy_to_user outside whitelist\0A\00", [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.81 = internal global ptr @do_usercopy_heap_whitelist._entry.79, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.68, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.83 = internal global ptr @do_usercopy_heap_whitelist._entry.82, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.68, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016lkdtm: attempting good copy_from_user inside whitelist\0A\00", [38 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.86 = internal global ptr @do_usercopy_heap_whitelist._entry.84, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.68, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.88 = internal global ptr @do_usercopy_heap_whitelist._entry.87, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.68, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016lkdtm: attempting bad copy_from_user outside whitelist\0A\00", [38 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.91 = internal global ptr @do_usercopy_heap_whitelist._entry.89, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.68, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.93 = internal global ptr @do_usercopy_heap_whitelist._entry.92, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.68, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.95 = internal global ptr @do_usercopy_heap_whitelist._entry.94, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.68, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.97 = internal global ptr @do_usercopy_heap_whitelist._entry.96, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.68, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.99 = internal global ptr @do_usercopy_heap_whitelist._entry.98, section ".printk_index", align 4
@do_usercopy_heap_whitelist._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.68, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_heap_whitelist._entry_ptr.101 = internal global ptr @do_usercopy_heap_whitelist._entry.100, section ".printk_index", align 4
@do_usercopy_stack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.102, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_usercopy_stack\00", [46 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr = internal global ptr @do_usercopy_stack._entry, section ".printk_index", align 4
@do_usercopy_stack._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016lkdtm: attempting good copy_to_user of local stack\0A\00", [42 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.105 = internal global ptr @do_usercopy_stack._entry.103, section ".printk_index", align 4
@do_usercopy_stack._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.102, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.107 = internal global ptr @do_usercopy_stack._entry.106, section ".printk_index", align 4
@do_usercopy_stack._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.102, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016lkdtm: attempting bad copy_to_user of distant stack\0A\00", [41 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.110 = internal global ptr @do_usercopy_stack._entry.108, section ".printk_index", align 4
@do_usercopy_stack._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.102, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.112 = internal global ptr @do_usercopy_stack._entry.111, section ".printk_index", align 4
@do_usercopy_stack._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.102, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016lkdtm: attempting good copy_from_user of local stack\0A\00", [40 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.115 = internal global ptr @do_usercopy_stack._entry.113, section ".printk_index", align 4
@do_usercopy_stack._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.102, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.117 = internal global ptr @do_usercopy_stack._entry.116, section ".printk_index", align 4
@do_usercopy_stack._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.102, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016lkdtm: attempting bad copy_from_user of distant stack\0A\00", [39 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.120 = internal global ptr @do_usercopy_stack._entry.118, section ".printk_index", align 4
@do_usercopy_stack._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.102, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_usercopy_stack._entry_ptr.122 = internal global ptr @do_usercopy_stack._entry.121, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 307, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 311, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [10 x i8] c"test_text\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 25, i32 28 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"unconst\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 21, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 315, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 319, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 323, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 326, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 327, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 337, i32 30 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"cache_size\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 22, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"whitelist_cache\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 23, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 133, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 141, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 152, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 154, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 158, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 160, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 164, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 166, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 170, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 172, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 176, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 177, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 230, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 214, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 156, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 199, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 208, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 217, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 229, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 231, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 235, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 237, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 241, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 243, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 247, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 249, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 253, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 254, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 73, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 78, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 81, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 85, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 88, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 99, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 102, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 106, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private constant [33 x i8] c"../drivers/misc/lkdtm/usercopy.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 109, i32 4 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @do_usercopy_heap_size._entry, ptr @do_usercopy_heap_size._entry.31, ptr @do_usercopy_heap_size._entry.33, ptr @do_usercopy_heap_size._entry.36, ptr @do_usercopy_heap_size._entry.38, ptr @do_usercopy_heap_size._entry.41, ptr @do_usercopy_heap_size._entry.43, ptr @do_usercopy_heap_size._entry.46, ptr @do_usercopy_heap_size._entry.49, ptr @do_usercopy_heap_size._entry.52, ptr @do_usercopy_heap_size._entry.55, ptr @do_usercopy_heap_size._entry.58, ptr @do_usercopy_heap_size._entry.60, ptr @do_usercopy_heap_size._entry.62, ptr @do_usercopy_heap_size._entry_ptr, ptr @do_usercopy_heap_size._entry_ptr.32, ptr @do_usercopy_heap_size._entry_ptr.35, ptr @do_usercopy_heap_size._entry_ptr.37, ptr @do_usercopy_heap_size._entry_ptr.40, ptr @do_usercopy_heap_size._entry_ptr.42, ptr @do_usercopy_heap_size._entry_ptr.45, ptr @do_usercopy_heap_size._entry_ptr.48, ptr @do_usercopy_heap_size._entry_ptr.51, ptr @do_usercopy_heap_size._entry_ptr.54, ptr @do_usercopy_heap_size._entry_ptr.57, ptr @do_usercopy_heap_size._entry_ptr.59, ptr @do_usercopy_heap_size._entry_ptr.61, ptr @do_usercopy_heap_size._entry_ptr.63, ptr @do_usercopy_heap_whitelist._entry, ptr @do_usercopy_heap_whitelist._entry.100, ptr @do_usercopy_heap_whitelist._entry.69, ptr @do_usercopy_heap_whitelist._entry.72, ptr @do_usercopy_heap_whitelist._entry.74, ptr @do_usercopy_heap_whitelist._entry.77, ptr @do_usercopy_heap_whitelist._entry.79, ptr @do_usercopy_heap_whitelist._entry.82, ptr @do_usercopy_heap_whitelist._entry.84, ptr @do_usercopy_heap_whitelist._entry.87, ptr @do_usercopy_heap_whitelist._entry.89, ptr @do_usercopy_heap_whitelist._entry.92, ptr @do_usercopy_heap_whitelist._entry.94, ptr @do_usercopy_heap_whitelist._entry.96, ptr @do_usercopy_heap_whitelist._entry.98, ptr @do_usercopy_heap_whitelist._entry_ptr, ptr @do_usercopy_heap_whitelist._entry_ptr.101, ptr @do_usercopy_heap_whitelist._entry_ptr.71, ptr @do_usercopy_heap_whitelist._entry_ptr.73, ptr @do_usercopy_heap_whitelist._entry_ptr.76, ptr @do_usercopy_heap_whitelist._entry_ptr.78, ptr @do_usercopy_heap_whitelist._entry_ptr.81, ptr @do_usercopy_heap_whitelist._entry_ptr.83, ptr @do_usercopy_heap_whitelist._entry_ptr.86, ptr @do_usercopy_heap_whitelist._entry_ptr.88, ptr @do_usercopy_heap_whitelist._entry_ptr.91, ptr @do_usercopy_heap_whitelist._entry_ptr.93, ptr @do_usercopy_heap_whitelist._entry_ptr.95, ptr @do_usercopy_heap_whitelist._entry_ptr.97, ptr @do_usercopy_heap_whitelist._entry_ptr.99, ptr @do_usercopy_stack._entry, ptr @do_usercopy_stack._entry.103, ptr @do_usercopy_stack._entry.106, ptr @do_usercopy_stack._entry.108, ptr @do_usercopy_stack._entry.111, ptr @do_usercopy_stack._entry.113, ptr @do_usercopy_stack._entry.116, ptr @do_usercopy_stack._entry.118, ptr @do_usercopy_stack._entry.121, ptr @do_usercopy_stack._entry_ptr, ptr @do_usercopy_stack._entry_ptr.105, ptr @do_usercopy_stack._entry_ptr.107, ptr @do_usercopy_stack._entry_ptr.110, ptr @do_usercopy_stack._entry_ptr.112, ptr @do_usercopy_stack._entry_ptr.115, ptr @do_usercopy_stack._entry_ptr.117, ptr @do_usercopy_stack._entry_ptr.120, ptr @do_usercopy_stack._entry_ptr.122, ptr @lkdtm_USERCOPY_KERNEL._entry, ptr @lkdtm_USERCOPY_KERNEL._entry.12, ptr @lkdtm_USERCOPY_KERNEL._entry.15, ptr @lkdtm_USERCOPY_KERNEL._entry.19, ptr @lkdtm_USERCOPY_KERNEL._entry.22, ptr @lkdtm_USERCOPY_KERNEL._entry.25, ptr @lkdtm_USERCOPY_KERNEL._entry.3, ptr @lkdtm_USERCOPY_KERNEL._entry.6, ptr @lkdtm_USERCOPY_KERNEL._entry.9, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.11, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.14, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.17, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.21, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.24, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.27, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.5, ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.8, ptr @lkdtm_usercopy_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @test_text, ptr @unconst, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @cache_size, ptr @whitelist_cache, ptr @.str.29, ptr @.str.30, ptr @.str.34, ptr @.str.39, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.75, ptr @.str.80, ptr @.str.85, ptr @.str.90, ptr @.str.102, ptr @.str.104, ptr @.str.109, ptr @.str.114, ptr @.str.119], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_text to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unconst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_USERCOPY_KERNEL._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @whitelist_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_size._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_heap_whitelist._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_usercopy_stack._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_HEAP_SIZE_TO() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_usercopy_heap_size(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_usercopy_heap_size(i1 noundef zeroext %to_user) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @unconst, align 4
  %add = add i32 %0, 1024
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %call9.i143 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  %tobool2.not = icmp eq ptr %call9.i143, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %free_kernel

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 4096, i32 noundef 7, i32 noundef 34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call4)
  %cmp = icmp ugt i32 %call4, -1226833921
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %free_kernel

if.end11:                                         ; preds = %if.end
  %1 = call ptr @memset(ptr %call9.i, i32 65, i32 %add)
  %2 = call ptr @memset(ptr %call9.i143, i32 66, i32 %add)
  %add12 = add nuw i32 %call4, 16
  %3 = inttoptr i32 %add12 to ptr
  %add.ptr = getelementptr i8, ptr %call9.i, i32 16
  br i1 %to_user, label %do.end17, label %do.end45

do.end17:                                         ; preds = %if.end11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  %div117 = lshr i32 %add, 1
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %div117, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %do.end17.copy_to_user.exit_crit_edge, label %if.end.i.i150

do.end17.copy_to_user.exit_crit_edge:             ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i150:                                    ; preds = %do.end17
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %div117, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i150.copy_to_user.exit_crit_edge

if.end.i.i150.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %div117) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %div117) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i150.copy_to_user.exit_crit_edge, %do.end17.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %div117, %do.end17.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %div117, %if.end.i.i150.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool21.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool21.not, label %do.end31, label %do.end25

do.end25:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %free_user

do.end31:                                         ; preds = %copy_to_user.exit
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i159

land.rhs16.i.i:                                   ; preds = %do.end31
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.end39_crit_edge, label %if.then27.i.i, !prof !196

land.rhs16.i.i.do.end39_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %do.end39

if.then.i.i.i159:                                 ; preds = %do.end31
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %add, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i160 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i160, label %if.then.i.i.i159.copy_to_user.exit170_crit_edge, label %if.end.i.i164

if.then.i.i.i159.copy_to_user.exit170_crit_edge:  ; preds = %if.then.i.i.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit170

if.end.i.i164:                                    ; preds = %if.then.i.i.i159
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %add, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i162 = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i162)
  %cmp.i6.i163 = icmp eq i32 %asmresult.i.i162, 0
  br i1 %cmp.i6.i163, label %if.then2.i.i167, label %if.end.i.i164.copy_to_user.exit170_crit_edge

if.end.i.i164.copy_to_user.exit170_crit_edge:     ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit170

if.then2.i.i167:                                  ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i165 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %add) #9
  %call.i12.i.i166 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %add) #9
  br label %copy_to_user.exit170

copy_to_user.exit170:                             ; preds = %if.then2.i.i167, %if.end.i.i164.copy_to_user.exit170_crit_edge, %if.then.i.i.i159.copy_to_user.exit170_crit_edge
  %n.addr.0.i168 = phi i32 [ %add, %if.then.i.i.i159.copy_to_user.exit170_crit_edge ], [ %call.i12.i.i166, %if.then2.i.i167 ], [ %add, %if.end.i.i164.copy_to_user.exit170_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i168)
  %tobool35.not = icmp eq i32 %n.addr.0.i168, 0
  br i1 %tobool35.not, label %copy_to_user.exit170.do.end75_crit_edge, label %copy_to_user.exit170.do.end39_crit_edge

copy_to_user.exit170.do.end39_crit_edge:          ; preds = %copy_to_user.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

copy_to_user.exit170.do.end75_crit_edge:          ; preds = %copy_to_user.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

do.end39:                                         ; preds = %copy_to_user.exit170.do.end39_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end39_crit_edge
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %free_user

do.end45:                                         ; preds = %if.end11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  %div48116 = lshr i32 %add, 1
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %div48116, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #9
  %call.i.i180 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i180, label %do.end45.if.end.i.i185_crit_edge, label %land.lhs.true.i.i

do.end45.if.end.i.i185_crit_edge:                 ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i185

land.lhs.true.i.i:                                ; preds = %do.end45
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %div48116, i32 -1226833920) #14, !srcloc !197
  %asmresult.i.i182 = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i182)
  %cmp.i6.i183 = icmp eq i32 %asmresult.i.i182, 0
  br i1 %cmp.i6.i183, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i185_crit_edge, !prof !196

land.lhs.true.i.i.if.end.i.i185_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i185

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i184 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %div48116) #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !198
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %3, i32 noundef %div48116) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %if.end.i.i185

if.end.i.i185:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i185_crit_edge, %do.end45.if.end.i.i185_crit_edge
  %res.0.i.i = phi i32 [ %div48116, %do.end45.if.end.i.i185_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %div48116, %land.lhs.true.i.i.if.end.i.i185_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %do.end60, label %if.then11.i.i, !prof !196

if.then11.i.i:                                    ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %div48116, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %free_user

do.end60:                                         ; preds = %if.end.i.i185
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i194 = icmp slt i32 %add, 0
  br i1 %cmp9.i.i194, label %land.rhs16.i.i197, label %if.then.i.i.i200

land.rhs16.i.i197:                                ; preds = %do.end60
  %.b71.i.i196 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i196, label %land.rhs16.i.i197.do.end68_crit_edge, label %if.then27.i.i198, !prof !196

land.rhs16.i.i197.do.end68_crit_edge:             ; preds = %land.rhs16.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then27.i.i198:                                 ; preds = %land.rhs16.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %do.end68

if.then.i.i.i200:                                 ; preds = %do.end60
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %add, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #9
  %call.i.i201 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i201, label %if.then.i.i.i200.if.end.i.i215_crit_edge, label %land.lhs.true.i.i205

if.then.i.i.i200.if.end.i.i215_crit_edge:         ; preds = %if.then.i.i.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i215

land.lhs.true.i.i205:                             ; preds = %if.then.i.i.i200
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %add, i32 -1226833920) #14, !srcloc !197
  %asmresult.i.i203 = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i203)
  %cmp.i6.i204 = icmp eq i32 %asmresult.i.i203, 0
  br i1 %cmp.i6.i204, label %if.then.i7.i212, label %land.lhs.true.i.i205.if.end.i.i215_crit_edge, !prof !196

land.lhs.true.i.i205.if.end.i.i215_crit_edge:     ; preds = %land.lhs.true.i.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i215

if.then.i7.i212:                                  ; preds = %land.lhs.true.i.i205
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i206 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %add) #9
  %12 = tail call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i.i.i.i.i.i207 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i207 to ptr
  %cpu_domain.i.i.i.i.i208 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i208) #7, !srcloc !198
  %and.i.i.i.i209 = and i32 %14, -13
  %or.i.i.i.i210 = or i32 %and.i.i.i.i209, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i210) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %call1.i.i.i211 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %3, i32 noundef %add) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %if.end.i.i215

if.end.i.i215:                                    ; preds = %if.then.i7.i212, %land.lhs.true.i.i205.if.end.i.i215_crit_edge, %if.then.i.i.i200.if.end.i.i215_crit_edge
  %res.0.i.i213 = phi i32 [ %add, %if.then.i.i.i200.if.end.i.i215_crit_edge ], [ %call1.i.i.i211, %if.then.i7.i212 ], [ %add, %land.lhs.true.i.i205.if.end.i.i215_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i213)
  %tobool4.not.i.i214 = icmp eq i32 %res.0.i.i213, 0
  br i1 %tobool4.not.i.i214, label %if.end.i.i215.do.end75_crit_edge, label %if.then11.i.i218, !prof !196

if.end.i.i215.do.end75_crit_edge:                 ; preds = %if.end.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

if.then11.i.i218:                                 ; preds = %if.end.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i216 = sub i32 %add, %res.0.i.i213
  %add.ptr.i.i217 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i216
  %15 = call ptr @memset(ptr %add.ptr.i.i217, i32 0, i32 %res.0.i.i213)
  br label %do.end68

do.end68:                                         ; preds = %if.then11.i.i218, %if.then27.i.i198, %land.rhs16.i.i197.do.end68_crit_edge
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #13
  br label %free_user

do.end75:                                         ; preds = %if.end.i.i215.do.end75_crit_edge, %copy_to_user.exit170.do.end75_crit_edge
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #13
  %call78 = tail call i32 @lkdtm_check_bool_cmdline(ptr noundef nonnull @.str.18) #9
  %16 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call78, label %do.end92 [
    i32 0, label %do.end81
    i32 1, label %do.end87
  ]

do.end81:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %17 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %17) #13
  br label %free_user

do.end87:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %18 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %18) #13
  br label %free_user

do.end92:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %19 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %19) #13
  br label %free_user

free_user:                                        ; preds = %do.end92, %do.end87, %do.end81, %do.end68, %if.then11.i.i, %do.end39, %do.end25
  %call95 = tail call i32 @vm_munmap(i32 noundef %call4, i32 noundef 4096) #9
  br label %free_kernel

free_kernel:                                      ; preds = %free_user, %do.end8, %do.end
  tail call void @kfree(ptr noundef %call9.i) #9
  tail call void @kfree(ptr noundef %call9.i143) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_HEAP_SIZE_FROM() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_usercopy_heap_size(i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_HEAP_WHITELIST_TO() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_usercopy_heap_whitelist(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_usercopy_heap_whitelist(i1 noundef zeroext %to_user) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @whitelist_cache, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %0, i32 noundef 3264) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %free_alloc, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 4096, i32 noundef 7, i32 noundef 34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call10)
  %cmp = icmp ugt i32 %call10, -1226833921
  br i1 %cmp, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.then108

if.end17:                                         ; preds = %if.end9
  %1 = inttoptr i32 %call10 to ptr
  %2 = load volatile i32, ptr @cache_size, align 4
  %3 = call ptr @memset(ptr %call1, i32 66, i32 %2)
  %4 = load volatile i32, ptr @cache_size, align 4
  %div132 = lshr i32 %4, 2
  %5 = load volatile i32, ptr @unconst, align 4
  %add = add i32 %div132, %5
  %6 = load volatile i32, ptr @cache_size, align 4
  %div18133 = lshr i32 %6, 4
  %7 = load volatile i32, ptr @unconst, align 4
  %add19 = add i32 %div18133, %7
  br i1 %to_user, label %do.end24, label %do.end54

do.end24:                                         ; preds = %if.end17
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #13
  %add.ptr = getelementptr i8, ptr %call1, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add19)
  %cmp9.i.i = icmp slt i32 %add19, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %do.end24
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.end32_crit_edge, label %if.then27.i.i, !prof !196

land.rhs16.i.i.do.end32_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %do.end32

if.then.i.i.i:                                    ; preds = %do.end24
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %add19, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %add19, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %add19) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %add19) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add19, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add19, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool28.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool28.not, label %do.end38, label %copy_to_user.exit.do.end32_crit_edge

copy_to_user.exit.do.end32_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end32:                                         ; preds = %copy_to_user.exit.do.end32_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end32_crit_edge
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %free_user

do.end38:                                         ; preds = %copy_to_user.exit
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #13
  %add.ptr42 = getelementptr i8, ptr %add.ptr, i32 -1
  tail call void @__check_object_size(ptr noundef %add.ptr42, i32 noundef %add19, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i147 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i147, label %do.end38.copy_to_user.exit156_crit_edge, label %if.end.i.i151

do.end38.copy_to_user.exit156_crit_edge:          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit156

if.end.i.i151:                                    ; preds = %do.end38
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %add19, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i149 = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i149)
  %cmp.i6.i150 = icmp eq i32 %asmresult.i.i149, 0
  br i1 %cmp.i6.i150, label %if.then2.i.i154, label %if.end.i.i151.copy_to_user.exit156_crit_edge

if.end.i.i151.copy_to_user.exit156_crit_edge:     ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit156

if.then2.i.i154:                                  ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i152 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr42, i32 noundef %add19) #9
  %call.i12.i.i153 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %add.ptr42, i32 noundef %add19) #9
  br label %copy_to_user.exit156

copy_to_user.exit156:                             ; preds = %if.then2.i.i154, %if.end.i.i151.copy_to_user.exit156_crit_edge, %do.end38.copy_to_user.exit156_crit_edge
  %n.addr.0.i155 = phi i32 [ %add19, %do.end38.copy_to_user.exit156_crit_edge ], [ %call.i12.i.i153, %if.then2.i.i154 ], [ %add19, %if.end.i.i151.copy_to_user.exit156_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i155)
  %tobool44.not = icmp eq i32 %n.addr.0.i155, 0
  br i1 %tobool44.not, label %copy_to_user.exit156.do.end86_crit_edge, label %do.end48

copy_to_user.exit156.do.end86_crit_edge:          ; preds = %copy_to_user.exit156
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

do.end48:                                         ; preds = %copy_to_user.exit156
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %free_user

do.end54:                                         ; preds = %if.end17
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #13
  %add.ptr57 = getelementptr i8, ptr %call1, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add19)
  %cmp9.i.i163 = icmp slt i32 %add19, 0
  br i1 %cmp9.i.i163, label %land.rhs16.i.i166, label %if.then.i.i.i169

land.rhs16.i.i166:                                ; preds = %do.end54
  %.b71.i.i165 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i165, label %land.rhs16.i.i166.do.end63_crit_edge, label %if.then27.i.i167, !prof !196

land.rhs16.i.i166.do.end63_crit_edge:             ; preds = %land.rhs16.i.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

if.then27.i.i167:                                 ; preds = %land.rhs16.i.i166
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %do.end63

if.then.i.i.i169:                                 ; preds = %do.end54
  tail call void @__check_object_size(ptr noundef %add.ptr57, i32 noundef %add19, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #9
  %call.i.i170 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i170, label %if.then.i.i.i169.if.end.i.i175_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i169.if.end.i.i175_crit_edge:         ; preds = %if.then.i.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i175

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i169
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %add19, i32 -1226833920) #14, !srcloc !197
  %asmresult.i.i172 = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i172)
  %cmp.i6.i173 = icmp eq i32 %asmresult.i.i172, 0
  br i1 %cmp.i6.i173, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i175_crit_edge, !prof !196

land.lhs.true.i.i.if.end.i.i175_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i175

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i174 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr57, i32 noundef %add19) #9
  %11 = tail call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !198
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr57, ptr noundef %1, i32 noundef %add19) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %if.end.i.i175

if.end.i.i175:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i175_crit_edge, %if.then.i.i.i169.if.end.i.i175_crit_edge
  %res.0.i.i = phi i32 [ %add19, %if.then.i.i.i169.if.end.i.i175_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %add19, %land.lhs.true.i.i.if.end.i.i175_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %do.end69, label %if.then11.i.i, !prof !196

if.then11.i.i:                                    ; preds = %if.end.i.i175
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %add19, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr57, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %do.end63

do.end63:                                         ; preds = %if.then11.i.i, %if.then27.i.i167, %land.rhs16.i.i166.do.end63_crit_edge
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %free_user

do.end69:                                         ; preds = %if.end.i.i175
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #13
  %add.ptr73 = getelementptr i8, ptr %add.ptr57, i32 -1
  tail call void @__check_object_size(ptr noundef %add.ptr73, i32 noundef %add19, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #9
  %call.i.i190 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i190, label %do.end69.if.end.i.i204_crit_edge, label %land.lhs.true.i.i194

do.end69.if.end.i.i204_crit_edge:                 ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i204

land.lhs.true.i.i194:                             ; preds = %do.end69
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %add19, i32 -1226833920) #14, !srcloc !197
  %asmresult.i.i192 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i192)
  %cmp.i6.i193 = icmp eq i32 %asmresult.i.i192, 0
  br i1 %cmp.i6.i193, label %if.then.i7.i201, label %land.lhs.true.i.i194.if.end.i.i204_crit_edge, !prof !196

land.lhs.true.i.i194.if.end.i.i204_crit_edge:     ; preds = %land.lhs.true.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i204

if.then.i7.i201:                                  ; preds = %land.lhs.true.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i195 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr73, i32 noundef %add19) #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i.i.i.i.i.i196 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i196 to ptr
  %cpu_domain.i.i.i.i.i197 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i197) #7, !srcloc !198
  %and.i.i.i.i198 = and i32 %18, -13
  %or.i.i.i.i199 = or i32 %and.i.i.i.i198, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i199) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %call1.i.i.i200 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr73, ptr noundef %1, i32 noundef %add19) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %if.end.i.i204

if.end.i.i204:                                    ; preds = %if.then.i7.i201, %land.lhs.true.i.i194.if.end.i.i204_crit_edge, %do.end69.if.end.i.i204_crit_edge
  %res.0.i.i202 = phi i32 [ %add19, %do.end69.if.end.i.i204_crit_edge ], [ %call1.i.i.i200, %if.then.i7.i201 ], [ %add19, %land.lhs.true.i.i194.if.end.i.i204_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i202)
  %tobool4.not.i.i203 = icmp eq i32 %res.0.i.i202, 0
  br i1 %tobool4.not.i.i203, label %if.end.i.i204.do.end86_crit_edge, label %if.then11.i.i207, !prof !196

if.end.i.i204.do.end86_crit_edge:                 ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

if.then11.i.i207:                                 ; preds = %if.end.i.i204
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i205 = sub i32 %add19, %res.0.i.i202
  %add.ptr.i.i206 = getelementptr i8, ptr %add.ptr73, i32 %sub.i.i205
  %19 = call ptr @memset(ptr %add.ptr.i.i206, i32 0, i32 %res.0.i.i202)
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #13
  br label %free_user

do.end86:                                         ; preds = %if.end.i.i204.do.end86_crit_edge, %copy_to_user.exit156.do.end86_crit_edge
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #13
  %call89 = tail call i32 @lkdtm_check_bool_cmdline(ptr noundef nonnull @.str.18) #9
  %20 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call89, label %do.end103 [
    i32 0, label %do.end92
    i32 1, label %do.end98
  ]

do.end92:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %21 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %21) #13
  br label %free_user

do.end98:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %22 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %22) #13
  br label %free_user

do.end103:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %23 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %23) #13
  br label %free_user

free_user:                                        ; preds = %do.end103, %do.end98, %do.end92, %if.then11.i.i207, %do.end63, %do.end48, %do.end32
  %call106 = tail call i32 @vm_munmap(i32 noundef %call10, i32 noundef 4096) #9
  br label %if.then108

free_alloc:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #13
  br label %cleanup

if.then108:                                       ; preds = %free_user, %do.end14
  %24 = load ptr, ptr @whitelist_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef nonnull %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %free_alloc, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_HEAP_WHITELIST_FROM() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_usercopy_heap_whitelist(i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_STACK_FRAME_TO() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_usercopy_stack(i1 noundef zeroext true, i1 noundef zeroext true)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_usercopy_stack(i1 noundef zeroext %to_user, i1 noundef zeroext %bad_frame) unnamed_addr #1 align 64 {
entry:
  %good_stack = alloca [32 x i8], align 1
  %bad_stack = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %good_stack) #9
  %0 = call ptr @memset(ptr %good_stack, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_stack) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0175 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %rem.lhs.trunc = trunc i32 %i.0175 to i8
  %rem174 = urem i8 %rem.lhs.trunc, 17
  %rem.zext = zext i8 %rem174 to i32
  %arrayidx = getelementptr [17 x i8], ptr @test_text, i32 0, i32 %rem.zext
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr [32 x i8], ptr %good_stack, i32 0, i32 %i.0175
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx2, align 1
  %inc = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %bad_frame, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %bad_stack to i32
  %call = call fastcc ptr @do_usercopy_stack_callee(i32 noundef %4)
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %stack = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 16380
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %add.ptr4, %if.else ], [ %call, %if.then ]
  %11 = ptrtoint ptr %bad_stack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %storemerge, ptr %bad_stack, align 4
  %call5 = call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 4096, i32 noundef 7, i32 noundef 34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call5)
  %cmp6 = icmp ugt i32 %call5, -1226833921
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  br i1 %to_user, label %do.end14, label %if.else41

do.end14:                                         ; preds = %if.end9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #13
  %12 = inttoptr i32 %call5 to ptr
  %13 = load volatile i32, ptr @unconst, align 4
  %add = add i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp1.i.i = icmp ugt i32 %add, 32
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !201

if.then3.i.i:                                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.65, i32 noundef 32, i32 noundef %add) #9
  br label %free_user.sink.split

if.then.i.i.i:                                    ; preds = %do.end14
  call void @__check_object_size(ptr noundef nonnull %good_stack, i32 noundef %add, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 %add, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %good_stack, i32 noundef %add) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %good_stack, i32 noundef %add) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool18.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool18.not, label %do.end28, label %copy_to_user.exit.free_user.sink.split_crit_edge

copy_to_user.exit.free_user.sink.split_crit_edge: ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_user.sink.split

do.end28:                                         ; preds = %copy_to_user.exit
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #13
  %15 = ptrtoint ptr %bad_stack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bad_stack, align 4
  %17 = load volatile i32, ptr @unconst, align 4
  %add31 = add i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add31)
  %cmp9.i.i96 = icmp slt i32 %add31, 0
  br i1 %cmp9.i.i96, label %land.rhs16.i.i99, label %if.then.i.i.i102

land.rhs16.i.i99:                                 ; preds = %do.end28
  %.b71.i.i98 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i98, label %land.rhs16.i.i99.free_user.sink.split_crit_edge, label %if.then27.i.i100, !prof !196

land.rhs16.i.i99.free_user.sink.split_crit_edge:  ; preds = %land.rhs16.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_user.sink.split

if.then27.i.i100:                                 ; preds = %land.rhs16.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %free_user.sink.split

if.then.i.i.i102:                                 ; preds = %do.end28
  call void @__check_object_size(ptr noundef %16, i32 noundef %add31, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i103 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i103, label %if.then.i.i.i102.copy_to_user.exit112_crit_edge, label %if.end.i.i107

if.then.i.i.i102.copy_to_user.exit112_crit_edge:  ; preds = %if.then.i.i.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit112

if.end.i.i107:                                    ; preds = %if.then.i.i.i102
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 %add31, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i105 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i105)
  %cmp.i6.i106 = icmp eq i32 %asmresult.i.i105, 0
  br i1 %cmp.i6.i106, label %if.then2.i.i110, label %if.end.i.i107.copy_to_user.exit112_crit_edge

if.end.i.i107.copy_to_user.exit112_crit_edge:     ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit112

if.then2.i.i110:                                  ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i108 = call zeroext i1 @__kasan_check_read(ptr noundef %16, i32 noundef %add31) #9
  %call.i12.i.i109 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef %16, i32 noundef %add31) #9
  br label %copy_to_user.exit112

copy_to_user.exit112:                             ; preds = %if.then2.i.i110, %if.end.i.i107.copy_to_user.exit112_crit_edge, %if.then.i.i.i102.copy_to_user.exit112_crit_edge
  %n.addr.0.i111 = phi i32 [ %add31, %if.then.i.i.i102.copy_to_user.exit112_crit_edge ], [ %call.i12.i.i109, %if.then2.i.i110 ], [ %add31, %if.end.i.i107.copy_to_user.exit112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i111)
  %tobool33.not = icmp eq i32 %n.addr.0.i111, 0
  br i1 %tobool33.not, label %copy_to_user.exit112.free_user_crit_edge, label %copy_to_user.exit112.free_user.sink.split_crit_edge

copy_to_user.exit112.free_user.sink.split_crit_edge: ; preds = %copy_to_user.exit112
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_user.sink.split

copy_to_user.exit112.free_user_crit_edge:         ; preds = %copy_to_user.exit112
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_user

if.else41:                                        ; preds = %if.end9
  br i1 %bad_frame, label %do.end47, label %if.else41.free_user_crit_edge

if.else41.free_user_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_user

do.end47:                                         ; preds = %if.else41
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #13
  %19 = inttoptr i32 %call5 to ptr
  %20 = load volatile i32, ptr @unconst, align 4
  %add51 = add i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add51)
  %cmp1.i.i114 = icmp ugt i32 %add51, 32
  br i1 %cmp1.i.i114, label %if.then3.i.i117, label %if.then.i.i.i125, !prof !201

if.then3.i.i117:                                  ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.65, i32 noundef 32, i32 noundef %add51) #9
  br label %free_user.sink.split

if.then.i.i.i125:                                 ; preds = %do.end47
  call void @__check_object_size(ptr noundef nonnull %good_stack, i32 noundef %add51, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #9
  %call.i.i126 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i126, label %if.then.i.i.i125.if.end.i.i131_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i125.if.end.i.i131_crit_edge:         ; preds = %if.then.i.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i131

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i125
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 %add51, i32 -1226833920) #14, !srcloc !197
  %asmresult.i.i128 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i128)
  %cmp.i6.i129 = icmp eq i32 %asmresult.i.i128, 0
  br i1 %cmp.i6.i129, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i131_crit_edge, !prof !196

land.lhs.true.i.i.if.end.i.i131_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i131

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i130 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %good_stack, i32 noundef %add51) #9
  %22 = call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !198
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %good_stack, ptr noundef %19, i32 noundef %add51) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %if.end.i.i131

if.end.i.i131:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i131_crit_edge, %if.then.i.i.i125.if.end.i.i131_crit_edge
  %res.0.i.i = phi i32 [ %add51, %if.then.i.i.i125.if.end.i.i131_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %add51, %land.lhs.true.i.i.if.end.i.i131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %do.end63, label %if.then11.i.i, !prof !196

if.then11.i.i:                                    ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %add51, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %good_stack, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %free_user.sink.split

do.end63:                                         ; preds = %if.end.i.i131
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #13
  %26 = ptrtoint ptr %bad_stack to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bad_stack, align 4
  %28 = load volatile i32, ptr @unconst, align 4
  %add66 = add i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add66)
  %cmp9.i.i139 = icmp slt i32 %add66, 0
  br i1 %cmp9.i.i139, label %land.rhs16.i.i142, label %if.then.i.i.i145

land.rhs16.i.i142:                                ; preds = %do.end63
  %.b71.i.i141 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i141, label %land.rhs16.i.i142.free_user.sink.split_crit_edge, label %if.then27.i.i143, !prof !196

land.rhs16.i.i142.free_user.sink.split_crit_edge: ; preds = %land.rhs16.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_user.sink.split

if.then27.i.i143:                                 ; preds = %land.rhs16.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %free_user.sink.split

if.then.i.i.i145:                                 ; preds = %do.end63
  call void @__check_object_size(ptr noundef %27, i32 noundef %add66, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #9
  %call.i.i146 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i146, label %if.then.i.i.i145.if.end.i.i160_crit_edge, label %land.lhs.true.i.i150

if.then.i.i.i145.if.end.i.i160_crit_edge:         ; preds = %if.then.i.i.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i160

land.lhs.true.i.i150:                             ; preds = %if.then.i.i.i145
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 %add66, i32 -1226833920) #14, !srcloc !197
  %asmresult.i.i148 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i148)
  %cmp.i6.i149 = icmp eq i32 %asmresult.i.i148, 0
  br i1 %cmp.i6.i149, label %if.then.i7.i157, label %land.lhs.true.i.i150.if.end.i.i160_crit_edge, !prof !196

land.lhs.true.i.i150.if.end.i.i160_crit_edge:     ; preds = %land.lhs.true.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i160

if.then.i7.i157:                                  ; preds = %land.lhs.true.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i151 = call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef %add66) #9
  %30 = call i32 @llvm.read_register.i32(metadata !185) #9
  %and.i.i.i.i.i.i152 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i152 to ptr
  %cpu_domain.i.i.i.i.i153 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i153) #7, !srcloc !198
  %and.i.i.i.i154 = and i32 %32, -13
  %or.i.i.i.i155 = or i32 %and.i.i.i.i154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i155) #9, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %call1.i.i.i156 = call i32 @arm_copy_from_user(ptr noundef %27, ptr noundef %19, i32 noundef %add66) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !199
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  br label %if.end.i.i160

if.end.i.i160:                                    ; preds = %if.then.i7.i157, %land.lhs.true.i.i150.if.end.i.i160_crit_edge, %if.then.i.i.i145.if.end.i.i160_crit_edge
  %res.0.i.i158 = phi i32 [ %add66, %if.then.i.i.i145.if.end.i.i160_crit_edge ], [ %call1.i.i.i156, %if.then.i7.i157 ], [ %add66, %land.lhs.true.i.i150.if.end.i.i160_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i158)
  %tobool4.not.i.i159 = icmp eq i32 %res.0.i.i158, 0
  br i1 %tobool4.not.i.i159, label %if.end.i.i160.free_user_crit_edge, label %if.then11.i.i163, !prof !196

if.end.i.i160.free_user_crit_edge:                ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_user

if.then11.i.i163:                                 ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i161 = sub i32 %add66, %res.0.i.i158
  %add.ptr.i.i162 = getelementptr i8, ptr %27, i32 %sub.i.i161
  %33 = call ptr @memset(ptr %add.ptr.i.i162, i32 0, i32 %res.0.i.i158)
  br label %free_user.sink.split

free_user.sink.split:                             ; preds = %if.then11.i.i163, %if.then27.i.i143, %land.rhs16.i.i142.free_user.sink.split_crit_edge, %if.then11.i.i, %if.then3.i.i117, %copy_to_user.exit112.free_user.sink.split_crit_edge, %if.then27.i.i100, %land.rhs16.i.i99.free_user.sink.split_crit_edge, %copy_to_user.exit.free_user.sink.split_crit_edge, %if.then3.i.i
  %.str.53.sink = phi ptr [ @.str.7, %if.then3.i.i ], [ @.str.7, %copy_to_user.exit.free_user.sink.split_crit_edge ], [ @.str.13, %land.rhs16.i.i99.free_user.sink.split_crit_edge ], [ @.str.13, %if.then27.i.i100 ], [ @.str.13, %copy_to_user.exit112.free_user.sink.split_crit_edge ], [ @.str.47, %if.then11.i.i ], [ @.str.47, %if.then3.i.i117 ], [ @.str.53, %if.then11.i.i163 ], [ @.str.53, %if.then27.i.i143 ], [ @.str.53, %land.rhs16.i.i142.free_user.sink.split_crit_edge ]
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.53.sink) #13
  br label %free_user

free_user:                                        ; preds = %free_user.sink.split, %if.end.i.i160.free_user_crit_edge, %if.else41.free_user_crit_edge, %copy_to_user.exit112.free_user_crit_edge
  %call77 = call i32 @vm_munmap(i32 noundef %call5, i32 noundef 4096) #9
  br label %cleanup

cleanup:                                          ; preds = %free_user, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_stack) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %good_stack) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_STACK_FRAME_FROM() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_usercopy_stack(i1 noundef zeroext false, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_STACK_BEYOND() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_usercopy_stack(i1 noundef zeroext true, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_USERCOPY_KERNEL() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 4096, i32 noundef 7, i32 noundef 34, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call)
  %cmp = icmp ugt i32 %call, -1226833921
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

do.end4:                                          ; preds = %entry
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @test_text) #13
  %0 = inttoptr i32 %call to ptr
  %1 = load volatile i32, ptr @unconst, align 4
  %add = add i32 %1, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add)
  %cmp1.i.i = icmp ugt i32 %add, 17
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !201

if.then3.i.i:                                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.65, i32 noundef 17, i32 noundef %add) #9
  br label %do.end11

if.then.i.i.i:                                    ; preds = %do.end4
  tail call void @__check_object_size(ptr noundef nonnull @test_text, i32 noundef %add, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %add, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @test_text, i32 noundef %add) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @test_text, i32 noundef %add) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %do.end17, label %copy_to_user.exit.do.end11_crit_edge

copy_to_user.exit.do.end11_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end11:                                         ; preds = %copy_to_user.exit.do.end11_crit_edge, %if.then3.i.i
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %free_user

do.end17:                                         ; preds = %copy_to_user.exit
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @vm_mmap) #13
  %3 = load volatile i32, ptr @unconst, align 4
  %add20 = add i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add20)
  %cmp9.i.i62 = icmp slt i32 %add20, 0
  br i1 %cmp9.i.i62, label %land.rhs16.i.i65, label %if.then.i.i.i68

land.rhs16.i.i65:                                 ; preds = %do.end17
  %.b71.i.i64 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i64, label %land.rhs16.i.i65.do.end26_crit_edge, label %if.then27.i.i66, !prof !196

land.rhs16.i.i65.do.end26_crit_edge:              ; preds = %land.rhs16.i.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

if.then27.i.i66:                                  ; preds = %land.rhs16.i.i65
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %do.end26

if.then.i.i.i68:                                  ; preds = %do.end17
  tail call void @__check_object_size(ptr noundef nonnull @vm_mmap, i32 noundef %add20, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #9
  %call.i.i69 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i69, label %if.then.i.i.i68.copy_to_user.exit78_crit_edge, label %if.end.i.i73

if.then.i.i.i68.copy_to_user.exit78_crit_edge:    ; preds = %if.then.i.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit78

if.end.i.i73:                                     ; preds = %if.then.i.i.i68
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %add20, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i71 = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71)
  %cmp.i6.i72 = icmp eq i32 %asmresult.i.i71, 0
  br i1 %cmp.i6.i72, label %if.then2.i.i76, label %if.end.i.i73.copy_to_user.exit78_crit_edge

if.end.i.i73.copy_to_user.exit78_crit_edge:       ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit78

if.then2.i.i76:                                   ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i74 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_mmap, i32 noundef %add20) #9
  %call.i12.i.i75 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @vm_mmap, i32 noundef %add20) #9
  br label %copy_to_user.exit78

copy_to_user.exit78:                              ; preds = %if.then2.i.i76, %if.end.i.i73.copy_to_user.exit78_crit_edge, %if.then.i.i.i68.copy_to_user.exit78_crit_edge
  %n.addr.0.i77 = phi i32 [ %add20, %if.then.i.i.i68.copy_to_user.exit78_crit_edge ], [ %call.i12.i.i75, %if.then2.i.i76 ], [ %add20, %if.end.i.i73.copy_to_user.exit78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i77)
  %tobool22.not = icmp eq i32 %n.addr.0.i77, 0
  br i1 %tobool22.not, label %do.end32, label %copy_to_user.exit78.do.end26_crit_edge

copy_to_user.exit78.do.end26_crit_edge:           ; preds = %copy_to_user.exit78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end26:                                         ; preds = %copy_to_user.exit78.do.end26_crit_edge, %if.then27.i.i66, %land.rhs16.i.i65.do.end26_crit_edge
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %free_user

do.end32:                                         ; preds = %copy_to_user.exit78
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  %call35 = tail call i32 @lkdtm_check_bool_cmdline(ptr noundef nonnull @.str.18) #9
  %5 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call35, label %do.end49 [
    i32 0, label %do.end38
    i32 1, label %do.end44
  ]

do.end38:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %6 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %6) #13
  br label %free_user

do.end44:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %7 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %7) #13
  br label %free_user

do.end49:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %8 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %8) #13
  br label %free_user

free_user:                                        ; preds = %do.end49, %do.end44, %do.end38, %do.end26, %do.end11
  %call52 = tail call i32 @vm_munmap(i32 noundef %call, i32 noundef 4096) #9
  br label %cleanup

cleanup:                                          ; preds = %free_user, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lkdtm_check_bool_cmdline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_usercopy_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @cache_size, align 4
  %1 = load volatile i32, ptr @cache_size, align 4
  %div2 = lshr i32 %1, 2
  %2 = load volatile i32, ptr @cache_size, align 4
  %div13 = lshr i32 %2, 4
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.28, i32 noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %div2, i32 noundef %div13, ptr noundef null) #9
  store ptr %call, ptr @whitelist_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_usercopy_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @whitelist_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @do_usercopy_stack_callee(i32 noundef %value) unnamed_addr #8 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #9
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree noinline nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !91, !92, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !183}
!llvm.named.register.sp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 307, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lkdtm_USERCOPY_KERNEL._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 311, i32 2}
!8 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 315, i32 3}
!12 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 319, i32 2}
!16 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 323, i32 3}
!20 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 326, i32 2}
!24 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 327, i32 2}
!28 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.19, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.21, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.23, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.22, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.24, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.26, !27, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lkdtm_USERCOPY_KERNEL._entry.25, !27, !"_entry", i1 false, i1 false}
!36 = !{ptr @lkdtm_USERCOPY_KERNEL._entry_ptr.27, !27, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.28, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 337, i32 30}
!39 = !{ptr @unconst, !40, !"unconst", i1 false, i1 false}
!40 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 21, i32 24}
!41 = !{ptr @whitelist_cache, !42, !"whitelist_cache", i1 false, i1 false}
!42 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 23, i32 27}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 133, i32 3}
!45 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @do_usercopy_heap_size._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @do_usercopy_heap_size._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @do_usercopy_heap_size._entry.31, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 141, i32 3}
!50 = !{ptr @do_usercopy_heap_size._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 152, i32 3}
!53 = !{ptr @do_usercopy_heap_size._entry.33, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @do_usercopy_heap_size._entry_ptr.35, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @do_usercopy_heap_size._entry.36, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 154, i32 4}
!57 = !{ptr @do_usercopy_heap_size._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 158, i32 3}
!60 = !{ptr @do_usercopy_heap_size._entry.38, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @do_usercopy_heap_size._entry_ptr.40, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @do_usercopy_heap_size._entry.41, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 160, i32 4}
!64 = !{ptr @do_usercopy_heap_size._entry_ptr.42, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 164, i32 3}
!67 = !{ptr @do_usercopy_heap_size._entry.43, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @do_usercopy_heap_size._entry_ptr.45, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 166, i32 4}
!71 = !{ptr @do_usercopy_heap_size._entry.46, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @do_usercopy_heap_size._entry_ptr.48, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.50, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 170, i32 3}
!75 = !{ptr @do_usercopy_heap_size._entry.49, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @do_usercopy_heap_size._entry_ptr.51, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.53, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 172, i32 4}
!79 = !{ptr @do_usercopy_heap_size._entry.52, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @do_usercopy_heap_size._entry_ptr.54, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 176, i32 2}
!83 = !{ptr @do_usercopy_heap_size._entry.55, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @do_usercopy_heap_size._entry_ptr.57, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @do_usercopy_heap_size._entry.58, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 177, i32 2}
!87 = !{ptr @do_usercopy_heap_size._entry_ptr.59, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @do_usercopy_heap_size._entry.60, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @do_usercopy_heap_size._entry_ptr.61, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @do_usercopy_heap_size._entry.62, !86, !"_entry", i1 false, i1 false}
!91 = !{ptr @do_usercopy_heap_size._entry_ptr.63, !86, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!94 = !{ptr @.str.64, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.65, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!97 = !{ptr @.str.66, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!99 = !{ptr @.str.67, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 199, i32 3}
!101 = !{ptr @.str.68, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @do_usercopy_heap_whitelist._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @do_usercopy_heap_whitelist._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.70, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 208, i32 3}
!106 = !{ptr @do_usercopy_heap_whitelist._entry.69, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.71, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @do_usercopy_heap_whitelist._entry.72, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 217, i32 3}
!110 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.73, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.75, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 229, i32 3}
!113 = !{ptr @do_usercopy_heap_whitelist._entry.74, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.76, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @do_usercopy_heap_whitelist._entry.77, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 231, i32 4}
!117 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.78, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.80, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 235, i32 3}
!120 = !{ptr @do_usercopy_heap_whitelist._entry.79, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.81, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @do_usercopy_heap_whitelist._entry.82, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 237, i32 4}
!124 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.83, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.85, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 241, i32 3}
!127 = !{ptr @do_usercopy_heap_whitelist._entry.84, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.86, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @do_usercopy_heap_whitelist._entry.87, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 243, i32 4}
!131 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.88, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.90, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 247, i32 3}
!134 = !{ptr @do_usercopy_heap_whitelist._entry.89, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.91, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @do_usercopy_heap_whitelist._entry.92, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 249, i32 4}
!138 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.93, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @do_usercopy_heap_whitelist._entry.94, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 253, i32 2}
!141 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.95, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @do_usercopy_heap_whitelist._entry.96, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 254, i32 2}
!144 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.97, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @do_usercopy_heap_whitelist._entry.98, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.99, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @do_usercopy_heap_whitelist._entry.100, !143, !"_entry", i1 false, i1 false}
!148 = !{ptr @do_usercopy_heap_whitelist._entry_ptr.101, !143, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.102, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 73, i32 3}
!151 = !{ptr @do_usercopy_stack._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @do_usercopy_stack._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.104, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 78, i32 3}
!155 = !{ptr @do_usercopy_stack._entry.103, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @do_usercopy_stack._entry_ptr.105, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @do_usercopy_stack._entry.106, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 81, i32 4}
!159 = !{ptr @do_usercopy_stack._entry_ptr.107, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.109, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 85, i32 3}
!162 = !{ptr @do_usercopy_stack._entry.108, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @do_usercopy_stack._entry_ptr.110, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @do_usercopy_stack._entry.111, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 88, i32 4}
!166 = !{ptr @do_usercopy_stack._entry_ptr.112, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.114, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 99, i32 3}
!169 = !{ptr @do_usercopy_stack._entry.113, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @do_usercopy_stack._entry_ptr.115, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @do_usercopy_stack._entry.116, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 102, i32 4}
!173 = !{ptr @do_usercopy_stack._entry_ptr.117, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.119, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 106, i32 3}
!176 = !{ptr @do_usercopy_stack._entry.118, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @do_usercopy_stack._entry_ptr.120, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @do_usercopy_stack._entry.121, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 109, i32 4}
!180 = !{ptr @do_usercopy_stack._entry_ptr.122, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @test_text, !182, !"test_text", i1 false, i1 false}
!182 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 25, i32 28}
!183 = !{ptr @cache_size, !184, !"cache_size", i1 false, i1 false}
!184 = !{!"../drivers/misc/lkdtm/usercopy.c", i32 22, i32 24}
!185 = !{!"sp"}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i64 2152806797, i64 2152806822}
!196 = !{!"branch_weights", i32 2000, i32 1}
!197 = !{i64 2152806116, i64 2152806141}
!198 = !{i64 5301671}
!199 = !{i64 5301868}
!200 = !{i64 2152787101}
!201 = !{!"branch_weights", i32 1, i32 2000}
