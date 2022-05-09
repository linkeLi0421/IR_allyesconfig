; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/eba.c_pt.bc'
source_filename = "../drivers/mtd/ubi/eba.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8, ptr }
%struct.ubi_eba_entry = type { i32 }
%struct.ubi_eba_leb_desc = type { i32, i32 }
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
%struct.ubi_ltree_entry = type { %struct.rb_node, i32, i32, i32, %struct.rw_semaphore }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_sgl = type { i32, i32, [64 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }

@ubi_eba_copy_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubi_eba_copy_table\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/ubi/eba.c\00", [42 x i8] zeroinitializer }, align 32
@ubi_eba_copy_table._entry_ptr = internal global ptr @ubi_eba_copy_table._entry, section ".printk_index", align 4
@ubi_eba_unmap_leb.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_eba_unmap_leb\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBI DBG eba (pid %d): erase LEB %d:%d, PEB %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_eba_read_leb\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"UBI DBG eba (pid %d): read %d bytes from offset %d of LEB %d:%d (unmapped)\0A\00", [52 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb._entry_ptr = internal global ptr @ubi_eba_read_leb._entry, section ".printk_index", align 4
@ubi_eba_read_leb.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"UBI DBG eba (pid %d): read %d bytes from offset %d of LEB %d:%d, PEB %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"corrupted VID header at PEB %d, LEB %d:%d\00", [54 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb._entry_ptr.11 = internal global ptr @ubi_eba_read_leb._entry.10, section ".printk_index", align 4
@ubi_eba_read_leb._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb._entry_ptr.13 = internal global ptr @ubi_eba_read_leb._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"force data checking\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CRC error: calculated %#08x, must be %#08x\00", [53 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubi_eba_read_leb_sg\00", [44 x i8] zeroinitializer }, align 32
@ubi_eba_read_leb_sg._entry_ptr = internal global ptr @ubi_eba_read_leb_sg._entry, section ".printk_index", align 4
@ubi_eba_write_leb.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_eba_write_leb\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBI DBG eba (pid %d): write %d bytes at offset %d of LEB %d:%d, PEB %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write data to PEB %d\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"try another PEB\00", [16 x i8] zeroinitializer }, align 32
@ubi_eba_write_leb_st._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubi_eba_write_leb_st\00", [43 x i8] zeroinitializer }, align 32
@ubi_eba_write_leb_st._entry_ptr = internal global ptr @ubi_eba_write_leb_st._entry, section ".printk_index", align 4
@ubi_eba_write_leb_st._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_eba_write_leb_st._entry_ptr.23 = internal global ptr @ubi_eba_write_leb_st._entry.22, section ".printk_index", align 4
@ubi_eba_atomic_leb_change.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ubi_eba_atomic_leb_change\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UBI DBG eba (pid %d): change LEB %d:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_eba_copy_leb\00", [47 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb._entry_ptr = internal global ptr @ubi_eba_copy_leb._entry, section ".printk_index", align 4
@ubi_eba_copy_leb.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBI DBG wl (pid %d): copy LEB %d:%d, PEB %d to PEB %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBI DBG wl (pid %d): volume %d is being removed, cancel\0A\00", [39 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 1, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBI DBG wl (pid %d): contention on LEB %d:%d, cancel\0A\00", [42 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.30, i8 1, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"UBI DBG wl (pid %d): LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel\0A\00", [40 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str.2, ptr @.str.31, i8 1, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBI DBG wl (pid %d): read %d bytes of data\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d while reading data from PEB %d\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error %d while reading VID header back from PEB %d\00", [45 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_eba_copy_leb._entry_ptr.35 = internal global ptr @ubi_eba_copy_leb._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"LEB:%i:%i is PEB:%i instead of %i!\00", [61 x i8] zeroinitializer }, align 32
@self_check_eba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"self_check_eba\00", [17 x i8] zeroinitializer }, align 32
@self_check_eba._entry_ptr = internal global ptr @self_check_eba._entry, section ".printk_index", align 4
@ubi_eba_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubi_eba_init\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBI DBG eba (pid %d): initialize EBA sub-system\0A\00", [47 x i8] zeroinitializer }, align 32
@ubi_eba_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ubi->ltree_lock\00", [47 x i8] zeroinitializer }, align 32
@ubi_eba_init.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ubi->alc_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"no enough physical eraseblocks (%d, need %d)\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d PEBs are corrupted and not used\00", [61 x i8] zeroinitializer }, align 32
@ubi_eba_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.38, ptr @.str.2, ptr @.str.45, i8 1, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBI DBG eba (pid %d): EBA sub-system is initialized\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ltree_add_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&le->mutex\00", [21 x i8] zeroinitializer }, align 32
@ltree_add_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.47, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ltree_add_entry\00", [16 x i8] zeroinitializer }, align 32
@ltree_add_entry._entry_ptr = internal global ptr @ltree_add_entry._entry, section ".printk_index", align 4
@leb_write_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"leb_write_unlock\00", [47 x i8] zeroinitializer }, align 32
@leb_write_unlock._entry_ptr = internal global ptr @leb_write_unlock._entry, section ".printk_index", align 4
@check_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.49, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_mapping\00", [18 x i8] zeroinitializer }, align 32
@check_mapping._entry_ptr = internal global ptr @check_mapping._entry, section ".printk_index", align 4
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to read VID header back from PEB %i: %i\00", [49 x i8] zeroinitializer }, align 32
@check_mapping._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.49, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_mapping._entry_ptr.52 = internal global ptr @check_mapping._entry.51, section ".printk_index", align 4
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"EBA mismatch! PEB %i is LEB %i:%i instead of LEB %i:%i\00", [41 x i8] zeroinitializer }, align 32
@leb_read_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.54, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"leb_read_unlock\00", [16 x i8] zeroinitializer }, align 32
@leb_read_unlock._entry_ptr = internal global ptr @leb_read_unlock._entry, section ".printk_index", align 4
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"switch to read-only mode\00", [39 x i8] zeroinitializer }, align 32
@ubi_io_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.56, ptr @.str.57, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_io_read_data\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/ubi/ubi.h\00", [42 x i8] zeroinitializer }, align 32
@ubi_io_read_data._entry_ptr = internal global ptr @ubi_io_read_data._entry, section ".printk_index", align 4
@ubi_io_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.58, ptr @.str.57, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_io_write_data\00", [46 x i8] zeroinitializer }, align 32
@ubi_io_write_data._entry_ptr = internal global ptr @ubi_io_write_data._entry, section ".printk_index", align 4
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"try again\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"recover PEB %d, move data to PEB %d\00", [60 x i8] zeroinitializer }, align 32
@try_recover_peb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.61, ptr @.str.2, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"try_recover_peb\00", [16 x i8] zeroinitializer }, align 32
@try_recover_peb._entry_ptr = internal global ptr @try_recover_peb._entry, section ".printk_index", align 4
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"data was successfully recovered\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to write to PEB %d\00", [38 x i8] zeroinitializer }, align 32
@try_write_vid_and_data.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"try_write_vid_and_data\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"UBI DBG eba (pid %d): write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to write VID header to LEB %d:%d, PEB %d\00", [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to write %d bytes at offset %d of LEB %d:%d, PEB %d\00", [37 x i8] zeroinitializer }, align 32
@leb_write_trylock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.68, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"leb_write_trylock\00", [46 x i8] zeroinitializer }, align 32
@leb_write_trylock._entry_ptr = internal global ptr @leb_write_trylock._entry, section ".printk_index", align 4
@.str.69 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"cannot reserve enough PEBs for bad PEB handling, reserved %d, need %d\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 4294967222]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 4294967186, i64 4294967284, i64 4294967291]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 179, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 467, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 620, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 623, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 628, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 657, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 686, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 687, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 702, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 713, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 756, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1029, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1034, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1074, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1125, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1149, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1233, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1309, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1314, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1335, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1356, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1366, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1379, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1382, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1432, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1452, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1580, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1583, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1618, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1620, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1621, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1665, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1668, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1690, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 259, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 292, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 419, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 525, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 538, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 545, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 552, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 343, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1160, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1136, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [25 x i8] c"../drivers/mtd/ubi/ubi.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1148, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 921, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 823, i32 15 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 834, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 873, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 880, i32 17 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 959, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 964, i32 17 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 973, i32 6 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 396, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [25 x i8] c"../drivers/mtd/ubi/eba.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1497, i32 16 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @check_mapping._entry, ptr @check_mapping._entry.51, ptr @check_mapping._entry_ptr, ptr @check_mapping._entry_ptr.52, ptr @leb_read_unlock._entry, ptr @leb_read_unlock._entry_ptr, ptr @leb_write_trylock._entry, ptr @leb_write_trylock._entry_ptr, ptr @leb_write_unlock._entry, ptr @leb_write_unlock._entry_ptr, ptr @ltree_add_entry._entry, ptr @ltree_add_entry._entry_ptr, ptr @self_check_eba._entry, ptr @self_check_eba._entry_ptr, ptr @try_recover_peb._entry, ptr @try_recover_peb._entry_ptr, ptr @ubi_eba_copy_leb._entry, ptr @ubi_eba_copy_leb._entry.34, ptr @ubi_eba_copy_leb._entry_ptr, ptr @ubi_eba_copy_leb._entry_ptr.35, ptr @ubi_eba_copy_table._entry, ptr @ubi_eba_copy_table._entry_ptr, ptr @ubi_eba_read_leb._entry, ptr @ubi_eba_read_leb._entry.10, ptr @ubi_eba_read_leb._entry.12, ptr @ubi_eba_read_leb._entry_ptr, ptr @ubi_eba_read_leb._entry_ptr.11, ptr @ubi_eba_read_leb._entry_ptr.13, ptr @ubi_eba_read_leb_sg._entry, ptr @ubi_eba_read_leb_sg._entry_ptr, ptr @ubi_eba_write_leb_st._entry, ptr @ubi_eba_write_leb_st._entry.22, ptr @ubi_eba_write_leb_st._entry_ptr, ptr @ubi_eba_write_leb_st._entry_ptr.23, ptr @ubi_io_read_data._entry, ptr @ubi_io_read_data._entry_ptr, ptr @ubi_io_write_data._entry, ptr @ubi_io_write_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ubi_eba_init.__key, ptr @.str.40, ptr @ubi_eba_init.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @ltree_add_entry.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_copy_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_read_leb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_read_leb._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_read_leb._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_read_leb_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_write_leb_st._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_write_leb_st._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_copy_leb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_copy_leb._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @self_check_eba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_eba_init.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltree_add_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltree_add_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leb_write_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_mapping._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leb_read_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_io_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_recover_peb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leb_write_trylock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ubi_next_sqnum(ptr noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ltree_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock) #12
  %global_sqnum = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 21
  %0 = ptrtoint ptr %global_sqnum to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %global_sqnum, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %global_sqnum, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock) #12
  ret i64 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ubi_eba_get_ldesc(ptr nocapture noundef readonly %vol, i32 noundef %lnum, ptr nocapture noundef writeonly %ldesc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ldesc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %lnum, ptr %ldesc, align 4
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %1 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eba_tbl, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %4, i32 %lnum
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %pnum2 = getelementptr inbounds %struct.ubi_eba_leb_desc, ptr %ldesc, i32 0, i32 1
  %7 = ptrtoint ptr %pnum2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pnum2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubi_eba_create_table(ptr nocapture readnone %vol, i32 noundef %nentries) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nentries, i32 4) #12
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !178

kmalloc_array.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  br label %err8

if.end7.i:                                        ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #16
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call8.i, null
  br i1 %tobool4.not, label %if.end7.i.err8_crit_edge, label %for.cond.preheader

if.end7.i.err8_crit_edge:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err8

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nentries)
  %cmp23.not = icmp eq i32 %nentries, 0
  br i1 %cmp23.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %7, i32 %i.024
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %nentries
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err8:                                             ; preds = %if.end7.i.err8_crit_edge, %kmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err8, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err8 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call7.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_eba_destroy_table(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tbl, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  tail call void @kfree(ptr noundef %1) #12
  tail call void @kfree(ptr noundef nonnull %tbl) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_eba_copy_table(ptr noundef readonly %vol, ptr noundef readonly %dst, i32 noundef %nentries) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dst, null
  %tobool1.not = icmp eq ptr %vol, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.do.end_crit_edge, label %land.rhs, !prof !179

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs:                                         ; preds = %entry
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %0 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eba_tbl, align 4
  %tobool2 = icmp eq ptr %1, null
  br i1 %tobool2, label %land.rhs.do.end_crit_edge, label %land.rhs.do.end9_crit_edge, !prof !178

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef %7) #17
  tail call void @dump_stack() #17
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.rhs.do.end9_crit_edge
  %eba_tbl10 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %8 = ptrtoint ptr %eba_tbl10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eba_tbl10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nentries)
  %cmp20 = icmp sgt i32 %nentries, 0
  br i1 %cmp20, label %do.end9.for.body_crit_edge, label %do.end9.for.end_crit_edge

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end9.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end9.for.body_crit_edge ]
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %11, i32 %i.021
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst, align 4
  %arrayidx12 = getelementptr %struct.ubi_eba_entry, ptr %15, i32 %i.021
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %arrayidx12, align 4
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %nentries
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end9.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_eba_replace_table(ptr nocapture noundef %vol, ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %0 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eba_tbl, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ubi_eba_destroy_table.exit_crit_edge, label %if.end.i

entry.ubi_eba_destroy_table.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_eba_destroy_table.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %ubi_eba_destroy_table.exit

ubi_eba_destroy_table.exit:                       ; preds = %if.end.i, %entry.ubi_eba_destroy_table.exit_crit_edge
  %4 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tbl, ptr %eba_tbl, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ubi_eba_is_mapped(ptr nocapture noundef readonly %vol, i32 noundef %lnum) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %0 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eba_tbl, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %3, i32 %lnum
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_unmap_leb(ptr noundef %ubi, ptr nocapture noundef readonly %vol, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_id1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %0 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_id1, align 4
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %2 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @ltree_add_entry(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %leb_write_lock.exit, label %leb_write_lock.exit.thread

leb_write_lock.exit.thread:                       ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call.i, i32 0, i32 4
  tail call void @down_write(ptr noundef %mutex.i) #12
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %4 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eba_tbl, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %7, i32 %lnum
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %leb_write_lock.exit.thread.out_unlock_crit_edge, label %do.body

leb_write_lock.exit.thread.out_unlock_crit_edge:  ; preds = %leb_write_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

leb_write_lock.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.body:                                          ; preds = %leb_write_lock.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_unmap_leb.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_unmap_leb, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !180

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_unmap_leb.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.5, i32 noundef %16, i32 noundef %1, i32 noundef %lnum, i32 noundef %9) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 29
  tail call void @down_read(ptr noundef %fm_eba_sem) #12
  %17 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eba_tbl, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %arrayidx17 = getelementptr %struct.ubi_eba_entry, ptr %20, i32 %lnum
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %arrayidx17, align 4
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  %call20 = tail call i32 @ubi_wl_put_peb(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum, i32 noundef %9, i32 noundef 0) #12
  br label %out_unlock

out_unlock:                                       ; preds = %do.end, %leb_write_lock.exit.thread.out_unlock_crit_edge
  %err.0 = phi i32 [ 0, %leb_write_lock.exit.thread.out_unlock_crit_edge ], [ %call20, %do.end ]
  tail call fastcc void @leb_write_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %leb_write_lock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -30, %entry.cleanup_crit_edge ], [ %10, %leb_write_lock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_put_peb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @leb_write_unlock(ptr noundef %ubi, i32 noundef %vol_id, i32 noundef %lnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ltree_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock) #12
  %ltree.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 23
  %0 = ptrtoint ptr %ltree.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.035.i = load ptr, ptr %ltree.i, align 4
  %tobool.not36.i = icmp eq ptr %p.035.i, null
  br i1 %tobool.not36.i, label %entry.ltree_lookup.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.ltree_lookup.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ltree_lookup.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %p.037.i = phi ptr [ %p.0.i, %cleanup.i.while.body.i_crit_edge ], [ %p.035.i, %entry.while.body.i_crit_edge ]
  %vol_id1.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.037.i, i32 0, i32 1
  %1 = ptrtoint ptr %vol_id1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vol_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %vol_id)
  %cmp.i = icmp sgt i32 %2, %vol_id
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %vol_id)
  %cmp3.i = icmp slt i32 %2, %vol_id
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 1
  br label %cleanup.i

if.else5.i:                                       ; preds = %if.else.i
  %lnum6.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.037.i, i32 0, i32 2
  %3 = ptrtoint ptr %lnum6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lnum6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %lnum)
  %cmp7.i = icmp sgt i32 %4, %lnum
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 2
  br label %cleanup.i

if.else10.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %lnum)
  %cmp12.i = icmp slt i32 %4, %lnum
  br i1 %cmp12.i, label %if.then13.i, label %if.else10.i.ltree_lookup.exit_crit_edge

if.else10.i.ltree_lookup.exit_crit_edge:          ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ltree_lookup.exit

if.then13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right14.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then13.i, %if.then8.i, %if.then4.i, %if.then.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ], [ %rb_left9.i, %if.then8.i ], [ %rb_right14.i, %if.then13.i ]
  %5 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.ltree_lookup.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.ltree_lookup.exit_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ltree_lookup.exit

