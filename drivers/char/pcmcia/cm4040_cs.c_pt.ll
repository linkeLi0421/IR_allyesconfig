; ModuleID = '/llk/IR_all_yes/drivers/char/pcmcia/cm4040_cs.c_pt.bc'
source_filename = "../drivers/char/pcmcia/cm4040_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reader_dev = type { ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, [512 x i8], [512 x i8], %struct.timer_list }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.71 = type { ptr }

@reader_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str.1, ptr @reader_probe, ptr @reader_detach, ptr null, ptr null, ptr null, ptr @cm4040_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmx\00", [28 x i8] zeroinitializer }, align 32
@cmx_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cm4040_cs__290_682_cm4040_init6 = internal global ptr @cm4040_init, section ".initcall6.init", align 4
@__exitcall_cm4040_exit = internal global ptr @cm4040_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"cm4040_cs.file=drivers/char/pcmcia/cm4040_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"cm4040_cs.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cm4040_cs\00", [22 x i8] zeroinitializer }, align 32
@cm4040_ids = internal constant { [3 x %struct.pcmcia_device_id], [36 x i8] } { [3 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 547, i16 512, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -483598964, i32 -1893518965, i32 0, i32 0], [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@dev_table = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@reader_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->devq\00", [21 x i8] zeroinitializer }, align 32
@reader_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->poll_wait\00", [16 x i8] zeroinitializer }, align 32
@reader_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->read_wait\00", [16 x i8] zeroinitializer }, align 32
@reader_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->write_wait\00", [47 x i8] zeroinitializer }, align 32
@reader_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&dev->poll_timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cmx%d\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cm4040_do_poll.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm4040_do_poll\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/pcmcia/cm4040_cs.c\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:waking up read_wait\0A\00", [40 x i8] zeroinitializer }, align 32
@cm4040_do_poll.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.13, ptr @.str.15, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:waking up write_wait\0A\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@reader_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.13, i32 534, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pcmcia_enable_device failed 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reader_config\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@reader_config._entry_ptr = internal global ptr @reader_config._entry, section ".printk_index", align 4
@reader_config.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.13, ptr @.str.20, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:device cmx%d at %pR\0A\00", [40 x i8] zeroinitializer }, align 32
@reader_config.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.13, ptr @.str.21, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:<- reader_config (succ)\0A\00", [36 x i8] zeroinitializer }, align 32
@cm4040_reader_release.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.13, ptr @.str.23, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cm4040_reader_release\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:-> cm4040_reader_release\0A\00", [35 x i8] zeroinitializer }, align 32
@cm4040_reader_release.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.13, ptr @.str.24, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:cm4040_cs: delaying release until process has terminated\0A\00", [35 x i8] zeroinitializer }, align 32
@cm4040_reader_release.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.13, ptr @.str.25, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:<- cm4040_reader_release\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OMNIKEY\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CardMan 4040\00", [19 x i8] zeroinitializer }, align 32
@cm4040_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cardman_4040\00", [19 x i8] zeroinitializer }, align 32
@reader_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @cm4040_read, ptr @cm4040_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cm4040_poll, ptr null, ptr null, ptr null, i32 0, ptr @cm4040_open, ptr null, ptr @cm4040_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cm4040_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.13, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014cm4040_cs: could not get major number\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm4040_init\00", [20 x i8] zeroinitializer }, align 32
@cm4040_init._entry_ptr = internal global ptr @cm4040_init._entry, section ".printk_index", align 4
@cm4040_read.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.32, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm4040_read\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:-> cm4040_read(%s,%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.33, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:filep->f_flags O_NONBLOCK set\0A\00", [62 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.34, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:<- cm4040_read (failure)\0A\00", [35 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.35, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:wait_for_bulk_in_ready rc=%.2x\0A\00", [61 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.36, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:<- cm4040_read (failed)\0A\00", [36 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.37, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:BytesToRead=%zu\0A\00", [44 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.38, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s:Min=%zu\0A\00", [20 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.35, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_read.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.36, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_read.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.35, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_read.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.36, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_read.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.39, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:write_sync_reg c=%.2x\0A\00", [38 x i8] zeroinitializer }, align 32
@cm4040_read.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.36, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_read.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.13, ptr @.str.40, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:<- cm4040_read (successfully)\0A\00", [62 x i8] zeroinitializer }, align 32
@wait_for_bulk_in_ready.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.13, ptr @.str.42, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wait_for_bulk_in_ready\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:BulkIn full (i=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@wait_for_bulk_in_ready.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.13, ptr @.str.43, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:wait_event_interruptible_timeout(timeout=%ld\0A\00", [47 x i8] zeroinitializer }, align 32
@wait_for_bulk_in_ready.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.13, ptr @.str.44, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:woke up: BulkIn full\0A\00", [39 x i8] zeroinitializer }, align 32
@wait_for_bulk_in_ready.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.13, ptr @.str.45, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:woke up: BulkIn not full, returning 0 :(\0A\00", [51 x i8] zeroinitializer }, align 32
@wait_for_bulk_in_ready.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.13, ptr @.str.46, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:woke up: signal arrived\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wait_for_bulk_out_ready.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.13, ptr @.str.51, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wait_for_bulk_out_ready\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:BulkOut empty (i=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@wait_for_bulk_out_ready.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.13, ptr @.str.43, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wait_for_bulk_out_ready.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.13, ptr @.str.52, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:woke up: BulkOut empty\0A\00", [37 x i8] zeroinitializer }, align 32
@wait_for_bulk_out_ready.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.13, ptr @.str.53, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:woke up: BulkOut full, returning 0 :(\0A\00", [54 x i8] zeroinitializer }, align 32
@wait_for_bulk_out_ready.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.13, ptr @.str.46, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_write.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.55, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm4040_write\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:-> cm4040_write(%s,%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.56, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:<- cm4040_write empty read (successfully)\0A\00", [50 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.57, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:<- cm4040_write buffersize=%zd < 5\0A\00", [57 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.33, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_write.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.58, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:<- cm4040_write (failure)\0A\00", [34 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.59, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:write_sync_reg c=%.2zx\0A\00", [37 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.60, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:<- cm4040_write (failed)\0A\00", [35 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.61, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:start \0A\00", [21 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.62, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:wait_for_bulk_out_ready rc=%.2zx\0A\00", [59 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.60, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_write.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.63, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:end\0A\00", [24 x i8] zeroinitializer }, align 32
@cm4040_write.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.59, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_write.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.60, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cm4040_write.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.13, ptr @.str.64, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:<- cm4040_write (successfully)\0A\00", [61 x i8] zeroinitializer }, align 32
@cm4040_poll.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.13, ptr @.str.66, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm4040_poll\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:<- cm4040_poll(%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@cm4040_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cm4040_mutex, i64 52), ptr getelementptr (i8, ptr @cm4040_mutex, i64 52) }, ptr @cm4040_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cm4040_open.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.13, ptr @.str.33, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm4040_open\00", [20 x i8] zeroinitializer }, align 32
@cm4040_open.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.13, ptr @.str.68, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:<- cm4040_open (successfully)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cm4040_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm4040_mutex\00", [19 x i8] zeroinitializer }, align 32
@cm4040_close.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.13, ptr @.str.72, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm4040_close\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:-> cm4040_close(maj/min=%d.%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cm4040_close.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.13, ptr @.str.73, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:<- cm4040_close\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 98, i64 105, i64 111, i64 116, i64 137]
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"reader_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 641, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 64, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 678, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"cmx_class\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 65, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 643, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"cm4040_ids\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 633, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"dev_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 83, i32 30 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 582, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 583, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 584, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 585, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 586, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 595, i32 56 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 115, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 122, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 533, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 540, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 542, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 505, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 507, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 511, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 635, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 653, i32 14 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"reader_fops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 623, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 659, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 225, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 234, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 235, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 245, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 246, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 262, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 267, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 302, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 312, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 194, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 199, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 206, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 208, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 210, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 230, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 214, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 174, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 146, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 159, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 161, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 325, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 328, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 333, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 339, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 376, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 377, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 384, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 389, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 400, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 413, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 429, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [13 x i8] c"cm4040_mutex\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 460, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 469, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 51, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 482, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [35 x i8] c"../drivers/char/pcmcia/cm4040_cs.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 497, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cm4040_exit, ptr @__initcall__kmod_cm4040_cs__290_682_cm4040_init6, ptr @cm4040_exit, ptr @cm4040_init._entry, ptr @cm4040_init._entry_ptr, ptr @reader_config._entry, ptr @reader_config._entry_ptr, ptr @reader_driver, ptr @major, ptr @.str, ptr @cmx_class, ptr @.str.1, ptr @cm4040_ids, ptr @dev_table, ptr @reader_probe.__key, ptr @.str.2, ptr @reader_probe.__key.3, ptr @.str.4, ptr @reader_probe.__key.5, ptr @.str.6, ptr @reader_probe.__key.7, ptr @.str.8, ptr @reader_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @cm4040_init.__key, ptr @.str.28, ptr @reader_fops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @cm4040_mutex, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmx_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4040_ids to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4040_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4040_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4040_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cm4040_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @reader_driver) #8
  %0 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #8
  %1 = load ptr, ptr @cmx_class, align 4
  tail call void @class_destroy(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4040_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @cm4040_init.__key) #8
  store ptr %call, ptr @cmx_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @reader_fops) #8
  store i32 %call.i, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  %1 = load ptr, ptr @cmx_class, align 4
  tail call void @class_destroy(ptr noundef %1) #8
  %2 = load i32, ptr @major, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @reader_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %3, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #8
  %4 = load ptr, ptr @cmx_class, align 4
  tail call void @class_destroy(ptr noundef %4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %2, %do.end ], [ %call8, %if.then10 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reader_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dev_table, align 4
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %1, null
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %2 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %2, null
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %3, null
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.053.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1292) #12
  %cmp5 = icmp eq ptr %call7.i.i, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %timeout = getelementptr inbounds %struct.reader_dev, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 300, ptr %timeout, align 8
  %buffer_status = getelementptr inbounds %struct.reader_dev, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %buffer_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buffer_status, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %priv, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %link, ptr %call7.i.i, align 8
  %arrayidx8 = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %i.053.lcssa
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %link, ptr %arrayidx8, align 4
  %devq = getelementptr inbounds %struct.reader_dev, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %devq, ptr noundef nonnull @.str.2, ptr noundef nonnull @reader_probe.__key) #8
  %poll_wait = getelementptr inbounds %struct.reader_dev, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait, ptr noundef nonnull @.str.4, ptr noundef nonnull @reader_probe.__key.3) #8
  %read_wait = getelementptr inbounds %struct.reader_dev, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %read_wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @reader_probe.__key.5) #8
  %write_wait = getelementptr inbounds %struct.reader_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @reader_probe.__key.7) #8
  %poll_timer = getelementptr inbounds %struct.reader_dev, ptr %call7.i.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %poll_timer, ptr noundef nonnull @cm4040_do_poll, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @reader_probe.__key.9) #8
  %call21 = tail call fastcc i32 @reader_config(ptr noundef %link, i32 noundef %i.053.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx8, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load ptr, ptr @cmx_class, align 4
  %12 = load i32, ptr @major, align 4
  %shl = shl i32 %12, 20
  %or = or i32 %shl, %i.053.lcssa
  %call25 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %11, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef %i.053.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22, %if.end4.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then22 ], [ 0, %if.end24 ], [ -12, %if.end4.cleanup_crit_edge ], [ -19, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reader_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load ptr, ptr @dev_table, align 4
  %cmp1 = icmp eq ptr %2, %link
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc:                                          ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %3, %link
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %4 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %4, %link
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %5 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %5, %link
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %devno.017.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ]
  tail call fastcc void @cm4040_reader_release(ptr noundef %link) #8
  tail call void @pcmcia_disable_device(ptr noundef %link) #8
  %arrayidx5 = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %devno.017.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx5, align 4
  tail call void @kfree(ptr noundef %1) #8
  %7 = load ptr, ptr @cmx_class, align 4
  %8 = load i32, ptr @major, align 4
  %shl = shl i32 %8, 20
  %or = or i32 %shl, %devno.017.lcssa
  tail call void @device_destroy(ptr noundef %7, i32 noundef %or) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.inc.2.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm4040_do_poll(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1244
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %conv = zext i8 %7 to i32
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %buffer_status16 = getelementptr i8, ptr %t, i32 -1032
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_set_bit(i32 noundef 1, ptr noundef %buffer_status16) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_do_poll.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_do_poll, %if.then11)) #8
          to label %do.end15 [label %if.then11], !srcloc !229

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %dev13 = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_do_poll.__UNIQUE_ID_ddebug236, ptr noundef %dev13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %if.then
  %read_wait = getelementptr i8, ptr %t, i32 -1136
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %buffer_status16) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %do.end15
  %and18 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %buffer_status21 = getelementptr i8, ptr %t, i32 -1032
  br i1 %tobool19.not, label %if.then20, label %if.else43

if.then20:                                        ; preds = %if.end17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %buffer_status21) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_do_poll.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_do_poll, %if.then35)) #8
          to label %do.end42 [label %if.then35], !srcloc !229

if.then35:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %dev37 = getelementptr inbounds %struct.pcmcia_device, ptr %11, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_do_poll.__UNIQUE_ID_ddebug237, ptr noundef %dev37, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #8
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %if.then20
  %write_wait = getelementptr i8, ptr %t, i32 -1084
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end45

if.else43:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %buffer_status21) #8
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %do.end42
  %buffer_status46 = getelementptr i8, ptr %t, i32 -1032
  %12 = ptrtoint ptr %buffer_status46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_status46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool47.not = icmp eq i32 %13, 0
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %poll_wait = getelementptr i8, ptr %t, i32 -1188
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add51 = add i32 %14, 1
  %call52 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add51) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reader_config(ptr noundef %link, i32 noundef %devno) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %0 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_flags, align 4
  %or = or i32 %1, 2048
  store i32 %or, ptr %config_flags, align 4
  %call = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @cm4040_config_check, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cs_release_crit_edge

