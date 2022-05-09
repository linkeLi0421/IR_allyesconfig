; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/vtbl.c_pt.bc'
source_filename = "../drivers/mtd/ubi/vtbl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
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
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon.76 }
%union.anon.76 = type { %struct.rb_node }

@ubi_change_vtbl_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubi_change_vtbl_record\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mtd/ubi/vtbl.c\00", [41 x i8] zeroinitializer }, align 32
@ubi_change_vtbl_record._entry_ptr = internal global ptr @ubi_change_vtbl_record._entry, section ".printk_index", align 4
@empty_vtbl_record = internal global { %struct.ubi_vtbl_record, [52 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"the layout volume was not found\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"too many LEBs (%d) in layout volume\00", [60 x i8] zeroinitializer }, align 32
@create_vtbl.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"create_vtbl\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBI DBG gen (pid %d): create volume table (copy #%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ubi_io_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.9, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_io_write_data\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/ubi/ubi.h\00", [42 x i8] zeroinitializer }, align 32
@ubi_io_write_data._entry_ptr = internal global ptr @ubi_io_write_data._entry, section ".printk_index", align 4
@process_lvol.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"process_lvol\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG gen (pid %d): check layout volume\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"volume table copy #2 is corrupted\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"volume table was restored\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"both volume tables are corrupted\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"volume table copy #1 is corrupted\00", [62 x i8] zeroinitializer }, align 32
@ubi_io_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.9, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_io_read_data\00", [47 x i8] zeroinitializer }, align 32
@ubi_io_read_data._entry_ptr = internal global ptr @ubi_io_read_data._entry, section ".printk_index", align 4
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bad CRC at record %u: %#08x, not %#08x\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad data_pad, has to be %d\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"too large reserved_pebs %d, good PEBs %d\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"volumes %d and %d have the same name \22%s\22\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"volume table check failed: record %d, error %d\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"more than one auto-resize volume (%d and %d)\00", [51 x i8] zeroinitializer }, align 32
@init_volumes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_volumes\00", [19 x i8] zeroinitializer }, align 32
@init_volumes._entry_ptr = internal global ptr @init_volumes._entry, section ".printk_index", align 4
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"static volume %d misses %d LEBs - corrupted\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"layout volume\00", [18 x i8] zeroinitializer }, align 32
@init_volumes._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_volumes._entry_ptr.27 = internal global ptr @init_volumes._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"not enough PEBs, required %d, available %d\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d PEBs are corrupted and not used\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"found %d volumes while attaching, maximum is %d + %d\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"too large volume ID %d found\00", [35 x i8] zeroinitializer }, align 32
@check_attaching_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_attaching_info\00", [43 x i8] zeroinitializer }, align 32
@check_attaching_info._entry_ptr = internal global ptr @check_attaching_info._entry, section ".printk_index", align 4
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"finish volume %d removal\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad attaching information, error %d\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"self-check failed\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 96, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"empty_vtbl_record\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 57, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 816, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 822, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 293, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1148, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 396, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 437, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 441, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 456, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 460, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"../drivers/mtd/ubi/ubi.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1136, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 178, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 212, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 228, i32 17 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 258, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 270, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 556, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 565, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 612, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 634, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 643, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 653, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 656, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 726, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 733, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 750, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 762, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 702, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [26 x i8] c"../drivers/mtd/ubi/vtbl.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 868, i32 16 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @check_attaching_info._entry, ptr @check_attaching_info._entry_ptr, ptr @init_volumes._entry, ptr @init_volumes._entry.26, ptr @init_volumes._entry_ptr, ptr @init_volumes._entry_ptr.27, ptr @ubi_change_vtbl_record._entry, ptr @ubi_change_vtbl_record._entry_ptr, ptr @ubi_io_read_data._entry, ptr @ubi_io_read_data._entry_ptr, ptr @ubi_io_write_data._entry, ptr @ubi_io_write_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @empty_vtbl_record, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_change_vtbl_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_vtbl_record to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_volumes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_volumes._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_attaching_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_change_vtbl_record(ptr noundef %ubi, i32 noundef %idx, ptr noundef %vtbl_rec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx)
  %cmp = icmp sgt i32 %idx, -1
  br i1 %cmp, label %land.rhs, label %entry.do.end_crit_edge, !prof !89

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs:                                         ; preds = %entry
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %0 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp1.not = icmp sgt i32 %1, %idx
  br i1 %cmp1.not, label %land.rhs.do.end7_crit_edge, label %land.rhs.do.end_crit_edge, !prof !89

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs.do.end7_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 96, i32 noundef %7) #13
  tail call void @dump_stack() #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %land.rhs.do.end7_crit_edge
  %tobool8.not = icmp eq ptr %vtbl_rec, null
  br i1 %tobool8.not, label %do.end7.if.end12_crit_edge, label %if.else

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %vtbl_rec, i32 noundef 168) #14
  %crc11 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 9
  %8 = ptrtoint ptr %crc11 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %call10, ptr %crc11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.end7.if.end12_crit_edge
  %vtbl_rec.addr.0 = phi ptr [ %vtbl_rec, %if.else ], [ @empty_vtbl_record, %do.end7.if.end12_crit_edge ]
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %9 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vtbl, align 4
  %arrayidx = getelementptr %struct.ubi_vtbl_record, ptr %10, i32 %idx
  %11 = call ptr @memcpy(ptr %arrayidx, ptr %vtbl_rec.addr.0, i32 172)
  %vtbl_slots.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %12 = ptrtoint ptr %vtbl_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vtbl_slots.i.i, align 4
  %arrayidx.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %vtbl_size.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 16
  %16 = load ptr, ptr %vtbl, align 4
  %17 = ptrtoint ptr %vtbl_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vtbl_size.i, align 8
  %call1.i = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %ubi, ptr noundef %15, i32 noundef 0, ptr noundef %16, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end12.ubi_update_layout_vol.exit_crit_edge

if.end12.ubi_update_layout_vol.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubi_update_layout_vol.exit

for.cond.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vtbl, align 4
  %21 = ptrtoint ptr %vtbl_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vtbl_size.i, align 8
  %call1.1.i = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %ubi, ptr noundef %15, i32 noundef 1, ptr noundef %20, i32 noundef %22) #10
  br label %ubi_update_layout_vol.exit

ubi_update_layout_vol.exit:                       ; preds = %for.cond.i, %if.end12.ubi_update_layout_vol.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end12.ubi_update_layout_vol.exit_crit_edge ], [ %call1.1.i, %for.cond.i ]
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %23 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i24 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i24, label %ubi_update_layout_vol.exit.self_vtbl_check.exit_crit_edge, label %if.end.i

ubi_update_layout_vol.exit.self_vtbl_check.exit_crit_edge: ; preds = %ubi_update_layout_vol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %self_vtbl_check.exit

if.end.i:                                         ; preds = %ubi_update_layout_vol.exit
  %24 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vtbl, align 4
  %call1.i26 = tail call fastcc i32 @vtbl_check(ptr noundef %ubi, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool2.not.i = icmp eq i32 %call1.i26, 0
  br i1 %tobool2.not.i, label %if.end.i.self_vtbl_check.exit_crit_edge, label %if.then3.i

if.end.i.self_vtbl_check.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %self_vtbl_check.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.35) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/ubi/vtbl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 869, 0\0A.popsection", ""() #10, !srcloc !90
  unreachable

