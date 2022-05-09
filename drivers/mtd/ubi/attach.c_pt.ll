; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/attach.c_pt.bc'
source_filename = "../drivers/mtd/ubi/attach.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.72 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.72 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported on-flash UBI format\00", [32 x i8] zeroinitializer }, align 32
@ubi_compare_lebs.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_compare_lebs\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mtd/ubi/attach.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBI DBG bld (pid %d): second PEB %d is newer, copy_flag is unset\0A\00", [62 x i8] zeroinitializer }, align 32
@ubi_compare_lebs.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBI DBG bld (pid %d): first PEB %d is newer, copy_flag is unset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"VID of PEB %d header is bad, but it was OK earlier, err %d\00", [37 x i8] zeroinitializer }, align 32
@ubi_compare_lebs.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"UBI DBG bld (pid %d): PEB %d CRC error: calculated %#08x, must be %#08x\0A\00", [55 x i8] zeroinitializer }, align 32
@ubi_compare_lebs.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UBI DBG bld (pid %d): PEB %d CRC is OK\0A\00", [56 x i8] zeroinitializer }, align 32
@ubi_compare_lebs.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UBI DBG bld (pid %d): second PEB %d is newer, copy_flag is set\0A\00", [32 x i8] zeroinitializer }, align 32
@ubi_compare_lebs.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UBI DBG bld (pid %d): first PEB %d is newer, copy_flag is set\0A\00", [33 x i8] zeroinitializer }, align 32
@ubi_add_to_av.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubi_add_to_av\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"UBI DBG bld (pid %d): PEB %d, LEB %d:%d, EC %d, sqnum %llu, bitflips %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ubi_add_to_av.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"UBI DBG bld (pid %d): this LEB already exists: PEB %d, sqnum %llu, EC %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"two LEBs with same sequence number %llu\00", [56 x i8] zeroinitializer }, align 32
@ubi_remove_av.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubi_remove_av\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UBI DBG bld (pid %d): remove attaching information about volume %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ubi_early_get_peb.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_early_get_peb\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBI DBG bld (pid %d): return free PEB %d, EC %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_early_get_peb.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBI DBG bld (pid %d): return PEB %d, EC %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no free eraseblocks\00", [44 x i8] zeroinitializer }, align 32
@ubi_attach.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 1, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ubi_attach\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBI DBG gen (pid %d): max. sequence number:       %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ubi_io_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_io_read_data\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/ubi/ubi.h\00", [42 x i8] zeroinitializer }, align 32
@ubi_io_read_data._entry_ptr = internal global ptr @ubi_io_read_data._entry, section ".printk_index", align 4
@add_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.26, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"add_volume\00", [21 x i8] zeroinitializer }, align 32
@add_volume._entry_ptr = internal global ptr @add_volume._entry, section ".printk_index", align 4
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inconsistent vol_id\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"inconsistent vol_type\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"inconsistent used_ebs\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"inconsistent data_pad\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inconsistent VID header at PEB %d\00", [62 x i8] zeroinitializer }, align 32
@add_to_list.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_to_list\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBI DBG bld (pid %d): add to free: PEB %d, EC %d\0A\00", [46 x i8] zeroinitializer }, align 32
@add_to_list.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBI DBG bld (pid %d): add to erase: PEB %d, EC %d\0A\00", [45 x i8] zeroinitializer }, align 32
@add_to_list.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.35, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBI DBG bld (pid %d): add to alien: PEB %d, EC %d\0A\00", [45 x i8] zeroinitializer }, align 32
@find_or_add_av.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"find_or_add_av\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UBI DBG bld (pid %d): added volume %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"erase counter overflow at PEB %d, EC %d\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubi_aeb_slab_cache\00", [45 x i8] zeroinitializer }, align 32
@scan_all.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scan_all\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UBI DBG gen (pid %d): process PEB %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scanning is finished\00", [43 x i8] zeroinitializer }, align 32
@scan_peb.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scan_peb\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBI DBG bld (pid %d): scan PEB %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"'ubi_io_read_ec_hdr()' returned unknown code %d\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"this UBI version is %d, image version is %d\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"erase counter overflow, max is %d\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bad image sequence number %d in PEB %d, expected %d\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"'ubi_io_read_vid_hdr()' returned unknown code %d\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\22delete\22 compatible internal volume %d:%d found, will remove it\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"read-only compatible internal volume %d:%d found, switch to read-only mode\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\22preserve\22 compatible internal volume %d:%d found\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"incompatible internal volume %d:%d found\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"valid VID header but corrupted EC header at PEB %d\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"PEB %d contains corrupted VID header, and the data does not contain all 0xFF\00", [51 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection\00", [35 x i8] zeroinitializer }, align 32
@check_corruption._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hexdump of PEB %d offset %d, length %d\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_corruption\00", [47 x i8] zeroinitializer }, align 32
@check_corruption._entry_ptr = internal global ptr @check_corruption._entry, section ".printk_index", align 4
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@add_corrupted.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"add_corrupted\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBI DBG bld (pid %d): add to corrupted: PEB %d, EC %d\0A\00", [41 x i8] zeroinitializer }, align 32
@add_fastmap.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_fastmap\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"UBI DBG bld (pid %d): add to fastmap list: PEB %d, vol_id %d, sqnum: %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d PEBs are corrupted and preserved\00", [60 x i8] zeroinitializer }, align 32
@late_analysis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Corrupted PEBs are:\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"late_analysis\00", [18 x i8] zeroinitializer }, align 32
@late_analysis._entry_ptr = internal global ptr @late_analysis._entry, section ".printk_index", align 4
@late_analysis._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %d\00", [26 x i8] zeroinitializer }, align 32
@late_analysis._entry_ptr.70 = internal global ptr @late_analysis._entry.68, section ".printk_index", align 4
@late_analysis._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@late_analysis._entry_ptr.73 = internal global ptr @late_analysis._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"too many corrupted PEBs, refusing\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"empty MTD device detected\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"MTD device is not UBI-formatted and possibly contains non-UBI data - refusing it\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad is_empty flag\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"negative values\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad vol_id\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"highest_vol_id is %d, but vol_id %d is there\00", [51 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad vol_type\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad data_pad\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad ai->min_ec (%d), %d found\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad ai->max_ec (%d), %d found\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"too high PEB number %d, total PEBs %d\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad lnum or used_ebs\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"non-zero used_ebs\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"incorrect highest_lnum or lnum\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad leb_count, %d objects in the tree\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad highest_lnum\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad ai->vols_found %d, should be %d\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VID header is not OK (%d)\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad sqnum %llu\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad vol_id %d\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad compat %d\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad lnum %d\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad used_ebs %d\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad data_pad %d\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad highest_lnum %d\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad last_data_size %d\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PEB %d is not referred\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad attaching information about LEB %d\00", [57 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bad attaching information about volume %d\00", [54 x i8] zeroinitializer }, align 32
@scan_fast.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.3, ptr @.str.41, i8 1, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scan_fast\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.107 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.108 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 455, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 474, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 481, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 496, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 520, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 526, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 534, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 536, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 576, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 609, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 626, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 751, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 827, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 847, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 851, i32 15 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1599, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [25 x i8] c"../drivers/mtd/ubi/ubi.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1136, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 403, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 349, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 359, i32 17 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 364, i32 17 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 369, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 377, i32 15 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 235, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 237, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 239, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 147, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 782, i32 16 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1464, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1395, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1401, i32 15 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 950, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 990, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1000, i32 17 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1014, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1035, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1128, i32 16 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1140, i32 17 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1150, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1156, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1165, i32 17 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1172, i32 17 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 900, i32 15 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 902, i32 15 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 904, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 906, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 272, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 309, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1221, i32 16 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1223, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1225, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1226, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1233, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1256, i32 17 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1260, i32 17 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1682, i32 17 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1689, i32 17 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1695, i32 17 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1700, i32 17 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1707, i32 17 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1712, i32 17 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1729, i32 18 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1735, i32 18 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1741, i32 18 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1748, i32 19 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1753, i32 19 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1759, i32 18 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1765, i32 17 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1776, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1782, i32 16 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1799, i32 18 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1814, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1819, i32 18 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1824, i32 18 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1829, i32 18 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1834, i32 18 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1839, i32 18 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1848, i32 17 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1853, i32 17 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1895, i32 17 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1905, i32 15 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1911, i32 15 }
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.430 = private constant [28 x i8] c"../drivers/mtd/ubi/attach.c\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 1509, i32 3 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @add_volume._entry, ptr @add_volume._entry_ptr, ptr @check_corruption._entry, ptr @check_corruption._entry_ptr, ptr @late_analysis._entry, ptr @late_analysis._entry.68, ptr @late_analysis._entry.71, ptr @late_analysis._entry_ptr, ptr @late_analysis._entry_ptr.70, ptr @late_analysis._entry_ptr.73, ptr @ubi_io_read_data._entry, ptr @ubi_io_read_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_corruption._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @late_analysis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @late_analysis._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @late_analysis._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @ubi_alloc_aeb(ptr nocapture noundef readonly %ai, i32 noundef %pnum, i32 noundef %ec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aeb_slab_cache = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %0 = ptrtoint ptr %aeb_slab_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aeb_slab_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pnum1 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pnum1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pnum, ptr %pnum1, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ec, ptr %call.i, align 8
  %vol_id = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %vol_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vol_id, align 8
  %lnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lnum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_free_aeb(ptr nocapture noundef readonly %ai, ptr noundef %aeb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aeb_slab_cache = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %0 = ptrtoint ptr %aeb_slab_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aeb_slab_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %1, ptr noundef %aeb) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_compare_lebs(ptr noundef %ubi, ptr nocapture noundef readonly %aeb, i32 noundef %pnum, ptr nocapture noundef readonly %vid_hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 13
  %0 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %sqnum, align 1
  %sqnum1 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 5
  %2 = ptrtoint ptr %sqnum1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sqnum1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp4 = icmp ugt i64 %1, %3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %copy_flag = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 3
  %4 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %copy_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %do.body, label %if.then5.if.end57_crit_edge

if.then5.if.end57_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_compare_lebs, %if.then11)) #9
          to label %cleanup [label %if.then11], !srcloc !227

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_compare_lebs.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %pnum) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %copy_flag15 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 4
  %12 = ptrtoint ptr %copy_flag15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %copy_flag15, align 8
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %do.body18, label %if.end37

do.body18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_compare_lebs, %if.then30)) #9
          to label %cleanup [label %if.then30], !srcloc !227

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i238 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i238 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid33, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_compare_lebs.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %pnum) #9
  br label %cleanup

if.end37:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end37.cleanup_crit_edge, label %if.end.i

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end37
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %21 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #13
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end41

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end.i
  %23 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vid_hdr_alsize.i, align 4
  %25 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %24)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %27 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %28
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %pnum42 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 1
  %30 = ptrtoint ptr %pnum42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pnum42, align 4
  %call43 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %31, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #9
  %32 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call43, label %out_free_vidh.thread [
    i32 0, label %if.end41.if.end55_crit_edge
    i32 5, label %if.then48
  ]

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

out_free_vidh.thread:                             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.6, i32 noundef %31, i32 noundef %call43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp50 = icmp sgt i32 %call43, 0
  %spec.store.select = select i1 %cmp50, i32 -5, i32 %call43
  br label %if.end.i248

if.end55:                                         ; preds = %if.then48, %if.end41.if.end55_crit_edge
  %bitflips.0 = phi i32 [ 1, %if.then48 ], [ %call43, %if.end41.if.end55_crit_edge ]
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i.i, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %if.then5.if.end57_crit_edge
  %vidb.0 = phi ptr [ null, %if.then5.if.end57_crit_edge ], [ %call7.i.i.i, %if.end55 ]
  %bitflips.1 = phi i32 [ 0, %if.then5.if.end57_crit_edge ], [ %bitflips.0, %if.end55 ]
  %vid_hdr.addr.0 = phi ptr [ %vid_hdr, %if.then5.if.end57_crit_edge ], [ %34, %if.end55 ]
  %pnum.addr.0 = phi i32 [ %pnum, %if.then5.if.end57_crit_edge ], [ %31, %if.end55 ]
  %data_size = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr.addr.0, i32 0, i32 8
  %35 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data_size, align 1
  %buf_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #9
  %peb_buf = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 80
  %37 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peb_buf, align 8
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %39 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %leb_start.i, align 4
  %call6.i = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %38, i32 noundef %pnum.addr.0, i32 noundef %40, i32 noundef %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool59 = icmp ne i32 %call6.i, 0
  %41 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call6.i, label %out_free_vidh [
    i32 5, label %if.end57.if.end66_crit_edge
    i32 0, label %if.end57.if.end66_crit_edge264
    i32 -74, label %if.end57.if.end66_crit_edge265
  ]

if.end57.if.end66_crit_edge265:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end57.if.end66_crit_edge264:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %if.end57.if.end66_crit_edge, %if.end57.if.end66_crit_edge264, %if.end57.if.end66_crit_edge265
  %data_crc67 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr.addr.0, i32 0, i32 11
  %42 = ptrtoint ptr %data_crc67 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %data_crc67, align 1
  %44 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %peb_buf, align 8
  %call69 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %45, i32 noundef %36) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call69, i32 %43)
  %cmp70.not = icmp eq i32 %call69, %43
  br i1 %cmp70.not, label %do.body96, label %do.body73

do.body73:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_compare_lebs, %if.then85)) #9
          to label %do.end91 [label %if.then85], !srcloc !227

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %46 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i240 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i240 to ptr
  %task87 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task87, align 8
  %pid88 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid88, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_compare_lebs.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.7, i32 noundef %51, i32 noundef %pnum.addr.0, i32 noundef %call69, i32 noundef %43) #9
  br label %do.end91

do.end91:                                         ; preds = %if.then85, %do.body73
  %lnot93 = xor i1 %cmp4, true
  br label %if.end120

do.body96:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_compare_lebs, %if.then108)) #9
          to label %do.end114 [label %if.then108], !srcloc !227

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  %52 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i241 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i241 to ptr
  %task110 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task110 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task110, align 8
  %pid111 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid111, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_compare_lebs.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.8, i32 noundef %57, i32 noundef %pnum.addr.0) #9
  br label %do.end114

do.end114:                                        ; preds = %if.then108, %do.body96
  %lnot.ext119 = zext i1 %tobool59 to i32
  %or = or i32 %bitflips.1, %lnot.ext119
  %phi.bo = shl nsw i32 %or, 1
  br label %if.end120

if.end120:                                        ; preds = %do.end114, %do.end91
  %corrupted.0 = phi i32 [ 4, %do.end91 ], [ 0, %do.end114 ]
  %bitflips.2 = phi i32 [ 0, %do.end91 ], [ %phi.bo, %do.end114 ]
  %second_is_newer.0.in = phi i1 [ %lnot93, %do.end91 ], [ %cmp4, %do.end114 ]
  %second_is_newer.0 = zext i1 %second_is_newer.0.in to i32
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #9
  %tobool.not.i242 = icmp eq ptr %vidb.0, null
  br i1 %tobool.not.i242, label %if.end120.ubi_free_vid_buf.exit_crit_edge, label %if.end.i243

if.end120.ubi_free_vid_buf.exit_crit_edge:        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubi_free_vid_buf.exit

if.end.i243:                                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %vidb.0, i32 0, i32 1
  %58 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %59) #9
  tail call void @kfree(ptr noundef nonnull %vidb.0) #9
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.end.i243, %if.end120.ubi_free_vid_buf.exit_crit_edge
  br i1 %second_is_newer.0.in, label %do.body124, label %do.body144

do.body124:                                       ; preds = %ubi_free_vid_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_compare_lebs, %if.then136)) #9
          to label %if.end163 [label %if.then136], !srcloc !227

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  %60 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i244 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i244 to ptr
  %task138 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task138 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task138, align 8
  %pid139 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid139 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid139, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_compare_lebs.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.9, i32 noundef %65, i32 noundef %pnum.addr.0) #9
  br label %if.end163

do.body144:                                       ; preds = %ubi_free_vid_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_compare_lebs, %if.then156)) #9
          to label %if.end163 [label %if.then156], !srcloc !227

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #11
  %66 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i245 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i245 to ptr
  %task158 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task158 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task158, align 8
  %pid159 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 68
  %70 = ptrtoint ptr %pid159 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid159, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_compare_lebs.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.10, i32 noundef %71, i32 noundef %pnum.addr.0) #9
  br label %if.end163

if.end163:                                        ; preds = %if.then156, %do.body144, %if.then136, %do.body124
  %or165 = or i32 %bitflips.2, %corrupted.0
  %or167 = or i32 %or165, %second_is_newer.0
  br label %cleanup

out_free_vidh:                                    ; preds = %if.end57
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #9
  %tobool.not.i246 = icmp eq ptr %vidb.0, null
  br i1 %tobool.not.i246, label %out_free_vidh.cleanup_crit_edge, label %out_free_vidh.if.end.i248_crit_edge

out_free_vidh.if.end.i248_crit_edge:              ; preds = %out_free_vidh
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i248

out_free_vidh.cleanup_crit_edge:                  ; preds = %out_free_vidh
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i248:                                      ; preds = %out_free_vidh.if.end.i248_crit_edge, %out_free_vidh.thread
  %err.0262 = phi i32 [ %spec.store.select, %out_free_vidh.thread ], [ %call6.i, %out_free_vidh.if.end.i248_crit_edge ]
  %vidb.1261 = phi ptr [ %call7.i.i.i, %out_free_vidh.thread ], [ %vidb.0, %out_free_vidh.if.end.i248_crit_edge ]
  %buffer.i247 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %vidb.1261, i32 0, i32 1
  %72 = ptrtoint ptr %buffer.i247 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buffer.i247, align 4
  tail call void @kfree(ptr noundef %73) #9
  tail call void @kfree(ptr noundef nonnull %vidb.1261) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i248, %out_free_vidh.cleanup_crit_edge, %if.end163, %if.then3.i, %if.end37.cleanup_crit_edge, %if.then30, %do.body18, %if.then11, %do.body, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %or167, %if.end163 ], [ 1, %if.then11 ], [ 0, %if.then30 ], [ 1, %do.body ], [ 0, %do.body18 ], [ %call6.i, %out_free_vidh.cleanup_crit_edge ], [ %err.0262, %if.end.i248 ], [ -12, %if.then3.i ], [ -12, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_vid_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_add_to_av(ptr noundef %ubi, ptr noundef %ai, i32 noundef %pnum, i32 noundef %ec, ptr noundef %vid_hdr, i32 noundef %bitflips) local_unnamed_addr #0 align 64 {
entry:
  %created.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_id1 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 5
  %0 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %vol_id1, align 1
  %lnum2 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 6
  %2 = ptrtoint ptr %lnum2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %lnum2, align 1
  %sqnum3 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 13
  %4 = ptrtoint ptr %sqnum3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %sqnum3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_add_to_av.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_add_to_av, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !227

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_add_to_av.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef %pnum, i32 noundef %1, i32 noundef %3, i32 noundef %ec, i64 noundef %5, i32 noundef %bitflips) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %created.i) #9
  %12 = ptrtoint ptr %created.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %created.i, align 1, !annotation !228
  %13 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %vol_id1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp.not.i = icmp eq i32 %14, %1
  br i1 %cmp.not.i, label %do.end.do.end7.i_crit_edge, label %do.end.i, !prof !229

do.end.do.end7.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef 403, i32 noundef %20) #15
  tail call void @dump_stack() #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.end.do.end7.i_crit_edge
  %call.i.i = call fastcc ptr @find_or_add_av(ptr noundef %ai, i32 noundef %1, i32 noundef 3, ptr noundef nonnull %created.i) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.end7.i
  %21 = ptrtoint ptr %created.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %created.i, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not.i = icmp eq i8 %22, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i.if.end11_crit_edge, label %if.end12.i

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end12.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %used_ebs.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 9
  %23 = ptrtoint ptr %used_ebs.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %used_ebs.i, align 1
  %used_ebs13.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %used_ebs13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %used_ebs13.i, align 4
  %data_pad.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 10
  %26 = ptrtoint ptr %data_pad.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %data_pad.i, align 1
  %data_pad14.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %data_pad14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %data_pad14.i, align 4
  %compat.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 4
  %29 = ptrtoint ptr %compat.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %compat.i, align 1
  %conv.i = zext i8 %30 to i32
  %compat15.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %compat15.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %compat15.i, align 4
  %vol_type.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 2
  %32 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vol_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp17.i = icmp eq i8 %33, 1
  %cond.i = select i1 %cmp17.i, i32 3, i32 4
  %vol_type19.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %vol_type19.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond.i, ptr %vol_type19.i, align 4
  br label %if.end11

if.then9:                                         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %created.i) #9
  %35 = ptrtoint ptr %call.i.i to i32
  br label %cleanup131

if.end11:                                         ; preds = %if.end12.i, %lor.lhs.false.i.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %created.i) #9
  %max_sqnum = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 17
  %36 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %max_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %5)
  %cmp = icmp ult i64 %37, %5
  br i1 %cmp, label %if.then12, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %5, ptr %max_sqnum, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end11.if.end14_crit_edge
  %root = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %root, align 4
  %tobool15.not292 = icmp eq ptr %40, null
  br i1 %tobool15.not292, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end14.while.body_crit_edge
  %41 = phi ptr [ %99, %cleanup.while.body_crit_edge ], [ %40, %if.end14.while.body_crit_edge ]
  %lnum17 = getelementptr i8, ptr %41, i32 -20
  %42 = ptrtoint ptr %lnum17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lnum17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %43)
  %cmp18.not = icmp eq i32 %3, %43
  br i1 %cmp18.not, label %do.body25, label %cleanup

do.body25:                                        ; preds = %while.body
  %lnum17.le = getelementptr i8, ptr %41, i32 -20
  %add.ptr.le = getelementptr i8, ptr %41, i32 -32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_add_to_av.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_add_to_av, %if.then37)) #9
          to label %do.end46 [label %if.then37], !srcloc !227

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %44 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i250 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i250 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task39, align 8
  %pid40 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid40, align 8
  %pnum41 = getelementptr i8, ptr %41, i32 -28
  %50 = ptrtoint ptr %pnum41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pnum41, align 4
  %sqnum42 = getelementptr i8, ptr %41, i32 -8
  %52 = ptrtoint ptr %sqnum42 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %sqnum42, align 8
  %54 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.le, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_add_to_av.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.13, i32 noundef %49, i32 noundef %51, i64 noundef %53, i32 noundef %55) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then37, %do.body25
  %sqnum47 = getelementptr i8, ptr %41, i32 -8
  %56 = ptrtoint ptr %sqnum47 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %sqnum47, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %5)
  %cmp48 = icmp ne i64 %57, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp49.not = icmp eq i64 %5, 0
  %or.cond = or i1 %cmp49.not, %cmp48
  br i1 %or.cond, label %if.end51, label %if.then50