entry.cs_release_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs_release

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.16, i32 noundef %call1) #11
  br label %cs_release

if.end4:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reader_config.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reader_config, %if.then11)) #8
          to label %do.body19 [label %if.then11], !srcloc !229

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev12 = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reader_config.__UNIQUE_ID_ddebug288, ptr noundef %dev12, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %devno, ptr noundef %7) #8
  br label %do.body19

do.body19:                                        ; preds = %if.then11, %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reader_config.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reader_config, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !229

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev33 = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reader_config.__UNIQUE_ID_ddebug289, ptr noundef %dev33, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17) #8
  br label %cleanup

cs_release:                                       ; preds = %do.end, %entry.cs_release_crit_edge
  tail call fastcc void @cm4040_reader_release(ptr noundef %link) #8
  tail call void @pcmcia_disable_device(ptr noundef %link) #8
  br label %cleanup

cleanup:                                          ; preds = %cs_release, %if.then31, %do.body19
  %retval.0 = phi i32 [ -19, %cs_release ], [ 0, %if.then31 ], [ 0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4040_config_check(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cm4040_reader_release(ptr nocapture noundef readonly %link) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_reader_release.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_reader_release, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_reader_release.__UNIQUE_ID_ddebug285, ptr noundef %dev4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not90 = icmp eq i32 %5, 0
  br i1 %tobool7.not90, label %do.end6.do.body49_crit_edge, label %do.body9.lr.ph

do.end6.do.body49_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.body9.lr.ph:                                   ; preds = %do.end6
  %devq = getelementptr inbounds %struct.reader_dev, ptr %1, i32 0, i32 1
  br label %do.body9

do.body9:                                         ; preds = %do.end47.do.body9_crit_edge, %do.body9.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_reader_release.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_reader_release, %if.then21)) #8
          to label %do.body30 [label %if.then21], !srcloc !229

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev23 = getelementptr inbounds %struct.pcmcia_device, ptr %7, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_reader_release.__UNIQUE_ID_ddebug286, ptr noundef %dev23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #8
  br label %do.body30