self_vtbl_check.exit:                             ; preds = %if.end.i.self_vtbl_check.exit_crit_edge, %ubi_update_layout_vol.exit.self_vtbl_check.exit_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_vtbl_rename_volumes(ptr noundef %ubi, ptr noundef readonly %rename_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rename_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn34 = load ptr, ptr %rename_list, align 4
  %cmp.not36 = icmp eq ptr %.pn34, %rename_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn37 = phi ptr [ %.pn34, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %desc = getelementptr i8, ptr %.pn37, i32 -4
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vtbl, align 4
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vol_id, align 4
  %arrayidx = getelementptr %struct.ubi_vtbl_record, ptr %6, i32 %8
  %remove = getelementptr i8, ptr %.pn37, i32 -8
  %9 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %remove, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = call ptr @memcpy(ptr %arrayidx, ptr @empty_vtbl_record, i32 172)
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %re.038 = getelementptr i8, ptr %.pn37, i32 -140
  %12 = ptrtoint ptr %re.038 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %re.038, align 4
  %conv = trunc i32 %13 to i16
  %name_len = getelementptr %struct.ubi_vtbl_record, ptr %6, i32 %8, i32 5
  %14 = ptrtoint ptr %name_len to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %conv, ptr %name_len, align 1
  %name = getelementptr %struct.ubi_vtbl_record, ptr %6, i32 %8, i32 6
  %new_name = getelementptr i8, ptr %.pn37, i32 -136
  %15 = load i32, ptr %re.038, align 4
  %16 = call ptr @memcpy(ptr %name, ptr %new_name, i32 %15)
  %17 = load i32, ptr %re.038, align 4
  %add.ptr7 = getelementptr i8, ptr %name, i32 %17
  %sub = sub i32 128, %17
  %18 = call ptr @memset(ptr %add.ptr7, i32 0, i32 %sub)
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %arrayidx, i32 noundef 168) #14
  %crc9 = getelementptr %struct.ubi_vtbl_record, ptr %6, i32 %8, i32 9
  %19 = ptrtoint ptr %crc9 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %call, ptr %crc9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %rename_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %vtbl_slots.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %21 = ptrtoint ptr %vtbl_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vtbl_slots.i.i, align 4
  %arrayidx.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %vtbl.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %vtbl_size.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 16
  %25 = ptrtoint ptr %vtbl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vtbl.i, align 4
  %27 = ptrtoint ptr %vtbl_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vtbl_size.i, align 8
  %call1.i = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %ubi, ptr noundef %24, i32 noundef 0, ptr noundef %26, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.end.ubi_update_layout_vol.exit_crit_edge

for.end.ubi_update_layout_vol.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubi_update_layout_vol.exit

for.cond.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %vtbl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vtbl.i, align 4
  %31 = ptrtoint ptr %vtbl_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vtbl_size.i, align 8
  %call1.1.i = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %ubi, ptr noundef %24, i32 noundef 1, ptr noundef %30, i32 noundef %32) #10
  br label %ubi_update_layout_vol.exit

ubi_update_layout_vol.exit:                       ; preds = %for.cond.i, %for.end.ubi_update_layout_vol.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %for.end.ubi_update_layout_vol.exit_crit_edge ], [ %call1.1.i, %for.cond.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_read_volume_table(ptr noundef %ubi, ptr noundef %ai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 -250166421, ptr getelementptr inbounds (%struct.ubi_vtbl_record, ptr @empty_vtbl_record, i32 0, i32 9), align 1
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %0 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_size, align 8
  %div = udiv i32 %1, 172
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 22187, i32 %1)
  %cmp = icmp ugt i32 %1, 22187
  %spec.select = select i1 %cmp, i32 128, i32 %div
  %2 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %vtbl_slots, align 4
  %mul = mul nuw i32 %spec.select, 172
  %vtbl_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 16
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %3 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min_io_size, align 4
  %sub = add i32 %4, -1
  %add = add i32 %sub, %mul
  %neg = sub i32 0, %4
  %and = and i32 %add, %neg
  %5 = ptrtoint ptr %vtbl_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %vtbl_size, align 8
  %call = tail call ptr @ubi_find_av(ptr noundef %ai, i32 noundef 2147479551) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then8, label %if.else19

if.then8:                                         ; preds = %entry
  %is_empty = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 13
  %6 = ptrtoint ptr %is_empty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_empty, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  %8 = ptrtoint ptr %vtbl_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vtbl_size, align 8
  %call.i = tail call noalias ptr @vzalloc(i32 noundef %9) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %create_empty_lvol.exit.thread, label %for.cond.preheader.i

create_empty_lvol.exit.thread:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %vtbl109 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %10 = ptrtoint ptr %vtbl109 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -12 to ptr), ptr %vtbl109, align 4
  br label %if.then14

for.cond.preheader.i:                             ; preds = %if.then10
  %11 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp29.i = icmp sgt i32 %12, 0
  br i1 %cmp29.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.cond2.preheader.i_crit_edge

for.cond.preheader.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %for.body.i.for.cond2.preheader.i_crit_edge, %for.cond.preheader.i.for.cond2.preheader.i_crit_edge
  %call5.i = tail call fastcc i32 @create_vtbl(ptr noundef %ubi, ptr noundef %ai, i32 noundef 0, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %for.cond2.i, label %for.cond2.preheader.i.cleanup.i_crit_edge

for.cond2.preheader.i.cleanup.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ubi_vtbl_record, ptr %call.i, i32 %i.030.i
  %13 = call ptr @memcpy(ptr %arrayidx.i, ptr @empty_vtbl_record, i32 172)
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.body.i.for.cond2.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.cond2.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader.i

for.cond2.i:                                      ; preds = %for.cond2.preheader.i
  %call5.1.i = tail call fastcc i32 @create_vtbl(ptr noundef %ubi, ptr noundef %ai, i32 noundef 1, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %tobool6.not.1.i = icmp eq i32 %call5.1.i, 0
  br i1 %tobool6.not.1.i, label %for.cond2.i.create_empty_lvol.exit_crit_edge, label %for.cond2.i.cleanup.i_crit_edge

for.cond2.i.cleanup.i_crit_edge:                  ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

for.cond2.i.create_empty_lvol.exit_crit_edge:     ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_empty_lvol.exit

cleanup.i:                                        ; preds = %for.cond2.i.cleanup.i_crit_edge, %for.cond2.preheader.i.cleanup.i_crit_edge
  %call5.lcssa.i = phi i32 [ %call5.i, %for.cond2.preheader.i.cleanup.i_crit_edge ], [ %call5.1.i, %for.cond2.i.cleanup.i_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call.i) #10
  %14 = inttoptr i32 %call5.lcssa.i to ptr
  br label %create_empty_lvol.exit

create_empty_lvol.exit:                           ; preds = %cleanup.i, %for.cond2.i.create_empty_lvol.exit_crit_edge
  %retval.2.i = phi ptr [ %14, %cleanup.i ], [ %call.i, %for.cond2.i.create_empty_lvol.exit_crit_edge ]
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %15 = ptrtoint ptr %vtbl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.2.i, ptr %vtbl, align 4
  %cmp.i = icmp ugt ptr %retval.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %create_empty_lvol.exit.if.then14_crit_edge, label %create_empty_lvol.exit.if.end32_crit_edge

create_empty_lvol.exit.if.end32_crit_edge:        ; preds = %create_empty_lvol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

create_empty_lvol.exit.if.then14_crit_edge:       ; preds = %create_empty_lvol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %create_empty_lvol.exit.if.then14_crit_edge, %create_empty_lvol.exit.thread
  %retval.2.i111 = phi ptr [ inttoptr (i32 -12 to ptr), %create_empty_lvol.exit.thread ], [ %retval.2.i, %create_empty_lvol.exit.if.then14_crit_edge ]
  %16 = ptrtoint ptr %retval.2.i111 to i32
  br label %cleanup

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.else19:                                        ; preds = %entry
  %leb_count = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %leb_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %leb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp20 = icmp sgt i32 %18, 2
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.4, i32 noundef %18) #10
  br label %cleanup

if.end23:                                         ; preds = %if.else19
  %call24 = tail call fastcc ptr @process_lvol(ptr noundef %ubi, ptr noundef %ai, ptr noundef nonnull %call)
  %vtbl25 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %19 = ptrtoint ptr %vtbl25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %vtbl25, align 4
  %cmp.i82 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then28, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end23.if.end32_crit_edge, %create_empty_lvol.exit.if.end32_crit_edge
  %good_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 63
  %21 = ptrtoint ptr %good_peb_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %good_peb_count, align 4
  %corr_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 64
  %23 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %corr_peb_count, align 8
  %sub33 = sub i32 %22, %24
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %25 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub33, ptr %avail_pebs, align 8
  %vtbl34 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %26 = ptrtoint ptr %vtbl34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vtbl34, align 4
  %28 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp339.i = icmp sgt i32 %29, 0
  br i1 %cmp339.i, label %for.body.lr.ph.i, label %if.end32.for.end.i_crit_edge

if.end32.for.end.i_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end32
  %autoresize_vol_id.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 14
  %vol_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 4
  %peb_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.inc.i.for.body.i85_crit_edge, %for.body.lr.ph.i
  %i.0341.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i87, %for.inc.i.for.body.i85_crit_edge ]
  %reserved_pebs.0340.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %reserved_pebs.1.i, %for.inc.i.for.body.i85_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 529, i32 noundef 0) #10
  %call.i.i = tail call i32 @__cond_resched() #10
  %arrayidx.i84 = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i
  %30 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx.i84, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2.i = icmp eq i32 %31, 0
  br i1 %cmp2.i, label %for.body.i85.for.inc.i_crit_edge, label %if.end.i

for.body.i85.for.inc.i_crit_edge:                 ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 1328) #16
  %tobool.not.i86 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i86, label %if.end.i.out_free_crit_edge, label %if.end5.i