ltree_lookup.exit:                                ; preds = %cleanup.i.ltree_lookup.exit_crit_edge, %if.else10.i.ltree_lookup.exit_crit_edge, %entry.ltree_lookup.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ null, %entry.ltree_lookup.exit_crit_edge ], [ null, %cleanup.i.ltree_lookup.exit_crit_edge ], [ %p.037.i, %if.else10.i.ltree_lookup.exit_crit_edge ]
  %users = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.0.lcssa.i, i32 0, i32 3
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 4
  %sub = add i32 %7, -1
  store i32 %sub, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %ltree_lookup.exit.do.end8_crit_edge, !prof !178

ltree_lookup.exit.do.end8_crit_edge:              ; preds = %ltree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %ltree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48, i32 noundef 419, i32 noundef %13) #17
  tail call void @dump_stack() #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %ltree_lookup.exit.do.end8_crit_edge
  %mutex = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.0.lcssa.i, i32 0, i32 4
  tail call void @up_write(ptr noundef %mutex) #12
  %14 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %do.end8.if.end12_crit_edge

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rb_erase(ptr noundef %p.0.lcssa.i, ptr noundef %ltree.i) #12
  tail call void @kfree(ptr noundef %p.0.lcssa.i) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_read_leb(ptr noundef %ubi, ptr nocapture noundef readonly %vol, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offset, i32 noundef %len, i32 noundef %check) local_unnamed_addr #0 align 64 {
entry:
  %pnum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pnum) #12
  %vol_id1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %0 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_id1, align 4
  %call.i = tail call fastcc ptr @ltree_add_entry(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %leb_read_lock.exit, label %leb_read_lock.exit.thread

leb_read_lock.exit.thread:                        ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call.i, i32 0, i32 4
  tail call void @down_read(ptr noundef %mutex.i) #12
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %2 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eba_tbl, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %5, i32 %lnum
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %pnum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %if.then3, label %leb_read_lock.exit.thread.if.end8_crit_edge

leb_read_lock.exit.thread.if.end8_crit_edge:      ; preds = %leb_read_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

leb_read_lock.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call.i to i32
  br label %cleanup167

if.then3:                                         ; preds = %leb_read_lock.exit.thread
  %call4 = call fastcc i32 @check_mapping(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %pnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.out_unlock_crit_edge, label %if.end8thread-pre-split

if.then3.out_unlock_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end8thread-pre-split:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %pnum, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8thread-pre-split, %leb_read_lock.exit.thread.if.end8_crit_edge
  %11 = phi i32 [ %.pr, %if.end8thread-pre-split ], [ %7, %leb_read_lock.exit.thread.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp9 = icmp eq i32 %11, -1
  br i1 %cmp9, label %do.body, label %do.body41

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_read_leb.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_read_leb, %if.then15)) #12
          to label %do.end [label %if.then15], !srcloc !180

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_read_leb.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.7, i32 noundef %17, i32 noundef %len, i32 noundef %offset, i32 noundef %1, i32 noundef %lnum) #12
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  tail call fastcc void @leb_read_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 10
  %18 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp19.not = icmp eq i32 %19, 4
  br i1 %cmp19.not, label %do.end31, label %do.end.do.end39_crit_edge, !prof !178

do.end.do.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i245 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i245 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task34, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid35, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 623, i32 noundef %25) #17
  tail call void @dump_stack() #17
  br label %do.end39

do.end39:                                         ; preds = %do.end31, %do.end.do.end39_crit_edge
  %26 = call ptr @memset(ptr %buf, i32 255, i32 %len)
  br label %cleanup167

do.body41:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_read_leb.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_read_leb, %if.then53)) #12
          to label %do.end59 [label %if.then53], !srcloc !180

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i246 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i246 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid56, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_read_leb.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.8, i32 noundef %32, i32 noundef %len, i32 noundef %offset, i32 noundef %1, i32 noundef %lnum, i32 noundef %11) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body41
  %vol_type60 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 10
  %33 = ptrtoint ptr %vol_type60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vol_type60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp61 = icmp eq i32 %34, 3
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp.i = icmp slt i32 %offset, 0
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check)
  %phi.cmp314 = icmp eq i32 %check, 0
  %phi.cmp = or i1 %cmp61, %phi.cmp314
  br label %retry

retry:                                            ; preds = %if.then150, %do.end59
  %crc.0 = phi i32 [ %crc.1, %if.then150 ], [ -1, %do.end59 ]
  %scrub.0 = phi i32 [ 1, %if.then150 ], [ 0, %do.end59 ]
  %check.addr.1 = phi i1 [ false, %if.then150 ], [ %phi.cmp, %do.end59 ]
  br i1 %check.addr.1, label %retry.if.end135_crit_edge, label %if.then65

retry.if.end135_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then65:                                        ; preds = %retry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3392, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then65.out_unlock_crit_edge, label %if.end8.i.i

if.then65.out_unlock_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end8.i.i:                                      ; preds = %if.then65
  %36 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3136) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end69

if.then3.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %out_unlock

if.end69:                                         ; preds = %if.end8.i.i
  %38 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vid_hdr_alsize.i, align 4
  %40 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %39)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %42 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %43
  %44 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %45 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pnum, align 4
  %call71 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %46, ptr noundef nonnull %call7.i.i.i, i32 noundef 1) #12
  %47 = zext i32 %call71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call71, label %if.then74 [
    i32 5, label %if.then88
    i32 0, label %if.end69.do.body91_crit_edge
  ]

if.end69.do.body91_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp75 = icmp sgt i32 %call71, 0
  br i1 %cmp75, label %if.then76, label %if.then74.ubi_free_vid_buf.exit258_crit_edge

if.then74.ubi_free_vid_buf.exit258_crit_edge:     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit258

if.then76:                                        ; preds = %if.then74
  %call71.off = add nsw i32 %call71, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call71.off)
  %switch240 = icmp ult i32 %call71.off, 2
  br i1 %switch240, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.9, i32 noundef %46, i32 noundef %1, i32 noundef %lnum) #12
  br label %ubi_free_vid_buf.exit258

if.else:                                          ; preds = %if.then76
  %fast_attach = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 35
  %48 = ptrtoint ptr %fast_attach to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fast_attach, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool80.not = icmp eq i32 %49, 0
  br i1 %tobool80.not, label %if.else82, label %if.else.ubi_free_vid_buf.exit258_crit_edge

if.else.ubi_free_vid_buf.exit258_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit258

if.else82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ubi_ro_mode(ptr noundef %ubi)
  br label %ubi_free_vid_buf.exit258

if.then88:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91

do.body91:                                        ; preds = %if.then88, %if.end69.do.body91_crit_edge
  %scrub.1 = phi i32 [ 1, %if.then88 ], [ %scrub.0, %if.end69.do.body91_crit_edge ]
  %used_ebs = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %used_ebs to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %used_ebs, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %lnum)
  %cmp92.not = icmp ugt i32 %51, %lnum
  br i1 %cmp92.not, label %do.body91.do.body113_crit_edge, label %do.end104, !prof !181

do.body91.do.body113_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body113

do.end104:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  %52 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i250 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i250 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task107, align 8
  %pid108 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid108 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid108, align 8
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 686, i32 noundef %57) #17
  tail call void @dump_stack() #17
  br label %do.body113

do.body113:                                       ; preds = %do.end104, %do.body91.do.body113_crit_edge
  %data_size = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %data_size, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %len)
  %cmp114.not = icmp eq i32 %59, %len
  br i1 %cmp114.not, label %do.body113.ubi_free_vid_buf.exit_crit_edge, label %do.end126, !prof !181

do.body113.ubi_free_vid_buf.exit_crit_edge:       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

do.end126:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #14
  %60 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i251 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i251 to ptr
  %task129 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task129, align 8
  %pid130 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid130 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid130, align 8
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 687, i32 noundef %65) #17
  tail call void @dump_stack() #17
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %do.end126, %do.body113.ubi_free_vid_buf.exit_crit_edge
  %data_crc = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 11
  %66 = ptrtoint ptr %data_crc to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %data_crc, align 1
  %68 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %69) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end135

if.end135:                                        ; preds = %ubi_free_vid_buf.exit, %retry.if.end135_crit_edge
  %crc.1 = phi i32 [ %67, %ubi_free_vid_buf.exit ], [ %crc.0, %retry.if.end135_crit_edge ]
  %scrub.2 = phi i32 [ %scrub.1, %ubi_free_vid_buf.exit ], [ %scrub.0, %retry.if.end135_crit_edge ]
  %70 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pnum, align 4
  br i1 %cmp.i, label %do.end.i, label %if.end135.ubi_io_read_data.exit_crit_edge, !prof !178

if.end135.ubi_io_read_data.exit_crit_edge:        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_io_read_data.exit

do.end.i:                                         ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  %72 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid.i, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, i32 noundef 1136, i32 noundef %77) #17
  tail call void @dump_stack() #17
  br label %ubi_io_read_data.exit

ubi_io_read_data.exit:                            ; preds = %do.end.i, %if.end135.ubi_io_read_data.exit_crit_edge
  %78 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %leb_start.i, align 4
  %add.i = add i32 %79, %offset
  %call6.i = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %buf, i32 noundef %71, i32 noundef %add.i, i32 noundef %len) #12
  %80 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call6.i, label %ubi_io_read_data.exit.out_unlock_crit_edge [
    i32 0, label %if.end155.loopexit
    i32 5, label %ubi_io_read_data.exit.if.end155_crit_edge
    i32 -74, label %if.then144
  ]

ubi_io_read_data.exit.if.end155_crit_edge:        ; preds = %ubi_io_read_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

ubi_io_read_data.exit.out_unlock_crit_edge:       ; preds = %ubi_io_read_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then144:                                       ; preds = %ubi_io_read_data.exit
  %81 = ptrtoint ptr %vol_type60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vol_type60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp146 = icmp eq i32 %82, 3
  br i1 %cmp146, label %if.then144.out_unlock_crit_edge, label %if.end148

if.then144.out_unlock_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end148:                                        ; preds = %if.then144
  br i1 %check.addr.1, label %if.then150, label %if.end148.if.then157_crit_edge

if.end148.if.then157_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then157

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.14) #12
  br label %retry

if.end155.loopexit:                               ; preds = %ubi_io_read_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.end155:                                        ; preds = %if.end155.loopexit, %ubi_io_read_data.exit.if.end155_crit_edge
  %scrub.3 = phi i32 [ %scrub.2, %if.end155.loopexit ], [ 1, %ubi_io_read_data.exit.if.end155_crit_edge ]
  br i1 %check.addr.1, label %if.end155.if.end162_crit_edge, label %if.end155.if.then157_crit_edge

if.end155.if.then157_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then157

if.end155.if.end162_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then157:                                       ; preds = %if.end155.if.then157_crit_edge, %if.end148.if.then157_crit_edge
  %scrub.3266 = phi i32 [ %scrub.3, %if.end155.if.then157_crit_edge ], [ 1, %if.end148.if.then157_crit_edge ]
  %call158 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %buf, i32 noundef %len) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call158, i32 %crc.1)
  %cmp159.not = icmp eq i32 %call158, %crc.1
  br i1 %cmp159.not, label %if.then157.if.end162_crit_edge, label %cleanup

if.then157.if.end162_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

cleanup:                                          ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.15, i32 noundef %call158, i32 noundef %crc.1) #12
  br label %out_unlock

if.end162:                                        ; preds = %if.then157.if.end162_crit_edge, %if.end155.if.end162_crit_edge
  %scrub.3267 = phi i32 [ %scrub.3, %if.end155.if.end162_crit_edge ], [ %scrub.3266, %if.then157.if.end162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scrub.3267)
  %tobool163.not = icmp eq i32 %scrub.3267, 0
  br i1 %tobool163.not, label %if.end162.if.end166_crit_edge, label %if.then164

if.end162.if.end166_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then164:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  %call165 = tail call i32 @ubi_wl_scrub_peb(ptr noundef %ubi, i32 noundef %71) #12
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.end162.if.end166_crit_edge
  %err.2 = phi i32 [ %call165, %if.then164 ], [ %call6.i, %if.end162.if.end166_crit_edge ]
  tail call fastcc void @leb_read_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  br label %cleanup167

ubi_free_vid_buf.exit258:                         ; preds = %if.else82, %if.else.ubi_free_vid_buf.exit258_crit_edge, %if.then79, %if.then74.ubi_free_vid_buf.exit258_crit_edge
  %err.3 = phi i32 [ -74, %if.then79 ], [ -22, %if.else82 ], [ %call71, %if.then74.ubi_free_vid_buf.exit258_crit_edge ], [ -74, %if.else.ubi_free_vid_buf.exit258_crit_edge ]
  %83 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %84) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %out_unlock

out_unlock:                                       ; preds = %ubi_free_vid_buf.exit258, %cleanup, %if.then144.out_unlock_crit_edge, %ubi_io_read_data.exit.out_unlock_crit_edge, %if.then3.i, %if.then65.out_unlock_crit_edge, %if.then3.out_unlock_crit_edge
  %err.4 = phi i32 [ %call4, %if.then3.out_unlock_crit_edge ], [ %err.3, %ubi_free_vid_buf.exit258 ], [ -74, %cleanup ], [ -12, %if.then3.i ], [ %call6.i, %ubi_io_read_data.exit.out_unlock_crit_edge ], [ -12, %if.then65.out_unlock_crit_edge ], [ -74, %if.then144.out_unlock_crit_edge ]
  tail call fastcc void @leb_read_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  br label %cleanup167

cleanup167:                                       ; preds = %out_unlock, %if.end166, %do.end39, %leb_read_lock.exit
  %retval.0 = phi i32 [ %err.4, %out_unlock ], [ 0, %do.end39 ], [ %err.2, %if.end166 ], [ %9, %leb_read_lock.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pnum) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_mapping(ptr noundef %ubi, ptr nocapture noundef readonly %vol, i32 noundef %lnum, ptr nocapture noundef %pnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fast_attach = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 35
  %0 = ptrtoint ptr %fast_attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fast_attach, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.end:                                           ; preds = %entry
  %checkmap = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 26
  %2 = ptrtoint ptr %checkmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %checkmap, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup61_crit_edge, label %lor.lhs.false

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

lor.lhs.false:                                    ; preds = %if.end
  %div3.i = lshr i32 %lnum, 5
  %arrayidx.i = getelementptr i32, ptr %3, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %lnum, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup61_crit_edge

lor.lhs.false.cleanup61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.end5:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3392, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end5.cleanup61_crit_edge, label %if.end.i

if.end5.cleanup61_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.end.i:                                         ; preds = %if.end5
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %9 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3136) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup61.sink.split_crit_edge, label %if.end9

if.end.i.cleanup61.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61.sink.split

if.end9:                                          ; preds = %if.end.i
  %11 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vid_hdr_alsize.i, align 4
  %13 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %12)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %15 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %16
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %18 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pnum, align 4
  %call10 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %19, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp = icmp slt i32 %call10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 5
  %or.cond = or i1 %cmp, %cmp11.not
  br i1 %or.cond, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call10.off = add nsw i32 %call10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call10.off)
  %switch = icmp ult i32 %call10.off, 4
  br i1 %switch, label %if.then12.sw.epilog_crit_edge, label %do.end

if.then12.sw.epilog_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i102 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i102 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.49, i32 noundef 525, i32 noundef %25) #17
  tail call void @dump_stack() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then12.sw.epilog_crit_edge
  %26 = add nsw i32 %call10, -2
  %switch.and = and i32 %26, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %27 = zext i1 %switch.selectcmp to i32
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 29
  tail call void @down_read(ptr noundef %fm_eba_sem) #12
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %28 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %eba_tbl, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %31, i32 %lnum
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %arrayidx, align 4
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %33 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vol_id, align 4
  %35 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pnum, align 4
  %call25 = tail call i32 @ubi_wl_put_peb(ptr noundef %ubi, i32 noundef %34, i32 noundef %lnum, i32 noundef %36, i32 noundef %27) #12
  %37 = ptrtoint ptr %pnum to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %pnum, align 4
  br label %if.end59

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp26 = icmp slt i32 %call10, 0
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pnum, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.50, i32 noundef %39, i32 noundef %call10) #12
  br label %ubi_free_vid_buf.exit

if.else28:                                        ; preds = %if.else
  %40 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call10, label %do.end38 [
    i32 5, label %if.else28.do.end46_crit_edge
    i32 0, label %if.else28.do.end46_crit_edge114
  ]

if.else28.do.end46_crit_edge114:                  ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

if.else28.do.end46_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

do.end38:                                         ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  %41 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i103 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i103 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task41, align 8
  %pid42 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid42, align 8
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.49, i32 noundef 545, i32 noundef %46) #17
  tail call void @dump_stack() #17
  br label %do.end46

do.end46:                                         ; preds = %do.end38, %if.else28.do.end46_crit_edge, %if.else28.do.end46_crit_edge114
  %47 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i.i, align 8
  %vol_id48 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %vol_id48 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %vol_id48, align 1
  %lnum49 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %48, i32 0, i32 6
  %51 = ptrtoint ptr %lnum49 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %lnum49, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %lnum)
  %cmp50.not = icmp eq i32 %52, %lnum
  br i1 %cmp50.not, label %lor.lhs.false51, label %do.end46.if.then54_crit_edge

do.end46.if.then54_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

lor.lhs.false51:                                  ; preds = %do.end46
  %vol_id52 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %53 = ptrtoint ptr %vol_id52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vol_id52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %54)
  %cmp53.not = icmp eq i32 %50, %54
  br i1 %cmp53.not, label %lor.lhs.false51.if.end59_crit_edge, label %lor.lhs.false51.if.then54_crit_edge