do.body30:                                        ; preds = %if.then21, %do.body9
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 509) #8
  %8 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.body30.do.body49_crit_edge, label %if.end38

do.body30.do.body49_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

if.end38:                                         ; preds = %do.body30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call3988 = call i32 @prepare_to_wait_event(ptr noundef %devq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %11 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4189 = icmp eq i32 %12, 0
  br i1 %cmp4189, label %if.end38.do.end47_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  br label %cleanup

if.end38.do.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  call void @schedule() #8
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %devq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %open, align 4
  %cmp41 = icmp eq i32 %14, 0
  br i1 %cmp41, label %cleanup.do.end47_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.do.end47_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end47:                                         ; preds = %cleanup.do.end47_crit_edge, %if.end38.do.end47_crit_edge
  call void @finish_wait(ptr noundef %devq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  %15 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %open, align 4
  %tobool7.not = icmp eq i32 %.pr, 0
  br i1 %tobool7.not, label %do.end47.do.body49_crit_edge, label %do.end47.do.body9_crit_edge

do.end47.do.body9_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.end47.do.body49_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.body49:                                        ; preds = %do.end47.do.body49_crit_edge, %do.body30.do.body49_crit_edge, %do.end6.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_reader_release.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_reader_release, %if.then61)) #8
          to label %do.end68 [label %if.then61], !srcloc !229

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev63 = getelementptr inbounds %struct.pcmcia_device, ptr %17, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_reader_release.__UNIQUE_ID_ddebug287, ptr noundef %dev63, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then61, %do.body49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4040_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef writeonly %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then)) #8
          to label %do.end10 [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 21
  %10 = tail call i32 @llvm.read_register.i32(metadata !217) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug248, ptr noundef %dev5, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef %comm, i32 noundef %15) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end12

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count)
  %cmp13 = icmp ult i32 %count, 10
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end60, label %do.body19

do.body19:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then31)) #8
          to label %do.body40 [label %if.then31], !srcloc !229

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev33 = getelementptr inbounds %struct.pcmcia_device, ptr %19, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug249, ptr noundef %dev33, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then31, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then52)) #8
          to label %cleanup [label %if.then52], !srcloc !229

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev54 = getelementptr inbounds %struct.pcmcia_device, ptr %21, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug250, ptr noundef %dev54, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end15
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call62 = tail call ptr @pcmcia_dev_present(ptr noundef %23) #8
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end60.cleanup_crit_edge, label %for.cond.preheader

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end60
  %and116 = and i32 %7, 1048575
  %add117 = or i32 %and116, -18874368
  %24 = inttoptr i32 %add117 to ptr
  %call67 = tail call fastcc i32 @wait_for_bulk_in_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 1
  br i1 %cmp68, label %for.cond.preheader.do.body71_crit_edge, label %if.end115

for.cond.preheader.do.body71_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

do.body71:                                        ; preds = %if.end115.3.do.body71_crit_edge, %if.end115.2.do.body71_crit_edge, %if.end115.1.do.body71_crit_edge, %if.end115.do.body71_crit_edge, %for.cond.preheader.do.body71_crit_edge
  %call67.lcssa = phi i32 [ %call67, %for.cond.preheader.do.body71_crit_edge ], [ %call67.1, %if.end115.do.body71_crit_edge ], [ %call67.2, %if.end115.1.do.body71_crit_edge ], [ %call67.3, %if.end115.2.do.body71_crit_edge ], [ %call67.4, %if.end115.3.do.body71_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then83)) #8
          to label %do.body92 [label %if.then83], !srcloc !229

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev85 = getelementptr inbounds %struct.pcmcia_device, ptr %26, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug251, ptr noundef %dev85, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef %call67.lcssa) #8
  br label %do.body92

do.body92:                                        ; preds = %if.then83, %do.body71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then104)) #8
          to label %do.end111 [label %if.then104], !srcloc !229

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev106 = getelementptr inbounds %struct.pcmcia_device, ptr %28, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug252, ptr noundef %dev106, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31) #8
  br label %do.end111

do.end111:                                        ; preds = %if.then104, %do.body92
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call67.lcssa)
  %cmp112 = icmp eq i32 %call67.lcssa, -512
  %. = select i1 %cmp112, i32 -512, i32 -5
  br label %cleanup

if.end115:                                        ; preds = %for.cond.preheader
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %arrayidx121 = getelementptr %struct.reader_dev, ptr %1, i32 0, i32 8, i32 0
  %30 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx121, align 1
  %call67.1 = tail call fastcc i32 @wait_for_bulk_in_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.1)
  %cmp68.1 = icmp slt i32 %call67.1, 1
  br i1 %cmp68.1, label %if.end115.do.body71_crit_edge, label %if.end115.1

if.end115.do.body71_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.end115.1:                                      ; preds = %if.end115
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %arrayidx121.1 = getelementptr %struct.reader_dev, ptr %1, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx121.1, align 1
  %call67.2 = tail call fastcc i32 @wait_for_bulk_in_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.2)
  %cmp68.2 = icmp slt i32 %call67.2, 1
  br i1 %cmp68.2, label %if.end115.1.do.body71_crit_edge, label %if.end115.2

if.end115.1.do.body71_crit_edge:                  ; preds = %if.end115.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.end115.2:                                      ; preds = %if.end115.1
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %arrayidx121.2 = getelementptr %struct.reader_dev, ptr %1, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %arrayidx121.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx121.2, align 1
  %call67.3 = tail call fastcc i32 @wait_for_bulk_in_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.3)
  %cmp68.3 = icmp slt i32 %call67.3, 1
  br i1 %cmp68.3, label %if.end115.2.do.body71_crit_edge, label %if.end115.3

if.end115.2.do.body71_crit_edge:                  ; preds = %if.end115.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.end115.3:                                      ; preds = %if.end115.2
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %arrayidx121.3 = getelementptr %struct.reader_dev, ptr %1, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %arrayidx121.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx121.3, align 1
  %call67.4 = tail call fastcc i32 @wait_for_bulk_in_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.4)
  %cmp68.4 = icmp slt i32 %call67.4, 1
  br i1 %cmp68.4, label %if.end115.3.do.body71_crit_edge, label %if.end115.4

if.end115.3.do.body71_crit_edge:                  ; preds = %if.end115.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.end115.4:                                      ; preds = %if.end115.3
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %arrayidx121.4 = getelementptr %struct.reader_dev, ptr %1, i32 0, i32 8, i32 4
  %38 = ptrtoint ptr %arrayidx121.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx121.4, align 1
  %39 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx121.1, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then138)) #8
          to label %do.end145 [label %if.then138], !srcloc !229

if.then138:                                       ; preds = %if.end115.4
  call void @__sanitizer_cov_trace_pc() #10
  %add124 = add i32 %41, 5
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev140 = getelementptr inbounds %struct.pcmcia_device, ptr %43, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug253, ptr noundef %dev140, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.31, i32 noundef %add124) #8
  br label %do.end145

do.end145:                                        ; preds = %if.then138, %if.end115.4
  %add146 = add i32 %41, 10
  %44 = tail call i32 @llvm.umin.i32(i32 %add146, i32 %count)
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 512)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then168)) #8
          to label %do.end175 [label %if.then168], !srcloc !229