if.end.i.out_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end5.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx.i84, align 1
  %reserved_pebs8.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %reserved_pebs8.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %reserved_pebs8.i, align 4
  %alignment.i = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i, i32 1
  %36 = ptrtoint ptr %alignment.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %alignment.i, align 1
  %alignment10.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 15
  %38 = ptrtoint ptr %alignment10.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %alignment10.i, align 8
  %data_pad.i = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i, i32 2
  %39 = ptrtoint ptr %data_pad.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %data_pad.i, align 1
  %data_pad12.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 16
  %41 = ptrtoint ptr %data_pad12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %data_pad12.i, align 4
  %upd_marker.i = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i, i32 4
  %42 = ptrtoint ptr %upd_marker.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %upd_marker.i, align 1
  %upd_marker14.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 25
  %44 = ptrtoint ptr %upd_marker14.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %upd_marker14.i, align 8
  %bf.value.i = shl i8 %43, 4
  %bf.shl.i = and i8 %bf.value.i, 16
  %bf.clear.i = and i8 %bf.load.i, -17
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %upd_marker14.i, align 8
  %vol_type.i = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i, i32 3
  %45 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vol_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp17.i = icmp eq i8 %46, 1
  %cond.i = select i1 %cmp17.i, i32 3, i32 4
  %vol_type19.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %vol_type19.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond.i, ptr %vol_type19.i, align 8
  %name_len.i = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i, i32 5
  %48 = ptrtoint ptr %name_len.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %name_len.i, align 1
  %conv21.i = zext i16 %49 to i32
  %name_len22.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 17
  %50 = ptrtoint ptr %name_len22.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv21.i, ptr %name_len22.i, align 8
  %51 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %leb_size, align 8
  %sub.i = sub i32 %52, %40
  %usable_leb_size.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 11
  %53 = ptrtoint ptr %usable_leb_size.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.i, ptr %usable_leb_size.i, align 4
  %name.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 18
  %name25.i = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i, i32 6
  %54 = call ptr @memcpy(ptr %name.i, ptr %name25.i, i32 %conv21.i)
  %arrayidx30.i = getelementptr %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 18, i32 %conv21.i
  %55 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx30.i, align 1
  %vol_id.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %i.0341.i, ptr %vol_id.i, align 4
  %flags.i = getelementptr %struct.ubi_vtbl_record, ptr %27, i32 %i.0341.i, i32 7
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags.i, align 1
  %59 = and i8 %58, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool33.not.i = icmp eq i8 %59, 0
  br i1 %tobool33.not.i, label %if.end5.i.if.end38.i_crit_edge, label %if.then34.i

if.end5.i.if.end38.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %upd_marker14.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load35.i = load i8, ptr %upd_marker14.i, align 8
  %bf.set37.i = or i8 %bf.load35.i, -128
  store i8 %bf.set37.i, ptr %upd_marker14.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end5.i.if.end38.i_crit_edge
  %61 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool43.not.i = icmp eq i8 %61, 0
  br i1 %tobool43.not.i, label %if.end38.i.do.body.i_crit_edge, label %if.then44.i

if.end38.i.do.body.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then44.i:                                      ; preds = %if.end38.i
  %62 = ptrtoint ptr %autoresize_vol_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %autoresize_vol_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp45.not.i = icmp eq i32 %63, -1
  br i1 %cmp45.not.i, label %if.end49.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.22, i32 noundef %63, i32 noundef %i.0341.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %out_free

if.end49.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %autoresize_vol_id.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.0341.i, ptr %autoresize_vol_id.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end49.i, %if.end38.i.do.body.i_crit_edge
  %arrayidx52.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.0341.i
  %65 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx52.i, align 4
  %tobool53.not.i = icmp eq ptr %66, null
  br i1 %tobool53.not.i, label %do.body.i.do.end65.i_crit_edge, label %do.end.i, !prof !89

do.body.i.do.end65.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 68
  %71 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pid.i, align 8
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, i32 noundef 565, i32 noundef %72) #13
  tail call void @dump_stack() #13
  br label %do.end65.i

do.end65.i:                                       ; preds = %do.end.i, %do.body.i.do.end65.i_crit_edge
  %73 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i, ptr %arrayidx52.i, align 4
  %74 = ptrtoint ptr %vol_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vol_count.i, align 8
  %add.i = add i32 %75, 1
  store i32 %add.i, ptr %vol_count.i, align 8
  %ubi68.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %ubi68.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ubi, ptr %ubi68.i, align 8
  %77 = ptrtoint ptr %reserved_pebs8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reserved_pebs8.i, align 4
  %add70.i = add i32 %78, %reserved_pebs.0340.i
  %79 = ptrtoint ptr %peb_count.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %peb_count.i, align 8
  %call71.i = tail call i32 @ubi_fastmap_init_checkmap(ptr noundef nonnull %call7.i.i.i, i32 noundef %80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %do.end65.i.out_free_crit_edge

do.end65.i.out_free_crit_edge:                    ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end74.i:                                       ; preds = %do.end65.i
  %81 = ptrtoint ptr %vol_type19.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vol_type19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp76.i = icmp eq i32 %82, 3
  br i1 %cmp76.i, label %if.then78.i, label %if.end85.i

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %reserved_pebs8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reserved_pebs8.i, align 4
  %used_ebs.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 12
  %85 = ptrtoint ptr %used_ebs.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %used_ebs.i, align 8
  %86 = ptrtoint ptr %usable_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usable_leb_size.i, align 4
  %last_eb_bytes.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 13
  %88 = ptrtoint ptr %last_eb_bytes.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %last_eb_bytes.i, align 4
  %conv82.i = sext i32 %84 to i64
  %conv84.i = sext i32 %87 to i64
  %mul.i = mul nsw i64 %conv84.i, %conv82.i
  %used_bytes.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 14
  %89 = ptrtoint ptr %used_bytes.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %mul.i, ptr %used_bytes.i, align 8
  br label %for.inc.i

if.end85.i:                                       ; preds = %if.end74.i
  %call86.i = tail call ptr @ubi_find_av(ptr noundef %ai, i32 noundef %i.0341.i) #10
  %tobool87.not.i = icmp eq ptr %call86.i, null
  br i1 %tobool87.not.i, label %if.end85.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end85.i.for.inc.i_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end85.i
  %leb_count.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call86.i, i32 0, i32 2
  %90 = ptrtoint ptr %leb_count.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %leb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool88.not.i = icmp eq i32 %91, 0
  br i1 %tobool88.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end90.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end90.i:                                       ; preds = %lor.lhs.false.i
  %used_ebs92.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call86.i, i32 0, i32 4
  %92 = ptrtoint ptr %used_ebs92.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %used_ebs92.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %91)
  %cmp93.not.i = icmp eq i32 %93, %91
  br i1 %cmp93.not.i, label %if.end103.i, label %if.then95.i

if.then95.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %call86.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call86.i, align 4
  %sub99.i = sub i32 %93, %91
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.24, i32 noundef %95, i32 noundef %sub99.i) #10
  %96 = ptrtoint ptr %upd_marker14.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load100.i = load i8, ptr %upd_marker14.i, align 8
  %bf.set102.i = or i8 %bf.load100.i, 32
  store i8 %bf.set102.i, ptr %upd_marker14.i, align 8
  br label %for.inc.i

if.end103.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  %used_ebs105.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 12
  %97 = ptrtoint ptr %used_ebs105.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %91, ptr %used_ebs105.i, align 8
  %sub107.i = add i32 %91, -1
  %conv108.i = sext i32 %sub107.i to i64
  %98 = ptrtoint ptr %usable_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %usable_leb_size.i, align 4
  %conv110.i = sext i32 %99 to i64
  %mul111.i = mul nsw i64 %conv110.i, %conv108.i
  %used_bytes112.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 14
  %100 = ptrtoint ptr %used_bytes112.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %mul111.i, ptr %used_bytes112.i, align 8
  %last_data_size.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call86.i, i32 0, i32 5
  %101 = ptrtoint ptr %last_data_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %last_data_size.i, align 4
  %conv113.i = sext i32 %102 to i64
  %add115.i = add nsw i64 %mul111.i, %conv113.i
  store i64 %add115.i, ptr %used_bytes112.i, align 8
  %103 = load i32, ptr %last_data_size.i, align 4
  %last_eb_bytes117.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i.i, i32 0, i32 13
  %104 = ptrtoint ptr %last_eb_bytes117.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %last_eb_bytes117.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end103.i, %if.then95.i, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end85.i.for.inc.i_crit_edge, %if.then78.i, %for.body.i85.for.inc.i_crit_edge
  %reserved_pebs.1.i = phi i32 [ %reserved_pebs.0340.i, %for.body.i85.for.inc.i_crit_edge ], [ %add70.i, %if.then78.i ], [ %add70.i, %if.then95.i ], [ %add70.i, %if.end103.i ], [ %add70.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %add70.i, %if.end85.i.for.inc.i_crit_edge ]
  %inc.i87 = add nuw nsw i32 %i.0341.i, 1
  %105 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vtbl_slots, align 4
  %cmp.i88 = icmp slt i32 %inc.i87, %106
  br i1 %cmp.i88, label %for.inc.i.for.body.i85_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i85_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i85

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end32.for.end.i_crit_edge
  %reserved_pebs.0.lcssa.i = phi i32 [ 0, %if.end32.for.end.i_crit_edge ], [ %reserved_pebs.1.i, %for.inc.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %if.end32.for.end.i_crit_edge ], [ %inc.i87, %for.inc.i.for.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %107 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i330.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3520, i32 noundef 1328) #16
  %tobool119.not.i = icmp eq ptr %call7.i.i330.i, null
  br i1 %tobool119.not.i, label %for.end.i.out_free_crit_edge, label %if.end121.i