if.then50:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.14, i64 noundef %5) #9
  tail call void @ubi_dump_aeb(ptr noundef %add.ptr.le, i32 noundef 0) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %vid_hdr) #9
  br label %cleanup131

if.end51:                                         ; preds = %do.end46
  %call52 = tail call i32 @ubi_compare_lebs(ptr noundef %ubi, ptr noundef %add.ptr.le, i32 noundef %pnum, ptr noundef %vid_hdr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup131_crit_edge, label %if.end55

if.end51.cleanup131_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup131

if.end55:                                         ; preds = %if.end51
  %and = and i32 %call52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.else90, label %if.then57

if.then57:                                        ; preds = %if.end55
  %vol_type1.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 2
  %58 = ptrtoint ptr %vol_type1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vol_type1.i, align 1
  %conv.i251 = zext i8 %59 to i32
  %used_ebs3.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 9
  %60 = ptrtoint ptr %used_ebs3.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %used_ebs3.i, align 1
  %data_pad4.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 10
  %62 = ptrtoint ptr %data_pad4.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %data_pad4.i, align 1
  %leb_count.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %leb_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %leb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.not.i252 = icmp eq i32 %65, 0
  br i1 %cmp.not.i252, label %if.then57.if.end61_crit_edge, label %if.then.i

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then.i:                                        ; preds = %if.then57
  %66 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %vol_id1, align 1
  %68 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp7.not.i = icmp eq i32 %67, %69
  br i1 %cmp7.not.i, label %if.end.i, label %if.then.i.validate_vid_hdr.exit_crit_edge

if.then.i.validate_vid_hdr.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit

if.end.i:                                         ; preds = %if.then.i
  %vol_type10.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %vol_type10.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vol_type10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp11.i = icmp eq i32 %71, 4
  %..i = select i1 %cmp11.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %conv.i251)
  %cmp15.not.i = icmp eq i32 %..i, %conv.i251
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end.i.validate_vid_hdr.exit_crit_edge

if.end.i.validate_vid_hdr.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit

if.end18.i:                                       ; preds = %if.end.i
  %used_ebs19.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 4
  %72 = ptrtoint ptr %used_ebs19.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %used_ebs19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %73)
  %cmp20.not.i = icmp eq i32 %61, %73
  br i1 %cmp20.not.i, label %if.end23.i, label %if.end18.i.validate_vid_hdr.exit_crit_edge

if.end18.i.validate_vid_hdr.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit

if.end23.i:                                       ; preds = %if.end18.i
  %data_pad24.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %data_pad24.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_pad24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %75)
  %cmp25.not.i = icmp eq i32 %63, %75
  br i1 %cmp25.not.i, label %if.end23.i.if.end61_crit_edge, label %if.end23.i.validate_vid_hdr.exit_crit_edge

if.end23.i.validate_vid_hdr.exit_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit

if.end23.i.if.end61_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

validate_vid_hdr.exit:                            ; preds = %if.end23.i.validate_vid_hdr.exit_crit_edge, %if.end18.i.validate_vid_hdr.exit_crit_edge, %if.end.i.validate_vid_hdr.exit_crit_edge, %if.then.i.validate_vid_hdr.exit_crit_edge
  %.str.27.sink.i = phi ptr [ @.str.27, %if.then.i.validate_vid_hdr.exit_crit_edge ], [ @.str.28, %if.end.i.validate_vid_hdr.exit_crit_edge ], [ @.str.29, %if.end18.i.validate_vid_hdr.exit_crit_edge ], [ @.str.30, %if.end23.i.validate_vid_hdr.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull %.str.27.sink.i) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.31, i32 noundef %pnum) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %vid_hdr) #9
  tail call void @ubi_dump_av(ptr noundef %call.i.i) #9
  br label %cleanup131

if.end61:                                         ; preds = %if.end23.i.if.end61_crit_edge, %if.then57.if.end61_crit_edge
  %pnum62 = getelementptr i8, ptr %41, i32 -28
  %76 = ptrtoint ptr %pnum62 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pnum62, align 4
  %vol_id63 = getelementptr i8, ptr %41, i32 -24
  %78 = ptrtoint ptr %vol_id63 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vol_id63, align 8
  %80 = ptrtoint ptr %lnum17.le to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lnum17.le, align 4
  %82 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.le, align 8
  %and66 = and i32 %call52, 4
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %call67 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %and66, ptr noundef %erase)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end61.cleanup131_crit_edge

if.end61.cleanup131_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup131

if.end70:                                         ; preds = %if.end61
  %84 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %ec, ptr %add.ptr.le, align 8
  %85 = ptrtoint ptr %pnum62 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %pnum, ptr %pnum62, align 4
  %86 = ptrtoint ptr %vol_id63 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %1, ptr %vol_id63, align 8
  %87 = ptrtoint ptr %lnum17.le to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %3, ptr %lnum17.le, align 4
  %and75 = and i32 %call52, 2
  %88 = or i32 %and75, %bitflips
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %.not = icmp eq i32 %88, 0
  %scrub = getelementptr i8, ptr %41, i32 -16
  %89 = ptrtoint ptr %scrub to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load = load i8, ptr %scrub, align 8
  %bf.shl = select i1 %.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %scrub, align 8
  %copy_flag = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 3
  %90 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %copy_flag, align 1
  %bf.value80 = shl i8 %91, 6
  %bf.shl81 = and i8 %bf.value80, 64
  %bf.clear82 = and i8 %bf.set, -65
  %bf.set83 = or i8 %bf.shl81, %bf.clear82
  store i8 %bf.set83, ptr %scrub, align 8
  %92 = ptrtoint ptr %sqnum47 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %5, ptr %sqnum47, align 8
  %highest_lnum = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %highest_lnum to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %highest_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %3)
  %cmp86 = icmp eq i32 %94, %3
  br i1 %cmp86, label %if.then88, label %if.end70.cleanup131_crit_edge

if.end70.cleanup131_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup131

if.then88:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %data_size = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 8
  %95 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %data_size, align 1
  %last_data_size = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 5
  %97 = ptrtoint ptr %last_data_size to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %last_data_size, align 4
  br label %cleanup131

if.else90:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %and91 = and i32 %call52, 4
  %erase92 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %call93 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef %1, i32 noundef %3, i32 noundef %ec, i32 noundef %and91, ptr noundef %erase92)
  br label %cleanup131

cleanup:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %43)
  %cmp21 = icmp slt i32 %3, %43
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 1
  %p.1 = select i1 %cmp21, ptr %rb_left, ptr %rb_right
  %98 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %p.1, align 4
  %tobool15.not = icmp eq ptr %99, null
  br i1 %tobool15.not, label %while.cond.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %41 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end14.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %root, %if.end14.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end14.while.end_crit_edge ]
  %vol_type1.i254 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 2
  %100 = ptrtoint ptr %vol_type1.i254 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %vol_type1.i254, align 1
  %conv.i255 = zext i8 %101 to i32
  %used_ebs3.i256 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 9
  %102 = ptrtoint ptr %used_ebs3.i256 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %used_ebs3.i256, align 1
  %data_pad4.i257 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 10
  %104 = ptrtoint ptr %data_pad4.i257 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %data_pad4.i257, align 1
  %leb_count.i258 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %leb_count.i258 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %leb_count.i258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.not.i259 = icmp eq i32 %107, 0
  br i1 %cmp.not.i259, label %while.end.if.end97_crit_edge, label %if.then.i262

while.end.if.end97_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then.i262:                                     ; preds = %while.end
  %108 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %vol_id1, align 1
  %110 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp7.not.i261 = icmp eq i32 %109, %111
  br i1 %cmp7.not.i261, label %if.end.i267, label %if.then.i262.validate_vid_hdr.exit277_crit_edge

if.then.i262.validate_vid_hdr.exit277_crit_edge:  ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit277

if.end.i267:                                      ; preds = %if.then.i262
  %vol_type10.i263 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %vol_type10.i263 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vol_type10.i263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %113)
  %cmp11.i264 = icmp eq i32 %113, 4
  %..i265 = select i1 %cmp11.i264, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %..i265, i32 %conv.i255)
  %cmp15.not.i266 = icmp eq i32 %..i265, %conv.i255
  br i1 %cmp15.not.i266, label %if.end18.i270, label %if.end.i267.validate_vid_hdr.exit277_crit_edge

if.end.i267.validate_vid_hdr.exit277_crit_edge:   ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit277

if.end18.i270:                                    ; preds = %if.end.i267
  %used_ebs19.i268 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %used_ebs19.i268 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %used_ebs19.i268, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %115)
  %cmp20.not.i269 = icmp eq i32 %103, %115
  br i1 %cmp20.not.i269, label %if.end23.i273, label %if.end18.i270.validate_vid_hdr.exit277_crit_edge

if.end18.i270.validate_vid_hdr.exit277_crit_edge: ; preds = %if.end18.i270
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit277

if.end23.i273:                                    ; preds = %if.end18.i270
  %data_pad24.i271 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 6
  %116 = ptrtoint ptr %data_pad24.i271 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_pad24.i271, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %117)
  %cmp25.not.i272 = icmp eq i32 %105, %117
  br i1 %cmp25.not.i272, label %if.end23.i273.if.end97_crit_edge, label %if.end23.i273.validate_vid_hdr.exit277_crit_edge

if.end23.i273.validate_vid_hdr.exit277_crit_edge: ; preds = %if.end23.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_vid_hdr.exit277

if.end23.i273.if.end97_crit_edge:                 ; preds = %if.end23.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

validate_vid_hdr.exit277:                         ; preds = %if.end23.i273.validate_vid_hdr.exit277_crit_edge, %if.end18.i270.validate_vid_hdr.exit277_crit_edge, %if.end.i267.validate_vid_hdr.exit277_crit_edge, %if.then.i262.validate_vid_hdr.exit277_crit_edge
  %.str.27.sink.i274 = phi ptr [ @.str.27, %if.then.i262.validate_vid_hdr.exit277_crit_edge ], [ @.str.28, %if.end.i267.validate_vid_hdr.exit277_crit_edge ], [ @.str.29, %if.end18.i270.validate_vid_hdr.exit277_crit_edge ], [ @.str.30, %if.end23.i273.validate_vid_hdr.exit277_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull %.str.27.sink.i274) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.31, i32 noundef %pnum) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %vid_hdr) #9
  tail call void @ubi_dump_av(ptr noundef %call.i.i) #9
  br label %cleanup131

if.end97:                                         ; preds = %if.end23.i273.if.end97_crit_edge, %while.end.if.end97_crit_edge
  %aeb_slab_cache.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %118 = ptrtoint ptr %aeb_slab_cache.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %aeb_slab_cache.i, align 4
  %call.i.i278 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %119, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i278, null
  br i1 %tobool.not.i, label %if.end97.cleanup131_crit_edge, label %if.end101

if.end97.cleanup131_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup131

if.end101:                                        ; preds = %if.end97
  %pnum1.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 1
  %120 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %pnum, ptr %pnum1.i, align 4
  %121 = ptrtoint ptr %call.i.i278 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %ec, ptr %call.i.i278, align 8
  %vol_id.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 2
  %lnum.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 3
  %122 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %1, ptr %vol_id.i, align 8
  %123 = ptrtoint ptr %lnum.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %3, ptr %lnum.i, align 4
  %scrub104 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 4
  %124 = trunc i32 %bitflips to i8
  %125 = ptrtoint ptr %scrub104 to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load105 = load i8, ptr %scrub104, align 8
  %bf.shl107 = shl i8 %124, 7
  %bf.clear108 = and i8 %bf.load105, 63
  %bf.set109 = or i8 %bf.clear108, %bf.shl107
  %copy_flag111 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 3
  %126 = ptrtoint ptr %copy_flag111 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %copy_flag111, align 1
  %bf.value115 = shl i8 %127, 6
  %bf.shl116 = and i8 %bf.value115, 64
  %bf.set118 = or i8 %bf.shl116, %bf.set109
  store i8 %bf.set118, ptr %scrub104, align 8
  %sqnum120 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 5
  %128 = ptrtoint ptr %sqnum120 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %5, ptr %sqnum120, align 8
  %highest_lnum121 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %highest_lnum121 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %highest_lnum121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %3)
  %cmp122.not = icmp sgt i32 %130, %3
  br i1 %cmp122.not, label %if.end101.if.end128_crit_edge, label %if.then124

if.end101.if.end128_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then124:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %highest_lnum121 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %3, ptr %highest_lnum121, align 4
  %data_size126 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 8
  %132 = ptrtoint ptr %data_size126 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %data_size126, align 1
  %last_data_size127 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call.i.i, i32 0, i32 5
  %134 = ptrtoint ptr %last_data_size127 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %last_data_size127, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.end101.if.end128_crit_edge
  %135 = ptrtoint ptr %leb_count.i258 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %leb_count.i258, align 4
  %add = add i32 %136, 1
  store i32 %add, ptr %leb_count.i258, align 4
  %u = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 6
  %137 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %parent.0.lcssa, ptr %u, align 8
  %rb_right.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 6, i32 0, i32 1
  %138 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i278, i32 0, i32 6, i32 0, i32 2
  %139 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %rb_left.i, align 8
  %140 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %u, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %u, ptr noundef %root) #9
  br label %cleanup131

cleanup131:                                       ; preds = %if.end128, %if.end97.cleanup131_crit_edge, %validate_vid_hdr.exit277, %if.else90, %if.then88, %if.end70.cleanup131_crit_edge, %if.end61.cleanup131_crit_edge, %validate_vid_hdr.exit, %if.end51.cleanup131_crit_edge, %if.then50, %if.then9
  %retval.2 = phi i32 [ %35, %if.then9 ], [ 0, %if.end128 ], [ -22, %validate_vid_hdr.exit277 ], [ 0, %if.end70.cleanup131_crit_edge ], [ 0, %if.then88 ], [ %call67, %if.end61.cleanup131_crit_edge ], [ -22, %validate_vid_hdr.exit ], [ %call52, %if.end51.cleanup131_crit_edge ], [ %call93, %if.else90 ], [ -22, %if.then50 ], [ -12, %if.end97.cleanup131_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_aeb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vid_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef %vol_id, i32 noundef %lnum, i32 noundef %ec, i32 noundef %to_head, ptr noundef %list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  %cmp = icmp eq ptr %free, %list
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_list.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_list, %if.then3)) #9
          to label %if.end57 [label %if.then3], !srcloc !227

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_to_list.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.33, i32 noundef %5, i32 noundef %pnum, i32 noundef %ec) #9
  br label %if.end57

if.else:                                          ; preds = %entry
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %cmp5 = icmp eq ptr %erase, %list
  br i1 %cmp5, label %do.body7, label %if.else26

do.body7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_list.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_list, %if.then19)) #9
          to label %if.end57 [label %if.then19], !srcloc !227

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i93 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i93 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task21, align 8
  %pid22 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid22, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_to_list.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %pnum, i32 noundef %ec) #9
  br label %if.end57

if.else26:                                        ; preds = %if.else
  %alien = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 4
  %cmp27 = icmp eq ptr %alien, %list
  br i1 %cmp27, label %do.body29, label %do.body49

do.body29:                                        ; preds = %if.else26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_list.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_list, %if.then41)) #9
          to label %do.end47 [label %if.then41], !srcloc !227

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i94 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i94 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task43, align 8
  %pid44 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid44, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_to_list.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.35, i32 noundef %17, i32 noundef %pnum, i32 noundef %ec) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body29
  %alien_peb_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 8
  %18 = ptrtoint ptr %alien_peb_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alien_peb_count, align 4
  %add = add i32 %19, 1
  store i32 %add, ptr %alien_peb_count, align 4
  br label %if.end57

do.body49:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/ubi/attach.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 242, 0\0A.popsection", ""() #9, !srcloc !231
  unreachable

if.end57:                                         ; preds = %do.end47, %if.then19, %do.body7, %if.then3, %do.body
  %aeb_slab_cache.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %20 = ptrtoint ptr %aeb_slab_cache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aeb_slab_cache.i, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end57.cleanup_crit_edge, label %if.end61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %pnum1.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %pnum, ptr %pnum1.i, align 4
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %ec, ptr %call.i.i, align 8
  %vol_id.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 2
  %lnum.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %vol_id, ptr %vol_id.i, align 8
  %25 = ptrtoint ptr %lnum.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %lnum, ptr %lnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_head)
  %tobool64.not = icmp eq i32 %to_head, 0
  %u67 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 6
  br i1 %tobool64.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %if.end61
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %call.i.i95 = tail call zeroext i1 @__list_add_valid(ptr noundef %u67, ptr noundef %list, ptr noundef %27) #9
  br i1 %call.i.i95, label %if.end.i.i, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  br label %cleanup.sink.split

if.else66:                                        ; preds = %if.end61
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i96 = tail call zeroext i1 @__list_add_valid(ptr noundef %u67, ptr noundef %29, ptr noundef %list) #9
  br i1 %call.i.i96, label %if.else66.cleanup.sink.split_crit_edge, label %if.else66.cleanup_crit_edge

if.else66.cleanup_crit_edge:                      ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else66.cleanup.sink.split_crit_edge:           ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else66.cleanup.sink.split_crit_edge, %if.end.i.i
  %prev.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else66.cleanup.sink.split_crit_edge ]
  %list.sink = phi ptr [ %27, %if.end.i.i ], [ %list, %if.else66.cleanup.sink.split_crit_edge ]
  %.sink102 = phi ptr [ %list, %if.end.i.i ], [ %29, %if.else66.cleanup.sink.split_crit_edge ]
  %30 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %u67, ptr %prev.i.sink, align 4
  %31 = ptrtoint ptr %u67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list.sink, ptr %u67, align 8
  %prev3.i.i97 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i97 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.sink102, ptr %prev3.i.i97, align 4
  %33 = ptrtoint ptr %.sink102 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %u67, ptr %.sink102, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else66.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.end57.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then65.cleanup_crit_edge ], [ 0, %if.else66.cleanup_crit_edge ], [ -12, %if.end57.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubi_add_av(ptr noundef %ai, i32 noundef %vol_id) local_unnamed_addr #0 align 64 {
entry:
  %created = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %created) #9
  %call = call fastcc ptr @find_or_add_av(ptr noundef %ai, i32 noundef %vol_id, i32 noundef 2, ptr noundef nonnull %created)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %created) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_or_add_av(ptr noundef %ai, i32 noundef %vol_id, i32 noundef %flags, ptr nocapture noundef writeonly %created) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ai, align 4
  %tobool.not62 = icmp eq ptr %1, null
  br i1 %tobool.not62, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %7, %if.end4.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %vol_id)
  %cmp = icmp eq i32 %4, %vol_id
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.le = getelementptr i8, ptr %2, i32 -32
  %5 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %created, align 1
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool2.not, ptr inttoptr (i32 -17 to ptr), ptr %add.ptr.le
  br label %cleanup

if.end4:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %vol_id)
  %cmp6 = icmp slt i32 %4, %vol_id
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  %p.1 = select i1 %cmp6, ptr %rb_left, ptr %rb_right
  %6 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %ai, %entry.while.end_crit_edge ]
  %and9 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %while.end.cleanup_crit_edge, label %if.end12

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 48) #12
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %vol_id, ptr %call7.i.i, align 8
  %highest_vol_id = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 12
  %10 = ptrtoint ptr %highest_vol_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %highest_vol_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %vol_id)
  %cmp19 = icmp slt i32 %11, %vol_id
  br i1 %cmp19, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %highest_vol_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %vol_id, ptr %highest_vol_id, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %rb = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parent.0.lcssa, ptr %rb, align 8
  %rb_right.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call7.i.i, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call7.i.i, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_left.i, align 8
  %16 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rb, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb, ptr noundef %ai) #9
  %vols_found = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 11
  %17 = ptrtoint ptr %vols_found to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vols_found, align 8
  %add = add i32 %18, 1
  store i32 %add, ptr %vols_found, align 8
  %19 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %created, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_or_add_av.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_or_add_av, %if.then30)) #9
          to label %cleanup [label %if.then30], !srcloc !227

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_or_add_av.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.37, i32 noundef %25, i32 noundef %vol_id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end22, %if.end12.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %while.end.cleanup_crit_edge ], [ %call7.i.i, %if.then30 ], [ inttoptr (i32 -12 to ptr), %if.end12.cleanup_crit_edge ], [ %call7.i.i, %if.end22 ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubi_find_av(ptr nocapture noundef readonly %ai, i32 noundef %vol_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ai, align 4
  %tobool.not62.i = icmp eq ptr %1, null
  br i1 %tobool.not62.i, label %entry.find_or_add_av.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.find_or_add_av.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_or_add_av.exit

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %6, %if.end4.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -32
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %vol_id)
  %cmp.i = icmp eq i32 %4, %vol_id
  br i1 %cmp.i, label %find_or_add_av.exit.loopexit.split.loop.exit, label %if.end4.i

if.end4.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %vol_id)
  %cmp6.i = icmp slt i32 %4, %vol_id
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  %p.1.i = select i1 %cmp6.i, ptr %rb_left.i, ptr %rb_right.i
  %5 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end4.i.find_or_add_av.exit_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end4.i.find_or_add_av.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_or_add_av.exit

find_or_add_av.exit.loopexit.split.loop.exit:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.le = getelementptr i8, ptr %2, i32 -32
  br label %find_or_add_av.exit