if.then168:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %dev170 = getelementptr inbounds %struct.pcmcia_device, ptr %47, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug258, ptr noundef %dev170, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.31, i32 noundef %45) #8
  br label %do.end175

do.end175:                                        ; preds = %if.then168, %do.end145
  %sub = add nsw i32 %45, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp177498.not = icmp eq i32 %sub, 0
  br i1 %cmp177498.not, label %do.end175.for.end240_crit_edge, label %do.end175.for.body178_crit_edge

do.end175.for.body178_crit_edge:                  ; preds = %do.end175
  br label %for.body178

do.end175.for.end240_crit_edge:                   ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end240

for.body178:                                      ; preds = %if.end227.for.body178_crit_edge, %do.end175.for.body178_crit_edge
  %i.1499 = phi i32 [ %inc239, %if.end227.for.body178_crit_edge ], [ 0, %do.end175.for.body178_crit_edge ]
  %call179 = tail call fastcc i32 @wait_for_bulk_in_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call179)
  %cmp180 = icmp slt i32 %call179, 1
  br i1 %cmp180, label %do.body183, label %if.end227

do.body183:                                       ; preds = %for.body178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then195)) #8
          to label %do.body204 [label %if.then195], !srcloc !229

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %dev197 = getelementptr inbounds %struct.pcmcia_device, ptr %49, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug259, ptr noundef %dev197, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef %call179) #8
  br label %do.body204

do.body204:                                       ; preds = %if.then195, %do.body183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then216)) #8
          to label %do.end223 [label %if.then216], !srcloc !229

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev218 = getelementptr inbounds %struct.pcmcia_device, ptr %51, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug260, ptr noundef %dev218, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31) #8
  br label %do.end223

do.end223:                                        ; preds = %if.then216, %do.body204
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call179)
  %cmp224 = icmp eq i32 %call179, -512
  %.439 = select i1 %cmp224, i32 -512, i32 -5
  br label %cleanup

if.end227:                                        ; preds = %for.body178
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %add236 = add i32 %i.1499, 5
  %arrayidx237 = getelementptr %struct.reader_dev, ptr %1, i32 0, i32 8, i32 %add236
  %53 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx237, align 1
  %inc239 = add nuw i32 %i.1499, 1
  %exitcond.not = icmp eq i32 %inc239, %sub
  br i1 %exitcond.not, label %if.end227.for.end240_crit_edge, label %if.end227.for.body178_crit_edge

if.end227.for.body178_crit_edge:                  ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body178

if.end227.for.end240_crit_edge:                   ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end240

for.end240:                                       ; preds = %if.end227.for.end240_crit_edge, %do.end175.for.end240_crit_edge
  %conv = zext i32 %45 to i64
  %54 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv, ptr %ppos, align 8
  tail call void @__check_object_size(ptr noundef %arrayidx121, i32 noundef %45, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.49, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %for.end240.copy_to_user.exit_crit_edge, label %if.end.i.i

for.end240.copy_to_user.exit_crit_edge:           ; preds = %for.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %for.end240
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %45, i32 -1226833920) #13, !srcloc !232
  %asmresult.i.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx121, i32 noundef %45) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx121, i32 noundef %45) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %for.end240.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %45, %for.end240.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %45, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool244.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool244.not, label %if.end246, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end246:                                        ; preds = %copy_to_user.exit
  %call247 = tail call fastcc i32 @wait_for_bulk_in_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call247)
  %cmp248 = icmp slt i32 %call247, 1
  br i1 %cmp248, label %do.body252, label %if.end297

do.body252:                                       ; preds = %if.end246
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then264)) #8
          to label %do.body273 [label %if.then264], !srcloc !229

if.then264:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %dev266 = getelementptr inbounds %struct.pcmcia_device, ptr %57, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug261, ptr noundef %dev266, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef %call247) #8
  br label %do.body273

do.body273:                                       ; preds = %if.then264, %do.body252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then285)) #8
          to label %do.end292 [label %if.then285], !srcloc !229

if.then285:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %dev287 = getelementptr inbounds %struct.pcmcia_device, ptr %59, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug262, ptr noundef %dev287, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31) #8
  br label %do.end292

do.end292:                                        ; preds = %if.then285, %do.body273
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call247)
  %cmp293 = icmp eq i32 %call247, -512
  %.440 = select i1 %cmp293, i32 -512, i32 -5
  br label %cleanup

if.end297:                                        ; preds = %if.end246
  %call298 = tail call fastcc i32 @write_sync_reg(i8 noundef zeroext 8, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call298)
  %cmp299 = icmp slt i32 %call298, 1
  br i1 %cmp299, label %do.body303, label %if.end347

do.body303:                                       ; preds = %if.end297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then315)) #8
          to label %do.body324 [label %if.then315], !srcloc !229

if.then315:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev317 = getelementptr inbounds %struct.pcmcia_device, ptr %61, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug263, ptr noundef %dev317, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.31, i32 noundef %call298) #8
  br label %do.body324

do.body324:                                       ; preds = %if.then315, %do.body303
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then336)) #8
          to label %do.end343 [label %if.then336], !srcloc !229

if.then336:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %dev338 = getelementptr inbounds %struct.pcmcia_device, ptr %63, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug264, ptr noundef %dev338, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31) #8
  br label %do.end343

do.end343:                                        ; preds = %if.then336, %do.body324
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call298)
  %cmp344 = icmp eq i32 %call298, -512
  %.441 = select i1 %cmp344, i32 -512, i32 -5
  br label %cleanup

if.end347:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_read.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_read, %if.then368)) #8
          to label %cleanup [label %if.then368], !srcloc !229

if.then368:                                       ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %dev370 = getelementptr inbounds %struct.pcmcia_device, ptr %66, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_read.__UNIQUE_ID_ddebug265, ptr noundef %dev370, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.31) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then368, %if.end347, %do.end343, %do.end292, %copy_to_user.exit.cleanup_crit_edge, %do.end223, %do.end111, %if.end60.cleanup_crit_edge, %if.then52, %do.body40, %if.end12.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end10.cleanup_crit_edge ], [ -14, %if.end12.cleanup_crit_edge ], [ -11, %if.then52 ], [ -19, %if.end60.cleanup_crit_edge ], [ %., %do.end111 ], [ %.439, %do.end223 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ %.440, %do.end292 ], [ %.441, %do.end343 ], [ %45, %if.then368 ], [ -11, %do.body40 ], [ %45, %if.end347 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4040_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then)) #8
          to label %do.end10 [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 21
  %10 = tail call i32 @llvm.read_register.i32(metadata !217) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug266, ptr noundef %dev5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, ptr noundef %comm, i32 noundef %15) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body13, label %if.end33

do.body13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then25)) #8
          to label %cleanup [label %if.then25], !srcloc !229

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev27 = getelementptr inbounds %struct.pcmcia_device, ptr %17, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug267, ptr noundef %dev27, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #8
  br label %cleanup

if.end33:                                         ; preds = %do.end10
  %18 = add i32 %count, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -508, i32 %18)
  %19 = icmp ult i32 %18, -508
  br i1 %19, label %do.body38, label %if.end58

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then50)) #8
          to label %cleanup [label %if.then50], !srcloc !229

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev52 = getelementptr inbounds %struct.pcmcia_device, ptr %21, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug268, ptr noundef %dev52, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef %count) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end33
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.end103, label %do.body62

do.body62:                                        ; preds = %if.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then74)) #8
          to label %do.body83 [label %if.then74], !srcloc !229

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev76 = getelementptr inbounds %struct.pcmcia_device, ptr %25, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug269, ptr noundef %dev76, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.54) #8
  br label %do.body83

do.body83:                                        ; preds = %if.then74, %do.body62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then95)) #8
          to label %cleanup [label %if.then95], !srcloc !229

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev97 = getelementptr inbounds %struct.pcmcia_device, ptr %27, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug270, ptr noundef %dev97, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54) #8
  br label %cleanup