lor.lhs.false51.if.then54_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

lor.lhs.false51.if.end59_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then54:                                        ; preds = %lor.lhs.false51.if.then54_crit_edge, %do.end46.if.then54_crit_edge
  %55 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pnum, align 4
  %vol_id55 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %57 = ptrtoint ptr %vol_id55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vol_id55, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.53, i32 noundef %56, i32 noundef %50, i32 noundef %52, i32 noundef %58, i32 noundef %lnum) #12
  %ro_mode.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %59 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i104 = icmp eq i32 %60, 0
  br i1 %tobool.not.i104, label %if.then.i, label %if.then54.ubi_free_vid_buf.exit_crit_edge

if.then54.ubi_free_vid_buf.exit_crit_edge:        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

if.then.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %ro_mode.i, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.55) #12
  tail call void @dump_stack() #17
  br label %ubi_free_vid_buf.exit

if.end59:                                         ; preds = %lor.lhs.false51.if.end59_crit_edge, %sw.epilog
  %62 = ptrtoint ptr %checkmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %checkmap, align 4
  tail call void @_set_bit(i32 noundef %lnum, ptr noundef %63) #12
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.end59, %if.then.i, %if.then54.ubi_free_vid_buf.exit_crit_edge, %if.then27
  %err.1 = phi i32 [ 0, %if.end59 ], [ %call10, %if.then27 ], [ -22, %if.then54.ubi_free_vid_buf.exit_crit_edge ], [ -22, %if.then.i ]
  %64 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %65) #12
  br label %cleanup61.sink.split

cleanup61.sink.split:                             ; preds = %ubi_free_vid_buf.exit, %if.end.i.cleanup61.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.1, %ubi_free_vid_buf.exit ], [ -12, %if.end.i.cleanup61.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup61.sink.split, %if.end5.cleanup61_crit_edge, %lor.lhs.false.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup61_crit_edge ], [ 0, %lor.lhs.false.cleanup61_crit_edge ], [ 0, %if.end.cleanup61_crit_edge ], [ -12, %if.end5.cleanup61_crit_edge ], [ %retval.0.ph, %cleanup61.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @leb_read_unlock(ptr noundef %ubi, i32 noundef %vol_id, i32 noundef %lnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ltree_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock) #12
  %ltree.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 23
  %0 = ptrtoint ptr %ltree.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.035.i = load ptr, ptr %ltree.i, align 4
  %tobool.not36.i = icmp eq ptr %p.035.i, null
  br i1 %tobool.not36.i, label %entry.ltree_lookup.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.ltree_lookup.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ltree_lookup.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %p.037.i = phi ptr [ %p.0.i, %cleanup.i.while.body.i_crit_edge ], [ %p.035.i, %entry.while.body.i_crit_edge ]
  %vol_id1.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.037.i, i32 0, i32 1
  %1 = ptrtoint ptr %vol_id1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vol_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %vol_id)
  %cmp.i = icmp sgt i32 %2, %vol_id
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %vol_id)
  %cmp3.i = icmp slt i32 %2, %vol_id
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 1
  br label %cleanup.i

if.else5.i:                                       ; preds = %if.else.i
  %lnum6.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.037.i, i32 0, i32 2
  %3 = ptrtoint ptr %lnum6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lnum6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %lnum)
  %cmp7.i = icmp sgt i32 %4, %lnum
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 2
  br label %cleanup.i

if.else10.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %lnum)
  %cmp12.i = icmp slt i32 %4, %lnum
  br i1 %cmp12.i, label %if.then13.i, label %if.else10.i.ltree_lookup.exit_crit_edge

if.else10.i.ltree_lookup.exit_crit_edge:          ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ltree_lookup.exit

if.then13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right14.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then13.i, %if.then8.i, %if.then4.i, %if.then.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ], [ %rb_left9.i, %if.then8.i ], [ %rb_right14.i, %if.then13.i ]
  %5 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.ltree_lookup.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.ltree_lookup.exit_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ltree_lookup.exit

ltree_lookup.exit:                                ; preds = %cleanup.i.ltree_lookup.exit_crit_edge, %if.else10.i.ltree_lookup.exit_crit_edge, %entry.ltree_lookup.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ null, %entry.ltree_lookup.exit_crit_edge ], [ null, %cleanup.i.ltree_lookup.exit_crit_edge ], [ %p.037.i, %if.else10.i.ltree_lookup.exit_crit_edge ]
  %users = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.0.lcssa.i, i32 0, i32 3
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 4
  %sub = add i32 %7, -1
  store i32 %sub, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %ltree_lookup.exit.do.end8_crit_edge, !prof !178

ltree_lookup.exit.do.end8_crit_edge:              ; preds = %ltree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %ltree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef 343, i32 noundef %13) #17
  tail call void @dump_stack() #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %ltree_lookup.exit.do.end8_crit_edge
  %mutex = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.0.lcssa.i, i32 0, i32 4
  tail call void @up_read(ptr noundef %mutex) #12
  %14 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %do.end8.if.end12_crit_edge

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rb_erase(ptr noundef %p.0.lcssa.i, ptr noundef %ltree.i) #12
  tail call void @kfree(ptr noundef %p.0.lcssa.i) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_vid_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubi_ro_mode(ptr noundef %ubi) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %0 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ro_mode, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.55) #12
  tail call void @dump_stack() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_scrub_peb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_read_leb_sg(ptr noundef %ubi, ptr nocapture noundef readonly %vol, ptr nocapture noundef %sgl, i32 noundef %lnum, i32 noundef %offset, i32 noundef %len, i32 noundef %check) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr = load i32, ptr %sgl, align 4
  %page_pos = getelementptr inbounds %struct.ubi_sgl, ptr %sgl, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %entry
  %1 = phi i32 [ %inc35, %if.end33 ], [ %.pr, %entry ]
  %len.addr.0 = phi i32 [ %sub21, %if.end33 ], [ %len, %entry ]
  %offset.addr.0 = phi i32 [ %add, %if.end33 ], [ %offset, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp = icmp sgt i32 %1, 63
  br i1 %cmp, label %do.end, label %for.cond.do.end6_crit_edge, !prof !178

for.cond.do.end6_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef 756, i32 noundef %7) #17
  tail call void @dump_stack() #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %for.cond.do.end6_crit_edge
  %8 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sgl, align 4
  %arrayidx = getelementptr %struct.ubi_sgl, ptr %sgl, i32 0, i32 2, i32 %9
  %length = getelementptr %struct.ubi_sgl, ptr %sgl, i32 0, i32 2, i32 %9, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %12 = ptrtoint ptr %page_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_pos, align 4
  %sub = sub i32 %11, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub)
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !181

do.body2.i.i:                                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !182
  unreachable

sg_virt.exit:                                     ; preds = %do.end6
  %and.i.i = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %17) #12
  %offset.i = getelementptr %struct.ubi_sgl, ptr %sgl, i32 0, i32 2, i32 %9, i32 1
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %19
  %20 = ptrtoint ptr %page_pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_pos, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %21
  %call17 = tail call i32 @ubi_eba_read_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum, ptr noundef %add.ptr, i32 noundef %offset.addr.0, i32 noundef %14, i32 noundef %check)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %sg_virt.exit.cleanup_crit_edge, label %if.end20

sg_virt.exit.cleanup_crit_edge:                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %sg_virt.exit
  %sub21 = sub i32 %len.addr.0, %14
  %tobool22.not = icmp eq i32 %sub21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end33

if.then23:                                        ; preds = %if.end20
  %22 = ptrtoint ptr %page_pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_pos, align 4
  %add25 = add i32 %23, %14
  store i32 %add25, ptr %page_pos, align 4
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %25)
  %cmp28 = icmp eq i32 %add25, %25
  br i1 %cmp28, label %if.then29, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sgl, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %sgl, align 4
  %28 = ptrtoint ptr %page_pos to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %page_pos, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %14, %offset.addr.0
  %29 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sgl, align 4
  %inc35 = add i32 %30, 1
  store i32 %inc35, ptr %sgl, align 4
  %31 = ptrtoint ptr %page_pos to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %page_pos, align 4
  br label %for.cond

cleanup:                                          ; preds = %if.then29, %if.then23.cleanup_crit_edge, %sg_virt.exit.cleanup_crit_edge
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_write_leb(ptr noundef %ubi, ptr nocapture noundef readonly %vol, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %pnum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pnum) #12
  %vol_id1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %0 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_id1, align 4
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %2 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @ltree_add_entry(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %leb_write_lock.exit, label %leb_write_lock.exit.thread

leb_write_lock.exit.thread:                       ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call.i, i32 0, i32 4
  tail call void @down_write(ptr noundef %mutex.i) #12
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %4 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eba_tbl, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %7, i32 %lnum
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %pnum to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %if.then6, label %leb_write_lock.exit.thread.if.end30_crit_edge

leb_write_lock.exit.thread.if.end30_crit_edge:    ; preds = %leb_write_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

leb_write_lock.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.then6:                                         ; preds = %leb_write_lock.exit.thread
  %call7 = call fastcc i32 @check_mapping(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %pnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.if.then56_crit_edge, label %if.end11

if.then6.if.then56_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.end11:                                         ; preds = %if.then6
  %12 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %pnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp12 = icmp sgt i32 %.pr, -1
  br i1 %cmp12, label %do.body, label %if.end11.if.end30_crit_edge

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.body:                                          ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_write_leb.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_write_leb, %if.then18)) #12
          to label %do.end [label %if.then18], !srcloc !180

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_write_leb.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.18, i32 noundef %18, i32 noundef %len, i32 noundef %offset, i32 noundef %1, i32 noundef %lnum, i32 noundef %.pr) #12
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp.i = icmp slt i32 %offset, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.ubi_io_write_data.exit_crit_edge, !prof !178

do.end.ubi_io_write_data.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_io_write_data.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.58, i32 noundef 1148, i32 noundef %24) #17
  tail call void @dump_stack() #17
  br label %ubi_io_write_data.exit

ubi_io_write_data.exit:                           ; preds = %do.end.i, %do.end.ubi_io_write_data.exit_crit_edge
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %25 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %leb_start.i, align 4
  %add.i = add i32 %26, %offset
  %call6.i = tail call i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %buf, i32 noundef %.pr, i32 noundef %add.i, i32 noundef %len) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool22.not = icmp eq i32 %call6.i, 0
  br i1 %tobool22.not, label %ubi_io_write_data.exit.if.end57_crit_edge, label %if.then23

ubi_io_write_data.exit.if.end57_crit_edge:        ; preds = %ubi_io_write_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then23:                                        ; preds = %ubi_io_write_data.exit
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.19, i32 noundef %.pr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call6.i)
  %cmp24 = icmp eq i32 %call6.i, -5
  br i1 %cmp24, label %land.lhs.true, label %if.then23.if.then56_crit_edge

if.then23.if.then56_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

land.lhs.true:                                    ; preds = %if.then23
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %27 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool25.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool25.not, label %land.lhs.true.if.then56_crit_edge, label %if.then26

land.lhs.true.if.then56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call fastcc i32 @recover_peb(ptr noundef %ubi, i32 noundef %.pr, i32 noundef %1, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offset, i32 noundef %len)
  br label %out

if.end30:                                         ; preds = %if.end11.if.end30_crit_edge, %leb_write_lock.exit.thread.if.end30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3392, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end30.if.then33_crit_edge, label %if.end.i122

if.end30.if.then33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.end.i122:                                      ; preds = %if.end30
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %29 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3136) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end34

if.then3.i:                                       ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.then33

if.then33:                                        ; preds = %if.then3.i, %if.end30.if.then33_crit_edge
  tail call fastcc void @leb_write_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  br label %cleanup

if.end34:                                         ; preds = %if.end.i122
  %31 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vid_hdr_alsize.i, align 4
  %33 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %32)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %35 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %36
  %37 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %vol_type = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %vol_type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %vol_type, align 1
  %ltree_lock.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %global_sqnum.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 21
  %39 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %global_sqnum.i, align 8
  %inc.i = add i64 %40, 1
  store i64 %inc.i, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 13
  %41 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %sqnum, align 1
  %vol_id37 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %vol_id37 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %1, ptr %vol_id37, align 1
  %lnum38 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %lnum38 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %lnum, ptr %lnum38, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479551, i32 %1)
  %cmp.i125 = icmp eq i32 %1, 2147479551
  %conv = select i1 %cmp.i125, i8 5, i8 0
  %compat = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %compat, align 1
  %data_pad = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 16
  %45 = ptrtoint ptr %data_pad to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_pad, align 4
  %data_pad40 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %data_pad40 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %data_pad40, align 1
  %bad_allowed46 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %call43 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef %offset, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, -5
  br i1 %cmp44.not, label %lor.lhs.false, label %if.end34.ubi_free_vid_buf.exit_crit_edge

if.end34.ubi_free_vid_buf.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

lor.lhs.false:                                    ; preds = %if.end34
  %48 = ptrtoint ptr %bad_allowed46 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load47 = load i8, ptr %bad_allowed46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47)
  %tobool50.not = icmp sgt i8 %bf.load47, -1
  br i1 %tobool50.not, label %lor.lhs.false.ubi_free_vid_buf.exit_crit_edge, label %if.end52

lor.lhs.false.ubi_free_vid_buf.exit_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

if.end52:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %49 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %global_sqnum.i, align 8
  %inc.i128 = add i64 %50, 1
  store i64 %inc.i128, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %51 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call43.1 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef %offset, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call43.1)
  %cmp44.not.1 = icmp eq i32 %call43.1, -5
  br i1 %cmp44.not.1, label %lor.lhs.false.1, label %if.end52.ubi_free_vid_buf.exit_crit_edge

if.end52.ubi_free_vid_buf.exit_crit_edge:         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

lor.lhs.false.1:                                  ; preds = %if.end52
  %52 = ptrtoint ptr %bad_allowed46 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load47.1 = load i8, ptr %bad_allowed46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47.1)
  %tobool50.not.1 = icmp sgt i8 %bf.load47.1, -1
  br i1 %tobool50.not.1, label %lor.lhs.false.1.ubi_free_vid_buf.exit_crit_edge, label %if.end52.1

lor.lhs.false.1.ubi_free_vid_buf.exit_crit_edge:  ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

if.end52.1:                                       ; preds = %lor.lhs.false.1
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %53 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %global_sqnum.i, align 8
  %inc.i128.1 = add i64 %54, 1
  store i64 %inc.i128.1, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %55 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call43.2 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef %offset, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call43.2)
  %cmp44.not.2 = icmp eq i32 %call43.2, -5
  br i1 %cmp44.not.2, label %lor.lhs.false.2, label %if.end52.1.ubi_free_vid_buf.exit_crit_edge

if.end52.1.ubi_free_vid_buf.exit_crit_edge:       ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

lor.lhs.false.2:                                  ; preds = %if.end52.1
  %56 = ptrtoint ptr %bad_allowed46 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load47.2 = load i8, ptr %bad_allowed46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47.2)
  %tobool50.not.2 = icmp sgt i8 %bf.load47.2, -1
  br i1 %tobool50.not.2, label %lor.lhs.false.2.ubi_free_vid_buf.exit_crit_edge, label %if.end52.2

lor.lhs.false.2.ubi_free_vid_buf.exit_crit_edge:  ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

if.end52.2:                                       ; preds = %lor.lhs.false.2
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %57 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %global_sqnum.i, align 8
  %inc.i128.2 = add i64 %58, 1
  store i64 %inc.i128.2, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %59 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call43.3 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef %offset, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call43.3)
  %cmp44.not.3 = icmp eq i32 %call43.3, -5
  br i1 %cmp44.not.3, label %lor.lhs.false.3, label %if.end52.2.ubi_free_vid_buf.exit_crit_edge

if.end52.2.ubi_free_vid_buf.exit_crit_edge:       ; preds = %if.end52.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

lor.lhs.false.3:                                  ; preds = %if.end52.2
  %60 = ptrtoint ptr %bad_allowed46 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load47.3 = load i8, ptr %bad_allowed46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47.3)
  %tobool50.not.3 = icmp sgt i8 %bf.load47.3, -1
  br i1 %tobool50.not.3, label %lor.lhs.false.3.ubi_free_vid_buf.exit_crit_edge, label %if.end52.3

lor.lhs.false.3.ubi_free_vid_buf.exit_crit_edge:  ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

if.end52.3:                                       ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %61 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %global_sqnum.i, align 8
  %inc.i128.3 = add i64 %62, 1
  store i64 %inc.i128.3, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %63 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.end52.3, %lor.lhs.false.3.ubi_free_vid_buf.exit_crit_edge, %if.end52.2.ubi_free_vid_buf.exit_crit_edge, %lor.lhs.false.2.ubi_free_vid_buf.exit_crit_edge, %if.end52.1.ubi_free_vid_buf.exit_crit_edge, %lor.lhs.false.1.ubi_free_vid_buf.exit_crit_edge, %if.end52.ubi_free_vid_buf.exit_crit_edge, %lor.lhs.false.ubi_free_vid_buf.exit_crit_edge, %if.end34.ubi_free_vid_buf.exit_crit_edge
  %err.2 = phi i32 [ %call43, %if.end34.ubi_free_vid_buf.exit_crit_edge ], [ -5, %lor.lhs.false.ubi_free_vid_buf.exit_crit_edge ], [ %call43.1, %if.end52.ubi_free_vid_buf.exit_crit_edge ], [ -5, %lor.lhs.false.1.ubi_free_vid_buf.exit_crit_edge ], [ %call43.2, %if.end52.1.ubi_free_vid_buf.exit_crit_edge ], [ -5, %lor.lhs.false.2.ubi_free_vid_buf.exit_crit_edge ], [ %call43.3, %if.end52.2.ubi_free_vid_buf.exit_crit_edge ], [ -5, %lor.lhs.false.3.ubi_free_vid_buf.exit_crit_edge ], [ -5, %if.end52.3 ]
  %64 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %65) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %out