for.end.i.out_free_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end121.i:                                      ; preds = %for.end.i
  %reserved_pebs122.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 9
  %108 = ptrtoint ptr %reserved_pebs122.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %reserved_pebs122.i, align 4
  %alignment123.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 15
  %109 = ptrtoint ptr %alignment123.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %alignment123.i, align 8
  %vol_type124.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 10
  %110 = ptrtoint ptr %vol_type124.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 3, ptr %vol_type124.i, align 8
  %name_len125.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 17
  %111 = ptrtoint ptr %name_len125.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 13, ptr %name_len125.i, align 8
  %name126.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 18
  %112 = call ptr @memcpy(ptr %name126.i, ptr @.str.25, i32 14)
  %113 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %leb_size, align 8
  %usable_leb_size131.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 11
  %115 = ptrtoint ptr %usable_leb_size131.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %usable_leb_size131.i, align 4
  %used_ebs133.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 12
  %116 = ptrtoint ptr %used_ebs133.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 2, ptr %used_ebs133.i, align 8
  %last_eb_bytes135.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 13
  %117 = ptrtoint ptr %last_eb_bytes135.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %last_eb_bytes135.i, align 4
  %data_pad139.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 16
  %118 = ptrtoint ptr %data_pad139.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %data_pad139.i, align 4
  %sub140.i = sub i32 %114, %119
  %conv141.i = sext i32 %sub140.i to i64
  %mul142.i = shl nsw i64 %conv141.i, 1
  %used_bytes143.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 14
  %120 = ptrtoint ptr %used_bytes143.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %mul142.i, ptr %used_bytes143.i, align 8
  %vol_id144.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 3
  %121 = ptrtoint ptr %vol_id144.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2147479551, ptr %vol_id144.i, align 4
  %ref_count.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 4
  %122 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %ref_count.i, align 8
  %arrayidx147.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.0.lcssa.i
  %123 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx147.i, align 4
  %tobool148.not.i = icmp eq ptr %124, null
  br i1 %tobool148.not.i, label %if.end121.i.do.end170.i_crit_edge, label %do.end162.i, !prof !89

if.end121.i.do.end170.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end170.i

do.end162.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i331.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i331.i to ptr
  %task165.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task165.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task165.i, align 8
  %pid166.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 68
  %129 = ptrtoint ptr %pid166.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pid166.i, align 8
  %call167.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, i32 noundef 643, i32 noundef %130) #13
  tail call void @dump_stack() #13
  br label %do.end170.i

do.end170.i:                                      ; preds = %do.end162.i, %if.end121.i.do.end170.i_crit_edge
  %131 = ptrtoint ptr %vol_id144.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vol_id144.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479550, i32 %132)
  %cmp.i.i = icmp sgt i32 %132, 2147479550
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end170.i.vol_id2idx.exit.i_crit_edge

do.end170.i.vol_id2idx.exit.i_crit_edge:          ; preds = %do.end170.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vol_id2idx.exit.i

if.then.i.i:                                      ; preds = %do.end170.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add nsw i32 %132, -2147479551
  %133 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vtbl_slots, align 4
  %add.i.i = add i32 %sub.i.i, %134
  br label %vol_id2idx.exit.i

vol_id2idx.exit.i:                                ; preds = %if.then.i.i, %do.end170.i.vol_id2idx.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %132, %do.end170.i.vol_id2idx.exit.i_crit_edge ]
  %arrayidx174.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %retval.0.i.i
  %135 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call7.i.i330.i, ptr %arrayidx174.i, align 4
  %136 = ptrtoint ptr %reserved_pebs122.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %reserved_pebs122.i, align 4
  %add176.i = add i32 %137, %reserved_pebs.0.lcssa.i
  %vol_count177.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 4
  %138 = ptrtoint ptr %vol_count177.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %vol_count177.i, align 8
  %add178.i = add i32 %139, 1
  store i32 %add178.i, ptr %vol_count177.i, align 8
  %ubi179.i = getelementptr inbounds %struct.ubi_volume, ptr %call7.i.i330.i, i32 0, i32 2
  %140 = ptrtoint ptr %ubi179.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %ubi, ptr %ubi179.i, align 8
  %call180.i = tail call i32 @ubi_fastmap_init_checkmap(ptr noundef nonnull %call7.i.i330.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %tobool181.not.i = icmp eq i32 %call180.i, 0
  br i1 %tobool181.not.i, label %if.end183.i, label %vol_id2idx.exit.i.out_free_crit_edge

vol_id2idx.exit.i.out_free_crit_edge:             ; preds = %vol_id2idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end183.i:                                      ; preds = %vol_id2idx.exit.i
  %141 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %avail_pebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %add176.i)
  %cmp184.i = icmp slt i32 %142, %add176.i
  br i1 %cmp184.i, label %if.then186.i, label %if.end38

if.then186.i:                                     ; preds = %if.end183.i
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.28, i32 noundef %add176.i, i32 noundef %142) #10
  %143 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %corr_peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool188.not.i = icmp eq i32 %144, 0
  br i1 %tobool188.not.i, label %if.then186.i.out_free_crit_edge, label %if.then189.i

if.then186.i.out_free_crit_edge:                  ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then189.i:                                     ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.29, i32 noundef %144) #10
  br label %out_free

if.end38:                                         ; preds = %if.end183.i
  %rsvd_pebs.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 9
  %145 = ptrtoint ptr %rsvd_pebs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rsvd_pebs.i, align 4
  %add193.i = add i32 %146, %add176.i
  store i32 %add193.i, ptr %rsvd_pebs.i, align 4
  %sub195.i = sub i32 %142, %add176.i
  %147 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub195.i, ptr %avail_pebs, align 8
  %vols_found.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 11
  %148 = ptrtoint ptr %vols_found.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vols_found.i, align 8
  %150 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vtbl_slots, align 4
  %add.i91 = add i32 %151, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %add.i91)
  %cmp.i92 = icmp sgt i32 %149, %add.i91
  br i1 %cmp.i92, label %if.then.i, label %if.end.i93

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.30, i32 noundef %149, i32 noundef 1, i32 noundef %151) #10
  br label %out_free

if.end.i93:                                       ; preds = %if.end38
  %highest_vol_id.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 12
  %152 = ptrtoint ptr %highest_vol_id.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %highest_vol_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %add.i91)
  %cmp5.not.i = icmp sge i32 %153, %add.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479551, i32 %153)
  %cmp7.i = icmp slt i32 %153, 2147479551
  %or.cond.i = and i1 %cmp5.not.i, %cmp7.i
  br i1 %or.cond.i, label %if.then8.i, label %for.cond.preheader.i94

for.cond.preheader.i94:                           ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %151)
  %cmp1382.i = icmp ult i32 %151, 2147483647
  br i1 %cmp1382.i, label %for.cond.preheader.i94.for.body.i98_crit_edge, label %for.cond.preheader.i94.cleanup_crit_edge

for.cond.preheader.i94.cleanup_crit_edge:         ; preds = %for.cond.preheader.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i94.for.body.i98_crit_edge:    ; preds = %for.cond.preheader.i94
  br label %for.body.i98

if.then8.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.31, i32 noundef %153) #10
  br label %out_free

for.body.i98:                                     ; preds = %for.inc.i105.for.body.i98_crit_edge, %for.cond.preheader.i94.for.body.i98_crit_edge
  %i.083.i = phi i32 [ %inc.i104, %for.inc.i105.for.body.i98_crit_edge ], [ 0, %for.cond.preheader.i94.for.body.i98_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 739, i32 noundef 0) #10
  %call.i.i95 = tail call i32 @__cond_resched() #10
  %call14.i = tail call ptr @ubi_find_av(ptr noundef %ai, i32 noundef %i.083.i) #10
  %arrayidx.i96 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.083.i
  %154 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i96, align 4
  %tobool.not.i97 = icmp eq ptr %155, null
  br i1 %tobool.not.i97, label %if.then15.i, label %if.end19.i