if.end103:                                        ; preds = %if.end58
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call105 = tail call ptr @pcmcia_dev_present(ptr noundef %29) #8
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.end103.cleanup_crit_edge, label %if.end108

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end108:                                        ; preds = %if.end103
  %s_buf = getelementptr inbounds %struct.reader_dev, ptr %1, i32 0, i32 7
  tail call void @__check_object_size(ptr noundef %s_buf, i32 noundef %count, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.49, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end108.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end108.if.then11.i.i_crit_edge:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end108
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #13, !srcloc !234
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !235

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_buf, i32 noundef %count) #8
  %31 = tail call i32 @llvm.read_register.i32(metadata !217) #8
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !236
  %and.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %s_buf, ptr noundef %buf, i32 noundef %count) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end113, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !235

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end108.if.then11.i.i_crit_edge
  %res.0.i.i443 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.end108.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i443
  %add.ptr.i.i = getelementptr i8, ptr %s_buf, i32 %sub.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i443)
  br label %cleanup

if.end113:                                        ; preds = %if.end.i.i
  %35 = ptrtoint ptr %s_buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s_buf, align 4
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %36, label %sw.default [
    i8 111, label %if.end113.sw.epilog_crit_edge
    i8 105, label %if.end113.sw.epilog_crit_edge467
    i8 116, label %if.end113.sw.epilog_crit_edge468
    i8 -119, label %if.end113.sw.epilog_crit_edge469
    i8 98, label %sw.bb116
  ]

if.end113.sw.epilog_crit_edge469:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end113.sw.epilog_crit_edge468:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end113.sw.epilog_crit_edge467:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end113.sw.epilog_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb116, %if.end113.sw.epilog_crit_edge, %if.end113.sw.epilog_crit_edge467, %if.end113.sw.epilog_crit_edge468, %if.end113.sw.epilog_crit_edge469
  %.sink = phi i32 [ 300, %sw.default ], [ 3500, %sw.bb116 ], [ 15000, %if.end113.sw.epilog_crit_edge ], [ 15000, %if.end113.sw.epilog_crit_edge467 ], [ 15000, %if.end113.sw.epilog_crit_edge468 ], [ 15000, %if.end113.sw.epilog_crit_edge469 ]
  %timeout119 = getelementptr inbounds %struct.reader_dev, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %timeout119 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %timeout119, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %call.i = tail call fastcc i32 @wait_for_bulk_out_ready(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %sw.epilog.do.body125_crit_edge, label %write_sync_reg.exit

sw.epilog.do.body125_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

write_sync_reg.exit:                              ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void @arm_heavy_mb() #8
  %add.i = add i32 %44, 2
  %and.i434 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i434, -18874368
  %45 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 -128) #8, !srcloc !240
  %call3.i = tail call fastcc i32 @wait_for_bulk_out_ready(ptr noundef %1) #8
  %46 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp121 = icmp slt i32 %call3.i, 1
  br i1 %cmp121, label %write_sync_reg.exit.do.body125_crit_edge, label %do.body171

write_sync_reg.exit.do.body125_crit_edge:         ; preds = %write_sync_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body125

do.body125:                                       ; preds = %write_sync_reg.exit.do.body125_crit_edge, %sw.epilog.do.body125_crit_edge
  %retval.0.i435448 = phi i32 [ %46, %write_sync_reg.exit.do.body125_crit_edge ], [ %call.i, %sw.epilog.do.body125_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then137)) #8
          to label %do.body146 [label %if.then137], !srcloc !229

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %dev139 = getelementptr inbounds %struct.pcmcia_device, ptr %48, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug271, ptr noundef %dev139, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i435448) #8
  br label %do.body146

do.body146:                                       ; preds = %if.then137, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then158)) #8
          to label %do.end165 [label %if.then158], !srcloc !229

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %dev160 = getelementptr inbounds %struct.pcmcia_device, ptr %50, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug272, ptr noundef %dev160, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.54) #8
  br label %do.end165

do.end165:                                        ; preds = %if.then158, %do.body146
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %retval.0.i435448)
  %cmp166 = icmp eq i32 %retval.0.i435448, -512
  %. = select i1 %cmp166, i32 -512, i32 -5
  br label %cleanup

do.body171:                                       ; preds = %write_sync_reg.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then183)) #8
          to label %for.body.lr.ph [label %if.then183], !srcloc !229

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %dev185 = getelementptr inbounds %struct.pcmcia_device, ptr %52, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug273, ptr noundef %dev185, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.54) #8
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then183, %do.body171
  %and249 = and i32 %7, 1048575
  %add250 = or i32 %and249, -18874368
  %53 = inttoptr i32 %add250 to ptr
  br label %for.body

for.body:                                         ; preds = %do.body244.for.body_crit_edge, %for.body.lr.ph
  %i.0460 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body244.for.body_crit_edge ]
  %call193 = tail call fastcc i32 @wait_for_bulk_out_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call193)
  %cmp194 = icmp slt i32 %call193, 1
  br i1 %cmp194, label %do.body198, label %do.body244

do.body198:                                       ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then210)) #8
          to label %do.body219 [label %if.then210], !srcloc !229

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %dev212 = getelementptr inbounds %struct.pcmcia_device, ptr %55, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug274, ptr noundef %dev212, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.54, i32 noundef %call193) #8
  br label %do.body219

do.body219:                                       ; preds = %if.then210, %do.body198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then231)) #8
          to label %do.end238 [label %if.then231], !srcloc !229

if.then231:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %dev233 = getelementptr inbounds %struct.pcmcia_device, ptr %57, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug275, ptr noundef %dev233, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.54) #8
  br label %do.end238

do.end238:                                        ; preds = %if.then231, %do.body219
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call193)
  %cmp239 = icmp eq i32 %call193, -512
  %.393 = select i1 %cmp239, i32 -512, i32 -5
  br label %cleanup

do.body244:                                       ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %arrayidx248 = getelementptr %struct.reader_dev, ptr %1, i32 0, i32 7, i32 %i.0460
  %58 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx248, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %59) #8, !srcloc !240
  %inc = add nuw i32 %i.0460, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %do.body253, label %do.body244.for.body_crit_edge

do.body244.for.body_crit_edge:                    ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body253:                                       ; preds = %do.body244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then265)) #8
          to label %do.end272 [label %if.then265], !srcloc !229

if.then265:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev267 = getelementptr inbounds %struct.pcmcia_device, ptr %61, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug276, ptr noundef %dev267, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.54) #8
  br label %do.end272

do.end272:                                        ; preds = %if.then265, %do.body253
  %call273 = tail call fastcc i32 @write_sync_reg(i8 noundef zeroext 4, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call273)
  %cmp274 = icmp slt i32 %call273, 1
  br i1 %cmp274, label %do.body278, label %do.body325

do.body278:                                       ; preds = %do.end272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then290)) #8
          to label %do.body299 [label %if.then290], !srcloc !229

if.then290:                                       ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %dev292 = getelementptr inbounds %struct.pcmcia_device, ptr %63, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug277, ptr noundef %dev292, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, i32 noundef %call273) #8
  br label %do.body299

do.body299:                                       ; preds = %if.then290, %do.body278
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then311)) #8
          to label %do.end318 [label %if.then311], !srcloc !229

if.then311:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %dev313 = getelementptr inbounds %struct.pcmcia_device, ptr %65, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug278, ptr noundef %dev313, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.54) #8
  br label %do.end318

do.end318:                                        ; preds = %if.then311, %do.body299
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call273)
  %cmp319 = icmp eq i32 %call273, -512
  %.394 = select i1 %cmp319, i32 -512, i32 -5
  br label %cleanup