out:                                              ; preds = %ubi_free_vid_buf.exit, %if.then26
  %err.3 = phi i32 [ %call27, %if.then26 ], [ %err.2, %ubi_free_vid_buf.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool55.not = icmp eq i32 %err.3, 0
  br i1 %tobool55.not, label %out.if.end57_crit_edge, label %out.if.then56_crit_edge

out.if.then56_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

out.if.end57_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then56:                                        ; preds = %out.if.then56_crit_edge, %land.lhs.true.if.then56_crit_edge, %if.then23.if.then56_crit_edge, %if.then6.if.then56_crit_edge
  %err.3145 = phi i32 [ %err.3, %out.if.then56_crit_edge ], [ %call6.i, %if.then23.if.then56_crit_edge ], [ -5, %land.lhs.true.if.then56_crit_edge ], [ %call7, %if.then6.if.then56_crit_edge ]
  %66 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i131 = icmp eq i32 %67, 0
  br i1 %tobool.not.i131, label %if.then.i132, label %if.then56.if.end57_crit_edge

if.then56.if.end57_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then.i132:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %ro_mode, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.55) #12
  tail call void @dump_stack() #17
  br label %if.end57

if.end57:                                         ; preds = %if.then.i132, %if.then56.if.end57_crit_edge, %out.if.end57_crit_edge, %ubi_io_write_data.exit.if.end57_crit_edge
  %err.3146 = phi i32 [ 0, %out.if.end57_crit_edge ], [ %err.3145, %if.then56.if.end57_crit_edge ], [ %err.3145, %if.then.i132 ], [ 0, %ubi_io_write_data.exit.if.end57_crit_edge ]
  tail call fastcc void @leb_write_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then33, %leb_write_lock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3146, %if.end57 ], [ -12, %if.then33 ], [ -30, %entry.cleanup_crit_edge ], [ %11, %leb_write_lock.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pnum) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recover_peb(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %vol_id, i32 noundef %lnum, ptr nocapture noundef readonly %buf, i32 noundef %offset, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479550, i32 %vol_id)
  %cmp.i = icmp sgt i32 %vol_id, 2147479550
  br i1 %cmp.i, label %if.then.i, label %entry.vol_id2idx.exit_crit_edge

entry.vol_id2idx.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vol_id2idx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add nsw i32 %vol_id, -2147479551
  %vtbl_slots.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %0 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtbl_slots.i, align 4
  %add.i = add i32 %sub.i, %1
  br label %vol_id2idx.exit

vol_id2idx.exit:                                  ; preds = %if.then.i, %entry.vol_id2idx.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %vol_id, %entry.vol_id2idx.exit_crit_edge ]
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %retval.0.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %vol_id2idx.exit.cleanup7_crit_edge, label %if.end.i

vol_id2idx.exit.cleanup7_crit_edge:               ; preds = %vol_id2idx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7

if.end.i:                                         ; preds = %vol_id2idx.exit
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %5 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3136) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup7.sink.split_crit_edge, label %ubi_alloc_vid_buf.exit

if.end.i.cleanup7.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7.sink.split

ubi_alloc_vid_buf.exit:                           ; preds = %if.end.i
  %7 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vid_hdr_alsize.i, align 4
  %9 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %8)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %11 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %12
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %ubi1.i = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 2
  %vol_id2.i = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp23.i = icmp sgt i32 %offset, 0
  %add.i22 = add i32 %len, %offset
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ubi_alloc_vid_buf.exit
  %tries.047 = phi i32 [ 0, %ubi_alloc_vid_buf.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %ubi1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ubi1.i, align 8
  %16 = ptrtoint ptr %vol_id2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vol_id2.i, align 4
  %call.i = tail call i32 @ubi_wl_get_peb(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i20 = icmp slt i32 %call.i, 0
  br i1 %cmp.i20, label %lor.lhs.false.thread, label %if.end.i21

if.end.i21:                                       ; preds = %for.body
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %15, ptr noundef nonnull @.str.60, i32 noundef %pnum, i32 noundef %call.i) #12
  %call3.i = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %15, i32 noundef %pnum, ptr noundef nonnull %call7.i.i.i, i32 noundef 1) #12
  %18 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call3.i, label %if.then5.i [
    i32 0, label %if.end.i21.if.end9.i_crit_edge
    i32 5, label %if.end.i21.if.end9.i_crit_edge98
  ]

if.end.i21.if.end9.i_crit_edge98:                 ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end.i21.if.end9.i_crit_edge:                   ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp6.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp6.i, label %if.then5.i.if.else.thread135.i_crit_edge, label %out_put.i

if.then5.i.if.else.thread135.i_crit_edge:         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.thread135.i

if.end9.i:                                        ; preds = %if.end.i21.if.end9.i_crit_edge, %if.end.i21.if.end9.i_crit_edge98
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i.i, align 8
  %vol_type.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vol_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp11.not.i = icmp eq i8 %22, 1
  br i1 %cmp11.not.i, label %if.end9.i.do.end22.i_crit_edge, label %do.end.i, !prof !181

if.end9.i.do.end22.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid.i, align 8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.61, i32 noundef 834, i32 noundef %28) #17
  tail call void @dump_stack() #17
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %if.end9.i.do.end22.i_crit_edge
  %buf_mutex.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %peb_buf.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 80
  %29 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peb_buf.i, align 8
  %add.ptr.i = getelementptr i8, ptr %30, i32 %offset
  %31 = call ptr @memset(ptr %add.ptr.i, i32 255, i32 %len)
  br i1 %cmp23.i, label %if.then25.i, label %do.end22.i.if.end34.i_crit_edge

do.end22.i.if.end34.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then25.i:                                      ; preds = %do.end22.i
  %32 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peb_buf.i, align 8
  %leb_start.i.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 71
  %34 = ptrtoint ptr %leb_start.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leb_start.i.i, align 4
  %call6.i.i = tail call i32 @ubi_io_read(ptr noundef %15, ptr noundef %33, i32 noundef %pnum, i32 noundef %35, i32 noundef %offset) #12
  %36 = zext i32 %call6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call6.i.i, label %if.then25.i.out_unlock.i_crit_edge [
    i32 0, label %if.then25.i.if.end34.i_crit_edge
    i32 5, label %if.then25.i.if.end34.i_crit_edge99
  ]

if.then25.i.if.end34.i_crit_edge99:               ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then25.i.if.end34.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then25.i.out_unlock.i_crit_edge:               ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.i

if.end34.i:                                       ; preds = %if.then25.i.if.end34.i_crit_edge, %if.then25.i.if.end34.i_crit_edge99, %do.end22.i.if.end34.i_crit_edge
  %37 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peb_buf.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %38, i32 %offset
  %39 = call ptr @memcpy(ptr %add.ptr36.i, ptr %buf, i32 %len)
  %40 = load ptr, ptr %peb_buf.i, align 8
  %call38.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %40, i32 noundef %add.i22) #18
  %ltree_lock.i.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i.i) #12
  %global_sqnum.i.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 21
  %41 = ptrtoint ptr %global_sqnum.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %global_sqnum.i.i, align 8
  %inc.i.i = add i64 %42, 1
  store i64 %inc.i.i, ptr %global_sqnum.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i.i) #12
  %sqnum.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %20, i32 0, i32 13
  %43 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %sqnum.i, align 1
  %copy_flag.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %20, i32 0, i32 3
  %44 = ptrtoint ptr %copy_flag.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %copy_flag.i, align 1
  %data_size40.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %20, i32 0, i32 8
  %45 = ptrtoint ptr %data_size40.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %add.i22, ptr %data_size40.i, align 1
  %data_crc.i = getelementptr inbounds %struct.ubi_vid_hdr, ptr %20, i32 0, i32 11
  %46 = ptrtoint ptr %data_crc.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %call38.i, ptr %data_crc.i, align 1
  %call41.i = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %15, i32 noundef %call.i, ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %out_unlock.thread.i

out_unlock.thread.i:                              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  br label %if.else.thread135.i

if.end44.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %peb_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %peb_buf.i, align 8
  %leb_start.i118.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 71
  %49 = ptrtoint ptr %leb_start.i118.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %leb_start.i118.i, align 4
  %call6.i119.i = tail call i32 @ubi_io_write(ptr noundef %15, ptr noundef %48, i32 noundef %call.i, i32 noundef %50, i32 noundef %add.i22) #12
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end44.i, %if.then25.i.out_unlock.i_crit_edge
  %retry.0 = phi i8 [ 0, %if.then25.i.out_unlock.i_crit_edge ], [ 1, %if.end44.i ]
  %err.0.i = phi i32 [ %call6.i.i, %if.then25.i.out_unlock.i_crit_edge ], [ %call6.i119.i, %if.end44.i ]
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool48.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool48.not.i, label %out_put.thread127.i, label %out_unlock.i.if.else.thread135.i_crit_edge

out_unlock.i.if.else.thread135.i_crit_edge:       ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.thread135.i

out_put.thread127.i:                              ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #14
  %eba_tbl.i = getelementptr inbounds %struct.ubi_volume, ptr %3, i32 0, i32 24
  %51 = ptrtoint ptr %eba_tbl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eba_tbl.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %arrayidx.i = getelementptr %struct.ubi_eba_entry, ptr %54, i32 %lnum
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i, ptr %arrayidx.i, align 4
  %fm_eba_sem129.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 29
  tail call void @up_read(ptr noundef %fm_eba_sem129.i) #12
  br label %try_recover_peb.exit

out_put.i:                                        ; preds = %if.then5.i
  %fm_eba_sem.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 29
  tail call void @up_read(ptr noundef %fm_eba_sem.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool52.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool52.not.i, label %out_put.i.try_recover_peb.exit_crit_edge, label %out_put.i.lor.lhs.false_crit_edge

out_put.i.lor.lhs.false_crit_edge:                ; preds = %out_put.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

out_put.i.try_recover_peb.exit_crit_edge:         ; preds = %out_put.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_recover_peb.exit

if.else.thread135.i:                              ; preds = %out_unlock.i.if.else.thread135.i_crit_edge, %out_unlock.thread.i, %if.then5.i.if.else.thread135.i_crit_edge
  %retry.2 = phi i8 [ 0, %if.then5.i.if.else.thread135.i_crit_edge ], [ %retry.0, %out_unlock.i.if.else.thread135.i_crit_edge ], [ 1, %out_unlock.thread.i ]
  %err.1.ph.ph.i = phi i32 [ -5, %if.then5.i.if.else.thread135.i_crit_edge ], [ %err.0.i, %out_unlock.i.if.else.thread135.i_crit_edge ], [ %call41.i, %out_unlock.thread.i ]
  %fm_eba_sem123137.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 29
  tail call void @up_read(ptr noundef %fm_eba_sem123137.i) #12
  br label %lor.lhs.false

lor.lhs.false.thread:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %fm_eba_sem123.i = getelementptr inbounds %struct.ubi_device, ptr %15, i32 0, i32 29
  tail call void @up_read(ptr noundef %fm_eba_sem123.i) #12
  br label %ubi_free_vid_buf.exit

try_recover_peb.exit:                             ; preds = %out_put.i.try_recover_peb.exit_crit_edge, %out_put.thread127.i
  %call54.i = tail call i32 @ubi_wl_put_peb(ptr noundef %15, i32 noundef %17, i32 noundef %lnum, i32 noundef %pnum, i32 noundef 1) #12
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %15, ptr noundef nonnull @.str.62) #12
  br label %ubi_free_vid_buf.exit

lor.lhs.false:                                    ; preds = %if.else.thread135.i, %out_put.i.lor.lhs.false_crit_edge
  %retry.3 = phi i8 [ %retry.2, %if.else.thread135.i ], [ 0, %out_put.i.lor.lhs.false_crit_edge ]
  %err.1126134.i = phi i32 [ %err.1.ph.ph.i, %if.else.thread135.i ], [ %call3.i, %out_put.i.lor.lhs.false_crit_edge ]
  %call58.i = tail call i32 @ubi_wl_put_peb(ptr noundef %15, i32 noundef %17, i32 noundef %lnum, i32 noundef %call.i, i32 noundef 1) #12
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %15, ptr noundef nonnull @.str.63, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retry.3)
  %tobool4.not = icmp eq i8 %retry.3, 0
  br i1 %tobool4.not, label %lor.lhs.false.ubi_free_vid_buf.exit_crit_edge, label %for.inc

lor.lhs.false.ubi_free_vid_buf.exit_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

for.inc:                                          ; preds = %lor.lhs.false
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.59) #12
  %inc = add nuw nsw i32 %tries.047, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.ubi_free_vid_buf.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.ubi_free_vid_buf.exit_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %for.inc.ubi_free_vid_buf.exit_crit_edge, %lor.lhs.false.ubi_free_vid_buf.exit_crit_edge, %try_recover_peb.exit, %lor.lhs.false.thread
  %err.1 = phi i32 [ %call.i, %lor.lhs.false.thread ], [ 0, %try_recover_peb.exit ], [ %err.1126134.i, %for.inc.ubi_free_vid_buf.exit_crit_edge ], [ %err.1126134.i, %lor.lhs.false.ubi_free_vid_buf.exit_crit_edge ]
  %56 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %57) #12
  br label %cleanup7.sink.split

cleanup7.sink.split:                              ; preds = %ubi_free_vid_buf.exit, %if.end.i.cleanup7.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.1, %ubi_free_vid_buf.exit ], [ -12, %if.end.i.cleanup7.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup7

cleanup7:                                         ; preds = %cleanup7.sink.split, %vol_id2idx.exit.cleanup7_crit_edge
  %retval.0 = phi i32 [ -12, %vol_id2idx.exit.cleanup7_crit_edge ], [ %retval.0.ph, %cleanup7.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_write_vid_and_data(ptr nocapture noundef readonly %vol, i32 noundef %lnum, ptr noundef %vidb, ptr noundef %buf, i32 noundef %offset, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ubi1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 2
  %0 = ptrtoint ptr %ubi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubi1, align 8
  %vol_id2 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %2 = ptrtoint ptr %vol_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_id2, align 4
  %call = tail call i32 @ubi_wl_get_peb(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_put_crit_edge, label %if.end

entry.out_put_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put

if.end:                                           ; preds = %entry
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %4 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eba_tbl, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %7, i32 %lnum
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_write_vid_and_data.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_write_vid_and_data, %if.then7)) #12
          to label %do.end [label %if.then7], !srcloc !180

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_write_vid_and_data.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.65, i32 noundef %15, i32 noundef %len, i32 noundef %offset, i32 noundef %3, i32 noundef %lnum, i32 noundef %call) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %call10 = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %1, i32 noundef %call, ptr noundef %vidb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %3, i32 noundef %lnum, i32 noundef %call) #12
  br label %out_put

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool14.not = icmp eq i32 %len, 0
  br i1 %tobool14.not, label %if.end13.if.end20_crit_edge, label %if.then15

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp.i = icmp slt i32 %offset, 0
  br i1 %cmp.i, label %do.end.i, label %if.then15.ubi_io_write_data.exit_crit_edge, !prof !178

if.then15.ubi_io_write_data.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_io_write_data.exit

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.58, i32 noundef 1148, i32 noundef %21) #17
  tail call void @dump_stack() #17
  br label %ubi_io_write_data.exit

ubi_io_write_data.exit:                           ; preds = %do.end.i, %if.then15.ubi_io_write_data.exit_crit_edge
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 71
  %22 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %leb_start.i, align 4
  %add.i = add i32 %23, %offset
  %call6.i = tail call i32 @ubi_io_write(ptr noundef %1, ptr noundef %buf, i32 noundef %call, i32 noundef %add.i, i32 noundef %len) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool17.not = icmp eq i32 %call6.i, 0
  br i1 %tobool17.not, label %ubi_io_write_data.exit.if.end20_crit_edge, label %if.then18

ubi_io_write_data.exit.if.end20_crit_edge:        ; preds = %ubi_io_write_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %ubi_io_write_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef %len, i32 noundef %offset, i32 noundef %3, i32 noundef %lnum, i32 noundef %call) #12
  br label %out_put

if.end20:                                         ; preds = %ubi_io_write_data.exit.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %24 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eba_tbl, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %arrayidx23 = getelementptr %struct.ubi_eba_entry, ptr %27, i32 %lnum
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call, ptr %arrayidx23, align 4
  br label %out_put

out_put:                                          ; preds = %if.end20, %if.then18, %if.then12, %entry.out_put_crit_edge
  %opnum.0 = phi i32 [ %9, %if.then12 ], [ %9, %if.then18 ], [ %9, %if.end20 ], [ -1, %entry.out_put_crit_edge ]
  %err.1 = phi i32 [ %call10, %if.then12 ], [ %call6.i, %if.then18 ], [ 0, %if.end20 ], [ %call, %entry.out_put_crit_edge ]
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %1, i32 0, i32 29
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool25.not = icmp eq i32 %err.1, 0
  %tobool25.not.not = xor i1 %tobool25.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp26 = icmp sgt i32 %call, -1
  %or.cond = select i1 %tobool25.not.not, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then27, label %if.else