if.then15.i:                                      ; preds = %for.body.i98
  %tobool16.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool16.not.i, label %if.then15.i.for.inc.i105_crit_edge, label %if.then15.i.for.inc.sink.split.i_crit_edge

if.then15.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

if.then15.i.for.inc.i105_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i105

if.end19.i:                                       ; preds = %for.body.i98
  %reserved_pebs.i = getelementptr inbounds %struct.ubi_volume, ptr %155, i32 0, i32 9
  %156 = ptrtoint ptr %reserved_pebs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %reserved_pebs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp20.i = icmp eq i32 %157, 0
  br i1 %cmp20.i, label %do.body.i99, label %if.else.i

do.body.i99:                                      ; preds = %if.end19.i
  %158 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083.i, i32 %159)
  %cmp23.not.i = icmp slt i32 %i.083.i, %159
  br i1 %cmp23.not.i, label %do.body.i99.do.end34.i_crit_edge, label %do.end.i103, !prof !89

do.body.i99.do.end34.i_crit_edge:                 ; preds = %do.body.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

do.end.i103:                                      ; preds = %do.body.i99
  call void @__sanitizer_cov_trace_pc() #12
  %160 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i.i100 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i100 to ptr
  %task.i101 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %task.i101 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %task.i101, align 8
  %pid.i102 = getelementptr inbounds %struct.task_struct, ptr %163, i32 0, i32 68
  %164 = ptrtoint ptr %pid.i102 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %pid.i102, align 8
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, i32 noundef 750, i32 noundef %165) #13
  tail call void @dump_stack() #13
  br label %do.end34.i

do.end34.i:                                       ; preds = %do.end.i103, %do.body.i99.do.end34.i_crit_edge
  %tobool35.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool35.not.i, label %do.end34.i.for.inc.i105_crit_edge, label %if.end37.i

do.end34.i.for.inc.i105_crit_edge:                ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i105

if.end37.i:                                       ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %call14.i, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.33, i32 noundef %167) #10
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %if.end19.i
  %tobool38.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool38.not.i, label %if.else.i.for.inc.i105_crit_edge, label %if.then39.i

if.else.i.for.inc.i105_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i105

if.then39.i:                                      ; preds = %if.else.i
  %highest_lnum.i.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call14.i, i32 0, i32 1
  %168 = ptrtoint ptr %highest_lnum.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %highest_lnum.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %157)
  %cmp.not.i.i = icmp slt i32 %169, %157
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then39.i.check_av.exit.i_crit_edge

if.then39.i.check_av.exit.i_crit_edge:            ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_av.exit.i

if.end.i.i:                                       ; preds = %if.then39.i
  %leb_count.i.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call14.i, i32 0, i32 2
  %170 = ptrtoint ptr %leb_count.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %leb_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %157)
  %cmp2.i.i = icmp sgt i32 %171, %157
  br i1 %cmp2.i.i, label %if.end.i.i.check_av.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.check_av.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_av.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %vol_type.i.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call14.i, i32 0, i32 3
  %172 = ptrtoint ptr %vol_type.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %vol_type.i.i, align 4
  %vol_type5.i.i = getelementptr inbounds %struct.ubi_volume, ptr %155, i32 0, i32 10
  %174 = ptrtoint ptr %vol_type5.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vol_type5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %175)
  %cmp6.not.i.i = icmp eq i32 %173, %175
  br i1 %cmp6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.check_av.exit.i_crit_edge

if.end4.i.i.check_av.exit.i_crit_edge:            ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_av.exit.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %used_ebs.i.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call14.i, i32 0, i32 4
  %176 = ptrtoint ptr %used_ebs.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %used_ebs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %157)
  %cmp10.i.i = icmp sgt i32 %177, %157
  br i1 %cmp10.i.i, label %if.end8.i.i.check_av.exit.i_crit_edge, label %if.end12.i.i

if.end8.i.i.check_av.exit.i_crit_edge:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_av.exit.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %data_pad.i.i = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call14.i, i32 0, i32 6
  %178 = ptrtoint ptr %data_pad.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %data_pad.i.i, align 4
  %data_pad13.i.i = getelementptr inbounds %struct.ubi_volume, ptr %155, i32 0, i32 16
  %180 = ptrtoint ptr %data_pad13.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %data_pad13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %181)
  %cmp14.not.i.i = icmp eq i32 %179, %181
  br i1 %cmp14.not.i.i, label %if.end12.i.i.for.inc.i105_crit_edge, label %if.end12.i.i.check_av.exit.i_crit_edge

if.end12.i.i.check_av.exit.i_crit_edge:           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_av.exit.i

if.end12.i.i.for.inc.i105_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i105

check_av.exit.i:                                  ; preds = %if.end12.i.i.check_av.exit.i_crit_edge, %if.end8.i.i.check_av.exit.i_crit_edge, %if.end4.i.i.check_av.exit.i_crit_edge, %if.end.i.i.check_av.exit.i_crit_edge, %if.then39.i.check_av.exit.i_crit_edge
  %err.0.i.i = phi i32 [ 1, %if.then39.i.check_av.exit.i_crit_edge ], [ 2, %if.end.i.i.check_av.exit.i_crit_edge ], [ 3, %if.end4.i.i.check_av.exit.i_crit_edge ], [ 4, %if.end8.i.i.check_av.exit.i_crit_edge ], [ 5, %if.end12.i.i.check_av.exit.i_crit_edge ]
  %ubi.i.i = getelementptr inbounds %struct.ubi_volume, ptr %155, i32 0, i32 2
  %182 = ptrtoint ptr %ubi.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ubi.i.i, align 8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %183, ptr noundef nonnull @.str.34, i32 noundef %err.0.i.i) #10
  tail call void @ubi_dump_av(ptr noundef nonnull %call14.i) #10
  tail call void @ubi_dump_vol_info(ptr noundef nonnull %155) #10
  br label %out_free

for.inc.sink.split.i:                             ; preds = %if.end37.i, %if.then15.i.for.inc.sink.split.i_crit_edge
  tail call void @ubi_remove_av(ptr noundef %ai, ptr noundef nonnull %call14.i) #10
  br label %for.inc.i105

for.inc.i105:                                     ; preds = %for.inc.sink.split.i, %if.end12.i.i.for.inc.i105_crit_edge, %if.else.i.for.inc.i105_crit_edge, %do.end34.i.for.inc.i105_crit_edge, %if.then15.i.for.inc.i105_crit_edge
  %inc.i104 = add nuw nsw i32 %i.083.i, 1
  %184 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %vtbl_slots, align 4
  %add12.i = add i32 %185, 1
  %cmp13.i = icmp slt i32 %inc.i104, %add12.i
  br i1 %cmp13.i, label %for.inc.i105.for.body.i98_crit_edge, label %for.inc.i105.cleanup_crit_edge

for.inc.i105.cleanup_crit_edge:                   ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i105.for.body.i98_crit_edge:              ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i98