find_or_add_av.exit:                              ; preds = %find_or_add_av.exit.loopexit.split.loop.exit, %if.end4.i.find_or_add_av.exit_crit_edge, %entry.find_or_add_av.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.find_or_add_av.exit_crit_edge ], [ %add.ptr.i.le, %find_or_add_av.exit.loopexit.split.loop.exit ], [ null, %if.end4.i.find_or_add_av.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_remove_av(ptr noundef %ai, ptr noundef %av) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_remove_av.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_remove_av, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !227

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %6 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %av, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_remove_av.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rb = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 8
  tail call void @rb_erase(ptr noundef %rb, ptr noundef %ai) #9
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %root.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 9
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i, align 4
  %tobool.not38.i = icmp eq ptr %9, null
  br i1 %tobool.not38.i, label %do.end.destroy_av.exit_crit_edge, label %while.body.lr.ph.i

do.end.destroy_av.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_av.exit

while.body.lr.ph.i:                               ; preds = %do.end
  %tobool15.not.i = icmp eq ptr %erase, null
  %prev.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3, i32 1
  %aeb_slab_cache.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  br label %while.body.i

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %this.039.i = phi ptr [ %9, %while.body.lr.ph.i ], [ %this.1.i, %if.end21.i.while.body.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %this.039.i, i32 0, i32 2
  %10 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_left.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.else.i, label %while.body.i.if.end21.i_crit_edge

while.body.i.if.end21.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.else.i:                                        ; preds = %while.body.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %this.039.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_right.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.else6.i, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.else6.i:                                       ; preds = %if.else.i
  %add.ptr.i = getelementptr i8, ptr %this.039.i, i32 -32
  %14 = ptrtoint ptr %this.039.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %this.039.i, align 4
  %and.i9 = and i32 %15, -4
  %16 = inttoptr i32 %and.i9 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool7.not.i = icmp eq i32 %and.i9, 0
  br i1 %tobool7.not.i, label %if.else6.i.if.end14.i_crit_edge, label %if.then8.i

if.else6.i.if.end14.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rb_left9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rb_left9.i, align 4
  %cmp.i = icmp eq ptr %18, %this.039.i
  %rb_right13.i = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  %rb_left9.sink.i = select i1 %cmp.i, ptr %rb_left9.i, ptr %rb_right13.i
  %19 = ptrtoint ptr %rb_left9.sink.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rb_left9.sink.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.else6.i.if.end14.i_crit_edge
  br i1 %tobool15.not.i, label %if.else18.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %this.039.i, ptr noundef %21, ptr noundef nonnull %erase) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then16.i.if.end21.i_crit_edge

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end.i.i.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %this.039.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %this.039.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %erase, ptr %this.039.i, align 4
  %24 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %rb_right.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %this.039.i, ptr %21, align 4
  br label %if.end21.i

if.else18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %aeb_slab_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aeb_slab_cache.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef %add.ptr.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else18.i, %if.end.i.i.i, %if.then16.i.if.end21.i_crit_edge, %if.else.i.if.end21.i_crit_edge, %while.body.i.if.end21.i_crit_edge
  %this.1.i = phi ptr [ %16, %if.else18.i ], [ %11, %while.body.i.if.end21.i_crit_edge ], [ %13, %if.else.i.if.end21.i_crit_edge ], [ %16, %if.then16.i.if.end21.i_crit_edge ], [ %16, %if.end.i.i.i ]
  %tobool.not.i = icmp eq ptr %this.1.i, null
  br i1 %tobool.not.i, label %if.end21.i.destroy_av.exit_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end21.i.destroy_av.exit_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_av.exit

destroy_av.exit:                                  ; preds = %if.end21.i.destroy_av.exit_crit_edge, %do.end.destroy_av.exit_crit_edge
  tail call void @kfree(ptr noundef %av) #9
  %vols_found = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 11
  %28 = ptrtoint ptr %vols_found to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vols_found, align 8
  %sub = add i32 %29, -1
  store i32 %sub, ptr %vols_found, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubi_early_get_peb(ptr noundef %ubi, ptr noundef %ai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free, align 4
  %cmp.i.not = icmp eq ptr %1, %free
  br i1 %cmp.i.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
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

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_early_get_peb.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_early_get_peb, %if.then7)) #9
          to label %cleanup [label %if.then7], !srcloc !227

if.then7:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %pnum = getelementptr i8, ptr %1, i32 -28
  %16 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pnum, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_early_get_peb.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.18, i32 noundef %15, i32 noundef %17, i32 noundef %19) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %20 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %erase, align 4
  %mean_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 18
  %ec_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  br label %for.cond

for.cond:                                         ; preds = %early_erase_peb.exit.for.cond_crit_edge, %if.end9
  %.pn.in = phi ptr [ %21, %if.end9 ], [ %.pn, %early_erase_peb.exit.for.cond_crit_edge ]
  %aeb.0 = getelementptr i8, ptr %.pn.in, i32 -32
  %22 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn.in, %erase
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %23 = ptrtoint ptr %aeb.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %aeb.0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp24 = icmp eq i32 %24, -1
  br i1 %cmp24, label %if.then25, label %for.body.if.end27_crit_edge

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %mean_ec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mean_ec, align 8
  %27 = ptrtoint ptr %aeb.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %aeb.0, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body.if.end27_crit_edge
  %pnum28 = getelementptr i8, ptr %.pn.in, i32 -28
  %28 = ptrtoint ptr %pnum28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pnum28, align 4
  %30 = ptrtoint ptr %aeb.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aeb.0, align 8
  %add = add i32 %31, 1
  %conv.i91 = sext i32 %add to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %add)
  %cmp.i92 = icmp eq i32 %add, 2147483647
  br i1 %cmp.i92, label %if.then.i, label %if.end8.i.i.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.38, i32 noundef %29, i32 noundef 2147483647) #9
  br label %early_erase_peb.exit

if.end8.i.i.i:                                    ; preds = %if.end27
  %32 = ptrtoint ptr %ec_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ec_hdr_alsize.i, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.early_erase_peb.exit_crit_edge, label %if.end3.i

if.end8.i.i.i.early_erase_peb.exit_crit_edge:     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %early_erase_peb.exit

if.end3.i:                                        ; preds = %if.end8.i.i.i
  %ec5.i = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %ec5.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv.i91, ptr %ec5.i, align 8
  %call6.i = tail call i32 @ubi_io_sync_erase(ptr noundef %ubi, i32 noundef %29, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end3.i.out_free.i_crit_edge, label %if.end10.i

if.end3.i.out_free.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 @ubi_io_write_ec_hdr(ptr noundef %ubi, i32 noundef %29, ptr noundef nonnull %call9.i.i.i) #9
  br label %out_free.i

out_free.i:                                       ; preds = %if.end10.i, %if.end3.i.out_free.i_crit_edge
  %err.0.i = phi i32 [ %call6.i, %if.end3.i.out_free.i_crit_edge ], [ %call11.i, %if.end10.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %early_erase_peb.exit

early_erase_peb.exit:                             ; preds = %out_free.i, %if.end8.i.i.i.early_erase_peb.exit_crit_edge, %if.then.i
  %retval.0.i93 = phi i32 [ -22, %if.then.i ], [ %err.0.i, %out_free.i ], [ -22, %if.end8.i.i.i.early_erase_peb.exit_crit_edge ]
  %tobool31.not = icmp eq i32 %retval.0.i93, 0
  br i1 %tobool31.not, label %if.end33, label %early_erase_peb.exit.for.cond_crit_edge

early_erase_peb.exit.for.cond_crit_edge:          ; preds = %early_erase_peb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end33:                                         ; preds = %early_erase_peb.exit
  %pnum28.le = getelementptr i8, ptr %.pn.in, i32 -28
  %35 = ptrtoint ptr %aeb.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %aeb.0, align 8
  %add35 = add i32 %36, 1
  store i32 %add35, ptr %aeb.0, align 8
  %call.i.i94 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #9
  br i1 %call.i.i94, label %if.end.i.i97, label %if.end33.list_del.exit99_crit_edge

if.end33.list_del.exit99_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit99

if.end.i.i97:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i95 = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i95, align 4
  %39 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i96, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit99

list_del.exit99:                                  ; preds = %if.end.i.i97, %if.end33.list_del.exit99_crit_edge
  %43 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i98 = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i98, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_early_get_peb.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_early_get_peb, %if.then49)) #9
          to label %cleanup [label %if.then49], !srcloc !227

if.then49:                                        ; preds = %list_del.exit99
  call void @__sanitizer_cov_trace_pc() #11
  %45 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i100 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i100 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task51, align 8
  %pid52 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid52, align 8
  %51 = ptrtoint ptr %pnum28.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pnum28.le, align 4
  %53 = ptrtoint ptr %aeb.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aeb.0, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_early_get_peb.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.19, i32 noundef %50, i32 noundef %52, i32 noundef %54) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.20) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then49, %list_del.exit99, %if.then7, %list_del.exit
  %retval.0 = phi ptr [ inttoptr (i32 -28 to ptr), %for.end ], [ %add.ptr, %if.then7 ], [ %aeb.0, %if.then49 ], [ %add.ptr, %list_del.exit ], [ %aeb.0, %list_del.exit99 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_attach(ptr noundef %ubi, i32 noundef %force_scan) local_unnamed_addr #0 align 64 {
entry:
  %ai = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ai) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup69_crit_edge, label %if.end.i

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

if.end.i:                                         ; preds = %entry
  %corr.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %corr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %corr.i, ptr %corr.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %corr.i, ptr %prev.i.i, align 8
  %free.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free.i, ptr %free.i, align 4
  %prev.i17.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free.i, ptr %prev.i17.i, align 8
  %erase.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %erase.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %erase.i, ptr %erase.i, align 4
  %prev.i18.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %erase.i, ptr %prev.i18.i, align 8
  %alien.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %alien.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %alien.i, ptr %alien.i, align 4
  %prev.i19.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %alien.i, ptr %prev.i19.i, align 8
  %fastmap.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %fastmap.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %fastmap.i, ptr %fastmap.i, align 4
  %prev.i20.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i20.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fastmap.i, ptr %prev.i20.i, align 8
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call7.i.i.i, align 8
  %call1.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.39, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %aeb_slab_cache.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 21
  %12 = ptrtoint ptr %aeb_slab_cache.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %aeb_slab_cache.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup69

if.end:                                           ; preds = %if.end.i
  %13 = ptrtoint ptr %ai to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %ai, align 4
  %mtd = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 79
  %14 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mtd, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size, align 8
  %erasesize_shift.i = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %erasesize_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %erasesize_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i108 = icmp eq i32 %19, 0
  br i1 %tobool.not.i108, label %if.end.i109, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom.i = zext i32 %19 to i64
  %shr.i = lshr i64 %17, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  br label %mtd_div_by_eb.exit

if.end.i109:                                      ; preds = %if.end
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %17)
  %cmp172.i = icmp ult i64 %17, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !229

if.then176.i:                                     ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  %conv177.i = trunc i64 %17 to i32
  %div180.i = udiv i32 %conv177.i, %21
  br label %mtd_div_by_eb.exit

if.else182.i:                                     ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %17) #16, !srcloc !232
  %asmresult1.i.i = extractvalue { i64, i64 } %22, 1
  %extract.t297.i = trunc i64 %asmresult1.i.i to i32
  br label %mtd_div_by_eb.exit

mtd_div_by_eb.exit:                               ; preds = %if.else182.i, %if.then176.i, %if.then.i
  %retval.0.i110 = phi i32 [ %conv.i, %if.then.i ], [ %div180.i, %if.then176.i ], [ %extract.t297.i, %if.else182.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %retval.0.i110)
  %cmp = icmp slt i32 %retval.0.i110, 65
  br i1 %cmp, label %if.end4.thread, label %if.end4

if.end4.thread:                                   ; preds = %mtd_div_by_eb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %fm_disabled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 25
  %23 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %fm_disabled, align 4
  br label %if.then6

if.end4:                                          ; preds = %mtd_div_by_eb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_scan)
  %tobool5.not = icmp eq i32 %force_scan, 0
  br i1 %tobool5.not, label %if.else, label %if.end4.if.then6_crit_edge

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.end4.thread
  %call7 = tail call fastcc i32 @scan_all(ptr noundef %ubi, ptr noundef nonnull %call7.i.i.i, i32 noundef 0)
  br label %if.end24

if.else:                                          ; preds = %if.end4
  %call8 = call fastcc i32 @scan_fast(ptr noundef %ubi, ptr noundef nonnull %ai)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call8)
  %cmp.i111.not = icmp eq i32 %call8, -74
  br i1 %cmp.i111.not, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp13.not = icmp eq i32 %call8, 1
  br i1 %cmp13.not, label %if.else20, label %if.then12.if.then14_crit_edge

if.then12.if.then14_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %if.then12.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge
  %24 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ai, align 4
  tail call fastcc void @destroy_ai(ptr noundef %25)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not.i114 = icmp eq ptr %call7.i.i.i113, null
  br i1 %tobool.not.i114, label %if.then14.cleanup69_crit_edge, label %if.end.i128

if.then14.cleanup69_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

if.end.i128:                                      ; preds = %if.then14
  %corr.i115 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 1
  %27 = ptrtoint ptr %corr.i115 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %corr.i115, ptr %corr.i115, align 4
  %prev.i.i116 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i116 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %corr.i115, ptr %prev.i.i116, align 8
  %free.i117 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 2
  %29 = ptrtoint ptr %free.i117 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %free.i117, ptr %free.i117, align 4
  %prev.i17.i118 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i17.i118 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %free.i117, ptr %prev.i17.i118, align 8
  %erase.i119 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 3
  %31 = ptrtoint ptr %erase.i119 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %erase.i119, ptr %erase.i119, align 4
  %prev.i18.i120 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i18.i120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %erase.i119, ptr %prev.i18.i120, align 8
  %alien.i121 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 4
  %33 = ptrtoint ptr %alien.i121 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %alien.i121, ptr %alien.i121, align 4
  %prev.i19.i122 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev.i19.i122 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %alien.i121, ptr %prev.i19.i122, align 8
  %fastmap.i123 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 5
  %35 = ptrtoint ptr %fastmap.i123 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %fastmap.i123, ptr %fastmap.i123, align 4
  %prev.i20.i124 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %prev.i20.i124 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %fastmap.i123, ptr %prev.i20.i124, align 8
  %37 = ptrtoint ptr %call7.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %call7.i.i.i113, align 8
  %call1.i125 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.39, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %aeb_slab_cache.i126 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i113, i32 0, i32 21
  %38 = ptrtoint ptr %aeb_slab_cache.i126 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i125, ptr %aeb_slab_cache.i126, align 4
  %tobool3.not.i127 = icmp eq ptr %call1.i125, null
  br i1 %tobool3.not.i127, label %if.then4.i129, label %if.end18

if.then4.i129:                                    ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i113) #9
  br label %cleanup69

if.end18:                                         ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ai to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i113, ptr %ai, align 4
  %call19 = tail call fastcc i32 @scan_all(ptr noundef %ubi, ptr noundef nonnull %call7.i.i.i113, i32 noundef 0)
  br label %if.end24

if.else20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ai, align 4
  %call21 = tail call fastcc i32 @scan_all(ptr noundef %ubi, ptr noundef %41, i32 noundef 64)
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.end18, %lor.lhs.false.if.end24_crit_edge, %if.then6
  %err.0 = phi i32 [ %call7, %if.then6 ], [ %call19, %if.end18 ], [ %call21, %if.else20 ], [ %call8, %lor.lhs.false.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool25.not = icmp eq i32 %err.0, 0
  br i1 %tobool25.not, label %if.end27, label %if.end24.out_ai_crit_edge

if.end24.out_ai_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ai

if.end27:                                         ; preds = %if.end24
  %42 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ai, align 4
  %bad_peb_count = getelementptr inbounds %struct.ubi_attach_info, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %bad_peb_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bad_peb_count, align 8
  %bad_peb_count28 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 62
  %46 = ptrtoint ptr %bad_peb_count28 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bad_peb_count28, align 8
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %47 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %peb_count, align 8
  %sub = sub i32 %48, %45
  %good_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 63
  %49 = ptrtoint ptr %good_peb_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub, ptr %good_peb_count, align 4
  %corr_peb_count = getelementptr inbounds %struct.ubi_attach_info, ptr %43, i32 0, i32 6
  %50 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %corr_peb_count, align 4
  %corr_peb_count30 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 64
  %52 = ptrtoint ptr %corr_peb_count30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %corr_peb_count30, align 8
  %max_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %43, i32 0, i32 16
  %53 = ptrtoint ptr %max_ec to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_ec, align 4
  %max_ec31 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 19
  %55 = ptrtoint ptr %max_ec31 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %max_ec31, align 4
  %mean_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %43, i32 0, i32 18
  %56 = ptrtoint ptr %mean_ec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mean_ec, align 8
  %mean_ec32 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 20
  %58 = ptrtoint ptr %mean_ec32 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %mean_ec32, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_attach.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_attach, %if.then37)) #9
          to label %do.end [label %if.then37], !srcloc !227

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %59 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pid, align 8
  %max_sqnum = getelementptr inbounds %struct.ubi_attach_info, ptr %43, i32 0, i32 17
  %65 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %max_sqnum, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_attach.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.22, i32 noundef %64, i64 noundef %66) #9
  br label %do.end

do.end:                                           ; preds = %if.then37, %if.end27
  %call40 = tail call i32 @ubi_read_volume_table(ptr noundef %ubi, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %do.end.out_ai_crit_edge

do.end.out_ai_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ai

if.end43:                                         ; preds = %do.end
  %call44 = tail call i32 @ubi_wl_init(ptr noundef %ubi, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.out_vtbl_crit_edge

if.end43.out_vtbl_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vtbl

if.end47:                                         ; preds = %if.end43
  %call48 = tail call i32 @ubi_eba_init(ptr noundef %ubi, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_wl_crit_edge

if.end47.out_wl_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wl

if.end51:                                         ; preds = %if.end47
  %fm = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 26
  %67 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fm, align 8
  %tobool52.not = icmp eq ptr %68, null
  br i1 %tobool52.not, label %if.end51.if.end68_crit_edge, label %land.lhs.true

if.end51.if.end68_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end51
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %69 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %70 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool54.not = icmp eq i8 %70, 0
  br i1 %tobool54.not, label %land.lhs.true.if.end68_crit_edge, label %if.then55

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then55:                                        ; preds = %land.lhs.true
  %call56 = tail call fastcc ptr @alloc_ai()
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then55.out_wl_crit_edge, label %if.end59

if.then55.out_wl_crit_edge:                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wl

if.end59:                                         ; preds = %if.then55
  %call60 = tail call fastcc i32 @scan_all(ptr noundef %ubi, ptr noundef nonnull %call56, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @destroy_ai(ptr noundef nonnull %call56)
  br label %out_wl

if.end63:                                         ; preds = %if.end59
  %call64 = tail call i32 @self_check_eba(ptr noundef %ubi, ptr noundef %43, ptr noundef nonnull %call56) #9
  tail call fastcc void @destroy_ai(ptr noundef nonnull %call56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.end63.out_wl_crit_edge

if.end63.out_wl_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wl

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end68:                                         ; preds = %if.end63.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end51.if.end68_crit_edge
  tail call fastcc void @destroy_ai(ptr noundef %43)
  br label %cleanup69

out_wl:                                           ; preds = %if.end63.out_wl_crit_edge, %if.then62, %if.then55.out_wl_crit_edge, %if.end47.out_wl_crit_edge
  %err.2 = phi i32 [ %call48, %if.end47.out_wl_crit_edge ], [ %call64, %if.end63.out_wl_crit_edge ], [ -12, %if.then55.out_wl_crit_edge ], [ %call60, %if.then62 ]
  tail call void @ubi_wl_close(ptr noundef %ubi) #9
  br label %out_vtbl

out_vtbl:                                         ; preds = %out_wl, %if.end43.out_vtbl_crit_edge
  %err.3 = phi i32 [ %call44, %if.end43.out_vtbl_crit_edge ], [ %err.2, %out_wl ]
  tail call void @ubi_free_all_volumes(ptr noundef %ubi) #9
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %71 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vtbl, align 4
  tail call void @vfree(ptr noundef %72) #9
  br label %out_ai

out_ai:                                           ; preds = %out_vtbl, %do.end.out_ai_crit_edge, %if.end24.out_ai_crit_edge
  %err.4 = phi i32 [ %err.0, %if.end24.out_ai_crit_edge ], [ %call40, %do.end.out_ai_crit_edge ], [ %err.3, %out_vtbl ]
  %73 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ai, align 4
  tail call fastcc void @destroy_ai(ptr noundef %74)
  br label %cleanup69

cleanup69:                                        ; preds = %out_ai, %if.end68, %if.then4.i129, %if.then14.cleanup69_crit_edge, %if.then4.i, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ %err.4, %out_ai ], [ 0, %if.end68 ], [ -12, %entry.cleanup69_crit_edge ], [ -12, %if.then4.i ], [ -12, %if.then14.cleanup69_crit_edge ], [ -12, %if.then4.i129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ai) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_ai() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %corr = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %corr to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %corr, ptr %corr, align 4
  %prev.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %corr, ptr %prev.i, align 8
  %free = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free, ptr %free, align 4
  %prev.i17 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free, ptr %prev.i17, align 8
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %erase to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %erase, ptr %erase, align 4
  %prev.i18 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %erase, ptr %prev.i18, align 8
  %alien = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %alien to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %alien, ptr %alien, align 4
  %prev.i19 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %alien, ptr %prev.i19, align 8
  %fastmap = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %fastmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %fastmap, ptr %fastmap, align 4
  %prev.i20 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fastmap, ptr %prev.i20, align 8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call7.i.i, align 8
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.39, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %aeb_slab_cache = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i, i32 0, i32 21
  %12 = ptrtoint ptr %aeb_slab_cache to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %aeb_slab_cache, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ null, %if.then4 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_all(ptr noundef %ubi, ptr noundef %ai, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %0 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ec_hdr_alsize, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #13
  %ech = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 22
  %2 = ptrtoint ptr %ech to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %ech, align 8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.ubi_alloc_vid_buf.exit.thread_crit_edge, label %if.end.i

if.end.ubi_alloc_vid_buf.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubi_alloc_vid_buf.exit.thread

if.end.i:                                         ; preds = %if.end
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %4 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i255 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #13
  %tobool2.not.i = icmp eq ptr %call9.i.i255, null
  br i1 %tobool2.not.i, label %if.then3.i, label %ubi_alloc_vid_buf.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %ubi_alloc_vid_buf.exit.thread

ubi_alloc_vid_buf.exit.thread:                    ; preds = %if.then3.i, %if.end.ubi_alloc_vid_buf.exit.thread_crit_edge
  %vidb288 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 23
  %6 = ptrtoint ptr %vidb288 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vidb288, align 4
  br label %cleanup.sink.split

ubi_alloc_vid_buf.exit:                           ; preds = %if.end.i
  %7 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vid_hdr_alsize.i, align 4
  %9 = call ptr @memset(ptr %call9.i.i255, i32 0, i32 %8)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i255, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %11 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i255, i32 %12
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %vidb = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 23
  %14 = ptrtoint ptr %vidb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %vidb, align 4
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %15 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %start)
  %cmp479 = icmp sgt i32 %16, %start
  br i1 %cmp479, label %ubi_alloc_vid_buf.exit.for.body_crit_edge, label %ubi_alloc_vid_buf.exit.for.end_crit_edge

ubi_alloc_vid_buf.exit.for.end_crit_edge:         ; preds = %ubi_alloc_vid_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ubi_alloc_vid_buf.exit.for.body_crit_edge:        ; preds = %ubi_alloc_vid_buf.exit
  br label %for.body

for.cond:                                         ; preds = %do.end
  %inc = add nsw i32 %pnum.0480, 1
  %17 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %peb_count, align 8
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %ubi_alloc_vid_buf.exit.for.body_crit_edge
  %pnum.0480 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %start, %ubi_alloc_vid_buf.exit.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1393, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_all.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_all, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !227

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_all.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.41, i32 noundef %24, i32 noundef %pnum.0480) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %for.body
  %call16 = tail call fastcc i32 @scan_peb(ptr noundef %ubi, ptr noundef %ai, i32 noundef %pnum.0480, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end.out_vidh_crit_edge, label %for.cond

do.end.out_vidh_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vidh

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %ubi_alloc_vid_buf.exit.for.end_crit_edge
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.42) #9
  %ec_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 20
  %25 = ptrtoint ptr %ec_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ec_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not = icmp eq i32 %26, 0
  br i1 %tobool20.not, label %for.end.if.end24_crit_edge, label %if.then21

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %for.end
  %ec_sum = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 19
  %27 = ptrtoint ptr %ec_sum to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ec_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %28)
  %cmp164.i.i = icmp ult i64 %28, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !229

if.then168.i.i:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %28 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %26
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %28) #16, !srcloc !232
  %asmresult1.i.i.i = extractvalue { i64, i64 } %29, 1
  %extract.t301 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t301, %if.else174.i.i ]
  %mean_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 18
  %30 = ptrtoint ptr %mean_ec to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dividend.addr.0.i.i.off0, ptr %mean_ec, align 8
  br label %if.end24