if.then27:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 @ubi_wl_put_peb(ptr noundef %1, i32 noundef %3, i32 noundef %lnum, i32 noundef %call, i32 noundef 1) #12
  br label %if.end35

if.else:                                          ; preds = %out_put
  br i1 %tobool25.not, label %land.lhs.true30, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true30:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %opnum.0)
  %cmp31 = icmp sgt i32 %opnum.0, -1
  br i1 %cmp31, label %if.then32, label %land.lhs.true30.if.end35_crit_edge

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 @ubi_wl_put_peb(ptr noundef %1, i32 noundef %3, i32 noundef %lnum, i32 noundef %opnum.0, i32 noundef 0) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true30.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.then27
  %err.2 = phi i32 [ %call28, %if.then27 ], [ %err.1, %if.else.if.end35_crit_edge ], [ %call33, %if.then32 ], [ 0, %land.lhs.true30.if.end35_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_write_leb_st(ptr noundef %ubi, ptr nocapture noundef readonly %vol, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len, i32 noundef %used_ebs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_id1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %0 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_id1, align 4
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %2 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %used_ebs, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %lnum)
  %cmp = icmp eq i32 %sub, %lnum
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %4 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_io_size, align 4
  br i1 %cmp, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub3 = add i32 %len, -1
  %add = add i32 %sub3, %5
  %neg = sub i32 0, %5
  %and = and i32 %add, %neg
  br label %if.end20

do.body:                                          ; preds = %if.end
  %sub7 = add i32 %5, -1
  %and8 = and i32 %sub7, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.if.end20_crit_edge, label %do.end, !prof !181

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 1125, i32 noundef %11) #17
  tail call void @dump_stack() #17
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body.if.end20_crit_edge, %if.then2
  %len.addr.0 = phi i32 [ %and, %if.then2 ], [ %len, %do.end ], [ %len, %do.body.if.end20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3392, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end20.cleanup_crit_edge, label %if.end.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %13 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3136) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end24

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end.i
  %15 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vid_hdr_alsize.i, align 4
  %17 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %16)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %19 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %20
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %call.i = tail call fastcc ptr @ltree_add_entry(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum) #12
  %cmp.i.i125 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i125, label %leb_write_lock.exit, label %leb_write_lock.exit.thread

leb_write_lock.exit.thread:                       ; preds = %if.end24
  %mutex.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call.i, i32 0, i32 4
  tail call void @down_write(ptr noundef %mutex.i) #12
  %ltree_lock.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %global_sqnum.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 21
  %22 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %global_sqnum.i, align 8
  %inc.i = add i64 %23, 1
  store i64 %inc.i, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 13
  %24 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %sqnum, align 1
  %vol_id31 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %vol_id31 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %1, ptr %vol_id31, align 1
  %lnum32 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %lnum32 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %lnum, ptr %lnum32, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479551, i32 %1)
  %cmp.i = icmp eq i32 %1, 2147479551
  %conv = select i1 %cmp.i, i8 5, i8 0
  %compat = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %compat, align 1
  %data_pad = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 16
  %28 = ptrtoint ptr %data_pad to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_pad, align 4
  %data_pad34 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %data_pad34 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %data_pad34, align 1
  %call35 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %buf, i32 noundef %len) #18
  %vol_type = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %vol_type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %vol_type, align 1
  %data_size36 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %data_size36 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %len, ptr %data_size36, align 1
  %used_ebs37 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %used_ebs37 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %used_ebs, ptr %used_ebs37, align 1
  %data_crc = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %call35, ptr %data_crc, align 1
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 24
  %35 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %eba_tbl, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %arrayidx = getelementptr %struct.ubi_eba_entry, ptr %38, i32 %lnum
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp39 = icmp sgt i32 %40, -1
  br i1 %cmp39, label %do.end52, label %leb_write_lock.exit.thread.do.end60_crit_edge, !prof !178

leb_write_lock.exit.thread.do.end60_crit_edge:    ; preds = %leb_write_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

leb_write_lock.exit:                              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %call.i to i32
  br label %ubi_free_vid_buf.exit

do.end52:                                         ; preds = %leb_write_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %42 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i128 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i128 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid56, align 8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef 1149, i32 noundef %47) #17
  tail call void @dump_stack() #17
  br label %do.end60

do.end60:                                         ; preds = %do.end52, %leb_write_lock.exit.thread.do.end60_crit_edge
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %call63 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, -5
  br i1 %cmp64.not, label %lor.lhs.false, label %do.end60.for.end_crit_edge

do.end60.for.end_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false:                                    ; preds = %do.end60
  %48 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool66.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool66.not, label %lor.lhs.false.if.then72_crit_edge, label %if.end68

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

if.end68:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %49 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %global_sqnum.i, align 8
  %inc.i131 = add i64 %50, 1
  store i64 %inc.i131, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %51 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call63.1 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call63.1)
  %cmp64.not.1 = icmp eq i32 %call63.1, -5
  br i1 %cmp64.not.1, label %lor.lhs.false.1, label %if.end68.for.end_crit_edge

if.end68.for.end_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false.1:                                  ; preds = %if.end68
  %52 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.1 = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool66.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %tobool66.not.1, label %lor.lhs.false.1.if.then72_crit_edge, label %if.end68.1

lor.lhs.false.1.if.then72_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

if.end68.1:                                       ; preds = %lor.lhs.false.1
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %53 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %global_sqnum.i, align 8
  %inc.i131.1 = add i64 %54, 1
  store i64 %inc.i131.1, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %55 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call63.2 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call63.2)
  %cmp64.not.2 = icmp eq i32 %call63.2, -5
  br i1 %cmp64.not.2, label %lor.lhs.false.2, label %if.end68.1.for.end_crit_edge

if.end68.1.for.end_crit_edge:                     ; preds = %if.end68.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false.2:                                  ; preds = %if.end68.1
  %56 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.2 = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2)
  %tobool66.not.2 = icmp sgt i8 %bf.load.2, -1
  br i1 %tobool66.not.2, label %lor.lhs.false.2.if.then72_crit_edge, label %if.end68.2

lor.lhs.false.2.if.then72_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

if.end68.2:                                       ; preds = %lor.lhs.false.2
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %57 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %global_sqnum.i, align 8
  %inc.i131.2 = add i64 %58, 1
  store i64 %inc.i131.2, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %59 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call63.3 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call63.3)
  %cmp64.not.3 = icmp eq i32 %call63.3, -5
  br i1 %cmp64.not.3, label %lor.lhs.false.3, label %if.end68.2.for.end_crit_edge

if.end68.2.for.end_crit_edge:                     ; preds = %if.end68.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false.3:                                  ; preds = %if.end68.2
  %60 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.3 = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.3)
  %tobool66.not.3 = icmp sgt i8 %bf.load.3, -1
  br i1 %tobool66.not.3, label %lor.lhs.false.3.if.then72_crit_edge, label %for.end.thread

lor.lhs.false.3.if.then72_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

for.end.thread:                                   ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %61 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %global_sqnum.i, align 8
  %inc.i131.3 = add i64 %62, 1
  store i64 %inc.i131.3, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %63 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  br label %if.then72

for.end:                                          ; preds = %if.end68.2.for.end_crit_edge, %if.end68.1.for.end_crit_edge, %if.end68.for.end_crit_edge, %do.end60.for.end_crit_edge
  %err.1 = phi i32 [ %call63, %do.end60.for.end_crit_edge ], [ %call63.1, %if.end68.for.end_crit_edge ], [ %call63.2, %if.end68.1.for.end_crit_edge ], [ %call63.3, %if.end68.2.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool71.not = icmp eq i32 %err.1, 0
  br i1 %tobool71.not, label %for.end.if.end73_crit_edge, label %for.end.if.then72_crit_edge

for.end.if.then72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

for.end.if.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then72:                                        ; preds = %for.end.if.then72_crit_edge, %for.end.thread, %lor.lhs.false.3.if.then72_crit_edge, %lor.lhs.false.2.if.then72_crit_edge, %lor.lhs.false.1.if.then72_crit_edge, %lor.lhs.false.if.then72_crit_edge
  %err.1148 = phi i32 [ %err.1, %for.end.if.then72_crit_edge ], [ -5, %for.end.thread ], [ -5, %lor.lhs.false.3.if.then72_crit_edge ], [ -5, %lor.lhs.false.2.if.then72_crit_edge ], [ -5, %lor.lhs.false.1.if.then72_crit_edge ], [ -5, %lor.lhs.false.if.then72_crit_edge ]
  %64 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i132 = icmp eq i32 %65, 0
  br i1 %tobool.not.i132, label %if.then.i133, label %if.then72.if.end73_crit_edge

if.then72.if.end73_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then.i133:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %ro_mode, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.55) #12
  tail call void @dump_stack() #17
  br label %if.end73

if.end73:                                         ; preds = %if.then.i133, %if.then72.if.end73_crit_edge, %for.end.if.end73_crit_edge
  %err.1149 = phi i32 [ 0, %for.end.if.end73_crit_edge ], [ %err.1148, %if.then72.if.end73_crit_edge ], [ %err.1148, %if.then.i133 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.end73, %leb_write_lock.exit
  %err.2 = phi i32 [ %41, %leb_write_lock.exit ], [ %err.1149, %if.end73 ]
  %67 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %68) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ubi_free_vid_buf.exit, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.2, %ubi_free_vid_buf.exit ], [ -12, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_atomic_leb_change(ptr noundef %ubi, ptr nocapture noundef readonly %vol, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_id1 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %0 = ptrtoint ptr %vol_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_id1, align 4
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %2 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @ubi_eba_unmap_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @ubi_eba_write_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %5 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3136) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end11

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %7 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vid_hdr_alsize.i, align 4
  %9 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %8)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %11 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %12
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %alc_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %alc_mutex, i32 noundef 0) #12
  %call.i = tail call fastcc ptr @ltree_add_entry(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum) #12
  %cmp.i.i99 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i99, label %leb_write_lock.exit, label %leb_write_lock.exit.thread

leb_write_lock.exit.thread:                       ; preds = %if.end11
  %mutex.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call.i, i32 0, i32 4
  tail call void @down_write(ptr noundef %mutex.i) #12
  %ltree_lock.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %global_sqnum.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 21
  %14 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %global_sqnum.i, align 8
  %inc.i = add i64 %15, 1
  store i64 %inc.i, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %sqnum, align 1
  %vol_id18 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %vol_id18 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %1, ptr %vol_id18, align 1
  %lnum19 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %lnum19 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %lnum, ptr %lnum19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479551, i32 %1)
  %cmp.i = icmp eq i32 %1, 2147479551
  %conv = select i1 %cmp.i, i8 5, i8 0
  %compat = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %compat, align 1
  %data_pad = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 16
  %20 = ptrtoint ptr %data_pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_pad, align 4
  %data_pad21 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %data_pad21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %data_pad21, align 1
  %call22 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %buf, i32 noundef %len) #18
  %vol_type = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %vol_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %vol_type, align 1
  %data_size = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %len, ptr %data_size, align 1
  %copy_flag = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %copy_flag to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %copy_flag, align 1
  %data_crc = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %call22, ptr %data_crc, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_atomic_leb_change.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_atomic_leb_change, %if.then27)) #12
          to label %do.end [label %if.then27], !srcloc !180

leb_write_lock.exit:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %call.i to i32
  br label %ubi_free_vid_buf.exit

if.then27:                                        ; preds = %leb_write_lock.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_atomic_leb_change.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.25, i32 noundef %33, i32 noundef %1, i32 noundef %lnum) #12
  br label %do.end

do.end:                                           ; preds = %if.then27, %leb_write_lock.exit.thread
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %call32 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, -5
  br i1 %cmp33.not, label %lor.lhs.false, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false:                                    ; preds = %do.end
  %34 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool35.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool35.not, label %lor.lhs.false.if.then41_crit_edge, label %if.end37

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end37:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %35 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %global_sqnum.i, align 8
  %inc.i104 = add i64 %36, 1
  store i64 %inc.i104, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %37 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call32.1 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call32.1)
  %cmp33.not.1 = icmp eq i32 %call32.1, -5
  br i1 %cmp33.not.1, label %lor.lhs.false.1, label %if.end37.for.end_crit_edge

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false.1:                                  ; preds = %if.end37
  %38 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.1 = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %tobool35.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %tobool35.not.1, label %lor.lhs.false.1.if.then41_crit_edge, label %if.end37.1

lor.lhs.false.1.if.then41_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end37.1:                                       ; preds = %lor.lhs.false.1
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %39 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %global_sqnum.i, align 8
  %inc.i104.1 = add i64 %40, 1
  store i64 %inc.i104.1, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %41 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call32.2 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call32.2)
  %cmp33.not.2 = icmp eq i32 %call32.2, -5
  br i1 %cmp33.not.2, label %lor.lhs.false.2, label %if.end37.1.for.end_crit_edge

if.end37.1.for.end_crit_edge:                     ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false.2:                                  ; preds = %if.end37.1
  %42 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.2 = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2)
  %tobool35.not.2 = icmp sgt i8 %bf.load.2, -1
  br i1 %tobool35.not.2, label %lor.lhs.false.2.if.then41_crit_edge, label %if.end37.2

lor.lhs.false.2.if.then41_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.end37.2:                                       ; preds = %lor.lhs.false.2
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %43 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %global_sqnum.i, align 8
  %inc.i104.2 = add i64 %44, 1
  store i64 %inc.i104.2, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %45 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  %call32.3 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %vol, i32 noundef %lnum, ptr noundef nonnull %call7.i.i.i, ptr noundef %buf, i32 noundef 0, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call32.3)
  %cmp33.not.3 = icmp eq i32 %call32.3, -5
  br i1 %cmp33.not.3, label %lor.lhs.false.3, label %if.end37.2.for.end_crit_edge

if.end37.2.for.end_crit_edge:                     ; preds = %if.end37.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false.3:                                  ; preds = %if.end37.2
  %46 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.3 = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.3)
  %tobool35.not.3 = icmp sgt i8 %bf.load.3, -1
  br i1 %tobool35.not.3, label %lor.lhs.false.3.if.then41_crit_edge, label %for.end.thread

lor.lhs.false.3.if.then41_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

for.end.thread:                                   ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %47 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %global_sqnum.i, align 8
  %inc.i104.3 = add i64 %48, 1
  store i64 %inc.i104.3, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  %49 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %sqnum, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.20) #12
  br label %if.then41

for.end:                                          ; preds = %if.end37.2.for.end_crit_edge, %if.end37.1.for.end_crit_edge, %if.end37.for.end_crit_edge, %do.end.for.end_crit_edge
  %err.1 = phi i32 [ %call32, %do.end.for.end_crit_edge ], [ %call32.1, %if.end37.for.end_crit_edge ], [ %call32.2, %if.end37.1.for.end_crit_edge ], [ %call32.3, %if.end37.2.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool40.not = icmp eq i32 %err.1, 0
  br i1 %tobool40.not, label %for.end.if.end42_crit_edge, label %for.end.if.then41_crit_edge

for.end.if.then41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %for.end.if.then41_crit_edge, %for.end.thread, %lor.lhs.false.3.if.then41_crit_edge, %lor.lhs.false.2.if.then41_crit_edge, %lor.lhs.false.1.if.then41_crit_edge, %lor.lhs.false.if.then41_crit_edge
  %err.1122 = phi i32 [ %err.1, %for.end.if.then41_crit_edge ], [ -5, %for.end.thread ], [ -5, %lor.lhs.false.3.if.then41_crit_edge ], [ -5, %lor.lhs.false.2.if.then41_crit_edge ], [ -5, %lor.lhs.false.1.if.then41_crit_edge ], [ -5, %lor.lhs.false.if.then41_crit_edge ]
  %50 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i105 = icmp eq i32 %51, 0
  br i1 %tobool.not.i105, label %if.then.i106, label %if.then41.if.end42_crit_edge

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then.i106:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %ro_mode, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.55) #12
  tail call void @dump_stack() #17
  br label %if.end42

if.end42:                                         ; preds = %if.then.i106, %if.then41.if.end42_crit_edge, %for.end.if.end42_crit_edge
  %err.1123 = phi i32 [ 0, %for.end.if.end42_crit_edge ], [ %err.1122, %if.then41.if.end42_crit_edge ], [ %err.1122, %if.then.i106 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %ubi, i32 noundef %1, i32 noundef %lnum)
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.end42, %leb_write_lock.exit
  %err.2 = phi i32 [ %27, %leb_write_lock.exit ], [ %err.1123, %if.end42 ]
  tail call void @mutex_unlock(ptr noundef %alc_mutex) #12
  %53 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %54) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ubi_free_vid_buf.exit, %if.then3.i, %if.end7.cleanup_crit_edge, %if.end5, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %err.2, %ubi_free_vid_buf.exit ], [ -30, %entry.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ], [ -12, %if.then3.i ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_copy_leb(ptr noundef %ubi, i32 noundef %from, i32 noundef %to, ptr noundef %vidb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vidb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vidb, align 4
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 29
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fm_eba_sem, i32 noundef 4) #12
  %2 = ptrtoint ptr %fm_eba_sem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fm_eba_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %do.end, label %entry.do.end9_crit_edge, !prof !178

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 1309, i32 noundef %9) #17
  tail call void @dump_stack() #17
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %vol_id10 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %vol_id10 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %vol_id10, align 1
  %lnum11 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %lnum11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %lnum11, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_copy_leb, %if.then22)) #12
          to label %do.end28 [label %if.then22], !srcloc !180