out_free:                                         ; preds = %check_av.exit.i, %if.then8.i, %if.then.i, %if.then189.i, %if.then186.i.out_free_crit_edge, %vol_id2idx.exit.i.out_free_crit_edge, %for.end.i.out_free_crit_edge, %do.end65.i.out_free_crit_edge, %if.then47.i, %if.end.i.out_free_crit_edge
  %err.0 = phi i32 [ -28, %if.then186.i.out_free_crit_edge ], [ -28, %if.then189.i ], [ %call180.i, %vol_id2idx.exit.i.out_free_crit_edge ], [ -12, %for.end.i.out_free_crit_edge ], [ -22, %if.then47.i ], [ -22, %if.then.i ], [ -22, %if.then8.i ], [ -22, %check_av.exit.i ], [ %call71.i, %do.end65.i.out_free_crit_edge ], [ -12, %if.end.i.out_free_crit_edge ]
  %186 = ptrtoint ptr %vtbl34 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %vtbl34, align 4
  tail call void @vfree(ptr noundef %187) #10
  tail call void @ubi_free_all_volumes(ptr noundef %ubi) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %for.inc.i105.cleanup_crit_edge, %for.cond.preheader.i94.cleanup_crit_edge, %if.then28, %if.then21, %if.else, %if.then14
  %retval.0 = phi i32 [ -22, %if.then21 ], [ %20, %if.then28 ], [ %err.0, %out_free ], [ %16, %if.then14 ], [ -22, %if.else ], [ 0, %for.cond.preheader.i94.cleanup_crit_edge ], [ 0, %for.inc.i105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_find_av(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @process_lvol(ptr noundef %ubi, ptr noundef %ai, ptr noundef %av) unnamed_addr #0 align 64 {
entry:
  %leb = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %leb) #10
  %0 = ptrtoint ptr %leb to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %leb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_lvol.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_lvol, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !79) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_lvol.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.11, i32 noundef %6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %root = getelementptr inbounds %struct.ubi_ainf_volume, ptr %av, i32 0, i32 9
  %call4 = tail call ptr @rb_first(ptr noundef %root) #10
  %tobool7.not137 = icmp eq ptr %call4, null
  br i1 %tobool7.not137, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %vtbl_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 16
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rb.0139 = phi ptr [ %call4, %for.body.lr.ph ], [ %call25, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %vtbl_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vtbl_size, align 8
  %call8 = tail call noalias ptr @vzalloc(i32 noundef %8) #15
  %lnum = getelementptr i8, ptr %rb.0139, i32 -20
  %9 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lnum, align 4
  %arrayidx = getelementptr [2 x ptr], ptr %leb, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %for.body.out_free_crit_edge, label %if.end13

for.body.out_free_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end13:                                         ; preds = %for.body
  %pnum = getelementptr i8, ptr %rb.0139, i32 -28
  %12 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pnum, align 4
  %14 = ptrtoint ptr %vtbl_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vtbl_size, align 8
  %16 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_start.i, align 4
  %call6.i = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef nonnull %call8, i32 noundef %13, i32 noundef %17, i32 noundef %15) #10
  %18 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6.i, label %if.end13.out_free_crit_edge [
    i32 5, label %if.end13.if.then20_crit_edge
    i32 -74, label %if.end13.if.then20_crit_edge140
    i32 0, label %if.end13.for.inc_crit_edge
  ]

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13.if.then20_crit_edge140:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end13.out_free_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then20:                                        ; preds = %if.end13.if.then20_crit_edge, %if.end13.if.then20_crit_edge140
  %scrub = getelementptr i8, ptr %rb.0139, i32 -16
  %19 = ptrtoint ptr %scrub to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %scrub, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %scrub, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.end13.for.inc_crit_edge
  %call25 = tail call ptr @rb_next(ptr noundef nonnull %rb.0139) #10
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %20 = ptrtoint ptr %leb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %leb, align 8
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %for.end.if.else68_crit_edge, label %if.then36

for.end.if.else68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else68

if.then36:                                        ; preds = %for.end
  %call38 = tail call fastcc i32 @vtbl_check(ptr noundef %ubi, ptr noundef nonnull %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp41 = icmp slt i32 %call38, 0
  br i1 %cmp41, label %if.then36.out_free_crit_edge, label %if.end44

if.then36.out_free_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool46.not = icmp eq i32 %call38, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.if.else68_crit_edge

if.end44.if.else68_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else68

if.then47:                                        ; preds = %if.end44
  %arrayidx48 = getelementptr inbounds [2 x ptr], ptr %leb, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %23, null
  br i1 %tobool49.not, label %if.then47.if.then59_crit_edge, label %if.then50

if.then47.if.then59_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then50:                                        ; preds = %if.then47
  %vtbl_size53 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 16
  %24 = ptrtoint ptr %vtbl_size53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vtbl_size53, align 8
  %bcmp = tail call i32 @bcmp(ptr nonnull %21, ptr nonnull %23, i32 %25) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %phi.cmp = icmp eq i32 %bcmp, 0
  br i1 %phi.cmp, label %if.then50.if.end65_crit_edge, label %if.then50.if.then59_crit_edge

if.then50.if.then59_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then50.if.end65_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then59:                                        ; preds = %if.then50.if.then59_crit_edge, %if.then47.if.then59_crit_edge
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.12) #10
  %call61 = tail call fastcc i32 @create_vtbl(ptr noundef %ubi, ptr noundef %ai, i32 noundef 1, ptr noundef nonnull %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then59.out_free_crit_edge

if.then59.out_free_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end64:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.13) #10
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then50.if.end65_crit_edge
  tail call void @vfree(ptr noundef %23) #10
  br label %cleanup

if.else68:                                        ; preds = %if.end44.if.else68_crit_edge, %for.end.if.else68_crit_edge
  %arrayidx69 = getelementptr inbounds [2 x ptr], ptr %leb, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx69, align 4
  %tobool70.not = icmp eq ptr %27, null
  br i1 %tobool70.not, label %if.else68.if.then82_crit_edge, label %if.then71

if.else68.if.then82_crit_edge:                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.then71:                                        ; preds = %if.else68
  %call73 = tail call fastcc i32 @vtbl_check(ptr noundef %ubi, ptr noundef nonnull %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp76 = icmp slt i32 %call73, 0
  br i1 %cmp76, label %if.then71.out_free_crit_edge, label %if.end79

if.then71.out_free_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end79:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool81.not = icmp eq i32 %call73, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.if.then82_crit_edge

if.end79.if.then82_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.then82:                                        ; preds = %if.end79.if.then82_crit_edge, %if.else68.if.then82_crit_edge
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.14) #10
  br label %out_free

if.end83:                                         ; preds = %if.end79
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.15) #10
  %call85 = tail call fastcc i32 @create_vtbl(ptr noundef %ubi, ptr noundef %ai, i32 noundef 0, ptr noundef nonnull %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.out_free_crit_edge

if.end83.out_free_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end88:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.13) #10
  tail call void @vfree(ptr noundef %21) #10
  br label %cleanup

out_free:                                         ; preds = %if.end83.out_free_crit_edge, %if.then82, %if.then71.out_free_crit_edge, %if.then59.out_free_crit_edge, %if.then36.out_free_crit_edge, %if.end13.out_free_crit_edge, %for.body.out_free_crit_edge
  %err.0 = phi i32 [ -22, %if.then36.out_free_crit_edge ], [ -22, %if.then71.out_free_crit_edge ], [ -22, %if.then82 ], [ %call85, %if.end83.out_free_crit_edge ], [ %call61, %if.then59.out_free_crit_edge ], [ %call6.i, %if.end13.out_free_crit_edge ], [ -12, %for.body.out_free_crit_edge ]
  %28 = ptrtoint ptr %leb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %leb, align 8
  tail call void @vfree(ptr noundef %29) #10
  %arrayidx92 = getelementptr inbounds [2 x ptr], ptr %leb, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx92, align 4
  tail call void @vfree(ptr noundef %31) #10
  %32 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end88, %if.end65
  %retval.0 = phi ptr [ %32, %out_free ], [ %27, %if.end88 ], [ %21, %if.end65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %leb) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_all_volumes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_atomic_leb_change(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_vtbl(ptr noundef %ubi, ptr noundef %ai, i32 noundef %copy, ptr noundef %vtbl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_vtbl.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_vtbl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #10
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
  %add = add i32 %copy, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_vtbl.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.7, i32 noundef %5, i32 noundef %add) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %7 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #15
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end7

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end.i
  %9 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vid_hdr_alsize.i, align 4
  %11 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %10)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %13 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %14
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %call984 = tail call ptr @ubi_early_get_peb(ptr noundef %ubi, ptr noundef %ai) #10
  %cmp.i85 = icmp ugt ptr %call984, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.end7.if.then11_crit_edge, label %if.end13.lr.ph

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.end13.lr.ph:                                   ; preds = %if.end7
  %vol_type = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %vol_id = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %compat = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %data_pad = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 10
  %used_ebs = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 9
  %data_size = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 8
  %lnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %max_sqnum = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 17
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 13
  %vtbl_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 16
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  br label %if.end13

if.then11:                                        ; preds = %list_add.exit.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %call9.lcssa = phi ptr [ %call984, %if.end7.if.then11_crit_edge ], [ %call9, %list_add.exit.if.then11_crit_edge ]
  %16 = ptrtoint ptr %call9.lcssa to i32
  br label %cleanup.sink.split.sink.split

