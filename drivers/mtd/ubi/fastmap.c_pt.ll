; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/fastmap.c_pt.bc'
source_filename = "../drivers/mtd/ubi/fastmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon.76 }
%union.anon.76 = type { %struct.rb_node }
%struct.ubi_fastmap_layout = type { [32 x ptr], [32 x i32], i32, i32, i32 }
%struct.ubi_fm_sb = type { i32, i8, [3 x i8], i32, i32, [32 x i32], [32 x i32], i64, [32 x i8] }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_wl_entry = type { %union.anon.70, i32, i32 }
%union.anon.70 = type { %struct.rb_node }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_fm_ec = type { i32, i32 }
%struct.ubi_fm_volhdr = type { i32, i32, i8, [3 x i8], i32, i32, i32, [8 x i8] }
%struct.ubi_fm_eba = type { i32, i32, [0 x i32] }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8, ptr }
%struct.ubi_eba_leb_desc = type { i32, i32 }
%struct.ubi_work = type { %struct.list_head, ptr, ptr, i32, i32, i32 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad super block magic: 0x%x, expected: 0x%x\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad fastmap version: %i, expected: %i\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"number of fastmap blocks is invalid: %i\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad fastmap size: %zi, expected: %zi\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fastmap anchor PEB mismatch: PEB: %i vs. %i\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to read fastmap block# %i EC (PEB: %i)\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wrong image seq:%d instead of %d\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to read fastmap block# %i (PEB: %i)\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bad fastmap anchor vol_id: 0x%x, expected: 0x%x\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bad fastmap data vol_id: 0x%x, expected: 0x%x\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unable to read fastmap block# %i (PEB: %i, err: %i)\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fastmap data CRC is invalid\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC should be: 0x%x, calc: 0x%x\00", [32 x i8] zeroinitializer }, align 32
@ubi_wl_entry_slab = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"attached by fastmap\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fastmap pool size: %d\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fastmap WL pool size: %d\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Attach by fastmap failed, doing a full scan!\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fastmap too large\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not erase old fastmap PEB\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not get any free erase block\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not erase old anchor PEB\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not find any anchor PEB\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to write new fastmap, err=%i\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to invalidate current fastmap!\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ubi_io_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_io_read_data\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/ubi/ubi.h\00", [42 x i8] zeroinitializer }, align 32
@ubi_io_read_data._entry_ptr = internal global ptr @ubi_io_read_data._entry, section ".printk_index", align 4
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bad fastmap header magic: 0x%x, expected: 0x%x\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad fastmap pool magic: 0x%x, expected: 0x%x\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bad fastmap WL pool magic: 0x%x, expected: 0x%x\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad pool size: %i\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad WL pool size: %i\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bad maximal pool size: %i\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad maximal WL pool size: %i\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bad fastmap vol header magic: 0x%x, expected: 0x%x\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"volume (ID %i) already exists\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bad fastmap EBA header magic: 0x%x, expected: 0x%x\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PEB %i is in EBA but not in used list\00", [58 x i8] zeroinitializer }, align 32
@ubi_attach_fastmap.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubi_attach_fastmap\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mtd/ubi/fastmap.c\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBI DBG bld (pid %d): inserting PEB:%i (LEB %i) to vol %i\0A\00", [37 x i8] zeroinitializer }, align 32
@ubi_attach_fastmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.39, ptr @.str.40, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_attach_fastmap._entry_ptr = internal global ptr @ubi_attach_fastmap._entry, section ".printk_index", align 4
@add_vol.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.42, ptr @.str.40, ptr @.str.43, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"add_vol\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBI DBG bld (pid %d): found volume (ID %i)\0A\00", [52 x i8] zeroinitializer }, align 32
@scan_pool.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.40, ptr @.str.45, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scan_pool\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBI DBG bld (pid %d): scanning fastmap pool: size = %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad PEB in fastmap pool!\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to read EC header! PEB:%i err:%i\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad image seq: 0x%x, expected: 0x%x\00", [60 x i8] zeroinitializer }, align 32
@scan_pool.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.40, ptr @.str.49, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBI DBG bld (pid %d): Adding PEB to free: %i\0A\00", [50 x i8] zeroinitializer }, align 32
@scan_pool.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.44, ptr @.str.40, ptr @.str.50, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBI DBG bld (pid %d): Found non empty PEB:%i in pool\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fastmap pool PEBs contains damaged PEBs!\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"orphaned volume in fastmap pool!\00", [63 x i8] zeroinitializer }, align 32
@process_pool_aeb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.53, ptr @.str.40, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"process_pool_aeb\00", [47 x i8] zeroinitializer }, align 32
@process_pool_aeb._entry_ptr = internal global ptr @process_pool_aeb._entry, section ".printk_index", align 4
@update_vol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.54, ptr @.str.40, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"update_vol\00", [21 x i8] zeroinitializer }, align 32
@update_vol._entry_ptr = internal global ptr @update_vol._entry, section ".printk_index", align 4
@update_vol.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.54, ptr @.str.40, ptr @.str.55, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBI DBG bld (pid %d): vol %i: AEB %i's PEB %i is the newer\0A\00", [36 x i8] zeroinitializer }, align 32
@update_vol.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.54, ptr @.str.40, ptr @.str.56, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBI DBG bld (pid %d): vol %i: AEB %i's PEB %i is old, dropping it\0A\00", [61 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_write_fastmap\00", [46 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr = internal global ptr @ubi_write_fastmap._entry, section ".printk_index", align 4
@ubi_write_fastmap._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.59 = internal global ptr @ubi_write_fastmap._entry.58, section ".printk_index", align 4
@ubi_write_fastmap._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.61 = internal global ptr @ubi_write_fastmap._entry.60, section ".printk_index", align 4
@ubi_write_fastmap._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.63 = internal global ptr @ubi_write_fastmap._entry.62, section ".printk_index", align 4
@ubi_write_fastmap._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.65 = internal global ptr @ubi_write_fastmap._entry.64, section ".printk_index", align 4
@ubi_write_fastmap._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.67 = internal global ptr @ubi_write_fastmap._entry.66, section ".printk_index", align 4
@ubi_write_fastmap._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.69 = internal global ptr @ubi_write_fastmap._entry.68, section ".printk_index", align 4
@ubi_write_fastmap._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.71 = internal global ptr @ubi_write_fastmap._entry.70, section ".printk_index", align 4
@ubi_write_fastmap._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.73 = internal global ptr @ubi_write_fastmap._entry.72, section ".printk_index", align 4
@ubi_write_fastmap._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.75 = internal global ptr @ubi_write_fastmap._entry.74, section ".printk_index", align 4
@ubi_write_fastmap._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.77 = internal global ptr @ubi_write_fastmap._entry.76, section ".printk_index", align 4
@ubi_write_fastmap._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.79 = internal global ptr @ubi_write_fastmap._entry.78, section ".printk_index", align 4
@ubi_write_fastmap.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.57, ptr @.str.40, ptr @.str.80, i8 1, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBI DBG bld (pid %d): writing fastmap SB to PEB %i\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to write vid_hdr to fastmap SB!\00", [57 x i8] zeroinitializer }, align 32
@ubi_write_fastmap.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.57, ptr @.str.40, ptr @.str.82, i8 1, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBI DBG bld (pid %d): writing fastmap data to PEB %i sqnum %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to write vid_hdr to PEB %i!\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to write fastmap to PEB %i!\00", [61 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.57, ptr @.str.40, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_write_fastmap._entry_ptr.86 = internal global ptr @ubi_write_fastmap._entry.85, section ".printk_index", align 4
@ubi_write_fastmap.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.57, ptr @.str.40, ptr @.str.87, i8 1, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UBI DBG bld (pid %d): fastmap written!\0A\00", [56 x i8] zeroinitializer }, align 32
@ubi_io_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.88, ptr @.str.26, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_io_write_data\00", [46 x i8] zeroinitializer }, align 32
@ubi_io_write_data._entry_ptr = internal global ptr @ubi_io_write_data._entry, section ".printk_index", align 4
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"self-check failed for PEB %d, fastmap didn't see it\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"switch to read-only mode\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 902, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 909, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 917, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 925, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 956, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 964, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 981, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 989, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 996, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1004, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1018, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1032, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1033, i32 16 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1070, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1071, i32 15 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1072, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1082, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1570, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1584, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1596, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1636, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1657, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1686, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1690, i32 16 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1136, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 580, i32 16 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 590, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 600, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 611, i32 16 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 616, i32 16 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 623, i32 16 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 629, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 689, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 702, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 719, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 739, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 750, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 772, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 192, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 422, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 435, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 442, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 456, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 466, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 474, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 500, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 352, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 357, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 268, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 290, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 302, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1171, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1175, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1221, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1232, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1245, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1257, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1270, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1278, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1288, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1303, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1312, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1317, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1338, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1341, i32 16 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1358, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1362, i32 17 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1372, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1378, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1382, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1148, i32 2 }
@___asan_gen_.347 = private constant [29 x i8] c"../drivers/mtd/ubi/fastmap.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 68, i32 17 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [25 x i8] c"../drivers/mtd/ubi/ubi.h\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1160, i32 17 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @process_pool_aeb._entry, ptr @process_pool_aeb._entry_ptr, ptr @ubi_attach_fastmap._entry, ptr @ubi_attach_fastmap._entry_ptr, ptr @ubi_io_read_data._entry, ptr @ubi_io_read_data._entry_ptr, ptr @ubi_io_write_data._entry, ptr @ubi_io_write_data._entry_ptr, ptr @ubi_write_fastmap._entry, ptr @ubi_write_fastmap._entry.58, ptr @ubi_write_fastmap._entry.60, ptr @ubi_write_fastmap._entry.62, ptr @ubi_write_fastmap._entry.64, ptr @ubi_write_fastmap._entry.66, ptr @ubi_write_fastmap._entry.68, ptr @ubi_write_fastmap._entry.70, ptr @ubi_write_fastmap._entry.72, ptr @ubi_write_fastmap._entry.74, ptr @ubi_write_fastmap._entry.76, ptr @ubi_write_fastmap._entry.78, ptr @ubi_write_fastmap._entry.85, ptr @ubi_write_fastmap._entry_ptr, ptr @ubi_write_fastmap._entry_ptr.59, ptr @ubi_write_fastmap._entry_ptr.61, ptr @ubi_write_fastmap._entry_ptr.63, ptr @ubi_write_fastmap._entry_ptr.65, ptr @ubi_write_fastmap._entry_ptr.67, ptr @ubi_write_fastmap._entry_ptr.69, ptr @ubi_write_fastmap._entry_ptr.71, ptr @ubi_write_fastmap._entry_ptr.73, ptr @ubi_write_fastmap._entry_ptr.75, ptr @ubi_write_fastmap._entry_ptr.77, ptr @ubi_write_fastmap._entry_ptr.79, ptr @ubi_write_fastmap._entry_ptr.86, ptr @update_vol._entry, ptr @update_vol._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_attach_fastmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_pool_aeb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_vol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_write_fastmap._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ubi_calc_fm_size(ptr nocapture noundef readonly %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %0 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peb_count, align 8
  %add3 = mul i32 %1, 12
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  %sub = add i32 %3, 6543
  %add6 = add i32 %sub, %add3
  %4 = urem i32 %add6, %3
  %mul7 = sub i32 %add6, %4
  ret i32 %mul7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_scan_fastmap(ptr noundef %ubi, ptr noundef %ai, ptr noundef readonly %scan_ai) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fastmap.i = getelementptr inbounds %struct.ubi_attach_info, ptr %scan_ai, i32 0, i32 5
  %0 = ptrtoint ptr %fastmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn16.i = load ptr, ptr %fastmap.i, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %fastmap.i
  br i1 %cmp.not17.i, label %entry.cleanup211_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup211_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup211

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn16.i, %entry.for.body.i_crit_edge ]
  %ret.019.i = phi i32 [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %max_sqnum.018.i = phi i64 [ %max_sqnum.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %vol_id.i = getelementptr i8, ptr %.pn20.i, i32 -24
  %1 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vol_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %2)
  %cmp2.i = icmp eq i32 %2, 2147479552
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sqnum.i = getelementptr i8, ptr %.pn20.i, i32 -8
  %3 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sqnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %max_sqnum.018.i)
  %cmp3.i = icmp ugt i64 %4, %max_sqnum.018.i
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %pnum.i = getelementptr i8, ptr %.pn20.i, i32 -28
  %5 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pnum.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %max_sqnum.1.i = phi i64 [ %4, %if.then.i ], [ %max_sqnum.018.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %max_sqnum.018.i, %for.body.i.for.inc.i_crit_edge ]
  %ret.1.i = phi i32 [ %6, %if.then.i ], [ %ret.019.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %ret.019.i, %for.body.i.for.inc.i_crit_edge ]
  %7 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fastmap.i
  br i1 %cmp.not.i, label %find_fm_anchor.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

find_fm_anchor.exit:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp = icmp slt i32 %ret.1.i, 0
  br i1 %cmp, label %find_fm_anchor.exit.cleanup211_crit_edge, label %for.cond.preheader

find_fm_anchor.exit.cleanup211_crit_edge:         ; preds = %find_fm_anchor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup211

for.cond.preheader:                               ; preds = %find_fm_anchor.exit
  %8 = ptrtoint ptr %fastmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn456 = load ptr, ptr %fastmap.i, align 4
  %cmp2.not457 = icmp eq ptr %.pn456, %fastmap.i
  br i1 %cmp2.not457, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fastmap7 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn458 = phi ptr [ %.pn456, %for.body.lr.ph ], [ %.pn, %list_add.exit.for.body_crit_edge ]
  %aeb.0 = getelementptr i8, ptr %.pn458, i32 -32
  %pnum.i391 = getelementptr i8, ptr %.pn458, i32 -28
  %9 = ptrtoint ptr %pnum.i391 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pnum.i391, align 4
  %11 = ptrtoint ptr %aeb.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aeb.0, align 8
  %call.i = tail call ptr @ubi_alloc_aeb(ptr noundef %ai, i32 noundef %10, i32 noundef %12) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.cleanup211_crit_edge, label %if.end5

for.body.cleanup211_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup211

if.end5:                                          ; preds = %for.body
  %vol_id.i392 = getelementptr i8, ptr %.pn458, i32 -24
  %13 = ptrtoint ptr %vol_id.i392 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vol_id.i392, align 8
  %vol_id1.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %vol_id1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vol_id1.i, align 8
  %sqnum.i393 = getelementptr i8, ptr %.pn458, i32 -8
  %16 = ptrtoint ptr %sqnum.i393 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sqnum.i393, align 8
  %sqnum2.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %sqnum2.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sqnum2.i, align 8
  %lnum.i = getelementptr i8, ptr %.pn458, i32 -20
  %19 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lnum.i, align 4
  %lnum3.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %lnum3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %lnum3.i, align 4
  %scrub.i = getelementptr i8, ptr %.pn458, i32 -16
  %22 = ptrtoint ptr %scrub.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %scrub.i, align 8
  %bf.lshr.i = and i8 %bf.load.i, -128
  %scrub4.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %scrub4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load5.i = load i8, ptr %scrub4.i, align 8
  %bf.clear.i = and i8 %bf.load5.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.lshr.i
  store i8 %bf.set.i, ptr %scrub4.i, align 8
  %bf.load6.i = load i8, ptr %scrub.i, align 8
  %bf.clear8.i = and i8 %bf.load6.i, 64
  %bf.clear14.i = and i8 %bf.set.i, -65
  %bf.set15.i = or i8 %bf.clear14.i, %bf.clear8.i
  store i8 %bf.set15.i, ptr %scrub4.i, align 8
  %u6 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %fastmap7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fastmap7, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u6, ptr noundef %fastmap7, ptr noundef %25) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %u6, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %u6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %u6, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fastmap7, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %fastmap7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %u6, ptr %fastmap7, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  %30 = ptrtoint ptr %.pn458 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn458, align 4
  %cmp2.not = icmp eq ptr %.pn, %fastmap.i
  br i1 %cmp2.not, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %fm_protect = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 30
  tail call void @down_write(ptr noundef %fm_protect) #11
  %fm_buf = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 31
  %31 = ptrtoint ptr %fm_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fm_buf, align 4
  %fm_size13 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 32
  %33 = ptrtoint ptr %fm_size13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fm_size13, align 8
  %35 = call ptr @memset(ptr %32, i32 0, i32 %34)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 312) #14
  %tobool15.not = icmp eq ptr %call7.i, null
  br i1 %tobool15.not, label %for.end.out.thread_crit_edge, label %if.end17

for.end.out.thread_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end17:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 268) #14
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.out.thread.sink.split_crit_edge, label %if.end21

if.end17.out.thread.sink.split_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread.sink.split

if.end21:                                         ; preds = %if.end17
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %38 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %leb_start.i, align 4
  %call6.i = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef nonnull %call7.i, i32 noundef %ret.1.i, i32 noundef %39, i32 noundef 312) #11
  %40 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6.i, label %if.end21.out_crit_edge [
    i32 5, label %if.then27
    i32 0, label %if.end21.if.end29_crit_edge
  ]

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %to_be_tortured = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %to_be_tortured to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %to_be_tortured, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end21.if.end29_crit_edge
  %42 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2064766623, i32 %43)
  %cmp30.not = icmp eq i32 %43, 2064766623
  br i1 %cmp30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str, i32 noundef %43, i32 noundef 2064766623) #11
  br label %out

if.end33:                                         ; preds = %if.end29
  %version = getelementptr inbounds %struct.ubi_fm_sb, ptr %call7.i, i32 0, i32 1
  %44 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp34.not = icmp eq i8 %45, 1
  br i1 %cmp34.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef 1) #11
  br label %out

if.end39:                                         ; preds = %if.end33
  %used_blocks40 = getelementptr inbounds %struct.ubi_fm_sb, ptr %call7.i, i32 0, i32 4
  %46 = ptrtoint ptr %used_blocks40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %used_blocks40, align 4
  %48 = add i32 %47, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %48)
  %49 = icmp ult i32 %48, -32
  br i1 %49, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.2, i32 noundef %47) #11
  br label %out

if.end46:                                         ; preds = %if.end39
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %50 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %leb_size, align 8
  %mul = mul i32 %51, %47
  %52 = ptrtoint ptr %fm_size13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fm_size13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %53)
  %cmp48.not = icmp eq i32 %mul, %53
  br i1 %cmp48.not, label %if.end8.i.i, label %if.then50

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.3, i32 noundef %mul, i32 noundef %53) #11
  br label %out

if.end8.i.i:                                      ; preds = %if.end46
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %54 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ec_hdr_alsize, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %55, i32 noundef 3520) #15
  %tobool54.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool54.not, label %if.end8.i.i.out_crit_edge, label %if.end56

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end56:                                         ; preds = %if.end8.i.i
  %call57 = tail call fastcc ptr @ubi_alloc_vid_buf(ptr noundef %ubi)
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end56.free_hdr_crit_edge, label %for.body65.lr.ph

if.end56.free_hdr_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hdr

for.body65.lr.ph:                                 ; preds = %if.end56
  %56 = ptrtoint ptr %call57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call57, align 4
  %image_seq96 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i, i32 0, i32 6
  %image_seq97 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 8
  %vol_id127 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %57, i32 0, i32 5
  %sqnum134 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %57, i32 0, i32 13
  br label %for.body65

for.body65:                                       ; preds = %for.inc155.for.body65_crit_edge, %for.body65.lr.ph
  %sqnum.0461 = phi i64 [ 0, %for.body65.lr.ph ], [ %83, %for.inc155.for.body65_crit_edge ]
  %i.0460 = phi i32 [ 0, %for.body65.lr.ph ], [ %inc, %for.inc155.for.body65_crit_edge ]
  %arrayidx66 = getelementptr %struct.ubi_fm_sb, ptr %call7.i, i32 0, i32 5, i32 %i.0460
  %58 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx66, align 4
  %call67 = tail call i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %for.body65.free_hdr_crit_edge

for.body65.free_hdr_crit_edge:                    ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hdr

if.end70:                                         ; preds = %for.body65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0460)
  %cmp71 = icmp eq i32 %i.0460, 0
  %cmp71.not = xor i1 %cmp71, true
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %ret.1.i)
  %cmp74.not = icmp eq i32 %59, %ret.1.i
  %or.cond388 = select i1 %cmp71.not, i1 true, i1 %cmp74.not
  br i1 %or.cond388, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.4, i32 noundef %59, i32 noundef %ret.1.i) #11
  br label %free_hdr

if.end77:                                         ; preds = %if.end70
  %call78 = tail call i32 @ubi_io_read_ec_hdr(ptr noundef %ubi, i32 noundef %59, ptr noundef nonnull %call9.i.i, i32 noundef 0) #11
  %60 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call78, label %if.then83 [
    i32 5, label %if.then91
    i32 0, label %if.end77.if.end95_crit_edge
  ]

if.end77.if.end95_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.5, i32 noundef %i.0460, i32 noundef %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp84 = icmp sgt i32 %call78, 0
  %spec.select = select i1 %cmp84, i32 2, i32 %call78
  br label %free_hdr

if.then91:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx93 = getelementptr %struct.ubi_fastmap_layout, ptr %call7.i.i, i32 0, i32 1, i32 %i.0460
  %61 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %arrayidx93, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end77.if.end95_crit_edge
  %62 = ptrtoint ptr %image_seq96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %image_seq96, align 8
  %64 = ptrtoint ptr %image_seq97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %image_seq97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool98.not = icmp eq i32 %65, 0
  br i1 %tobool98.not, label %if.then99, label %if.end95.if.end101_crit_edge

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %image_seq97 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %image_seq97, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end95.if.end101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool102.not = icmp eq i32 %63, 0
  br i1 %tobool102.not, label %if.end101.if.end110_crit_edge, label %land.lhs.true103

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

land.lhs.true103:                                 ; preds = %if.end101
  %67 = ptrtoint ptr %image_seq97 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %image_seq97, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %68)
  %cmp105.not = icmp eq i32 %63, %68
  br i1 %cmp105.not, label %land.lhs.true103.if.end110_crit_edge, label %if.then107

land.lhs.true103.if.end110_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then107:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %image_seq96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %image_seq96, align 8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.6, i32 noundef %70, i32 noundef %68) #11
  br label %free_hdr

if.end110:                                        ; preds = %land.lhs.true103.if.end110_crit_edge, %if.end101.if.end110_crit_edge
  %call111 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %59, ptr noundef nonnull %call57, i32 noundef 0) #11
  %71 = zext i32 %call111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call111, label %if.then116 [
    i32 0, label %if.end110.if.end117_crit_edge
    i32 5, label %if.end110.if.end117_crit_edge637
  ]

if.end110.if.end117_crit_edge637:                 ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.end110.if.end117_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then116:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.7, i32 noundef %i.0460, i32 noundef %59) #11
  br label %free_hdr

if.end117:                                        ; preds = %if.end110.if.end117_crit_edge, %if.end110.if.end117_crit_edge637
  %72 = ptrtoint ptr %vol_id127 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %vol_id127, align 1
  br i1 %cmp71, label %if.then120, label %if.else126

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %73)
  %cmp121.not = icmp eq i32 %73, 2147479552
  br i1 %cmp121.not, label %if.then120.if.end133_crit_edge, label %if.then123

if.then120.if.end133_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then123:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.8, i32 noundef %73, i32 noundef 2147479552) #11
  br label %free_hdr

if.else126:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479553, i32 %73)
  %cmp128.not = icmp eq i32 %73, 2147479553
  br i1 %cmp128.not, label %if.else126.if.end133_crit_edge, label %if.then130

if.else126.if.end133_crit_edge:                   ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then130:                                       ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.9, i32 noundef %73, i32 noundef 2147479553) #11
  br label %free_hdr

if.end133:                                        ; preds = %if.else126.if.end133_crit_edge, %if.then120.if.end133_crit_edge
  %74 = ptrtoint ptr %sqnum134 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %sqnum134, align 1
  %76 = ptrtoint ptr %fm_buf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fm_buf, align 4
  %78 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %leb_size, align 8
  %mul142 = mul i32 %79, %i.0460
  %add.ptr143 = getelementptr i8, ptr %77, i32 %mul142
  %80 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %leb_start.i, align 4
  %call6.i398 = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %add.ptr143, i32 noundef %59, i32 noundef %81, i32 noundef %79) #11
  %82 = zext i32 %call6.i398 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call6.i398, label %if.then150 [
    i32 0, label %if.end133.for.inc155_crit_edge
    i32 5, label %if.end133.for.inc155_crit_edge638
  ]

if.end133.for.inc155_crit_edge638:                ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc155

if.end133.for.inc155_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc155

if.then150:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.10, i32 noundef %i.0460, i32 noundef %59, i32 noundef %call6.i398) #11
  br label %free_hdr

for.inc155:                                       ; preds = %if.end133.for.inc155_crit_edge, %if.end133.for.inc155_crit_edge638
  %83 = tail call i64 @llvm.umax.i64(i64 %sqnum.0461, i64 %75)
  %inc = add nuw nsw i32 %i.0460, 1
  %exitcond.not = icmp eq i32 %inc, %47
  br i1 %exitcond.not, label %for.end156, label %for.inc155.for.body65_crit_edge

for.inc155.for.body65_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body65

for.end156:                                       ; preds = %for.inc155
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  %84 = ptrtoint ptr %fm_buf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fm_buf, align 4
  %data_crc = getelementptr inbounds %struct.ubi_fm_sb, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %data_crc to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %data_crc, align 1
  store i32 0, ptr %data_crc, align 1
  %88 = load ptr, ptr %fm_buf, align 4
  %call160 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %88, i32 noundef %mul) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call160, i32 %87)
  %cmp161.not = icmp eq i32 %call160, %87
  br i1 %cmp161.not, label %if.end164, label %if.then163