if.end24:                                         ; preds = %div_u64.exit, %for.end.if.end24_crit_edge
  %31 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %peb_count, align 8
  %bad_peb_count.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 9
  %33 = ptrtoint ptr %bad_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bad_peb_count.i, align 8
  %alien_peb_count.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 8
  %35 = ptrtoint ptr %alien_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %alien_peb_count.i, align 4
  %37 = add i32 %34, %36
  %sub2.i = sub i32 %32, %37
  %div.i = sdiv i32 %sub2.i, 20
  %sub2.off.i = add i32 %sub2.i, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub2.off.i)
  %38 = icmp ult i32 %sub2.off.i, 39
  %div..i = select i1 %38, i32 8, i32 %div.i
  %corr_peb_count.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 6
  %39 = ptrtoint ptr %corr_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %corr_peb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool3.not.i = icmp eq i32 %40, 0
  br i1 %tobool3.not.i, label %if.end24.if.end25.i_crit_edge, label %if.then.i

if.end24.if.end25.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then.i:                                        ; preds = %if.end24
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.65, i32 noundef %40) #9
  %call.i261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #15
  %corr.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 1
  %41 = ptrtoint ptr %corr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn55.i = load ptr, ptr %corr.i, align 4
  %cmp.not56.i = icmp eq ptr %.pn55.i, %corr.i
  br i1 %cmp.not56.i, label %if.then.i.do.end19.i_crit_edge, label %if.then.i.do.end9.i_crit_edge

if.then.i.do.end9.i_crit_edge:                    ; preds = %if.then.i
  br label %do.end9.i

if.then.i.do.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

do.end9.i:                                        ; preds = %do.end9.i.do.end9.i_crit_edge, %if.then.i.do.end9.i_crit_edge
  %.pn57.i = phi ptr [ %.pn.i, %do.end9.i.do.end9.i_crit_edge ], [ %.pn55.i, %if.then.i.do.end9.i_crit_edge ]
  %pnum.i = getelementptr i8, ptr %.pn57.i, i32 -28
  %42 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pnum.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %43) #15
  %44 = ptrtoint ptr %.pn57.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn57.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %corr.i
  br i1 %cmp.not.i, label %do.end9.i.do.end19.i_crit_edge, label %do.end9.i.do.end9.i_crit_edge

do.end9.i.do.end9.i_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

do.end9.i.do.end19.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end9.i.do.end19.i_crit_edge, %if.then.i.do.end19.i_crit_edge
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #15
  %45 = ptrtoint ptr %corr_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %corr_peb_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %div..i)
  %cmp23.not.i = icmp slt i32 %46, %div..i
  br i1 %cmp23.not.i, label %do.end19.i.if.end25.i_crit_edge, label %if.then24.i

do.end19.i.if.end25.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then24.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.74) #9
  br label %out_vidh

if.end25.i:                                       ; preds = %do.end19.i.if.end25.i_crit_edge, %if.end24.if.end25.i_crit_edge
  %empty_peb_count.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 7
  %47 = ptrtoint ptr %empty_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %empty_peb_count.i, align 8
  %maybe_bad_peb_count.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 10
  %49 = ptrtoint ptr %maybe_bad_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %maybe_bad_peb_count.i, align 4
  %add.i = add i32 %50, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub2.i)
  %cmp26.i = icmp eq i32 %add.i, %sub2.i
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.if.end28_crit_edge

if.end25.i.if.end28_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp29.i = icmp slt i32 %50, 3
  br i1 %cmp29.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_empty.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 13
  %51 = ptrtoint ptr %is_empty.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %is_empty.i, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.75) #9
  %image_seq.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 8
  tail call void @get_random_bytes(ptr noundef %image_seq.i, i32 noundef 4) #9
  br label %if.end28

if.else.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.76) #9
  br label %out_vidh

if.end28:                                         ; preds = %if.then30.i, %if.end25.i.if.end28_crit_edge
  %call29 = tail call ptr @rb_first(ptr noundef %ai) #9
  %tobool33.not485 = icmp eq ptr %call29, null
  br i1 %tobool33.not485, label %if.end28.for.end74_crit_edge, label %for.body34.lr.ph

if.end28.for.end74_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end74

for.body34.lr.ph:                                 ; preds = %if.end28
  %mean_ec50 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 18
  br label %for.body34

for.body34:                                       ; preds = %for.inc64.for.body34_crit_edge, %for.body34.lr.ph
  %rb1.0487 = phi ptr [ %call29, %for.body34.lr.ph ], [ %call65, %for.inc64.for.body34_crit_edge ]
  %root = getelementptr i8, ptr %rb1.0487, i32 12
  %call35 = tail call ptr @rb_first(ptr noundef %root) #9
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %for.body34.for.inc64_crit_edge, label %for.body34.for.body46_crit_edge

for.body34.for.body46_crit_edge:                  ; preds = %for.body34
  br label %for.body46

for.body34.for.inc64_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc64

for.body46:                                       ; preds = %for.inc53.for.body46_crit_edge, %for.body34.for.body46_crit_edge
  %rb2.0484 = phi ptr [ %call54, %for.inc53.for.body46_crit_edge ], [ %call35, %for.body34.for.body46_crit_edge ]
  %aeb.0483 = getelementptr i8, ptr %rb2.0484, i32 -32
  %52 = ptrtoint ptr %aeb.0483 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %aeb.0483, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp47 = icmp eq i32 %53, -1
  br i1 %cmp47, label %if.then49, label %for.body46.for.inc53_crit_edge

for.body46.for.inc53_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc53

if.then49:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %mean_ec50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mean_ec50, align 8
  %56 = ptrtoint ptr %aeb.0483 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %aeb.0483, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %if.then49, %for.body46.for.inc53_crit_edge
  %call54 = tail call ptr @rb_next(ptr noundef nonnull %rb2.0484) #9
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %for.inc53.for.inc64_crit_edge, label %for.inc53.for.body46_crit_edge

for.inc53.for.body46_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46

for.inc53.for.inc64_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc64

for.inc64:                                        ; preds = %for.inc53.for.inc64_crit_edge, %for.body34.for.inc64_crit_edge
  %call65 = tail call ptr @rb_next(ptr noundef nonnull %rb1.0487) #9
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %for.inc64.for.end74_crit_edge, label %for.inc64.for.body34_crit_edge

for.inc64.for.body34_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.inc64.for.end74_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end74

for.end74:                                        ; preds = %for.inc64.for.end74_crit_edge, %if.end28.for.end74_crit_edge
  %free = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  %57 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn488 = load ptr, ptr %free, align 4
  %cmp80.not490 = icmp eq ptr %.pn488, %free
  br i1 %cmp80.not490, label %for.end74.for.end98_crit_edge, label %for.body84.lr.ph

for.end74.for.end98_crit_edge:                    ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end98

for.body84.lr.ph:                                 ; preds = %for.end74
  %mean_ec89 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 18
  br label %for.body84

for.body84:                                       ; preds = %for.inc92.for.body84_crit_edge, %for.body84.lr.ph
  %.pn491 = phi ptr [ %.pn488, %for.body84.lr.ph ], [ %.pn, %for.inc92.for.body84_crit_edge ]
  %aeb.1492 = getelementptr i8, ptr %.pn491, i32 -32
  %58 = ptrtoint ptr %aeb.1492 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %aeb.1492, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp86 = icmp eq i32 %59, -1
  br i1 %cmp86, label %if.then88, label %for.body84.for.inc92_crit_edge

for.body84.for.inc92_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92

if.then88:                                        ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %mean_ec89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mean_ec89, align 8
  %62 = ptrtoint ptr %aeb.1492 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %aeb.1492, align 8
  br label %for.inc92

for.inc92:                                        ; preds = %if.then88, %for.body84.for.inc92_crit_edge
  %63 = ptrtoint ptr %.pn491 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load ptr, ptr %.pn491, align 4
  %cmp80.not = icmp eq ptr %.pn, %free
  br i1 %cmp80.not, label %for.inc92.for.end98_crit_edge, label %for.inc92.for.body84_crit_edge

for.inc92.for.body84_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body84

for.inc92.for.end98_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end98

for.end98:                                        ; preds = %for.inc92.for.end98_crit_edge, %for.end74.for.end98_crit_edge
  %corr = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 1
  %64 = ptrtoint ptr %corr to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn225493 = load ptr, ptr %corr, align 4
  %cmp106.not495 = icmp eq ptr %.pn225493, %corr
  br i1 %cmp106.not495, label %for.end98.for.end124_crit_edge, label %for.body110.lr.ph

for.end98.for.end124_crit_edge:                   ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end124

for.body110.lr.ph:                                ; preds = %for.end98
  %mean_ec115 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 18
  br label %for.body110

for.body110:                                      ; preds = %for.inc118.for.body110_crit_edge, %for.body110.lr.ph
  %.pn225496 = phi ptr [ %.pn225493, %for.body110.lr.ph ], [ %.pn225, %for.inc118.for.body110_crit_edge ]
  %aeb.2497 = getelementptr i8, ptr %.pn225496, i32 -32
  %65 = ptrtoint ptr %aeb.2497 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %aeb.2497, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp112 = icmp eq i32 %66, -1
  br i1 %cmp112, label %if.then114, label %for.body110.for.inc118_crit_edge

for.body110.for.inc118_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118

if.then114:                                       ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %mean_ec115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mean_ec115, align 8
  %69 = ptrtoint ptr %aeb.2497 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %aeb.2497, align 8
  br label %for.inc118

for.inc118:                                       ; preds = %if.then114, %for.body110.for.inc118_crit_edge
  %70 = ptrtoint ptr %.pn225496 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn225 = load ptr, ptr %.pn225496, align 4
  %cmp106.not = icmp eq ptr %.pn225, %corr
  br i1 %cmp106.not, label %for.inc118.for.end124_crit_edge, label %for.inc118.for.body110_crit_edge

for.inc118.for.body110_crit_edge:                 ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

for.inc118.for.end124_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end124

for.end124:                                       ; preds = %for.inc118.for.end124_crit_edge, %for.end98.for.end124_crit_edge
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %71 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn226498 = load ptr, ptr %erase, align 4
  %cmp132.not500 = icmp eq ptr %.pn226498, %erase
  br i1 %cmp132.not500, label %for.end124.for.end150_crit_edge, label %for.body136.lr.ph

for.end124.for.end150_crit_edge:                  ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

for.body136.lr.ph:                                ; preds = %for.end124
  %mean_ec141 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 18
  br label %for.body136

for.body136:                                      ; preds = %for.inc144.for.body136_crit_edge, %for.body136.lr.ph
  %.pn226501 = phi ptr [ %.pn226498, %for.body136.lr.ph ], [ %.pn226, %for.inc144.for.body136_crit_edge ]
  %aeb.3502 = getelementptr i8, ptr %.pn226501, i32 -32
  %72 = ptrtoint ptr %aeb.3502 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %aeb.3502, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp138 = icmp eq i32 %73, -1
  br i1 %cmp138, label %if.then140, label %for.body136.for.inc144_crit_edge

for.body136.for.inc144_crit_edge:                 ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc144

if.then140:                                       ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %mean_ec141 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mean_ec141, align 8
  %76 = ptrtoint ptr %aeb.3502 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %aeb.3502, align 8
  br label %for.inc144

for.inc144:                                       ; preds = %if.then140, %for.body136.for.inc144_crit_edge
  %77 = ptrtoint ptr %.pn226501 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn226 = load ptr, ptr %.pn226501, align 4
  %cmp132.not = icmp eq ptr %.pn226, %erase
  br i1 %cmp132.not, label %for.inc144.for.end150_crit_edge, label %for.inc144.for.body136_crit_edge

for.inc144.for.body136_crit_edge:                 ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body136

for.inc144.for.end150_crit_edge:                  ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

for.end150:                                       ; preds = %for.inc144.for.end150_crit_edge, %for.end124.for.end150_crit_edge
  %78 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vidb, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %82 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i263 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i263, label %for.end150.if.end154_crit_edge, label %if.end.i264

for.end150.if.end154_crit_edge:                   ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

if.end.i264:                                      ; preds = %for.end150
  %call3.i = tail call ptr @rb_first(ptr noundef %ai) #9
  %tobool5.not867.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not867.i, label %if.end.i264.for.end135.i_crit_edge, label %for.body.lr.ph.i

if.end.i264.for.end135.i_crit_edge:               ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end135.i

for.body.lr.ph.i:                                 ; preds = %if.end.i264
  %is_empty.i265 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 13
  %highest_vol_id.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 12
  %leb_size.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %min_ec.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 15
  %max_ec.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc125.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %vols_found.0870.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i266, %for.inc125.i.for.body.i_crit_edge ]
  %rb1.0869.i = phi ptr [ %call3.i, %for.body.lr.ph.i ], [ %call126.i, %for.inc125.i.for.body.i_crit_edge ]
  %av.0868.i = getelementptr i8, ptr %rb1.0869.i, i32 -32
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1677, i32 noundef 0) #9
  %call.i.i = tail call i32 @__cond_resched() #9
  %add.i266 = add i32 %vols_found.0870.i, 1
  %83 = ptrtoint ptr %is_empty.i265 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %is_empty.i265, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool8.not.i = icmp eq i32 %84, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.77) #9
  br label %bad_av.i

if.end10.i:                                       ; preds = %for.body.i
  %85 = ptrtoint ptr %av.0868.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %av.0868.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i = icmp slt i32 %86, 0
  br i1 %cmp.i, label %if.end10.i.if.then23.i_crit_edge, label %lor.lhs.false.i

if.end10.i.if.then23.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %highest_lnum.i = getelementptr i8, ptr %rb1.0869.i, i32 -28
  %87 = ptrtoint ptr %highest_lnum.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %highest_lnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp11.i = icmp slt i32 %88, 0
  br i1 %cmp11.i, label %lor.lhs.false.i.if.then23.i_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.if.then23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %leb_count13.i = getelementptr i8, ptr %rb1.0869.i, i32 -24
  %89 = ptrtoint ptr %leb_count13.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %leb_count13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp14.i = icmp slt i32 %90, 0
  br i1 %cmp14.i, label %lor.lhs.false12.i.if.then23.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false12.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false12.i
  %vol_type.i = getelementptr i8, ptr %rb1.0869.i, i32 -20
  %91 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vol_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp16.i = icmp slt i32 %92, 0
  br i1 %cmp16.i, label %lor.lhs.false15.i.if.then23.i_crit_edge, label %lor.lhs.false17.i

lor.lhs.false15.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false15.i
  %used_ebs.i = getelementptr i8, ptr %rb1.0869.i, i32 -16
  %93 = ptrtoint ptr %used_ebs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %used_ebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp18.i = icmp slt i32 %94, 0
  br i1 %cmp18.i, label %lor.lhs.false17.i.if.then23.i_crit_edge, label %lor.lhs.false19.i

lor.lhs.false17.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false17.i
  %data_pad.i = getelementptr i8, ptr %rb1.0869.i, i32 -8
  %95 = ptrtoint ptr %data_pad.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp20.i = icmp slt i32 %96, 0
  br i1 %cmp20.i, label %lor.lhs.false19.i.if.then23.i_crit_edge, label %lor.lhs.false21.i

lor.lhs.false19.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false19.i
  %last_data_size.i = getelementptr i8, ptr %rb1.0869.i, i32 -12
  %97 = ptrtoint ptr %last_data_size.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %last_data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp22.i = icmp slt i32 %98, 0
  br i1 %cmp22.i, label %lor.lhs.false21.i.if.then23.i_crit_edge, label %if.end24.i

lor.lhs.false21.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

if.then23.i:                                      ; preds = %lor.lhs.false21.i.if.then23.i_crit_edge, %lor.lhs.false19.i.if.then23.i_crit_edge, %lor.lhs.false17.i.if.then23.i_crit_edge, %lor.lhs.false15.i.if.then23.i_crit_edge, %lor.lhs.false12.i.if.then23.i_crit_edge, %lor.lhs.false.i.if.then23.i_crit_edge, %if.end10.i.if.then23.i_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.78) #9
  br label %bad_av.i

if.end24.i:                                       ; preds = %lor.lhs.false21.i
  %99 = add nsw i32 %86, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479423, i32 %99)
  %100 = icmp ult i32 %99, 2147479423
  br i1 %100, label %if.then29.i, label %if.end30.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.79) #9
  br label %bad_av.i

if.end30.i:                                       ; preds = %if.end24.i
  %101 = ptrtoint ptr %highest_vol_id.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %highest_vol_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %102)
  %cmp32.i = icmp sgt i32 %86, %102
  br i1 %cmp32.i, label %cleanup.i, label %if.end36.i

if.end36.i:                                       ; preds = %if.end30.i
  %.off.i = add nsw i32 %92, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end43.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.81) #9
  br label %bad_av.i

if.end43.i:                                       ; preds = %if.end36.i
  %103 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %leb_size.i, align 8
  %div.i267 = sdiv i32 %104, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %div.i267)
  %cmp45.i = icmp sgt i32 %96, %div.i267
  br i1 %cmp45.i, label %if.then46.i, label %if.end47.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.82) #9
  br label %bad_av.i

if.end47.i:                                       ; preds = %if.end43.i
  %root.i = getelementptr i8, ptr %rb1.0869.i, i32 12
  %call48.i = tail call ptr @rb_first(ptr noundef %root.i) #9
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %for.end.thread.i, label %if.end47.i.for.body59.i_crit_edge

if.end47.i.for.body59.i_crit_edge:                ; preds = %if.end47.i
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.inc.i.for.body59.i_crit_edge, %if.end47.i.for.body59.i_crit_edge
  %rb2.0865.i = phi ptr [ %call104.i, %for.inc.i.for.body59.i_crit_edge ], [ %call48.i, %if.end47.i.for.body59.i_crit_edge ]
  %leb_count.0863.i = phi i32 [ %add62.i, %for.inc.i.for.body59.i_crit_edge ], [ 0, %if.end47.i.for.body59.i_crit_edge ]
  %aeb.1864.i = getelementptr i8, ptr %rb2.0865.i, i32 -32
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1718, i32 noundef 0) #9
  %call.i684.i = tail call i32 @__cond_resched() #9
  %add62.i = add i32 %leb_count.0863.i, 1
  %pnum63.i = getelementptr i8, ptr %rb2.0865.i, i32 -28
  %105 = ptrtoint ptr %pnum63.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pnum63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp64.i = icmp slt i32 %106, 0
  br i1 %cmp64.i, label %for.body59.i.if.then67.i_crit_edge, label %lor.lhs.false65.i

for.body59.i.if.then67.i_crit_edge:               ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

lor.lhs.false65.i:                                ; preds = %for.body59.i
  %107 = ptrtoint ptr %aeb.1864.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %aeb.1864.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp66.i = icmp slt i32 %108, 0
  br i1 %cmp66.i, label %lor.lhs.false65.i.if.then67.i_crit_edge, label %if.end68.i

lor.lhs.false65.i.if.then67.i_crit_edge:          ; preds = %lor.lhs.false65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

if.then67.i:                                      ; preds = %lor.lhs.false65.i.if.then67.i_crit_edge, %for.body59.i.if.then67.i_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.78) #9
  br label %bad_aeb.i

if.end68.i:                                       ; preds = %lor.lhs.false65.i
  %109 = ptrtoint ptr %min_ec.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %min_ec.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp70.i = icmp slt i32 %108, %110
  br i1 %cmp70.i, label %if.then71.i, label %if.end74.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.83, i32 noundef %110, i32 noundef %108) #9
  br label %bad_aeb.i

if.end74.i:                                       ; preds = %if.end68.i
  %111 = ptrtoint ptr %max_ec.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_ec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %112)
  %cmp76.i = icmp sgt i32 %108, %112
  br i1 %cmp76.i, label %if.then77.i, label %if.end80.i

if.then77.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.84, i32 noundef %112, i32 noundef %108) #9
  br label %bad_aeb.i

if.end80.i:                                       ; preds = %if.end74.i
  %113 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %114)
  %cmp82.not.i = icmp slt i32 %106, %114
  br i1 %cmp82.not.i, label %if.end86.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.85, i32 noundef %106, i32 noundef %114) #9
  br label %bad_aeb.i

if.end86.i:                                       ; preds = %if.end80.i
  %115 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vol_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %116)
  %cmp88.i = icmp eq i32 %116, 4
  br i1 %cmp88.i, label %if.then89.i, label %if.else.i268

if.then89.i:                                      ; preds = %if.end86.i
  %lnum.i = getelementptr i8, ptr %rb2.0865.i, i32 -20
  %117 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %lnum.i, align 4
  %119 = ptrtoint ptr %used_ebs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %used_ebs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp91.not.i = icmp slt i32 %118, %120
  br i1 %cmp91.not.i, label %if.then89.i.if.end98.i_crit_edge, label %if.then92.i

if.then89.i.if.end98.i_crit_edge:                 ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.then92.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.86) #9
  br label %bad_aeb.i

if.else.i268:                                     ; preds = %if.end86.i
  %121 = ptrtoint ptr %used_ebs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %used_ebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp95.not.i = icmp eq i32 %122, 0
  br i1 %cmp95.not.i, label %if.else.i268.if.end98.i_crit_edge, label %if.then96.i

if.else.i268.if.end98.i_crit_edge:                ; preds = %if.else.i268
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.then96.i:                                      ; preds = %if.else.i268
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.87) #9
  br label %bad_aeb.i