if.end13:                                         ; preds = %list_add.exit.if.end13_crit_edge, %if.end13.lr.ph
  %call987 = phi ptr [ %call984, %if.end13.lr.ph ], [ %call9, %list_add.exit.if.end13_crit_edge ]
  %tries.086 = phi i32 [ 0, %if.end13.lr.ph ], [ %inc25, %list_add.exit.if.end13_crit_edge ]
  %17 = ptrtoint ptr %vol_type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %vol_type, align 1
  %18 = ptrtoint ptr %vol_id to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 2147479551, ptr %vol_id, align 1
  %19 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %compat, align 1
  %20 = ptrtoint ptr %data_pad to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %data_pad, align 1
  %21 = ptrtoint ptr %used_ebs to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %used_ebs, align 1
  %22 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %data_size, align 1
  %23 = ptrtoint ptr %lnum to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %copy, ptr %lnum, align 1
  %24 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %max_sqnum, align 8
  %inc = add i64 %25, 1
  store i64 %inc, ptr %max_sqnum, align 8
  %26 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %inc, ptr %sqnum, align 1
  %pnum = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call987, i32 0, i32 1
  %27 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pnum, align 4
  %call14 = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %ubi, i32 noundef %28, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.write_error_crit_edge

if.end13.write_error_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

if.end17:                                         ; preds = %if.end13
  %29 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pnum, align 4
  %31 = ptrtoint ptr %vtbl_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vtbl_size, align 8
  %33 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %leb_start.i, align 4
  %call6.i = tail call i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %vtbl, i32 noundef %30, i32 noundef %34, i32 noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool20.not = icmp eq i32 %call6.i, 0
  br i1 %tobool20.not, label %ubi_free_vid_buf.exit, label %if.end17.write_error_crit_edge

if.end17.write_error_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

ubi_free_vid_buf.exit:                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pnum, align 4
  %37 = ptrtoint ptr %call987 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call987, align 8
  %call24 = tail call i32 @ubi_add_to_av(ptr noundef %ubi, ptr noundef %ai, i32 noundef %36, i32 noundef %38, ptr noundef %add.ptr.i.i, i32 noundef 0) #10
  tail call void @ubi_free_aeb(ptr noundef %ai, ptr noundef %call987) #10
  br label %cleanup.sink.split.sink.split

write_error:                                      ; preds = %if.end17.write_error_crit_edge, %if.end13.write_error_crit_edge
  %err.0 = phi i32 [ %call14, %if.end13.write_error_crit_edge ], [ %call6.i, %if.end17.write_error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %err.0)
  %cmp = icmp eq i32 %err.0, -5
  br i1 %cmp, label %land.lhs.true, label %write_error.if.end28_crit_edge

write_error.if.end28_crit_edge:                   ; preds = %write_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %write_error
  %inc25 = add nuw nsw i32 %tries.086, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %tries.086)
  %exitcond.not = icmp eq i32 %tries.086, 5
  br i1 %exitcond.not, label %land.lhs.true.if.end28_crit_edge, label %if.then27

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  %u = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call987, i32 0, i32 6
  %39 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %erase, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %u, ptr noundef %erase, ptr noundef %40) #10
  br i1 %call.i.i, label %if.end.i.i71, label %if.then27.list_add.exit_crit_edge

if.then27.list_add.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i71:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %u, ptr %prev1.i.i, align 4
  %42 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %u, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubi_ainf_peb, ptr %call987, i32 0, i32 6, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %erase, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %erase to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %u, ptr %erase, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i71, %if.then27.list_add.exit_crit_edge
  %call9 = tail call ptr @ubi_early_get_peb(ptr noundef %ubi, ptr noundef %ai) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %list_add.exit.if.then11_crit_edge, label %list_add.exit.if.end13_crit_edge

list_add.exit.if.end13_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

list_add.exit.if.then11_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %write_error.if.end28_crit_edge
  tail call void @ubi_free_aeb(ptr noundef %ai, ptr noundef %call987) #10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end28, %ubi_free_vid_buf.exit, %if.then11
  %retval.0.ph.ph = phi i32 [ %call24, %ubi_free_vid_buf.exit ], [ %16, %if.then11 ], [ %err.0, %if.end28 ]
  %45 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %46) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_early_get_peb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_vid_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_add_to_av(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_aeb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vtbl_check(ptr noundef %ubi, ptr noundef %vtbl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %0 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp274 = icmp sgt i32 %1, 0
  br i1 %cmp274, label %for.body.lr.ph, label %entry.for.cond97.preheader_crit_edge

entry.for.cond97.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond97.preheader

for.body.lr.ph:                                   ; preds = %entry
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %good_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 63
  br label %for.body

for.cond97.preheader:                             ; preds = %for.inc.for.cond97.preheader_crit_edge, %entry.for.cond97.preheader_crit_edge
  %.lcssa249 = phi i32 [ %1, %entry.for.cond97.preheader_crit_edge ], [ %25, %for.inc.for.cond97.preheader_crit_edge ]
  %sub99 = add i32 %.lcssa249, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub99)
  %cmp100280 = icmp sgt i32 %sub99, 0
  br i1 %cmp100280, label %for.cond97.preheader.for.body102_crit_edge, label %for.cond97.preheader.cleanup143_crit_edge

for.cond97.preheader.cleanup143_crit_edge:        ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

for.cond97.preheader.for.body102_crit_edge:       ; preds = %for.cond97.preheader
  br label %for.body102

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0275 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %arrayidx = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %alignment3 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275, i32 1
  %4 = ptrtoint ptr %alignment3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %alignment3, align 1
  %data_pad5 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275, i32 2
  %6 = ptrtoint ptr %data_pad5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data_pad5, align 1
  %upd_marker7 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275, i32 4
  %8 = ptrtoint ptr %upd_marker7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %upd_marker7, align 1
  %vol_type9 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275, i32 3
  %10 = ptrtoint ptr %vol_type9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vol_type9, align 1
  %name_len12 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275, i32 5
  %12 = ptrtoint ptr %name_len12 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %name_len12, align 1
  %conv13 = zext i16 %13 to i32
  %name15 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275, i32 6
  %call18 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %arrayidx, i32 noundef 168) #14
  %crc20 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.0275, i32 9
  %14 = ptrtoint ptr %crc20 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %crc20, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call18)
  %cmp21.not = icmp eq i32 %15, %call18
  br i1 %cmp21.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.17, i32 noundef %i.0275, i32 noundef %call18, i32 noundef %15) #10
  tail call void @ubi_dump_vtbl_record(ptr noundef %arrayidx, i32 noundef %i.0275) #10
  br label %cleanup143

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26 = icmp eq i32 %3, 0
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(172) %arrayidx, ptr noundef nonnull dereferenceable(172) @empty_vtbl_record, i32 172) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then28.for.inc_crit_edge, label %if.then28.bad_crit_edge

if.then28.bad_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34 = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp36 = icmp slt i32 %5, 0
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39 = icmp slt i32 %7, 0
  %or.cond243 = select i1 %or.cond, i1 true, i1 %cmp39
  br i1 %or.cond243, label %if.end33.bad_crit_edge, label %if.end45

if.end33.bad_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end45:                                         ; preds = %if.end33
  %16 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %17)
  %cmp46 = icmp sgt i32 %5, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp49 = icmp eq i32 %5, 0
  %or.cond244 = or i1 %cmp49, %cmp46
  br i1 %or.cond244, label %if.end45.bad_crit_edge, label %if.end52

if.end45.bad_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp53.not = icmp eq i32 %5, 1
  br i1 %cmp53.not, label %if.end52.if.end57_crit_edge, label %land.lhs.true

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end52
  %18 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_io_size, align 4
  %sub = add i32 %19, -1
  %and = and i32 %sub, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %land.lhs.true.if.end57_crit_edge, label %land.lhs.true.bad_crit_edge

land.lhs.true.bad_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true.if.end57_crit_edge, %if.end52.if.end57_crit_edge
  %rem = srem i32 %17, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rem)
  %cmp59.not = icmp eq i32 %7, %rem
  br i1 %cmp59.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.18, i32 noundef %rem) #10
  br label %bad

if.end62:                                         ; preds = %if.end57
  %.off = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end69, label %if.end62.bad_crit_edge

if.end62.bad_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch245 = icmp ult i8 %9, 2
  br i1 %switch245, label %if.end76, label %if.end69.bad_crit_edge

if.end69.bad_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end76:                                         ; preds = %if.end69
  %20 = ptrtoint ptr %good_peb_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %good_peb_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %21)
  %cmp77 = icmp sgt i32 %3, %21
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %21) #10
  br label %bad

if.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %13)
  %cmp82 = icmp ugt i16 %13, 127
  br i1 %cmp82, label %if.end81.bad_crit_edge, label %if.end85

if.end81.bad_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end85:                                         ; preds = %if.end81
  %22 = ptrtoint ptr %name15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %name15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp88 = icmp eq i8 %23, 0
  br i1 %cmp88, label %if.end85.bad_crit_edge, label %if.end91

if.end85.bad_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end91:                                         ; preds = %if.end85
  %add = add nuw nsw i32 %conv13, 1
  %call92 = tail call i32 @strnlen(ptr noundef %name15, i32 noundef %add) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call92, i32 %conv13)
  %cmp93.not = icmp eq i32 %call92, %conv13
  br i1 %cmp93.not, label %if.end91.for.inc_crit_edge, label %if.end91.bad_crit_edge