if.then163:                                       ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.11) #11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.12, i32 noundef %87, i32 noundef %call160) #11
  br label %free_hdr

if.end164:                                        ; preds = %for.end156
  %sqnum165 = getelementptr inbounds %struct.ubi_fm_sb, ptr %85, i32 0, i32 7
  %89 = ptrtoint ptr %sqnum165 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %83, ptr %sqnum165, align 1
  %used_blocks166 = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %call7.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %used_blocks166 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %47, ptr %used_blocks166, align 8
  %call167 = tail call fastcc i32 @ubi_attach_fastmap(ptr noundef %ubi, ptr noundef %ai, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end164.for.body178_crit_edge, label %if.then169

if.end164.for.body178_crit_edge:                  ; preds = %if.end164
  br label %for.body178

if.then169:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp170 = icmp sgt i32 %call167, 0
  %spec.select390 = select i1 %cmp170, i32 2, i32 %call167
  br label %free_hdr

for.body178:                                      ; preds = %for.inc195.for.body178_crit_edge, %if.end164.for.body178_crit_edge
  %i.1463 = phi i32 [ %inc196, %for.inc195.for.body178_crit_edge ], [ 0, %if.end164.for.body178_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %91 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %call179 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %91, i32 noundef 3264) #11
  %tobool180.not = icmp eq ptr %call179, null
  br i1 %tobool180.not, label %while.cond.preheader, label %for.inc195

while.cond.preheader:                             ; preds = %for.body178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1463)
  %tobool182.not464 = icmp eq i32 %i.1463, 0
  br i1 %tobool182.not464, label %while.cond.preheader.free_hdr_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.free_hdr_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hdr

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.2465 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1463, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %i.2465, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %92 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %arrayidx184 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %dec
  %93 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx184, align 4
  tail call void @kmem_cache_free(ptr noundef %92, ptr noundef %94) #11
  %tobool182.not = icmp eq i32 %dec, 0
  br i1 %tobool182.not, label %while.body.free_hdr_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.free_hdr_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hdr

for.inc195:                                       ; preds = %for.body178
  %arrayidx187 = getelementptr %struct.ubi_fm_sb, ptr %85, i32 0, i32 5, i32 %i.1463
  %95 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %arrayidx187, align 1
  %pnum188 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call179, i32 0, i32 2
  %97 = ptrtoint ptr %pnum188 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %pnum188, align 8
  %arrayidx189 = getelementptr %struct.ubi_fm_sb, ptr %85, i32 0, i32 6, i32 %i.1463
  %98 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %arrayidx189, align 1
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %call179, i32 0, i32 1
  %100 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %ec, align 4
  %arrayidx191 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %i.1463
  %101 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call179, ptr %arrayidx191, align 4
  %inc196 = add nuw nsw i32 %i.1463, 1
  %exitcond499.not = icmp eq i32 %inc196, %47
  br i1 %exitcond499.not, label %ubi_free_vid_buf.exit, label %for.inc195.for.body178_crit_edge

for.inc195.for.body178_crit_edge:                 ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body178

ubi_free_vid_buf.exit:                            ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #13
  %fm198 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 26
  %102 = ptrtoint ptr %fm198 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i, ptr %fm198, align 8
  %max_pool_size = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %call7.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %max_pool_size to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_pool_size, align 4
  %max_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 3
  %105 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %max_size, align 4
  %max_wl_pool_size = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %call7.i.i, i32 0, i32 4
  %106 = ptrtoint ptr %max_wl_pool_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %max_wl_pool_size, align 8
  %max_size201 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 3
  %108 = ptrtoint ptr %max_size201 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %max_size201, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.13) #11
  %109 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_size, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.14, i32 noundef %110) #11
  %111 = ptrtoint ptr %max_size201 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_size201, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.15, i32 noundef %112) #11
  %fm_disabled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 25
  %113 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %fm_disabled, align 4
  %fast_attach = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 35
  %114 = ptrtoint ptr %fast_attach to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %fast_attach, align 4
  %buffer.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call57, i32 0, i32 1
  %115 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %116) #11
  tail call void @kfree(ptr noundef nonnull %call57) #11
  br label %out.thread.sink.split

out.thread.sink.split:                            ; preds = %ubi_free_vid_buf.exit, %if.end17.out.thread.sink.split_crit_edge
  %retval.1.i.i405.sink = phi ptr [ %call9.i.i, %ubi_free_vid_buf.exit ], [ %call7.i, %if.end17.out.thread.sink.split_crit_edge ]
  %ret.4.ph.ph = phi i32 [ 0, %ubi_free_vid_buf.exit ], [ -12, %if.end17.out.thread.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %retval.1.i.i405.sink) #11
  br label %out.thread

out.thread:                                       ; preds = %out.thread.sink.split, %for.end.out.thread_crit_edge
  %ret.4.ph = phi i32 [ -12, %for.end.out.thread_crit_edge ], [ %ret.4.ph.ph, %out.thread.sink.split ]
  tail call void @up_write(ptr noundef %fm_protect) #11
  br label %cleanup211

out:                                              ; preds = %free_hdr, %if.end8.i.i.out_crit_edge, %if.then50, %if.then45, %if.then36, %if.then31, %if.end21.out_crit_edge
  %ret.6 = phi i32 [ 2, %if.then31 ], [ 2, %if.then36 ], [ 2, %if.then45 ], [ 2, %if.then50 ], [ %ret.5, %free_hdr ], [ %call6.i, %if.end21.out_crit_edge ], [ -12, %if.end8.i.i.out_crit_edge ]
  %fmsb.1 = phi ptr [ %call7.i, %if.then31 ], [ %call7.i, %if.then36 ], [ %call7.i, %if.then45 ], [ %call7.i, %if.then50 ], [ %fmsb.0, %free_hdr ], [ %call7.i, %if.end21.out_crit_edge ], [ %call7.i, %if.end8.i.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %fmsb.1) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  tail call void @up_write(ptr noundef %fm_protect) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.6)
  %cmp207 = icmp eq i32 %ret.6, 2
  br i1 %cmp207, label %if.then209, label %out.cleanup211_crit_edge

out.cleanup211_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup211

if.then209:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.16) #11
  br label %cleanup211

free_hdr:                                         ; preds = %while.body.free_hdr_crit_edge, %while.cond.preheader.free_hdr_crit_edge, %if.then169, %if.then163, %if.then150, %if.then130, %if.then123, %if.then116, %if.then107, %if.then83, %if.then76, %for.body65.free_hdr_crit_edge, %if.end56.free_hdr_crit_edge
  %ret.5 = phi i32 [ 2, %if.then163 ], [ -12, %if.end56.free_hdr_crit_edge ], [ %spec.select390, %if.then169 ], [ 2, %if.then130 ], [ %call6.i398, %if.then150 ], [ 2, %if.then123 ], [ %call111, %if.then116 ], [ 2, %if.then107 ], [ %spec.select, %if.then83 ], [ 2, %if.then76 ], [ -12, %while.cond.preheader.free_hdr_crit_edge ], [ -12, %while.body.free_hdr_crit_edge ], [ 2, %for.body65.free_hdr_crit_edge ]
  %fmsb.0 = phi ptr [ null, %if.then163 ], [ %call7.i, %if.end56.free_hdr_crit_edge ], [ null, %if.then169 ], [ %call7.i, %if.then130 ], [ %call7.i, %if.then150 ], [ %call7.i, %if.then123 ], [ %call7.i, %if.then116 ], [ %call7.i, %if.then107 ], [ %call7.i, %if.then83 ], [ %call7.i, %if.then76 ], [ null, %while.cond.preheader.free_hdr_crit_edge ], [ null, %while.body.free_hdr_crit_edge ], [ %call7.i, %for.body65.free_hdr_crit_edge ]
  tail call fastcc void @ubi_free_vid_buf(ptr noundef %call57)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %out

cleanup211:                                       ; preds = %if.then209, %out.cleanup211_crit_edge, %out.thread, %for.body.cleanup211_crit_edge, %find_fm_anchor.exit.cleanup211_crit_edge, %entry.cleanup211_crit_edge
  %retval.2 = phi i32 [ 1, %find_fm_anchor.exit.cleanup211_crit_edge ], [ 2, %if.then209 ], [ %ret.6, %out.cleanup211_crit_edge ], [ %ret.4.ph, %out.thread ], [ 1, %entry.cleanup211_crit_edge ], [ -12, %for.body.cleanup211_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ubi_alloc_vid_buf(ptr nocapture noundef readonly %ubi) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vid_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %1 = ptrtoint ptr %vid_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vid_hdr_alsize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #15
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.then3, label %ubi_init_vid_buf.exit

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

ubi_init_vid_buf.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %vid_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vid_hdr_alsize, align 4
  %5 = call ptr @memset(ptr %call9.i, i32 0, i32 %4)
  %buffer.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %buffer.i, align 4
  %vid_hdr_shift.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %7 = ptrtoint ptr %vid_hdr_shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vid_hdr_shift.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 %8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ubi_init_vid_buf.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %ubi_init_vid_buf.exit ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_is_bad(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_ec_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_vid_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ubi_attach_fastmap(ptr noundef %ubi, ptr noundef %ai, ptr nocapture noundef %fm) unnamed_addr #2 align 64 {
entry:
  %used = alloca %struct.list_head, align 4
  %free = alloca %struct.list_head, align 4
  %max_sqnum = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %used) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %used, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free) #11
  %1 = getelementptr inbounds %struct.list_head, ptr %free, i32 0, i32 1
  %fm_size1 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 32
  %2 = ptrtoint ptr %fm_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fm_size1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_sqnum) #11
  %4 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %max_sqnum, align 8
  %fm_buf = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 31
  %5 = ptrtoint ptr %fm_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fm_buf, align 4
  %7 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %used, ptr %used, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %used, ptr %0, align 4
  %9 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %free, ptr %free, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free, ptr %1, align 4
  %min_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 15
  %11 = ptrtoint ptr %min_ec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2147483647, ptr %min_ec, align 8
  %sqnum = getelementptr inbounds %struct.ubi_fm_sb, ptr %6, i32 0, i32 7
  %12 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %sqnum, align 1
  %max_sqnum2 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 17
  %14 = ptrtoint ptr %max_sqnum2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %max_sqnum2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 345, i32 %3)
  %cmp4 = icmp ult i32 %3, 345
  br i1 %cmp4, label %entry.fail_crit_edge, label %if.end6

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end6:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %6, i32 312
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -726126857, i32 %16)
  %cmp7.not = icmp eq i32 %16, -726126857
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.27, i32 noundef %16, i32 noundef -726126857) #11
  br label %fail

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1393, i32 %3)
  %cmp13 = icmp ult i32 %3, 1393
  br i1 %cmp13, label %if.end10.fail_crit_edge, label %if.end15

if.end10.fail_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end15:                                         ; preds = %if.end10
  %add.ptr11 = getelementptr i8, ptr %6, i32 344
  %17 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1739541768, i32 %18)
  %cmp17.not = icmp eq i32 %18, 1739541768
  br i1 %cmp17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.28, i32 noundef %18, i32 noundef 1739541768) #11
  br label %fail

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2441, i32 %3)
  %cmp23 = icmp ult i32 %3, 2441
  br i1 %cmp23, label %if.end20.fail_crit_edge, label %if.end25

if.end20.fail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end25:                                         ; preds = %if.end20
  %add.ptr21 = getelementptr i8, ptr %6, i32 1392
  %19 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1739541768, i32 %20)
  %cmp27.not = icmp eq i32 %20, 1739541768
  br i1 %cmp27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.29, i32 noundef %20, i32 noundef 1739541768) #11
  br label %fail

if.end30:                                         ; preds = %if.end25
  %size = getelementptr i8, ptr %6, i32 348
  %21 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %size, align 1
  %conv = zext i16 %22 to i32
  %size31 = getelementptr i8, ptr %6, i32 1396
  %23 = ptrtoint ptr %size31 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %size31, align 1
  %conv32 = zext i16 %24 to i32
  %max_size = getelementptr i8, ptr %6, i32 350
  %25 = ptrtoint ptr %max_size to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %max_size, align 1
  %conv33 = zext i16 %26 to i32
  %max_pool_size = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %fm, i32 0, i32 3
  %27 = ptrtoint ptr %max_pool_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv33, ptr %max_pool_size, align 4
  %max_size34 = getelementptr i8, ptr %6, i32 1398
  %28 = ptrtoint ptr %max_size34 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %max_size34, align 1
  %conv35 = zext i16 %29 to i32
  %max_wl_pool_size = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %fm, i32 0, i32 4
  %30 = ptrtoint ptr %max_wl_pool_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv35, ptr %max_wl_pool_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %22)
  %cmp36 = icmp ugt i16 %22, 256
  br i1 %cmp36, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.30, i32 noundef %conv) #11
  br label %fail

if.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %24)
  %cmp42 = icmp ugt i16 %24, 256
  br i1 %cmp42, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.31, i32 noundef %conv32) #11
  br label %fail

if.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %26)
  %cmp50 = icmp ugt i16 %26, 256
  br i1 %cmp50, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.32, i32 noundef %conv33) #11
  br label %fail

if.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %29)
  %cmp60 = icmp ugt i16 %29, 256
  br i1 %cmp60, label %if.then66, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end58
  %free_peb_count = getelementptr i8, ptr %6, i32 316
  %31 = ptrtoint ptr %free_peb_count to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %free_peb_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp69679.not = icmp eq i32 %32, 0
  br i1 %cmp69679.not, label %for.cond.preheader.for.cond78.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond78.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond78.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %free77 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  br label %for.body

if.then66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.33, i32 noundef %conv35) #11
  br label %fail

for.cond78.preheader:                             ; preds = %if.end76.for.cond78.preheader_crit_edge, %for.cond.preheader.for.cond78.preheader_crit_edge
  %fm_pos.0.lcssa = phi i32 [ 2440, %for.cond.preheader.for.cond78.preheader_crit_edge ], [ %add72, %if.end76.for.cond78.preheader_crit_edge ]
  %used_peb_count = getelementptr i8, ptr %6, i32 320
  %33 = ptrtoint ptr %used_peb_count to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %used_peb_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp79682.not = icmp eq i32 %34, 0
  br i1 %cmp79682.not, label %for.cond78.preheader.for.cond94.preheader_crit_edge, label %for.cond78.preheader.for.body81_crit_edge

for.cond78.preheader.for.body81_crit_edge:        ; preds = %for.cond78.preheader
  br label %for.body81

for.cond78.preheader.for.cond94.preheader_crit_edge: ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond94.preheader

for.body:                                         ; preds = %if.end76.for.body_crit_edge, %for.body.lr.ph
  %i.0681 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end76.for.body_crit_edge ]
  %fm_pos.0680 = phi i32 [ 2440, %for.body.lr.ph ], [ %add72, %if.end76.for.body_crit_edge ]
  %add72 = add i32 %fm_pos.0680, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %3)
  %cmp73.not = icmp ult i32 %add72, %3
  br i1 %cmp73.not, label %if.end76, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end76:                                         ; preds = %for.body
  %add.ptr71 = getelementptr i8, ptr %6, i32 %fm_pos.0680
  %35 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr71, align 1
  %ec = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr71, i32 0, i32 1
  %37 = ptrtoint ptr %ec to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ec, align 1
  call fastcc void @add_aeb(ptr noundef %ai, ptr noundef %free77, i32 noundef %36, i32 noundef %38, i32 noundef 0)
  %inc = add nuw i32 %i.0681, 1
  %39 = ptrtoint ptr %free_peb_count to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %free_peb_count, align 1
  %cmp69 = icmp ult i32 %inc, %40
  br i1 %cmp69, label %if.end76.for.body_crit_edge, label %if.end76.for.cond78.preheader_crit_edge

if.end76.for.cond78.preheader_crit_edge:          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond78.preheader

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond94.preheader:                             ; preds = %if.end87.for.cond94.preheader_crit_edge, %for.cond78.preheader.for.cond94.preheader_crit_edge
  %fm_pos.1.lcssa = phi i32 [ %fm_pos.0.lcssa, %for.cond78.preheader.for.cond94.preheader_crit_edge ], [ %add83, %if.end87.for.cond94.preheader_crit_edge ]
  %scrub_peb_count = getelementptr i8, ptr %6, i32 324
  %41 = ptrtoint ptr %scrub_peb_count to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %scrub_peb_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp95686.not = icmp eq i32 %42, 0
  br i1 %cmp95686.not, label %for.cond94.preheader.for.cond110.preheader_crit_edge, label %for.cond94.preheader.for.body97_crit_edge

for.cond94.preheader.for.body97_crit_edge:        ; preds = %for.cond94.preheader
  br label %for.body97

for.cond94.preheader.for.cond110.preheader_crit_edge: ; preds = %for.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond110.preheader

for.body81:                                       ; preds = %if.end87.for.body81_crit_edge, %for.cond78.preheader.for.body81_crit_edge
  %i.1684 = phi i32 [ %inc92, %if.end87.for.body81_crit_edge ], [ 0, %for.cond78.preheader.for.body81_crit_edge ]
  %fm_pos.1683 = phi i32 [ %add83, %if.end87.for.body81_crit_edge ], [ %fm_pos.0.lcssa, %for.cond78.preheader.for.body81_crit_edge ]
  %add83 = add i32 %fm_pos.1683, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add83, i32 %3)
  %cmp84.not = icmp ult i32 %add83, %3
  br i1 %cmp84.not, label %if.end87, label %for.body81.fail_crit_edge

for.body81.fail_crit_edge:                        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end87:                                         ; preds = %for.body81
  %add.ptr82 = getelementptr i8, ptr %6, i32 %fm_pos.1683
  %43 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %add.ptr82, align 1
  %ec89 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr82, i32 0, i32 1
  %45 = ptrtoint ptr %ec89 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %ec89, align 1
  call fastcc void @add_aeb(ptr noundef %ai, ptr noundef nonnull %used, i32 noundef %44, i32 noundef %46, i32 noundef 0)
  %inc92 = add nuw i32 %i.1684, 1
  %47 = ptrtoint ptr %used_peb_count to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %used_peb_count, align 1
  %cmp79 = icmp ult i32 %inc92, %48
  br i1 %cmp79, label %if.end87.for.body81_crit_edge, label %if.end87.for.cond94.preheader_crit_edge

if.end87.for.cond94.preheader_crit_edge:          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond94.preheader

if.end87.for.body81_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81

for.cond110.preheader:                            ; preds = %if.end103.for.cond110.preheader_crit_edge, %for.cond94.preheader.for.cond110.preheader_crit_edge
  %fm_pos.2.lcssa = phi i32 [ %fm_pos.1.lcssa, %for.cond94.preheader.for.cond110.preheader_crit_edge ], [ %add99, %if.end103.for.cond110.preheader_crit_edge ]
  %erase_peb_count = getelementptr i8, ptr %6, i32 332
  %49 = ptrtoint ptr %erase_peb_count to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %erase_peb_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp111690.not = icmp eq i32 %50, 0
  br i1 %cmp111690.not, label %for.cond110.preheader.for.end125_crit_edge, label %for.body113.lr.ph

for.cond110.preheader.for.end125_crit_edge:       ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end125

for.body113.lr.ph:                                ; preds = %for.cond110.preheader
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  br label %for.body113

for.body97:                                       ; preds = %if.end103.for.body97_crit_edge, %for.cond94.preheader.for.body97_crit_edge
  %i.2688 = phi i32 [ %inc108, %if.end103.for.body97_crit_edge ], [ 0, %for.cond94.preheader.for.body97_crit_edge ]
  %fm_pos.2687 = phi i32 [ %add99, %if.end103.for.body97_crit_edge ], [ %fm_pos.1.lcssa, %for.cond94.preheader.for.body97_crit_edge ]
  %add99 = add i32 %fm_pos.2687, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add99, i32 %3)
  %cmp100.not = icmp ult i32 %add99, %3
  br i1 %cmp100.not, label %if.end103, label %for.body97.fail_crit_edge

for.body97.fail_crit_edge:                        ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end103:                                        ; preds = %for.body97
  %add.ptr98 = getelementptr i8, ptr %6, i32 %fm_pos.2687
  %51 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %add.ptr98, align 1
  %ec105 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr98, i32 0, i32 1
  %53 = ptrtoint ptr %ec105 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %ec105, align 1
  call fastcc void @add_aeb(ptr noundef %ai, ptr noundef nonnull %used, i32 noundef %52, i32 noundef %54, i32 noundef 1)
  %inc108 = add nuw i32 %i.2688, 1
  %55 = ptrtoint ptr %scrub_peb_count to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %scrub_peb_count, align 1
  %cmp95 = icmp ult i32 %inc108, %56
  br i1 %cmp95, label %if.end103.for.body97_crit_edge, label %if.end103.for.cond110.preheader_crit_edge

if.end103.for.cond110.preheader_crit_edge:        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond110.preheader

if.end103.for.body97_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body97

for.body113:                                      ; preds = %if.end119.for.body113_crit_edge, %for.body113.lr.ph
  %i.3692 = phi i32 [ 0, %for.body113.lr.ph ], [ %inc124, %if.end119.for.body113_crit_edge ]
  %fm_pos.3691 = phi i32 [ %fm_pos.2.lcssa, %for.body113.lr.ph ], [ %add115, %if.end119.for.body113_crit_edge ]
  %add115 = add i32 %fm_pos.3691, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add115, i32 %3)
  %cmp116.not = icmp ult i32 %add115, %3
  br i1 %cmp116.not, label %if.end119, label %for.body113.fail_crit_edge

for.body113.fail_crit_edge:                       ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end119:                                        ; preds = %for.body113
  %add.ptr114 = getelementptr i8, ptr %6, i32 %fm_pos.3691
  %57 = ptrtoint ptr %add.ptr114 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %add.ptr114, align 1
  %ec121 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr114, i32 0, i32 1
  %59 = ptrtoint ptr %ec121 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %ec121, align 1
  call fastcc void @add_aeb(ptr noundef %ai, ptr noundef %erase, i32 noundef %58, i32 noundef %60, i32 noundef 1)
  %inc124 = add nuw i32 %i.3692, 1
  %61 = ptrtoint ptr %erase_peb_count to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %erase_peb_count, align 1
  %cmp111 = icmp ult i32 %inc124, %62
  br i1 %cmp111, label %if.end119.for.body113_crit_edge, label %if.end119.for.end125_crit_edge

if.end119.for.end125_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end125

if.end119.for.body113_crit_edge:                  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body113

for.end125:                                       ; preds = %if.end119.for.end125_crit_edge, %for.cond110.preheader.for.end125_crit_edge
  %fm_pos.3.lcssa = phi i32 [ %fm_pos.2.lcssa, %for.cond110.preheader.for.end125_crit_edge ], [ %add115, %if.end119.for.end125_crit_edge ]
  %ec_sum = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 19
  %63 = ptrtoint ptr %ec_sum to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ec_sum, align 8
  %ec_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 20
  %65 = ptrtoint ptr %ec_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ec_count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %64)
  %cmp164.i.i = icmp ult i64 %64, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !196

if.then168.i.i:                                   ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i.i = trunc i64 %64 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %66
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #13
  %67 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %66, i64 %64) #17, !srcloc !197
  %asmresult1.i.i.i = extractvalue { i64, i64 } %67, 1
  %extract.t649 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t649, %if.else174.i.i ]
  %mean_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 18
  %68 = ptrtoint ptr %mean_ec to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %dividend.addr.0.i.i.off0, ptr %mean_ec, align 8
  %bad_peb_count = getelementptr i8, ptr %6, i32 328
  %69 = ptrtoint ptr %bad_peb_count to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %bad_peb_count, align 1
  %bad_peb_count128 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 9
  %71 = ptrtoint ptr %bad_peb_count128 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %bad_peb_count128, align 8
  %vol_count = getelementptr i8, ptr %6, i32 336
  %72 = ptrtoint ptr %vol_count to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %vol_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp130698.not = icmp eq i32 %73, 0
  br i1 %cmp130698.not, label %div_u64.exit.for.end230_crit_edge, label %for.body132.lr.ph

div_u64.exit.for.end230_crit_edge:                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end230

for.body132.lr.ph:                                ; preds = %div_u64.exit
  %vols_found = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 11
  %highest_vol_id = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 12
  br label %for.body132

for.body132:                                      ; preds = %for.inc228.for.body132_crit_edge, %for.body132.lr.ph
  %i.4700 = phi i32 [ 0, %for.body132.lr.ph ], [ %inc229, %for.inc228.for.body132_crit_edge ]
  %fm_pos.4699 = phi i32 [ %fm_pos.3.lcssa, %for.body132.lr.ph ], [ %add165, %for.inc228.for.body132_crit_edge ]
  %add.ptr133 = getelementptr i8, ptr %6, i32 %fm_pos.4699
  %add134 = add i32 %fm_pos.4699, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add134, i32 %3)
  %cmp135.not = icmp ult i32 %add134, %3
  br i1 %cmp135.not, label %if.end138, label %for.body132.fail_crit_edge

for.body132.fail_crit_edge:                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end138:                                        ; preds = %for.body132
  %74 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %add.ptr133, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97055023, i32 %75)
  %cmp140.not = icmp eq i32 %75, -97055023
  br i1 %cmp140.not, label %if.end144, label %if.then142

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.34, i32 noundef %75, i32 noundef -97055023) #11
  br label %fail

if.end144:                                        ; preds = %if.end138
  %vol_id = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr133, i32 0, i32 1
  %76 = ptrtoint ptr %vol_id to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %vol_id, align 1
  %used_ebs = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr133, i32 0, i32 5
  %78 = ptrtoint ptr %used_ebs to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %used_ebs, align 1
  %data_pad = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr133, i32 0, i32 4
  %80 = ptrtoint ptr %data_pad to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %data_pad, align 1
  %vol_type = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr133, i32 0, i32 2
  %82 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vol_type, align 1
  %last_eb_bytes = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr133, i32 0, i32 6
  %84 = ptrtoint ptr %last_eb_bytes to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %last_eb_bytes, align 1
  %call145 = call fastcc ptr @add_vol(ptr noundef %ai, i32 noundef %77, i32 noundef %79, i32 noundef %81, i8 noundef zeroext %83, i32 noundef %85)
  %cmp.i = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then147, label %if.end154