if.then22:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i327 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i327 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task24, align 8
  %pid25 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid25, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_copy_leb.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.27, i32 noundef %19, i32 noundef %11, i32 noundef %13, i32 noundef %from, i32 noundef %to) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then22, %do.end9
  %vol_type = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vol_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp = icmp eq i8 %21, 2
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  %data_size31 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %data_size31 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %data_size31, align 1
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %24 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_io_size, align 4
  %sub = add i32 %23, -1
  %add = add i32 %sub, %25
  %neg = sub i32 0, %25
  %and = and i32 %add, %neg
  br label %if.end35

if.else:                                          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %26 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %leb_size, align 8
  %data_pad = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %data_pad to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %data_pad, align 1
  %sub34 = sub i32 %27, %29
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  %aldata_size.0 = phi i32 [ %and, %if.then30 ], [ %sub34, %if.else ]
  %data_size.0 = phi i32 [ %23, %if.then30 ], [ %sub34, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479550, i32 %11)
  %cmp.i328 = icmp sgt i32 %11, 2147479550
  br i1 %cmp.i328, label %if.then.i, label %if.end35.vol_id2idx.exit_crit_edge

if.end35.vol_id2idx.exit_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %vol_id2idx.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add nsw i32 %11, -2147479551
  %vtbl_slots.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %30 = ptrtoint ptr %vtbl_slots.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vtbl_slots.i, align 4
  %add.i = add i32 %sub.i, %31
  br label %vol_id2idx.exit

vol_id2idx.exit:                                  ; preds = %if.then.i, %if.end35.vol_id2idx.exit_crit_edge
  %retval.0.i329 = phi i32 [ %add.i, %if.then.i ], [ %11, %if.end35.vol_id2idx.exit_crit_edge ]
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #12
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %retval.0.i329
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #12
  %tobool38.not = icmp eq ptr %33, null
  br i1 %tobool38.not, label %do.body40, label %if.end59

do.body40:                                        ; preds = %vol_id2idx.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_copy_leb, %if.then52)) #12
          to label %cleanup [label %if.then52], !srcloc !180

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %34 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i330 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i330 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task54, align 8
  %pid55 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid55, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_copy_leb.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.28, i32 noundef %39, i32 noundef %11) #12
  br label %cleanup

if.end59:                                         ; preds = %vol_id2idx.exit
  %call.i = tail call fastcc ptr @ltree_add_entry(ptr noundef %ubi, i32 noundef %11, i32 noundef %13) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end59.do.body63_crit_edge, label %if.end.i

if.end59.do.body63_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

if.end.i:                                         ; preds = %if.end59
  %mutex.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call.i, i32 0, i32 4
  %call3.i = tail call i32 @down_write_trylock(ptr noundef %mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end82

if.end5.i:                                        ; preds = %if.end.i
  %ltree_lock.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i) #12
  %users.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %users.i, align 4
  %sub.i332 = add i32 %41, -1
  store i32 %sub.i332, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i332)
  %cmp.i333 = icmp slt i32 %sub.i332, 0
  br i1 %cmp.i333, label %do.end.i, label %if.end5.i.do.end16.i_crit_edge, !prof !178

if.end5.i.do.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid.i, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.68, i32 noundef 396, i32 noundef %47) #17
  tail call void @dump_stack() #17
  %48 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i = load i32, ptr %users.i, align 4
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %if.end5.i.do.end16.i_crit_edge
  %49 = phi i32 [ %.pr.i, %do.end.i ], [ %sub.i332, %if.end5.i.do.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp18.i = icmp eq i32 %49, 0
  br i1 %cmp18.i, label %if.then19.i, label %do.end16.i.leb_write_trylock.exit.thread352_crit_edge

do.end16.i.leb_write_trylock.exit.thread352_crit_edge: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %leb_write_trylock.exit.thread352

if.then19.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %ltree.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 23
  tail call void @rb_erase(ptr noundef %call.i, ptr noundef %ltree.i) #12
  tail call void @kfree(ptr noundef %call.i) #12
  br label %leb_write_trylock.exit.thread352

leb_write_trylock.exit.thread352:                 ; preds = %if.then19.i, %do.end16.i.leb_write_trylock.exit.thread352_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i) #12
  br label %do.body63

do.body63:                                        ; preds = %leb_write_trylock.exit.thread352, %if.end59.do.body63_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_copy_leb, %if.then75)) #12
          to label %cleanup [label %if.then75], !srcloc !180

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  %50 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i335 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i335 to ptr
  %task77 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task77, align 8
  %pid78 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid78, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_copy_leb.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.29, i32 noundef %55, i32 noundef %11, i32 noundef %13) #12
  br label %cleanup

if.end82:                                         ; preds = %if.end.i
  %eba_tbl = getelementptr inbounds %struct.ubi_volume, ptr %33, i32 0, i32 24
  %56 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eba_tbl, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %arrayidx83 = getelementptr %struct.ubi_eba_entry, ptr %59, i32 %13
  %60 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %from)
  %cmp84.not = icmp eq i32 %61, %from
  br i1 %cmp84.not, label %if.end110, label %do.body87

do.body87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_copy_leb, %if.then99)) #12
          to label %out_unlock_leb [label %if.then99], !srcloc !180

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  %62 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i336 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i336 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task101, align 8
  %pid102 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid102 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid102, align 8
  %68 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %eba_tbl, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %arrayidx105 = getelementptr %struct.ubi_eba_entry, ptr %71, i32 %13
  %72 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx105, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_copy_leb.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.30, i32 noundef %67, i32 noundef %11, i32 noundef %13, i32 noundef %from, i32 noundef %73) #12
  br label %out_unlock_leb

if.end110:                                        ; preds = %if.end82
  %buf_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_copy_leb, %if.then123)) #12
          to label %do.end129 [label %if.then123], !srcloc !180

if.then123:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %74 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i337 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i337 to ptr
  %task125 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task125, align 8
  %pid126 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 68
  %78 = ptrtoint ptr %pid126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pid126, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_copy_leb.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.31, i32 noundef %79, i32 noundef %aldata_size.0) #12
  br label %do.end129

do.end129:                                        ; preds = %if.then123, %if.end110
  %peb_buf = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 80
  %80 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %peb_buf, align 8
  %leb_start.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 71
  %82 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %leb_start.i, align 4
  %call6.i = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %81, i32 noundef %from, i32 noundef %83, i32 noundef %aldata_size.0) #12
  %84 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call6.i, label %if.then134 [
    i32 0, label %do.end129.if.end135_crit_edge
    i32 5, label %do.end129.if.end135_crit_edge360
  ]

do.end129.if.end135_crit_edge360:                 ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

do.end129.if.end135_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then134:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.32, i32 noundef %call6.i, i32 noundef %from) #12
  br label %out_unlock_buf

if.end135:                                        ; preds = %do.end129.if.end135_crit_edge, %do.end129.if.end135_crit_edge360
  %85 = ptrtoint ptr %vol_type to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %vol_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %86)
  %cmp138 = icmp eq i8 %86, 1
  br i1 %cmp138, label %if.then140, label %if.end135.if.end143_crit_edge

if.end135.if.end143_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then140:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %peb_buf, align 8
  %call142 = tail call i32 @ubi_calc_data_len(ptr noundef %ubi, ptr noundef %88, i32 noundef %data_size.0) #12
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.end135.if.end143_crit_edge
  %aldata_size.1 = phi i32 [ %call142, %if.then140 ], [ %aldata_size.0, %if.end135.if.end143_crit_edge ]
  %data_size.1 = phi i32 [ %call142, %if.then140 ], [ %data_size.0, %if.end135.if.end143_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1402, i32 noundef 0) #12
  %call.i338 = tail call i32 @__cond_resched() #12
  %89 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %peb_buf, align 8
  %call147 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %90, i32 noundef %data_size.1) #18
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1404, i32 noundef 0) #12
  %call.i339 = tail call i32 @__cond_resched() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size.1)
  %cmp150 = icmp sgt i32 %data_size.1, 0
  br i1 %cmp150, label %if.then152, label %if.end143.if.end154_crit_edge

if.end143.if.end154_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then152:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  %copy_flag = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 3
  %91 = ptrtoint ptr %copy_flag to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %copy_flag, align 1
  %data_size153 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 8
  %92 = ptrtoint ptr %data_size153 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %data_size.1, ptr %data_size153, align 1
  %data_crc = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 11
  %93 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %call147, ptr %data_crc, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end143.if.end154_crit_edge
  %ltree_lock.i340 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock.i340) #12
  %global_sqnum.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 21
  %94 = ptrtoint ptr %global_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %global_sqnum.i, align 8
  %inc.i = add i64 %95, 1
  store i64 %inc.i, ptr %global_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock.i340) #12
  %sqnum = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 13
  %96 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %95, ptr %sqnum, align 1
  %call156 = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %ubi, i32 noundef %to, ptr noundef %vidb) #12
  %97 = zext i32 %call156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call156, label %if.end154.out_unlock_buf_crit_edge [
    i32 0, label %if.end163
    i32 -5, label %if.then161
  ]

if.end154.out_unlock_buf_crit_edge:               ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock_buf

if.then161:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock_buf

if.end163:                                        ; preds = %if.end154
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1426, i32 noundef 0) #12
  %call.i341 = tail call i32 @__cond_resched() #12
  %call166 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %to, ptr noundef %vidb, i32 noundef 1) #12
  %98 = zext i32 %call166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call166, label %if.then171 [
    i32 0, label %if.end178
    i32 5, label %if.end163.out_unlock_buf_crit_edge
  ]

if.end163.out_unlock_buf_crit_edge:               ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock_buf

if.then171:                                       ; preds = %if.end163
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.33, i32 noundef %call166, i32 noundef %to) #12
  %99 = zext i32 %call166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call166, label %if.then171.out_unlock_buf_crit_edge [
    i32 -5, label %if.then171._crit_edge
    i32 -12, label %if.then171._crit_edge361
    i32 3, label %if.then171._crit_edge362
    i32 4, label %if.then171._crit_edge363
    i32 -110, label %if.then171._crit_edge364
  ]

if.then171._crit_edge364:                         ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %100

if.then171._crit_edge363:                         ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %100

if.then171._crit_edge362:                         ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %100

if.then171._crit_edge361:                         ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %100

if.then171._crit_edge:                            ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %100

if.then171.out_unlock_buf_crit_edge:              ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock_buf

100:                                              ; preds = %if.then171._crit_edge, %if.then171._crit_edge361, %if.then171._crit_edge362, %if.then171._crit_edge363, %if.then171._crit_edge364
  br label %out_unlock_buf

if.end178:                                        ; preds = %if.end163
  br i1 %cmp150, label %if.then181, label %if.end178.do.body194_crit_edge

if.end178.do.body194_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body194

if.then181:                                       ; preds = %if.end178
  %101 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %peb_buf, align 8
  %103 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %leb_start.i, align 4
  %call6.i345 = tail call i32 @ubi_io_write(ptr noundef %ubi, ptr noundef %102, i32 noundef %to, i32 noundef %104, i32 noundef %aldata_size.1) #12
  %105 = zext i32 %call6.i345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call6.i345, label %if.then181.out_unlock_buf_crit_edge [
    i32 0, label %if.end190
    i32 -5, label %if.then188
  ]

if.then181.out_unlock_buf_crit_edge:              ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock_buf

if.then188:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock_buf

if.end190:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1449, i32 noundef 0) #12
  %call.i346 = tail call i32 @__cond_resched() #12
  br label %do.body194

do.body194:                                       ; preds = %if.end190, %if.end178.do.body194_crit_edge
  %106 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %eba_tbl, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %arrayidx197 = getelementptr %struct.ubi_eba_entry, ptr %109, i32 %13
  %110 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx197, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %from)
  %cmp199.not = icmp eq i32 %111, %from
  br i1 %cmp199.not, label %do.body194.do.end220_crit_edge, label %do.end212, !prof !181

do.body194.do.end220_crit_edge:                   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end220

do.end212:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #14
  %112 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i347 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i347 to ptr
  %task215 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task215 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task215, align 8
  %pid216 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 68
  %116 = ptrtoint ptr %pid216 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pid216, align 8
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 1452, i32 noundef %117) #17
  tail call void @dump_stack() #17
  br label %do.end220

do.end220:                                        ; preds = %do.end212, %do.body194.do.end220_crit_edge
  %118 = ptrtoint ptr %eba_tbl to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %eba_tbl, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %arrayidx223 = getelementptr %struct.ubi_eba_entry, ptr %121, i32 %13
  %122 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %to, ptr %arrayidx223, align 4
  br label %out_unlock_buf