if.end91.bad_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end91.for.inc_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end91.for.inc_crit_edge, %if.then28.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0275, 1
  %24 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vtbl_slots, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond97.preheader_crit_edge

for.inc.for.cond97.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond97.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond97.loopexit:                              ; preds = %for.inc136.for.cond97.loopexit_crit_edge, %for.body102.for.cond97.loopexit_crit_edge
  %exitcond310.not = icmp eq i32 %add103, %sub99
  br i1 %exitcond310.not, label %for.cond97.loopexit.cleanup143_crit_edge, label %for.cond97.loopexit.for.body102_crit_edge

for.cond97.loopexit.for.body102_crit_edge:        ; preds = %for.cond97.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body102

for.cond97.loopexit.cleanup143_crit_edge:         ; preds = %for.cond97.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

for.body102:                                      ; preds = %for.cond97.loopexit.for.body102_crit_edge, %for.cond97.preheader.for.body102_crit_edge
  %i.1281 = phi i32 [ %add103, %for.cond97.loopexit.for.body102_crit_edge ], [ 0, %for.cond97.preheader.for.body102_crit_edge ]
  %add103 = add nuw nsw i32 %i.1281, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add103, i32 %.lcssa249)
  %cmp106277 = icmp slt i32 %add103, %.lcssa249
  br i1 %cmp106277, label %for.body108.lr.ph, label %for.body102.for.cond97.loopexit_crit_edge

for.body102.for.cond97.loopexit_crit_edge:        ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond97.loopexit

for.body108.lr.ph:                                ; preds = %for.body102
  %name_len110 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.1281, i32 5
  %26 = ptrtoint ptr %name_len110 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %name_len110, align 1
  %conv111 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp115.not = icmp eq i16 %27, 0
  %name122 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.1281, i32 6
  br label %for.body108

for.body108:                                      ; preds = %for.inc136.for.body108_crit_edge, %for.body108.lr.ph
  %n.0278 = phi i32 [ %add103, %for.body108.lr.ph ], [ %inc137, %for.inc136.for.body108_crit_edge ]
  br i1 %cmp115.not, label %for.body108.for.inc136_crit_edge, label %land.lhs.true117

for.body108.for.inc136_crit_edge:                 ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136

land.lhs.true117:                                 ; preds = %for.body108
  %name_len113 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %n.0278, i32 5
  %28 = ptrtoint ptr %name_len113 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %name_len113, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp118 = icmp eq i16 %27, %29
  br i1 %cmp118, label %land.lhs.true120, label %land.lhs.true117.for.inc136_crit_edge

land.lhs.true117.for.inc136_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136

land.lhs.true120:                                 ; preds = %land.lhs.true117
  %name124 = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %n.0278, i32 6
  %call126 = tail call i32 @strncmp(ptr noundef %name122, ptr noundef %name124, i32 noundef %conv111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %land.lhs.true120.for.inc136_crit_edge

land.lhs.true120.for.inc136_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136

if.then128:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx109.le = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %i.1281
  %arrayidx112.le = getelementptr %struct.ubi_vtbl_record, ptr %vtbl, i32 %n.0278
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.20, i32 noundef %i.1281, i32 noundef %n.0278, ptr noundef %name122) #10
  tail call void @ubi_dump_vtbl_record(ptr noundef %arrayidx109.le, i32 noundef %i.1281) #10
  tail call void @ubi_dump_vtbl_record(ptr noundef %arrayidx112.le, i32 noundef %n.0278) #10
  br label %cleanup143

for.inc136:                                       ; preds = %land.lhs.true120.for.inc136_crit_edge, %land.lhs.true117.for.inc136_crit_edge, %for.body108.for.inc136_crit_edge
  %inc137 = add nuw i32 %n.0278, 1
  %exitcond.not = icmp eq i32 %inc137, %.lcssa249
  br i1 %exitcond.not, label %for.inc136.for.cond97.loopexit_crit_edge, label %for.inc136.for.body108_crit_edge

for.inc136.for.body108_crit_edge:                 ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body108

for.inc136.for.cond97.loopexit_crit_edge:         ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond97.loopexit

bad:                                              ; preds = %if.end91.bad_crit_edge, %if.end85.bad_crit_edge, %if.end81.bad_crit_edge, %if.then79, %if.end69.bad_crit_edge, %if.end62.bad_crit_edge, %if.then61, %land.lhs.true.bad_crit_edge, %if.end45.bad_crit_edge, %if.end33.bad_crit_edge, %if.then28.bad_crit_edge
  %err.0 = phi i32 [ 6, %if.then61 ], [ 9, %if.then79 ], [ 2, %if.then28.bad_crit_edge ], [ 3, %if.end33.bad_crit_edge ], [ 4, %if.end45.bad_crit_edge ], [ 5, %land.lhs.true.bad_crit_edge ], [ 10, %if.end81.bad_crit_edge ], [ 11, %if.end85.bad_crit_edge ], [ 12, %if.end91.bad_crit_edge ], [ 7, %if.end62.bad_crit_edge ], [ 8, %if.end69.bad_crit_edge ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.21, i32 noundef %i.0275, i32 noundef %err.0) #10
  tail call void @ubi_dump_vtbl_record(ptr noundef %arrayidx, i32 noundef %i.0275) #10
  br label %cleanup143

cleanup143:                                       ; preds = %bad, %if.then128, %for.cond97.loopexit.cleanup143_crit_edge, %if.then, %for.cond97.preheader.cleanup143_crit_edge
  %retval.3 = phi i32 [ 1, %if.then ], [ -22, %bad ], [ -22, %if.then128 ], [ 0, %for.cond97.preheader.cleanup143_crit_edge ], [ 0, %for.cond97.loopexit.cleanup143_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vtbl_record(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_fastmap_init_checkmap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_remove_av(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_av(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vol_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !72, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/vtbl.c", i32 96, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ubi_change_vtbl_record._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ubi_change_vtbl_record._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/vtbl.c", i32 816, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/ubi/vtbl.c", i32 822, i32 17}
!10 = !{ptr @empty_vtbl_record, !11, !"empty_vtbl_record", i1 false, i1 false}
!11 = !{!"../drivers/mtd/ubi/vtbl.c", i32 57, i32 31}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/ubi/vtbl.c", i32 293, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @create_vtbl.__UNIQUE_ID_ddebug230, !13, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/ubi/ubi.h", i32 1148, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ubi_io_write_data._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ubi_io_write_data._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/ubi/vtbl.c", i32 396, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @process_lvol.__UNIQUE_ID_ddebug231, !23, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/ubi/vtbl.c", i32 437, i32 18}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/ubi/vtbl.c", i32 441, i32 17}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ubi/vtbl.c", i32 456, i32 17}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/ubi/vtbl.c", i32 460, i32 17}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/ubi/ubi.h", i32 1136, i32 2}
!36 = !{ptr @ubi_io_read_data._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ubi_io_read_data._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/ubi/vtbl.c", i32 178, i32 17}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/ubi/vtbl.c", i32 212, i32 17}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/vtbl.c", i32 228, i32 17}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/ubi/vtbl.c", i32 258, i32 18}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ubi/vtbl.c", i32 270, i32 15}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/ubi/vtbl.c", i32 556, i32 18}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/ubi/vtbl.c", i32 565, i32 3}
!52 = !{ptr @init_volumes._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @init_volumes._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/ubi/vtbl.c", i32 612, i32 18}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/ubi/vtbl.c", i32 634, i32 20}
!58 = !{ptr @init_volumes._entry.26, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/mtd/ubi/vtbl.c", i32 643, i32 2}
!60 = !{ptr @init_volumes._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/ubi/vtbl.c", i32 653, i32 16}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/vtbl.c", i32 656, i32 17}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/ubi/vtbl.c", i32 726, i32 16}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/ubi/vtbl.c", i32 733, i32 16}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ubi/vtbl.c", i32 750, i32 4}
!71 = !{ptr @check_attaching_info._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @check_attaching_info._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/ubi/vtbl.c", i32 762, i32 17}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ubi/vtbl.c", i32 702, i32 20}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/ubi/vtbl.c", i32 868, i32 16}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2154205003, i64 2154205490, i64 2154205040, i64 2154205096, i64 2154205130, i64 2154205154, i64 2154205195, i64 2154205216, i64 2154205244, i64 2154205278}
!91 = !{i64 2148240503, i64 2148240508, i64 2148240521, i64 2148240565, i64 2148240599, i64 2148240620}