if.then147:                                       ; preds = %if.end144
  %cmp149 = icmp eq ptr %call145, inttoptr (i32 -17 to ptr)
  br i1 %cmp149, label %if.then151, label %if.then147.fail_crit_edge

if.then147.fail_crit_edge:                        ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then151:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %vol_id to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %vol_id, align 1
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.35, i32 noundef %87) #11
  br label %fail

if.end154:                                        ; preds = %if.end144
  %88 = ptrtoint ptr %vols_found to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vols_found, align 8
  %inc155 = add i32 %89, 1
  store i32 %inc155, ptr %vols_found, align 8
  %90 = ptrtoint ptr %highest_vol_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %highest_vol_id, align 4
  %92 = ptrtoint ptr %vol_id to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %vol_id, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp157 = icmp ult i32 %91, %93
  br i1 %cmp157, label %if.then159, label %if.end154.if.end162_crit_edge

if.end154.if.end162_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

if.then159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %highest_vol_id to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %highest_vol_id, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end154.if.end162_crit_edge
  %add.ptr163 = getelementptr i8, ptr %6, i32 %add134
  %add164 = add i32 %fm_pos.4699, 40
  %reserved_pebs = getelementptr inbounds %struct.ubi_fm_eba, ptr %add.ptr163, i32 0, i32 1
  %95 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %reserved_pebs, align 1
  %mul = shl i32 %96, 2
  %add165 = add i32 %add164, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add165, i32 %3)
  %cmp166.not = icmp ult i32 %add165, %3
  br i1 %cmp166.not, label %if.end169, label %if.end162.fail_crit_edge

if.end162.fail_crit_edge:                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end169:                                        ; preds = %if.end162
  %97 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %add.ptr163, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255835992, i32 %98)
  %cmp171.not = icmp eq i32 %98, -255835992
  br i1 %cmp171.not, label %for.cond176.preheader, label %if.then173

for.cond176.preheader:                            ; preds = %if.end169
  %99 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %reserved_pebs, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp178694.not = icmp eq i32 %100, 0
  br i1 %cmp178694.not, label %for.cond176.preheader.for.inc228_crit_edge, label %for.body180.lr.ph

for.cond176.preheader.for.inc228_crit_edge:       ; preds = %for.cond176.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc228

for.body180.lr.ph:                                ; preds = %for.cond176.preheader
  %pnum182 = getelementptr inbounds %struct.ubi_fm_eba, ptr %add.ptr163, i32 0, i32 2
  %highest_lnum = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call145, i32 0, i32 1
  br label %for.body180

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.36, i32 noundef %98, i32 noundef -255835992) #11
  br label %fail

for.body180:                                      ; preds = %for.inc225.for.body180_crit_edge, %for.body180.lr.ph
  %j.0695 = phi i32 [ 0, %for.body180.lr.ph ], [ %inc226, %for.inc225.for.body180_crit_edge ]
  %arrayidx = getelementptr [0 x i32], ptr %pnum182, i32 0, i32 %j.0695
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp183 = icmp slt i32 %102, 0
  br i1 %cmp183, label %for.body180.for.inc225_crit_edge, label %for.body180.for.cond188_crit_edge

for.body180.for.cond188_crit_edge:                ; preds = %for.body180
  br label %for.cond188

for.body180.for.inc225_crit_edge:                 ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc225

for.cond188:                                      ; preds = %for.body191.for.cond188_crit_edge, %for.body180.for.cond188_crit_edge
  %.pn628.in = phi ptr [ %.pn628, %for.body191.for.cond188_crit_edge ], [ %used, %for.body180.for.cond188_crit_edge ]
  %103 = ptrtoint ptr %.pn628.in to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn628 = load ptr, ptr %.pn628.in, align 4
  %cmp189.not = icmp eq ptr %.pn628, %used
  br i1 %cmp189.not, label %for.cond188.cleanup.thread646_crit_edge, label %for.body191

for.cond188.cleanup.thread646_crit_edge:          ; preds = %for.cond188
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread646

for.body191:                                      ; preds = %for.cond188
  %pnum192 = getelementptr i8, ptr %.pn628, i32 -28
  %104 = ptrtoint ptr %pnum192 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pnum192, align 4
  %cmp193 = icmp eq i32 %105, %102
  br i1 %cmp193, label %for.end203, label %for.body191.for.cond188_crit_edge

for.body191.for.cond188_crit_edge:                ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond188

for.end203:                                       ; preds = %for.body191
  %pnum192.le = getelementptr i8, ptr %.pn628, i32 -28
  %tmp_aeb.0.le = getelementptr i8, ptr %.pn628, i32 -32
  %tobool.not = icmp eq ptr %tmp_aeb.0.le, null
  br i1 %tobool.not, label %for.end203.cleanup.thread646_crit_edge, label %if.end205

for.end203.cleanup.thread646_crit_edge:           ; preds = %for.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread646

cleanup.thread646:                                ; preds = %for.end203.cleanup.thread646_crit_edge, %for.cond188.cleanup.thread646_crit_edge
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.37, i32 noundef %102) #11
  br label %fail

if.end205:                                        ; preds = %for.end203
  %lnum = getelementptr i8, ptr %.pn628, i32 -20
  %106 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %j.0695, ptr %lnum, align 4
  %107 = ptrtoint ptr %highest_lnum to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %highest_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %j.0695)
  %cmp207.not = icmp sgt i32 %108, %j.0695
  br i1 %cmp207.not, label %if.end205.if.end212_crit_edge, label %if.then209

if.end205.if.end212_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end212

if.then209:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %highest_lnum to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %j.0695, ptr %highest_lnum, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %if.end205.if.end212_crit_edge
  call fastcc void @assign_aeb_to_av(ptr noundef nonnull %tmp_aeb.0.le, ptr noundef %call145)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_attach_fastmap.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_attach_fastmap, %if.then219)) #11
          to label %for.inc225 [label %if.then219], !srcloc !198

if.then219:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  %110 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 68
  %114 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pid, align 8
  %116 = ptrtoint ptr %pnum192.le to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pnum192.le, align 4
  %118 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %lnum, align 4
  %120 = ptrtoint ptr %call145 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %call145, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_attach_fastmap.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.41, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121) #11
  br label %for.inc225

for.inc225:                                       ; preds = %if.then219, %if.end212, %for.body180.for.inc225_crit_edge
  %inc226 = add nuw i32 %j.0695, 1
  %122 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %reserved_pebs, align 1
  %cmp178 = icmp ult i32 %inc226, %123
  br i1 %cmp178, label %for.inc225.for.body180_crit_edge, label %for.inc225.for.inc228_crit_edge

for.inc225.for.inc228_crit_edge:                  ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc228

for.inc225.for.body180_crit_edge:                 ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body180

for.inc228:                                       ; preds = %for.inc225.for.inc228_crit_edge, %for.cond176.preheader.for.inc228_crit_edge
  %inc229 = add nuw i32 %i.4700, 1
  %124 = ptrtoint ptr %vol_count to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %vol_count, align 1
  %cmp130 = icmp ult i32 %inc229, %125
  br i1 %cmp130, label %for.inc228.for.body132_crit_edge, label %for.inc228.for.end230_crit_edge

for.inc228.for.end230_crit_edge:                  ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end230

for.inc228.for.body132_crit_edge:                 ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body132

for.end230:                                       ; preds = %for.inc228.for.end230_crit_edge, %div_u64.exit.for.end230_crit_edge
  %pebs = getelementptr i8, ptr %6, i32 352
  %call231 = call fastcc i32 @scan_pool(ptr noundef %ubi, ptr noundef %ai, ptr noundef %pebs, i32 noundef %conv, ptr noundef nonnull %max_sqnum, ptr noundef nonnull %free)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.end234, label %for.end230.fail_crit_edge

for.end230.fail_crit_edge:                        ; preds = %for.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end234:                                        ; preds = %for.end230
  %pebs235 = getelementptr i8, ptr %6, i32 1400
  %call237 = call fastcc i32 @scan_pool(ptr noundef %ubi, ptr noundef %ai, ptr noundef %pebs235, i32 noundef %conv32, ptr noundef nonnull %max_sqnum, ptr noundef nonnull %free)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %if.end234.fail_crit_edge

if.end234.fail_crit_edge:                         ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end240:                                        ; preds = %if.end234
  %126 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %max_sqnum, align 8
  %128 = ptrtoint ptr %max_sqnum2 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %max_sqnum2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %129)
  %cmp242 = icmp ugt i64 %127, %129
  br i1 %cmp242, label %if.then244, label %if.end240.if.end246_crit_edge

if.end240.if.end246_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end246

if.then244:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %max_sqnum2 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %127, ptr %max_sqnum2, align 8
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.end240.if.end246_crit_edge
  %131 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %free, align 4
  %cmp258.not701 = icmp eq ptr %132, %free
  br i1 %cmp258.not701, label %if.end246.for.end271_crit_edge, label %for.body262.lr.ph

if.end246.for.end271_crit_edge:                   ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end271

for.body262.lr.ph:                                ; preds = %if.end246
  %free264 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  br label %for.body262

for.body262:                                      ; preds = %for.body262.for.body262_crit_edge, %for.body262.lr.ph
  %133 = phi ptr [ %132, %for.body262.lr.ph ], [ %.pn, %for.body262.for.body262_crit_edge ]
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn = load ptr, ptr %133, align 8
  call fastcc void @list_move_tail(ptr noundef %133, ptr noundef %free264)
  %cmp258.not = icmp eq ptr %.pn, %free
  br i1 %cmp258.not, label %for.body262.for.end271_crit_edge, label %for.body262.for.body262_crit_edge

for.body262.for.body262_crit_edge:                ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body262

for.body262.for.end271_crit_edge:                 ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end271

for.end271:                                       ; preds = %for.body262.for.end271_crit_edge, %if.end246.for.end271_crit_edge
  %135 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %used, align 4
  %cmp283.not702 = icmp eq ptr %136, %used
  br i1 %cmp283.not702, label %for.end271.do.body297_crit_edge, label %for.body287.lr.ph

for.end271.do.body297_crit_edge:                  ; preds = %for.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body297

for.body287.lr.ph:                                ; preds = %for.end271
  %erase289 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  br label %for.body287

for.body287:                                      ; preds = %for.body287.for.body287_crit_edge, %for.body287.lr.ph
  %137 = phi ptr [ %136, %for.body287.lr.ph ], [ %.pn625, %for.body287.for.body287_crit_edge ]
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn625 = load ptr, ptr %137, align 8
  call fastcc void @list_move_tail(ptr noundef %137, ptr noundef %erase289)
  %cmp283.not = icmp eq ptr %.pn625, %used
  br i1 %cmp283.not, label %for.body287.do.body297_crit_edge, label %for.body287.for.body287_crit_edge

for.body287.for.body287_crit_edge:                ; preds = %for.body287
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body287

for.body287.do.body297_crit_edge:                 ; preds = %for.body287
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body297

do.body297:                                       ; preds = %for.body287.do.body297_crit_edge, %for.end271.do.body297_crit_edge
  %139 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile ptr, ptr %free, align 4
  %cmp.i633.not = icmp eq ptr %140, %free
  br i1 %cmp.i633.not, label %do.body297.do.end319_crit_edge, label %do.end311, !prof !196

do.body297.do.end319_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end319

do.end311:                                        ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #13
  %141 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i634 = and i32 %141, -16384
  %142 = inttoptr i32 %and.i634 to ptr
  %task314 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %task314 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task314, align 8
  %pid315 = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 68
  %145 = ptrtoint ptr %pid315 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %pid315, align 8
  %call316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.39, i32 noundef 772, i32 noundef %146) #18
  call void @dump_stack() #18
  br label %do.end319

do.end319:                                        ; preds = %do.end311, %do.body297.do.end319_crit_edge
  %call320 = call fastcc i32 @count_fastmap_pebs(ptr noundef %ai)
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %147 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %peb_count, align 8
  %149 = ptrtoint ptr %bad_peb_count128 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bad_peb_count128, align 8
  %used_blocks = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %fm, i32 0, i32 2
  %151 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %used_blocks, align 4
  %153 = add i32 %150, %152
  %sub322 = sub i32 %148, %153
  call void @__sanitizer_cov_trace_cmp4(i32 %call320, i32 %sub322)
  %cmp323.not = icmp eq i32 %call320, %sub322
  br i1 %cmp323.not, label %do.end319.cleanup405_crit_edge, label %do.end340, !prof !196

do.end319.cleanup405_crit_edge:                   ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup405

do.end340:                                        ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 781, i32 noundef 9, ptr noundef null) #11
  br label %fail

fail:                                             ; preds = %do.end340, %if.end234.fail_crit_edge, %for.end230.fail_crit_edge, %cleanup.thread646, %if.then173, %if.end162.fail_crit_edge, %if.then151, %if.then147.fail_crit_edge, %if.then142, %for.body132.fail_crit_edge, %for.body113.fail_crit_edge, %for.body97.fail_crit_edge, %for.body81.fail_crit_edge, %for.body.fail_crit_edge, %if.then66, %if.then56, %if.then47, %if.then40, %if.then28, %if.end20.fail_crit_edge, %if.then18, %if.end10.fail_crit_edge, %if.then8, %entry.fail_crit_edge
  %ret.0 = phi i32 [ %call231, %for.end230.fail_crit_edge ], [ %call237, %if.end234.fail_crit_edge ], [ 2, %do.end340 ], [ 2, %if.then147.fail_crit_edge ], [ 2, %if.then151 ], [ 2, %if.end20.fail_crit_edge ], [ 2, %if.end10.fail_crit_edge ], [ 2, %entry.fail_crit_edge ], [ 2, %if.then173 ], [ 2, %if.then142 ], [ 2, %if.then66 ], [ 2, %if.then56 ], [ 2, %if.then47 ], [ 2, %if.then40 ], [ 2, %if.then28 ], [ 2, %if.then18 ], [ 2, %if.then8 ], [ 2, %cleanup.thread646 ], [ 2, %if.end162.fail_crit_edge ], [ 2, %for.body132.fail_crit_edge ], [ 2, %for.body113.fail_crit_edge ], [ 2, %for.body97.fail_crit_edge ], [ 2, %for.body81.fail_crit_edge ], [ 2, %for.body.fail_crit_edge ]
  %154 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %used, align 4
  %cmp368.not703 = icmp eq ptr %155, %used
  br i1 %cmp368.not703, label %fail.for.end380_crit_edge, label %fail.for.body372_crit_edge

fail.for.body372_crit_edge:                       ; preds = %fail
  br label %for.body372

fail.for.end380_crit_edge:                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end380

for.body372:                                      ; preds = %list_del.exit.for.body372_crit_edge, %fail.for.body372_crit_edge
  %.pn626.in704 = phi ptr [ %.pn626, %list_del.exit.for.body372_crit_edge ], [ %155, %fail.for.body372_crit_edge ]
  %tmp_aeb.3 = getelementptr i8, ptr %.pn626.in704, i32 -32
  %156 = ptrtoint ptr %.pn626.in704 to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pn626 = load ptr, ptr %.pn626.in704, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn626.in704) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body372.list_del.exit_crit_edge

for.body372.list_del.exit_crit_edge:              ; preds = %for.body372
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body372
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn626.in704, i32 0, i32 1
  %157 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev.i.i, align 4
  %159 = ptrtoint ptr %.pn626.in704 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %.pn626.in704, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %158, ptr %prev1.i.i.i, align 4
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %160, ptr %158, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body372.list_del.exit_crit_edge
  %163 = ptrtoint ptr %.pn626.in704 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn626.in704, align 4
  %prev.i635 = getelementptr inbounds %struct.list_head, ptr %.pn626.in704, i32 0, i32 1
  %164 = ptrtoint ptr %prev.i635 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i635, align 4
  call void @ubi_free_aeb(ptr noundef %ai, ptr noundef %tmp_aeb.3) #11
  %cmp368.not = icmp eq ptr %.pn626, %used
  br i1 %cmp368.not, label %list_del.exit.for.end380_crit_edge, label %list_del.exit.for.body372_crit_edge

list_del.exit.for.body372_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body372

list_del.exit.for.end380_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end380

for.end380:                                       ; preds = %list_del.exit.for.end380_crit_edge, %fail.for.end380_crit_edge
  %165 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %free, align 4
  %cmp392.not706 = icmp eq ptr %166, %free
  br i1 %cmp392.not706, label %for.end380.cleanup405_crit_edge, label %for.end380.for.body396_crit_edge

for.end380.for.body396_crit_edge:                 ; preds = %for.end380
  br label %for.body396

for.end380.cleanup405_crit_edge:                  ; preds = %for.end380
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup405

for.body396:                                      ; preds = %list_del.exit641.for.body396_crit_edge, %for.end380.for.body396_crit_edge
  %.pn627.in707 = phi ptr [ %.pn627, %list_del.exit641.for.body396_crit_edge ], [ %166, %for.end380.for.body396_crit_edge ]
  %tmp_aeb.4 = getelementptr i8, ptr %.pn627.in707, i32 -32
  %167 = ptrtoint ptr %.pn627.in707 to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pn627 = load ptr, ptr %.pn627.in707, align 8
  %call.i.i636 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn627.in707) #11
  br i1 %call.i.i636, label %if.end.i.i639, label %for.body396.list_del.exit641_crit_edge

for.body396.list_del.exit641_crit_edge:           ; preds = %for.body396
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit641

if.end.i.i639:                                    ; preds = %for.body396
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i637 = getelementptr inbounds %struct.list_head, ptr %.pn627.in707, i32 0, i32 1
  %168 = ptrtoint ptr %prev.i.i637 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i.i637, align 4
  %170 = ptrtoint ptr %.pn627.in707 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %.pn627.in707, align 4
  %prev1.i.i.i638 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %prev1.i.i.i638 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev1.i.i.i638, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %171, ptr %169, align 4
  br label %list_del.exit641

list_del.exit641:                                 ; preds = %if.end.i.i639, %for.body396.list_del.exit641_crit_edge
  %174 = ptrtoint ptr %.pn627.in707 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn627.in707, align 4
  %prev.i640 = getelementptr inbounds %struct.list_head, ptr %.pn627.in707, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i640 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i640, align 4
  call void @ubi_free_aeb(ptr noundef %ai, ptr noundef %tmp_aeb.4) #11
  %cmp392.not = icmp eq ptr %.pn627, %free
  br i1 %cmp392.not, label %list_del.exit641.cleanup405_crit_edge, label %list_del.exit641.for.body396_crit_edge

list_del.exit641.for.body396_crit_edge:           ; preds = %list_del.exit641
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body396

list_del.exit641.cleanup405_crit_edge:            ; preds = %list_del.exit641
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup405

cleanup405:                                       ; preds = %list_del.exit641.cleanup405_crit_edge, %for.end380.cleanup405_crit_edge, %do.end319.cleanup405_crit_edge
  %retval.0 = phi i32 [ 0, %do.end319.cleanup405_crit_edge ], [ %ret.0, %for.end380.cleanup405_crit_edge ], [ %ret.0, %list_del.exit641.cleanup405_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_sqnum) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %used) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubi_free_vid_buf(ptr noundef %vidb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %vidb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %buffer = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %vidb, i32 0, i32 1
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %1) #11
  tail call void @kfree(ptr noundef nonnull %vidb) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_fastmap_init_checkmap(ptr nocapture noundef %vol, i32 noundef %leb_count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ubi1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 2
  %0 = ptrtoint ptr %ubi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubi1, align 8
  %fast_attach = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %fast_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fast_attach, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end7.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %leb_count, 31
  %4 = lshr i32 %sub, 3
  %5 = and i32 %4, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #15
  %checkmap = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 26
  %6 = ptrtoint ptr %checkmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %checkmap, align 4
  %tobool3.not = icmp eq ptr %call8.i.i, null
  %. = select i1 %tobool3.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end7.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_fastmap_destroy_checkmap(ptr nocapture noundef readonly %vol) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %checkmap = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 26
  %0 = ptrtoint ptr %checkmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %checkmap, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_update_fastmap(ptr noundef %ubi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_protect = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 30
  tail call void @down_write(ptr noundef %fm_protect) #11
  %work_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 48
  tail call void @down_write(ptr noundef %work_sem) #11
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 29
  tail call void @down_write(ptr noundef %fm_eba_sem) #11
  tail call void @ubi_refill_pools(ptr noundef %ubi) #11
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %0 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fm_disabled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 25
  %2 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fm_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @up_write(ptr noundef %fm_eba_sem) #11
  tail call void @up_write(ptr noundef %work_sem) #11
  tail call void @up_write(ptr noundef %fm_protect) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 268) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_write(ptr noundef %fm_eba_sem) #11
  tail call void @up_write(ptr noundef %work_sem) #11
  tail call void @up_write(ptr noundef %fm_protect) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %fm_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 32
  %5 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fm_size, align 8
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %7 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leb_size, align 8
  %div = udiv i32 %6, %8
  %used_blocks = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %used_blocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %used_blocks, align 8
  %fm = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 26
  %10 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fm, align 8
  store ptr null, ptr %fm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div)
  %cmp = icmp sgt i32 %div, 32
  br i1 %cmp, label %if.then13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  %12 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp16367 = icmp sgt i32 %13, 1
  br i1 %cmp16367, label %for.body.lr.ph, label %for.cond.preheader.for.end75_crit_edge

for.cond.preheader.for.end75_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  %tobool59.not = icmp eq ptr %11, null
  br label %for.body

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.17) #11
  br label %err

for.body:                                         ; preds = %for.inc73.for.body_crit_edge, %for.body.lr.ph
  %i.0368 = phi i32 [ 1, %for.body.lr.ph ], [ %inc74, %for.inc73.for.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #11
  %call17 = tail call ptr @ubi_wl_get_fm_peb(ptr noundef %ubi, i32 noundef 0) #11
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #11
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.then20, label %if.else56

if.then20:                                        ; preds = %for.body
  br i1 %tobool59.not, label %if.then20.if.else_crit_edge, label %land.lhs.true

if.then20.if.else_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then20
  %arrayidx = getelementptr [32 x ptr], ptr %11, i32 0, i32 %i.0368
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %land.lhs.true.if.else_crit_edge, label %if.then23

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pnum, align 4
  %call26 = tail call fastcc i32 @erase_block(ptr noundef %ubi, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end37

if.then28:                                        ; preds = %if.then23
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0368)
  %cmp30376 = icmp ugt i32 %i.0368, 1
  br i1 %cmp30376, label %if.then28.for.body31_crit_edge, label %if.then28.err_crit_edge

if.then28.err_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then28.for.body31_crit_edge:                   ; preds = %if.then28
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %if.then28.for.body31_crit_edge
  %j.0377 = phi i32 [ %inc, %for.body31.for.body31_crit_edge ], [ 1, %if.then28.for.body31_crit_edge ]
  %arrayidx33 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %j.0377
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx33, align 4
  %call34 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef %19, i32 noundef %j.0377, i32 noundef 0) #11
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx33, align 4
  %inc = add nuw nsw i32 %j.0377, 1
  %exitcond.not = icmp eq i32 %inc, %i.0368
  br i1 %exitcond.not, label %for.body31.err_crit_edge, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31

for.body31.err_crit_edge:                         ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end37:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %arrayidx41 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %i.0368
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx41, align 4
  br label %for.inc73.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then20.if.else_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0368)
  %cmp45378 = icmp ugt i32 %i.0368, 1
  br i1 %cmp45378, label %if.else.for.body46_crit_edge, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.else.for.body46_crit_edge:                     ; preds = %if.else
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %if.else.for.body46_crit_edge
  %j.1379 = phi i32 [ %inc53, %for.body46.for.body46_crit_edge ], [ 1, %if.else.for.body46_crit_edge ]
  %arrayidx48 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %j.1379
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx48, align 4
  %call49 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef %25, i32 noundef %j.1379, i32 noundef 0) #11
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx48, align 4
  %inc53 = add nuw nsw i32 %j.1379, 1
  %exitcond386.not = icmp eq i32 %inc53, %i.0368
  br i1 %exitcond386.not, label %for.body46.err_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46

for.body46.err_crit_edge:                         ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.else56:                                        ; preds = %for.body
  %arrayidx58 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %i.0368
  %27 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call17, ptr %arrayidx58, align 4
  br i1 %tobool59.not, label %if.else56.for.inc73_crit_edge, label %land.lhs.true60

if.else56.for.inc73_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc73

land.lhs.true60:                                  ; preds = %if.else56
  %arrayidx62 = getelementptr [32 x ptr], ptr %11, i32 0, i32 %i.0368
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx62, align 4
  %tobool63.not = icmp eq ptr %29, null
  br i1 %tobool63.not, label %land.lhs.true60.for.inc73_crit_edge, label %if.then64

land.lhs.true60.for.inc73_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc73

if.then64:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx67 = getelementptr %struct.ubi_fastmap_layout, ptr %11, i32 0, i32 1, i32 %i.0368
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67, align 4
  %call68 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef nonnull %29, i32 noundef %i.0368, i32 noundef %31) #11
  br label %for.inc73.sink.split

for.inc73.sink.split:                             ; preds = %if.then64, %if.end37
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end37 ], [ %arrayidx62, %if.then64 ]
  %32 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx.sink, align 4
  br label %for.inc73