do.body325:                                       ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_write.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_write, %if.then337)) #8
          to label %cleanup [label %if.then337], !srcloc !229

if.then337:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %dev339 = getelementptr inbounds %struct.pcmcia_device, ptr %67, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_write.__UNIQUE_ID_ddebug279, ptr noundef %dev339, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then337, %do.body325, %do.end318, %do.end238, %do.end165, %if.then11.i.i, %if.end103.cleanup_crit_edge, %if.then95, %do.body83, %if.then50, %do.body38, %if.then25, %do.body13
  %retval.0 = phi i32 [ 0, %if.then25 ], [ -5, %if.then50 ], [ -11, %if.then95 ], [ -19, %if.end103.cleanup_crit_edge ], [ %., %do.end165 ], [ %.393, %do.end238 ], [ %.394, %do.end318 ], [ %count, %if.then337 ], [ 0, %do.body13 ], [ -5, %do.body38 ], [ -11, %do.body83 ], [ %count, %do.body325 ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4040_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %poll_wait = getelementptr inbounds %struct.reader_dev, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %poll_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %poll_wait, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %buffer_status = getelementptr inbounds %struct.reader_dev, ptr %1, i32 0, i32 5
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 65
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %or5 = or i32 %spec.select, 260
  %mask.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_poll.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_poll, %if.then12)) #8
          to label %do.end16 [label %if.then12], !srcloc !229

if.then12:                                        ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev13 = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_poll.__UNIQUE_ID_ddebug280, ptr noundef %dev13, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %mask.1) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %poll_wait.exit
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4040_open(ptr noundef %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cm4040_mutex, i32 noundef 0) #8
  %arrayidx = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call ptr @pcmcia_dev_present(ptr noundef nonnull %3) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end4

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %lor.lhs.false
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end20, label %do.body10

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_open.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_open, %if.then15)) #8
          to label %out [label %if.then15], !srcloc !229

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %dev16 = getelementptr inbounds %struct.pcmcia_device, ptr %12, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_open.__UNIQUE_ID_ddebug281, ptr noundef %dev16, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.67) #8
  br label %out

if.end20:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %open, align 4
  %poll_timer = getelementptr inbounds %struct.reader_dev, ptr %7, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 1
  %call23 = tail call i32 @mod_timer(ptr noundef %poll_timer, i32 noundef %add) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_open.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_open, %if.then37)) #8
          to label %do.end44 [label %if.then37], !srcloc !229

if.then37:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %dev39 = getelementptr inbounds %struct.pcmcia_device, ptr %16, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_open.__UNIQUE_ID_ddebug282, ptr noundef %dev39, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %if.end20
  %call45 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #8
  br label %out

out:                                              ; preds = %do.end44, %if.then15, %do.body10, %if.end4.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call45, %do.end44 ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %if.end.out_crit_edge ], [ -16, %if.end4.out_crit_edge ], [ -11, %if.then15 ], [ -11, %do.body10 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cm4040_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4040_close(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_close.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_close, %if.then)) #8
          to label %do.end9 [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %7, 20
  %and.i50 = and i32 %7, 1048575
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_close.__UNIQUE_ID_ddebug283, ptr noundef %dev5, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef %shr.i, i32 noundef %and.i50) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 3
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end11

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %do.end9
  %arrayidx = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %and.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp12 = icmp eq ptr %9, null
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %poll_timer.i = getelementptr inbounds %struct.reader_dev, ptr %1, i32 0, i32 9
  %call.i = tail call i32 @del_timer_sync(ptr noundef %poll_timer.i) #8
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %open, align 4
  %devq = getelementptr inbounds %struct.reader_dev, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %devq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm4040_close.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm4040_close, %if.then28)) #8
          to label %cleanup [label %if.then28], !srcloc !229

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev30 = getelementptr inbounds %struct.pcmcia_device, ptr %12, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm4040_close.__UNIQUE_ID_ddebug284, ptr noundef %dev30, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end14, %if.end11.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end9.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_bulk_in_ready(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0230 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp4.not = icmp eq i8 %8, 0
  br i1 %cmp4.not, label %for.inc, label %do.body6

do.body6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_in_ready, %if.then11)) #8
          to label %cleanup173 [label %if.then11], !srcloc !229

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.pcmcia_device, ptr %10, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug243, ptr noundef %dev13, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %i.0230) #8
  br label %cleanup173

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0230, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body18, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body18:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_in_ready, %if.then30)) #8
          to label %do.end37 [label %if.then30], !srcloc !229

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev32 = getelementptr inbounds %struct.pcmcia_device, ptr %12, i32 0, i32 21
  %timeout = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug244, ptr noundef %dev32, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %14) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then30, %do.body18
  %timeout38 = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %timeout38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout38, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 204) #8
  %buffer_status = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 5
  %call45 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool50.not = icmp eq i32 %16, 0
  %spec.store.select = select i1 %tobool50.not, i32 1, i32 %16
  %__ret.0 = select i1 %tobool46.not, i32 %16, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool56.not = icmp eq i32 %__ret.0, 0
  %not.tobool46.not = xor i1 %tobool46.not, true
  %17 = select i1 %not.tobool46.not, i1 true, i1 %tobool56.not
  br i1 %17, label %do.end37.if.end95_crit_edge, label %if.then60

do.end37.if.end95_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then60:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %19 = ptrtoint ptr %timeout38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout38, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %read_wait = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 3
  %call64231 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call67232 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67232)
  %tobool68.not233 = icmp eq i32 %call67232, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool73.not234 = icmp eq i32 %20, 0
  %spec.store.select176235 = select i1 %tobool73.not234, i32 1, i32 %20
  %__ret61.1236 = select i1 %tobool68.not233, i32 %20, i32 %spec.store.select176235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1236)
  %tobool80.not237 = icmp eq i32 %__ret61.1236, 0
  %not.tobool68.not238 = xor i1 %tobool68.not233, true
  %21 = select i1 %not.tobool68.not238, i1 true, i1 %tobool80.not237
  br i1 %21, label %if.then60.for.end92_crit_edge, label %if.then60.if.end87_crit_edge

if.then60.if.end87_crit_edge:                     ; preds = %if.then60
  br label %if.end87

if.then60.for.end92_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92

if.end87:                                         ; preds = %cleanup.if.end87_crit_edge, %if.then60.if.end87_crit_edge
  %__ret61.1240 = phi i32 [ %__ret61.1, %cleanup.if.end87_crit_edge ], [ %__ret61.1236, %if.then60.if.end87_crit_edge ]
  %call64239 = phi i32 [ %call64, %cleanup.if.end87_crit_edge ], [ %call64231, %if.then60.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64239)
  %tobool88.not = icmp eq i32 %call64239, 0
  br i1 %tobool88.not, label %cleanup, label %if.end87.__out_crit_edge

if.end87.__out_crit_edge:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end87
  %call91 = call i32 @schedule_timeout(i32 noundef %__ret61.1240) #8
  %call64 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call67 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool73.not = icmp eq i32 %call91, 0
  %spec.store.select176 = select i1 %tobool73.not, i32 1, i32 %call91
  %__ret61.1 = select i1 %tobool68.not, i32 %call91, i32 %spec.store.select176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1)
  %tobool80.not = icmp eq i32 %__ret61.1, 0
  %not.tobool68.not = xor i1 %tobool68.not, true
  %22 = select i1 %not.tobool68.not, i1 true, i1 %tobool80.not
  br i1 %22, label %cleanup.for.end92_crit_edge, label %cleanup.if.end87_crit_edge

cleanup.if.end87_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

cleanup.for.end92_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92