if.end98.i:                                       ; preds = %if.else.i268.if.end98.i_crit_edge, %if.then89.i.if.end98.i_crit_edge
  %lnum99.i = getelementptr i8, ptr %rb2.0865.i, i32 -20
  %123 = ptrtoint ptr %lnum99.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %lnum99.i, align 4
  %125 = ptrtoint ptr %highest_lnum.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %highest_lnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp101.i = icmp sgt i32 %124, %126
  br i1 %cmp101.i, label %if.then102.i, label %for.inc.i

if.then102.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.88) #9
  br label %bad_aeb.i

for.inc.i:                                        ; preds = %if.end98.i
  %call104.i = tail call ptr @rb_next(ptr noundef nonnull %rb2.0865.i) #9
  %tobool105.not.i = icmp eq ptr %call104.i, null
  br i1 %tobool105.not.i, label %for.end.i, label %for.inc.i.for.body59.i_crit_edge

for.inc.i.for.body59.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59.i

for.end.i:                                        ; preds = %for.inc.i
  %lnum99.i.le = getelementptr i8, ptr %rb2.0865.i, i32 -20
  %127 = ptrtoint ptr %leb_count13.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %leb_count13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %add62.i)
  %cmp114.not.i = icmp eq i32 %128, %add62.i
  br i1 %cmp114.not.i, label %if.end116.i, label %for.end.i.if.then115.i_crit_edge

for.end.i.if.then115.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115.i

for.end.thread.i:                                 ; preds = %if.end47.i
  %129 = ptrtoint ptr %leb_count13.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %leb_count13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp114.not1075.i = icmp eq i32 %130, 0
  br i1 %cmp114.not1075.i, label %for.end.thread.i.for.inc125.i_crit_edge, label %for.end.thread.i.if.then115.i_crit_edge

for.end.thread.i.if.then115.i_crit_edge:          ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115.i

for.end.thread.i.for.inc125.i_crit_edge:          ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc125.i

if.then115.i:                                     ; preds = %for.end.thread.i.if.then115.i_crit_edge, %for.end.i.if.then115.i_crit_edge
  %leb_count.0.lcssa1076.i = phi i32 [ 0, %for.end.thread.i.if.then115.i_crit_edge ], [ %add62.i, %for.end.i.if.then115.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.89, i32 noundef %leb_count.0.lcssa1076.i) #9
  br label %bad_av.i

if.end116.i:                                      ; preds = %for.end.i
  %tobool117.not.i = icmp eq ptr %aeb.1864.i, null
  br i1 %tobool117.not.i, label %if.end116.i.for.inc125.i_crit_edge, label %if.end119.i

if.end116.i.for.inc125.i_crit_edge:               ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc125.i

if.end119.i:                                      ; preds = %if.end116.i
  %131 = ptrtoint ptr %lnum99.i.le to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %lnum99.i.le, align 4
  %133 = ptrtoint ptr %highest_lnum.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %highest_lnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp122.not.i = icmp eq i32 %132, %134
  br i1 %cmp122.not.i, label %if.end119.i.for.inc125.i_crit_edge, label %if.then123.i

if.end119.i.for.inc125.i_crit_edge:               ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc125.i

if.then123.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.90) #9
  br label %bad_aeb.i

cleanup.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.80, i32 noundef %102, i32 noundef %86) #9
  br label %out.i

for.inc125.i:                                     ; preds = %if.end119.i.for.inc125.i_crit_edge, %if.end116.i.for.inc125.i_crit_edge, %for.end.thread.i.for.inc125.i_crit_edge
  %call126.i = tail call ptr @rb_next(ptr noundef nonnull %rb1.0869.i) #9
  %tobool127.not.i = icmp eq ptr %call126.i, null
  br i1 %tobool127.not.i, label %for.inc125.i.for.end135.i_crit_edge, label %for.inc125.i.for.body.i_crit_edge

for.inc125.i.for.body.i_crit_edge:                ; preds = %for.inc125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc125.i.for.end135.i_crit_edge:              ; preds = %for.inc125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end135.i

for.end135.i:                                     ; preds = %for.inc125.i.for.end135.i_crit_edge, %if.end.i264.for.end135.i_crit_edge
  %vols_found.0.lcssa.i = phi i32 [ 0, %if.end.i264.for.end135.i_crit_edge ], [ %add.i266, %for.inc125.i.for.end135.i_crit_edge ]
  %vols_found136.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 11
  %135 = ptrtoint ptr %vols_found136.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %vols_found136.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %vols_found.0.lcssa.i, i32 %136)
  %cmp137.not.i = icmp eq i32 %vols_found.0.lcssa.i, %136
  br i1 %cmp137.not.i, label %if.end140.i, label %if.then138.i

if.then138.i:                                     ; preds = %for.end135.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.91, i32 noundef %136, i32 noundef %vols_found.0.lcssa.i) #9
  br label %out.i

if.end140.i:                                      ; preds = %for.end135.i
  %call142.i = tail call ptr @rb_first(ptr noundef %ai) #9
  %tobool152.not877.i = icmp eq ptr %call142.i, null
  br i1 %tobool152.not877.i, label %if.end140.i.if.end8.i.i.i_crit_edge, label %for.body153.lr.ph.i

if.end140.i.if.end8.i.i.i_crit_edge:              ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

for.body153.lr.ph.i:                              ; preds = %if.end140.i
  %vol_type180.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 2
  %sqnum189.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 13
  %vol_id196.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 5
  %compat202.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 4
  %lnum211.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 6
  %used_ebs218.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 9
  %data_pad225.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 10
  %data_size.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %81, i32 0, i32 8
  br label %for.body153.i

for.body153.i:                                    ; preds = %for.inc261.i.for.body153.i_crit_edge, %for.body153.lr.ph.i
  %rb1.1879.i = phi ptr [ %call142.i, %for.body153.lr.ph.i ], [ %call262.i, %for.inc261.i.for.body153.i_crit_edge ]
  %av.1878.i = getelementptr i8, ptr %rb1.1879.i, i32 -32
  %root154.i = getelementptr i8, ptr %rb1.1879.i, i32 12
  %call155.i = tail call ptr @rb_first(ptr noundef %root154.i) #9
  %tobool165.not873.i = icmp eq ptr %call155.i, null
  br i1 %tobool165.not873.i, label %for.body153.i.for.inc261.i_crit_edge, label %for.body166.lr.ph.i

for.body153.i.for.inc261.i_crit_edge:             ; preds = %for.body153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc261.i

for.body166.lr.ph.i:                              ; preds = %for.body153.i
  %vol_type184.i = getelementptr i8, ptr %rb1.1879.i, i32 -20
  %compat.i = getelementptr i8, ptr %rb1.1879.i, i32 -4
  %used_ebs217.i = getelementptr i8, ptr %rb1.1879.i, i32 -16
  %data_pad224.i = getelementptr i8, ptr %rb1.1879.i, i32 -8
  br label %for.body166.i

for.body166.i:                                    ; preds = %for.inc234.i.for.body166.i_crit_edge, %for.body166.lr.ph.i
  %rb2.1875.i = phi ptr [ %call155.i, %for.body166.lr.ph.i ], [ %call235.i, %for.inc234.i.for.body166.i_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1793, i32 noundef 0) #9
  %call.i685.i = tail call i32 @__cond_resched() #9
  %pnum170.i = getelementptr i8, ptr %rb2.1875.i, i32 -28
  %137 = ptrtoint ptr %pnum170.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pnum170.i, align 4
  %call171.i = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %138, ptr noundef %79, i32 noundef 1) #9
  %139 = zext i32 %call171.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call171.i, label %cleanup231.thread702.i [
    i32 0, label %for.body166.i.if.end179.i_crit_edge
    i32 5, label %for.body166.i.if.end179.i_crit_edge1377
  ]

for.body166.i.if.end179.i_crit_edge1377:          ; preds = %for.body166.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179.i

for.body166.i.if.end179.i_crit_edge:              ; preds = %for.body166.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179.i

cleanup231.thread702.i:                           ; preds = %for.body166.i
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.92, i32 noundef %call171.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %cmp176.i = icmp sgt i32 %call171.i, 0
  br i1 %cmp176.i, label %cleanup231.thread702.i.out_vidh_crit_edge, label %self_check_ai.exit

cleanup231.thread702.i.out_vidh_crit_edge:        ; preds = %cleanup231.thread702.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vidh

if.end179.i:                                      ; preds = %for.body166.i.if.end179.i_crit_edge, %for.body166.i.if.end179.i_crit_edge1377
  %140 = ptrtoint ptr %vol_type180.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %vol_type180.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %141)
  %cmp181.i = icmp eq i8 %141, 1
  %cond183.i = select i1 %cmp181.i, i32 3, i32 4
  %142 = ptrtoint ptr %vol_type184.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %vol_type184.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %cond183.i)
  %cmp185.not.i = icmp eq i32 %143, %cond183.i
  br i1 %cmp185.not.i, label %if.end188.i, label %if.then187.i

if.then187.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.81) #9
  br label %bad_vid_hdr.i

if.end188.i:                                      ; preds = %if.end179.i
  %sqnum.i = getelementptr i8, ptr %rb2.1875.i, i32 -8
  %144 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %sqnum.i, align 8
  %146 = ptrtoint ptr %sqnum189.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 8)
  %147 = load i64, ptr %sqnum189.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %145, i64 %147)
  %cmp190.not.i = icmp eq i64 %145, %147
  br i1 %cmp190.not.i, label %if.end194.i, label %if.then192.i

if.then192.i:                                     ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.93, i64 noundef %145) #9
  br label %bad_vid_hdr.i

if.end194.i:                                      ; preds = %if.end188.i
  %148 = ptrtoint ptr %av.1878.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %av.1878.i, align 4
  %150 = ptrtoint ptr %vol_id196.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %vol_id196.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp197.not.i = icmp eq i32 %149, %151
  br i1 %cmp197.not.i, label %if.end201.i, label %if.then199.i

if.then199.i:                                     ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.94, i32 noundef %149) #9
  br label %bad_vid_hdr.i

if.end201.i:                                      ; preds = %if.end194.i
  %152 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %compat.i, align 4
  %154 = ptrtoint ptr %compat202.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %compat202.i, align 1
  %conv203.i = zext i8 %155 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %conv203.i)
  %cmp204.not.i = icmp eq i32 %153, %conv203.i
  br i1 %cmp204.not.i, label %if.end209.i, label %if.then206.i

if.then206.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv203.i.le = zext i8 %155 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.95, i32 noundef %conv203.i.le) #9
  br label %bad_vid_hdr.i

if.end209.i:                                      ; preds = %if.end201.i
  %lnum210.i = getelementptr i8, ptr %rb2.1875.i, i32 -20
  %156 = ptrtoint ptr %lnum210.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %lnum210.i, align 4
  %158 = ptrtoint ptr %lnum211.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %lnum211.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %159)
  %cmp212.not.i = icmp eq i32 %157, %159
  br i1 %cmp212.not.i, label %if.end216.i, label %if.then214.i

if.then214.i:                                     ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.96, i32 noundef %157) #9
  br label %bad_vid_hdr.i

if.end216.i:                                      ; preds = %if.end209.i
  %160 = ptrtoint ptr %used_ebs217.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %used_ebs217.i, align 4
  %162 = ptrtoint ptr %used_ebs218.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %used_ebs218.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %163)
  %cmp219.not.i = icmp eq i32 %161, %163
  br i1 %cmp219.not.i, label %if.end223.i, label %if.then221.i

if.then221.i:                                     ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.97, i32 noundef %161) #9
  br label %bad_vid_hdr.i

if.end223.i:                                      ; preds = %if.end216.i
  %164 = ptrtoint ptr %data_pad224.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %data_pad224.i, align 4
  %166 = ptrtoint ptr %data_pad225.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %data_pad225.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %167)
  %cmp226.not.i = icmp eq i32 %165, %167
  br i1 %cmp226.not.i, label %for.inc234.i, label %if.then228.i

if.then228.i:                                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.98, i32 noundef %165) #9
  br label %bad_vid_hdr.i

for.inc234.i:                                     ; preds = %if.end223.i
  %call235.i = tail call ptr @rb_next(ptr noundef nonnull %rb2.1875.i) #9
  %tobool236.not.i = icmp eq ptr %call235.i, null
  br i1 %tobool236.not.i, label %for.end244.i, label %for.inc234.i.for.body166.i_crit_edge

for.inc234.i.for.body166.i_crit_edge:             ; preds = %for.inc234.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body166.i

for.end244.i:                                     ; preds = %for.inc234.i
  %aeb.3874.i.le = getelementptr i8, ptr %rb2.1875.i, i32 -32
  %tobool245.not.i = icmp eq ptr %aeb.3874.i.le, null
  br i1 %tobool245.not.i, label %for.end244.i.for.inc261.i_crit_edge, label %if.end247.i

for.end244.i.for.inc261.i_crit_edge:              ; preds = %for.end244.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc261.i

if.end247.i:                                      ; preds = %for.end244.i
  %highest_lnum248.i = getelementptr i8, ptr %rb1.1879.i, i32 -28
  %168 = ptrtoint ptr %highest_lnum248.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %highest_lnum248.i, align 4
  %170 = ptrtoint ptr %lnum211.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %lnum211.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp250.not.i = icmp eq i32 %169, %171
  br i1 %cmp250.not.i, label %if.end254.i, label %if.then252.i

if.then252.i:                                     ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.99, i32 noundef %169) #9
  br label %bad_vid_hdr.i

if.end254.i:                                      ; preds = %if.end247.i
  %last_data_size255.i = getelementptr i8, ptr %rb1.1879.i, i32 -12
  %172 = ptrtoint ptr %last_data_size255.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %last_data_size255.i, align 4
  %174 = ptrtoint ptr %data_size.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %data_size.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %175)
  %cmp256.not.i = icmp eq i32 %173, %175
  br i1 %cmp256.not.i, label %if.end254.i.for.inc261.i_crit_edge, label %if.then258.i

if.end254.i.for.inc261.i_crit_edge:               ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc261.i

if.then258.i:                                     ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.100, i32 noundef %173) #9
  br label %bad_vid_hdr.i

for.inc261.i:                                     ; preds = %if.end254.i.for.inc261.i_crit_edge, %for.end244.i.for.inc261.i_crit_edge, %for.body153.i.for.inc261.i_crit_edge
  %call262.i = tail call ptr @rb_next(ptr noundef nonnull %rb1.1879.i) #9
  %tobool263.not.i = icmp eq ptr %call262.i, null
  br i1 %tobool263.not.i, label %for.inc261.i.if.end8.i.i.i_crit_edge, label %for.inc261.i.for.body153.i_crit_edge

for.inc261.i.for.body153.i_crit_edge:             ; preds = %for.inc261.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body153.i

for.inc261.i.if.end8.i.i.i_crit_edge:             ; preds = %for.inc261.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %for.inc261.i.if.end8.i.i.i_crit_edge, %if.end140.i.if.end8.i.i.i_crit_edge
  %176 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %peb_count, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %177, i32 noundef 3520) #13
  %tobool274.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool274.not.i, label %if.end8.i.i.i.out_vidh_crit_edge, label %for.cond277.preheader.i

if.end8.i.i.i.out_vidh_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vidh

for.cond277.preheader.i:                          ; preds = %if.end8.i.i.i
  %178 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp279880.i = icmp sgt i32 %179, 0
  br i1 %cmp279880.i, label %for.cond277.preheader.i.for.body281.i_crit_edge, label %for.cond277.preheader.i.for.end292.i_crit_edge

for.cond277.preheader.i.for.end292.i_crit_edge:   ; preds = %for.cond277.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end292.i

for.cond277.preheader.i.for.body281.i_crit_edge:  ; preds = %for.cond277.preheader.i
  br label %for.body281.i

for.body281.i:                                    ; preds = %for.inc291.i.for.body281.i_crit_edge, %for.cond277.preheader.i.for.body281.i_crit_edge
  %pnum.0881.i = phi i32 [ %inc.i, %for.inc291.i.for.body281.i_crit_edge ], [ 0, %for.cond277.preheader.i.for.body281.i_crit_edge ]
  %call282.i = tail call i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %pnum.0881.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282.i)
  %cmp283.i = icmp slt i32 %call282.i, 0
  br i1 %cmp283.i, label %if.then285.i, label %if.else286.i

if.then285.i:                                     ; preds = %for.body281.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %out_vidh

if.else286.i:                                     ; preds = %for.body281.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282.i)
  %tobool287.not.i = icmp eq i32 %call282.i, 0
  br i1 %tobool287.not.i, label %if.else286.i.for.inc291.i_crit_edge, label %if.then288.i

if.else286.i.for.inc291.i_crit_edge:              ; preds = %if.else286.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc291.i

if.then288.i:                                     ; preds = %if.else286.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %call9.i.i.i, i32 %pnum.0881.i
  %180 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %arrayidx.i, align 1
  br label %for.inc291.i

for.inc291.i:                                     ; preds = %if.then288.i, %if.else286.i.for.inc291.i_crit_edge
  %inc.i = add nuw nsw i32 %pnum.0881.i, 1
  %181 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %peb_count, align 8
  %cmp279.i = icmp slt i32 %inc.i, %182
  br i1 %cmp279.i, label %for.inc291.i.for.body281.i_crit_edge, label %for.inc291.i.for.end292.i_crit_edge

for.inc291.i.for.end292.i_crit_edge:              ; preds = %for.inc291.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end292.i

for.inc291.i.for.body281.i_crit_edge:             ; preds = %for.inc291.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body281.i

for.end292.i:                                     ; preds = %for.inc291.i.for.end292.i_crit_edge, %for.cond277.preheader.i.for.end292.i_crit_edge
  %call294.i = tail call ptr @rb_first(ptr noundef %ai) #9
  %tobool295.not.i = icmp eq ptr %call294.i, null
  br i1 %tobool295.not.i, label %for.end292.i.for.end342.i_crit_edge, label %for.end292.i.for.body305.i_crit_edge

for.end292.i.for.body305.i_crit_edge:             ; preds = %for.end292.i
  br label %for.body305.i

for.end292.i.for.end342.i_crit_edge:              ; preds = %for.end292.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end342.i

for.body305.i:                                    ; preds = %for.inc332.i.for.body305.i_crit_edge, %for.end292.i.for.body305.i_crit_edge
  %rb1.2888.i = phi ptr [ %call333.i, %for.inc332.i.for.body305.i_crit_edge ], [ %call294.i, %for.end292.i.for.body305.i_crit_edge ]
  %root306.i = getelementptr i8, ptr %rb1.2888.i, i32 12
  %call307.i = tail call ptr @rb_first(ptr noundef %root306.i) #9
  %tobool308.not.i = icmp eq ptr %call307.i, null
  br i1 %tobool308.not.i, label %for.body305.i.for.inc332.i_crit_edge, label %for.body305.i.for.body318.i_crit_edge

for.body305.i.for.body318.i_crit_edge:            ; preds = %for.body305.i
  br label %for.body318.i

for.body305.i.for.inc332.i_crit_edge:             ; preds = %for.body305.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc332.i

for.body318.i:                                    ; preds = %for.body318.i.for.body318.i_crit_edge, %for.body305.i.for.body318.i_crit_edge
  %rb2.2885.i = phi ptr [ %call322.i, %for.body318.i.for.body318.i_crit_edge ], [ %call307.i, %for.body305.i.for.body318.i_crit_edge ]
  %pnum319.i = getelementptr i8, ptr %rb2.2885.i, i32 -28
  %183 = ptrtoint ptr %pnum319.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pnum319.i, align 4
  %arrayidx320.i = getelementptr i8, ptr %call9.i.i.i, i32 %184
  %185 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %arrayidx320.i, align 1
  %call322.i = tail call ptr @rb_next(ptr noundef nonnull %rb2.2885.i) #9
  %tobool323.not.i = icmp eq ptr %call322.i, null
  br i1 %tobool323.not.i, label %for.body318.i.for.inc332.i_crit_edge, label %for.body318.i.for.body318.i_crit_edge

for.body318.i.for.body318.i_crit_edge:            ; preds = %for.body318.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body318.i

for.body318.i.for.inc332.i_crit_edge:             ; preds = %for.body318.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc332.i

for.inc332.i:                                     ; preds = %for.body318.i.for.inc332.i_crit_edge, %for.body305.i.for.inc332.i_crit_edge
  %call333.i = tail call ptr @rb_next(ptr noundef nonnull %rb1.2888.i) #9
  %tobool334.not.i = icmp eq ptr %call333.i, null
  br i1 %tobool334.not.i, label %for.inc332.i.for.end342.i_crit_edge, label %for.inc332.i.for.body305.i_crit_edge

for.inc332.i.for.body305.i_crit_edge:             ; preds = %for.inc332.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body305.i

for.inc332.i.for.end342.i_crit_edge:              ; preds = %for.inc332.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end342.i

for.end342.i:                                     ; preds = %for.inc332.i.for.end342.i_crit_edge, %for.end292.i.for.end342.i_crit_edge
  %186 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %186)
  %.pn889.i = load ptr, ptr %free, align 4
  %cmp348.not890.i = icmp eq ptr %.pn889.i, %free
  br i1 %cmp348.not890.i, label %for.end342.i.for.end359.i_crit_edge, label %for.end342.i.for.body350.i_crit_edge

for.end342.i.for.body350.i_crit_edge:             ; preds = %for.end342.i
  br label %for.body350.i

for.end342.i.for.end359.i_crit_edge:              ; preds = %for.end342.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end359.i

for.body350.i:                                    ; preds = %for.body350.i.for.body350.i_crit_edge, %for.end342.i.for.body350.i_crit_edge
  %.pn891.i = phi ptr [ %.pn.i273, %for.body350.i.for.body350.i_crit_edge ], [ %.pn889.i, %for.end342.i.for.body350.i_crit_edge ]
  %pnum351.i = getelementptr i8, ptr %.pn891.i, i32 -28
  %187 = ptrtoint ptr %pnum351.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %pnum351.i, align 4
  %arrayidx352.i = getelementptr i8, ptr %call9.i.i.i, i32 %188
  %189 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %arrayidx352.i, align 1
  %190 = ptrtoint ptr %.pn891.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %.pn.i273 = load ptr, ptr %.pn891.i, align 4
  %cmp348.not.i = icmp eq ptr %.pn.i273, %free
  br i1 %cmp348.not.i, label %for.body350.i.for.end359.i_crit_edge, label %for.body350.i.for.body350.i_crit_edge

for.body350.i.for.body350.i_crit_edge:            ; preds = %for.body350.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body350.i

for.body350.i.for.end359.i_crit_edge:             ; preds = %for.body350.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end359.i