for.inc73:                                        ; preds = %for.inc73.sink.split, %land.lhs.true60.for.inc73_crit_edge, %if.else56.for.inc73_crit_edge
  %inc74 = add nuw nsw i32 %i.0368, 1
  %33 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used_blocks, align 8
  %cmp16 = icmp slt i32 %inc74, %34
  br i1 %cmp16, label %for.inc73.for.body_crit_edge, label %for.inc73.for.end75_crit_edge

for.inc73.for.end75_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.inc73.for.body_crit_edge:                     ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end75:                                        ; preds = %for.inc73.for.end75_crit_edge, %for.cond.preheader.for.end75_crit_edge
  %.lcssa = phi i32 [ %13, %for.cond.preheader.for.end75_crit_edge ], [ %34, %for.inc73.for.end75_crit_edge ]
  %tobool76.not = icmp eq ptr %11, null
  br i1 %tobool76.not, label %for.end75.if.end97_crit_edge, label %land.lhs.true77

for.end75.if.end97_crit_edge:                     ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

land.lhs.true77:                                  ; preds = %for.end75
  %used_blocks79 = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %11, i32 0, i32 2
  %35 = ptrtoint ptr %used_blocks79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used_blocks79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %36)
  %cmp80 = icmp slt i32 %.lcssa, %36
  br i1 %cmp80, label %for.cond83.preheader, label %land.lhs.true77.if.end97_crit_edge

land.lhs.true77.if.end97_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

for.cond83.preheader:                             ; preds = %land.lhs.true77
  %37 = ptrtoint ptr %used_blocks79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %used_blocks79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %38)
  %cmp85370 = icmp slt i32 %.lcssa, %38
  br i1 %cmp85370, label %for.cond83.preheader.for.body86_crit_edge, label %for.cond83.preheader.if.end97_crit_edge

for.cond83.preheader.if.end97_crit_edge:          ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

for.cond83.preheader.for.body86_crit_edge:        ; preds = %for.cond83.preheader
  br label %for.body86

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.cond83.preheader.for.body86_crit_edge
  %i.1371 = phi i32 [ %inc95, %for.body86.for.body86_crit_edge ], [ %.lcssa, %for.cond83.preheader.for.body86_crit_edge ]
  %arrayidx88 = getelementptr [32 x ptr], ptr %11, i32 0, i32 %i.1371
  %39 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx88, align 4
  %arrayidx90 = getelementptr %struct.ubi_fastmap_layout, ptr %11, i32 0, i32 1, i32 %i.1371
  %41 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx90, align 4
  %call91 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef %40, i32 noundef %i.1371, i32 noundef %42) #11
  %43 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx88, align 4
  %inc95 = add nsw i32 %i.1371, 1
  %44 = ptrtoint ptr %used_blocks79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %used_blocks79, align 4
  %cmp85 = icmp slt i32 %inc95, %45
  br i1 %cmp85, label %for.body86.for.body86_crit_edge, label %for.body86.if.end97_crit_edge

for.body86.if.end97_crit_edge:                    ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body86

if.end97:                                         ; preds = %for.body86.if.end97_crit_edge, %for.cond83.preheader.if.end97_crit_edge, %land.lhs.true77.if.end97_crit_edge, %for.end75.if.end97_crit_edge
  %wl_lock98 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock98) #11
  %fm_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 36
  %46 = ptrtoint ptr %fm_anchor to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fm_anchor, align 8
  store ptr null, ptr %fm_anchor, align 8
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock98) #11
  %tobool144.not = icmp eq ptr %47, null
  br i1 %tobool76.not, label %if.else143, label %if.then102

if.then102:                                       ; preds = %if.end97
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %11, align 4
  br i1 %tobool144.not, label %if.then104, label %if.else132

if.then104:                                       ; preds = %if.then102
  %pnum107 = getelementptr inbounds %struct.ubi_wl_entry, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %pnum107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pnum107, align 4
  %call108 = tail call fastcc i32 @erase_block(ptr noundef %ubi, i32 noundef %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then110, label %if.end123

if.then110:                                       ; preds = %if.then104
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.20) #11
  %52 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %used_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp113372 = icmp sgt i32 %53, 1
  br i1 %cmp113372, label %if.then110.for.body114_crit_edge, label %if.then110.err_crit_edge

if.then110.err_crit_edge:                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then110.for.body114_crit_edge:                 ; preds = %if.then110
  br label %for.body114

for.body114:                                      ; preds = %for.body114.for.body114_crit_edge, %if.then110.for.body114_crit_edge
  %i.2373 = phi i32 [ %inc121, %for.body114.for.body114_crit_edge ], [ 1, %if.then110.for.body114_crit_edge ]
  %arrayidx116 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %i.2373
  %54 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx116, align 4
  %call117 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef %55, i32 noundef %i.2373, i32 noundef 0) #11
  %56 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx116, align 4
  %inc121 = add nuw nsw i32 %i.2373, 1
  %57 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used_blocks, align 8
  %cmp113 = icmp slt i32 %inc121, %58
  br i1 %cmp113, label %for.body114.for.body114_crit_edge, label %for.body114.err_crit_edge

for.body114.err_crit_edge:                        ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.body114.for.body114_crit_edge:                ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body114

if.end123:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %11, align 4
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %call7.i.i, align 8
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call108, ptr %ec, align 4
  store ptr null, ptr %11, align 4
  br label %if.end161

if.else132:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %to_be_tortured135 = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %11, i32 0, i32 1
  %63 = ptrtoint ptr %to_be_tortured135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %to_be_tortured135, align 4
  %call137 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef %49, i32 noundef 0, i32 noundef %64) #11
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %47, ptr %call7.i.i, align 8
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %11, align 4
  br label %if.end161

if.else143:                                       ; preds = %if.end97
  br i1 %tobool144.not, label %if.then145, label %if.end158

if.then145:                                       ; preds = %if.else143
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.21) #11
  %67 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %used_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp148374 = icmp sgt i32 %68, 1
  br i1 %cmp148374, label %if.then145.for.body149_crit_edge, label %if.then145.err_crit_edge

if.then145.err_crit_edge:                         ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then145.for.body149_crit_edge:                 ; preds = %if.then145
  br label %for.body149

for.body149:                                      ; preds = %for.body149.for.body149_crit_edge, %if.then145.for.body149_crit_edge
  %i.3375 = phi i32 [ %inc156, %for.body149.for.body149_crit_edge ], [ 1, %if.then145.for.body149_crit_edge ]
  %arrayidx151 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %i.3375
  %69 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx151, align 4
  %call152 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef %70, i32 noundef %i.3375, i32 noundef 0) #11
  %71 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx151, align 4
  %inc156 = add nuw nsw i32 %i.3375, 1
  %72 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %used_blocks, align 8
  %cmp148 = icmp slt i32 %inc156, %73
  br i1 %cmp148, label %for.body149.for.body149_crit_edge, label %for.body149.err_crit_edge

for.body149.err_crit_edge:                        ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.body149.for.body149_crit_edge:                ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body149

if.end158:                                        ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %47, ptr %call7.i.i, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.end158, %if.else132, %if.end123
  %call162 = tail call fastcc i32 @ubi_write_fastmap(ptr noundef %ubi, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end161.out_unlock_crit_edge, label %if.end161.err_crit_edge

if.end161.err_crit_edge:                          ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end161.out_unlock_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.end174, %if.end161.out_unlock_crit_edge
  %ret.0 = phi i32 [ %ret.2, %if.end174 ], [ 0, %if.end161.out_unlock_crit_edge ]
  tail call void @up_write(ptr noundef %fm_eba_sem) #11
  tail call void @up_write(ptr noundef %work_sem) #11
  tail call void @up_write(ptr noundef %fm_protect) #11
  tail call void @kfree(ptr noundef %11) #11
  %call169 = tail call i32 @ubi_ensure_anchor_pebs(ptr noundef %ubi) #11
  br label %cleanup

err:                                              ; preds = %if.end161.err_crit_edge, %for.body149.err_crit_edge, %if.then145.err_crit_edge, %for.body114.err_crit_edge, %if.then110.err_crit_edge, %for.body46.err_crit_edge, %if.else.err_crit_edge, %for.body31.err_crit_edge, %if.then28.err_crit_edge, %if.then13
  %ret.1 = phi i32 [ -28, %if.then13 ], [ %call162, %if.end161.err_crit_edge ], [ -28, %if.else.err_crit_edge ], [ %call26, %if.then28.err_crit_edge ], [ -28, %if.then145.err_crit_edge ], [ %call108, %if.then110.err_crit_edge ], [ -28, %for.body46.err_crit_edge ], [ %call26, %for.body31.err_crit_edge ], [ -28, %for.body149.err_crit_edge ], [ %call108, %for.body114.err_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.22, i32 noundef %ret.1) #11
  %75 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fm, align 8
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %err.if.else173_crit_edge, label %if.end.i

err.if.else173_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else173

if.end.i:                                         ; preds = %err
  %77 = ptrtoint ptr %fm to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %fm, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 268) #14
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then172_crit_edge, label %if.end5.i

if.end.i.if.then172_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then172

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end5.i.invalidate_fastmap.exit.thread356_crit_edge, label %if.end.i.i.i

if.end5.i.invalidate_fastmap.exit.thread356_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalidate_fastmap.exit.thread356

if.end.i.i.i:                                     ; preds = %if.end5.i
  %vid_hdr_alsize.i.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %80 = ptrtoint ptr %vid_hdr_alsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vid_hdr_alsize.i.i.i, align 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %81, i32 noundef 3264) #15
  %tobool2.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.then3.i.i.i, label %if.end9.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  br label %invalidate_fastmap.exit.thread356

if.end9.i:                                        ; preds = %if.end.i.i.i
  %82 = ptrtoint ptr %vid_hdr_alsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vid_hdr_alsize.i.i.i, align 4
  %84 = call ptr @memset(ptr %call9.i.i.i.i, i32 0, i32 %83)
  %buffer.i.i.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %buffer.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call9.i.i.i.i, ptr %buffer.i.i.i.i, align 4
  %vid_hdr_shift.i.i.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %86 = ptrtoint ptr %vid_hdr_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vid_hdr_shift.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %87
  %88 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr.i.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %vol_type.i.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %vol_type.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %vol_type.i.i, align 1
  %vol_id2.i.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %vol_id2.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 2147479552, ptr %vol_id2.i.i, align 1
  %compat.i.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %91 = ptrtoint ptr %compat.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %compat.i.i, align 1
  %92 = load ptr, ptr %call7.i.i.i.i.i, align 8
  %call11.i = tail call ptr @ubi_wl_get_fm_peb(ptr noundef %ubi, i32 noundef 1) #11
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end9.i.out.thread58.i_crit_edge, label %if.end14.i

if.end9.i.out.thread58.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread58.i

if.end14.i:                                       ; preds = %if.end9.i
  %call15.i = tail call i64 @ubi_next_sqnum(ptr noundef %ubi) #11
  %sqnum.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %92, i32 0, i32 13
  %93 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %call15.i, ptr %sqnum.i, align 1
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %call11.i, i32 0, i32 2
  %94 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pnum.i, align 4
  %call16.i = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %ubi, i32 noundef %95, ptr noundef nonnull %call7.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %if.then17.i, label %out.thread52.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef nonnull %call11.i, i32 noundef 0, i32 noundef 0) #11
  br label %out.thread58.i

out.thread52.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %used_blocks.i = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %call7.i.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %used_blocks.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %used_blocks.i, align 8
  %97 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call11.i, ptr %call7.i.i.i, align 8
  %98 = ptrtoint ptr %fm to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i.i.i, ptr %fm, align 8
  br label %invalidate_fastmap.exit

out.thread58.i:                                   ; preds = %if.then17.i, %if.end9.i.out.thread58.i_crit_edge
  %ret.1.ph.i = phi i32 [ -28, %if.end9.i.out.thread58.i_crit_edge ], [ %call16.i, %if.then17.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %invalidate_fastmap.exit

invalidate_fastmap.exit.thread356:                ; preds = %if.then3.i.i.i, %if.end5.i.invalidate_fastmap.exit.thread356_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.then172

invalidate_fastmap.exit:                          ; preds = %out.thread58.i, %out.thread52.i
  %ret.056.i = phi i32 [ %call16.i, %out.thread52.i ], [ %ret.1.ph.i, %out.thread58.i ]
  %99 = ptrtoint ptr %buffer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %buffer.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %100) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.056.i)
  %cmp171 = icmp slt i32 %ret.056.i, 0
  br i1 %cmp171, label %invalidate_fastmap.exit.if.then172_crit_edge, label %invalidate_fastmap.exit.if.else173_crit_edge

invalidate_fastmap.exit.if.else173_crit_edge:     ; preds = %invalidate_fastmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else173

invalidate_fastmap.exit.if.then172_crit_edge:     ; preds = %invalidate_fastmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then172

if.then172:                                       ; preds = %invalidate_fastmap.exit.if.then172_crit_edge, %invalidate_fastmap.exit.thread356, %if.end.i.if.then172_crit_edge
  %retval.0.i352 = phi i32 [ %ret.056.i, %invalidate_fastmap.exit.if.then172_crit_edge ], [ -12, %invalidate_fastmap.exit.thread356 ], [ -12, %if.end.i.if.then172_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.23) #11
  %101 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i330 = icmp eq i32 %102, 0
  br i1 %tobool.not.i330, label %if.then.i, label %if.then172.if.end174_crit_edge

if.then172.if.end174_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then.i:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %ro_mode, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.90) #11
  tail call void @dump_stack() #18
  br label %if.end174

if.else173:                                       ; preds = %invalidate_fastmap.exit.if.else173_crit_edge, %err.if.else173_crit_edge
  %tobool.not.i332 = icmp eq ptr %11, null
  br i1 %tobool.not.i332, label %if.else173.for.cond.preheader.i338_crit_edge, label %for.cond.preheader.i

if.else173.for.cond.preheader.i338_crit_edge:     ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i338

for.cond.preheader.i:                             ; preds = %if.else173
  %used_blocks.i333 = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %11, i32 0, i32 2
  %104 = ptrtoint ptr %used_blocks.i333 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %used_blocks.i333, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp20.i = icmp sgt i32 %105, 0
  br i1 %cmp20.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.cond.preheader.i338_crit_edge

for.cond.preheader.i.for.cond.preheader.i338_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i338

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr %11, i32 0, i32 %i.021.i
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %107, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i = getelementptr %struct.ubi_fastmap_layout, ptr %11, i32 0, i32 1, i32 %i.021.i
  %108 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx5.i, align 4
  %call.i = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef nonnull %107, i32 noundef %i.021.i, i32 noundef %109) #11
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %111 = ptrtoint ptr %used_blocks.i333 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %used_blocks.i333, align 4
  %cmp.i334 = icmp slt i32 %inc.i, %112
  br i1 %cmp.i334, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond.preheader.i338_crit_edge

for.inc.i.for.cond.preheader.i338_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i338

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.preheader.i338:                          ; preds = %for.inc.i.for.cond.preheader.i338_crit_edge, %for.cond.preheader.i.for.cond.preheader.i338_crit_edge, %if.else173.for.cond.preheader.i338_crit_edge
  %113 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %used_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp20.i337 = icmp sgt i32 %114, 0
  br i1 %cmp20.i337, label %for.cond.preheader.i338.for.body.i342_crit_edge, label %for.cond.preheader.i338.if.end174_crit_edge

for.cond.preheader.i338.if.end174_crit_edge:      ; preds = %for.cond.preheader.i338
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.cond.preheader.i338.for.body.i342_crit_edge:  ; preds = %for.cond.preheader.i338
  br label %for.body.i342

for.body.i342:                                    ; preds = %for.inc.i348.for.body.i342_crit_edge, %for.cond.preheader.i338.for.body.i342_crit_edge
  %i.021.i339 = phi i32 [ %inc.i346, %for.inc.i348.for.body.i342_crit_edge ], [ 0, %for.cond.preheader.i338.for.body.i342_crit_edge ]
  %arrayidx.i340 = getelementptr [32 x ptr], ptr %call7.i.i, i32 0, i32 %i.021.i339
  %115 = ptrtoint ptr %arrayidx.i340 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i340, align 4
  %tobool1.not.i341 = icmp eq ptr %116, null
  br i1 %tobool1.not.i341, label %for.body.i342.for.inc.i348_crit_edge, label %if.then2.i345

for.body.i342.for.inc.i348_crit_edge:             ; preds = %for.body.i342
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i348

if.then2.i345:                                    ; preds = %for.body.i342
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i343 = getelementptr %struct.ubi_fastmap_layout, ptr %call7.i.i, i32 0, i32 1, i32 %i.021.i339
  %117 = ptrtoint ptr %arrayidx5.i343 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx5.i343, align 4
  %call.i344 = tail call i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef nonnull %116, i32 noundef %i.021.i339, i32 noundef %118) #11
  %119 = ptrtoint ptr %arrayidx.i340 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %arrayidx.i340, align 4
  br label %for.inc.i348

for.inc.i348:                                     ; preds = %if.then2.i345, %for.body.i342.for.inc.i348_crit_edge
  %inc.i346 = add nuw nsw i32 %i.021.i339, 1
  %120 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %used_blocks, align 8
  %cmp.i347 = icmp slt i32 %inc.i346, %121
  br i1 %cmp.i347, label %for.inc.i348.for.body.i342_crit_edge, label %for.inc.i348.if.end174_crit_edge

for.inc.i348.if.end174_crit_edge:                 ; preds = %for.inc.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

for.inc.i348.for.body.i342_crit_edge:             ; preds = %for.inc.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i342