for.end92:                                        ; preds = %cleanup.for.end92_crit_edge, %if.then60.for.end92_crit_edge
  %__ret61.1.lcssa = phi i32 [ %__ret61.1236, %if.then60.for.end92_crit_edge ], [ %__ret61.1, %cleanup.for.end92_crit_edge ]
  call void @finish_wait(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end92, %if.end87.__out_crit_edge
  %__ret61.2218 = phi i32 [ %__ret61.1.lcssa, %for.end92 ], [ %call64239, %if.end87.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end95

if.end95:                                         ; preds = %__out, %do.end37.if.end95_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %do.end37.if.end95_crit_edge ], [ %__ret61.2218, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp97 = icmp sgt i32 %__ret.1, 0
  br i1 %cmp97, label %do.body101, label %if.else

do.body101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_in_ready, %if.then113)) #8
          to label %cleanup173 [label %if.then113], !srcloc !229

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev115 = getelementptr inbounds %struct.pcmcia_device, ptr %24, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug245, ptr noundef %dev115, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41) #8
  br label %cleanup173

if.else:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp121 = icmp eq i32 %__ret.1, 0
  br i1 %cmp121, label %do.body125, label %do.body150

do.body125:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_in_ready, %if.then137)) #8
          to label %cleanup173 [label %if.then137], !srcloc !229

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %dev139 = getelementptr inbounds %struct.pcmcia_device, ptr %26, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug246, ptr noundef %dev139, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41) #8
  br label %cleanup173

do.body150:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_in_ready, %if.then162)) #8
          to label %cleanup173 [label %if.then162], !srcloc !229

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dev164 = getelementptr inbounds %struct.pcmcia_device, ptr %28, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug247, ptr noundef %dev164, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41) #8
  br label %cleanup173

cleanup173:                                       ; preds = %if.then162, %do.body150, %if.then137, %do.body125, %if.then113, %do.body101, %if.then11, %do.body6
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.then137 ], [ %__ret.1, %if.then162 ], [ %__ret.1, %if.then113 ], [ 1, %do.body6 ], [ %__ret.1, %do.body101 ], [ 0, %do.body125 ], [ %__ret.1, %do.body150 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_sync_reg(i8 noundef zeroext %val, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call = tail call fastcc i32 @wait_for_bulk_out_ready(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void @arm_heavy_mb() #8
  %add = add i32 %5, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %val) #8, !srcloc !240
  %call3 = tail call fastcc i32 @wait_for_bulk_out_ready(ptr noundef %dev)
  %7 = tail call i32 @llvm.smin.i32(i32 %call3, i32 1)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %7, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_bulk_out_ready(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0230 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp4 = icmp eq i8 %8, 0
  br i1 %cmp4, label %do.body6, label %for.inc

do.body6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_out_ready, %if.then11)) #8
          to label %cleanup173 [label %if.then11], !srcloc !229

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.pcmcia_device, ptr %10, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug238, ptr noundef %dev13, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %i.0230) #8
  br label %cleanup173

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0230, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body18, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body18:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_out_ready, %if.then30)) #8
          to label %do.end37 [label %if.then30], !srcloc !229

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev32 = getelementptr inbounds %struct.pcmcia_device, ptr %12, i32 0, i32 21
  %timeout = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug239, ptr noundef %dev32, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.50, i32 noundef %14) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then30, %do.body18
  %timeout38 = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %timeout38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout38, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 156) #8
  %buffer_status = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 5
  %call45 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool50.not = icmp eq i32 %16, 0
  %spec.store.select = select i1 %tobool50.not, i32 1, i32 %16
  %__ret.0 = select i1 %tobool46.not, i32 %16, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool56.not = icmp eq i32 %__ret.0, 0
  %not.tobool46.not = xor i1 %tobool46.not, true
  %17 = select i1 %not.tobool46.not, i1 true, i1 %tobool56.not
  br i1 %17, label %do.end37.if.end95_crit_edge, label %if.then60

do.end37.if.end95_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then60:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %19 = ptrtoint ptr %timeout38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout38, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %write_wait = getelementptr inbounds %struct.reader_dev, ptr %dev, i32 0, i32 4
  %call64231 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call67232 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67232)
  %tobool68.not233 = icmp eq i32 %call67232, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool73.not234 = icmp eq i32 %20, 0
  %spec.store.select176235 = select i1 %tobool73.not234, i32 1, i32 %20
  %__ret61.1236 = select i1 %tobool68.not233, i32 %20, i32 %spec.store.select176235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1236)
  %tobool80.not237 = icmp eq i32 %__ret61.1236, 0
  %not.tobool68.not238 = xor i1 %tobool68.not233, true
  %21 = select i1 %not.tobool68.not238, i1 true, i1 %tobool80.not237
  br i1 %21, label %if.then60.for.end92_crit_edge, label %if.then60.if.end87_crit_edge

if.then60.if.end87_crit_edge:                     ; preds = %if.then60
  br label %if.end87

if.then60.for.end92_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92

if.end87:                                         ; preds = %cleanup.if.end87_crit_edge, %if.then60.if.end87_crit_edge
  %__ret61.1240 = phi i32 [ %__ret61.1, %cleanup.if.end87_crit_edge ], [ %__ret61.1236, %if.then60.if.end87_crit_edge ]
  %call64239 = phi i32 [ %call64, %cleanup.if.end87_crit_edge ], [ %call64231, %if.then60.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64239)
  %tobool88.not = icmp eq i32 %call64239, 0
  br i1 %tobool88.not, label %cleanup, label %if.end87.__out_crit_edge

if.end87.__out_crit_edge:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end87
  %call91 = call i32 @schedule_timeout(i32 noundef %__ret61.1240) #8
  %call64 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call67 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %buffer_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool73.not = icmp eq i32 %call91, 0
  %spec.store.select176 = select i1 %tobool73.not, i32 1, i32 %call91
  %__ret61.1 = select i1 %tobool68.not, i32 %call91, i32 %spec.store.select176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1)
  %tobool80.not = icmp eq i32 %__ret61.1, 0
  %not.tobool68.not = xor i1 %tobool68.not, true
  %22 = select i1 %not.tobool68.not, i1 true, i1 %tobool80.not
  br i1 %22, label %cleanup.for.end92_crit_edge, label %cleanup.if.end87_crit_edge

cleanup.if.end87_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

cleanup.for.end92_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92

for.end92:                                        ; preds = %cleanup.for.end92_crit_edge, %if.then60.for.end92_crit_edge
  %__ret61.1.lcssa = phi i32 [ %__ret61.1236, %if.then60.for.end92_crit_edge ], [ %__ret61.1, %cleanup.for.end92_crit_edge ]
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end92, %if.end87.__out_crit_edge
  %__ret61.2218 = phi i32 [ %__ret61.1.lcssa, %for.end92 ], [ %call64239, %if.end87.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end95

if.end95:                                         ; preds = %__out, %do.end37.if.end95_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %do.end37.if.end95_crit_edge ], [ %__ret61.2218, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp97 = icmp sgt i32 %__ret.1, 0
  br i1 %cmp97, label %do.body101, label %if.else

do.body101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_out_ready, %if.then113)) #8
          to label %cleanup173 [label %if.then113], !srcloc !229

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev115 = getelementptr inbounds %struct.pcmcia_device, ptr %24, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug240, ptr noundef %dev115, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #8
  br label %cleanup173

if.else:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp121 = icmp eq i32 %__ret.1, 0
  br i1 %cmp121, label %do.body125, label %do.body150

do.body125:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_out_ready, %if.then137)) #8
          to label %cleanup173 [label %if.then137], !srcloc !229

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %dev139 = getelementptr inbounds %struct.pcmcia_device, ptr %26, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug241, ptr noundef %dev139, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50) #8
  br label %cleanup173

do.body150:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_for_bulk_out_ready, %if.then162)) #8
          to label %cleanup173 [label %if.then162], !srcloc !229

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dev164 = getelementptr inbounds %struct.pcmcia_device, ptr %28, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug242, ptr noundef %dev164, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.50) #8
  br label %cleanup173