for.end359.i:                                     ; preds = %for.body350.i.for.end359.i_crit_edge, %for.end342.i.for.end359.i_crit_edge
  %191 = ptrtoint ptr %corr to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pn670892.i = load ptr, ptr %corr, align 4
  %cmp367.not893.i = icmp eq ptr %.pn670892.i, %corr
  br i1 %cmp367.not893.i, label %for.end359.i.for.end379.i_crit_edge, label %for.end359.i.for.body370.i_crit_edge

for.end359.i.for.body370.i_crit_edge:             ; preds = %for.end359.i
  br label %for.body370.i

for.end359.i.for.end379.i_crit_edge:              ; preds = %for.end359.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end379.i

for.body370.i:                                    ; preds = %for.body370.i.for.body370.i_crit_edge, %for.end359.i.for.body370.i_crit_edge
  %.pn670894.i = phi ptr [ %.pn670.i, %for.body370.i.for.body370.i_crit_edge ], [ %.pn670892.i, %for.end359.i.for.body370.i_crit_edge ]
  %pnum371.i = getelementptr i8, ptr %.pn670894.i, i32 -28
  %192 = ptrtoint ptr %pnum371.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %pnum371.i, align 4
  %arrayidx372.i = getelementptr i8, ptr %call9.i.i.i, i32 %193
  %194 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %arrayidx372.i, align 1
  %195 = ptrtoint ptr %.pn670894.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pn670.i = load ptr, ptr %.pn670894.i, align 4
  %cmp367.not.i = icmp eq ptr %.pn670.i, %corr
  br i1 %cmp367.not.i, label %for.body370.i.for.end379.i_crit_edge, label %for.body370.i.for.body370.i_crit_edge

for.body370.i.for.body370.i_crit_edge:            ; preds = %for.body370.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body370.i

for.body370.i.for.end379.i_crit_edge:             ; preds = %for.body370.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end379.i

for.end379.i:                                     ; preds = %for.body370.i.for.end379.i_crit_edge, %for.end359.i.for.end379.i_crit_edge
  %196 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %196)
  %.pn671895.i = load ptr, ptr %erase, align 4
  %cmp387.not896.i = icmp eq ptr %.pn671895.i, %erase
  br i1 %cmp387.not896.i, label %for.end379.i.for.end399.i_crit_edge, label %for.end379.i.for.body390.i_crit_edge

for.end379.i.for.body390.i_crit_edge:             ; preds = %for.end379.i
  br label %for.body390.i

for.end379.i.for.end399.i_crit_edge:              ; preds = %for.end379.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end399.i

for.body390.i:                                    ; preds = %for.body390.i.for.body390.i_crit_edge, %for.end379.i.for.body390.i_crit_edge
  %.pn671897.i = phi ptr [ %.pn671.i, %for.body390.i.for.body390.i_crit_edge ], [ %.pn671895.i, %for.end379.i.for.body390.i_crit_edge ]
  %pnum391.i = getelementptr i8, ptr %.pn671897.i, i32 -28
  %197 = ptrtoint ptr %pnum391.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %pnum391.i, align 4
  %arrayidx392.i = getelementptr i8, ptr %call9.i.i.i, i32 %198
  %199 = ptrtoint ptr %arrayidx392.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %arrayidx392.i, align 1
  %200 = ptrtoint ptr %.pn671897.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %.pn671.i = load ptr, ptr %.pn671897.i, align 4
  %cmp387.not.i = icmp eq ptr %.pn671.i, %erase
  br i1 %cmp387.not.i, label %for.body390.i.for.end399.i_crit_edge, label %for.body390.i.for.body390.i_crit_edge

for.body390.i.for.body390.i_crit_edge:            ; preds = %for.body390.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body390.i

for.body390.i.for.end399.i_crit_edge:             ; preds = %for.body390.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end399.i

for.end399.i:                                     ; preds = %for.body390.i.for.end399.i_crit_edge, %for.end379.i.for.end399.i_crit_edge
  %alien.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 4
  %201 = ptrtoint ptr %alien.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %.pn672898.i = load ptr, ptr %alien.i, align 4
  %cmp407.not899.i = icmp eq ptr %.pn672898.i, %alien.i
  br i1 %cmp407.not899.i, label %for.end399.i.for.cond420.preheader.i_crit_edge, label %for.end399.i.for.body410.i_crit_edge

for.end399.i.for.body410.i_crit_edge:             ; preds = %for.end399.i
  br label %for.body410.i

for.end399.i.for.cond420.preheader.i_crit_edge:   ; preds = %for.end399.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond420.preheader.i

for.cond420.preheader.i:                          ; preds = %for.body410.i.for.cond420.preheader.i_crit_edge, %for.end399.i.for.cond420.preheader.i_crit_edge
  %202 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp422901.i = icmp sgt i32 %203, 0
  br i1 %cmp422901.i, label %for.cond420.preheader.i.for.body424.i_crit_edge, label %for.end431.thread.i

for.cond420.preheader.i.for.body424.i_crit_edge:  ; preds = %for.cond420.preheader.i
  br label %for.body424.i

for.end431.thread.i:                              ; preds = %for.cond420.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %if.end154thread-pre-split

for.body410.i:                                    ; preds = %for.body410.i.for.body410.i_crit_edge, %for.end399.i.for.body410.i_crit_edge
  %.pn672900.i = phi ptr [ %.pn672.i, %for.body410.i.for.body410.i_crit_edge ], [ %.pn672898.i, %for.end399.i.for.body410.i_crit_edge ]
  %pnum411.i = getelementptr i8, ptr %.pn672900.i, i32 -28
  %204 = ptrtoint ptr %pnum411.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pnum411.i, align 4
  %arrayidx412.i = getelementptr i8, ptr %call9.i.i.i, i32 %205
  %206 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %arrayidx412.i, align 1
  %207 = ptrtoint ptr %.pn672900.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pn672.i = load ptr, ptr %.pn672900.i, align 4
  %cmp407.not.i = icmp eq ptr %.pn672.i, %alien.i
  br i1 %cmp407.not.i, label %for.body410.i.for.cond420.preheader.i_crit_edge, label %for.body410.i.for.body410.i_crit_edge

for.body410.i.for.body410.i_crit_edge:            ; preds = %for.body410.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body410.i

for.body410.i.for.cond420.preheader.i_crit_edge:  ; preds = %for.body410.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond420.preheader.i

for.body424.i:                                    ; preds = %for.inc429.i.for.body424.i_crit_edge, %for.cond420.preheader.i.for.body424.i_crit_edge
  %pnum.1903.i = phi i32 [ %inc430.i, %for.inc429.i.for.body424.i_crit_edge ], [ 0, %for.cond420.preheader.i.for.body424.i_crit_edge ]
  %err.0902.i = phi i32 [ %err.1.i, %for.inc429.i.for.body424.i_crit_edge ], [ 0, %for.cond420.preheader.i.for.body424.i_crit_edge ]
  %arrayidx425.i = getelementptr i8, ptr %call9.i.i.i, i32 %pnum.1903.i
  %208 = ptrtoint ptr %arrayidx425.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx425.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool426.not.i = icmp eq i8 %209, 0
  br i1 %tobool426.not.i, label %if.then427.i, label %for.body424.i.for.inc429.i_crit_edge

for.body424.i.for.inc429.i_crit_edge:             ; preds = %for.body424.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc429.i

if.then427.i:                                     ; preds = %for.body424.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.101, i32 noundef %pnum.1903.i) #9
  br label %for.inc429.i

for.inc429.i:                                     ; preds = %if.then427.i, %for.body424.i.for.inc429.i_crit_edge
  %err.1.i = phi i32 [ %err.0902.i, %for.body424.i.for.inc429.i_crit_edge ], [ 1, %if.then427.i ]
  %inc430.i = add nuw nsw i32 %pnum.1903.i, 1
  %210 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %peb_count, align 8
  %cmp422.i = icmp slt i32 %inc430.i, %211
  br i1 %cmp422.i, label %for.inc429.i.for.body424.i_crit_edge, label %for.end431.i

for.inc429.i.for.body424.i_crit_edge:             ; preds = %for.inc429.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body424.i

for.end431.i:                                     ; preds = %for.inc429.i
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool432.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool432.not.i, label %for.end431.i.if.end154thread-pre-split_crit_edge, label %for.end431.i.out.i_crit_edge

for.end431.i.out.i_crit_edge:                     ; preds = %for.end431.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

for.end431.i.if.end154thread-pre-split_crit_edge: ; preds = %for.end431.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154thread-pre-split

bad_aeb.i:                                        ; preds = %if.then123.i, %if.then102.i, %if.then96.i, %if.then92.i, %if.then83.i, %if.then77.i, %if.then71.i, %if.then67.i
  %lnum435.i = getelementptr i8, ptr %rb2.0865.i, i32 -20
  %212 = ptrtoint ptr %lnum435.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %lnum435.i, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.102, i32 noundef %213) #9
  tail call void @ubi_dump_aeb(ptr noundef %aeb.1864.i, i32 noundef 0) #9
  tail call void @ubi_dump_av(ptr noundef %av.0868.i) #9
  br label %out.i

bad_av.i:                                         ; preds = %if.then115.i, %if.then46.i, %if.then42.i, %if.then29.i, %if.then23.i, %if.then9.i
  %214 = ptrtoint ptr %av.0868.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %av.0868.i, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.103, i32 noundef %215) #9
  tail call void @ubi_dump_av(ptr noundef %av.0868.i) #9
  br label %out.i

bad_vid_hdr.i:                                    ; preds = %if.then258.i, %if.then252.i, %if.then228.i, %if.then221.i, %if.then214.i, %if.then206.i, %if.then199.i, %if.then192.i, %if.then187.i
  %216 = ptrtoint ptr %av.1878.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %av.1878.i, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.103, i32 noundef %217) #9
  tail call void @ubi_dump_av(ptr noundef %av.1878.i) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %81) #9
  br label %out.i

out.i:                                            ; preds = %bad_vid_hdr.i, %bad_av.i, %bad_aeb.i, %for.end431.i.out.i_crit_edge, %if.then138.i, %cleanup.i
  tail call void @dump_stack() #15
  br label %out_vidh

self_check_ai.exit:                               ; preds = %cleanup231.thread702.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %tobool152.not = icmp eq i32 %call171.i, 0
  br i1 %tobool152.not, label %self_check_ai.exit.if.end154thread-pre-split_crit_edge, label %self_check_ai.exit.out_vidh_crit_edge

self_check_ai.exit.out_vidh_crit_edge:            ; preds = %self_check_ai.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vidh

self_check_ai.exit.if.end154thread-pre-split_crit_edge: ; preds = %self_check_ai.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154thread-pre-split

if.end154thread-pre-split:                        ; preds = %self_check_ai.exit.if.end154thread-pre-split_crit_edge, %for.end431.i.if.end154thread-pre-split_crit_edge, %for.end431.thread.i
  %218 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %218)
  %.pr = load ptr, ptr %vidb, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end154thread-pre-split, %for.end150.if.end154_crit_edge
  %219 = phi ptr [ %.pr, %if.end154thread-pre-split ], [ %79, %for.end150.if.end154_crit_edge ]
  %tobool.not.i275 = icmp eq ptr %219, null
  br i1 %tobool.not.i275, label %if.end154.cleanup.sink.split_crit_edge, label %if.end.i276

if.end154.cleanup.sink.split_crit_edge:           ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i276:                                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %221) #9
  tail call void @kfree(ptr noundef nonnull %219) #9
  br label %cleanup.sink.split

out_vidh:                                         ; preds = %self_check_ai.exit.out_vidh_crit_edge, %out.i, %if.then285.i, %if.end8.i.i.i.out_vidh_crit_edge, %cleanup231.thread702.i.out_vidh_crit_edge, %if.else.i, %if.then24.i, %do.end.out_vidh_crit_edge
  %err.0 = phi i32 [ %call171.i, %self_check_ai.exit.out_vidh_crit_edge ], [ -22, %if.then24.i ], [ -22, %if.else.i ], [ -12, %if.end8.i.i.i.out_vidh_crit_edge ], [ %call282.i, %if.then285.i ], [ -22, %out.i ], [ -5, %cleanup231.thread702.i.out_vidh_crit_edge ], [ %call16, %do.end.out_vidh_crit_edge ]
  %222 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %vidb, align 4
  %tobool.not.i277 = icmp eq ptr %223, null
  br i1 %tobool.not.i277, label %out_vidh.cleanup.sink.split_crit_edge, label %if.end.i279

out_vidh.cleanup.sink.split_crit_edge:            ; preds = %out_vidh
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i279:                                      ; preds = %out_vidh
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i278 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %buffer.i278 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %buffer.i278, align 4
  tail call void @kfree(ptr noundef %225) #9
  tail call void @kfree(ptr noundef nonnull %223) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i279, %out_vidh.cleanup.sink.split_crit_edge, %if.end.i276, %if.end154.cleanup.sink.split_crit_edge, %ubi_alloc_vid_buf.exit.thread
  %retval.0.ph = phi i32 [ 0, %if.end154.cleanup.sink.split_crit_edge ], [ 0, %if.end.i276 ], [ -12, %ubi_alloc_vid_buf.exit.thread ], [ %err.0, %out_vidh.cleanup.sink.split_crit_edge ], [ %err.0, %if.end.i279 ]
  %226 = ptrtoint ptr %ech to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ech, align 8
  tail call void @kfree(ptr noundef %227) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_fast(ptr noundef %ubi, ptr nocapture noundef %ai) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %corr.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %corr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %corr.i, ptr %corr.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %corr.i, ptr %prev.i.i, align 8
  %free.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free.i, ptr %free.i, align 4
  %prev.i17.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free.i, ptr %prev.i17.i, align 8
  %erase.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %erase.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %erase.i, ptr %erase.i, align 4
  %prev.i18.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i18.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %erase.i, ptr %prev.i18.i, align 8
  %alien.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %alien.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %alien.i, ptr %alien.i, align 4
  %prev.i19.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i19.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %alien.i, ptr %prev.i19.i, align 8
  %fastmap.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %fastmap.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %fastmap.i, ptr %fastmap.i, align 4
  %prev.i20.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i20.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fastmap.i, ptr %prev.i20.i, align 8
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call7.i.i.i, align 8
  %call1.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.39, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %aeb_slab_cache.i = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 21
  %12 = ptrtoint ptr %aeb_slab_cache.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %aeb_slab_cache.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end8.i.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end.i
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %13 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ec_hdr_alsize, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #13
  %ech = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 22
  %15 = ptrtoint ptr %ech to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %ech, align 8
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.out_ai_crit_edge, label %if.end5

if.end8.i.i.out_ai_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ai

if.end5:                                          ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i65 = icmp eq ptr %call7.i.i.i64, null
  br i1 %tobool.not.i65, label %if.end5.ubi_alloc_vid_buf.exit.thread_crit_edge, label %if.end.i66

if.end5.ubi_alloc_vid_buf.exit.thread_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubi_alloc_vid_buf.exit.thread

if.end.i66:                                       ; preds = %if.end5
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %17 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i92 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #13
  %tobool2.not.i = icmp eq ptr %call9.i.i92, null
  br i1 %tobool2.not.i, label %if.then3.i, label %ubi_alloc_vid_buf.exit

if.then3.i:                                       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i64) #9
  br label %ubi_alloc_vid_buf.exit.thread

ubi_alloc_vid_buf.exit.thread:                    ; preds = %if.then3.i, %if.end5.ubi_alloc_vid_buf.exit.thread_crit_edge
  %vidb112 = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 23
  %19 = ptrtoint ptr %vidb112 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vidb112, align 4
  br label %out_ech

ubi_alloc_vid_buf.exit:                           ; preds = %if.end.i66
  %20 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vid_hdr_alsize.i, align 4
  %22 = call ptr @memset(ptr %call9.i.i92, i32 0, i32 %21)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i64, i32 0, i32 1
  %23 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i92, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %24 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i92, i32 %25
  %26 = ptrtoint ptr %call7.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i64, align 8
  %vidb = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 23
  %27 = ptrtoint ptr %vidb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i64, ptr %vidb, align 4
  br label %for.body

for.cond:                                         ; preds = %do.end
  %inc = add nuw nsw i32 %pnum.0118, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %ubi_alloc_vid_buf.exit
  %pnum.0118 = phi i32 [ 0, %ubi_alloc_vid_buf.exit ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1507, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_fast.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_fast, %if.then17)) #9
          to label %do.end [label %if.then17], !srcloc !227

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_fast.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.41, i32 noundef %33, i32 noundef %pnum.0118) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %for.body
  %call20 = tail call fastcc i32 @scan_peb(ptr noundef %ubi, ptr noundef nonnull %call7.i.i.i, i32 noundef %pnum.0118, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %out_vidh, label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vidb, align 4
  %tobool.not.i96 = icmp eq ptr %35, null
  br i1 %tobool.not.i96, label %for.end.ubi_free_vid_buf.exit_crit_edge, label %if.end.i97

for.end.ubi_free_vid_buf.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ubi_free_vid_buf.exit

if.end.i97:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %37) #9
  tail call void @kfree(ptr noundef nonnull %35) #9
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.end.i97, %for.end.ubi_free_vid_buf.exit_crit_edge
  %38 = ptrtoint ptr %ech to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ech, align 8
  tail call void @kfree(ptr noundef %39) #9
  %force_full_scan = getelementptr inbounds %struct.ubi_attach_info, ptr %call7.i.i.i, i32 0, i32 14
  %40 = ptrtoint ptr %force_full_scan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %force_full_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool26.not = icmp eq i32 %41, 0
  br i1 %tobool26.not, label %if.end29, label %ubi_free_vid_buf.exit.if.then31_crit_edge

ubi_free_vid_buf.exit.if.then31_crit_edge:        ; preds = %ubi_free_vid_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end29:                                         ; preds = %ubi_free_vid_buf.exit
  %42 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ai, align 4
  %call28 = tail call i32 @ubi_scan_fastmap(ptr noundef %ubi, ptr noundef %43, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.else32, label %if.end29.if.then31_crit_edge

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %ubi_free_vid_buf.exit.if.then31_crit_edge
  %err.0117 = phi i32 [ %call28, %if.end29.if.then31_crit_edge ], [ 1, %ubi_free_vid_buf.exit.if.then31_crit_edge ]
  %44 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ai, align 4
  tail call fastcc void @destroy_ai(ptr noundef %45)
  %46 = ptrtoint ptr %ai to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i.i, ptr %ai, align 4
  br label %cleanup

if.else32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @destroy_ai(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

out_vidh:                                         ; preds = %do.end
  %47 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vidb, align 4
  %tobool.not.i98 = icmp eq ptr %48, null
  br i1 %tobool.not.i98, label %out_vidh.out_ech_crit_edge, label %if.end.i100

out_vidh.out_ech_crit_edge:                       ; preds = %out_vidh
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ech

if.end.i100:                                      ; preds = %out_vidh
  call void @__sanitizer_cov_trace_pc() #11
  %buffer.i99 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %buffer.i99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer.i99, align 4
  tail call void @kfree(ptr noundef %50) #9
  tail call void @kfree(ptr noundef nonnull %48) #9
  br label %out_ech

out_ech:                                          ; preds = %if.end.i100, %out_vidh.out_ech_crit_edge, %ubi_alloc_vid_buf.exit.thread
  %err.1 = phi i32 [ -12, %ubi_alloc_vid_buf.exit.thread ], [ %call20, %out_vidh.out_ech_crit_edge ], [ %call20, %if.end.i100 ]
  %51 = ptrtoint ptr %ech to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ech, align 8
  tail call void @kfree(ptr noundef %52) #9
  br label %out_ai

out_ai:                                           ; preds = %out_ech, %if.end8.i.i.out_ai_crit_edge
  %err.2 = phi i32 [ %err.1, %out_ech ], [ -12, %if.end8.i.i.out_ai_crit_edge ]
  tail call fastcc void @destroy_ai(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out_ai, %if.else32, %if.then31, %if.then4.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else32 ], [ %err.0117, %if.then31 ], [ %err.2, %out_ai ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_ai(ptr noundef %ai) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alien = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 4
  %0 = ptrtoint ptr %alien to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alien, align 4
  %cmp.not222 = icmp eq ptr %1, %alien
  br i1 %cmp.not222, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aeb_slab_cache.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in223 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %aeb.0 = getelementptr i8, ptr %.pn.in223, i32 -32
  %2 = ptrtoint ptr %.pn.in223 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in223, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in223) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in223, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in223 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in223, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in223 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in223, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in223, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %aeb_slab_cache.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aeb_slab_cache.i, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %aeb.0) #9
  %cmp.not = icmp eq ptr %.pn, %alien
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %13 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %erase, align 4
  %cmp25.not225 = icmp eq ptr %14, %erase
  br i1 %cmp25.not225, label %for.end.for.end35_crit_edge, label %for.body27.lr.ph

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.body27.lr.ph:                                 ; preds = %for.end
  %aeb_slab_cache.i200 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  br label %for.body27

for.body27:                                       ; preds = %list_del.exit199.for.body27_crit_edge, %for.body27.lr.ph
  %.pn185.in226 = phi ptr [ %14, %for.body27.lr.ph ], [ %.pn185, %list_del.exit199.for.body27_crit_edge ]
  %aeb.1 = getelementptr i8, ptr %.pn185.in226, i32 -32
  %15 = ptrtoint ptr %.pn185.in226 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn185 = load ptr, ptr %.pn185.in226, align 8
  %call.i.i194 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn185.in226) #9
  br i1 %call.i.i194, label %if.end.i.i197, label %for.body27.list_del.exit199_crit_edge

for.body27.list_del.exit199_crit_edge:            ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit199

if.end.i.i197:                                    ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i195 = getelementptr inbounds %struct.list_head, ptr %.pn185.in226, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i195 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i195, align 4
  %18 = ptrtoint ptr %.pn185.in226 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn185.in226, align 4
  %prev1.i.i.i196 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i196 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i196, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit199

list_del.exit199:                                 ; preds = %if.end.i.i197, %for.body27.list_del.exit199_crit_edge
  %22 = ptrtoint ptr %.pn185.in226 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn185.in226, align 4
  %prev.i198 = getelementptr inbounds %struct.list_head, ptr %.pn185.in226, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i198 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i198, align 4
  %24 = ptrtoint ptr %aeb_slab_cache.i200 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aeb_slab_cache.i200, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef %aeb.1) #9
  %cmp25.not = icmp eq ptr %.pn185, %erase
  br i1 %cmp25.not, label %list_del.exit199.for.end35_crit_edge, label %list_del.exit199.for.body27_crit_edge

list_del.exit199.for.body27_crit_edge:            ; preds = %list_del.exit199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