if.end174:                                        ; preds = %for.inc.i348.if.end174_crit_edge, %for.cond.preheader.i338.if.end174_crit_edge, %if.then.i, %if.then172.if.end174_crit_edge
  %ret.2 = phi i32 [ %retval.0.i352, %if.then172.if.end174_crit_edge ], [ %retval.0.i352, %if.then.i ], [ 0, %for.cond.preheader.i338.if.end174_crit_edge ], [ 0, %for.inc.i348.if.end174_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %out_unlock

cleanup:                                          ; preds = %out_unlock, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %out_unlock ], [ -12, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_refill_pools(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_wl_get_fm_peb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erase_block(ptr noundef %ubi, i32 noundef %pnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %0 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ec_hdr_alsize, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ubi_io_read_ec_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef nonnull %call9.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.else

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %if.end
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call1, label %if.else.out_crit_edge [
    i32 0, label %if.else.if.end7_crit_edge
    i32 5, label %if.else.if.end7_crit_edge50
  ]

if.else.if.end7_crit_edge50:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.else.if.end7_crit_edge50
  %call8 = tail call i32 @ubi_io_sync_erase(ptr noundef %ubi, i32 noundef %pnum, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end7
  %ec12 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ec12 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ec12, align 8
  %conv49 = zext i32 %call8 to i64
  %add = add i64 %4, %conv49
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %add)
  %cmp13 = icmp sgt i64 %add, 2147483647
  br i1 %cmp13, label %if.end11.out_crit_edge, label %if.end16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %ec12 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %add, ptr %ec12, align 8
  %call18 = tail call i32 @ubi_io_write_ec_hdr(ptr noundef %ubi, i32 noundef %pnum, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  %conv23 = trunc i64 %add to i32
  %spec.select = select i1 %cmp19, i32 %call18, i32 %conv23
  br label %out

out:                                              ; preds = %if.end16, %if.end11.out_crit_edge, %if.end7.out_crit_edge, %if.else.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ -22, %if.end11.out_crit_edge ], [ %spec.select, %if.end16 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_put_fm_peb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ubi_write_fastmap(ptr noundef %ubi, ptr noundef %new_fm) unnamed_addr #2 align 64 {
entry:
  %ldesc = alloca %struct.ubi_eba_leb_desc, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_buf = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 31
  %0 = ptrtoint ptr %fm_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm_buf, align 4
  %fm_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 32
  %2 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fm_size, align 8
  %4 = call ptr @memset(ptr %1, i32 0, i32 %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.out_crit_edge, label %if.end.i.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.i:                                       ; preds = %entry
  %vid_hdr_alsize.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %6 = ptrtoint ptr %vid_hdr_alsize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vid_hdr_alsize.i.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #15
  %tobool2.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %out

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %vid_hdr_alsize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vid_hdr_alsize.i.i, align 4
  %10 = call ptr @memset(ptr %call9.i.i.i, i32 0, i32 %9)
  %buffer.i.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i.i, ptr %buffer.i.i.i, align 4
  %vid_hdr_shift.i.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %12 = ptrtoint ptr %vid_hdr_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vid_hdr_shift.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %13
  %14 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i.i.i, ptr %call7.i.i.i.i, align 8
  %vol_type.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %vol_type.i, align 1
  %vol_id2.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %vol_id2.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 2147479552, ptr %vol_id2.i, align 1
  %compat.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %compat.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %compat.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i993 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not.i.i994 = icmp eq ptr %call7.i.i.i.i993, null
  br i1 %tobool.not.i.i994, label %if.end.ubi_free_vid_buf.exit1124_crit_edge, label %if.end8.i.i.i1023

if.end.ubi_free_vid_buf.exit1124_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubi_free_vid_buf.exit1124

if.end8.i.i.i1023:                                ; preds = %if.end
  %19 = ptrtoint ptr %vid_hdr_alsize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vid_hdr_alsize.i.i, align 4
  %call9.i.i.i1022 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #15
  %tobool2.not.i.i1025 = icmp eq ptr %call9.i.i.i1022, null
  br i1 %tobool2.not.i.i1025, label %if.then3.i.i1027, label %if.end5

if.then3.i.i1027:                                 ; preds = %if.end8.i.i.i1023
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i993) #11
  br label %ubi_free_vid_buf.exit1124

if.end5:                                          ; preds = %if.end8.i.i.i1023
  %21 = ptrtoint ptr %vid_hdr_alsize.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vid_hdr_alsize.i.i, align 4
  %23 = call ptr @memset(ptr %call9.i.i.i1022, i32 0, i32 %22)
  %buffer.i.i.i1029 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i.i993, i32 0, i32 1
  %24 = ptrtoint ptr %buffer.i.i.i1029 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i.i1022, ptr %buffer.i.i.i1029, align 4
  %25 = ptrtoint ptr %vid_hdr_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vid_hdr_shift.i.i.i, align 8
  %add.ptr.i.i.i1031 = getelementptr i8, ptr %call9.i.i.i1022, i32 %26
  %27 = ptrtoint ptr %call7.i.i.i.i993 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i.i1031, ptr %call7.i.i.i.i993, align 8
  %vol_type.i1032 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i1031, i32 0, i32 2
  %28 = ptrtoint ptr %vol_type.i1032 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %vol_type.i1032, align 1
  %vol_id2.i1033 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i1031, i32 0, i32 5
  %29 = ptrtoint ptr %vol_id2.i1033 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 2147479553, ptr %vol_id2.i1033, align 1
  %compat.i1034 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i.i1031, i32 0, i32 4
  %30 = ptrtoint ptr %compat.i1034 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %compat.i1034, align 1
  %31 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i.i.i, align 8
  %33 = load ptr, ptr %call7.i.i.i.i993, align 8
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %34 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  %35 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.end5.if.end12_crit_edge, label %if.end7.i.i.i

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end7.i.i.i:                                    ; preds = %if.end5
  %peb_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %36 = ptrtoint ptr %peb_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %peb_count.i, align 8
  %sub.i = add i32 %37, 31
  %38 = lshr i32 %sub.i, 3
  %39 = and i32 %38, 536870908
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #15
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.i.if.then10_crit_edge, label %init_seen.exit

if.end7.i.i.i.if.then10_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

init_seen.exit:                                   ; preds = %if.end7.i.i.i
  %cmp.i = icmp ugt ptr %call8.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %init_seen.exit.if.then10_crit_edge, label %init_seen.exit.if.end12_crit_edge

init_seen.exit.if.end12_crit_edge:                ; preds = %init_seen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

init_seen.exit.if.then10_crit_edge:               ; preds = %init_seen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %init_seen.exit.if.then10_crit_edge, %if.end7.i.i.i.if.then10_crit_edge
  %retval.0.i10431140 = phi ptr [ %call8.i.i.i, %init_seen.exit.if.then10_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.i.if.then10_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i10431140 to i32
  br label %ubi_free_vid_buf.exit

if.end12:                                         ; preds = %init_seen.exit.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %retval.0.i10431135 = phi ptr [ %call8.i.i.i, %init_seen.exit.if.end12_crit_edge ], [ null, %if.end5.if.end12_crit_edge ]
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #11
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #11
  %41 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 312, i32 %42)
  %cmp = icmp ult i32 %42, 312
  br i1 %cmp, label %do.end, label %if.end12.do.end23_crit_edge, !prof !199

if.end12.do.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %43 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1171, i32 noundef %48) #18
  tail call void @dump_stack() #18
  %49 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %fm_size, align 8
  br label %do.end23

do.end23:                                         ; preds = %do.end, %if.end12.do.end23_crit_edge
  %50 = phi i32 [ %.pr, %do.end ], [ %42, %if.end12.do.end23_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 312
  call void @__sanitizer_cov_trace_const_cmp4(i32 344, i32 %50)
  %cmp27 = icmp ult i32 %50, 344
  br i1 %cmp27, label %do.end39, label %do.end23.do.end47_crit_edge, !prof !199

do.end23.do.end47_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end39:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  %51 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1044 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i1044 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid43, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1175, i32 noundef %56) #18
  tail call void @dump_stack() #18
  br label %do.end47

do.end47:                                         ; preds = %do.end39, %do.end23.do.end47_crit_edge
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 2064766623, ptr %1, align 1
  %version = getelementptr inbounds %struct.ubi_fm_sb, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %version, align 1
  %used_blocks = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %new_fm, i32 0, i32 2
  %59 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %used_blocks, align 4
  %used_blocks48 = getelementptr inbounds %struct.ubi_fm_sb, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %used_blocks48 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %used_blocks48, align 1
  %sqnum = getelementptr inbounds %struct.ubi_fm_sb, ptr %1, i32 0, i32 7
  %62 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 0, ptr %sqnum, align 1
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 -726126857, ptr %add.ptr, align 1
  %add.ptr50 = getelementptr i8, ptr %1, i32 344
  %64 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 1739541768, ptr %add.ptr50, align 1
  %fm_pool = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27
  %size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 2
  %65 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size, align 4
  %conv = trunc i32 %66 to i16
  %size53 = getelementptr i8, ptr %1, i32 348
  %67 = ptrtoint ptr %size53 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %conv, ptr %size53, align 1
  %max_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 3
  %68 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_size, align 4
  %conv55 = trunc i32 %69 to i16
  %max_size56 = getelementptr i8, ptr %1, i32 350
  %70 = ptrtoint ptr %max_size56 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %conv55, ptr %max_size56, align 1
  %71 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp591144 = icmp sgt i32 %71, 0
  br i1 %cmp591144, label %for.body.lr.ph, label %do.end47.for.end_crit_edge

do.end47.for.end_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end47
  %pebs62 = getelementptr i8, ptr %1, i32 352
  %tobool1.not.i = icmp eq ptr %retval.0.i10431135, null
  br label %for.body

for.body:                                         ; preds = %set_seen.exit.for.body_crit_edge, %for.body.lr.ph
  %i.01145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %set_seen.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x i32], ptr %fm_pool, i32 0, i32 %i.01145
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %arrayidx63 = getelementptr [256 x i32], ptr %pebs62, i32 0, i32 %i.01145
  %74 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %arrayidx63, align 1
  %75 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i.i1046 = load i8, ptr %dbg.i.i, align 4
  %76 = and i8 %bf.load.i.i1046, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i1047 = icmp eq i8 %76, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i1047
  br i1 %or.cond.i, label %for.body.set_seen.exit_crit_edge, label %if.end.i1048

for.body.set_seen.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit

if.end.i1048:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx, align 4
  tail call void @_set_bit(i32 noundef %78, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit

set_seen.exit:                                    ; preds = %if.end.i1048, %for.body.set_seen.exit_crit_edge
  %inc = add nuw nsw i32 %i.01145, 1
  %79 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size, align 4
  %cmp59 = icmp slt i32 %inc, %80
  br i1 %cmp59, label %set_seen.exit.for.body_crit_edge, label %set_seen.exit.for.end_crit_edge

set_seen.exit.for.end_crit_edge:                  ; preds = %set_seen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

set_seen.exit.for.body_crit_edge:                 ; preds = %set_seen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %set_seen.exit.for.end_crit_edge, %do.end47.for.end_crit_edge
  %add.ptr67 = getelementptr i8, ptr %1, i32 1392
  %81 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 1739541768, ptr %add.ptr67, align 1
  %fm_wl_pool = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28
  %size70 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 2
  %82 = ptrtoint ptr %size70 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size70, align 4
  %conv71 = trunc i32 %83 to i16
  %size72 = getelementptr i8, ptr %1, i32 1396
  %84 = ptrtoint ptr %size72 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %conv71, ptr %size72, align 1
  %max_size74 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 3
  %85 = ptrtoint ptr %max_size74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_size74, align 8
  %conv75 = trunc i32 %86 to i16
  %max_size76 = getelementptr i8, ptr %1, i32 1398
  %87 = ptrtoint ptr %max_size76 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %conv75, ptr %max_size76, align 1
  %88 = load i32, ptr %size70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp801146 = icmp sgt i32 %88, 0
  br i1 %cmp801146, label %for.body82.lr.ph, label %for.end.for.end93_crit_edge

for.end.for.end93_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end93

for.body82.lr.ph:                                 ; preds = %for.end
  %pebs86 = getelementptr i8, ptr %1, i32 1400
  %tobool1.not.i1052 = icmp eq ptr %retval.0.i10431135, null
  br label %for.body82

for.body82:                                       ; preds = %set_seen.exit1055.for.body82_crit_edge, %for.body82.lr.ph
  %i.11147 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc92, %set_seen.exit1055.for.body82_crit_edge ]
  %arrayidx85 = getelementptr [256 x i32], ptr %fm_wl_pool, i32 0, i32 %i.11147
  %89 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx85, align 4
  %arrayidx87 = getelementptr [256 x i32], ptr %pebs86, i32 0, i32 %i.11147
  %91 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %arrayidx87, align 1
  %92 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i1050 = load i8, ptr %dbg.i.i, align 4
  %93 = and i8 %bf.load.i.i1050, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i1051 = icmp eq i8 %93, 0
  %or.cond.i1053 = or i1 %tobool1.not.i1052, %tobool.not.i1051
  br i1 %or.cond.i1053, label %for.body82.set_seen.exit1055_crit_edge, label %if.end.i1054

for.body82.set_seen.exit1055_crit_edge:           ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1055

if.end.i1054:                                     ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx85, align 4
  tail call void @_set_bit(i32 noundef %95, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1055

set_seen.exit1055:                                ; preds = %if.end.i1054, %for.body82.set_seen.exit1055_crit_edge
  %inc92 = add nuw nsw i32 %i.11147, 1
  %96 = ptrtoint ptr %size70 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size70, align 4
  %cmp80 = icmp slt i32 %inc92, %97
  br i1 %cmp80, label %set_seen.exit1055.for.body82_crit_edge, label %set_seen.exit1055.for.end93_crit_edge

set_seen.exit1055.for.end93_crit_edge:            ; preds = %set_seen.exit1055
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end93

set_seen.exit1055.for.body82_crit_edge:           ; preds = %set_seen.exit1055
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body82

for.end93:                                        ; preds = %set_seen.exit1055.for.end93_crit_edge, %for.end.for.end93_crit_edge
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %call94 = tail call ptr @rb_first(ptr noundef %free) #11
  %tobool99.not1148 = icmp eq ptr %call94, null
  br i1 %tobool99.not1148, label %for.end93.for.end141_crit_edge, label %for.body100.lr.ph

for.end93.for.end141_crit_edge:                   ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end141

for.body100.lr.ph:                                ; preds = %for.end93
  %tobool1.not.i1059 = icmp eq ptr %retval.0.i10431135, null
  br label %for.body100

for.body100:                                      ; preds = %for.inc131.for.body100_crit_edge, %for.body100.lr.ph
  %fm_pos.01151 = phi i32 [ 2440, %for.body100.lr.ph ], [ %add106, %for.inc131.for.body100_crit_edge ]
  %tmp_rb.01150 = phi ptr [ %call94, %for.body100.lr.ph ], [ %call132, %for.inc131.for.body100_crit_edge ]
  %free_peb_count.01149 = phi i32 [ 0, %for.body100.lr.ph ], [ %inc105, %for.inc131.for.body100_crit_edge ]
  %add.ptr101 = getelementptr i8, ptr %1, i32 %fm_pos.01151
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %tmp_rb.01150, i32 0, i32 2
  %98 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pnum, align 4
  %100 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %99, ptr %add.ptr101, align 1
  %101 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i.i1057 = load i8, ptr %dbg.i.i, align 4
  %102 = and i8 %bf.load.i.i1057, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i1058 = icmp eq i8 %102, 0
  %or.cond.i1060 = or i1 %tobool1.not.i1059, %tobool.not.i1058
  br i1 %or.cond.i1060, label %for.body100.set_seen.exit1062_crit_edge, label %if.end.i1061

for.body100.set_seen.exit1062_crit_edge:          ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1062

if.end.i1061:                                     ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pnum, align 4
  tail call void @_set_bit(i32 noundef %104, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1062

set_seen.exit1062:                                ; preds = %if.end.i1061, %for.body100.set_seen.exit1062_crit_edge
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %tmp_rb.01150, i32 0, i32 1
  %105 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ec, align 4
  %ec104 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr101, i32 0, i32 1
  %107 = ptrtoint ptr %ec104 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %ec104, align 1
  %inc105 = add i32 %free_peb_count.01149, 1
  %add106 = add i32 %fm_pos.01151, 8
  %108 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add106, i32 %109)
  %cmp109.not = icmp ugt i32 %add106, %109
  br i1 %cmp109.not, label %do.end122, label %set_seen.exit1062.for.inc131_crit_edge, !prof !199

set_seen.exit1062.for.inc131_crit_edge:           ; preds = %set_seen.exit1062
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc131

do.end122:                                        ; preds = %set_seen.exit1062
  call void @__sanitizer_cov_trace_pc() #13
  %110 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1063 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i1063 to ptr
  %task125 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task125 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task125, align 8
  %pid126 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 68
  %114 = ptrtoint ptr %pid126 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pid126, align 8
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1221, i32 noundef %115) #18
  tail call void @dump_stack() #18
  br label %for.inc131

for.inc131:                                       ; preds = %do.end122, %set_seen.exit1062.for.inc131_crit_edge
  %call132 = tail call ptr @rb_next(ptr noundef nonnull %tmp_rb.01150) #11
  %tobool99.not = icmp eq ptr %call132, null
  br i1 %tobool99.not, label %for.inc131.for.end141_crit_edge, label %for.inc131.for.body100_crit_edge

for.inc131.for.body100_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body100

for.inc131.for.end141_crit_edge:                  ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end141

for.end141:                                       ; preds = %for.inc131.for.end141_crit_edge, %for.end93.for.end141_crit_edge
  %free_peb_count.0.lcssa = phi i32 [ 0, %for.end93.for.end141_crit_edge ], [ %inc105, %for.inc131.for.end141_crit_edge ]
  %fm_pos.0.lcssa = phi i32 [ 2440, %for.end93.for.end141_crit_edge ], [ %add106, %for.inc131.for.end141_crit_edge ]
  %fm_next_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 37
  %116 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fm_next_anchor, align 4
  %tobool142.not = icmp eq ptr %117, null
  br i1 %tobool142.not, label %for.end141.if.end179_crit_edge, label %if.then143

for.end141.if.end179_crit_edge:                   ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

if.then143:                                       ; preds = %for.end141
  %add.ptr144 = getelementptr i8, ptr %1, i32 %fm_pos.0.lcssa
  %pnum146 = getelementptr inbounds %struct.ubi_wl_entry, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %pnum146 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pnum146, align 4
  %120 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %add.ptr144, align 1
  %121 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load.i.i1065 = load i8, ptr %dbg.i.i, align 4
  %122 = and i8 %bf.load.i.i1065, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i1066 = icmp eq i8 %122, 0
  %tobool1.not.i1067 = icmp eq ptr %retval.0.i10431135, null
  %or.cond.i1068 = or i1 %tobool1.not.i1067, %tobool.not.i1066
  br i1 %or.cond.i1068, label %if.then143.set_seen.exit1070_crit_edge, label %if.end.i1069

if.then143.set_seen.exit1070_crit_edge:           ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1070

if.end.i1069:                                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fm_next_anchor, align 4
  %pnum149 = getelementptr inbounds %struct.ubi_wl_entry, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %pnum149 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pnum149, align 4
  tail call void @_set_bit(i32 noundef %126, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1070

set_seen.exit1070:                                ; preds = %if.end.i1069, %if.then143.set_seen.exit1070_crit_edge
  %127 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fm_next_anchor, align 4
  %ec151 = getelementptr inbounds %struct.ubi_wl_entry, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %ec151 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ec151, align 4
  %ec152 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr144, i32 0, i32 1
  %131 = ptrtoint ptr %ec152 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %130, ptr %ec152, align 1
  %inc153 = add i32 %free_peb_count.0.lcssa, 1
  %add154 = add i32 %fm_pos.0.lcssa, 8
  %132 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add154, i32 %133)
  %cmp157.not = icmp ugt i32 %add154, %133
  br i1 %cmp157.not, label %do.end170, label %set_seen.exit1070.if.end179_crit_edge, !prof !199

set_seen.exit1070.if.end179_crit_edge:            ; preds = %set_seen.exit1070
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

do.end170:                                        ; preds = %set_seen.exit1070
  call void @__sanitizer_cov_trace_pc() #13
  %134 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1071 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i1071 to ptr
  %task173 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task173 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task173, align 8
  %pid174 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 68
  %138 = ptrtoint ptr %pid174 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pid174, align 8
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1232, i32 noundef %139) #18
  tail call void @dump_stack() #18
  br label %if.end179

if.end179:                                        ; preds = %do.end170, %set_seen.exit1070.if.end179_crit_edge, %for.end141.if.end179_crit_edge
  %free_peb_count.1 = phi i32 [ %inc153, %do.end170 ], [ %inc153, %set_seen.exit1070.if.end179_crit_edge ], [ %free_peb_count.0.lcssa, %for.end141.if.end179_crit_edge ]
  %fm_pos.1 = phi i32 [ %add154, %do.end170 ], [ %add154, %set_seen.exit1070.if.end179_crit_edge ], [ %fm_pos.0.lcssa, %for.end141.if.end179_crit_edge ]
  %free_peb_count180 = getelementptr i8, ptr %1, i32 316
  %140 = ptrtoint ptr %free_peb_count180 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 %free_peb_count.1, ptr %free_peb_count180, align 1
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %call181 = tail call ptr @rb_first(ptr noundef %used) #11
  %tobool191.not1153 = icmp eq ptr %call181, null
  br i1 %tobool191.not1153, label %if.end179.for.cond236.preheader_crit_edge, label %for.body192.lr.ph

if.end179.for.cond236.preheader_crit_edge:        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond236.preheader

for.body192.lr.ph:                                ; preds = %if.end179
  %tobool1.not.i1075 = icmp eq ptr %retval.0.i10431135, null
  br label %for.body192

for.cond236.preheader:                            ; preds = %for.inc225.for.cond236.preheader_crit_edge, %if.end179.for.cond236.preheader_crit_edge
  %used_peb_count.0.lcssa = phi i32 [ 0, %if.end179.for.cond236.preheader_crit_edge ], [ %inc199, %for.inc225.for.cond236.preheader_crit_edge ]
  %fm_pos.2.lcssa = phi i32 [ %fm_pos.1, %if.end179.for.cond236.preheader_crit_edge ], [ %add200, %for.inc225.for.cond236.preheader_crit_edge ]
  %tobool1.not.i1083 = icmp eq ptr %retval.0.i10431135, null
  br label %for.body239

for.body192:                                      ; preds = %for.inc225.for.body192_crit_edge, %for.body192.lr.ph
  %fm_pos.21156 = phi i32 [ %fm_pos.1, %for.body192.lr.ph ], [ %add200, %for.inc225.for.body192_crit_edge ]
  %tmp_rb.11155 = phi ptr [ %call181, %for.body192.lr.ph ], [ %call226, %for.inc225.for.body192_crit_edge ]
  %used_peb_count.01154 = phi i32 [ 0, %for.body192.lr.ph ], [ %inc199, %for.inc225.for.body192_crit_edge ]
  %add.ptr193 = getelementptr i8, ptr %1, i32 %fm_pos.21156
  %pnum194 = getelementptr inbounds %struct.ubi_wl_entry, ptr %tmp_rb.11155, i32 0, i32 2
  %141 = ptrtoint ptr %pnum194 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pnum194, align 4
  %143 = ptrtoint ptr %add.ptr193 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 %142, ptr %add.ptr193, align 1
  %144 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load.i.i1073 = load i8, ptr %dbg.i.i, align 4
  %145 = and i8 %bf.load.i.i1073, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i1074 = icmp eq i8 %145, 0
  %or.cond.i1076 = or i1 %tobool1.not.i1075, %tobool.not.i1074
  br i1 %or.cond.i1076, label %for.body192.set_seen.exit1078_crit_edge, label %if.end.i1077

for.body192.set_seen.exit1078_crit_edge:          ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1078

if.end.i1077:                                     ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %pnum194 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pnum194, align 4
  tail call void @_set_bit(i32 noundef %147, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1078

set_seen.exit1078:                                ; preds = %if.end.i1077, %for.body192.set_seen.exit1078_crit_edge
  %ec197 = getelementptr inbounds %struct.ubi_wl_entry, ptr %tmp_rb.11155, i32 0, i32 1
  %148 = ptrtoint ptr %ec197 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ec197, align 4
  %ec198 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr193, i32 0, i32 1
  %150 = ptrtoint ptr %ec198 to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %149, ptr %ec198, align 1
  %inc199 = add i32 %used_peb_count.01154, 1
  %add200 = add i32 %fm_pos.21156, 8
  %151 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add200, i32 %152)
  %cmp203.not = icmp ugt i32 %add200, %152
  br i1 %cmp203.not, label %do.end216, label %set_seen.exit1078.for.inc225_crit_edge, !prof !199

set_seen.exit1078.for.inc225_crit_edge:           ; preds = %set_seen.exit1078
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc225

do.end216:                                        ; preds = %set_seen.exit1078
  call void @__sanitizer_cov_trace_pc() #13
  %153 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1079 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i1079 to ptr
  %task219 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %task219 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %task219, align 8
  %pid220 = getelementptr inbounds %struct.task_struct, ptr %156, i32 0, i32 68
  %157 = ptrtoint ptr %pid220 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pid220, align 8
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1245, i32 noundef %158) #18
  tail call void @dump_stack() #18
  br label %for.inc225

for.inc225:                                       ; preds = %do.end216, %set_seen.exit1078.for.inc225_crit_edge
  %call226 = tail call ptr @rb_next(ptr noundef nonnull %tmp_rb.11155) #11
  %tobool191.not = icmp eq ptr %call226, null
  br i1 %tobool191.not, label %for.inc225.for.cond236.preheader_crit_edge, label %for.inc225.for.body192_crit_edge

for.inc225.for.body192_crit_edge:                 ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body192

for.inc225.for.cond236.preheader_crit_edge:       ; preds = %for.inc225
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond236.preheader

for.body239:                                      ; preds = %for.inc291.for.body239_crit_edge, %for.cond236.preheader
  %fm_pos.31168 = phi i32 [ %fm_pos.2.lcssa, %for.cond236.preheader ], [ %fm_pos.4.lcssa, %for.inc291.for.body239_crit_edge ]
  %i.21167 = phi i32 [ 0, %for.cond236.preheader ], [ %inc292, %for.inc291.for.body239_crit_edge ]
  %used_peb_count.11166 = phi i32 [ %used_peb_count.0.lcssa, %for.cond236.preheader ], [ %used_peb_count.2.lcssa, %for.inc291.for.body239_crit_edge ]
  %arrayidx241 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 %i.21167
  %159 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %159)
  %wl_e.21159 = load ptr, ptr %arrayidx241, align 4
  %cmp247.not1160 = icmp eq ptr %wl_e.21159, %arrayidx241
  br i1 %cmp247.not1160, label %for.body239.for.inc291_crit_edge, label %for.body239.for.body251_crit_edge

for.body239.for.body251_crit_edge:                ; preds = %for.body239
  br label %for.body251

for.body239.for.inc291_crit_edge:                 ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc291

for.body251:                                      ; preds = %for.inc284.for.body251_crit_edge, %for.body239.for.body251_crit_edge
  %wl_e.21163 = phi ptr [ %wl_e.2, %for.inc284.for.body251_crit_edge ], [ %wl_e.21159, %for.body239.for.body251_crit_edge ]
  %fm_pos.41162 = phi i32 [ %add259, %for.inc284.for.body251_crit_edge ], [ %fm_pos.31168, %for.body239.for.body251_crit_edge ]
  %used_peb_count.21161 = phi i32 [ %inc258, %for.inc284.for.body251_crit_edge ], [ %used_peb_count.11166, %for.body239.for.body251_crit_edge ]
  %add.ptr252 = getelementptr i8, ptr %1, i32 %fm_pos.41162
  %pnum253 = getelementptr inbounds %struct.ubi_wl_entry, ptr %wl_e.21163, i32 0, i32 2
  %160 = ptrtoint ptr %pnum253 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pnum253, align 4
  %162 = ptrtoint ptr %add.ptr252 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %161, ptr %add.ptr252, align 1
  %163 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %bf.load.i.i1081 = load i8, ptr %dbg.i.i, align 4
  %164 = and i8 %bf.load.i.i1081, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i1082 = icmp eq i8 %164, 0
  %or.cond.i1084 = or i1 %tobool1.not.i1083, %tobool.not.i1082
  br i1 %or.cond.i1084, label %for.body251.set_seen.exit1086_crit_edge, label %if.end.i1085

for.body251.set_seen.exit1086_crit_edge:          ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1086

if.end.i1085:                                     ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %pnum253 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pnum253, align 4
  tail call void @_set_bit(i32 noundef %166, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1086

set_seen.exit1086:                                ; preds = %if.end.i1085, %for.body251.set_seen.exit1086_crit_edge
  %ec256 = getelementptr inbounds %struct.ubi_wl_entry, ptr %wl_e.21163, i32 0, i32 1
  %167 = ptrtoint ptr %ec256 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ec256, align 4
  %ec257 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr252, i32 0, i32 1
  %169 = ptrtoint ptr %ec257 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 %168, ptr %ec257, align 1
  %inc258 = add i32 %used_peb_count.21161, 1
  %add259 = add i32 %fm_pos.41162, 8
  %170 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add259, i32 %171)
  %cmp262.not = icmp ugt i32 %add259, %171
  br i1 %cmp262.not, label %do.end275, label %set_seen.exit1086.for.inc284_crit_edge, !prof !199

set_seen.exit1086.for.inc284_crit_edge:           ; preds = %set_seen.exit1086
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc284

do.end275:                                        ; preds = %set_seen.exit1086
  call void @__sanitizer_cov_trace_pc() #13
  %172 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1087 = and i32 %172, -16384
  %173 = inttoptr i32 %and.i1087 to ptr
  %task278 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %task278 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %task278, align 8
  %pid279 = getelementptr inbounds %struct.task_struct, ptr %175, i32 0, i32 68
  %176 = ptrtoint ptr %pid279 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pid279, align 8
  %call280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1257, i32 noundef %177) #18
  tail call void @dump_stack() #18
  br label %for.inc284

for.inc284:                                       ; preds = %do.end275, %set_seen.exit1086.for.inc284_crit_edge
  %178 = ptrtoint ptr %wl_e.21163 to i32
  call void @__asan_load4_noabort(i32 %178)
  %wl_e.2 = load ptr, ptr %wl_e.21163, align 4
  %cmp247.not = icmp eq ptr %wl_e.2, %arrayidx241
  br i1 %cmp247.not, label %for.inc284.for.inc291_crit_edge, label %for.inc284.for.body251_crit_edge

for.inc284.for.body251_crit_edge:                 ; preds = %for.inc284
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body251

for.inc284.for.inc291_crit_edge:                  ; preds = %for.inc284
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc291

for.inc291:                                       ; preds = %for.inc284.for.inc291_crit_edge, %for.body239.for.inc291_crit_edge
  %used_peb_count.2.lcssa = phi i32 [ %used_peb_count.11166, %for.body239.for.inc291_crit_edge ], [ %inc258, %for.inc284.for.inc291_crit_edge ]
  %fm_pos.4.lcssa = phi i32 [ %fm_pos.31168, %for.body239.for.inc291_crit_edge ], [ %add259, %for.inc284.for.inc291_crit_edge ]
  %inc292 = add nuw nsw i32 %i.21167, 1
  %exitcond.not = icmp eq i32 %inc292, 10
  br i1 %exitcond.not, label %for.end293, label %for.inc291.for.body239_crit_edge

for.inc291.for.body239_crit_edge:                 ; preds = %for.inc291
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body239

for.end293:                                       ; preds = %for.inc291
  %used_peb_count294 = getelementptr i8, ptr %1, i32 320
  %179 = ptrtoint ptr %used_peb_count294 to i32
  call void @__asan_storeN_noabort(i32 %179, i32 4)
  store i32 %used_peb_count.2.lcssa, ptr %used_peb_count294, align 1
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %call295 = tail call ptr @rb_first(ptr noundef %scrub) #11
  %tobool305.not1169 = icmp eq ptr %call295, null
  br i1 %tobool305.not1169, label %for.end293.for.end349_crit_edge, label %for.end293.for.body306_crit_edge

for.end293.for.body306_crit_edge:                 ; preds = %for.end293
  br label %for.body306

for.end293.for.end349_crit_edge:                  ; preds = %for.end293
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end349

for.body306:                                      ; preds = %for.inc339.for.body306_crit_edge, %for.end293.for.body306_crit_edge
  %fm_pos.51172 = phi i32 [ %add314, %for.inc339.for.body306_crit_edge ], [ %fm_pos.4.lcssa, %for.end293.for.body306_crit_edge ]
  %tmp_rb.21171 = phi ptr [ %call340, %for.inc339.for.body306_crit_edge ], [ %call295, %for.end293.for.body306_crit_edge ]
  %scrub_peb_count.01170 = phi i32 [ %inc313, %for.inc339.for.body306_crit_edge ], [ 0, %for.end293.for.body306_crit_edge ]
  %add.ptr307 = getelementptr i8, ptr %1, i32 %fm_pos.51172
  %pnum308 = getelementptr inbounds %struct.ubi_wl_entry, ptr %tmp_rb.21171, i32 0, i32 2
  %180 = ptrtoint ptr %pnum308 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pnum308, align 4
  %182 = ptrtoint ptr %add.ptr307 to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 %181, ptr %add.ptr307, align 1
  %183 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load.i.i1089 = load i8, ptr %dbg.i.i, align 4
  %184 = and i8 %bf.load.i.i1089, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i1090 = icmp eq i8 %184, 0
  %or.cond.i1092 = or i1 %tobool1.not.i1083, %tobool.not.i1090
  br i1 %or.cond.i1092, label %for.body306.set_seen.exit1094_crit_edge, label %if.end.i1093

for.body306.set_seen.exit1094_crit_edge:          ; preds = %for.body306
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1094