out_unlock_buf:                                   ; preds = %do.end220, %if.then188, %if.then181.out_unlock_buf_crit_edge, %100, %if.then171.out_unlock_buf_crit_edge, %if.end163.out_unlock_buf_crit_edge, %if.then161, %if.end154.out_unlock_buf_crit_edge, %if.then134
  %err.1 = phi i32 [ 2, %if.then134 ], [ 4, %if.then161 ], [ 4, %if.then188 ], [ 0, %do.end220 ], [ %call156, %if.end154.out_unlock_buf_crit_edge ], [ %call166, %if.end163.out_unlock_buf_crit_edge ], [ %call6.i345, %if.then181.out_unlock_buf_crit_edge ], [ %call166, %100 ], [ 3, %if.then171.out_unlock_buf_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  br label %out_unlock_leb

out_unlock_leb:                                   ; preds = %out_unlock_buf, %if.then99, %do.body87
  %err.2 = phi i32 [ %err.1, %out_unlock_buf ], [ 1, %if.then99 ], [ 1, %do.body87 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %ubi, i32 noundef %11, i32 noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %out_unlock_leb, %if.then75, %do.body63, %if.then52, %do.body40
  %retval.0 = phi i32 [ %err.2, %out_unlock_leb ], [ 1, %if.then52 ], [ 6, %if.then75 ], [ 1, %do.body40 ], [ 6, %do.body63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_calc_data_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_vid_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @self_check_eba(ptr noundef %ubi, ptr noundef %ai_fastmap, ptr noundef %ai_scan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %0 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtbl_slots, align 4
  %add = add i32 %1, 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #12
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  br i1 %3, label %entry.cleanup_crit_edge, label %kmalloc_array.exit.thread, !prof !178

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

kmalloc_array.exit.thread:                        ; preds = %entry
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #16
  %tobool.not383 = icmp eq ptr %call8.i, null
  br i1 %tobool.not383, label %kmalloc_array.exit.thread.cleanup_crit_edge, label %if.end7.i262

kmalloc_array.exit.thread.cleanup_crit_edge:      ; preds = %kmalloc_array.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i262:                                     ; preds = %kmalloc_array.exit.thread
  %call8.i261 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #16
  %tobool2.not = icmp eq ptr %call8.i261, null
  br i1 %tobool2.not, label %if.end7.i262.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end7.i262.cleanup.sink.split_crit_edge:        ; preds = %if.end7.i262
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end7.i262
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %1)
  %cmp367 = icmp ult i32 %1, 2147483647
  br i1 %cmp367, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end132_crit_edge

for.cond.preheader.for.end132_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc117.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0368 = phi i32 [ %inc118, %for.inc117.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.0368
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %for.body.for.inc117_crit_edge, label %if.end7

for.body.for.inc117_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc117

if.end7:                                          ; preds = %for.body
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reserved_pebs, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #12
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end7.out_free.sink.split_crit_edge, label %if.end7.i295, !prof !178

if.end7.out_free.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.sink.split

if.end7.i295:                                     ; preds = %if.end7
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i294 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #16
  %arrayidx9 = getelementptr ptr, ptr %call8.i, i32 %i.0368
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i294, ptr %arrayidx9, align 4
  %tobool11.not = icmp eq ptr %call8.i294, null
  br i1 %tobool11.not, label %if.end7.i295.out_free_crit_edge, label %if.end13

if.end7.i295.out_free_crit_edge:                  ; preds = %if.end7.i295
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end13:                                         ; preds = %if.end7.i295
  %13 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reserved_pebs, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #12
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end13.out_free.sink.split_crit_edge, label %if.end7.i328, !prof !178

if.end13.out_free.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.sink.split

if.end7.i328:                                     ; preds = %if.end13
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i327 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #16
  %arrayidx16 = getelementptr ptr, ptr %call8.i261, i32 %i.0368
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i327, ptr %arrayidx16, align 4
  %tobool18.not = icmp eq ptr %call8.i327, null
  br i1 %tobool18.not, label %if.end7.i328.out_free_crit_edge, label %for.cond21.preheader

if.end7.i328.out_free_crit_edge:                  ; preds = %if.end7.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

for.cond21.preheader:                             ; preds = %if.end7.i328
  %19 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reserved_pebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp23356 = icmp sgt i32 %20, 0
  br i1 %cmp23356, label %for.cond21.preheader.for.body24_crit_edge, label %for.cond21.preheader.for.end_crit_edge

for.cond21.preheader.for.end_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond21.preheader.for.body24_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.cond21.preheader.for.body24_crit_edge
  %j.0357 = phi i32 [ %inc, %for.body24.for.body24_crit_edge ], [ 0, %for.cond21.preheader.for.body24_crit_edge ]
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx16, align 4
  %arrayidx26 = getelementptr i32, ptr %22, i32 %j.0357
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %arrayidx26, align 4
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9, align 4
  %arrayidx28 = getelementptr i32, ptr %25, i32 %j.0357
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %arrayidx28, align 4
  %inc = add nuw nsw i32 %j.0357, 1
  %27 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reserved_pebs, align 4
  %cmp23 = icmp slt i32 %inc, %28
  br i1 %cmp23, label %for.body24.for.body24_crit_edge, label %for.body24.for.end_crit_edge

for.body24.for.end_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

for.end:                                          ; preds = %for.body24.for.end_crit_edge, %for.cond21.preheader.for.end_crit_edge
  %29 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %i.0368)
  %cmp.not.i = icmp sgt i32 %30, %i.0368
  %sub.i = add nuw i32 %i.0368, 2147479551
  %add.i = sub i32 %sub.i, %30
  %retval.0.i331 = select i1 %cmp.not.i, i32 %i.0368, i32 %add.i
  %call30 = tail call ptr @ubi_find_av(ptr noundef %ai_scan, i32 noundef %retval.0.i331) #12
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %for.end.for.inc117_crit_edge, label %if.end33

for.end.for.inc117_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc117

if.end33:                                         ; preds = %for.end
  %root = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call30, i32 0, i32 9
  %call34 = tail call ptr @rb_first(ptr noundef %root) #12
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.for.end51_crit_edge, label %if.end33.for.body38_crit_edge

if.end33.for.body38_crit_edge:                    ; preds = %if.end33
  br label %for.body38

if.end33.for.end51_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %if.end33.for.body38_crit_edge
  %rb.0360 = phi ptr [ %call42, %for.body38.for.body38_crit_edge ], [ %call34, %if.end33.for.body38_crit_edge ]
  %pnum = getelementptr i8, ptr %rb.0360, i32 -28
  %31 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pnum, align 4
  %33 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx9, align 4
  %lnum = getelementptr i8, ptr %rb.0360, i32 -20
  %35 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lnum, align 4
  %arrayidx40 = getelementptr i32, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %32, ptr %arrayidx40, align 4
  %call42 = tail call ptr @rb_next(ptr noundef nonnull %rb.0360) #12
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %for.body38.for.end51_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38

for.body38.for.end51_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.end51:                                        ; preds = %for.body38.for.end51_crit_edge, %if.end33.for.end51_crit_edge
  %38 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %i.0368)
  %cmp.not.i333 = icmp sgt i32 %39, %i.0368
  %add.i335 = sub i32 %sub.i, %39
  %retval.0.i336 = select i1 %cmp.not.i333, i32 %i.0368, i32 %add.i335
  %call53 = tail call ptr @ubi_find_av(ptr noundef %ai_fastmap, i32 noundef %retval.0.i336) #12
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %for.end51.for.inc117_crit_edge, label %if.end56

for.end51.for.inc117_crit_edge:                   ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc117

if.end56:                                         ; preds = %for.end51
  %root57 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call53, i32 0, i32 9
  %call58 = tail call ptr @rb_first(ptr noundef %root57) #12
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end56.for.cond85.preheader_crit_edge, label %if.end56.for.body69_crit_edge

if.end56.for.body69_crit_edge:                    ; preds = %if.end56
  br label %for.body69

if.end56.for.cond85.preheader_crit_edge:          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %for.body69.for.cond85.preheader_crit_edge, %if.end56.for.cond85.preheader_crit_edge
  %40 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reserved_pebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp87364 = icmp sgt i32 %41, 0
  br i1 %cmp87364, label %for.body88.lr.ph, label %for.cond85.preheader.for.inc117_crit_edge

for.cond85.preheader.for.inc117_crit_edge:        ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc117

for.body88.lr.ph:                                 ; preds = %for.cond85.preheader
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %6, i32 0, i32 3
  br label %for.body88

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %if.end56.for.body69_crit_edge
  %rb.1363 = phi ptr [ %call75, %for.body69.for.body69_crit_edge ], [ %call58, %if.end56.for.body69_crit_edge ]
  %pnum70 = getelementptr i8, ptr %rb.1363, i32 -28
  %42 = ptrtoint ptr %pnum70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pnum70, align 4
  %44 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx16, align 4
  %lnum72 = getelementptr i8, ptr %rb.1363, i32 -20
  %46 = ptrtoint ptr %lnum72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lnum72, align 4
  %arrayidx73 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %arrayidx73, align 4
  %call75 = tail call ptr @rb_next(ptr noundef nonnull %rb.1363) #12
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %for.body69.for.cond85.preheader_crit_edge, label %for.body69.for.body69_crit_edge

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body69

for.body69.for.cond85.preheader_crit_edge:        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond85.preheader

for.body88:                                       ; preds = %for.inc114.for.body88_crit_edge, %for.body88.lr.ph
  %j.1365 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc115, %for.inc114.for.body88_crit_edge ]
  %49 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx9, align 4
  %arrayidx90 = getelementptr i32, ptr %50, i32 %j.1365
  %51 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx90, align 4
  %53 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx16, align 4
  %arrayidx92 = getelementptr i32, ptr %54, i32 %j.1365
  %55 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %56)
  %cmp93.not = icmp eq i32 %52, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp97 = icmp eq i32 %52, -1
  %or.cond = or i1 %cmp97, %cmp93.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp100 = icmp eq i32 %56, -1
  %or.cond231 = or i1 %cmp100, %or.cond
  br i1 %or.cond231, label %for.body88.for.inc114_crit_edge, label %if.end102

for.body88.for.inc114_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc114

if.end102:                                        ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.36, i32 noundef %58, i32 noundef %j.1365, i32 noundef %56, i32 noundef %52) #12
  %59 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 1583, i32 noundef %64) #17
  tail call void @dump_stack() #17
  br label %for.inc114

for.inc114:                                       ; preds = %if.end102, %for.body88.for.inc114_crit_edge
  %inc115 = add nuw nsw i32 %j.1365, 1
  %65 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reserved_pebs, align 4
  %cmp87 = icmp slt i32 %inc115, %66
  br i1 %cmp87, label %for.inc114.for.body88_crit_edge, label %for.inc114.for.inc117_crit_edge

for.inc114.for.inc117_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc117

for.inc114.for.body88_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body88

for.inc117:                                       ; preds = %for.inc114.for.inc117_crit_edge, %for.cond85.preheader.for.inc117_crit_edge, %for.end51.for.inc117_crit_edge, %for.end.for.inc117_crit_edge, %for.body.for.inc117_crit_edge
  %inc118 = add nuw nsw i32 %i.0368, 1
  %exitcond.not = icmp eq i32 %i.0368, %1
  br i1 %exitcond.not, label %for.inc117.out_free_crit_edge, label %for.inc117.for.body_crit_edge

for.inc117.for.body_crit_edge:                    ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc117.out_free_crit_edge:                    ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

out_free.sink.split:                              ; preds = %if.end13.out_free.sink.split_crit_edge, %if.end7.out_free.sink.split_crit_edge
  %retval.0.i263391.pn = phi ptr [ %call8.i, %if.end7.out_free.sink.split_crit_edge ], [ %call8.i261, %if.end13.out_free.sink.split_crit_edge ]
  %arrayidx16352.sink = getelementptr ptr, ptr %retval.0.i263391.pn, i32 %i.0368
  %67 = ptrtoint ptr %arrayidx16352.sink to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx16352.sink, align 4
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %for.inc117.out_free_crit_edge, %if.end7.i328.out_free_crit_edge, %if.end7.i295.out_free_crit_edge
  %ret.0 = phi i32 [ -12, %out_free.sink.split ], [ 0, %for.inc117.out_free_crit_edge ], [ -12, %if.end7.i295.out_free_crit_edge ], [ -12, %if.end7.i328.out_free_crit_edge ]
  br i1 %cmp367, label %out_free.for.body122_crit_edge, label %out_free.for.end132_crit_edge

out_free.for.end132_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

out_free.for.body122_crit_edge:                   ; preds = %out_free
  br label %for.body122

for.body122:                                      ; preds = %for.inc130.for.body122_crit_edge, %out_free.for.body122_crit_edge
  %i.1373 = phi i32 [ %inc131, %for.inc130.for.body122_crit_edge ], [ 0, %out_free.for.body122_crit_edge ]
  %arrayidx124 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.1373
  %68 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx124, align 4
  %tobool125.not = icmp eq ptr %69, null
  br i1 %tobool125.not, label %for.body122.for.inc130_crit_edge, label %if.end127

for.body122.for.inc130_crit_edge:                 ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130

if.end127:                                        ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx128 = getelementptr ptr, ptr %call8.i, i32 %i.1373
  %70 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx128, align 4
  tail call void @kfree(ptr noundef %71) #12
  %arrayidx129 = getelementptr ptr, ptr %call8.i261, i32 %i.1373
  %72 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx129, align 4
  tail call void @kfree(ptr noundef %73) #12
  br label %for.inc130

for.inc130:                                       ; preds = %if.end127, %for.body122.for.inc130_crit_edge
  %inc131 = add nuw nsw i32 %i.1373, 1
  %exitcond378.not = icmp eq i32 %i.1373, %1
  br i1 %exitcond378.not, label %for.inc130.for.end132_crit_edge, label %for.inc130.for.body122_crit_edge

for.inc130.for.body122_crit_edge:                 ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body122

for.inc130.for.end132_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

for.end132:                                       ; preds = %for.inc130.for.end132_crit_edge, %out_free.for.end132_crit_edge, %for.cond.preheader.for.end132_crit_edge
  %ret.0400 = phi i32 [ %ret.0, %out_free.for.end132_crit_edge ], [ 0, %for.cond.preheader.for.end132_crit_edge ], [ %ret.0, %for.inc130.for.end132_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end132, %if.end7.i262.cleanup.sink.split_crit_edge
  %retval.0.i263391.sink = phi ptr [ %call8.i261, %for.end132 ], [ %call8.i, %if.end7.i262.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0400, %for.end132 ], [ -12, %if.end7.i262.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %retval.0.i263391.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %kmalloc_array.exit.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_find_av(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_init(ptr noundef %ubi, ptr noundef %ai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_init, %if.then)) #12
          to label %do.body4 [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !168) #12
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_init.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.39, i32 noundef %5) #12
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %ltree_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %ltree_lock, ptr noundef nonnull @.str.40, ptr noundef nonnull @ubi_eba_init.__key, i16 noundef signext 3) #12
  %alc_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %alc_mutex, ptr noundef nonnull @.str.42, ptr noundef nonnull @ubi_eba_init.__key.41) #12
  %ltree = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 23
  %6 = ptrtoint ptr %ltree to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ltree, align 4
  %max_sqnum = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 17
  %7 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %max_sqnum, align 8
  %add = add i64 %8, 1
  %global_sqnum = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 21
  %9 = ptrtoint ptr %global_sqnum to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %global_sqnum, align 8
  %vtbl_slots = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 15
  %10 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %11)
  %cmp209 = icmp ult i32 %11, 2147483647
  br i1 %cmp209, label %for.body.lr.ph, label %do.body4.for.end51_crit_edge

do.body4.for.end51_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.body.lr.ph:                                   ; preds = %do.body4
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %for.body.lr.ph
  %i.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc50.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.0210
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %for.body.for.inc50_crit_edge, label %if.end14

for.body.for.inc50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc50

if.end14:                                         ; preds = %for.body
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1634, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reserved_pebs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #12
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !178

kmalloc_array.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %err8.i

if.end7.i.i:                                      ; preds = %if.end.i
  %20 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #16
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %call7.i.i.i, align 8
  %tobool4.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.err8.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.err8.i_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err8.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23.not.i = icmp eq i32 %15, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i.ubi_eba_create_table.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.ubi_eba_create_table.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_eba_create_table.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.ubi_eba_entry, ptr %23, i32 %i.024.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.body.i.ubi_eba_create_table.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.ubi_eba_create_table.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_eba_create_table.exit

err8.i:                                           ; preds = %if.end7.i.i.err8.i_crit_edge, %kmalloc_array.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

ubi_eba_create_table.exit:                        ; preds = %for.body.i.ubi_eba_create_table.exit_crit_edge, %for.cond.preheader.i.ubi_eba_create_table.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ubi_eba_create_table.exit.cleanup_crit_edge, label %if.end21

ubi_eba_create_table.exit.cleanup_crit_edge:      ; preds = %ubi_eba_create_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %ubi_eba_create_table.exit
  %eba_tbl.i = getelementptr inbounds %struct.ubi_volume, ptr %13, i32 0, i32 24
  %25 = ptrtoint ptr %eba_tbl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eba_tbl.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end21.ubi_eba_replace_table.exit_crit_edge, label %if.end.i.i186

if.end21.ubi_eba_replace_table.exit_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_eba_replace_table.exit

if.end.i.i186:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %28) #12
  tail call void @kfree(ptr noundef nonnull %26) #12
  br label %ubi_eba_replace_table.exit

ubi_eba_replace_table.exit:                       ; preds = %if.end.i.i186, %if.end21.ubi_eba_replace_table.exit_crit_edge
  %29 = ptrtoint ptr %eba_tbl.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %eba_tbl.i, align 4
  %30 = ptrtoint ptr %vtbl_slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vtbl_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %i.0210)
  %cmp.not.i = icmp sgt i32 %31, %i.0210
  %sub.i = add nuw i32 %i.0210, 2147479551
  %add.i = sub i32 %sub.i, %31
  %retval.0.i187 = select i1 %cmp.not.i, i32 %i.0210, i32 %add.i
  %call23 = tail call ptr @ubi_find_av(ptr noundef %ai, i32 noundef %retval.0.i187) #12
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %ubi_eba_replace_table.exit.for.inc50_crit_edge, label %if.end26

ubi_eba_replace_table.exit.for.inc50_crit_edge:   ; preds = %ubi_eba_replace_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc50

if.end26:                                         ; preds = %ubi_eba_replace_table.exit
  %root = getelementptr inbounds %struct.ubi_ainf_volume, ptr %call23, i32 0, i32 9
  %call27 = tail call ptr @rb_first(ptr noundef %root) #12
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.for.inc50_crit_edge, label %if.end26.for.body32_crit_edge

if.end26.for.body32_crit_edge:                    ; preds = %if.end26
  br label %for.body32

if.end26.for.inc50_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc50

for.body32:                                       ; preds = %for.inc.for.body32_crit_edge, %if.end26.for.body32_crit_edge
  %rb.0207 = phi ptr [ %call41, %for.inc.for.body32_crit_edge ], [ %call27, %if.end26.for.body32_crit_edge ]
  %lnum = getelementptr i8, ptr %rb.0207, i32 -20
  %32 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lnum, align 4
  %34 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reserved_pebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp34.not = icmp slt i32 %33, %35
  br i1 %cmp34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %for.body32
  tail call void @rb_erase(ptr noundef %rb.0207, ptr noundef %root) #12
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rb.0207, ptr noundef %37, ptr noundef %erase) #12
  br i1 %call.i.i.i, label %if.end.i.i.i188, label %if.then35.for.inc_crit_edge

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i.i188:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rb.0207, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %rb.0207 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %erase, ptr %rb.0207, align 4
  %prev3.i.i.i = getelementptr i8, ptr %rb.0207, i32 4
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %rb.0207, ptr %37, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %eba_tbl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eba_tbl.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %arrayidx38 = getelementptr %struct.ubi_eba_entry, ptr %45, i32 %33
  %pnum = getelementptr i8, ptr %rb.0207, i32 -28
  %46 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pnum, align 4
  %48 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end.i.i.i188, %if.then35.for.inc_crit_edge
  %call41 = tail call ptr @rb_next(ptr noundef nonnull %rb.0207) #12
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %for.inc.for.inc50_crit_edge, label %for.inc.for.body32_crit_edge

for.inc.for.body32_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32

for.inc.for.inc50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc50

cleanup:                                          ; preds = %ubi_eba_create_table.exit.cleanup_crit_edge, %err8.i, %if.end14.cleanup_crit_edge
  %retval.0.i185198 = phi ptr [ inttoptr (i32 -12 to ptr), %err8.i ], [ inttoptr (i32 -12 to ptr), %if.end14.cleanup_crit_edge ], [ %call7.i.i.i, %ubi_eba_create_table.exit.cleanup_crit_edge ]
  %49 = ptrtoint ptr %retval.0.i185198 to i32
  br label %out_free

for.inc50:                                        ; preds = %for.inc.for.inc50_crit_edge, %if.end26.for.inc50_crit_edge, %ubi_eba_replace_table.exit.for.inc50_crit_edge, %for.body.for.inc50_crit_edge
  %inc = add nuw nsw i32 %i.0210, 1
  %exitcond.not = icmp eq i32 %i.0210, %11
  br i1 %exitcond.not, label %for.inc50.for.end51_crit_edge, label %for.inc50.for.body_crit_edge

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc50.for.end51_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.end51:                                        ; preds = %for.inc50.for.end51_crit_edge, %do.body4.for.end51_crit_edge
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %50 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %avail_pebs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp52 = icmp slt i32 %51, 1
  br i1 %cmp52, label %if.then53, label %if.end59

if.then53:                                        ; preds = %for.end51
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.43, i32 noundef %51, i32 noundef 1) #12
  %corr_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 64
  %52 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %corr_peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool55.not = icmp eq i32 %53, 0
  br i1 %tobool55.not, label %if.then53.out_free_crit_edge, label %if.then56

if.then53.out_free_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.44, i32 noundef %53) #12
  br label %out_free