list_del.exit199.for.end35_crit_edge:             ; preds = %list_del.exit199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.end35:                                        ; preds = %list_del.exit199.for.end35_crit_edge, %for.end.for.end35_crit_edge
  %corr = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 1
  %26 = ptrtoint ptr %corr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %corr, align 4
  %cmp48.not228 = icmp eq ptr %27, %corr
  br i1 %cmp48.not228, label %for.end35.for.end58_crit_edge, label %for.body50.lr.ph

for.end35.for.end58_crit_edge:                    ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

for.body50.lr.ph:                                 ; preds = %for.end35
  %aeb_slab_cache.i207 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  br label %for.body50

for.body50:                                       ; preds = %list_del.exit206.for.body50_crit_edge, %for.body50.lr.ph
  %.pn186.in229 = phi ptr [ %27, %for.body50.lr.ph ], [ %.pn186, %list_del.exit206.for.body50_crit_edge ]
  %aeb.2 = getelementptr i8, ptr %.pn186.in229, i32 -32
  %28 = ptrtoint ptr %.pn186.in229 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn186 = load ptr, ptr %.pn186.in229, align 8
  %call.i.i201 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn186.in229) #9
  br i1 %call.i.i201, label %if.end.i.i204, label %for.body50.list_del.exit206_crit_edge

for.body50.list_del.exit206_crit_edge:            ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit206

if.end.i.i204:                                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i202 = getelementptr inbounds %struct.list_head, ptr %.pn186.in229, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i202 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i202, align 4
  %31 = ptrtoint ptr %.pn186.in229 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn186.in229, align 4
  %prev1.i.i.i203 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i203 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i203, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit206

list_del.exit206:                                 ; preds = %if.end.i.i204, %for.body50.list_del.exit206_crit_edge
  %35 = ptrtoint ptr %.pn186.in229 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn186.in229, align 4
  %prev.i205 = getelementptr inbounds %struct.list_head, ptr %.pn186.in229, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i205 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i205, align 4
  %37 = ptrtoint ptr %aeb_slab_cache.i207 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %aeb_slab_cache.i207, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %aeb.2) #9
  %cmp48.not = icmp eq ptr %.pn186, %corr
  br i1 %cmp48.not, label %list_del.exit206.for.end58_crit_edge, label %list_del.exit206.for.body50_crit_edge

list_del.exit206.for.body50_crit_edge:            ; preds = %list_del.exit206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

list_del.exit206.for.end58_crit_edge:             ; preds = %list_del.exit206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

for.end58:                                        ; preds = %list_del.exit206.for.end58_crit_edge, %for.end35.for.end58_crit_edge
  %free = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  %39 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %free, align 4
  %cmp71.not231 = icmp eq ptr %40, %free
  br i1 %cmp71.not231, label %for.end58.for.end81_crit_edge, label %for.body73.lr.ph

for.end58.for.end81_crit_edge:                    ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end81

for.body73.lr.ph:                                 ; preds = %for.end58
  %aeb_slab_cache.i214 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  br label %for.body73

for.body73:                                       ; preds = %list_del.exit213.for.body73_crit_edge, %for.body73.lr.ph
  %.pn187.in232 = phi ptr [ %40, %for.body73.lr.ph ], [ %.pn187, %list_del.exit213.for.body73_crit_edge ]
  %aeb.3 = getelementptr i8, ptr %.pn187.in232, i32 -32
  %41 = ptrtoint ptr %.pn187.in232 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn187 = load ptr, ptr %.pn187.in232, align 8
  %call.i.i208 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn187.in232) #9
  br i1 %call.i.i208, label %if.end.i.i211, label %for.body73.list_del.exit213_crit_edge

for.body73.list_del.exit213_crit_edge:            ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit213

if.end.i.i211:                                    ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i209 = getelementptr inbounds %struct.list_head, ptr %.pn187.in232, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i209 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i209, align 4
  %44 = ptrtoint ptr %.pn187.in232 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.pn187.in232, align 4
  %prev1.i.i.i210 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i210, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit213

list_del.exit213:                                 ; preds = %if.end.i.i211, %for.body73.list_del.exit213_crit_edge
  %48 = ptrtoint ptr %.pn187.in232 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn187.in232, align 4
  %prev.i212 = getelementptr inbounds %struct.list_head, ptr %.pn187.in232, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i212 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i212, align 4
  %50 = ptrtoint ptr %aeb_slab_cache.i214 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %aeb_slab_cache.i214, align 4
  tail call void @kmem_cache_free(ptr noundef %51, ptr noundef %aeb.3) #9
  %cmp71.not = icmp eq ptr %.pn187, %free
  br i1 %cmp71.not, label %list_del.exit213.for.end81_crit_edge, label %list_del.exit213.for.body73_crit_edge

list_del.exit213.for.body73_crit_edge:            ; preds = %list_del.exit213
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73

list_del.exit213.for.end81_crit_edge:             ; preds = %list_del.exit213
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end81

for.end81:                                        ; preds = %list_del.exit213.for.end81_crit_edge, %for.end58.for.end81_crit_edge
  %fastmap = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 5
  %52 = ptrtoint ptr %fastmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fastmap, align 4
  %cmp94.not234 = icmp eq ptr %53, %fastmap
  br i1 %cmp94.not234, label %for.end81.for.end104_crit_edge, label %for.body96.lr.ph

for.end81.for.end104_crit_edge:                   ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end104

for.body96.lr.ph:                                 ; preds = %for.end81
  %aeb_slab_cache.i221 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  br label %for.body96

for.body96:                                       ; preds = %list_del.exit220.for.body96_crit_edge, %for.body96.lr.ph
  %.pn188.in235 = phi ptr [ %53, %for.body96.lr.ph ], [ %.pn188, %list_del.exit220.for.body96_crit_edge ]
  %aeb.4 = getelementptr i8, ptr %.pn188.in235, i32 -32
  %54 = ptrtoint ptr %.pn188.in235 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn188 = load ptr, ptr %.pn188.in235, align 8
  %call.i.i215 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn188.in235) #9
  br i1 %call.i.i215, label %if.end.i.i218, label %for.body96.list_del.exit220_crit_edge

for.body96.list_del.exit220_crit_edge:            ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit220

if.end.i.i218:                                    ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i216 = getelementptr inbounds %struct.list_head, ptr %.pn188.in235, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i216 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i216, align 4
  %57 = ptrtoint ptr %.pn188.in235 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %.pn188.in235, align 4
  %prev1.i.i.i217 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i217 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i217, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit220

list_del.exit220:                                 ; preds = %if.end.i.i218, %for.body96.list_del.exit220_crit_edge
  %61 = ptrtoint ptr %.pn188.in235 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn188.in235, align 4
  %prev.i219 = getelementptr inbounds %struct.list_head, ptr %.pn188.in235, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i219 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i219, align 4
  %63 = ptrtoint ptr %aeb_slab_cache.i221 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %aeb_slab_cache.i221, align 4
  tail call void @kmem_cache_free(ptr noundef %64, ptr noundef %aeb.4) #9
  %cmp94.not = icmp eq ptr %.pn188, %fastmap
  br i1 %cmp94.not, label %list_del.exit220.for.end104_crit_edge, label %list_del.exit220.for.body96_crit_edge

list_del.exit220.for.body96_crit_edge:            ; preds = %list_del.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body96

list_del.exit220.for.end104_crit_edge:            ; preds = %list_del.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end104

for.end104:                                       ; preds = %list_del.exit220.for.end104_crit_edge, %for.end81.for.end104_crit_edge
  %65 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ai, align 8
  %tobool.not237 = icmp eq ptr %66, null
  br i1 %tobool.not237, label %for.end104.while.end_crit_edge, label %while.body.lr.ph

for.end104.while.end_crit_edge:                   ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end104
  %aeb_slab_cache.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %if.end125.while.body_crit_edge, %while.body.lr.ph
  %rb.0238 = phi ptr [ %66, %while.body.lr.ph ], [ %rb.1, %if.end125.while.body_crit_edge ]
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb.0238, i32 0, i32 2
  %67 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rb_left, align 4
  %tobool105.not = icmp eq ptr %68, null
  br i1 %tobool105.not, label %if.else, label %while.body.if.end125_crit_edge

while.body.if.end125_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.else:                                          ; preds = %while.body
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb.0238, i32 0, i32 1
  %69 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rb_right, align 4
  %tobool107.not = icmp eq ptr %70, null
  br i1 %tobool107.not, label %if.else110, label %if.else.if.end125_crit_edge

if.else.if.end125_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.else110:                                       ; preds = %if.else
  %add.ptr113 = getelementptr i8, ptr %rb.0238, i32 -32
  %71 = ptrtoint ptr %rb.0238 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rb.0238, align 4
  %and = and i32 %72, -4
  %73 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool114.not = icmp eq i32 %and, 0
  br i1 %tobool114.not, label %if.else110.if.end123_crit_edge, label %if.then115

if.else110.if.end123_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then115:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left116 = getelementptr inbounds %struct.rb_node, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %rb_left116 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rb_left116, align 4
  %cmp118 = icmp eq ptr %75, %rb.0238
  %rb_right122 = getelementptr inbounds %struct.rb_node, ptr %73, i32 0, i32 1
  %rb_left116.sink = select i1 %cmp118, ptr %rb_left116, ptr %rb_right122
  %76 = ptrtoint ptr %rb_left116.sink to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rb_left116.sink, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then115, %if.else110.if.end123_crit_edge
  %root.i = getelementptr i8, ptr %rb.0238, i32 12
  %77 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %root.i, align 4
  %tobool.not38.i = icmp eq ptr %78, null
  br i1 %tobool.not38.i, label %if.end123.destroy_av.exit_crit_edge, label %if.end123.while.body.i_crit_edge

if.end123.while.body.i_crit_edge:                 ; preds = %if.end123
  br label %while.body.i

if.end123.destroy_av.exit_crit_edge:              ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_av.exit

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %if.end123.while.body.i_crit_edge
  %this.039.i = phi ptr [ %this.1.i, %if.end21.i.while.body.i_crit_edge ], [ %78, %if.end123.while.body.i_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %this.039.i, i32 0, i32 2
  %79 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rb_left.i, align 4
  %tobool1.not.i = icmp eq ptr %80, null
  br i1 %tobool1.not.i, label %if.else.i, label %while.body.i.if.end21.i_crit_edge

while.body.i.if.end21.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.else.i:                                        ; preds = %while.body.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %this.039.i, i32 0, i32 1
  %81 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rb_right.i, align 4
  %tobool3.not.i = icmp eq ptr %82, null
  br i1 %tobool3.not.i, label %if.else6.i, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.else6.i:                                       ; preds = %if.else.i
  %add.ptr.i = getelementptr i8, ptr %this.039.i, i32 -32
  %83 = ptrtoint ptr %this.039.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %this.039.i, align 4
  %and.i = and i32 %84, -4
  %85 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.else6.i.if.end14.i_crit_edge, label %if.then8.i

if.else6.i.if.end14.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %rb_left9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rb_left9.i, align 4
  %cmp.i = icmp eq ptr %87, %this.039.i
  %rb_right13.i = getelementptr inbounds %struct.rb_node, ptr %85, i32 0, i32 1
  %rb_left9.sink.i = select i1 %cmp.i, ptr %rb_left9.i, ptr %rb_right13.i
  %88 = ptrtoint ptr %rb_left9.sink.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %rb_left9.sink.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.else6.i.if.end14.i_crit_edge
  %89 = ptrtoint ptr %aeb_slab_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %aeb_slab_cache.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %90, ptr noundef %add.ptr.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end14.i, %if.else.i.if.end21.i_crit_edge, %while.body.i.if.end21.i_crit_edge
  %this.1.i = phi ptr [ %85, %if.end14.i ], [ %80, %while.body.i.if.end21.i_crit_edge ], [ %82, %if.else.i.if.end21.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %this.1.i, null
  br i1 %tobool.not.i, label %if.end21.i.destroy_av.exit_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end21.i.destroy_av.exit_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_av.exit

destroy_av.exit:                                  ; preds = %if.end21.i.destroy_av.exit_crit_edge, %if.end123.destroy_av.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr113) #9
  br label %if.end125

if.end125:                                        ; preds = %destroy_av.exit, %if.else.if.end125_crit_edge, %while.body.if.end125_crit_edge
  %rb.1 = phi ptr [ %73, %destroy_av.exit ], [ %68, %while.body.if.end125_crit_edge ], [ %70, %if.else.if.end125_crit_edge ]
  %tobool.not = icmp eq ptr %rb.1, null
  br i1 %tobool.not, label %if.end125.while.end_crit_edge, label %if.end125.while.body_crit_edge

if.end125.while.body_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end125.while.end_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end125.while.end_crit_edge, %for.end104.while.end_crit_edge
  %aeb_slab_cache = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %91 = ptrtoint ptr %aeb_slab_cache to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %aeb_slab_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %92) #9
  tail call void @kfree(ptr noundef %ai) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_read_volume_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @self_check_eba(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_wl_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_all_volumes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_av(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_sync_erase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_ec_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_peb(ptr noundef %ubi, ptr noundef %ai, i32 noundef %pnum, i1 noundef zeroext %fast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ech1 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 22
  %0 = ptrtoint ptr %ech1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ech1, align 8
  %vidb2 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 23
  %2 = ptrtoint ptr %vidb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vidb2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_peb.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_peb, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !227

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_peb.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.44, i32 noundef %11, i32 noundef %pnum) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %pnum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.cleanup176_crit_edge, label %if.else

do.end.cleanup176_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bad_peb_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 9
  %12 = ptrtoint ptr %bad_peb_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bad_peb_count, align 8
  %add = add i32 %13, 1
  store i32 %add, ptr %bad_peb_count, align 8
  br label %cleanup176

if.end13:                                         ; preds = %if.else
  %call14 = tail call i32 @ubi_io_read_ec_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup176_crit_edge, label %if.end17

if.end13.cleanup176_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end17:                                         ; preds = %if.end13
  %14 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call14, label %sw.default [
    i32 0, label %if.end17.if.then28_crit_edge
    i32 5, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb21
    i32 4, label %if.end17.if.end53_crit_edge
    i32 3, label %if.end17.if.end53_crit_edge381
  ]

if.end17.if.end53_crit_edge381:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end17.if.end53_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end17.if.then28_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

sw.bb18:                                          ; preds = %if.end17
  %empty_peb_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 7
  %15 = ptrtoint ptr %empty_peb_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %empty_peb_count, align 8
  %add19 = add i32 %16, 1
  store i32 %add19, ptr %empty_peb_count, align 8
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_list.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_peb, %if.then19.i)) #9
          to label %if.end57.i [label %if.then19.i], !srcloc !227

if.then19.i:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i93.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i93.i to ptr
  %task21.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task21.i, align 8
  %pid22.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid22.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_to_list.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.34, i32 noundef %22, i32 noundef %pnum, i32 noundef -1) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then19.i, %sw.bb18
  %aeb_slab_cache.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %23 = ptrtoint ptr %aeb_slab_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aeb_slab_cache.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %24, i32 noundef 3520) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end57.i.cleanup176_crit_edge, label %if.end61.i

if.end57.i.cleanup176_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end61.i:                                       ; preds = %if.end57.i
  %pnum1.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %pnum1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %pnum, ptr %pnum1.i.i, align 4
  %26 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %call.i.i.i, align 8
  %vol_id.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i, i32 0, i32 2
  %lnum.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %vol_id.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %vol_id.i.i, align 8
  %28 = ptrtoint ptr %lnum.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %lnum.i.i, align 4
  %u67.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i96.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u67.i, ptr noundef %30, ptr noundef %erase) #9
  br i1 %call.i.i96.i, label %cleanup.sink.split.i, label %if.end61.i.cleanup176_crit_edge

if.end61.i.cleanup176_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

cleanup.sink.split.i:                             ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %u67.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %u67.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %erase, ptr %u67.i, align 8
  %prev3.i.i97.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i, i32 0, i32 6, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i97.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %u67.i, ptr %30, align 4
  br label %cleanup176

sw.bb21:                                          ; preds = %if.end17
  %empty_peb_count22 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 7
  %35 = ptrtoint ptr %empty_peb_count22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %empty_peb_count22, align 8
  %add23 = add i32 %36, 1
  store i32 %add23, ptr %empty_peb_count22, align 8
  %erase24 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_list.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_peb, %if.then19.i344)) #9
          to label %if.end57.i348 [label %if.then19.i344], !srcloc !227

if.then19.i344:                                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  %37 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i93.i341 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i93.i341 to ptr
  %task21.i342 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task21.i342 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task21.i342, align 8
  %pid22.i343 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid22.i343 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid22.i343, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_to_list.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.34, i32 noundef %42, i32 noundef %pnum, i32 noundef -1) #9
  br label %if.end57.i348

if.end57.i348:                                    ; preds = %if.then19.i344, %sw.bb21
  %aeb_slab_cache.i.i345 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %43 = ptrtoint ptr %aeb_slab_cache.i.i345 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %aeb_slab_cache.i.i345, align 4
  %call.i.i.i346 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %44, i32 noundef 3520) #9
  %tobool.not.i.i347 = icmp eq ptr %call.i.i.i346, null
  br i1 %tobool.not.i.i347, label %if.end57.i348.cleanup176_crit_edge, label %if.end61.i353

if.end57.i348.cleanup176_crit_edge:               ; preds = %if.end57.i348
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end61.i353:                                    ; preds = %if.end57.i348
  %pnum1.i.i349 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i346, i32 0, i32 1
  %45 = ptrtoint ptr %pnum1.i.i349 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %pnum, ptr %pnum1.i.i349, align 4
  %46 = ptrtoint ptr %call.i.i.i346 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %call.i.i.i346, align 8
  %vol_id.i.i350 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i346, i32 0, i32 2
  %lnum.i.i351 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i346, i32 0, i32 3
  %47 = ptrtoint ptr %vol_id.i.i350 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %vol_id.i.i350, align 8
  %48 = ptrtoint ptr %lnum.i.i351 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %lnum.i.i351, align 4
  %u67.i352 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i346, i32 0, i32 6
  %49 = ptrtoint ptr %erase24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %erase24, align 4
  %call.i.i95.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u67.i352, ptr noundef %erase24, ptr noundef %50) #9
  br i1 %call.i.i95.i, label %if.end.i.i.i, label %if.end61.i353.cleanup176_crit_edge

if.end61.i353.cleanup176_crit_edge:               ; preds = %if.end61.i353
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end.i.i.i:                                     ; preds = %if.end61.i353
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %u67.i352, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %u67.i352 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %u67.i352, align 8
  %prev3.i.i97.i354 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i.i346, i32 0, i32 6, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i97.i354 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %erase24, ptr %prev3.i.i97.i354, align 4
  %54 = ptrtoint ptr %erase24 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %u67.i352, ptr %erase24, align 4
  br label %cleanup176

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.45, i32 noundef %call14) #9
  br label %cleanup176

if.then28:                                        ; preds = %sw.bb, %if.end17.if.then28_crit_edge
  %tobool101.not.ph = phi i1 [ true, %if.end17.if.then28_crit_edge ], [ false, %sw.bb ]
  %bitflips.0.ph = phi i32 [ %call14, %if.end17.if.then28_crit_edge ], [ 1, %sw.bb ]
  %version = getelementptr inbounds %struct.ubi_ec_hdr, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp29.not = icmp eq i8 %56, 1
  br i1 %cmp29.not, label %if.end34, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef %conv) #9
  br label %cleanup176

if.end34:                                         ; preds = %if.then28
  %ec35 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %ec35 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %ec35, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %58)
  %cmp36 = icmp sgt i64 %58, 2147483647
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.47, i32 noundef 2147483647) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %1) #9
  br label %cleanup176

if.end39:                                         ; preds = %if.end34
  %image_seq40 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %image_seq40 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %image_seq40, align 1
  %image_seq41 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 8
  %61 = ptrtoint ptr %image_seq41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %image_seq41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool42.not = icmp eq i32 %62, 0
  br i1 %tobool42.not, label %if.then43, label %if.end39.if.end45_crit_edge

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %image_seq41 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %image_seq41, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end39.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool46.not = icmp eq i32 %60, 0
  br i1 %tobool46.not, label %if.end45.if.end53_crit_edge, label %land.lhs.true

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end45
  %64 = ptrtoint ptr %image_seq41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %image_seq41, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %60)
  %cmp48.not = icmp eq i32 %65, %60
  br i1 %cmp48.not, label %land.lhs.true.if.end53_crit_edge, label %if.then50

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.48, i32 noundef %60, i32 noundef %pnum, i32 noundef %65) #9
  tail call void @ubi_dump_ec_hdr(ptr noundef %1) #9
  br label %cleanup176

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end45.if.end53_crit_edge, %if.end17.if.end53_crit_edge, %if.end17.if.end53_crit_edge381
  %tobool27.not370 = phi i1 [ false, %if.end17.if.end53_crit_edge ], [ false, %if.end17.if.end53_crit_edge381 ], [ true, %if.end45.if.end53_crit_edge ], [ true, %land.lhs.true.if.end53_crit_edge ]
  %ec_err.0368 = phi i32 [ %call14, %if.end17.if.end53_crit_edge ], [ %call14, %if.end17.if.end53_crit_edge381 ], [ 0, %if.end45.if.end53_crit_edge ], [ 0, %land.lhs.true.if.end53_crit_edge ]
  %bitflips.0366 = phi i32 [ 1, %if.end17.if.end53_crit_edge ], [ 1, %if.end17.if.end53_crit_edge381 ], [ %bitflips.0.ph, %if.end45.if.end53_crit_edge ], [ %bitflips.0.ph, %land.lhs.true.if.end53_crit_edge ]
  %tobool101.not364 = phi i1 [ false, %if.end17.if.end53_crit_edge ], [ false, %if.end17.if.end53_crit_edge381 ], [ %tobool101.not.ph, %if.end45.if.end53_crit_edge ], [ %tobool101.not.ph, %land.lhs.true.if.end53_crit_edge ]
  %ec.2 = phi i64 [ -1, %if.end17.if.end53_crit_edge ], [ -1, %if.end17.if.end53_crit_edge381 ], [ %58, %if.end45.if.end53_crit_edge ], [ %58, %land.lhs.true.if.end53_crit_edge ]
  %call54 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.cleanup176_crit_edge, label %if.end58

if.end53.cleanup176_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end58:                                         ; preds = %if.end53
  %66 = zext i32 %call54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call54, label %sw.default113 [
    i32 0, label %if.end58.sw.epilog114_crit_edge
    i32 5, label %sw.bb59
    i32 4, label %sw.bb60
    i32 3, label %if.end58.sw.bb66_crit_edge
    i32 2, label %sw.bb92
    i32 1, label %sw.bb99
  ]

if.end58.sw.bb66_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb66

if.end58.sw.epilog114_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog114

sw.bb59:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog114