if.end.i1093:                                     ; preds = %for.body306
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %pnum308 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %pnum308, align 4
  tail call void @_set_bit(i32 noundef %186, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1094

set_seen.exit1094:                                ; preds = %if.end.i1093, %for.body306.set_seen.exit1094_crit_edge
  %ec311 = getelementptr inbounds %struct.ubi_wl_entry, ptr %tmp_rb.21171, i32 0, i32 1
  %187 = ptrtoint ptr %ec311 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %ec311, align 4
  %ec312 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr307, i32 0, i32 1
  %189 = ptrtoint ptr %ec312 to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 %188, ptr %ec312, align 1
  %inc313 = add i32 %scrub_peb_count.01170, 1
  %add314 = add i32 %fm_pos.51172, 8
  %190 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add314, i32 %191)
  %cmp317.not = icmp ugt i32 %add314, %191
  br i1 %cmp317.not, label %do.end330, label %set_seen.exit1094.for.inc339_crit_edge, !prof !199

set_seen.exit1094.for.inc339_crit_edge:           ; preds = %set_seen.exit1094
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc339

do.end330:                                        ; preds = %set_seen.exit1094
  call void @__sanitizer_cov_trace_pc() #13
  %192 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1095 = and i32 %192, -16384
  %193 = inttoptr i32 %and.i1095 to ptr
  %task333 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %task333 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %task333, align 8
  %pid334 = getelementptr inbounds %struct.task_struct, ptr %195, i32 0, i32 68
  %196 = ptrtoint ptr %pid334 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %pid334, align 8
  %call335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1270, i32 noundef %197) #18
  tail call void @dump_stack() #18
  br label %for.inc339

for.inc339:                                       ; preds = %do.end330, %set_seen.exit1094.for.inc339_crit_edge
  %call340 = tail call ptr @rb_next(ptr noundef nonnull %tmp_rb.21171) #11
  %tobool305.not = icmp eq ptr %call340, null
  br i1 %tobool305.not, label %for.inc339.for.end349_crit_edge, label %for.inc339.for.body306_crit_edge

for.inc339.for.body306_crit_edge:                 ; preds = %for.inc339
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body306

for.inc339.for.end349_crit_edge:                  ; preds = %for.inc339
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end349

for.end349:                                       ; preds = %for.inc339.for.end349_crit_edge, %for.end293.for.end349_crit_edge
  %scrub_peb_count.0.lcssa = phi i32 [ 0, %for.end293.for.end349_crit_edge ], [ %inc313, %for.inc339.for.end349_crit_edge ]
  %fm_pos.5.lcssa = phi i32 [ %fm_pos.4.lcssa, %for.end293.for.end349_crit_edge ], [ %add314, %for.inc339.for.end349_crit_edge ]
  %scrub_peb_count350 = getelementptr i8, ptr %1, i32 324
  %198 = ptrtoint ptr %scrub_peb_count350 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 %scrub_peb_count.0.lcssa, ptr %scrub_peb_count350, align 1
  %works = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54
  %199 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %199)
  %ubi_wrk.01175 = load ptr, ptr %works, align 4
  %cmp357.not1176 = icmp eq ptr %ubi_wrk.01175, %works
  br i1 %cmp357.not1176, label %for.end349.for.end426_crit_edge, label %for.end349.for.body361_crit_edge

for.end349.for.body361_crit_edge:                 ; preds = %for.end349
  br label %for.body361

for.end349.for.end426_crit_edge:                  ; preds = %for.end349
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end426

for.body361:                                      ; preds = %for.inc420.for.body361_crit_edge, %for.end349.for.body361_crit_edge
  %ubi_wrk.01179 = phi ptr [ %ubi_wrk.0, %for.inc420.for.body361_crit_edge ], [ %ubi_wrk.01175, %for.end349.for.body361_crit_edge ]
  %fm_pos.61178 = phi i32 [ %fm_pos.7, %for.inc420.for.body361_crit_edge ], [ %fm_pos.5.lcssa, %for.end349.for.body361_crit_edge ]
  %erase_peb_count.01177 = phi i32 [ %erase_peb_count.1, %for.inc420.for.body361_crit_edge ], [ 0, %for.end349.for.body361_crit_edge ]
  %call362 = tail call i32 @ubi_is_erase_work(ptr noundef %ubi_wrk.01179) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %for.body361.for.inc420_crit_edge, label %if.then364

for.body361.for.inc420_crit_edge:                 ; preds = %for.body361
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc420

if.then364:                                       ; preds = %for.body361
  %e = getelementptr inbounds %struct.ubi_work, ptr %ubi_wrk.01179, i32 0, i32 2
  %200 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %e, align 4
  %tobool366.not = icmp eq ptr %201, null
  br i1 %tobool366.not, label %do.end378, label %if.then364.do.end386_crit_edge, !prof !199

if.then364.do.end386_crit_edge:                   ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end386

do.end378:                                        ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #13
  %202 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1096 = and i32 %202, -16384
  %203 = inttoptr i32 %and.i1096 to ptr
  %task381 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %task381 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %task381, align 8
  %pid382 = getelementptr inbounds %struct.task_struct, ptr %205, i32 0, i32 68
  %206 = ptrtoint ptr %pid382 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %pid382, align 8
  %call383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1278, i32 noundef %207) #18
  tail call void @dump_stack() #18
  br label %do.end386

do.end386:                                        ; preds = %do.end378, %if.then364.do.end386_crit_edge
  %add.ptr387 = getelementptr i8, ptr %1, i32 %fm_pos.61178
  %pnum388 = getelementptr inbounds %struct.ubi_wl_entry, ptr %201, i32 0, i32 2
  %208 = ptrtoint ptr %pnum388 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %pnum388, align 4
  %210 = ptrtoint ptr %add.ptr387 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %209, ptr %add.ptr387, align 1
  %211 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %bf.load.i.i1098 = load i8, ptr %dbg.i.i, align 4
  %212 = and i8 %bf.load.i.i1098, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool.not.i1099 = icmp eq i8 %212, 0
  %or.cond.i1101 = or i1 %tobool1.not.i1083, %tobool.not.i1099
  br i1 %or.cond.i1101, label %do.end386.set_seen.exit1103_crit_edge, label %if.end.i1102

do.end386.set_seen.exit1103_crit_edge:            ; preds = %do.end386
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1103

if.end.i1102:                                     ; preds = %do.end386
  call void @__sanitizer_cov_trace_pc() #13
  %213 = ptrtoint ptr %pnum388 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %pnum388, align 4
  tail call void @_set_bit(i32 noundef %214, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1103

set_seen.exit1103:                                ; preds = %if.end.i1102, %do.end386.set_seen.exit1103_crit_edge
  %ec391 = getelementptr inbounds %struct.ubi_wl_entry, ptr %201, i32 0, i32 1
  %215 = ptrtoint ptr %ec391 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %ec391, align 4
  %ec392 = getelementptr inbounds %struct.ubi_fm_ec, ptr %add.ptr387, i32 0, i32 1
  %217 = ptrtoint ptr %ec392 to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 %216, ptr %ec392, align 1
  %inc393 = add i32 %erase_peb_count.01177, 1
  %add394 = add i32 %fm_pos.61178, 8
  %218 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add394, i32 %219)
  %cmp397.not = icmp ugt i32 %add394, %219
  br i1 %cmp397.not, label %do.end410, label %set_seen.exit1103.for.inc420_crit_edge, !prof !199

set_seen.exit1103.for.inc420_crit_edge:           ; preds = %set_seen.exit1103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc420

do.end410:                                        ; preds = %set_seen.exit1103
  call void @__sanitizer_cov_trace_pc() #13
  %220 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1104 = and i32 %220, -16384
  %221 = inttoptr i32 %and.i1104 to ptr
  %task413 = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %task413 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %task413, align 8
  %pid414 = getelementptr inbounds %struct.task_struct, ptr %223, i32 0, i32 68
  %224 = ptrtoint ptr %pid414 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pid414, align 8
  %call415 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1288, i32 noundef %225) #18
  tail call void @dump_stack() #18
  br label %for.inc420

for.inc420:                                       ; preds = %do.end410, %set_seen.exit1103.for.inc420_crit_edge, %for.body361.for.inc420_crit_edge
  %erase_peb_count.1 = phi i32 [ %inc393, %do.end410 ], [ %inc393, %set_seen.exit1103.for.inc420_crit_edge ], [ %erase_peb_count.01177, %for.body361.for.inc420_crit_edge ]
  %fm_pos.7 = phi i32 [ %add394, %do.end410 ], [ %add394, %set_seen.exit1103.for.inc420_crit_edge ], [ %fm_pos.61178, %for.body361.for.inc420_crit_edge ]
  %226 = ptrtoint ptr %ubi_wrk.01179 to i32
  call void @__asan_load4_noabort(i32 %226)
  %ubi_wrk.0 = load ptr, ptr %ubi_wrk.01179, align 4
  %cmp357.not = icmp eq ptr %ubi_wrk.0, %works
  br i1 %cmp357.not, label %for.inc420.for.end426_crit_edge, label %for.inc420.for.body361_crit_edge

for.inc420.for.body361_crit_edge:                 ; preds = %for.inc420
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body361

for.inc420.for.end426_crit_edge:                  ; preds = %for.inc420
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end426

for.end426:                                       ; preds = %for.inc420.for.end426_crit_edge, %for.end349.for.end426_crit_edge
  %erase_peb_count.0.lcssa = phi i32 [ 0, %for.end349.for.end426_crit_edge ], [ %erase_peb_count.1, %for.inc420.for.end426_crit_edge ]
  %fm_pos.6.lcssa = phi i32 [ %fm_pos.5.lcssa, %for.end349.for.end426_crit_edge ], [ %fm_pos.7, %for.inc420.for.end426_crit_edge ]
  %erase_peb_count427 = getelementptr i8, ptr %1, i32 332
  %227 = ptrtoint ptr %erase_peb_count427 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 4)
  store i32 %erase_peb_count.0.lcssa, ptr %erase_peb_count427, align 1
  %228 = getelementptr inbounds %struct.ubi_eba_leb_desc, ptr %ldesc, i32 0, i32 1
  br label %for.body431

for.body431:                                      ; preds = %for.inc537.for.body431_crit_edge, %for.end426
  %fm_pos.81187 = phi i32 [ %fm_pos.6.lcssa, %for.end426 ], [ %fm_pos.9, %for.inc537.for.body431_crit_edge ]
  %i.31186 = phi i32 [ 0, %for.end426 ], [ %inc538, %for.inc537.for.body431_crit_edge ]
  %vol_count.01185 = phi i32 [ 0, %for.end426 ], [ %vol_count.1, %for.inc537.for.body431_crit_edge ]
  %arrayidx432 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.31186
  %229 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx432, align 4
  %tobool433.not = icmp eq ptr %230, null
  br i1 %tobool433.not, label %for.body431.for.inc537_crit_edge, label %if.end435

for.body431.for.inc537_crit_edge:                 ; preds = %for.body431
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc537

if.end435:                                        ; preds = %for.body431
  %inc436 = add i32 %vol_count.01185, 1
  %add.ptr437 = getelementptr i8, ptr %1, i32 %fm_pos.81187
  %add438 = add i32 %fm_pos.81187, 32
  %231 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add438, i32 %232)
  %cmp441.not = icmp ugt i32 %add438, %232
  br i1 %cmp441.not, label %do.end454, label %if.end435.do.end462_crit_edge, !prof !199

if.end435.do.end462_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end462

do.end454:                                        ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #13
  %233 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1105 = and i32 %233, -16384
  %234 = inttoptr i32 %and.i1105 to ptr
  %task457 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %task457 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task457, align 8
  %pid458 = getelementptr inbounds %struct.task_struct, ptr %236, i32 0, i32 68
  %237 = ptrtoint ptr %pid458 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pid458, align 8
  %call459 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1303, i32 noundef %238) #18
  call void @dump_stack() #18
  br label %do.end462

do.end462:                                        ; preds = %do.end454, %if.end435.do.end462_crit_edge
  %239 = ptrtoint ptr %add.ptr437 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 4)
  store i32 -97055023, ptr %add.ptr437, align 1
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %230, i32 0, i32 3
  %240 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %vol_id, align 4
  %vol_id464 = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr437, i32 0, i32 1
  %242 = ptrtoint ptr %vol_id464 to i32
  call void @__asan_storeN_noabort(i32 %242, i32 4)
  store i32 %241, ptr %vol_id464, align 1
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %230, i32 0, i32 10
  %243 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %vol_type, align 8
  %conv465 = trunc i32 %244 to i8
  %vol_type466 = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr437, i32 0, i32 2
  %245 = ptrtoint ptr %vol_type466 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv465, ptr %vol_type466, align 1
  %used_ebs = getelementptr inbounds %struct.ubi_volume, ptr %230, i32 0, i32 12
  %246 = ptrtoint ptr %used_ebs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %used_ebs, align 8
  %used_ebs467 = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr437, i32 0, i32 5
  %248 = ptrtoint ptr %used_ebs467 to i32
  call void @__asan_storeN_noabort(i32 %248, i32 4)
  store i32 %247, ptr %used_ebs467, align 1
  %data_pad = getelementptr inbounds %struct.ubi_volume, ptr %230, i32 0, i32 16
  %249 = ptrtoint ptr %data_pad to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %data_pad, align 4
  %data_pad468 = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr437, i32 0, i32 4
  %251 = ptrtoint ptr %data_pad468 to i32
  call void @__asan_storeN_noabort(i32 %251, i32 4)
  store i32 %250, ptr %data_pad468, align 1
  %last_eb_bytes = getelementptr inbounds %struct.ubi_volume, ptr %230, i32 0, i32 13
  %252 = ptrtoint ptr %last_eb_bytes to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %last_eb_bytes, align 4
  %last_eb_bytes469 = getelementptr inbounds %struct.ubi_fm_volhdr, ptr %add.ptr437, i32 0, i32 6
  %254 = ptrtoint ptr %last_eb_bytes469 to i32
  call void @__asan_storeN_noabort(i32 %254, i32 4)
  store i32 %253, ptr %last_eb_bytes469, align 1
  %255 = load i32, ptr %vol_type, align 8
  %.off = add i32 %255, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.end462.do.end496_crit_edge, label %do.end488

do.end462.do.end496_crit_edge:                    ; preds = %do.end462
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end496

do.end488:                                        ; preds = %do.end462
  call void @__sanitizer_cov_trace_pc() #13
  %256 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1106 = and i32 %256, -16384
  %257 = inttoptr i32 %and.i1106 to ptr
  %task491 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %task491 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %task491, align 8
  %pid492 = getelementptr inbounds %struct.task_struct, ptr %259, i32 0, i32 68
  %260 = ptrtoint ptr %pid492 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %pid492, align 8
  %call493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1313, i32 noundef %261) #18
  call void @dump_stack() #18
  br label %do.end496

do.end496:                                        ; preds = %do.end488, %do.end462.do.end496_crit_edge
  %add.ptr497 = getelementptr i8, ptr %1, i32 %add438
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %230, i32 0, i32 9
  %262 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %reserved_pebs, align 4
  %mul = shl i32 %263, 2
  %add498 = add i32 %fm_pos.81187, 40
  %add499 = add i32 %add498, %mul
  %264 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %fm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add499, i32 %265)
  %cmp502.not = icmp ugt i32 %add499, %265
  br i1 %cmp502.not, label %do.end515, label %do.end496.do.end523_crit_edge, !prof !199

do.end496.do.end523_crit_edge:                    ; preds = %do.end496
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end523

do.end515:                                        ; preds = %do.end496
  call void @__sanitizer_cov_trace_pc() #13
  %266 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1107 = and i32 %266, -16384
  %267 = inttoptr i32 %and.i1107 to ptr
  %task518 = getelementptr inbounds %struct.thread_info, ptr %267, i32 0, i32 2
  %268 = ptrtoint ptr %task518 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %task518, align 8
  %pid519 = getelementptr inbounds %struct.task_struct, ptr %269, i32 0, i32 68
  %270 = ptrtoint ptr %pid519 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %pid519, align 8
  %call520 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1317, i32 noundef %271) #18
  call void @dump_stack() #18
  br label %do.end523

do.end523:                                        ; preds = %do.end515, %do.end496.do.end523_crit_edge
  %272 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %reserved_pebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp5261182 = icmp sgt i32 %273, 0
  br i1 %cmp5261182, label %for.body528.lr.ph, label %do.end523.for.end534_crit_edge

do.end523.for.end534_crit_edge:                   ; preds = %do.end523
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end534

for.body528.lr.ph:                                ; preds = %do.end523
  %pnum530 = getelementptr inbounds %struct.ubi_fm_eba, ptr %add.ptr497, i32 0, i32 2
  br label %for.body528

for.body528:                                      ; preds = %for.body528.for.body528_crit_edge, %for.body528.lr.ph
  %j.01183 = phi i32 [ 0, %for.body528.lr.ph ], [ %inc533, %for.body528.for.body528_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ldesc) #11
  %274 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -1, ptr %ldesc, align 4, !annotation !200
  %275 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 -1, ptr %228, align 4, !annotation !200
  call void @ubi_eba_get_ldesc(ptr noundef nonnull %230, i32 noundef %j.01183, ptr noundef nonnull %ldesc) #11
  %276 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %228, align 4
  %arrayidx531 = getelementptr [0 x i32], ptr %pnum530, i32 0, i32 %j.01183
  %278 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_storeN_noabort(i32 %278, i32 4)
  store i32 %277, ptr %arrayidx531, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ldesc) #11
  %inc533 = add nuw nsw i32 %j.01183, 1
  %279 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %reserved_pebs, align 4
  %cmp526 = icmp slt i32 %inc533, %280
  br i1 %cmp526, label %for.body528.for.body528_crit_edge, label %for.body528.for.end534_crit_edge

for.body528.for.end534_crit_edge:                 ; preds = %for.body528
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end534

for.body528.for.body528_crit_edge:                ; preds = %for.body528
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body528

for.end534:                                       ; preds = %for.body528.for.end534_crit_edge, %do.end523.for.end534_crit_edge
  %j.0.lcssa = phi i32 [ 0, %do.end523.for.end534_crit_edge ], [ %inc533, %for.body528.for.end534_crit_edge ]
  %reserved_pebs535 = getelementptr inbounds %struct.ubi_fm_eba, ptr %add.ptr497, i32 0, i32 1
  %281 = ptrtoint ptr %reserved_pebs535 to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 %j.0.lcssa, ptr %reserved_pebs535, align 1
  %282 = ptrtoint ptr %add.ptr497 to i32
  call void @__asan_storeN_noabort(i32 %282, i32 4)
  store i32 -255835992, ptr %add.ptr497, align 1
  br label %for.inc537

for.inc537:                                       ; preds = %for.end534, %for.body431.for.inc537_crit_edge
  %vol_count.1 = phi i32 [ %inc436, %for.end534 ], [ %vol_count.01185, %for.body431.for.inc537_crit_edge ]
  %fm_pos.9 = phi i32 [ %add499, %for.end534 ], [ %fm_pos.81187, %for.body431.for.inc537_crit_edge ]
  %inc538 = add nuw nsw i32 %i.31186, 1
  %exitcond1198.not = icmp eq i32 %inc538, 129
  br i1 %exitcond1198.not, label %for.end539, label %for.inc537.for.body431_crit_edge

for.inc537.for.body431_crit_edge:                 ; preds = %for.inc537
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body431

for.end539:                                       ; preds = %for.inc537
  %vol_count540 = getelementptr i8, ptr %1, i32 336
  %283 = ptrtoint ptr %vol_count540 to i32
  call void @__asan_storeN_noabort(i32 %283, i32 4)
  store i32 %vol_count.1, ptr %vol_count540, align 1
  %bad_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 62
  %284 = ptrtoint ptr %bad_peb_count to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %bad_peb_count, align 8
  %bad_peb_count541 = getelementptr i8, ptr %1, i32 328
  %286 = ptrtoint ptr %bad_peb_count541 to i32
  call void @__asan_storeN_noabort(i32 %286, i32 4)
  store i32 %285, ptr %bad_peb_count541, align 1
  %call542 = call i64 @ubi_next_sqnum(ptr noundef %ubi) #11
  %sqnum543 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %32, i32 0, i32 13
  %287 = ptrtoint ptr %sqnum543 to i32
  call void @__asan_storeN_noabort(i32 %287, i32 8)
  store i64 %call542, ptr %sqnum543, align 1
  %lnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %32, i32 0, i32 6
  %288 = ptrtoint ptr %lnum to i32
  call void @__asan_storeN_noabort(i32 %288, i32 4)
  store i32 0, ptr %lnum, align 1
  call void @_raw_spin_unlock(ptr noundef %wl_lock) #11
  call void @_raw_spin_unlock(ptr noundef %volumes_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_write_fastmap.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_write_fastmap, %if.then556)) #11
          to label %do.end565 [label %if.then556], !srcloc !198

if.then556:                                       ; preds = %for.end539
  call void @__sanitizer_cov_trace_pc() #13
  %289 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1108 = and i32 %289, -16384
  %290 = inttoptr i32 %and.i1108 to ptr
  %task558 = getelementptr inbounds %struct.thread_info, ptr %290, i32 0, i32 2
  %291 = ptrtoint ptr %task558 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %task558, align 8
  %pid559 = getelementptr inbounds %struct.task_struct, ptr %292, i32 0, i32 68
  %293 = ptrtoint ptr %pid559 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %pid559, align 8
  %295 = ptrtoint ptr %new_fm to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %new_fm, align 4
  %pnum562 = getelementptr inbounds %struct.ubi_wl_entry, ptr %296, i32 0, i32 2
  %297 = ptrtoint ptr %pnum562 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %pnum562, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_write_fastmap.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.80, i32 noundef %294, i32 noundef %298) #11
  br label %do.end565

do.end565:                                        ; preds = %if.then556, %for.end539
  %299 = ptrtoint ptr %new_fm to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %new_fm, align 4
  %pnum568 = getelementptr inbounds %struct.ubi_wl_entry, ptr %300, i32 0, i32 2
  %301 = ptrtoint ptr %pnum568 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %pnum568, align 4
  %call569 = call i32 @ubi_io_write_vid_hdr(ptr noundef %ubi, i32 noundef %302, ptr noundef nonnull %call7.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call569)
  %tobool570.not = icmp eq i32 %call569, 0
  br i1 %tobool570.not, label %for.cond573.preheader, label %if.then571

for.cond573.preheader:                            ; preds = %do.end565
  %303 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %used_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %cmp5751188 = icmp sgt i32 %304, 0
  br i1 %cmp5751188, label %for.cond573.preheader.for.body577_crit_edge, label %for.cond573.preheader.for.end591_crit_edge

for.cond573.preheader.for.end591_crit_edge:       ; preds = %for.cond573.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end591

for.cond573.preheader.for.body577_crit_edge:      ; preds = %for.cond573.preheader
  br label %for.body577

if.then571:                                       ; preds = %do.end565
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.81) #11
  br label %out_free_seen

for.body577:                                      ; preds = %set_seen.exit1115.for.body577_crit_edge, %for.cond573.preheader.for.body577_crit_edge
  %i.41189 = phi i32 [ %inc590, %set_seen.exit1115.for.body577_crit_edge ], [ 0, %for.cond573.preheader.for.body577_crit_edge ]
  %arrayidx579 = getelementptr [32 x ptr], ptr %new_fm, i32 0, i32 %i.41189
  %305 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %arrayidx579, align 4
  %pnum580 = getelementptr inbounds %struct.ubi_wl_entry, ptr %306, i32 0, i32 2
  %307 = ptrtoint ptr %pnum580 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %pnum580, align 4
  %arrayidx581 = getelementptr %struct.ubi_fm_sb, ptr %1, i32 0, i32 5, i32 %i.41189
  %309 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_storeN_noabort(i32 %309, i32 4)
  store i32 %308, ptr %arrayidx581, align 1
  %310 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %bf.load.i.i1110 = load i8, ptr %dbg.i.i, align 4
  %311 = and i8 %bf.load.i.i1110, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool.not.i1111 = icmp eq i8 %311, 0
  %or.cond.i1113 = or i1 %tobool1.not.i1083, %tobool.not.i1111
  br i1 %or.cond.i1113, label %for.body577.set_seen.exit1115_crit_edge, label %if.end.i1114

for.body577.set_seen.exit1115_crit_edge:          ; preds = %for.body577
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_seen.exit1115

if.end.i1114:                                     ; preds = %for.body577
  call void @__sanitizer_cov_trace_pc() #13
  %312 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %arrayidx579, align 4
  %pnum584 = getelementptr inbounds %struct.ubi_wl_entry, ptr %313, i32 0, i32 2
  %314 = ptrtoint ptr %pnum584 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %pnum584, align 4
  call void @_set_bit(i32 noundef %315, ptr noundef nonnull %retval.0.i10431135) #11
  br label %set_seen.exit1115

set_seen.exit1115:                                ; preds = %if.end.i1114, %for.body577.set_seen.exit1115_crit_edge
  %316 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx579, align 4
  %ec587 = getelementptr inbounds %struct.ubi_wl_entry, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %ec587 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ec587, align 4
  %arrayidx588 = getelementptr %struct.ubi_fm_sb, ptr %1, i32 0, i32 6, i32 %i.41189
  %320 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_storeN_noabort(i32 %320, i32 4)
  store i32 %319, ptr %arrayidx588, align 1
  %inc590 = add nuw nsw i32 %i.41189, 1
  %321 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %used_blocks, align 4
  %cmp575 = icmp slt i32 %inc590, %322
  br i1 %cmp575, label %set_seen.exit1115.for.body577_crit_edge, label %set_seen.exit1115.for.end591_crit_edge

set_seen.exit1115.for.end591_crit_edge:           ; preds = %set_seen.exit1115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end591

set_seen.exit1115.for.body577_crit_edge:          ; preds = %set_seen.exit1115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body577