cleanup173:                                       ; preds = %if.then162, %do.body150, %if.then137, %do.body125, %if.then113, %do.body101, %if.then11, %do.body6
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.then137 ], [ %__ret.1, %if.then162 ], [ %__ret.1, %if.then113 ], [ 1, %do.body6 ], [ %__ret.1, %do.body101 ], [ 0, %do.body125 ], [ %__ret.1, %do.body150 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !114, !115, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !143, !145, !146, !147, !149, !151, !152, !154, !155, !157, !159, !160, !161, !163, !164, !166, !167, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !188, !189, !191, !193, !195, !196, !198, !199, !200, !202, !203, !205, !206, !208, !209, !210, !212, !213, !214, !216}
!llvm.named.register.sp = !{!217}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 678, i32 27}
!2 = !{ptr @__initcall__kmod_cm4040_cs__290_682_cm4040_init6, !3, !"__initcall__kmod_cm4040_cs__290_682_cm4040_init6", i1 false, i1 false}
!3 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 682, i32 1}
!4 = !{ptr @__exitcall_cm4040_exit, !5, !"__exitcall_cm4040_exit", i1 false, i1 false}
!5 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 683, i32 1}
!6 = !{ptr @__UNIQUE_ID_file291, !7, !"__UNIQUE_ID_file291", i1 false, i1 false}
!7 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 684, i32 1}
!8 = !{ptr @__UNIQUE_ID_license292, !7, !"__UNIQUE_ID_license292", i1 false, i1 false}
!9 = !{ptr @major, !10, !"major", i1 false, i1 false}
!10 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 64, i32 12}
!11 = !{ptr @cmx_class, !12, !"cmx_class", i1 false, i1 false}
!12 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 65, i32 22}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 643, i32 11}
!15 = !{ptr @reader_driver, !16, !"reader_driver", i1 false, i1 false}
!16 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 641, i32 29}
!17 = !{ptr @reader_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 582, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @reader_probe.__key.3, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 583, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @reader_probe.__key.5, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 584, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @reader_probe.__key.7, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 585, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @reader_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 586, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 595, i32 56}
!34 = !{ptr @dev_table, !35, !"dev_table", i1 false, i1 false}
!35 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 83, i32 30}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 115, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cm4040_do_poll.__UNIQUE_ID_ddebug236, !37, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 122, i32 3}
!43 = !{ptr @cm4040_do_poll.__UNIQUE_ID_ddebug237, !42, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 533, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @reader_config._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @reader_config._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 540, i32 2}
!53 = !{ptr @reader_config.__UNIQUE_ID_ddebug288, !52, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 542, i32 2}
!56 = !{ptr @reader_config.__UNIQUE_ID_ddebug289, !55, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 505, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cm4040_reader_release.__UNIQUE_ID_ddebug285, !58, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 507, i32 3}
!63 = !{ptr @cm4040_reader_release.__UNIQUE_ID_ddebug286, !62, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 511, i32 2}
!66 = !{ptr @cm4040_reader_release.__UNIQUE_ID_ddebug287, !65, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 635, i32 2}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @cm4040_ids, !71, !"cm4040_ids", i1 false, i1 false}
!71 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 633, i32 38}
!72 = !{ptr @cm4040_init.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 653, i32 14}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 659, i32 3}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cm4040_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cm4040_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @reader_fops, !81, !"reader_fops", i1 false, i1 false}
!81 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 623, i32 37}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 225, i32 2}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug248, !83, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 234, i32 3}
!88 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug249, !87, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 235, i32 3}
!91 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug250, !90, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 245, i32 4}
!94 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug251, !93, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 246, i32 4}
!97 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug252, !96, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 262, i32 2}
!100 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug253, !99, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 267, i32 2}
!103 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug258, !102, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!104 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug259, !105, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!105 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 272, i32 4}
!106 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug260, !107, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!107 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 273, i32 4}
!108 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug261, !109, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!109 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 293, i32 3}
!110 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug262, !111, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!111 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 294, i32 3}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 302, i32 3}
!114 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug263, !113, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!115 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug264, !116, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!116 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 303, i32 3}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 312, i32 2}
!119 = !{ptr @cm4040_read.__UNIQUE_ID_ddebug265, !118, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 194, i32 4}
!122 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug243, !121, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 199, i32 2}
!126 = !{ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug244, !125, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 206, i32 3}
!129 = !{ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug245, !128, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 208, i32 3}
!132 = !{ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug246, !131, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 210, i32 3}
!135 = !{ptr @wait_for_bulk_in_ready.__UNIQUE_ID_ddebug247, !134, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!138 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 146, i32 4}
!145 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug238, !144, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!147 = !{ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug239, !148, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!148 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 151, i32 2}
!149 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 159, i32 3}
!151 = !{ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug240, !150, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!152 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 161, i32 3}
!154 = !{ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug241, !153, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!155 = !{ptr @wait_for_bulk_out_ready.__UNIQUE_ID_ddebug242, !156, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!156 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 163, i32 3}
!157 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 325, i32 2}
!159 = !{ptr @.str.55, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug266, !158, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 328, i32 3}
!163 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug267, !162, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!164 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 333, i32 3}
!166 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug268, !165, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!167 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug269, !168, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!168 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 338, i32 3}
!169 = !{ptr @.str.58, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 339, i32 3}
!171 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug270, !170, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 376, i32 3}
!174 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug271, !173, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!175 = !{ptr @.str.60, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 377, i32 3}
!177 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug272, !176, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 384, i32 2}
!180 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug273, !179, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!181 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 389, i32 4}
!183 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug274, !182, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!184 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug275, !185, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!185 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 391, i32 4}
!186 = !{ptr @.str.63, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 400, i32 2}
!188 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug276, !187, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!189 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug277, !190, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!190 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 405, i32 3}
!191 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug278, !192, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!192 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 406, i32 3}
!193 = !{ptr @.str.64, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 413, i32 2}
!195 = !{ptr @cm4040_write.__UNIQUE_ID_ddebug279, !194, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!196 = !{ptr @.str.65, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 429, i32 2}
!198 = !{ptr @.str.66, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @cm4040_poll.__UNIQUE_ID_ddebug280, !197, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!200 = !{ptr @.str.67, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 460, i32 3}
!202 = !{ptr @cm4040_open.__UNIQUE_ID_ddebug281, !201, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!203 = !{ptr @.str.68, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 469, i32 2}
!205 = !{ptr @cm4040_open.__UNIQUE_ID_ddebug282, !204, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!206 = !{ptr @.str.69, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 51, i32 8}
!208 = !{ptr @.str.70, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @cm4040_mutex, !207, !"cm4040_mutex", i1 false, i1 false}
!210 = !{ptr @.str.71, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 482, i32 2}
!212 = !{ptr @.str.72, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @cm4040_close.__UNIQUE_ID_ddebug283, !211, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!214 = !{ptr @.str.73, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/char/pcmcia/cm4040_cs.c", i32 497, i32 2}
!216 = !{ptr @cm4040_close.__UNIQUE_ID_ddebug284, !215, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
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
!227 = !{i64 5707894}
!228 = !{i64 2154504360}
!229 = !{i64 2148705386, i64 2148705391, i64 2148705404, i64 2148705448, i64 2148705482, i64 2148705503}
!230 = !{i64 2154555349}
!231 = !{i64 2154569306}
!232 = !{i64 2152824119, i64 2152824144}
!233 = !{i64 2154583970}
!234 = !{i64 2152823438, i64 2152823463}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{i64 5318993}
!237 = !{i64 5319190}
!238 = !{i64 2152804423}
!239 = !{i64 2154526067}
!240 = !{i64 5707499}
!241 = !{i64 2154613085}
!242 = !{i64 2154526478}
!243 = !{i64 2154510409}