if.end59:                                         ; preds = %for.end51
  %sub = add nsw i32 %51, -1
  %54 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub, ptr %avail_pebs, align 8
  %rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 9
  %55 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rsvd_pebs, align 4
  %add61 = add i32 %56, 1
  store i32 %add61, ptr %rsvd_pebs, align 4
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %57 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool62.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool62.not, label %if.end59.do.body79_crit_edge, label %if.then63

if.end59.do.body79_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body79

if.then63:                                        ; preds = %if.end59
  tail call void @ubi_calculate_reserved(ptr noundef %ubi) #12
  %58 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %avail_pebs, align 8
  %beb_rsvd_level = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 12
  %60 = ptrtoint ptr %beb_rsvd_level to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %beb_rsvd_level, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp65 = icmp slt i32 %59, %61
  %beb_rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 11
  br i1 %cmp65, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.then63
  %62 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %beb_rsvd_pebs, align 4
  %63 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %max_sqnum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %64)
  %cmp.i189 = icmp ugt i64 %64, 262144
  br i1 %cmp.i189, label %if.then.i, label %if.then66.if.end5.i_crit_edge

if.then66.if.end5.i_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then66
  %div.i = sdiv i32 %61, 10
  %.off.i = add i32 %61, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %.off.i)
  %65 = icmp ult i32 %.off.i, 19
  %spec.store.select.i = select i1 %65, i32 1, i32 %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %spec.store.select.i)
  %cmp2.not.i = icmp sgt i32 %59, %spec.store.select.i
  br i1 %cmp2.not.i, label %if.then.i.if.end71_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then.i.if.end71_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.then66.if.end5.i_crit_edge
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.69, i32 noundef %59, i32 noundef %61) #12
  %corr_peb_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 64
  %66 = ptrtoint ptr %corr_peb_count.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %corr_peb_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool8.not.i = icmp eq i32 %67, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end71_crit_edge, label %if.then9.i

if.end5.i.if.end71_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.44, i32 noundef %67) #12
  br label %if.end71

if.else68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %61, ptr %beb_rsvd_pebs, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then9.i, %if.end5.i.if.end71_crit_edge, %if.then.i.if.end71_crit_edge
  %beb_rsvd_pebs72 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 11
  %69 = ptrtoint ptr %beb_rsvd_pebs72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %beb_rsvd_pebs72, align 4
  %71 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %avail_pebs, align 8
  %sub74 = sub i32 %72, %70
  store i32 %sub74, ptr %avail_pebs, align 8
  %73 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rsvd_pebs, align 4
  %add77 = add i32 %74, %70
  store i32 %add77, ptr %rsvd_pebs, align 4
  br label %do.body79

do.body79:                                        ; preds = %if.end71, %if.end59.do.body79_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_eba_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_eba_init, %if.then91)) #12
          to label %cleanup111 [label %if.then91], !srcloc !180

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  %75 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i190 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i190 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task93, align 8
  %pid94 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid94 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid94, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_eba_init.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.45, i32 noundef %80) #12
  br label %cleanup111

out_free:                                         ; preds = %if.then56, %if.then53.out_free_crit_edge, %cleanup
  %err.2 = phi i32 [ %49, %cleanup ], [ -28, %if.then56 ], [ -28, %if.then53.out_free_crit_edge ]
  br i1 %cmp209, label %out_free.for.body100_crit_edge, label %out_free.cleanup111_crit_edge

out_free.cleanup111_crit_edge:                    ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

out_free.for.body100_crit_edge:                   ; preds = %out_free
  br label %for.body100

for.body100:                                      ; preds = %for.inc108.for.body100_crit_edge, %out_free.for.body100_crit_edge
  %i.1213 = phi i32 [ %inc109, %for.inc108.for.body100_crit_edge ], [ 0, %out_free.for.body100_crit_edge ]
  %arrayidx102 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 5, i32 %i.1213
  %81 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq ptr %82, null
  br i1 %tobool103.not, label %for.body100.for.inc108_crit_edge, label %if.end105

for.body100.for.inc108_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc108

if.end105:                                        ; preds = %for.body100
  %eba_tbl.i191 = getelementptr inbounds %struct.ubi_volume, ptr %82, i32 0, i32 24
  %83 = ptrtoint ptr %eba_tbl.i191 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eba_tbl.i191, align 4
  %tobool.not.i.i192 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i192, label %if.end105.ubi_eba_replace_table.exit194_crit_edge, label %if.end.i.i193

if.end105.ubi_eba_replace_table.exit194_crit_edge: ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_eba_replace_table.exit194

if.end.i.i193:                                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  tail call void @kfree(ptr noundef %86) #12
  tail call void @kfree(ptr noundef nonnull %84) #12
  br label %ubi_eba_replace_table.exit194

ubi_eba_replace_table.exit194:                    ; preds = %if.end.i.i193, %if.end105.ubi_eba_replace_table.exit194_crit_edge
  %87 = ptrtoint ptr %eba_tbl.i191 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %eba_tbl.i191, align 4
  br label %for.inc108

for.inc108:                                       ; preds = %ubi_eba_replace_table.exit194, %for.body100.for.inc108_crit_edge
  %inc109 = add nuw nsw i32 %i.1213, 1
  %exitcond218.not = icmp eq i32 %i.1213, %11
  br i1 %exitcond218.not, label %for.inc108.cleanup111_crit_edge, label %for.inc108.for.body100_crit_edge

for.inc108.for.body100_crit_edge:                 ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body100

for.inc108.cleanup111_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

cleanup111:                                       ; preds = %for.inc108.cleanup111_crit_edge, %out_free.cleanup111_crit_edge, %if.then91, %do.body79
  %retval.0 = phi i32 [ 0, %if.then91 ], [ 0, %do.body79 ], [ %err.2, %out_free.cleanup111_crit_edge ], [ %err.2, %for.inc108.cleanup111_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_calculate_reserved(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ltree_add_entry(ptr noundef %ubi, i32 noundef %vol_id, i32 noundef %lnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 120) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %users = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call7.i, i32 0, i32 3
  %1 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %users, align 4
  %mutex = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call7.i, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %mutex, ptr noundef nonnull @.str.46, ptr noundef nonnull @ltree_add_entry.__key) #12
  %vol_id2 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %vol_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %vol_id, ptr %vol_id2, align 4
  %lnum3 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %lnum3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %lnum, ptr %lnum3, align 8
  %ltree_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %ltree_lock) #12
  %ltree.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 23
  %4 = ptrtoint ptr %ltree.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.035.i = load ptr, ptr %ltree.i, align 4
  %tobool.not36.i = icmp eq ptr %p.035.i, null
  br i1 %tobool.not36.i, label %if.end.while.end_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %p.037.i = phi ptr [ %p.0.i, %cleanup.i.while.body.i_crit_edge ], [ %p.035.i, %if.end.while.body.i_crit_edge ]
  %vol_id1.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.037.i, i32 0, i32 1
  %5 = ptrtoint ptr %vol_id1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vol_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %vol_id)
  %cmp.i = icmp sgt i32 %6, %vol_id
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %vol_id)
  %cmp3.i = icmp slt i32 %6, %vol_id
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 1
  br label %cleanup.i

if.else5.i:                                       ; preds = %if.else.i
  %lnum6.i = getelementptr inbounds %struct.ubi_ltree_entry, ptr %p.037.i, i32 0, i32 2
  %7 = ptrtoint ptr %lnum6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lnum6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %lnum)
  %cmp7.i = icmp sgt i32 %8, %lnum
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 2
  br label %cleanup.i

if.else10.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %lnum)
  %cmp12.i = icmp slt i32 %8, %lnum
  br i1 %cmp12.i, label %if.then13.i, label %if.else10.i.if.end42_crit_edge

if.else10.i.if.end42_crit_edge:                   ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right14.i = getelementptr inbounds %struct.rb_node, ptr %p.037.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then13.i, %if.then8.i, %if.then4.i, %if.then.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ], [ %rb_left9.i, %if.then8.i ], [ %rb_right14.i, %if.then13.i ]
  %9 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %if.else, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.else:                                          ; preds = %cleanup.i
  %10 = ptrtoint ptr %ltree.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %ltree.i, align 4
  %tobool7.not84 = icmp eq ptr %.pr, null
  br i1 %tobool7.not84, label %if.else.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %if.else.while.body_crit_edge
  %11 = phi ptr [ %27, %if.end39.while.body_crit_edge ], [ %.pr, %if.else.while.body_crit_edge ]
  %p.085 = phi ptr [ %p.1, %if.end39.while.body_crit_edge ], [ %ltree.i, %if.else.while.body_crit_edge ]
  %vol_id8 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %vol_id8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vol_id8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vol_id)
  %cmp = icmp sgt i32 %13, %vol_id
  br i1 %cmp, label %if.then9, label %if.else10

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %if.end39

if.else10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vol_id)
  %cmp12 = icmp slt i32 %13, %vol_id
  br i1 %cmp12, label %if.then13, label %do.body15

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %if.end39

do.body15:                                        ; preds = %if.else10
  %lnum16 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %lnum16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %lnum)
  %cmp17.not = icmp eq i32 %15, %lnum
  br i1 %cmp17.not, label %do.end24, label %do.body15.do.end30_crit_edge, !prof !178

do.body15.do.end30_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

do.end24:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.47, i32 noundef 292, i32 noundef %21) #17
  tail call void @dump_stack() #17
  br label %do.end30

do.end30:                                         ; preds = %do.end24, %do.body15.do.end30_crit_edge
  %22 = ptrtoint ptr %lnum16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lnum16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %lnum)
  %cmp32 = icmp sgt i32 %23, %lnum
  %24 = ptrtoint ptr %p.085 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p.085, align 4
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left34 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  br label %if.end39

if.else35:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right36 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then33, %if.then13, %if.then9
  %p.1 = phi ptr [ %rb_left, %if.then9 ], [ %rb_right, %if.then13 ], [ %rb_left34, %if.then33 ], [ %rb_right36, %if.else35 ]
  %26 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p.1, align 4
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %while.cond.while.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le = ptrtoint ptr %11 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.else.while.end_crit_edge, %if.end.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %ltree.i, %if.else.while.end_crit_edge ], [ %ltree.i, %if.end.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.else.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %parent.0.lcssa, ptr %call7.i, align 8
  %rb_right.i79 = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %rb_right.i79 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rb_right.i79, align 4
  %rb_left.i80 = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 2
  %30 = ptrtoint ptr %rb_left.i80 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_left.i80, align 8
  %31 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i, ptr noundef %ltree.i) #12
  br label %if.end42

if.end42:                                         ; preds = %while.end, %if.else10.i.if.end42_crit_edge
  %le_free.0 = phi ptr [ null, %while.end ], [ %call7.i, %if.else10.i.if.end42_crit_edge ]
  %le.0 = phi ptr [ %call7.i, %while.end ], [ %p.037.i, %if.else10.i.if.end42_crit_edge ]
  %users43 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %le.0, i32 0, i32 3
  %32 = ptrtoint ptr %users43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %users43, align 4
  %add = add i32 %33, 1
  store i32 %add, ptr %users43, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ltree_lock) #12
  tail call void @kfree(ptr noundef %le_free.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %le.0, %if.end42 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_get_peb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !25, !26, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !125, !127, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !148, !149, !150, !152, !154, !156, !157, !158, !160, !162, !164, !165, !166}
!llvm.named.register.sp = !{!168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/eba.c", i32 179, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ubi_eba_copy_table._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ubi_eba_copy_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/eba.c", i32 467, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ubi_eba_unmap_leb.__UNIQUE_ID_ddebug230, !7, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/ubi/eba.c", i32 620, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ubi_eba_read_leb.__UNIQUE_ID_ddebug231, !12, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!15 = !{ptr @ubi_eba_read_leb._entry, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/mtd/ubi/eba.c", i32 623, i32 3}
!17 = !{ptr @ubi_eba_read_leb._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/ubi/eba.c", i32 628, i32 2}
!20 = !{ptr @ubi_eba_read_leb.__UNIQUE_ID_ddebug232, !19, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/ubi/eba.c", i32 657, i32 20}
!23 = !{ptr @ubi_eba_read_leb._entry.10, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/mtd/ubi/eba.c", i32 686, i32 3}
!25 = !{ptr @ubi_eba_read_leb._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ubi_eba_read_leb._entry.12, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/mtd/ubi/eba.c", i32 687, i32 3}
!28 = !{ptr @ubi_eba_read_leb._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/ubi/eba.c", i32 702, i32 18}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/ubi/eba.c", i32 713, i32 18}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/ubi/eba.c", i32 756, i32 3}
!35 = !{ptr @ubi_eba_read_leb_sg._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ubi_eba_read_leb_sg._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/ubi/eba.c", i32 1029, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ubi_eba_write_leb.__UNIQUE_ID_ddebug234, !38, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/ubi/eba.c", i32 1034, i32 18}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/ubi/eba.c", i32 1074, i32 16}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/ubi/eba.c", i32 1125, i32 3}
!47 = !{ptr @ubi_eba_write_leb_st._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ubi_eba_write_leb_st._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ubi_eba_write_leb_st._entry.22, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/mtd/ubi/eba.c", i32 1149, i32 2}
!51 = !{ptr @ubi_eba_write_leb_st._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/ubi/eba.c", i32 1233, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ubi_eba_atomic_leb_change.__UNIQUE_ID_ddebug235, !53, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/ubi/eba.c", i32 1309, i32 2}
!58 = !{ptr @ubi_eba_copy_leb._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ubi_eba_copy_leb._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/ubi/eba.c", i32 1314, i32 2}
!62 = !{ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug236, !61, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/eba.c", i32 1335, i32 3}
!65 = !{ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug237, !64, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/ubi/eba.c", i32 1356, i32 3}
!68 = !{ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug238, !67, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ubi/eba.c", i32 1366, i32 3}
!71 = !{ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug239, !70, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/ubi/eba.c", i32 1379, i32 2}
!74 = !{ptr @ubi_eba_copy_leb.__UNIQUE_ID_ddebug240, !73, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ubi/eba.c", i32 1382, i32 17}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/ubi/eba.c", i32 1432, i32 18}
!79 = !{ptr @ubi_eba_copy_leb._entry.34, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/mtd/ubi/eba.c", i32 1452, i32 2}
!81 = !{ptr @ubi_eba_copy_leb._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/ubi/eba.c", i32 1580, i32 18}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/ubi/eba.c", i32 1583, i32 5}
!86 = !{ptr @self_check_eba._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @self_check_eba._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/ubi/eba.c", i32 1618, i32 2}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ubi_eba_init.__UNIQUE_ID_ddebug241, !89, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!92 = !{ptr @ubi_eba_init.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/mtd/ubi/eba.c", i32 1620, i32 2}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ubi_eba_init.__key.41, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/mtd/ubi/eba.c", i32 1621, i32 2}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/ubi/eba.c", i32 1665, i32 16}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/ubi/eba.c", i32 1668, i32 17}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/ubi/eba.c", i32 1690, i32 2}
!104 = !{ptr @ubi_eba_init.__UNIQUE_ID_ddebug242, !103, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!105 = !{ptr @ltree_add_entry.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/mtd/ubi/eba.c", i32 259, i32 2}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/ubi/eba.c", i32 292, i32 5}
!110 = !{ptr @ltree_add_entry._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ltree_add_entry._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/ubi/eba.c", i32 419, i32 2}
!114 = !{ptr @leb_write_unlock._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @leb_write_unlock._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/ubi/eba.c", i32 525, i32 5}
!118 = !{ptr @check_mapping._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @check_mapping._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/ubi/eba.c", i32 538, i32 16}
!122 = !{ptr @check_mapping._entry.51, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/mtd/ubi/eba.c", i32 545, i32 3}
!124 = !{ptr @check_mapping._entry_ptr.52, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/ubi/eba.c", i32 552, i32 17}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/ubi/eba.c", i32 343, i32 2}
!129 = !{ptr @leb_read_unlock._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @leb_read_unlock._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/ubi/ubi.h", i32 1160, i32 17}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/ubi/ubi.h", i32 1136, i32 2}
!135 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ubi_io_read_data._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @ubi_io_read_data._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/ubi/ubi.h", i32 1148, i32 2}
!140 = !{ptr @ubi_io_write_data._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ubi_io_write_data._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/ubi/eba.c", i32 921, i32 16}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/ubi/eba.c", i32 823, i32 15}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/ubi/eba.c", i32 834, i32 2}
!148 = !{ptr @try_recover_peb._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @try_recover_peb._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/ubi/eba.c", i32 873, i32 16}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/ubi/eba.c", i32 880, i32 17}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/ubi/eba.c", i32 959, i32 2}
!156 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @try_write_vid_and_data.__UNIQUE_ID_ddebug233, !155, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/ubi/eba.c", i32 964, i32 17}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/ubi/eba.c", i32 973, i32 6}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/ubi/eba.c", i32 396, i32 2}
!164 = !{ptr @leb_write_trylock._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @leb_write_trylock._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/ubi/eba.c", i32 1497, i32 16}
!168 = !{!"sp"}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{!"branch_weights", i32 4001, i32 4000000}
!180 = !{i64 2148246335, i64 2148246340, i64 2148246353, i64 2148246397, i64 2148246431, i64 2148246452}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2154110982, i64 2154111474, i64 2154111019, i64 2154111075, i64 2154111109, i64 2154111133, i64 2154111174, i64 2154111195, i64 2154111223, i64 2154111257}