for.end591:                                       ; preds = %set_seen.exit1115.for.end591_crit_edge, %for.cond573.preheader.for.end591_crit_edge
  %data_crc = getelementptr inbounds %struct.ubi_fm_sb, ptr %1, i32 0, i32 3
  %323 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %323, i32 4)
  store i32 0, ptr %data_crc, align 1
  %324 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %fm_size, align 8
  %call593 = call i32 @crc32_le(i32 noundef -1, ptr noundef %1, i32 noundef %325) #16
  %326 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %326, i32 4)
  store i32 %call593, ptr %data_crc, align 1
  %327 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %used_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %328)
  %cmp5971190 = icmp sgt i32 %328, 1
  br i1 %cmp5971190, label %for.body599.lr.ph, label %for.end591.for.cond639.preheader_crit_edge

for.end591.for.cond639.preheader_crit_edge:       ; preds = %for.end591
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond639.preheader

for.body599.lr.ph:                                ; preds = %for.end591
  %sqnum601 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 13
  %lnum602 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 6
  br label %for.body599

for.cond639.preheader:                            ; preds = %for.inc636.for.cond639.preheader_crit_edge, %for.end591.for.cond639.preheader_crit_edge
  %329 = phi i32 [ %328, %for.end591.for.cond639.preheader_crit_edge ], [ %353, %for.inc636.for.cond639.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %cmp6411192 = icmp sgt i32 %329, 0
  br i1 %cmp6411192, label %for.body643.lr.ph, label %for.cond639.preheader.do.body660_crit_edge

for.cond639.preheader.do.body660_crit_edge:       ; preds = %for.cond639.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body660

for.body643.lr.ph:                                ; preds = %for.cond639.preheader
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  br label %for.body643

for.body599:                                      ; preds = %for.inc636.for.body599_crit_edge, %for.body599.lr.ph
  %i.51191 = phi i32 [ 1, %for.body599.lr.ph ], [ %inc637, %for.inc636.for.body599_crit_edge ]
  %call600 = call i64 @ubi_next_sqnum(ptr noundef %ubi) #11
  %330 = ptrtoint ptr %sqnum601 to i32
  call void @__asan_storeN_noabort(i32 %330, i32 8)
  store i64 %call600, ptr %sqnum601, align 1
  %331 = ptrtoint ptr %lnum602 to i32
  call void @__asan_storeN_noabort(i32 %331, i32 4)
  store i32 %i.51191, ptr %lnum602, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_write_fastmap.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_write_fastmap, %if.then615)) #11
          to label %do.end625 [label %if.then615], !srcloc !198

if.then615:                                       ; preds = %for.body599
  call void @__sanitizer_cov_trace_pc() #13
  %332 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1116 = and i32 %332, -16384
  %333 = inttoptr i32 %and.i1116 to ptr
  %task617 = getelementptr inbounds %struct.thread_info, ptr %333, i32 0, i32 2
  %334 = ptrtoint ptr %task617 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %task617, align 8
  %pid618 = getelementptr inbounds %struct.task_struct, ptr %335, i32 0, i32 68
  %336 = ptrtoint ptr %pid618 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %pid618, align 8
  %arrayidx620 = getelementptr [32 x ptr], ptr %new_fm, i32 0, i32 %i.51191
  %338 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx620, align 4
  %pnum621 = getelementptr inbounds %struct.ubi_wl_entry, ptr %339, i32 0, i32 2
  %340 = ptrtoint ptr %pnum621 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %pnum621, align 4
  %342 = ptrtoint ptr %sqnum601 to i32
  call void @__asan_loadN_noabort(i32 %342, i32 8)
  %343 = load i64, ptr %sqnum601, align 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_write_fastmap.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.82, i32 noundef %337, i32 noundef %341, i64 noundef %343) #11
  br label %do.end625

do.end625:                                        ; preds = %if.then615, %for.body599
  %arrayidx627 = getelementptr [32 x ptr], ptr %new_fm, i32 0, i32 %i.51191
  %344 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx627, align 4
  %pnum628 = getelementptr inbounds %struct.ubi_wl_entry, ptr %345, i32 0, i32 2
  %346 = ptrtoint ptr %pnum628 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %pnum628, align 4
  %call629 = call i32 @ubi_io_write_vid_hdr(ptr noundef %ubi, i32 noundef %347, ptr noundef nonnull %call7.i.i.i.i993) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call629)
  %tobool630.not = icmp eq i32 %call629, 0
  br i1 %tobool630.not, label %for.inc636, label %if.then631

if.then631:                                       ; preds = %do.end625
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx627.le = getelementptr [32 x ptr], ptr %new_fm, i32 0, i32 %i.51191
  %348 = ptrtoint ptr %arrayidx627.le to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %arrayidx627.le, align 4
  %pnum634 = getelementptr inbounds %struct.ubi_wl_entry, ptr %349, i32 0, i32 2
  %350 = ptrtoint ptr %pnum634 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %pnum634, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.83, i32 noundef %351) #11
  br label %out_free_seen

for.inc636:                                       ; preds = %do.end625
  %inc637 = add nuw nsw i32 %i.51191, 1
  %352 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %used_blocks, align 4
  %cmp597 = icmp slt i32 %inc637, %353
  br i1 %cmp597, label %for.inc636.for.body599_crit_edge, label %for.inc636.for.cond639.preheader_crit_edge

for.inc636.for.cond639.preheader_crit_edge:       ; preds = %for.inc636
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond639.preheader

for.inc636.for.body599_crit_edge:                 ; preds = %for.inc636
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body599

for.body643:                                      ; preds = %for.inc657.for.body643_crit_edge, %for.body643.lr.ph
  %i.61193 = phi i32 [ 0, %for.body643.lr.ph ], [ %inc658, %for.inc657.for.body643_crit_edge ]
  %354 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %leb_size, align 8
  %mul644 = mul i32 %355, %i.61193
  %add.ptr645 = getelementptr i8, ptr %1, i32 %mul644
  %arrayidx647 = getelementptr [32 x ptr], ptr %new_fm, i32 0, i32 %i.61193
  %356 = ptrtoint ptr %arrayidx647 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx647, align 4
  %pnum648 = getelementptr inbounds %struct.ubi_wl_entry, ptr %357, i32 0, i32 2
  %358 = ptrtoint ptr %pnum648 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %pnum648, align 4
  %360 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %leb_start.i, align 4
  %call6.i = call i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %add.ptr645, i32 noundef %359, i32 noundef %361, i32 noundef %355) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool651.not = icmp eq i32 %call6.i, 0
  br i1 %tobool651.not, label %for.inc657, label %if.then652

if.then652:                                       ; preds = %for.body643
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx647.le = getelementptr [32 x ptr], ptr %new_fm, i32 0, i32 %i.61193
  %362 = ptrtoint ptr %arrayidx647.le to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %arrayidx647.le, align 4
  %pnum655 = getelementptr inbounds %struct.ubi_wl_entry, ptr %363, i32 0, i32 2
  %364 = ptrtoint ptr %pnum655 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %pnum655, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.84, i32 noundef %365) #11
  br label %out_free_seen

for.inc657:                                       ; preds = %for.body643
  %inc658 = add nuw nsw i32 %i.61193, 1
  %366 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %used_blocks, align 4
  %cmp641 = icmp slt i32 %inc658, %367
  br i1 %cmp641, label %for.inc657.for.body643_crit_edge, label %for.inc657.do.body660_crit_edge

for.inc657.do.body660_crit_edge:                  ; preds = %for.inc657
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body660

for.inc657.for.body643_crit_edge:                 ; preds = %for.inc657
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body643

do.body660:                                       ; preds = %for.inc657.do.body660_crit_edge, %for.cond639.preheader.do.body660_crit_edge
  %tobool661.not = icmp eq ptr %new_fm, null
  br i1 %tobool661.not, label %do.end673, label %do.body660.do.end681_crit_edge, !prof !199

do.body660.do.end681_crit_edge:                   ; preds = %do.body660
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end681

do.end673:                                        ; preds = %do.body660
  call void @__sanitizer_cov_trace_pc() #13
  %368 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1117 = and i32 %368, -16384
  %369 = inttoptr i32 %and.i1117 to ptr
  %task676 = getelementptr inbounds %struct.thread_info, ptr %369, i32 0, i32 2
  %370 = ptrtoint ptr %task676 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %task676, align 8
  %pid677 = getelementptr inbounds %struct.task_struct, ptr %371, i32 0, i32 68
  %372 = ptrtoint ptr %pid677 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %pid677, align 8
  %call678 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.57, i32 noundef 1378, i32 noundef %373) #18
  call void @dump_stack() #18
  br label %do.end681

do.end681:                                        ; preds = %do.end673, %do.body660.do.end681_crit_edge
  %fm = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 26
  %374 = ptrtoint ptr %fm to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %new_fm, ptr %fm, align 8
  %call682 = call fastcc i32 @self_check_seen(ptr noundef %ubi, ptr noundef %retval.0.i10431135)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_write_fastmap.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_write_fastmap, %if.then695)) #11
          to label %out_free_seen [label %if.then695], !srcloc !198

if.then695:                                       ; preds = %do.end681
  call void @__sanitizer_cov_trace_pc() #13
  %375 = call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i1118 = and i32 %375, -16384
  %376 = inttoptr i32 %and.i1118 to ptr
  %task697 = getelementptr inbounds %struct.thread_info, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %task697 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %task697, align 8
  %pid698 = getelementptr inbounds %struct.task_struct, ptr %378, i32 0, i32 68
  %379 = ptrtoint ptr %pid698 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %pid698, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_write_fastmap.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.87, i32 noundef %380) #11
  br label %out_free_seen

out_free_seen:                                    ; preds = %if.then695, %do.end681, %if.then652, %if.then631, %if.then571
  %ret.0 = phi i32 [ %call569, %if.then571 ], [ %call629, %if.then631 ], [ %call6.i, %if.then652 ], [ %call682, %if.then695 ], [ %call682, %do.end681 ]
  call void @kfree(ptr noundef %retval.0.i10431135) #11
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %out_free_seen, %if.then10
  %ret.1 = phi i32 [ %40, %if.then10 ], [ %ret.0, %out_free_seen ]
  %381 = ptrtoint ptr %buffer.i.i.i1029 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %buffer.i.i.i1029, align 4
  call void @kfree(ptr noundef %382) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i993) #11
  br label %ubi_free_vid_buf.exit1124

ubi_free_vid_buf.exit1124:                        ; preds = %ubi_free_vid_buf.exit, %if.then3.i.i1027, %if.end.ubi_free_vid_buf.exit1124_crit_edge
  %ret.2 = phi i32 [ %ret.1, %ubi_free_vid_buf.exit ], [ -12, %if.then3.i.i1027 ], [ -12, %if.end.ubi_free_vid_buf.exit1124_crit_edge ]
  %383 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %buffer.i.i.i, align 4
  call void @kfree(ptr noundef %384) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %out

out:                                              ; preds = %ubi_free_vid_buf.exit1124, %if.then3.i.i, %entry.out_crit_edge
  %ret.3 = phi i32 [ %ret.2, %ubi_free_vid_buf.exit1124 ], [ -12, %if.then3.i.i ], [ -12, %entry.out_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_ensure_anchor_pebs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_alloc_aeb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_aeb(ptr noundef %ai, ptr noundef %list, i32 noundef %pnum, i32 noundef %ec, i32 noundef %scrub) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ubi_alloc_aeb(ptr noundef %ai, i32 noundef %pnum, i32 noundef %ec) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lnum, align 4
  %scrub1 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call, i32 0, i32 4
  %1 = trunc i32 %scrub to i8
  %2 = ptrtoint ptr %scrub1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %scrub1, align 8
  %bf.shl = shl i8 %1, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %sqnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %sqnum to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %sqnum, align 8
  store i8 %bf.set, ptr %scrub1, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 8
  %conv = sext i32 %5 to i64
  %ec_sum = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 19
  %6 = ptrtoint ptr %ec_sum to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ec_sum, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %ec_sum, align 8
  %ec_count = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 20
  %8 = ptrtoint ptr %ec_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ec_count, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %ec_count, align 8
  %max_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 16
  %10 = ptrtoint ptr %max_ec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_ec, align 4
  %12 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %max_ec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_ec, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %min_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 15
  %14 = ptrtoint ptr %min_ec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_ec, align 8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp13 = icmp sgt i32 %15, %17
  br i1 %cmp13, label %if.then15, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %min_ec to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %min_ec, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  %u = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u, ptr noundef %20, ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %u, ptr %prev.i, align 4
  %22 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %u, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call, i32 0, i32 6, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %u, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_vol(ptr noundef %ai, i32 noundef %vol_id, i32 noundef %used_ebs, i32 noundef %data_pad, i8 noundef zeroext %vol_type, i32 noundef %last_eb_bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ubi_add_av(ptr noundef %ai, i32 noundef %vol_id) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_pad2 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %data_pad2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data_pad, ptr %data_pad2, align 4
  %last_data_size = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %last_data_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %last_eb_bytes, ptr %last_data_size, align 4
  %compat = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %compat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %compat, align 4
  %conv = zext i8 %vol_type to i32
  %vol_type3 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %vol_type3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %vol_type3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %vol_type)
  %cmp = icmp eq i8 %vol_type, 4
  br i1 %cmp, label %if.then6, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %used_ebs7 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %used_ebs7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %used_ebs, ptr %used_ebs7, align 4
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_vol.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_vol, %if.then12)) #11
          to label %cleanup [label %if.then12], !srcloc !198

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_vol.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.43, i32 noundef %10, i32 noundef %vol_id) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assign_aeb_to_av(ptr noundef %aeb, ptr noundef %av) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 9
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not1 = icmp eq ptr %1, null
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 3
  %2 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lnum, align 4
  %lnum16 = getelementptr i8, ptr %1, i32 -20
  %4 = ptrtoint ptr %lnum16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lnum16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not7 = icmp eq i32 %3, %5
  br i1 %cmp.not7, label %while.body.lr.ph.while.end_crit_edge, label %while.body.lr.ph.if.then_crit_edge

while.body.lr.ph.if.then_crit_edge:               ; preds = %while.body.lr.ph
  br label %if.then

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.then
  %lnum1 = getelementptr i8, ptr %11, i32 -20
  %6 = ptrtoint ptr %lnum1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnum1, align 4
  %cmp.not = icmp eq i32 %3, %7
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then:                                          ; preds = %while.body.if.then_crit_edge, %while.body.lr.ph.if.then_crit_edge
  %8 = phi i32 [ %7, %while.body.if.then_crit_edge ], [ %5, %while.body.lr.ph.if.then_crit_edge ]
  %9 = phi ptr [ %11, %while.body.if.then_crit_edge ], [ %1, %while.body.lr.ph.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %8)
  %cmp4 = icmp slt i32 %3, %8
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %p.1 = select i1 %cmp4, ptr %rb_left, ptr %rb_right
  %10 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then.while.end_crit_edge, label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.then.while.end_crit_edge, %while.body.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %root, %entry.while.end_crit_edge ], [ %root, %while.body.lr.ph.while.end_crit_edge ], [ %p.1, %if.then.while.end_crit_edge ], [ %p.1, %while.body.while.end_crit_edge ]
  %parent.1 = phi ptr [ null, %entry.while.end_crit_edge ], [ %1, %while.body.lr.ph.while.end_crit_edge ], [ %9, %if.then.while.end_crit_edge ], [ %11, %while.body.while.end_crit_edge ]
  %u = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %u) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %u, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.end.list_del.exit_crit_edge
  %18 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %u, align 4
  %prev.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 6, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %leb_count = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 2
  %20 = ptrtoint ptr %leb_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %leb_count, align 4
  %22 = ptrtoint ptr %parent.1 to i32
  store i32 %22, ptr %u, align 4
  store ptr null, ptr %prev.i, align 4
  %rb_left.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %aeb, i32 0, i32 6, i32 0, i32 2
  %23 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_left.i, align 4
  %24 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %u, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %u, ptr noundef %root) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_pool(ptr noundef %ubi, ptr noundef %ai, ptr nocapture noundef readonly %pebs, i32 noundef %pool_size, ptr nocapture noundef %max_sqnum, ptr noundef %free) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %0 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ec_hdr_alsize, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup136_crit_edge, label %if.end

entry.cleanup136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup136.sink.split_crit_edge, label %if.end.i

if.end.cleanup136.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136.sink.split

if.end.i:                                         ; preds = %if.end
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %3 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i245 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #15
  %tobool2.not.i = icmp eq ptr %call9.i.i245, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup136.sink.split.sink.split_crit_edge, label %if.end4

if.end.i.cleanup136.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136.sink.split.sink.split

if.end4:                                          ; preds = %if.end.i
  %5 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vid_hdr_alsize.i, align 4
  %7 = call ptr @memset(ptr %call9.i.i245, i32 0, i32 %6)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i245, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %9 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i245, i32 %10
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_pool.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_pool, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !198

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_pool.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.45, i32 noundef %17, i32 noundef %pool_size) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pool_size)
  %cmp304 = icmp sgt i32 %pool_size, 0
  br i1 %cmp304, label %for.body.lr.ph, label %do.end.ubi_free_vid_buf.exit_crit_edge

do.end.ubi_free_vid_buf.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubi_free_vid_buf.exit

for.body.lr.ph:                                   ; preds = %do.end
  %image_seq26 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i, i32 0, i32 6
  %image_seq29 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 8
  %ec93 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i, i32 0, i32 3
  %lnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 13
  %copy_flag = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %vol_id1.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %ec_sum.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 19
  %ec_count.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 20
  %max_ec.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 16
  %min_ec.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %free, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0305 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %pebs, i32 %i.0305
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %call13 = tail call i32 @ubi_io_is_bad(ptr noundef %ubi, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.46) #11
  br label %ubi_free_vid_buf.exit

if.end16:                                         ; preds = %for.body
  %call17 = tail call i32 @ubi_io_read_ec_hdr(ptr noundef %ubi, i32 noundef %19, ptr noundef nonnull %call9.i.i, i32 noundef 0) #11
  %20 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call17, label %if.then20 [
    i32 5, label %if.then23
    i32 0, label %if.end16.if.end25_crit_edge
  ]

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.47, i32 noundef %19, i32 noundef %call17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp21 = icmp sgt i32 %call17, 0
  %spec.select = select i1 %cmp21, i32 2, i32 %call17
  br label %ubi_free_vid_buf.exit

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end16.if.end25_crit_edge
  %scrub.0 = phi i8 [ -128, %if.then23 ], [ 0, %if.end16.if.end25_crit_edge ]
  %21 = ptrtoint ptr %image_seq26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %image_seq26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %land.lhs.true28

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true28:                                  ; preds = %if.end25
  %23 = ptrtoint ptr %image_seq29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %image_seq29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp30.not = icmp eq i32 %22, %24
  br i1 %cmp30.not, label %land.lhs.true28.if.end34_crit_edge, label %if.then31

land.lhs.true28.if.end34_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.48, i32 noundef %22, i32 noundef %24) #11
  br label %ubi_free_vid_buf.exit

if.end34:                                         ; preds = %land.lhs.true28.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %call35 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %19, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #11
  %25 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call35, label %if.else126 [
    i32 1, label %if.end34.if.then38_crit_edge
    i32 2, label %if.end34.if.then38_crit_edge427
    i32 0, label %if.end34.do.body70_crit_edge
    i32 5, label %if.end34.do.body70_crit_edge428
  ]

if.end34.do.body70_crit_edge428:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body70

if.end34.do.body70_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body70

if.end34.if.then38_crit_edge427:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.end34.if.then38_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38

if.then38:                                        ; preds = %if.end34.if.then38_crit_edge, %if.end34.if.then38_crit_edge427
  %26 = ptrtoint ptr %ec93 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ec93, align 8
  %call.i = tail call ptr @rb_first(ptr noundef %ai) #11
  %tobool.not.i249 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i249, label %if.then38.unmap_peb.exit_crit_edge, label %if.then38.for.body.i_crit_edge

if.then38.for.body.i_crit_edge:                   ; preds = %if.then38
  br label %for.body.i

if.then38.unmap_peb.exit_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_peb.exit

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %if.then38.for.body.i_crit_edge
  %node.063.i = phi ptr [ %call26.i, %for.inc25.i.for.body.i_crit_edge ], [ %call.i, %if.then38.for.body.i_crit_edge ]
  %root.i = getelementptr i8, ptr %node.063.i, i32 12
  %call2.i = tail call ptr @rb_first(ptr noundef %root.i) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc25.i_crit_edge, label %for.body.i.for.body13.i_crit_edge

for.body.i.for.body13.i_crit_edge:                ; preds = %for.body.i
  br label %for.body13.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.body13.i:                                     ; preds = %for.inc.i.for.body13.i_crit_edge, %for.body.i.for.body13.i_crit_edge
  %node2.061.i = phi ptr [ %call16.i, %for.inc.i.for.body13.i_crit_edge ], [ %call2.i, %for.body.i.for.body13.i_crit_edge ]
  %pnum14.i = getelementptr i8, ptr %node2.061.i, i32 -28
  %28 = ptrtoint ptr %pnum14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pnum14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %19)
  %cmp.i = icmp eq i32 %29, %19
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %aeb.060.i = getelementptr i8, ptr %node2.061.i, i32 -32
  tail call void @rb_erase(ptr noundef nonnull %node2.061.i, ptr noundef %root.i) #11
  %leb_count.i = getelementptr i8, ptr %node.063.i, i32 -24
  %30 = ptrtoint ptr %leb_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %leb_count.i, align 4
  %dec.i = add i32 %31, -1
  store i32 %dec.i, ptr %leb_count.i, align 4
  tail call void @ubi_free_aeb(ptr noundef %ai, ptr noundef %aeb.060.i) #11
  br label %unmap_peb.exit

for.inc.i:                                        ; preds = %for.body13.i
  %call16.i = tail call ptr @rb_next(ptr noundef nonnull %node2.061.i) #11
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %for.inc.i.for.inc25.i_crit_edge, label %for.inc.i.for.body13.i_crit_edge

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

for.inc.i.for.inc25.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.inc.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %call26.i = tail call ptr @rb_next(ptr noundef nonnull %node.063.i) #11
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %for.inc25.i.unmap_peb.exit_crit_edge, label %for.inc25.i.for.body.i_crit_edge

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc25.i.unmap_peb.exit_crit_edge:             ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_peb.exit

unmap_peb.exit:                                   ; preds = %for.inc25.i.unmap_peb.exit_crit_edge, %if.then.i, %if.then38.unmap_peb.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_pool.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_pool, %if.then52)) #11
          to label %do.end58 [label %if.then52], !srcloc !198

if.then52:                                        ; preds = %unmap_peb.exit
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i250 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i250 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task54, align 8
  %pid55 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid55, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_pool.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.49, i32 noundef %37, i32 noundef %19) #11
  br label %do.end58

do.end58:                                         ; preds = %if.then52, %unmap_peb.exit
  %conv = trunc i64 %27 to i32
  %call.i251 = tail call ptr @ubi_alloc_aeb(ptr noundef %ai, i32 noundef %19, i32 noundef %conv) #11
  %tobool.not.i252 = icmp eq ptr %call.i251, null
  br i1 %tobool.not.i252, label %do.end58.for.inc_crit_edge, label %if.end.i254

do.end58.for.inc_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i254:                                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call35)
  %cmp59 = icmp eq i32 %call35, 2
  %lnum.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i251, i32 0, i32 3
  %38 = ptrtoint ptr %lnum.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %lnum.i, align 4
  %scrub1.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i251, i32 0, i32 4
  %39 = ptrtoint ptr %scrub1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %scrub1.i, align 8
  %bf.shl.i = select i1 %cmp59, i8 -128, i8 %scrub.0
  %bf.clear.i = and i8 %bf.load.i, 63
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  %sqnum.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i251, i32 0, i32 5
  %40 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %sqnum.i, align 8
  store i8 %bf.set.i, ptr %scrub1.i, align 8
  %41 = ptrtoint ptr %call.i251 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i251, align 8
  %conv.i = sext i32 %42 to i64
  %43 = ptrtoint ptr %ec_sum.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ec_sum.i, align 8
  %add.i = add i64 %44, %conv.i
  store i64 %add.i, ptr %ec_sum.i, align 8
  %45 = ptrtoint ptr %ec_count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ec_count.i, align 8
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %ec_count.i, align 8
  %47 = ptrtoint ptr %max_ec.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_ec.i, align 4
  %49 = load i32, ptr %call.i251, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %49)
  %cmp.i253 = icmp slt i32 %48, %49
  br i1 %cmp.i253, label %if.then8.i, label %if.end.i254.if.end11.i_crit_edge

if.end.i254.if.end11.i_crit_edge:                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %max_ec.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_ec.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i254.if.end11.i_crit_edge
  %51 = ptrtoint ptr %min_ec.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %min_ec.i, align 8
  %53 = ptrtoint ptr %call.i251 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call.i251, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp13.i = icmp sgt i32 %52, %54
  br i1 %cmp13.i, label %if.then15.i, label %if.end11.i.if.end18.i_crit_edge

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %min_ec.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %min_ec.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end18.i_crit_edge
  %u.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i251, i32 0, i32 6
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u.i, ptr noundef %57, ptr noundef %free) #11
  br i1 %call.i.i.i, label %if.end.i.i.i255, label %if.end18.i.for.inc_crit_edge

if.end18.i.for.inc_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i.i255:                                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %u.i, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free, ptr %u.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call.i251, i32 0, i32 6, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %u.i, ptr %57, align 4
  br label %for.inc

do.body70:                                        ; preds = %if.end34.do.body70_crit_edge, %if.end34.do.body70_crit_edge428
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_pool.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scan_pool, %if.then82)) #11
          to label %do.end88 [label %if.then82], !srcloc !198

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  %62 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i256 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i256 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task84, align 8
  %pid85 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid85 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid85, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_pool.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.50, i32 noundef %67, i32 noundef %19) #11
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body70
  %68 = ptrtoint ptr %ec93 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ec93, align 8
  %conv94 = trunc i64 %69 to i32
  %call95 = tail call ptr @ubi_alloc_aeb(ptr noundef %ai, i32 noundef %19, i32 noundef %conv94) #11
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %do.end88.ubi_free_vid_buf.exit_crit_edge, label %if.end98