sw.bb60:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ec_err.0368)
  %cmp61 = icmp eq i32 %ec_err.0368, 4
  br i1 %cmp61, label %if.then63, label %sw.bb60.sw.bb66_crit_edge

sw.bb60.sw.bb66_crit_edge:                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb66

if.then63:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  %maybe_bad_peb_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 10
  %67 = ptrtoint ptr %maybe_bad_peb_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %maybe_bad_peb_count, align 4
  %add64 = add i32 %68, 1
  store i32 %add64, ptr %maybe_bad_peb_count, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %if.then63, %sw.bb60.sw.bb66_crit_edge, %if.end58.sw.bb66_crit_edge
  br i1 %fast, label %if.then68, label %sw.bb66.if.end69_crit_edge

sw.bb66.if.end69_crit_edge:                       ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then68:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %force_full_scan = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 14
  %69 = ptrtoint ptr %force_full_scan to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %force_full_scan, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %sw.bb66.if.end69_crit_edge
  br i1 %tobool27.not370, label %if.end74, label %if.end69.if.then80_crit_edge

if.end69.if.then80_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end74:                                         ; preds = %if.end69
  %call73 = tail call fastcc i32 @check_corruption(ptr noundef %ubi, ptr noundef %5, i32 noundef %pnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp75 = icmp slt i32 %call73, 0
  br i1 %cmp75, label %if.end74.cleanup176_crit_edge, label %if.else78

if.end74.cleanup176_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.else78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool79.not = icmp eq i32 %call73, 0
  br i1 %tobool79.not, label %if.else78.if.then80_crit_edge, label %if.else84

if.else78.if.then80_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.then80:                                        ; preds = %if.else78.if.then80_crit_edge, %if.end69.if.then80_crit_edge
  %conv81 = trunc i64 %ec.2 to i32
  %erase82 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %call83 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef -1, i32 noundef -1, i32 noundef %conv81, i32 noundef 1, ptr noundef %erase82)
  br label %if.end88

if.else84:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #11
  %conv85 = trunc i64 %ec.2 to i32
  %call86 = tail call fastcc i32 @add_corrupted(ptr noundef %ai, i32 noundef %pnum, i32 noundef %conv85)
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.then80
  %err.1 = phi i32 [ %call86, %if.else84 ], [ %call83, %if.then80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool89.not = icmp eq i32 %err.1, 0
  %70 = and i1 %tobool27.not370, %tobool89.not
  br i1 %70, label %if.end88.if.then158_crit_edge, label %if.end88.cleanup176_crit_edge

if.end88.cleanup176_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end88.if.then158_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

sw.bb92:                                          ; preds = %if.end58
  %conv93 = trunc i64 %ec.2 to i32
  %erase94 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %call95 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef -1, i32 noundef -1, i32 noundef %conv93, i32 noundef 1, ptr noundef %erase94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  %71 = and i1 %tobool27.not370, %tobool96.not
  br i1 %71, label %sw.bb92.if.then158_crit_edge, label %sw.bb92.cleanup176_crit_edge

sw.bb92.cleanup176_crit_edge:                     ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

sw.bb92.if.then158_crit_edge:                     ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

sw.bb99:                                          ; preds = %if.end58
  %72 = and i1 %tobool27.not370, %tobool101.not364
  %conv107 = trunc i64 %ec.2 to i32
  br i1 %72, label %if.else106, label %if.then102

if.then102:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  %erase104 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %call105 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef -1, i32 noundef -1, i32 noundef %conv107, i32 noundef 1, ptr noundef %erase104)
  br label %if.end109

if.else106:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  %free = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  %call108 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef -1, i32 noundef -1, i32 noundef %conv107, i32 noundef 0, ptr noundef %free)
  br label %if.end109

if.end109:                                        ; preds = %if.else106, %if.then102
  %err.2 = phi i32 [ %call105, %if.then102 ], [ %call108, %if.else106 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool110.not = icmp eq i32 %err.2, 0
  %73 = and i1 %tobool27.not370, %tobool110.not
  br i1 %73, label %if.end109.if.then158_crit_edge, label %if.end109.cleanup176_crit_edge

if.end109.cleanup176_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end109.if.then158_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

sw.default113:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.49, i32 noundef %call54) #9
  br label %cleanup176

sw.epilog114:                                     ; preds = %sw.bb59, %if.end58.sw.epilog114_crit_edge
  %bitflips.1 = phi i32 [ 1, %sw.bb59 ], [ %bitflips.0366, %if.end58.sw.epilog114_crit_edge ]
  %vol_id115 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 5
  %74 = ptrtoint ptr %vol_id115 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %vol_id115, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %75)
  %cmp116 = icmp slt i32 %75, 129
  %.off = add i32 %75, -2147479551
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %or.cond = or i1 %cmp116, %switch
  br i1 %or.cond, label %sw.epilog114.if.end142_crit_edge, label %if.then120

sw.epilog114.if.end142_crit_edge:                 ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then120:                                       ; preds = %sw.epilog114
  %lnum121 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 6
  %76 = ptrtoint ptr %lnum121 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %lnum121, align 1
  %compat = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 4
  %78 = ptrtoint ptr %compat to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %compat, align 1
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %79, label %if.then120.if.end142_crit_edge [
    i8 1, label %sw.bb123
    i8 2, label %sw.bb130
    i8 4, label %sw.bb131
    i8 5, label %sw.bb137
  ]

if.then120.if.end142_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

sw.bb123:                                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.50, i32 noundef %75, i32 noundef %77) #9
  %conv124 = trunc i64 %ec.2 to i32
  %erase125 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %call126 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef %75, i32 noundef %77, i32 noundef %conv124, i32 noundef 1, ptr noundef %erase125)
  br label %cleanup176

sw.bb130:                                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.51, i32 noundef %75, i32 noundef %77) #9
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %81 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %ro_mode, align 4
  br label %if.end142

sw.bb131:                                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.52, i32 noundef %75, i32 noundef %77) #9
  %conv132 = trunc i64 %ec.2 to i32
  %alien = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 4
  %call133 = tail call fastcc i32 @add_to_list(ptr noundef %ai, i32 noundef %pnum, i32 noundef %75, i32 noundef %77, i32 noundef %conv132, i32 noundef 0, ptr noundef %alien)
  br label %cleanup176

sw.bb137:                                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.53, i32 noundef %75, i32 noundef %77) #9
  br label %cleanup176

if.end142:                                        ; preds = %sw.bb130, %if.then120.if.end142_crit_edge, %sw.epilog114.if.end142_crit_edge
  br i1 %tobool27.not370, label %if.end142.if.end145_crit_edge, label %if.then144

if.end142.if.end145_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then144:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.54, i32 noundef %pnum) #9
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end142.if.end145_crit_edge
  %82 = and i32 %75, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %82)
  %switch.i = icmp eq i32 %82, 2147479552
  %conv148 = trunc i64 %ec.2 to i32
  br i1 %switch.i, label %if.then147, label %if.else150

if.then147:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %call149 = tail call fastcc i32 @add_fastmap(ptr noundef %ai, i32 noundef %pnum, ptr noundef %5, i32 noundef %conv148)
  br label %if.end153

if.else150:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %call152 = tail call i32 @ubi_add_to_av(ptr noundef %ubi, ptr noundef %ai, i32 noundef %pnum, i32 noundef %conv148, ptr noundef %5, i32 noundef %bitflips.1)
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then147
  %err.3 = phi i32 [ %call149, %if.then147 ], [ %call152, %if.else150 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool154.not = icmp eq i32 %err.3, 0
  %83 = and i1 %tobool27.not370, %tobool154.not
  br i1 %83, label %if.end153.if.then158_crit_edge, label %if.end153.cleanup176_crit_edge

if.end153.cleanup176_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end153.if.then158_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

if.then158:                                       ; preds = %if.end153.if.then158_crit_edge, %if.end109.if.then158_crit_edge, %sw.bb92.if.then158_crit_edge, %if.end88.if.then158_crit_edge
  %ec_sum = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 19
  %84 = ptrtoint ptr %ec_sum to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ec_sum, align 8
  %add159 = add i64 %85, %ec.2
  store i64 %add159, ptr %ec_sum, align 8
  %ec_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 20
  %86 = ptrtoint ptr %ec_count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ec_count, align 8
  %add160 = add i32 %87, 1
  store i32 %add160, ptr %ec_count, align 8
  %max_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 16
  %88 = ptrtoint ptr %max_ec to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_ec, align 4
  %conv161 = sext i32 %89 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %ec.2, i64 %conv161)
  %cmp162 = icmp sgt i64 %ec.2, %conv161
  br i1 %cmp162, label %if.then164, label %if.then158.if.end167_crit_edge

if.then158.if.end167_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then164:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  %conv165 = trunc i64 %ec.2 to i32
  %90 = ptrtoint ptr %max_ec to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv165, ptr %max_ec, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.then158.if.end167_crit_edge
  %min_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 15
  %91 = ptrtoint ptr %min_ec to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %min_ec, align 8
  %conv168 = sext i32 %92 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %ec.2, i64 %conv168)
  %cmp169 = icmp slt i64 %ec.2, %conv168
  br i1 %cmp169, label %if.then171, label %if.end167.cleanup176_crit_edge

if.end167.cleanup176_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %conv172 = trunc i64 %ec.2 to i32
  %93 = ptrtoint ptr %min_ec to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv172, ptr %min_ec, align 8
  br label %cleanup176

cleanup176:                                       ; preds = %if.then171, %if.end167.cleanup176_crit_edge, %if.end153.cleanup176_crit_edge, %sw.bb137, %sw.bb131, %sw.bb123, %sw.default113, %if.end109.cleanup176_crit_edge, %sw.bb92.cleanup176_crit_edge, %if.end88.cleanup176_crit_edge, %if.end74.cleanup176_crit_edge, %if.end53.cleanup176_crit_edge, %if.then50, %if.then38, %if.then31, %sw.default, %if.end.i.i.i, %if.end61.i353.cleanup176_crit_edge, %if.end57.i348.cleanup176_crit_edge, %cleanup.sink.split.i, %if.end61.i.cleanup176_crit_edge, %if.end57.i.cleanup176_crit_edge, %if.end13.cleanup176_crit_edge, %if.then11, %do.end.cleanup176_crit_edge
  %retval.3 = phi i32 [ 0, %if.then11 ], [ -22, %sw.default ], [ -22, %sw.default113 ], [ %call8, %do.end.cleanup176_crit_edge ], [ %call14, %if.end13.cleanup176_crit_edge ], [ %call54, %if.end53.cleanup176_crit_edge ], [ %call73, %if.end74.cleanup176_crit_edge ], [ %err.1, %if.end88.cleanup176_crit_edge ], [ %call95, %sw.bb92.cleanup176_crit_edge ], [ %err.2, %if.end109.cleanup176_crit_edge ], [ %err.3, %if.end153.cleanup176_crit_edge ], [ 0, %if.end167.cleanup176_crit_edge ], [ 0, %if.then171 ], [ 0, %if.end61.i.cleanup176_crit_edge ], [ -12, %if.end57.i.cleanup176_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 0, %if.end61.i353.cleanup176_crit_edge ], [ -12, %if.end57.i348.cleanup176_crit_edge ], [ 0, %if.end.i.i.i ], [ -22, %if.then31 ], [ -22, %if.then38 ], [ -22, %if.then50 ], [ %call133, %sw.bb131 ], [ %call126, %sw.bb123 ], [ -22, %sw.bb137 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_is_bad(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_ec_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_ec_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_corruption(ptr noundef %ubi, ptr noundef %vid_hdr, i32 noundef %pnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #9
  %peb_buf = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 80
  %0 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peb_buf, align 8
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  %4 = call ptr @memset(ptr %1, i32 0, i32 %3)
  %5 = load ptr, ptr %peb_buf, align 8
  %leb_start = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %6 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_start, align 4
  %8 = load i32, ptr %leb_size, align 8
  %call = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %5, i32 noundef %pnum, i32 noundef %7, i32 noundef %8) #9
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call, label %out_unlock.fold.split [
    i32 5, label %entry.out_unlock_crit_edge
    i32 -74, label %entry.out_unlock_crit_edge39
    i32 0, label %if.end6
  ]

entry.out_unlock_crit_edge39:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %entry
  %10 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peb_buf, align 8
  %12 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leb_size, align 8
  %call9 = tail call i32 @ubi_check_pattern(ptr noundef %11, i8 noundef zeroext -1, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.out_unlock_crit_edge

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.55, i32 noundef %pnum) #9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.56) #9
  tail call void @ubi_dump_vid_hdr(ptr noundef %vid_hdr) #9
  %14 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_start, align 4
  %16 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_size, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %pnum, i32 noundef %15, i32 noundef %17) #15
  %18 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peb_buf, align 8
  %20 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_size, align 8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %19, i32 noundef %21, i1 noundef zeroext true) #9
  br label %out_unlock

out_unlock.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.fold.split, %if.end12, %if.end6.out_unlock_crit_edge, %entry.out_unlock_crit_edge, %entry.out_unlock_crit_edge39
  %err.0 = phi i32 [ 0, %if.end6.out_unlock_crit_edge ], [ 1, %if.end12 ], [ 0, %entry.out_unlock_crit_edge ], [ 0, %entry.out_unlock_crit_edge39 ], [ %call, %out_unlock.fold.split ]
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_corrupted(ptr noundef %ai, i32 noundef %pnum, i32 noundef %ec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_corrupted.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_corrupted, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !227

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_corrupted.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.62, i32 noundef %5, i32 noundef %pnum, i32 noundef %ec) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %aeb_slab_cache.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %6 = ptrtoint ptr %aeb_slab_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aeb_slab_cache.i, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %pnum1.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pnum, ptr %pnum1.i, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ec, ptr %call.i.i, align 8
  %vol_id.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %vol_id.i, align 8
  %lnum.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %lnum.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %lnum.i, align 4
  %corr_peb_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 6
  %12 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %corr_peb_count, align 4
  %add = add i32 %13, 1
  store i32 %add, ptr %corr_peb_count, align 4
  %u = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 6
  %corr = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 1
  %14 = ptrtoint ptr %corr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %corr, align 4
  %call.i.i13 = tail call zeroext i1 @__list_add_valid(ptr noundef %u, ptr noundef %corr, ptr noundef %15) #9
  br i1 %call.i.i13, label %if.end.i.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %u, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %u, align 8
  %prev3.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %corr, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %corr to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %u, ptr %corr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_fastmap(ptr noundef %ai, i32 noundef %pnum, ptr nocapture noundef readonly %vid_hdr, i32 noundef %ec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aeb_slab_cache.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 21
  %0 = ptrtoint ptr %aeb_slab_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aeb_slab_cache.i, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pnum1.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pnum, ptr %pnum1.i, align 4
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ec, ptr %call.i.i, align 8
  %vol_id.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 2
  %lnum.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %lnum.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %lnum.i, align 4
  %vol_id = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 5
  %5 = ptrtoint ptr %vol_id to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %vol_id, align 1
  %7 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vol_id.i, align 8
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %vid_hdr, i32 0, i32 13
  %8 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %sqnum, align 1
  %sqnum2 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %sqnum2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %sqnum2, align 8
  %u = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 6
  %fastmap = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 5
  %11 = ptrtoint ptr %fastmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fastmap, align 4
  %call.i.i20 = tail call zeroext i1 @__list_add_valid(ptr noundef %u, ptr noundef %fastmap, ptr noundef %12) #9
  br i1 %call.i.i20, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %u, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %u, align 8
  %prev3.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fastmap, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %fastmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %u, ptr %fastmap, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_fastmap.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_fastmap, %if.then7)) #9
          to label %cleanup [label %if.then7], !srcloc !227

if.then7:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i32 @llvm.read_register.i32(metadata !217) #9
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  %23 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vol_id.i, align 8
  %25 = ptrtoint ptr %sqnum2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sqnum2, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_fastmap.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.64, i32 noundef %22, i32 noundef %pnum, i32 noundef %24, i64 noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_check_pattern(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_scan_fastmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216}
!llvm.named.register.sp = !{!217}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/attach.c", i32 455, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/ubi/attach.c", i32 474, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug236, !3, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/attach.c", i32 481, i32 4}
!10 = !{ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug237, !9, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/ubi/attach.c", i32 496, i32 18}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/ubi/attach.c", i32 520, i32 3}
!15 = !{ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug238, !14, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/ubi/attach.c", i32 526, i32 3}
!18 = !{ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug239, !17, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/ubi/attach.c", i32 534, i32 3}
!21 = !{ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug240, !20, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/ubi/attach.c", i32 536, i32 3}
!24 = !{ptr @ubi_compare_lebs.__UNIQUE_ID_ddebug241, !23, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/ubi/attach.c", i32 576, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ubi_add_to_av.__UNIQUE_ID_ddebug242, !26, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/ubi/attach.c", i32 609, i32 3}
!31 = !{ptr @ubi_add_to_av.__UNIQUE_ID_ddebug243, !30, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/ubi/attach.c", i32 626, i32 17}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/ubi/attach.c", i32 751, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ubi_remove_av.__UNIQUE_ID_ddebug244, !35, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/ubi/attach.c", i32 827, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ubi_early_get_peb.__UNIQUE_ID_ddebug245, !39, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/attach.c", i32 847, i32 3}
!44 = !{ptr @ubi_early_get_peb.__UNIQUE_ID_ddebug246, !43, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/ubi/attach.c", i32 851, i32 15}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/ubi/attach.c", i32 1599, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ubi_attach.__UNIQUE_ID_ddebug250, !48, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/ubi/ubi.h", i32 1136, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ubi_io_read_data._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @ubi_io_read_data._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/ubi/attach.c", i32 403, i32 2}
!59 = !{ptr @add_volume._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @add_volume._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/ubi/attach.c", i32 349, i32 17}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/attach.c", i32 359, i32 17}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/ubi/attach.c", i32 364, i32 17}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/ubi/attach.c", i32 369, i32 17}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ubi/attach.c", i32 377, i32 15}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/ubi/attach.c", i32 235, i32 3}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @add_to_list.__UNIQUE_ID_ddebug231, !72, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ubi/attach.c", i32 237, i32 3}
!77 = !{ptr @add_to_list.__UNIQUE_ID_ddebug232, !76, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/ubi/attach.c", i32 239, i32 3}
!80 = !{ptr @add_to_list.__UNIQUE_ID_ddebug233, !79, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/ubi/attach.c", i32 147, i32 2}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @find_or_add_av.__UNIQUE_ID_ddebug230, !82, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/ubi/attach.c", i32 782, i32 16}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/ubi/attach.c", i32 1464, i32 41}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/ubi/attach.c", i32 1395, i32 3}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @scan_all.__UNIQUE_ID_ddebug248, !90, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/ubi/attach.c", i32 1401, i32 15}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/ubi/attach.c", i32 950, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @scan_peb.__UNIQUE_ID_ddebug247, !96, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ubi/attach.c", i32 990, i32 16}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/ubi/attach.c", i32 1000, i32 17}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/ubi/attach.c", i32 1014, i32 17}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/ubi/attach.c", i32 1035, i32 17}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/ubi/attach.c", i32 1128, i32 16}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/ubi/attach.c", i32 1140, i32 17}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/ubi/attach.c", i32 1150, i32 17}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/ubi/attach.c", i32 1156, i32 17}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/ubi/attach.c", i32 1165, i32 17}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/ubi/attach.c", i32 1172, i32 17}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/ubi/attach.c", i32 900, i32 15}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/ubi/attach.c", i32 902, i32 15}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/ubi/attach.c", i32 904, i32 2}
!125 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @check_corruption._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @check_corruption._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/ubi/attach.c", i32 906, i32 2}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/ubi/attach.c", i32 272, i32 2}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @add_corrupted.__UNIQUE_ID_ddebug234, !132, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/ubi/attach.c", i32 309, i32 2}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @add_fastmap.__UNIQUE_ID_ddebug235, !136, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/ubi/attach.c", i32 1221, i32 16}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/ubi/attach.c", i32 1223, i32 3}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @late_analysis._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @late_analysis._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/ubi/attach.c", i32 1225, i32 4}
!148 = !{ptr @late_analysis._entry.68, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @late_analysis._entry_ptr.70, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/ubi/attach.c", i32 1226, i32 3}
!152 = !{ptr @late_analysis._entry.71, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @late_analysis._entry_ptr.73, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/ubi/attach.c", i32 1233, i32 17}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/ubi/attach.c", i32 1256, i32 17}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/ubi/attach.c", i32 1260, i32 17}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/ubi/attach.c", i32 1682, i32 17}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/ubi/attach.c", i32 1689, i32 17}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mtd/ubi/attach.c", i32 1695, i32 17}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/ubi/attach.c", i32 1700, i32 17}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/ubi/attach.c", i32 1707, i32 17}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/ubi/attach.c", i32 1712, i32 17}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/ubi/attach.c", i32 1729, i32 18}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/ubi/attach.c", i32 1735, i32 18}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/ubi/attach.c", i32 1741, i32 18}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/ubi/attach.c", i32 1748, i32 19}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mtd/ubi/attach.c", i32 1753, i32 19}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/ubi/attach.c", i32 1759, i32 18}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/ubi/attach.c", i32 1765, i32 17}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/ubi/attach.c", i32 1776, i32 17}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mtd/ubi/attach.c", i32 1782, i32 16}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/ubi/attach.c", i32 1799, i32 18}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/ubi/attach.c", i32 1814, i32 18}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/ubi/attach.c", i32 1819, i32 18}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mtd/ubi/attach.c", i32 1824, i32 18}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mtd/ubi/attach.c", i32 1829, i32 18}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mtd/ubi/attach.c", i32 1834, i32 18}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mtd/ubi/attach.c", i32 1839, i32 18}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/ubi/attach.c", i32 1848, i32 17}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/ubi/attach.c", i32 1853, i32 17}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/ubi/attach.c", i32 1895, i32 17}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mtd/ubi/attach.c", i32 1905, i32 15}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/ubi/attach.c", i32 1911, i32 15}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mtd/ubi/attach.c", i32 1509, i32 3}
!216 = !{ptr @scan_fast.__UNIQUE_ID_ddebug249, !215, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!217 = !{!"sp"}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{i64 2148262359, i64 2148262364, i64 2148262377, i64 2148262421, i64 2148262455, i64 2148262476}
!228 = !{!"auto-init"}
!229 = !{!"branch_weights", i32 2000, i32 1}
!230 = !{i8 0, i8 2}
!231 = !{i64 2154222801, i64 2154223290, i64 2154222838, i64 2154222894, i64 2154222928, i64 2154222952, i64 2154222993, i64 2154223014, i64 2154223042, i64 2154223076}
!232 = !{i64 2148480934, i64 2148481214, i64 2148481548, i64 2148481882}