do.end88.ubi_free_vid_buf.exit_crit_edge:         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubi_free_vid_buf.exit

if.end98:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call35)
  %cmp89 = icmp eq i32 %call35, 5
  %70 = ptrtoint ptr %lnum to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %lnum, align 1
  %lnum99 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call95, i32 0, i32 3
  %72 = ptrtoint ptr %lnum99 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %lnum99, align 4
  %73 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %sqnum, align 1
  %sqnum100 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call95, i32 0, i32 5
  %75 = ptrtoint ptr %sqnum100 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %sqnum100, align 8
  %76 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %copy_flag, align 1
  %copy_flag102 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call95, i32 0, i32 4
  %78 = ptrtoint ptr %copy_flag102 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %copy_flag102, align 8
  %bf.value = shl i8 %77, 6
  %bf.clear = and i8 %bf.load, 63
  %bf.shl106 = select i1 %cmp89, i8 -128, i8 %scrub.0
  %bf.value.masked = and i8 %bf.value, 64
  %bf.clear107 = or i8 %bf.value.masked, %bf.shl106
  %bf.set108 = or i8 %bf.clear107, %bf.clear
  store i8 %bf.set108, ptr %copy_flag102, align 8
  %79 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %max_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %74)
  %cmp111 = icmp ult i64 %80, %74
  br i1 %cmp111, label %if.then113, label %if.end98.if.end115_crit_edge

if.end98.if.end115_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %74, ptr %max_sqnum, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end98.if.end115_crit_edge
  %82 = ptrtoint ptr %vol_id1.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %vol_id1.i, align 1
  %84 = and i32 %83, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %84)
  %switch.i = icmp eq i32 %84, 2147479552
  br i1 %switch.i, label %process_pool_aeb.exit.thread, label %if.end.i260

process_pool_aeb.exit.thread:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ubi_free_aeb(ptr noundef %ai, ptr noundef nonnull %call95) #11
  br label %for.inc

if.end.i260:                                      ; preds = %if.end115
  %call.i258 = tail call ptr @ubi_find_av(ptr noundef %ai, i32 noundef %83) #11
  %tobool.not.i259 = icmp eq ptr %call.i258, null
  br i1 %tobool.not.i259, label %if.then118.thread, label %do.body.i

if.then118.thread:                                ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.52) #11
  tail call void @ubi_free_aeb(ptr noundef %ai, ptr noundef nonnull %call95) #11
  br label %93

do.body.i:                                        ; preds = %if.end.i260
  %85 = ptrtoint ptr %call.i258 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call.i258, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %86)
  %cmp6.not.i = icmp eq i32 %83, %86
  br i1 %cmp6.not.i, label %do.body.i.process_pool_aeb.exit_crit_edge, label %do.end.i, !prof !196

do.body.i.process_pool_aeb.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_pool_aeb.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 68
  %91 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pid.i, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.53, i32 noundef 357, i32 noundef %92) #18
  tail call void @dump_stack() #18
  br label %process_pool_aeb.exit

process_pool_aeb.exit:                            ; preds = %do.end.i, %do.body.i.process_pool_aeb.exit_crit_edge
  %call17.i = tail call fastcc i32 @update_vol(ptr noundef %ubi, ptr noundef %ai, ptr noundef nonnull %call.i258, ptr noundef %add.ptr.i.i, ptr noundef nonnull %call95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool117.not = icmp eq i32 %call17.i, 0
  br i1 %tobool117.not, label %process_pool_aeb.exit.for.inc_crit_edge, label %if.then118

process_pool_aeb.exit.for.inc_crit_edge:          ; preds = %process_pool_aeb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then118:                                       ; preds = %process_pool_aeb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp119 = icmp sgt i32 %call17.i, 0
  br i1 %cmp119, label %if.then118._crit_edge, label %if.then118.ubi_free_vid_buf.exit_crit_edge

if.then118.ubi_free_vid_buf.exit_crit_edge:       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubi_free_vid_buf.exit

if.then118._crit_edge:                            ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  br label %93

93:                                               ; preds = %if.then118._crit_edge, %if.then118.thread
  br label %ubi_free_vid_buf.exit

if.else126:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp127 = icmp sgt i32 %call35, 0
  %spec.select213 = select i1 %cmp127, i32 2, i32 %call35
  br label %ubi_free_vid_buf.exit

for.inc:                                          ; preds = %process_pool_aeb.exit.for.inc_crit_edge, %process_pool_aeb.exit.thread, %if.end.i.i.i255, %if.end18.i.for.inc_crit_edge, %do.end58.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0305, 1
  %exitcond.not = icmp eq i32 %inc, %pool_size
  br i1 %exitcond.not, label %for.inc.ubi_free_vid_buf.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.ubi_free_vid_buf.exit_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %for.inc.ubi_free_vid_buf.exit_crit_edge, %if.else126, %93, %if.then118.ubi_free_vid_buf.exit_crit_edge, %do.end88.ubi_free_vid_buf.exit_crit_edge, %if.then31, %if.then20, %if.then15, %do.end.ubi_free_vid_buf.exit_crit_edge
  %ret.2 = phi i32 [ %call17.i, %if.then118.ubi_free_vid_buf.exit_crit_edge ], [ 2, %93 ], [ %spec.select213, %if.else126 ], [ 2, %if.then31 ], [ %spec.select, %if.then20 ], [ 2, %if.then15 ], [ 0, %do.end.ubi_free_vid_buf.exit_crit_edge ], [ 0, %for.inc.ubi_free_vid_buf.exit_crit_edge ], [ -12, %do.end88.ubi_free_vid_buf.exit_crit_edge ]
  %94 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %95) #11
  br label %cleanup136.sink.split.sink.split

cleanup136.sink.split.sink.split:                 ; preds = %ubi_free_vid_buf.exit, %if.end.i.cleanup136.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %ret.2, %ubi_free_vid_buf.exit ], [ -12, %if.end.i.cleanup136.sink.split.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup136.sink.split

cleanup136.sink.split:                            ; preds = %cleanup136.sink.split.sink.split, %if.end.cleanup136.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.cleanup136.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup136.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup136

cleanup136:                                       ; preds = %cleanup136.sink.split, %entry.cleanup136_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup136_crit_edge ], [ %retval.0.ph, %cleanup136.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #11
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @count_fastmap_pebs(ptr noundef %ai) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %erase, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %erase
  %inc = add i32 %n.0, 1
  br i1 %cmp.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %free = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.for.cond11_crit_edge, %for.end
  %n.1 = phi i32 [ %n.0, %for.end ], [ %inc17, %for.cond11.for.cond11_crit_edge ]
  %.pn86.in = phi ptr [ %free, %for.end ], [ %.pn86, %for.cond11.for.cond11_crit_edge ]
  %1 = ptrtoint ptr %.pn86.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn86 = load ptr, ptr %.pn86.in, align 4
  %cmp14.not = icmp eq ptr %.pn86, %free
  %inc17 = add i32 %n.1, 1
  br i1 %cmp14.not, label %for.end24, label %for.cond11.for.cond11_crit_edge

for.cond11.for.cond11_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond11

for.end24:                                        ; preds = %for.cond11
  %call = tail call ptr @rb_first(ptr noundef %ai) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end24.for.end65_crit_edge, label %for.end24.for.body30_crit_edge

for.end24.for.body30_crit_edge:                   ; preds = %for.end24
  br label %for.body30

for.end24.for.end65_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.body30:                                       ; preds = %for.inc55.for.body30_crit_edge, %for.end24.for.body30_crit_edge
  %rb1.093 = phi ptr [ %call56, %for.inc55.for.body30_crit_edge ], [ %call, %for.end24.for.body30_crit_edge ]
  %n.292 = phi i32 [ %n.3.lcssa, %for.inc55.for.body30_crit_edge ], [ %n.1, %for.end24.for.body30_crit_edge ]
  %root = getelementptr i8, ptr %rb1.093, i32 12
  %call31 = tail call ptr @rb_first(ptr noundef %root) #11
  %tobool41.not88 = icmp eq ptr %call31, null
  br i1 %tobool41.not88, label %for.body30.for.inc55_crit_edge, label %for.body30.for.body42_crit_edge

for.body30.for.body42_crit_edge:                  ; preds = %for.body30
  br label %for.body42

for.body30.for.inc55_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body30.for.body42_crit_edge
  %rb2.090 = phi ptr [ %call45, %for.body42.for.body42_crit_edge ], [ %call31, %for.body30.for.body42_crit_edge ]
  %n.389 = phi i32 [ %inc43, %for.body42.for.body42_crit_edge ], [ %n.292, %for.body30.for.body42_crit_edge ]
  %inc43 = add i32 %n.389, 1
  %call45 = tail call ptr @rb_next(ptr noundef nonnull %rb2.090) #11
  %tobool41.not = icmp eq ptr %call45, null
  br i1 %tobool41.not, label %for.body42.for.inc55_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body42

for.body42.for.inc55_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

for.inc55:                                        ; preds = %for.body42.for.inc55_crit_edge, %for.body30.for.inc55_crit_edge
  %n.3.lcssa = phi i32 [ %n.292, %for.body30.for.inc55_crit_edge ], [ %inc43, %for.body42.for.inc55_crit_edge ]
  %call56 = tail call ptr @rb_next(ptr noundef nonnull %rb1.093) #11
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %for.inc55.for.end65_crit_edge, label %for.inc55.for.body30_crit_edge

for.inc55.for.body30_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30

for.inc55.for.end65_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end65

for.end65:                                        ; preds = %for.inc55.for.end65_crit_edge, %for.end24.for.end65_crit_edge
  %n.2.lcssa = phi i32 [ %n.1, %for.end24.for.end65_crit_edge ], [ %n.3.lcssa, %for.inc55.for.end65_crit_edge ]
  ret i32 %n.2.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_aeb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_add_av(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_find_av(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_vol(ptr noundef %ubi, ptr noundef %ai, ptr noundef %av, ptr noundef %new_vh, ptr noundef %new_aeb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 9
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not200 = icmp eq ptr %1, null
  br i1 %tobool.not200, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %new_vh, i32 0, i32 6
  %2 = ptrtoint ptr %lnum to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %lnum, align 1
  br label %while.body

while.body:                                       ; preds = %if.then.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %if.then.while.body_crit_edge ]
  %lnum1 = getelementptr i8, ptr %4, i32 -20
  %5 = ptrtoint ptr %lnum1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lnum1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp.not = icmp eq i32 %3, %6
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp4 = icmp ult i32 %3, %6
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  %p.1 = select i1 %cmp4, ptr %rb_left, ptr %rb_right
  %7 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end6:                                          ; preds = %while.body
  %lnum1.le = getelementptr i8, ptr %4, i32 -20
  %add.ptr.le = getelementptr i8, ptr %4, i32 -32
  %pnum = getelementptr i8, ptr %4, i32 -28
  %9 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pnum, align 4
  %pnum7 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 1
  %11 = ptrtoint ptr %pnum7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pnum7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8 = icmp eq i32 %10, %12
  br i1 %cmp8, label %do.body, label %if.end23

do.body:                                          ; preds = %if.end6
  %lnum11 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 3
  %13 = ptrtoint ptr %lnum11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lnum11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %14)
  %cmp12.not = icmp eq i32 %3, %14
  br i1 %cmp12.not, label %do.body.do.end22_crit_edge, label %do.end, !prof !196

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.54, i32 noundef 268, i32 noundef %20) #18
  tail call void @dump_stack() #18
  br label %do.end22

do.end22:                                         ; preds = %do.end, %do.body.do.end22_crit_edge
  tail call void @ubi_free_aeb(ptr noundef %ai, ptr noundef %new_aeb) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end6
  %call25 = tail call i32 @ubi_compare_lebs(ptr noundef %ubi, ptr noundef %add.ptr.le, i32 noundef %12, ptr noundef %new_vh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %and = and i32 %call25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body74, label %if.then30

if.then30:                                        ; preds = %if.end28
  %21 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pnum, align 4
  %23 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.le, align 8
  %call32 = tail call ptr @ubi_alloc_aeb(ptr noundef %ai, i32 noundef %22, i32 noundef %24) #11
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then30.cleanup_crit_edge, label %if.end35

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  %u = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call32, i32 0, i32 6
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u, ptr noundef %26, ptr noundef %erase) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end35.list_add_tail.exit_crit_edge

if.end35.list_add_tail.exit_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %u, ptr %prev.i, align 4
  %28 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %erase, ptr %u, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call32, i32 0, i32 6, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %u, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end35.list_add_tail.exit_crit_edge
  %highest_lnum = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 1
  %31 = ptrtoint ptr %highest_lnum to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %highest_lnum, align 4
  %33 = ptrtoint ptr %lnum to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %lnum, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp37 = icmp eq i32 %32, %34
  br i1 %cmp37, label %if.then38, label %list_add_tail.exit.do.body40_crit_edge

list_add_tail.exit.do.body40_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40

if.then38:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %data_size = getelementptr inbounds %struct.ubi_vid_hdr, ptr %new_vh, i32 0, i32 8
  %35 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data_size, align 1
  %last_data_size = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 5
  %37 = ptrtoint ptr %last_data_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %last_data_size, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.then38, %list_add_tail.exit.do.body40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_vol.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_vol, %if.then50)) #11
          to label %do.end58 [label %if.then50], !srcloc !198

if.then50:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %38 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i186 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i186 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task52, align 8
  %pid53 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid53, align 8
  %44 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %av, align 4
  %46 = ptrtoint ptr %lnum1.le to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lnum1.le, align 4
  %48 = ptrtoint ptr %pnum7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pnum7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_vol.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.55, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #11
  br label %do.end58

do.end58:                                         ; preds = %if.then50, %do.body40
  %50 = ptrtoint ptr %new_aeb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %new_aeb, align 8
  %52 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr.le, align 8
  %53 = ptrtoint ptr %pnum7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pnum7, align 4
  %55 = ptrtoint ptr %pnum to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %pnum, align 4
  %copy_flag = getelementptr inbounds %struct.ubi_vid_hdr, ptr %new_vh, i32 0, i32 3
  %56 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %copy_flag, align 1
  %copy_flag63 = getelementptr i8, ptr %4, i32 -16
  %58 = ptrtoint ptr %copy_flag63 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %copy_flag63, align 8
  %bf.value = shl i8 %57, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %copy_flag63, align 8
  %scrub = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 4
  %59 = ptrtoint ptr %scrub to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load64 = load i8, ptr %scrub, align 8
  %bf.lshr = and i8 %bf.load64, -128
  %bf.clear69 = and i8 %bf.set, 127
  %bf.set70 = or i8 %bf.clear69, %bf.lshr
  store i8 %bf.set70, ptr %copy_flag63, align 8
  %sqnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 5
  %60 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %sqnum, align 8
  %sqnum72 = getelementptr i8, ptr %4, i32 -8
  %62 = ptrtoint ptr %sqnum72 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %sqnum72, align 8
  tail call void @ubi_free_aeb(ptr noundef %ai, ptr noundef %new_aeb) #11
  br label %cleanup

do.body74:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_vol.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_vol, %if.then86)) #11
          to label %do.end95 [label %if.then86], !srcloc !198

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  %63 = tail call i32 @llvm.read_register.i32(metadata !186) #11
  %and.i187 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i187 to ptr
  %task88 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task88 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task88, align 8
  %pid89 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid89, align 8
  %69 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %av, align 4
  %71 = ptrtoint ptr %lnum1.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lnum1.le, align 4
  %73 = ptrtoint ptr %pnum7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pnum7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_vol.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.56, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74) #11
  br label %do.end95

do.end95:                                         ; preds = %if.then86, %do.body74
  %u96 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 6
  %erase97 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %prev.i188 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev.i188 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i188, align 4
  %call.i.i189 = tail call zeroext i1 @__list_add_valid(ptr noundef %u96, ptr noundef %76, ptr noundef %erase97) #11
  br i1 %call.i.i189, label %if.end.i.i191, label %do.end95.cleanup_crit_edge

do.end95.cleanup_crit_edge:                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i191:                                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %prev.i188 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %u96, ptr %prev.i188, align 4
  %78 = ptrtoint ptr %u96 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %erase97, ptr %u96, align 4
  %prev3.i.i190 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 6, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i190 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i190, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %u96, ptr %76, align 4
  br label %cleanup

while.cond.while.end_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le = ptrtoint ptr %4 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %root, %entry.while.end_crit_edge ]
  %highest_lnum99 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 1
  %81 = ptrtoint ptr %highest_lnum99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %highest_lnum99, align 4
  %lnum100 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %new_vh, i32 0, i32 6
  %83 = ptrtoint ptr %lnum100 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %lnum100, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp101.not = icmp ugt i32 %82, %84
  br i1 %cmp101.not, label %while.end.if.end108_crit_edge, label %if.then103

while.end.if.end108_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then103:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %highest_lnum99 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %highest_lnum99, align 4
  %data_size106 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %new_vh, i32 0, i32 8
  %86 = ptrtoint ptr %data_size106 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %data_size106, align 1
  %last_data_size107 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 5
  %88 = ptrtoint ptr %last_data_size107 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %last_data_size107, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %while.end.if.end108_crit_edge
  %vol_type = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 3
  %89 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vol_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp109 = icmp eq i32 %90, 4
  br i1 %cmp109, label %if.then111, label %if.end108.if.end113_crit_edge

if.end108.if.end113_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  %used_ebs = getelementptr inbounds %struct.ubi_vid_hdr, ptr %new_vh, i32 0, i32 9
  %91 = ptrtoint ptr %used_ebs to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %used_ebs, align 1
  %used_ebs112 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 4
  %93 = ptrtoint ptr %used_ebs112 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %used_ebs112, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end108.if.end113_crit_edge
  %leb_count = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 2
  %94 = ptrtoint ptr %leb_count to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %leb_count, align 4
  %inc = add i32 %95, 1
  store i32 %inc, ptr %leb_count, align 4
  %u114 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 6
  %96 = ptrtoint ptr %u114 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %parent.0.lcssa, ptr %u114, align 4
  %rb_right.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 6, i32 0, i32 1
  %97 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %new_aeb, i32 0, i32 6, i32 0, i32 2
  %98 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %rb_left.i, align 4
  %99 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %u114, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %u114, ptr noundef %root) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.end.i.i191, %do.end95.cleanup_crit_edge, %do.end58, %if.then30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end22
  %retval.0 = phi i32 [ 0, %do.end22 ], [ 0, %if.end113 ], [ %call25, %if.end23.cleanup_crit_edge ], [ -12, %if.then30.cleanup_crit_edge ], [ 0, %do.end58 ], [ 0, %do.end95.cleanup_crit_edge ], [ 0, %if.end.i.i191 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_compare_lebs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_sync_erase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_ec_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_is_erase_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_get_ldesc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubi_next_sqnum(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_vid_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @self_check_seen(ptr noundef %ubi, ptr noundef %seen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %1 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %tobool1.not = icmp eq ptr %seen, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %2 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16 = icmp sgt i32 %3, 0
  br i1 %cmp16, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.018 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %pnum.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %pnum.017, 5
  %arrayidx.i = getelementptr i32, ptr %seen, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pnum.017, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lookuptbl, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %pnum.017
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %if.then5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.89, i32 noundef %pnum.017) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.018, %for.body.for.inc_crit_edge ], [ -22, %if.then5 ], [ %ret.018, %land.lhs.true.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %pnum.017, 1
  %12 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %peb_count, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !102, !104, !105, !107, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !167, !168, !170, !172, !174, !175, !177, !178, !180, !181, !182, !184}
!llvm.named.register.sp = !{!186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/fastmap.c", i32 902, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/ubi/fastmap.c", i32 909, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/ubi/fastmap.c", i32 917, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/fastmap.c", i32 925, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/fastmap.c", i32 956, i32 17}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/ubi/fastmap.c", i32 964, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/ubi/fastmap.c", i32 981, i32 17}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/ubi/fastmap.c", i32 989, i32 17}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/ubi/fastmap.c", i32 996, i32 18}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1004, i32 18}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1018, i32 17}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1032, i32 16}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1033, i32 16}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1070, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1071, i32 15}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1072, i32 15}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1082, i32 16}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1570, i32 16}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1584, i32 19}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1596, i32 18}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1636, i32 18}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1657, i32 17}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1686, i32 16}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1690, i32 16}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/ubi/ubi.h", i32 1136, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ubi_io_read_data._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @ubi_io_read_data._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/ubi/fastmap.c", i32 580, i32 16}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/ubi/fastmap.c", i32 590, i32 16}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/ubi/fastmap.c", i32 600, i32 16}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/ubi/fastmap.c", i32 611, i32 16}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/ubi/fastmap.c", i32 616, i32 16}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/ubi/fastmap.c", i32 623, i32 16}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/ubi/fastmap.c", i32 629, i32 16}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/ubi/fastmap.c", i32 689, i32 17}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/ubi/fastmap.c", i32 702, i32 18}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/ubi/fastmap.c", i32 719, i32 17}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/ubi/fastmap.c", i32 739, i32 18}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/ubi/fastmap.c", i32 750, i32 4}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ubi_attach_fastmap.__UNIQUE_ID_ddebug236, !77, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!82 = !{ptr @ubi_attach_fastmap._entry, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/mtd/ubi/fastmap.c", i32 772, i32 2}
!84 = !{ptr @ubi_attach_fastmap._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/ubi/fastmap.c", i32 192, i32 2}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @add_vol.__UNIQUE_ID_ddebug230, !86, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/ubi/fastmap.c", i32 422, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @scan_pool.__UNIQUE_ID_ddebug233, !90, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/ubi/fastmap.c", i32 435, i32 17}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/ubi/fastmap.c", i32 442, i32 17}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/ubi/fastmap.c", i32 456, i32 17}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ubi/fastmap.c", i32 466, i32 4}
!101 = !{ptr @scan_pool.__UNIQUE_ID_ddebug234, !100, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/ubi/fastmap.c", i32 474, i32 4}
!104 = !{ptr @scan_pool.__UNIQUE_ID_ddebug235, !103, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/ubi/fastmap.c", i32 500, i32 17}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/ubi/fastmap.c", i32 352, i32 16}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/ubi/fastmap.c", i32 357, i32 2}
!111 = !{ptr @process_pool_aeb._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @process_pool_aeb._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/ubi/fastmap.c", i32 268, i32 4}
!115 = !{ptr @update_vol._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @update_vol._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/ubi/fastmap.c", i32 290, i32 4}
!119 = !{ptr @update_vol.__UNIQUE_ID_ddebug231, !118, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/ubi/fastmap.c", i32 302, i32 4}
!122 = !{ptr @update_vol.__UNIQUE_ID_ddebug232, !121, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1171, i32 2}
!125 = !{ptr @ubi_write_fastmap._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ubi_write_fastmap._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @ubi_write_fastmap._entry.58, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1175, i32 2}
!129 = !{ptr @ubi_write_fastmap._entry_ptr.59, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @ubi_write_fastmap._entry.60, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1221, i32 3}
!132 = !{ptr @ubi_write_fastmap._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @ubi_write_fastmap._entry.62, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1232, i32 3}
!135 = !{ptr @ubi_write_fastmap._entry_ptr.63, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @ubi_write_fastmap._entry.64, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1245, i32 3}
!138 = !{ptr @ubi_write_fastmap._entry_ptr.65, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @ubi_write_fastmap._entry.66, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1257, i32 3}
!141 = !{ptr @ubi_write_fastmap._entry_ptr.67, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @ubi_write_fastmap._entry.68, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1270, i32 3}
!144 = !{ptr @ubi_write_fastmap._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @ubi_write_fastmap._entry.70, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1278, i32 4}
!147 = !{ptr @ubi_write_fastmap._entry_ptr.71, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @ubi_write_fastmap._entry.72, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1288, i32 4}
!150 = !{ptr @ubi_write_fastmap._entry_ptr.73, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @ubi_write_fastmap._entry.74, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1303, i32 3}
!153 = !{ptr @ubi_write_fastmap._entry_ptr.75, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @ubi_write_fastmap._entry.76, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1312, i32 3}
!156 = !{ptr @ubi_write_fastmap._entry_ptr.77, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @ubi_write_fastmap._entry.78, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1317, i32 3}
!159 = !{ptr @ubi_write_fastmap._entry_ptr.79, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1338, i32 2}
!162 = !{ptr @ubi_write_fastmap.__UNIQUE_ID_ddebug237, !161, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1341, i32 16}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1358, i32 3}
!167 = !{ptr @ubi_write_fastmap.__UNIQUE_ID_ddebug238, !166, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1362, i32 17}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1372, i32 17}
!172 = !{ptr @ubi_write_fastmap._entry.85, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1378, i32 2}
!174 = !{ptr @ubi_write_fastmap._entry_ptr.86, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mtd/ubi/fastmap.c", i32 1382, i32 2}
!177 = !{ptr @ubi_write_fastmap.__UNIQUE_ID_ddebug239, !176, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/ubi/ubi.h", i32 1148, i32 2}
!180 = !{ptr @ubi_io_write_data._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @ubi_io_write_data._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/ubi/fastmap.c", i32 68, i32 17}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/ubi/ubi.h", i32 1160, i32 17}
!186 = !{!"sp"}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!"branch_weights", i32 2000, i32 1}
!197 = !{i64 2148851180, i64 2148851460, i64 2148851794, i64 2148852128}
!198 = !{i64 2148942461, i64 2148942466, i64 2148942479, i64 2148942523, i64 2148942557, i64 2148942578}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{!"auto-init"}
