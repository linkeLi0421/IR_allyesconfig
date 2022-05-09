; ModuleID = '/llk/IR_all_yes/drivers/char/pcmcia/cm4000_cs.c_pt.bc'
source_filename = "../drivers/char/pcmcia/cm4000_cs.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.card_fixup = type { [12 x i8], i8, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cm4000_dev = type { ptr, [33 x i8], [512 x i8], [512 x i8], %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i8, i8, i32, [4 x i8], %struct.timer_list, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ptsreq = type { i32, i8, i8, i8, i8 }
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
%struct.atreq = type { i32, [64 x i8], i32, i8, i8 }

@cm4000_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str.1, ptr @cm4000_probe, ptr @cm4000_detach, ptr @cm4000_suspend, ptr @cm4000_resume, ptr null, ptr @cm4000_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmm\00", [28 x i8] zeroinitializer }, align 32
@cmm_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cm4000_cs__369_1908_cmm_init6 = internal global ptr @cmm_init, section ".initcall6.init", align 4
@__exitcall_cmm_exit = internal global ptr @cmm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file370 = internal constant [45 x i8] c"cm4000_cs.file=drivers/char/pcmcia/cm4000_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license371 = internal constant [31 x i8] c"cm4000_cs.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cm4000_cs\00", [22 x i8] zeroinitializer }, align 32
@cm4000_ids = internal constant { [3 x %struct.pcmcia_device_id], [36 x i8] } { [3 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 547, i16 2, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 800286922, i32 -1564636103, i32 0, i32 0], [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@dev_table = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@cm4000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015cm4000_cs: all devices in use\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm4000_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/pcmcia/cm4000_cs.c\00", [32 x i8] zeroinitializer }, align 32
@cm4000_probe._entry_ptr = internal global ptr @cm4000_probe._entry, section ".printk_index", align 4
@cm4000_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->devq\00", [21 x i8] zeroinitializer }, align 32
@cm4000_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dev->ioq\00", [22 x i8] zeroinitializer }, align 32
@cm4000_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->atrq\00", [21 x i8] zeroinitializer }, align 32
@cm4000_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->readq\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cmm%d\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cmm_cm4000_release.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 1, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmm_cm4000_release\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:-> cmm_cm4000_release\0A\00", [38 x i8] zeroinitializer }, align 32
@cmm_cm4000_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 1720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016cm4000_cs: delaying release until process has terminated\0A\00", [36 x i8] zeroinitializer }, align 32
@cmm_cm4000_release._entry_ptr = internal global ptr @cmm_cm4000_release._entry, section ".printk_index", align 4
@cmm_cm4000_release.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.16, i8 1, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:<- cmm_cm4000_release\0A\00", [38 x i8] zeroinitializer }, align 32
@stop_monitor.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 1, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop_monitor\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:-> stop_monitor\0A\00", [44 x i8] zeroinitializer }, align 32
@stop_monitor.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.4, ptr @.str.19, i8 1, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:stopping monitor\0A\00", [43 x i8] zeroinitializer }, align 32
@stop_monitor.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.4, ptr @.str.20, i8 1, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:monitor already stopped\0A\00", [36 x i8] zeroinitializer }, align 32
@stop_monitor.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.4, ptr @.str.21, i8 1, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:<- stop_monitor\0A\00", [44 x i8] zeroinitializer }, align 32
@terminate_monitor.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"terminate_monitor\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:-> terminate_monitor\0A\00", [39 x i8] zeroinitializer }, align 32
@terminate_monitor.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.4, ptr @.str.24, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:Now allow last cycle of monitor!\0A\00", [59 x i8] zeroinitializer }, align 32
@terminate_monitor.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.4, ptr @.str.25, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:Delete timer\0A\00", [47 x i8] zeroinitializer }, align 32
@terminate_monitor.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.4, ptr @.str.26, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:<- terminate_monitor\0A\00", [39 x i8] zeroinitializer }, align 32
@start_monitor.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 1, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start_monitor\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:-> start_monitor\0A\00", [43 x i8] zeroinitializer }, align 32
@start_monitor.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.4, ptr @.str.29, i8 1, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:create, init and add timer\0A\00", [33 x i8] zeroinitializer }, align 32
@start_monitor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&dev->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@start_monitor.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.4, ptr @.str.31, i8 1, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:monitor already running\0A\00", [36 x i8] zeroinitializer }, align 32
@start_monitor.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.4, ptr @.str.32, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:<- start_monitor\0A\00", [43 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"monitor_card\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:->  monitor_card\0A\00", [43 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.35, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:About to stop monitor\0A\00", [38 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.36, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:<- monitor_card (we are done now)\0A\00", [58 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.37, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:Couldn't get IO lock\0A\00", [39 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.38, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:dev->flags0 = 0x%2x\0A\00", [40 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.39, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:smartcard present: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.42, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:cardman present: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.43, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:set IS_CMM_ABSENT bit\0A\00", [38 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.44, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:clear IS_CMM_ABSENT bit (card is removed)\0A\00", [50 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.45, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:clear IS_CMM_ABSENT bit (card is inserted)\0A\00", [49 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.46, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:believe ATR is already valid (do nothing)\0A\00", [50 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.47, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:M_CARDOFF\0A\00", [18 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.48, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:M_FETCH_ATR\0A\00", [16 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.49, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:Reset BAUDV to 9600\0A\00", [40 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.50, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:M_TIMEOUT_WAIT\0A\00", [45 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.51, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:M_READ_ATR_LEN\0A\00", [45 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.52, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:Current ATR_LEN = %i\0A\00", [39 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.53, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:M_READ_ATR\0A\00", [17 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.54, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:Deactivate T_Active flags\0A\00", [34 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.55, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:monitor_card: ATR valid\0A\00", [36 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.56, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:Perform AUTOPPS\0A\00", [44 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.57, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:AUTOPPS ret SUCC\0A\00", [43 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.58, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:AUTOPPS failed: repower using defaults\0A\00", [53 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.59, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:AUTOPPS already active 2nd try:use default values\0A\00", [42 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.60, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:No AUTOPPS necessary TA(1)==0x11\0A\00", [59 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.61, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:Do NOT perform AUTOPPS with multiprotocol cards\0A\00", [44 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.62, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:ATR invalid\0A\00", [16 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.63, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:M_BAD_CARD\0A\00", [17 x i8] zeroinitializer }, align 32
@monitor_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.33, ptr @.str.4, i32 888, ptr @.str.65, ptr @.str.66 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm4000_cs: \00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@monitor_card._entry_ptr = internal global ptr @monitor_card._entry, section ".printk_index", align 4
@monitor_card.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.67, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:ATR checksum (0x%.2x, should be zero) failed\0A\00", [47 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.68, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:Unknown action\0A\00", [45 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.69, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:release_io\0A\00", [17 x i8] zeroinitializer }, align 32
@monitor_card.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.4, ptr @.str.70, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:<- monitor_card (returns with timer)\0A\00", [55 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@parse_atr.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parse_atr\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:-> parse_atr: dev->atr_len = %i\0A\00", [60 x i8] zeroinitializer }, align 32
@parse_atr.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.73, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:parse_atr: atr_len < 3\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_atr.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.74, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:Card says FiDi is 0x%.2x\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_atr.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.75, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s:Yi=%.2x\0A\00", [20 x i8] zeroinitializer }, align 32
@parse_atr.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.76, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:card is capable of T=1\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_atr.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.77, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:card is capable of T=0\0A\00", [37 x i8] zeroinitializer }, align 32
@parse_atr.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.78, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:ix=%d noHist=%d any_t1=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@parse_atr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.79, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:length error\0A\00", [47 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.81, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_protocol\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:-> set_protocol\0A\00", [44 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.82, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"%s:ptsreq->Protocol = 0x%.8x, ptsreq->Flags=0x%.8x, ptsreq->pts1=0x%.2x, ptsreq->pts2=0x%.2x, ptsreq->pts3=0x%.2x\0A\00", [45 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.83, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:Ta(1) from ATR is 0x%.2x\0A\00", [35 x i8] zeroinitializer }, align 32
@fi_di_table = internal constant { [10 x [14 x i8]], [52 x i8] } { [10 x [14 x i8]] [[14 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11", [14 x i8] c"\01\11\11\11\11\11\11\11\11\91\11\11\11\11", [14 x i8] c"\02\12\222\11\11\11\11\11\92\A2\B2\11\11", [14 x i8] c"\03\13#3CSc\11\11\93\A3\B3\C3\D3", [14 x i8] c"\04\14$4DTd\11\11\94\A4\B4\C4\D4", [14 x i8] c"\00\15%5EUe\11\11\95\A5\B5\C5\D5", [14 x i8] c"\06\16&6FVf\11\11\96\A6\B6\C6\D6", [14 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11", [14 x i8] c"\08\11(8HXh\11\11\98\A8\B8\C8\D8", [14 x i8] c"\09\19)9IYi\11\11\99\A9\B9\C9\D9"], [52 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.84, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:pts0=%.2x, pts1=%.2x, pts2=%.2x, pts3=%.2x\0A\00", [49 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.85, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:Enable access to the messages buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.86, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:Enable message buffer -> flags1 = 0x%.2x\0A\00", [51 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.87, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:Write challenge to buffer: \00", [33 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.88, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:Set number of bytes to write\0A\00", [63 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.89, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:Waiting for NumRecBytes getting valid\0A\00", [54 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.90, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:NumRecBytes is valid\0A\00", [39 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.91, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:Timeout waiting for NumRecBytes getting valid\0A\00", [46 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.92, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:Reading NumRecBytes\0A\00", [40 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.93, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:NumRecBytes = %i\0A\00", [43 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.94, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:Timeout reading num_bytes_read\0A\00", [61 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.95, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:Reset the CARDMAN CONTROLLER\0A\00", [63 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.96, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:Read PPS reply\0A\00", [45 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.97, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:Clear Tactive in Flags1\0A\00", [36 x i8] zeroinitializer }, align 32
@set_protocol.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.4, ptr @.str.98, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:<- set_protocol\0A\00", [44 x i8] zeroinitializer }, align 32
@set_cardparameter.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.4, ptr @.str.100, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_cardparameter\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:-> set_cardparameter\0A\00", [39 x i8] zeroinitializer }, align 32
@set_cardparameter.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.4, ptr @.str.101, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:flags1 = 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@set_cardparameter.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.4, ptr @.str.102, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:baudv = %i -> write 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@card_fixups = internal global { [2 x %struct.card_fixup], [36 x i8] } { [2 x %struct.card_fixup] [%struct.card_fixup { [12 x i8] c";\B3\11\00\00A\01\00\00\00\00\00", i8 7, i8 3 }, %struct.card_fixup { [12 x i8] c";v\13\00\00\80b\07A\81\81\00", i8 11, i8 4 }], [36 x i8] zeroinitializer }, align 32
@set_cardparameter.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.4, ptr @.str.103, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:<- set_cardparameter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CardMan\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4000\00", [27 x i8] zeroinitializer }, align 32
@cmm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cardman_4000\00", [19 x i8] zeroinitializer }, align 32
@cm4000_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @cmm_read, ptr @cmm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmm_ioctl, ptr null, ptr null, i32 0, ptr @cmm_open, ptr null, ptr @cmm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cmm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.4, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014cm4000_cs: could not get major number\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmm_init\00", [23 x i8] zeroinitializer }, align 32
@cmm_init._entry_ptr = internal global ptr @cmm_init._entry, section ".printk_index", align 4
@cmm_read.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.4, ptr @.str.110, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmm_read\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:-> cmm_read(%s,%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@cmm_read.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.4, ptr @.str.111, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:begin read answer\0A\00", [42 x i8] zeroinitializer }, align 32
@cmm_read.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.4, ptr @.str.112, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:read1 j=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@cmm_read.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.4, ptr @.str.113, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:read2 j=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@cmm_read.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.4, ptr @.str.114, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:T=0 and count > buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@cmm_read.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.4, ptr @.str.115, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:Clear T1Active\0A\00", [45 x i8] zeroinitializer }, align 32
@cmm_read.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.4, ptr @.str.116, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:<- cmm_read returns: rc = %zi\0A\00", [62 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.121, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmm_write\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:-> cmm_write(%s,%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.122, i8 1, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:T0 short write\0A\00", [45 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.123, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s:bad csum\0A\00", [19 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.124, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:invalid ATR\0A\00", [16 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.125, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s:IO error\0A\00", [19 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.126, i8 1, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:set dev->flags1 = 0x%.2x\0A\00", [35 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.127, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:Xmit data\0A\00", [18 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.128, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:dev->flags = 0x%.2x - set address high\0A\00", [53 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.129, i8 1, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:Apply inverse convention for 0x%.2x -> 0x%.2x\0A\00", [46 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.130, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:Xmit done\0A\00", [18 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.131, i8 1, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:T=0 assumes 0 byte reply\0A\00", [35 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.132, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:T=0 set Procedure byte (inverse-reverse) 0x%.2x\0A\00", [44 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.133, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:T=0 set Procedure byte 0x%.2x\0A\00", [62 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.134, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:set NumSendBytes = 0x%.2x\0A\00", [34 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.135, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:Trigger CARDMAN CONTROLLER (0x%.2x)\0A\00", [56 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.136, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:Wait for xmit done\0A\00", [41 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.137, i8 1, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:timeout waiting for xmit done\0A\00", [62 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.138, i8 1, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:infolen=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.139, i8 1, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:timeout waiting for infoLen\0A\00", [32 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.140, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:NumRecBytes inc (reset timeout)\0A\00", [60 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.141, i8 1, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:NoProcedure byte set\0A\00", [39 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.142, i8 1, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:NoProcedure byte unset (reset timeout)\0A\00", [53 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.143, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:Read procedure byte 0x%.2x\0A\00", [33 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.144, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:T0Done flag (read reply)\0A\00", [35 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.145, i8 1, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:timeout waiting for numRecBytes\0A\00", [60 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.146, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:Wait for T0Done bit to be  set\0A\00", [61 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.147, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:timeout waiting for T0Done\0A\00", [33 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.143, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cmm_write.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.148, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:Read NumRecBytes = %i\0A\00", [38 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.149, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:dev->rlen = %i,  dev->rpos = %i, nr = %i\0A\00", [51 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.150, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s:Reset SM\0A\00", [19 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.151, i8 1, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:Write failed but clear T_Active\0A\00", [60 x i8] zeroinitializer }, align 32
@cmm_write.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.4, ptr @.str.152, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:<- cmm_write\0A\00", [47 x i8] zeroinitializer }, align 32
@cmm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.163, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cmm_mutex, i64 52), ptr getelementptr (i8, ptr @cmm_mutex, i64 52) }, ptr @cmm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.164, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.154, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmm_ioctl\00", [22 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:DEV_OK false\0A\00", [47 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.155, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:CMM_ABSENT flag set\0A\00", [40 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.156, i8 1, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:ioctype mismatch\0A\00", [43 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.158, i8 1, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: ... in CM_IOCGSTATUS\0A\00", [38 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.159, i8 1, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:... in CM_IOCGATR\0A\00", [42 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.160, i8 1, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:Set Flags0=0x42 \0A\00", [43 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.161, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:... in CM_IOCSPTS\0A\00", [42 x i8] zeroinitializer }, align 32
@cmm_ioctl.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.153, ptr @.str.4, ptr @.str.162, i8 1, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:... in default (unknown IOCTL code)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmm_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmm_mutex\00", [22 x i8] zeroinitializer }, align 32
@cmm_open.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.165, ptr @.str.4, ptr @.str.166, i8 1, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmm_open\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:-> cmm_open(device=%d.%d process=%s,%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@cmm_open.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.165, ptr @.str.4, ptr @.str.167, i8 1, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:<- cmm_open\0A\00", [16 x i8] zeroinitializer }, align 32
@cmm_close.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.169, i8 1, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmm_close\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:-> cmm_close(maj/min=%d.%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cmm_close.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.4, ptr @.str.170, i8 1, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:cmm_close\0A\00", [18 x i8] zeroinitializer }, align 32
@switch.table.calc_baudv = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 558, i16 744, i16 1116, i16 1488, i16 1860, i16 372, i16 372, i16 512, i16 768, i16 1024, i16 1536, i16 2048], [40 x i8] zeroinitializer }, align 32
@switch.table.calc_baudv.171 = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 12, i16 20], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.173 = internal global [6 x i64] [i64 4, i64 32, i64 25348, i64 1074029314, i64 2147771136, i64 3221512961]
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"cm4000_driver\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1865, i32 29 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 69, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1904, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"cmm_class\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 150, i32 22 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1867, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"cm4000_ids\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1858, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"dev_table\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 149, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1794, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1807, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1808, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1809, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1810, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1819, i32 56 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1717, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1719, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1728, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1391, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1393, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1399, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1400, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 634, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 644, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 648, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 654, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1378, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1380, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1381, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1385, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1386, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 673, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 677, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 686, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 692, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 698, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 699, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 701, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 715, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 718, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 727, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 732, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 740, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 764, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 766, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 778, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 785, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 800, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 803, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 810, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 829, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 836, i32 5 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 844, i32 6 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 848, i32 6 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 866, i32 6 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 869, i32 6 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 873, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 879, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 884, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 888, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 890, i32 5 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 909, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 914, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 919, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 324, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 327, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 345, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 352, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 362, i32 5 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 365, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 371, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 374, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 459, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 460, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 476, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [12 x i8] c"fi_di_table\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 155, i32 22 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 483, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 494, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 500, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 504, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 517, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 525, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 529, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 535, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 541, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 545, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 560, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 565, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 569, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 583, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 603, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 425, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 429, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 434, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [12 x i8] c"card_fixups\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 405, i32 26 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 445, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1860, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1879, i32 14 }
@___asan_gen_.534 = private unnamed_addr constant [12 x i8] c"cm4000_fops\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1848, i32 37 }
@___asan_gen_.537 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1885, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 934, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 992, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 997, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1004, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1014, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1024, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1045, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 230, i32 6 }
@___asan_gen_.574 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 214, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 174, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1063, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1070, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1083, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1108, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1134, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1159, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1163, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1172, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1177, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1188, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1193, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1218, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1222, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1226, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1230, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1243, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1250, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1265, i32 5 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1271, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1289, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1303, i32 5 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1307, i32 5 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1310, i32 5 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1315, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1323, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1328, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1335, i32 5 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1345, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1351, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1355, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1359, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1372, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant [10 x i8] c"cmm_mutex\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1427, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1432, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1438, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1449, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1469, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1536, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1571, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1614, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 57, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1647, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1674, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1696, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.730 = private constant [35 x i8] c"../drivers/char/pcmcia/cm4000_cs.c\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1706, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant [24 x i8] c"switch.table.calc_baudv\00", align 1
@___asan_gen_.733 = private unnamed_addr constant [28 x i8] c"switch.table.calc_baudv.171\00", align 1
@llvm.compiler.used = appending global [197 x ptr] [ptr @__UNIQUE_ID_file370, ptr @__UNIQUE_ID_license371, ptr @__exitcall_cmm_exit, ptr @__initcall__kmod_cm4000_cs__369_1908_cmm_init6, ptr @cm4000_probe._entry, ptr @cm4000_probe._entry_ptr, ptr @cmm_cm4000_release._entry, ptr @cmm_cm4000_release._entry_ptr, ptr @cmm_exit, ptr @cmm_init._entry, ptr @cmm_init._entry_ptr, ptr @monitor_card._entry, ptr @monitor_card._entry_ptr, ptr @cm4000_driver, ptr @major, ptr @.str, ptr @cmm_class, ptr @.str.1, ptr @cm4000_ids, ptr @dev_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cm4000_probe.__key, ptr @.str.5, ptr @cm4000_probe.__key.6, ptr @.str.7, ptr @cm4000_probe.__key.8, ptr @.str.9, ptr @cm4000_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @start_monitor.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @fi_di_table, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @card_fixups, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @cmm_init.__key, ptr @.str.106, ptr @cm4000_fops, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @cmm_mutex, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @switch.table.calc_baudv, ptr @switch.table.calc_baudv.171], section "llvm.metadata"
@0 = internal global [188 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmm_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_ids to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmm_cm4000_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_monitor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_di_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_fixups to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm4000_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calc_baudv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calc_baudv.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @cm4000_driver) #10
  %0 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #10
  %1 = load ptr, ptr @cmm_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @cmm_init.__key) #10
  store ptr %call, ptr @cmm_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @cm4000_fops) #10
  store i32 %call.i, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #13
  %1 = load ptr, ptr @cmm_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  %2 = load i32, ptr @major, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @cm4000_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %3, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #10
  %4 = load ptr, ptr @cmm_class, align 4
  tail call void @class_destroy(ptr noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %2, %do.end ], [ %call8, %if.then10 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4000_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dev_table, align 4
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %1, null
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %2 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %2, null
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %3, null
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %do.end

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end4:                                          ; preds = %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.053.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1360) #14
  %cmp6 = icmp eq ptr %call7.i.i, null
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %priv, align 8
  %arrayidx9 = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %i.053.lcssa
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link, ptr %arrayidx9, align 4
  %devq = getelementptr inbounds %struct.cm4000_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %devq, ptr noundef nonnull @.str.5, ptr noundef nonnull @cm4000_probe.__key) #10
  %ioq = getelementptr inbounds %struct.cm4000_dev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %ioq, ptr noundef nonnull @.str.7, ptr noundef nonnull @cm4000_probe.__key.6) #10
  %atrq = getelementptr inbounds %struct.cm4000_dev, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %atrq, ptr noundef nonnull @.str.9, ptr noundef nonnull @cm4000_probe.__key.8) #10
  %readq = getelementptr inbounds %struct.cm4000_dev, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %readq, ptr noundef nonnull @.str.11, ptr noundef nonnull @cm4000_probe.__key.10) #10
  %config_flags.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %8 = ptrtoint ptr %config_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_flags.i, align 4
  %or.i = or i32 %9, 2048
  store i32 %or.i, ptr %config_flags.i, align 4
  %call.i = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @cm4000_config_check, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.if.then23_crit_edge

if.end8.if.then23_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call i32 @pcmcia_enable_device(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end25, label %if.end.i.if.then23_crit_edge

if.end.i.if.then23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then23:                                        ; preds = %if.end.i.if.then23_crit_edge, %if.end8.if.then23_crit_edge
  tail call fastcc void @cmm_cm4000_release(ptr noundef %link) #10
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx9, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = load ptr, ptr @cmm_class, align 4
  %12 = load i32, ptr @major, align 4
  %shl = shl i32 %12, 20
  %or = or i32 %shl, %i.053.lcssa
  %call26 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %11, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef %i.053.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %if.then23 ], [ 0, %if.end25 ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm4000_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load ptr, ptr @dev_table, align 4
  %cmp1 = icmp eq ptr %2, %link
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc:                                          ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %3, %link
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %4 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %4, %link
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %5 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @dev_table, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %5, %link
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %devno.018.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ]
  tail call fastcc void @stop_monitor(ptr noundef %1)
  tail call fastcc void @cmm_cm4000_release(ptr noundef %link) #10
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  %arrayidx5 = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %devno.018.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx5, align 4
  tail call void @kfree(ptr noundef %1) #10
  %7 = load ptr, ptr @cmm_class, align 4
  %8 = load i32, ptr @major, align 4
  %shl = shl i32 %8, 20
  %or = or i32 %shl, %devno.018.lcssa
  tail call void @device_destroy(ptr noundef %7, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.inc.2.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4000_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call fastcc void @stop_monitor(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4000_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call fastcc void @start_monitor(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm4000_config_check(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmm_cm4000_release(ptr nocapture noundef readonly %link) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_cm4000_release.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_cm4000_release, %if.then)) #10
          to label %do.end6 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_cm4000_release.__UNIQUE_ID_ddebug367, ptr noundef %dev4, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #10
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not69 = icmp eq i32 %5, 0
  br i1 %tobool7.not69, label %do.end6.do.body33_crit_edge, label %do.end10.lr.ph

do.end6.do.body33_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

do.end10.lr.ph:                                   ; preds = %do.end6
  %devq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 4
  br label %do.end10

do.end10:                                         ; preds = %do.end31.do.end10_crit_edge, %do.end10.lr.ph
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1725) #10
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end10.do.body33_crit_edge, label %if.end22

do.end10.do.body33_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

if.end22:                                         ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call2367 = call i32 @prepare_to_wait_event(ptr noundef %devq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %9 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2568 = icmp eq i32 %10, 0
  br i1 %cmp2568, label %if.end22.do.end31_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  br label %cleanup

if.end22.do.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  call void @schedule() #10
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %devq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %11 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %open, align 4
  %cmp25 = icmp eq i32 %12, 0
  br i1 %cmp25, label %cleanup.do.end31_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.do.end31_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

do.end31:                                         ; preds = %cleanup.do.end31_crit_edge, %if.end22.do.end31_crit_edge
  call void @finish_wait(ptr noundef %devq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %open, align 4
  %tobool7.not = icmp eq i32 %.pr, 0
  br i1 %tobool7.not, label %do.end31.do.body33_crit_edge, label %do.end31.do.end10_crit_edge

do.end31.do.end10_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end31.do.body33_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

do.body33:                                        ; preds = %do.end31.do.body33_crit_edge, %do.end10.do.body33_crit_edge, %do.end6.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_cm4000_release.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_cm4000_release, %if.then45)) #10
          to label %do.end52 [label %if.then45], !srcloc !493

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev47 = getelementptr inbounds %struct.pcmcia_device, ptr %15, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_cm4000_release.__UNIQUE_ID_ddebug368, ptr noundef %dev47, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #10
  br label %do.end52

do.end52:                                         ; preds = %if.then45, %do.body33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_monitor(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_monitor.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stop_monitor, %if.then)) #10
          to label %do.end5 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_monitor.__UNIQUE_ID_ddebug350, ptr noundef %dev4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #10
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %monitor_running = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 17
  %2 = ptrtoint ptr %monitor_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %monitor_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.body29, label %do.body9

do.body9:                                         ; preds = %do.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_monitor.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stop_monitor, %if.then21)) #10
          to label %do.end26 [label %if.then21], !srcloc !493

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev23 = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_monitor.__UNIQUE_ID_ddebug351, ptr noundef %dev23, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.body9
  tail call fastcc void @terminate_monitor(ptr noundef %dev)
  %flags = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #10
  br label %do.body49

do.body29:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_monitor.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stop_monitor, %if.then41)) #10
          to label %do.body49 [label %if.then41], !srcloc !493

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev43 = getelementptr inbounds %struct.pcmcia_device, ptr %7, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_monitor.__UNIQUE_ID_ddebug352, ptr noundef %dev43, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #10
  br label %do.body49

do.body49:                                        ; preds = %if.then41, %do.body29, %do.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_monitor.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stop_monitor, %if.then61)) #10
          to label %do.end66 [label %if.then61], !srcloc !493

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev63 = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_monitor.__UNIQUE_ID_ddebug353, ptr noundef %dev63, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @terminate_monitor(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @terminate_monitor.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@terminate_monitor, %if.then)) #10
          to label %do.end5 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @terminate_monitor.__UNIQUE_ID_ddebug266, ptr noundef %dev4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #10
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 637) #10
  %flags = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %do.end5.if.end26_crit_edge

do.end5.if.end26_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then13:                                        ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %devq = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 4
  %call15124 = call i32 @prepare_to_wait_event(ptr noundef %devq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call17125 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17125)
  %tobool18.not126 = icmp eq i32 %call17125, 0
  br i1 %tobool18.not126, label %if.then13.if.end20_crit_edge, label %if.then13.for.end_crit_edge

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  br label %if.end20

if.end20:                                         ; preds = %cleanup.if.end20_crit_edge, %if.then13.if.end20_crit_edge
  %call15127 = phi i32 [ %call15, %cleanup.if.end20_crit_edge ], [ %call15124, %if.then13.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15127)
  %tobool21.not = icmp eq i32 %call15127, 0
  br i1 %tobool21.not, label %cleanup, label %if.end20.__out_crit_edge

if.end20.__out_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end20
  call void @schedule() #10
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %devq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call17 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.if.end20_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then13.for.end_crit_edge
  call void @finish_wait(ptr noundef %devq, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end20.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end26

if.end26:                                         ; preds = %__out, %do.end5.if.end26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @terminate_monitor.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@terminate_monitor, %if.then41)) #10
          to label %do.end48 [label %if.then41], !srcloc !493

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev43 = getelementptr inbounds %struct.pcmcia_device, ptr %4, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @terminate_monitor.__UNIQUE_ID_ddebug267, ptr noundef %dev43, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #10
  br label %do.end48

do.end48:                                         ; preds = %if.then41, %if.end26
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool51.not128 = icmp eq i32 %7, 0
  br i1 %tobool51.not128, label %do.end48.do.body53_crit_edge, label %do.end48.while.body_crit_edge

do.end48.while.body_crit_edge:                    ; preds = %do.end48
  br label %while.body

do.end48.do.body53_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end48.while.body_crit_edge
  call void @msleep(i32 noundef 25) #10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  %tobool51.not = icmp eq i32 %10, 0
  br i1 %tobool51.not, label %while.body.do.body53_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.do.body53_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

do.body53:                                        ; preds = %while.body.do.body53_crit_edge, %do.end48.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @terminate_monitor.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@terminate_monitor, %if.then65)) #10
          to label %do.end72 [label %if.then65], !srcloc !493

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev67 = getelementptr inbounds %struct.pcmcia_device, ptr %12, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @terminate_monitor.__UNIQUE_ID_ddebug268, ptr noundef %dev67, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22) #10
  br label %do.end72

do.end72:                                         ; preds = %if.then65, %do.body53
  %timer = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 16
  %call73 = call i32 @del_timer_sync(ptr noundef %timer) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @terminate_monitor.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@terminate_monitor, %if.then87)) #10
          to label %do.end94 [label %if.then87], !srcloc !493

if.then87:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev89 = getelementptr inbounds %struct.pcmcia_device, ptr %14, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @terminate_monitor.__UNIQUE_ID_ddebug269, ptr noundef %dev89, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22) #10
  br label %do.end94

do.end94:                                         ; preds = %if.then87, %do.end72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_monitor(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_monitor.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_monitor, %if.then)) #10
          to label %do.end5 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_monitor.__UNIQUE_ID_ddebug346, ptr noundef %dev4, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #10
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %monitor_running = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 17
  %2 = ptrtoint ptr %monitor_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %monitor_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.body9, label %do.body33

do.body9:                                         ; preds = %do.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_monitor.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_monitor, %if.then21)) #10
          to label %do.body27 [label %if.then21], !srcloc !493

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev23 = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_monitor.__UNIQUE_ID_ddebug347, ptr noundef %dev23, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #10
  br label %do.body27

do.body27:                                        ; preds = %if.then21, %do.body9
  %timer = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 16
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @monitor_card, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @start_monitor.__key) #10
  %6 = ptrtoint ptr %monitor_running to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %monitor_running, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %call31 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %7) #10
  br label %do.body53

do.body33:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_monitor.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_monitor, %if.then45)) #10
          to label %do.body53 [label %if.then45], !srcloc !493

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev47 = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_monitor.__UNIQUE_ID_ddebug348, ptr noundef %dev47, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27) #10
  br label %do.body53

do.body53:                                        ; preds = %if.then45, %do.body33, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_monitor.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_monitor, %if.then65)) #10
          to label %do.end70 [label %if.then65], !srcloc !493

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev67 = getelementptr inbounds %struct.pcmcia_device, ptr %11, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_monitor.__UNIQUE_ID_ddebug349, ptr noundef %dev67, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %do.body53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @monitor_card(ptr noundef %t) #2 align 64 {
entry:
  %s = alloca i16, align 2
  %ptsreq = alloca %struct.ptsreq, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1308
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %s) #10
  %6 = ptrtoint ptr %s to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %s, align 2, !annotation !494
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptsreq) #10
  %7 = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 3
  %10 = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 4
  %11 = ptrtoint ptr %ptsreq to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %ptsreq, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %dev6 = getelementptr inbounds %struct.pcmcia_device, ptr %13, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug270, ptr noundef %dev6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %14 = getelementptr i8, ptr %t, i32 -36
  %flags = getelementptr i8, ptr %t, i32 -8
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end55, label %do.body13

do.body13:                                        ; preds = %do.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then25)) #10
          to label %do.end32 [label %if.then25], !srcloc !493

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %dev27 = getelementptr inbounds %struct.pcmcia_device, ptr %16, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug271, ptr noundef %dev27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then25, %do.body13
  %cwarn = getelementptr i8, ptr %t, i32 -26
  %17 = ptrtoint ptr %cwarn to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %cwarn, align 2
  %atr_len_retry = getelementptr i8, ptr %t, i32 -35
  %18 = ptrtoint ptr %atr_len_retry to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %atr_len_retry, align 1
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %14, align 4
  %rpos = getelementptr i8, ptr %t, i32 -30
  %20 = ptrtoint ptr %rpos to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %rpos, align 2
  %rlen = getelementptr i8, ptr %t, i32 -32
  %21 = ptrtoint ptr %rlen to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %rlen, align 4
  %mstate = getelementptr i8, ptr %t, i32 -27
  %22 = ptrtoint ptr %mstate to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %mstate, align 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  %devq = getelementptr i8, ptr %t, i32 -244
  tail call void @__wake_up(ptr noundef %devq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then47)) #10
          to label %cleanup [label %if.then47], !srcloc !493

if.then47:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %dev49 = getelementptr inbounds %struct.pcmcia_device, ptr %24, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug272, ptr noundef %dev49, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end55:                                         ; preds = %do.end8
  %call57 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end81, label %do.body61

do.body61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then73)) #10
          to label %do.body980 [label %if.then73], !srcloc !493

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %dev75 = getelementptr inbounds %struct.pcmcia_device, ptr %26, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug273, ptr noundef %dev75, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33) #10
  br label %do.body980

if.end81:                                         ; preds = %if.end55
  %and = and i32 %5, 1048575
  %add82 = or i32 %and, -18874368
  %27 = inttoptr i32 %add82 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !496
  %flags0 = getelementptr i8, ptr %t, i32 -25
  %29 = ptrtoint ptr %flags0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %flags0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then99)) #10
          to label %do.body109 [label %if.then99], !srcloc !493

if.then99:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %dev101 = getelementptr inbounds %struct.pcmcia_device, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags0, align 1
  %conv = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug274, ptr noundef %dev101, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, i32 noundef %conv) #10
  br label %do.body109

do.body109:                                       ; preds = %if.then99, %if.end81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then121)) #10
          to label %do.body134 [label %if.then121], !srcloc !493

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %dev123 = getelementptr inbounds %struct.pcmcia_device, ptr %35, i32 0, i32 21
  %36 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags0, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool127.not = icmp eq i8 %38, 0
  %cond = select i1 %tobool127.not, ptr @.str.41, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug275, ptr noundef %dev123, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond) #10
  br label %do.body134

do.body134:                                       ; preds = %if.then121, %do.body109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then146)) #10
          to label %do.end157 [label %if.then146], !srcloc !493

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %dev148 = getelementptr inbounds %struct.pcmcia_device, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp = icmp eq i8 %42, -1
  %cond152 = select i1 %cmp, ptr @.str.41, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug276, ptr noundef %dev148, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond152) #10
  br label %do.end157

do.end157:                                        ; preds = %if.then146, %do.body134
  %43 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags0, align 1
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp161 = icmp eq i8 %45, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp165 = icmp eq i8 %44, -1
  %or.cond = or i1 %cmp165, %cmp161
  br i1 %or.cond, label %if.then167, label %land.lhs.true

if.then167:                                       ; preds = %do.end157
  %cwarn168 = getelementptr i8, ptr %t, i32 -26
  %46 = ptrtoint ptr %cwarn168 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %cwarn168, align 2
  %atr_len_retry169 = getelementptr i8, ptr %t, i32 -35
  %47 = ptrtoint ptr %atr_len_retry169 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %atr_len_retry169, align 1
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %14, align 4
  %rpos171 = getelementptr i8, ptr %t, i32 -30
  %49 = ptrtoint ptr %rpos171 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %rpos171, align 2
  %rlen172 = getelementptr i8, ptr %t, i32 -32
  %50 = ptrtoint ptr %rlen172 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %rlen172, align 4
  %mstate173 = getelementptr i8, ptr %t, i32 -27
  %51 = ptrtoint ptr %mstate173 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %mstate173, align 1
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and175 = and i32 %53, 255
  store i32 %and175, ptr %flags, align 4
  br i1 %cmp165, label %do.body182, label %if.else

do.body182:                                       ; preds = %if.then167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then194)) #10
          to label %do.end201 [label %if.then194], !srcloc !493

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  %dev196 = getelementptr inbounds %struct.pcmcia_device, ptr %55, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug277, ptr noundef %dev196, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.33) #10
  br label %do.end201

do.end201:                                        ; preds = %if.then194, %do.body182
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  br label %do.body958

if.else:                                          ; preds = %if.then167
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags, align 4
  %58 = and i32 %57, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool205.not = icmp eq i32 %58, 0
  br i1 %tobool205.not, label %if.else.do.body958_crit_edge, label %do.body208

if.else.do.body958_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body958

do.body208:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then220)) #10
          to label %do.end227 [label %if.then220], !srcloc !493

if.then220:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 4
  %dev222 = getelementptr inbounds %struct.pcmcia_device, ptr %60, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug278, ptr noundef %dev222, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.33) #10
  br label %do.end227

do.end227:                                        ; preds = %if.then220, %do.body208
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #10
  br label %do.body958

land.lhs.true:                                    ; preds = %do.end157
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags, align 4
  %63 = and i32 %62, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool238.not = icmp eq i32 %63, 0
  br i1 %tobool238.not, label %land.lhs.true.if.end263_crit_edge, label %do.body241

land.lhs.true.if.end263_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263

do.body241:                                       ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then253)) #10
          to label %do.end260 [label %if.then253], !srcloc !493

if.then253:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  %dev255 = getelementptr inbounds %struct.pcmcia_device, ptr %65, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug279, ptr noundef %dev255, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.33) #10
  br label %do.end260

do.end260:                                        ; preds = %if.then253, %do.body241
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #10
  br label %if.end263

if.end263:                                        ; preds = %do.end260, %land.lhs.true.if.end263_crit_edge
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags, align 4
  %68 = and i32 %67, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp266.not = icmp eq i32 %68, 0
  br i1 %cmp266.not, label %if.end290, label %do.body270

do.body270:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then282)) #10
          to label %do.body958 [label %if.then282], !srcloc !493

if.then282:                                       ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 4
  %dev284 = getelementptr inbounds %struct.pcmcia_device, ptr %70, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug280, ptr noundef %dev284, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.33) #10
  br label %do.body958

if.end290:                                        ; preds = %if.end263
  %mstate291 = getelementptr i8, ptr %t, i32 -27
  %71 = ptrtoint ptr %mstate291 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mstate291, align 1
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i8 %72, label %do.body937 [
    i8 6, label %sw.bb
    i8 0, label %do.body346
    i8 1, label %do.body433
    i8 2, label %do.body459
    i8 3, label %do.body524
    i8 5, label %do.body864
  ]

sw.bb:                                            ; preds = %if.end290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then307)) #10
          to label %do.end314 [label %if.then307], !srcloc !493

if.then307:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 4
  %dev309 = getelementptr inbounds %struct.pcmcia_device, ptr %75, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug281, ptr noundef %dev309, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.33) #10
  br label %do.end314

do.end314:                                        ; preds = %if.then307, %sw.bb
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !497
  %77 = and i8 %76, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool324.not = icmp eq i8 %77, 0
  br i1 %tobool324.not, label %do.body328, label %if.then325

if.then325:                                       ; preds = %do.end314
  call void @__sanitizer_cov_trace_pc() #12
  %mdelay = getelementptr i8, ptr %t, i32 -20
  %78 = ptrtoint ptr %mdelay to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %mdelay, align 4
  br label %do.body958

do.body328:                                       ; preds = %do.end314
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !498
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -128) #10, !srcloc !499
  %cwarn335 = getelementptr i8, ptr %t, i32 -26
  %79 = ptrtoint ptr %cwarn335 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %cwarn335, align 2
  %atr_len_retry336 = getelementptr i8, ptr %t, i32 -35
  %80 = ptrtoint ptr %atr_len_retry336 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %atr_len_retry336, align 1
  %81 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %14, align 4
  %rpos338 = getelementptr i8, ptr %t, i32 -30
  %82 = ptrtoint ptr %rpos338 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %rpos338, align 2
  %rlen339 = getelementptr i8, ptr %t, i32 -32
  %83 = ptrtoint ptr %rlen339 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %rlen339, align 4
  %84 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %mstate291, align 1
  %mdelay342 = getelementptr i8, ptr %t, i32 -20
  %85 = ptrtoint ptr %mdelay342 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 5, ptr %mdelay342, align 4
  br label %do.body958

do.body346:                                       ; preds = %if.end290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then358)) #10
          to label %do.body366 [label %if.then358], !srcloc !493

if.then358:                                       ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr, align 4
  %dev360 = getelementptr inbounds %struct.pcmcia_device, ptr %87, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug282, ptr noundef %dev360, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.33) #10
  br label %do.body366

do.body366:                                       ; preds = %if.then358, %do.body346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !500
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -128) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then386)) #10
          to label %do.end393 [label %if.then386], !srcloc !493

if.then386:                                       ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 4
  %dev388 = getelementptr inbounds %struct.pcmcia_device, ptr %89, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug283, ptr noundef %dev388, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.33) #10
  br label %do.end393

do.end393:                                        ; preds = %if.then386, %do.body366
  %baudv = getelementptr i8, ptr %t, i32 -16
  %90 = ptrtoint ptr %baudv to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 371, ptr %baudv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !501
  tail call void @arm_heavy_mb() #10
  %add397 = add i32 %5, 7
  %and398 = and i32 %add397, 1048575
  %add399 = or i32 %and398, -18874368
  %91 = inttoptr i32 %add399 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 2) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !502
  tail call void @arm_heavy_mb() #10
  %add404 = add i32 %5, 6
  %and405 = and i32 %add404, 1048575
  %add406 = or i32 %and405, -18874368
  %92 = inttoptr i32 %add406 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 115) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !503
  tail call void @arm_heavy_mb() #10
  %add411 = add i32 %5, 1
  %and412 = and i32 %add411, 1048575
  %add413 = or i32 %and412, -18874368
  %93 = inttoptr i32 %add413 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 33) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !504
  tail call void @arm_heavy_mb() #10
  %94 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %flags0, align 1
  %96 = and i8 %95, 2
  %97 = or i8 %96, 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %97) #10, !srcloc !499
  %mdelay429 = getelementptr i8, ptr %t, i32 -20
  %98 = ptrtoint ptr %mdelay429 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4, ptr %mdelay429, align 4
  %99 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %mstate291, align 1
  br label %do.body958

do.body433:                                       ; preds = %if.end290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then445)) #10
          to label %do.end452 [label %if.then445], !srcloc !493

if.then445:                                       ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 4
  %dev447 = getelementptr inbounds %struct.pcmcia_device, ptr %101, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug284, ptr noundef %dev447, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33) #10
  br label %do.end452

do.end452:                                        ; preds = %if.then445, %do.body433
  %atr_len = getelementptr i8, ptr %t, i32 -34
  %call453 = tail call fastcc zeroext i16 @io_read_num_rec_bytes(i32 noundef %5, ptr noundef %atr_len)
  %mdelay455 = getelementptr i8, ptr %t, i32 -20
  %102 = ptrtoint ptr %mdelay455 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %mdelay455, align 4
  %103 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 2, ptr %mstate291, align 1
  br label %do.body958

do.body459:                                       ; preds = %if.end290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then471)) #10
          to label %do.end478 [label %if.then471], !srcloc !493

if.then471:                                       ; preds = %do.body459
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 4
  %dev473 = getelementptr inbounds %struct.pcmcia_device, ptr %105, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug285, ptr noundef %dev473, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.33) #10
  br label %do.end478

do.end478:                                        ; preds = %if.then471, %do.body459
  %atr_len479 = getelementptr i8, ptr %t, i32 -34
  %106 = ptrtoint ptr %atr_len479 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %atr_len479, align 2
  %call481 = call fastcc zeroext i16 @io_read_num_rec_bytes(i32 noundef %5, ptr noundef nonnull %s)
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %call481)
  %cmp483 = icmp eq i16 %107, %call481
  br i1 %cmp483, label %if.then485, label %if.else495

if.then485:                                       ; preds = %do.end478
  %atr_len_retry486 = getelementptr i8, ptr %t, i32 -35
  %108 = ptrtoint ptr %atr_len_retry486 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %atr_len_retry486, align 1
  %inc = add i8 %109, 1
  store i8 %inc, ptr %atr_len_retry486, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %109)
  %cmp488 = icmp ugt i8 %109, 99
  br i1 %cmp488, label %if.then490, label %if.then485.do.body500_crit_edge

if.then485.do.body500_crit_edge:                  ; preds = %if.then485
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body500

if.then490:                                       ; preds = %if.then485
  call void @__sanitizer_cov_trace_pc() #12
  %mdelay492 = getelementptr i8, ptr %t, i32 -20
  %110 = ptrtoint ptr %mdelay492 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %mdelay492, align 4
  %111 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %mstate291, align 1
  br label %do.body500

if.else495:                                       ; preds = %do.end478
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %s, align 2
  %114 = ptrtoint ptr %atr_len479 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %atr_len479, align 2
  %atr_len_retry497 = getelementptr i8, ptr %t, i32 -35
  %115 = ptrtoint ptr %atr_len_retry497 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %atr_len_retry497, align 1
  br label %do.body500

do.body500:                                       ; preds = %if.else495, %if.then490, %if.then485.do.body500_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then512)) #10
          to label %do.body958 [label %if.then512], !srcloc !493

if.then512:                                       ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr, align 4
  %dev514 = getelementptr inbounds %struct.pcmcia_device, ptr %117, i32 0, i32 21
  %118 = ptrtoint ptr %atr_len479 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %atr_len479, align 2
  %conv516 = zext i16 %119 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug286, ptr noundef %dev514, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.33, i32 noundef %conv516) #10
  br label %do.body958

do.body524:                                       ; preds = %if.end290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then536)) #10
          to label %do.body544 [label %if.then536], !srcloc !493

if.then536:                                       ; preds = %do.body524
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr, align 4
  %dev538 = getelementptr inbounds %struct.pcmcia_device, ptr %121, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug287, ptr noundef %dev538, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.33) #10
  br label %do.body544

do.body544:                                       ; preds = %if.then536, %do.body524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !505
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -128) #10, !srcloc !499
  %atr_len551 = getelementptr i8, ptr %t, i32 -34
  %122 = ptrtoint ptr %atr_len551 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %atr_len551, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp5531322.not = icmp eq i16 %123, 0
  br i1 %cmp5531322.not, label %do.body544.do.body573_crit_edge, label %do.body555.lr.ph

do.body544.do.body573_crit_edge:                  ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body573

do.body555.lr.ph:                                 ; preds = %do.body544
  %add559 = add i32 %5, 3
  %and560 = and i32 %add559, 1048575
  %add561 = or i32 %and560, -18874368
  %124 = inttoptr i32 %add561 to ptr
  %add564 = add i32 %5, 4
  %and565 = and i32 %add564, 1048575
  %add566 = or i32 %and565, -18874368
  %125 = inttoptr i32 %add566 to ptr
  %atr = getelementptr i8, ptr %t, i32 -1304
  br label %do.body555

do.body555:                                       ; preds = %do.body555.do.body555_crit_edge, %do.body555.lr.ph
  %i.01323 = phi i32 [ 0, %do.body555.lr.ph ], [ %inc571, %do.body555.do.body555_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !506
  tail call void @arm_heavy_mb() #10
  %conv558 = trunc i32 %i.01323 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 %conv558) #10, !srcloc !499
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %125) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !507
  %arrayidx570 = getelementptr [33 x i8], ptr %atr, i32 0, i32 %i.01323
  %127 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx570, align 1
  %inc571 = add nuw nsw i32 %i.01323, 1
  %128 = ptrtoint ptr %atr_len551 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %atr_len551, align 2
  %conv552 = zext i16 %129 to i32
  %cmp553 = icmp ult i32 %inc571, %conv552
  br i1 %cmp553, label %do.body555.do.body555_crit_edge, label %do.body555.do.body573_crit_edge

do.body555.do.body573_crit_edge:                  ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body573

do.body555.do.body555_crit_edge:                  ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body555

do.body573:                                       ; preds = %do.body555.do.body573_crit_edge, %do.body544.do.body573_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then585)) #10
          to label %do.end592 [label %if.then585], !srcloc !493

if.then585:                                       ; preds = %do.body573
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr, align 4
  %dev587 = getelementptr inbounds %struct.pcmcia_device, ptr %131, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug288, ptr noundef %dev587, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.33) #10
  br label %do.end592

do.end592:                                        ; preds = %if.then585, %do.body573
  %flags1 = getelementptr i8, ptr %t, i32 -24
  %132 = ptrtoint ptr %flags1 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %flags1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !508
  tail call void @arm_heavy_mb() #10
  %133 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %flags1, align 4
  %add597 = add i32 %5, 1
  %and598 = and i32 %add597, 1048575
  %add599 = or i32 %and598, -18874368
  %135 = inttoptr i32 %add599 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 %134) #10, !srcloc !499
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #10
  %atr602 = getelementptr i8, ptr %t, i32 -1304
  %136 = ptrtoint ptr %atr602 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %atr602, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %137)
  %cmp605 = icmp eq i8 %137, 3
  br i1 %cmp605, label %if.then607, label %do.end592.if.end611_crit_edge

do.end592.if.end611_crit_edge:                    ; preds = %do.end592
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end611

if.then607:                                       ; preds = %do.end592
  %138 = ptrtoint ptr %atr_len551 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %atr_len551, align 2
  %conv610 = zext i16 %139 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %cmp6.i.not = icmp eq i16 %139, 0
  br i1 %cmp6.i.not, label %if.then607.if.end611_crit_edge, label %if.then607.for.body.i_crit_edge

if.then607.for.body.i_crit_edge:                  ; preds = %if.then607
  br label %for.body.i

if.then607.if.end611_crit_edge:                   ; preds = %if.then607
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end611

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then607.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then607.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %atr602, i32 %i.07.i
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i, align 1
  %neg.i.i = xor i8 %141, -1
  %idxprom.i.i.i = zext i8 %neg.i.i to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i
  %142 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i.i.i, align 1
  store i8 %143, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv610
  br i1 %exitcond.not.i, label %for.body.i.if.end611_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end611_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end611

if.end611:                                        ; preds = %for.body.i.if.end611_crit_edge, %if.then607.if.end611_crit_edge, %do.end592.if.end611_crit_edge
  %call612 = tail call fastcc i32 @parse_atr(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call612)
  %cmp613 = icmp eq i32 %call612, 0
  %mdelay616 = getelementptr i8, ptr %t, i32 -20
  br i1 %cmp613, label %if.then615, label %if.else618

if.then615:                                       ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %mdelay616 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %mdelay616, align 4
  %145 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 5, ptr %mstate291, align 1
  br label %if.end623

if.else618:                                       ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %mdelay616 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 5, ptr %mdelay616, align 4
  %147 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 4, ptr %mstate291, align 1
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags) #10
  br label %if.end623

if.end623:                                        ; preds = %if.else618, %if.then615
  %148 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %flags, align 4
  %150 = and i32 %149, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp626.not = icmp eq i32 %150, 0
  br i1 %cmp626.not, label %do.body840, label %do.body630

do.body630:                                       ; preds = %if.end623
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then642)) #10
          to label %do.end649 [label %if.then642], !srcloc !493

if.then642:                                       ; preds = %do.body630
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add.ptr, align 4
  %dev644 = getelementptr inbounds %struct.pcmcia_device, ptr %152, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug289, ptr noundef %dev644, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.33) #10
  br label %do.end649

do.end649:                                        ; preds = %if.then642, %do.body630
  %153 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %flags, align 4
  %155 = and i32 %154, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp652 = icmp eq i32 %155, 0
  br i1 %cmp652, label %land.lhs.true654, label %do.end649.if.else750_crit_edge

do.end649.if.else750_crit_edge:                   ; preds = %do.end649
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else750

land.lhs.true654:                                 ; preds = %do.end649
  %ta1 = getelementptr i8, ptr %t, i32 -12
  %156 = ptrtoint ptr %ta1 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ta1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %157)
  %cmp656.not = icmp eq i8 %157, 17
  br i1 %cmp656.not, label %land.lhs.true654.if.else750_crit_edge, label %land.lhs.true658

land.lhs.true654.if.else750_crit_edge:            ; preds = %land.lhs.true654
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else750

land.lhs.true658:                                 ; preds = %land.lhs.true654
  %158 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %flags, align 4
  %160 = and i32 %159, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool661.not = icmp eq i32 %160, 0
  br i1 %tobool661.not, label %land.lhs.true658.do.body668_crit_edge, label %land.lhs.true662

land.lhs.true658.do.body668_crit_edge:            ; preds = %land.lhs.true658
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body668

land.lhs.true662:                                 ; preds = %land.lhs.true658
  %161 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %flags, align 4
  %163 = and i32 %162, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool665.not = icmp eq i32 %163, 0
  br i1 %tobool665.not, label %land.lhs.true662.do.body668_crit_edge, label %land.lhs.true662.if.else750_crit_edge

land.lhs.true662.if.else750_crit_edge:            ; preds = %land.lhs.true662
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else750

land.lhs.true662.do.body668_crit_edge:            ; preds = %land.lhs.true662
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body668

do.body668:                                       ; preds = %land.lhs.true662.do.body668_crit_edge, %land.lhs.true658.do.body668_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then680)) #10
          to label %do.end687 [label %if.then680], !srcloc !493

if.then680:                                       ; preds = %do.body668
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr, align 4
  %dev682 = getelementptr inbounds %struct.pcmcia_device, ptr %165, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug290, ptr noundef %dev682, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.33) #10
  br label %do.end687

do.end687:                                        ; preds = %if.then680, %do.body668
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #10
  %proto = getelementptr i8, ptr %t, i32 -11
  %166 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %proto, align 1
  %conv689 = zext i8 %167 to i32
  %shl = shl nuw i32 1, %conv689
  %168 = ptrtoint ptr %ptsreq to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %shl, ptr %ptsreq, align 8
  %169 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %7, align 4
  %170 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %8, align 1
  %171 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %9, align 2
  %172 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %10, align 1
  %call691 = call fastcc i32 @set_protocol(ptr noundef %add.ptr, ptr noundef nonnull %ptsreq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call691)
  %cmp692 = icmp eq i32 %call691, 0
  br i1 %cmp692, label %do.body696, label %do.body719

do.body696:                                       ; preds = %do.end687
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then708)) #10
          to label %do.end715 [label %if.then708], !srcloc !493

if.then708:                                       ; preds = %do.body696
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %add.ptr, align 4
  %dev710 = getelementptr inbounds %struct.pcmcia_device, ptr %174, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug291, ptr noundef %dev710, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.33) #10
  br label %do.end715

do.end715:                                        ; preds = %if.then708, %do.body696
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #10
  %atrq = getelementptr i8, ptr %t, i32 -140
  tail call void @__wake_up(ptr noundef %atrq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %do.body958

do.body719:                                       ; preds = %do.end687
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then731)) #10
          to label %do.end738 [label %if.then731], !srcloc !493

if.then731:                                       ; preds = %do.body719
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %add.ptr, align 4
  %dev733 = getelementptr inbounds %struct.pcmcia_device, ptr %176, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug292, ptr noundef %dev733, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.33) #10
  br label %do.end738

do.end738:                                        ; preds = %if.then731, %do.body719
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #10
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  %cwarn741 = getelementptr i8, ptr %t, i32 -26
  %177 = ptrtoint ptr %cwarn741 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %cwarn741, align 2
  %atr_len_retry742 = getelementptr i8, ptr %t, i32 -35
  %178 = ptrtoint ptr %atr_len_retry742 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %atr_len_retry742, align 1
  %179 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %14, align 4
  %rpos744 = getelementptr i8, ptr %t, i32 -30
  %180 = ptrtoint ptr %rpos744 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %rpos744, align 2
  %rlen745 = getelementptr i8, ptr %t, i32 -32
  %181 = ptrtoint ptr %rlen745 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %rlen745, align 4
  %182 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %mstate291, align 1
  %mdelay748 = getelementptr i8, ptr %t, i32 -20
  %183 = ptrtoint ptr %mdelay748 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 5, ptr %mdelay748, align 4
  br label %do.body958

if.else750:                                       ; preds = %land.lhs.true662.if.else750_crit_edge, %land.lhs.true654.if.else750_crit_edge, %do.end649.if.else750_crit_edge
  tail call fastcc void @set_cardparameter(ptr noundef %add.ptr)
  %184 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %flags, align 4
  %186 = and i32 %185, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp753.not = icmp eq i32 %186, 0
  br i1 %cmp753.not, label %if.else750.if.end777_crit_edge, label %do.body757

if.else750.if.end777_crit_edge:                   ; preds = %if.else750
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end777

do.body757:                                       ; preds = %if.else750
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then769)) #10
          to label %if.end777 [label %if.then769], !srcloc !493

if.then769:                                       ; preds = %do.body757
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr, align 4
  %dev771 = getelementptr inbounds %struct.pcmcia_device, ptr %188, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug293, ptr noundef %dev771, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.33) #10
  br label %if.end777

if.end777:                                        ; preds = %if.then769, %do.body757, %if.else750.if.end777_crit_edge
  %ta1778 = getelementptr i8, ptr %t, i32 -12
  %189 = ptrtoint ptr %ta1778 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %ta1778, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %190)
  %cmp780 = icmp eq i8 %190, 17
  br i1 %cmp780, label %do.body784, label %if.end777.if.end804_crit_edge

if.end777.if.end804_crit_edge:                    ; preds = %if.end777
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end804

do.body784:                                       ; preds = %if.end777
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then796)) #10
          to label %if.end804 [label %if.then796], !srcloc !493

if.then796:                                       ; preds = %do.body784
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr, align 4
  %dev798 = getelementptr inbounds %struct.pcmcia_device, ptr %192, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug294, ptr noundef %dev798, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.33) #10
  br label %if.end804

if.end804:                                        ; preds = %if.then796, %do.body784, %if.end777.if.end804_crit_edge
  %193 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %flags, align 4
  %195 = and i32 %194, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool807.not = icmp eq i32 %195, 0
  br i1 %tobool807.not, label %if.end804.if.end834_crit_edge, label %land.lhs.true808

if.end804.if.end834_crit_edge:                    ; preds = %if.end804
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end834

land.lhs.true808:                                 ; preds = %if.end804
  %196 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %flags, align 4
  %198 = and i32 %197, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool811.not = icmp eq i32 %198, 0
  br i1 %tobool811.not, label %land.lhs.true808.if.end834_crit_edge, label %do.body814

land.lhs.true808.if.end834_crit_edge:             ; preds = %land.lhs.true808
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end834

do.body814:                                       ; preds = %land.lhs.true808
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then826)) #10
          to label %if.end834 [label %if.then826], !srcloc !493

if.then826:                                       ; preds = %do.body814
  call void @__sanitizer_cov_trace_pc() #12
  %199 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %add.ptr, align 4
  %dev828 = getelementptr inbounds %struct.pcmcia_device, ptr %200, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug295, ptr noundef %dev828, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.33) #10
  br label %if.end834

if.end834:                                        ; preds = %if.then826, %do.body814, %land.lhs.true808.if.end834_crit_edge, %if.end804.if.end834_crit_edge
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #10
  %atrq836 = getelementptr i8, ptr %t, i32 -140
  tail call void @__wake_up(ptr noundef %atrq836, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %do.body958

do.body840:                                       ; preds = %if.end623
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then852)) #10
          to label %do.end859 [label %if.then852], !srcloc !493

if.then852:                                       ; preds = %do.body840
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %add.ptr, align 4
  %dev854 = getelementptr inbounds %struct.pcmcia_device, ptr %202, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug296, ptr noundef %dev854, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.33) #10
  br label %do.end859

do.end859:                                        ; preds = %if.then852, %do.body840
  %atrq860 = getelementptr i8, ptr %t, i32 -140
  tail call void @__wake_up(ptr noundef %atrq860, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %do.body958

do.body864:                                       ; preds = %if.end290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then876)) #10
          to label %do.end883 [label %if.then876], !srcloc !493

if.then876:                                       ; preds = %do.body864
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %add.ptr, align 4
  %dev878 = getelementptr inbounds %struct.pcmcia_device, ptr %204, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug297, ptr noundef %dev878, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.33) #10
  br label %do.end883

do.end883:                                        ; preds = %if.then876, %do.body864
  %cwarn884 = getelementptr i8, ptr %t, i32 -26
  %205 = ptrtoint ptr %cwarn884 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %cwarn884, align 2
  %207 = zext i8 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %206, label %do.end883.if.end930_crit_edge [
    i8 0, label %do.end883.if.then893_crit_edge
    i8 10, label %do.end883.if.then893_crit_edge1324
  ]

do.end883.if.then893_crit_edge1324:               ; preds = %do.end883
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then893

do.end883.if.then893_crit_edge:                   ; preds = %do.end883
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then893

do.end883.if.end930_crit_edge:                    ; preds = %do.end883
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end930

if.then893:                                       ; preds = %do.end883.if.then893_crit_edge, %do.end883.if.then893_crit_edge1324
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags) #10
  %208 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add.ptr, align 4
  %dev899 = getelementptr inbounds %struct.pcmcia_device, ptr %209, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev899, ptr noundef nonnull @.str.64) #13
  %210 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %flags, align 4
  %212 = and i32 %211, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool902.not = icmp eq i32 %212, 0
  br i1 %tobool902.not, label %if.then893.if.end927_crit_edge, label %do.body905

if.then893.if.end927_crit_edge:                   ; preds = %if.then893
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end927

do.body905:                                       ; preds = %if.then893
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then917)) #10
          to label %if.end927 [label %if.then917], !srcloc !493

if.then917:                                       ; preds = %do.body905
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %add.ptr, align 4
  %dev919 = getelementptr inbounds %struct.pcmcia_device, ptr %214, i32 0, i32 21
  %215 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %14, align 4
  %conv921 = zext i8 %216 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug298, ptr noundef %dev919, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.33, i32 noundef %conv921) #10
  br label %if.end927

if.end927:                                        ; preds = %if.then917, %do.body905, %if.then893.if.end927_crit_edge
  %217 = ptrtoint ptr %cwarn884 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %cwarn884, align 2
  %atrq929 = getelementptr i8, ptr %t, i32 -140
  tail call void @__wake_up(ptr noundef %atrq929, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end930

if.end930:                                        ; preds = %if.end927, %do.end883.if.end930_crit_edge
  %218 = ptrtoint ptr %cwarn884 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %cwarn884, align 2
  %inc932 = add i8 %219, 1
  store i8 %inc932, ptr %cwarn884, align 2
  %mdelay934 = getelementptr i8, ptr %t, i32 -20
  %220 = ptrtoint ptr %mdelay934 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 10, ptr %mdelay934, align 4
  %221 = ptrtoint ptr %mstate291 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %mstate291, align 1
  br label %do.body958

do.body937:                                       ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then949)) #10
          to label %do.body958 [label %if.then949], !srcloc !493

if.then949:                                       ; preds = %do.body937
  call void @__sanitizer_cov_trace_pc() #12
  %222 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %add.ptr, align 4
  %dev951 = getelementptr inbounds %struct.pcmcia_device, ptr %223, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug299, ptr noundef %dev951, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.33) #10
  br label %do.body958

do.body958:                                       ; preds = %if.then949, %do.body937, %if.end930, %do.end859, %if.end834, %do.end738, %do.end715, %if.then512, %do.body500, %do.end452, %do.end393, %do.body328, %if.then325, %if.then282, %do.body270, %do.end227, %if.else.do.body958_crit_edge, %do.end201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then970)) #10
          to label %do.end977 [label %if.then970], !srcloc !493

if.then970:                                       ; preds = %do.body958
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %add.ptr, align 4
  %dev972 = getelementptr inbounds %struct.pcmcia_device, ptr %225, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug300, ptr noundef %dev972, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.33) #10
  br label %do.end977

do.end977:                                        ; preds = %if.then970, %do.body958
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %ioq = getelementptr i8, ptr %t, i32 -192
  tail call void @__wake_up(ptr noundef %ioq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %do.body980

do.body980:                                       ; preds = %do.end977, %if.then73, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @monitor_card.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@monitor_card, %if.then992)) #10
          to label %do.end999 [label %if.then992], !srcloc !493

if.then992:                                       ; preds = %do.body980
  call void @__sanitizer_cov_trace_pc() #12
  %226 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %add.ptr, align 4
  %dev994 = getelementptr inbounds %struct.pcmcia_device, ptr %227, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @monitor_card.__UNIQUE_ID_ddebug301, ptr noundef %dev994, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.33) #10
  br label %do.end999

do.end999:                                        ; preds = %if.then992, %do.body980
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %228 = load volatile i32, ptr @jiffies, align 128
  %mdelay1000 = getelementptr i8, ptr %t, i32 -20
  %229 = ptrtoint ptr %mdelay1000 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mdelay1000, align 4
  %add1001 = add i32 %230, %228
  %call1002 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add1001) #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end999, %if.then47, %do.end32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptsreq) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @io_read_num_rec_bytes(i32 noundef %iobase, ptr nocapture noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %iobase, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  %and6 = and i32 %iobase, 1048575
  %add7 = or i32 %and6, -18874368
  %1 = inttoptr i32 %add7 to ptr
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %tmp.0 = phi i16 [ 0, %entry ], [ %or, %do.body.do.body_crit_edge ]
  %2 = ptrtoint ptr %s to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %tmp.0, ptr %s, align 2
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !509
  %conv = zext i8 %3 to i16
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %5 = and i8 %4, 4
  %6 = zext i8 %5 to i16
  %7 = shl nuw nsw i16 %6, 6
  %or = or i16 %7, %conv
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s, align 2
  %cmp.not = icmp eq i16 %or, %9
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  ret i16 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_atr(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then)) #10
          to label %do.end6 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  %atr_len = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %atr_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %atr_len, align 2
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug236, ptr noundef %dev4, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef %conv) #10
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %4 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8
  %atr_len7 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 2
  %5 = ptrtoint ptr %atr_len7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %atr_len7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp = icmp ult i16 %6, 3
  br i1 %cmp, label %do.body12, label %if.end32

do.body12:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !493

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev26 = getelementptr inbounds %struct.pcmcia_device, ptr %8, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug237, ptr noundef %dev26, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71) #10
  br label %cleanup

if.end32:                                         ; preds = %do.end6
  %atr = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %atr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %atr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %10)
  %cmp34 = icmp eq i8 %10, 63
  %flags = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #10
  br label %if.end38

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #10
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  %arrayidx40 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx40, align 1
  %proto = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 13
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %proto, align 1
  %ta1 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %14 = ptrtoint ptr %ta1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %ta1, align 4
  %arrayidx49 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 1, i32 2
  br label %do.body41

do.body41:                                        ; preds = %if.then169, %if.else155, %if.then147, %if.then133, %if.end38
  %ix.0 = phi i32 [ 1, %if.end38 ], [ %add123, %if.else155 ], [ %add123, %if.then133 ], [ %add123, %if.then169 ], [ %add123, %if.then147 ]
  %ifno.0 = phi i8 [ 1, %if.end38 ], [ %ifno.1, %if.else155 ], [ %ifno.1, %if.then133 ], [ %ifno.1, %if.then169 ], [ %ifno.1, %if.then147 ]
  %ch.0 = phi i8 [ %12, %if.end38 ], [ %32, %if.else155 ], [ %32, %if.then133 ], [ %32, %if.then169 ], [ %32, %if.then147 ]
  %any_t0.0 = phi i8 [ 0, %if.end38 ], [ 1, %if.else155 ], [ %any_t0.0, %if.then133 ], [ 1, %if.then169 ], [ %any_t0.0, %if.then147 ]
  %any_t1.0 = phi i8 [ 0, %if.end38 ], [ %any_t1.0, %if.else155 ], [ 1, %if.then133 ], [ %any_t1.0, %if.then169 ], [ 1, %if.then147 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ifno.0)
  %cmp43 = icmp ne i8 %ifno.0, 1
  %15 = and i8 %ch.0, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool46.not = icmp eq i8 %15, 0
  %or.cond = select i1 %cmp43, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %if.else74, label %if.then47

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx49, align 2
  %18 = ptrtoint ptr %ta1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ta1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then64)) #10
          to label %do.body88 [label %if.then64], !srcloc !493

if.then64:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev66 = getelementptr inbounds %struct.pcmcia_device, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %ta1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ta1, align 4
  %conv68 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug238, ptr noundef %dev66, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.71, i32 noundef %conv68) #10
  br label %do.body88

if.else74:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ifno.0)
  %cmp76 = icmp ne i8 %ifno.0, 2
  %or.cond309 = select i1 %cmp76, i1 true, i1 %tobool46.not
  br i1 %or.cond309, label %if.else74.do.body88_crit_edge, label %if.then82

if.else74.do.body88_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body88

if.then82:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %ta1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 17, ptr %ta1, align 4
  br label %do.body88

do.body88:                                        ; preds = %if.then82, %if.else74.do.body88_crit_edge, %if.then64, %if.then47
  %ifno.1 = phi i8 [ 3, %if.then82 ], [ %ifno.0, %if.else74.do.body88_crit_edge ], [ 2, %if.then47 ], [ 2, %if.then64 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then100)) #10
          to label %do.end109 [label %if.then100], !srcloc !493

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %dev102 = getelementptr inbounds %struct.pcmcia_device, ptr %25, i32 0, i32 21
  %26 = and i8 %ch.0, -16
  %and104 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug239, ptr noundef %dev102, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.71, i32 noundef %and104) #10
  br label %do.end109

do.end109:                                        ; preds = %if.then100, %do.body88
  %conv110 = zext i8 %ch.0 to i32
  %and111 = lshr i32 %conv110, 4
  %27 = and i32 %and111, 1
  %and113 = lshr i32 %conv110, 5
  %28 = and i32 %and113, 1
  %and116 = lshr i32 %conv110, 6
  %29 = and i32 %and116, 1
  %and120 = and i32 %conv110, 128
  %30 = lshr i32 %conv110, 7
  %add = add i32 %30, %ix.0
  %add118 = add i32 %add, %28
  %add122 = add i32 %add118, %27
  %add123 = add i32 %add122, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool126.not = icmp eq i32 %and120, 0
  br i1 %tobool126.not, label %do.body186, label %if.then127

if.then127:                                       ; preds = %do.end109
  %arrayidx129 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 1, i32 %add123
  %31 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx129, align 1
  %33 = and i8 %32, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool132.not = icmp eq i8 %33, 0
  br i1 %tobool132.not, label %if.else155, label %if.then133

if.then133:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then147)) #10
          to label %do.body41 [label %if.then147], !srcloc !493

if.then147:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dev149 = getelementptr inbounds %struct.pcmcia_device, ptr %35, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug240, ptr noundef %dev149, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.71) #10
  br label %do.body41

if.else155:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then169)) #10
          to label %do.body41 [label %if.then169], !srcloc !493

if.then169:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev171 = getelementptr inbounds %struct.pcmcia_device, ptr %37, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug241, ptr noundef %dev171, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.71) #10
  br label %do.body41

do.body186:                                       ; preds = %do.end109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then198)) #10
          to label %do.end210 [label %if.then198], !srcloc !493

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %dev200 = getelementptr inbounds %struct.pcmcia_device, ptr %39, i32 0, i32 21
  %40 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx40, align 1
  %42 = and i8 %41, 15
  %and204 = zext i8 %42 to i32
  %conv205 = zext i8 %any_t1.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug242, ptr noundef %dev200, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.71, i32 noundef %add123, i32 noundef %and204, i32 noundef %conv205) #10
  br label %do.end210

do.end210:                                        ; preds = %if.then198, %do.body186
  %43 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx40, align 1
  %45 = and i8 %44, 15
  %and215 = zext i8 %45 to i32
  %narrow = add nuw nsw i8 %any_t1.0, 1
  %add211 = zext i8 %narrow to i32
  %add216 = add i32 %add123, %add211
  %add218 = add i32 %add216, %and215
  %46 = ptrtoint ptr %atr_len7 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %atr_len7, align 2
  %conv220 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add218, i32 %conv220)
  %cmp221.not = icmp eq i32 %add218, %conv220
  br i1 %cmp221.not, label %if.end245, label %do.body225

do.body225:                                       ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_atr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_atr, %if.then237)) #10
          to label %cleanup [label %if.then237], !srcloc !493

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %dev239 = getelementptr inbounds %struct.pcmcia_device, ptr %49, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @parse_atr.__UNIQUE_ID_ddebug243, ptr noundef %dev239, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.71) #10
  br label %cleanup

if.end245:                                        ; preds = %do.end210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %any_t0.0)
  %tobool246.not = icmp eq i8 %any_t0.0, 0
  br i1 %tobool246.not, label %if.end249, label %if.end249.thread

if.end249:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %any_t1.0)
  %tobool250.not = icmp eq i8 %any_t1.0, 0
  br i1 %tobool250.not, label %if.end249.cleanup_crit_edge, label %if.then255

if.end249.cleanup_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end249.thread:                                 ; preds = %if.end245
  %flags248 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags248) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %any_t1.0)
  %tobool250.not347 = icmp eq i8 %any_t1.0, 0
  br i1 %tobool250.not347, label %if.end249.thread.cleanup_crit_edge, label %if.then251.thread

if.end249.thread.cleanup_crit_edge:               ; preds = %if.end249.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then251.thread:                                ; preds = %if.end249.thread
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %4, align 4
  br label %if.end257

if.then255:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %4, align 4
  %52 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %proto, align 1
  br label %if.end257

if.end257:                                        ; preds = %if.then255, %if.then251.thread
  %flags258 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags258) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end257, %if.end249.thread.cleanup_crit_edge, %if.end249.cleanup_crit_edge, %if.then237, %do.body225, %if.then24, %do.body12
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then237 ], [ 1, %if.end257 ], [ 1, %if.end249.cleanup_crit_edge ], [ 0, %do.body12 ], [ 0, %do.body225 ], [ 1, %if.end249.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_protocol(ptr noundef %dev, ptr nocapture noundef readonly %ptsreq) unnamed_addr #2 align 64 {
entry:
  %pts_reply = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pts_reply) #10
  %0 = getelementptr inbounds [4 x i8], ptr %pts_reply, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %pts_reply, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %pts_reply, i32 0, i32 3
  %3 = ptrtoint ptr %pts_reply to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pts_reply, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then)) #10
          to label %do.body10 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.pcmcia_device, ptr %11, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug248, ptr noundef %dev6, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80) #10
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then22)) #10
          to label %do.end32 [label %if.then22], !srcloc !493

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev24 = getelementptr inbounds %struct.pcmcia_device, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %ptsreq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptsreq, align 4
  %flags = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 4
  %conv = zext i8 %17 to i32
  %pts1 = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 2
  %18 = ptrtoint ptr %pts1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pts1, align 1
  %conv25 = zext i8 %19 to i32
  %pts2 = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 3
  %20 = ptrtoint ptr %pts2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pts2, align 2
  %conv26 = zext i8 %21 to i32
  %pts3 = getelementptr inbounds %struct.ptsreq, ptr %ptsreq, i32 0, i32 4
  %22 = ptrtoint ptr %pts3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pts3, align 1
  %conv27 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug249, ptr noundef %dev24, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %15, i32 noundef %conv, i32 noundef %conv25, i32 noundef %conv26, i32 noundef %conv27) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then22, %do.body10
  %pts = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15
  %24 = ptrtoint ptr %pts to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %pts, align 4
  %arrayidx35 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx35, align 1
  %26 = ptrtoint ptr %ptsreq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptsreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.not810 = icmp ult i32 %27, 2
  br i1 %cmp.not810, label %do.end32.while.end_crit_edge, label %while.body.lr.ph

do.end32.while.end_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end32
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %arrayidx35.promoted = load i8, ptr %arrayidx35, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %inc812 = phi i8 [ %arrayidx35.promoted, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %tmp.0811 = phi i32 [ %27, %while.body.lr.ph ], [ %shr, %while.body.while.body_crit_edge ]
  %shr = lshr i32 %tmp.0811, 1
  %inc = add i8 %inc812, 1
  %cmp.not = icmp ult i32 %tmp.0811, 4
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %inc, ptr %arrayidx35, align 1
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %do.end32.while.end_crit_edge
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx35, align 1
  %proto = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 13
  %32 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %proto, align 1
  %33 = or i8 %31, 16
  store i8 %33, ptr %arrayidx35, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then61)) #10
          to label %do.end69 [label %if.then61], !srcloc !493

if.then61:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dev63 = getelementptr inbounds %struct.pcmcia_device, ptr %35, i32 0, i32 21
  %ta1 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %36 = ptrtoint ptr %ta1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ta1, align 4
  %conv64 = zext i8 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug250, ptr noundef %dev63, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.80, i32 noundef %conv64) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then61, %while.end
  %ta170 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %38 = ptrtoint ptr %ta170 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ta170, align 4
  %conv71 = zext i8 %39 to i32
  %and = and i32 %conv71, 15
  %40 = lshr i32 %conv71, 4
  %arrayidx77 = getelementptr [10 x [14 x i8]], ptr @fi_di_table, i32 0, i32 %and, i32 %40
  %41 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx77, align 1
  %arrayidx79 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15, i32 2
  %43 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx79, align 2
  %44 = ptrtoint ptr %pts to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pts, align 4
  %46 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx35, align 1
  %xor724 = xor i8 %45, %42
  %xor89725 = xor i8 %xor724, %47
  %arrayidx92 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15, i32 3
  %48 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %xor89725, ptr %arrayidx92, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then106)) #10
          to label %do.end125 [label %if.then106], !srcloc !493

if.then106:                                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %dev108 = getelementptr inbounds %struct.pcmcia_device, ptr %50, i32 0, i32 21
  %51 = ptrtoint ptr %pts to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pts, align 4
  %conv111 = zext i8 %52 to i32
  %53 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx35, align 1
  %conv114 = zext i8 %54 to i32
  %55 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx79, align 2
  %conv117 = zext i8 %56 to i32
  %57 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx92, align 1
  %conv120 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug251, ptr noundef %dev108, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.80, i32 noundef %conv111, i32 noundef %conv114, i32 noundef %conv117, i32 noundef %conv120) #10
  br label %do.end125

do.end125:                                        ; preds = %if.then106, %do.end69
  %flags126 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  %59 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags126, align 4
  %61 = and i32 %60, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool128.not = icmp eq i32 %61, 0
  br i1 %tobool128.not, label %do.end125.do.body132_crit_edge, label %invert_revert.exit.i

do.end125.do.body132_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body132

invert_revert.exit.i:                             ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %pts to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pts, align 1
  %neg.i.i = xor i8 %63, -1
  %idxprom.i.i.i = zext i8 %neg.i.i to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.i.i, align 1
  store i8 %65, ptr %pts, align 1
  %arrayidx.i.1 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15, i32 1
  %66 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.1, align 1
  %neg.i.i.1 = xor i8 %67, -1
  %idxprom.i.i.i.1 = zext i8 %neg.i.i.1 to i32
  %arrayidx.i.i.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i.1
  %68 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i.i.1, align 1
  store i8 %69, ptr %arrayidx.i.1, align 1
  %arrayidx.i.2 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15, i32 2
  %70 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.2, align 1
  %neg.i.i.2 = xor i8 %71, -1
  %idxprom.i.i.i.2 = zext i8 %neg.i.i.2 to i32
  %arrayidx.i.i.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i.2
  %72 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i.i.2, align 1
  store i8 %73, ptr %arrayidx.i.2, align 1
  %arrayidx.i.3 = getelementptr %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15, i32 3
  %74 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.3, align 1
  %neg.i.i.3 = xor i8 %75, -1
  %idxprom.i.i.i.3 = zext i8 %neg.i.i.3 to i32
  %arrayidx.i.i.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i.3
  %76 = ptrtoint ptr %arrayidx.i.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i.i.3, align 1
  store i8 %77, ptr %arrayidx.i.3, align 1
  br label %do.body132

do.body132:                                       ; preds = %invert_revert.exit.i, %do.end125.do.body132_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !511
  tail call void @arm_heavy_mb() #10
  %and135 = and i32 %9, 1048575
  %add136 = or i32 %and135, -18874368
  %78 = inttoptr i32 %add136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 -128) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then151)) #10
          to label %do.end158 [label %if.then151], !srcloc !493

if.then151:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %dev153 = getelementptr inbounds %struct.pcmcia_device, ptr %80, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug252, ptr noundef %dev153, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80) #10
  br label %do.end158

do.end158:                                        ; preds = %if.then151, %do.body132
  %81 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags126, align 4
  %83 = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool161.not = icmp eq i32 %83, 0
  %or162 = select i1 %tobool161.not, i32 32, i32 34
  %baudv = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 11
  %84 = ptrtoint ptr %baudv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %baudv, align 4
  %shr163 = lshr i32 %85, 8
  %and164 = and i32 %shr163, 1
  %or165 = or i32 %or162, %and164
  %conv166 = trunc i32 %or165 to i8
  %flags1 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 9
  %86 = ptrtoint ptr %flags1 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv166, ptr %flags1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !512
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %flags1, align 4
  %add171 = add i32 %9, 1
  %and172 = and i32 %add171, 1048575
  %add173 = or i32 %and172, -18874368
  %89 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %88) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then188)) #10
          to label %do.body199 [label %if.then188], !srcloc !493

if.then188:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %dev190 = getelementptr inbounds %struct.pcmcia_device, ptr %91, i32 0, i32 21
  %92 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flags1, align 4
  %conv192 = zext i8 %93 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug253, ptr noundef %dev190, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.80, i32 noundef %conv192) #10
  br label %do.body199

do.body199:                                       ; preds = %if.then188, %do.end158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then211)) #10
          to label %do.end218 [label %if.then211], !srcloc !493

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  %dev213 = getelementptr inbounds %struct.pcmcia_device, ptr %95, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug254, ptr noundef %dev213, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.80) #10
  br label %do.end218

do.end218:                                        ; preds = %if.then211, %do.body199
  %add225 = add i32 %9, 3
  %and226 = and i32 %add225, 1048575
  %add227 = or i32 %and226, -18874368
  %96 = inttoptr i32 %add227 to ptr
  %add234 = add i32 %9, 4
  %and235 = and i32 %add234, 1048575
  %add236 = or i32 %and235, -18874368
  %97 = inttoptr i32 %add236 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !513
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 0) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !514
  tail call void @arm_heavy_mb() #10
  %98 = ptrtoint ptr %pts to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %pts, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %99) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !513
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 1) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !514
  tail call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx35, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %101) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !513
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 2) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !514
  tail call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx79, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %103) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !513
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 3) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !514
  tail call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx92, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %105) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then252)) #10
          to label %do.body260 [label %if.then252], !srcloc !493

if.then252:                                       ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  %dev254 = getelementptr inbounds %struct.pcmcia_device, ptr %107, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug255, ptr noundef %dev254, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.80) #10
  br label %do.body260

do.body260:                                       ; preds = %if.then252, %do.end218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !515
  tail call void @arm_heavy_mb() #10
  %add263 = add i32 %9, 5
  %and264 = and i32 %add263, 1048575
  %add265 = or i32 %and264, -18874368
  %108 = inttoptr i32 %add265 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 4) #10, !srcloc !499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !516
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 80) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then287)) #10
          to label %for.body298 [label %if.then287], !srcloc !493

if.then287:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  %dev289 = getelementptr inbounds %struct.pcmcia_device, ptr %110, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug256, ptr noundef %dev289, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.80) #10
  br label %for.body298

for.body298:                                      ; preds = %if.end330.for.body298_crit_edge, %if.then287, %do.body260
  %i.1814 = phi i32 [ %inc332, %if.end330.for.body298_crit_edge ], [ 0, %do.body260 ], [ 0, %if.then287 ]
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !517
  %112 = and i8 %111, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool307.not = icmp eq i8 %112, 0
  br i1 %tobool307.not, label %if.end330, label %do.body310

do.body310:                                       ; preds = %for.body298
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %for.end333.thread)) #10
          to label %for.end333 [label %for.end333.thread], !srcloc !493

for.end333.thread:                                ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %dev324 = getelementptr inbounds %struct.pcmcia_device, ptr %114, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug257, ptr noundef %dev324, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.80) #10
  br label %do.body360

if.end330:                                        ; preds = %for.body298
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  %inc332 = add nuw nsw i32 %i.1814, 1
  %exitcond.not = icmp eq i32 %inc332, 100
  br i1 %exitcond.not, label %if.end330.do.body338_crit_edge, label %if.end330.for.body298_crit_edge

if.end330.for.body298_crit_edge:                  ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body298

if.end330.do.body338_crit_edge:                   ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body338

for.end333:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.1814)
  %cmp334 = icmp eq i32 %i.1814, 100
  br i1 %cmp334, label %for.end333.do.body338_crit_edge, label %for.end333.do.body360_crit_edge

for.end333.do.body360_crit_edge:                  ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body360

for.end333.do.body338_crit_edge:                  ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body338

do.body338:                                       ; preds = %for.end333.do.body338_crit_edge, %if.end330.do.body338_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then350)) #10
          to label %do.body619 [label %if.then350], !srcloc !493

if.then350:                                       ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 4
  %dev352 = getelementptr inbounds %struct.pcmcia_device, ptr %116, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug258, ptr noundef %dev352, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.80) #10
  br label %do.body619

do.body360:                                       ; preds = %for.end333.do.body360_crit_edge, %for.end333.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then372)) #10
          to label %do.end379 [label %if.then372], !srcloc !493

if.then372:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  %dev374 = getelementptr inbounds %struct.pcmcia_device, ptr %118, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug259, ptr noundef %dev374, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.80) #10
  br label %do.end379

do.end379:                                        ; preds = %if.then372, %do.body360
  %add.i = add i32 %9, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %119 = inttoptr i32 %add1.i to ptr
  br label %for.body383

for.body383:                                      ; preds = %if.end416.for.body383_crit_edge, %do.end379
  %i.2815 = phi i32 [ 0, %do.end379 ], [ %inc418, %if.end416.for.body383_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body383
  %tmp.0.i = phi i16 [ 0, %for.body383 ], [ %or.i, %do.body.i.do.body.i_crit_edge ]
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %119) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !509
  %conv.i = zext i8 %120 to i16
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !510
  %122 = and i8 %121, 4
  %123 = zext i8 %122 to i16
  %124 = shl nuw nsw i16 %123, 6
  %or.i = or i16 %124, %conv.i
  %cmp.not.i = icmp eq i16 %or.i, %tmp.0.i
  br i1 %cmp.not.i, label %io_read_num_rec_bytes.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

io_read_num_rec_bytes.exit:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %tmp.0.i)
  %cmp386 = icmp ugt i16 %tmp.0.i, 3
  br i1 %cmp386, label %do.body390, label %if.end416

do.body390:                                       ; preds = %io_read_num_rec_bytes.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then402)) #10
          to label %do.end410 [label %if.then402], !srcloc !493

if.then402:                                       ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %dev404 = getelementptr inbounds %struct.pcmcia_device, ptr %126, i32 0, i32 21
  %conv405 = zext i16 %tmp.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug260, ptr noundef %dev404, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.80, i32 noundef %conv405) #10
  br label %do.end410

do.end410:                                        ; preds = %if.then402, %do.body390
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %tmp.0.i)
  %cmp412 = icmp ugt i16 %tmp.0.i, 4
  br i1 %cmp412, label %do.end410.do.body619_crit_edge, label %do.end410.for.end419_crit_edge

do.end410.for.end419_crit_edge:                   ; preds = %do.end410
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end419

do.end410.do.body619_crit_edge:                   ; preds = %do.end410
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body619

if.end416:                                        ; preds = %io_read_num_rec_bytes.exit
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  %inc418 = add nuw nsw i32 %i.2815, 1
  %exitcond821.not = icmp eq i32 %inc418, 100
  br i1 %exitcond821.not, label %if.end416.for.end419_crit_edge, label %if.end416.for.body383_crit_edge

if.end416.for.body383_crit_edge:                  ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body383

if.end416.for.end419_crit_edge:                   ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end419

for.end419:                                       ; preds = %if.end416.for.end419_crit_edge, %do.end410.for.end419_crit_edge
  %i.2806 = phi i32 [ %i.2815, %do.end410.for.end419_crit_edge ], [ 100, %if.end416.for.end419_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %tmp.0.i)
  %cmp421 = icmp ne i16 %tmp.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.2806)
  %cmp425804 = icmp eq i32 %i.2806, 100
  %cmp425 = select i1 %cmp421, i1 %cmp425804, i1 false
  br i1 %cmp425, label %do.body429, label %do.body451

do.body429:                                       ; preds = %for.end419
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then441)) #10
          to label %do.body619 [label %if.then441], !srcloc !493

if.then441:                                       ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 4
  %dev443 = getelementptr inbounds %struct.pcmcia_device, ptr %128, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug261, ptr noundef %dev443, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.80) #10
  br label %do.body619

do.body451:                                       ; preds = %for.end419
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then463)) #10
          to label %do.body471 [label %if.then463], !srcloc !493

if.then463:                                       ; preds = %do.body451
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 4
  %dev465 = getelementptr inbounds %struct.pcmcia_device, ptr %130, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug262, ptr noundef %dev465, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.80) #10
  br label %do.body471

do.body471:                                       ; preds = %if.then463, %do.body451
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !518
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 -128) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then491)) #10
          to label %do.end498 [label %if.then491], !srcloc !493

if.then491:                                       ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  %dev493 = getelementptr inbounds %struct.pcmcia_device, ptr %132, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug263, ptr noundef %dev493, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.80) #10
  br label %do.end498

do.end498:                                        ; preds = %if.then491, %do.body471
  %conv500 = zext i16 %tmp.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp.0.i)
  %cmp501816.not = icmp eq i16 %tmp.0.i, 0
  br i1 %cmp501816.not, label %do.end498.do.body524_crit_edge, label %do.end498.do.body504_crit_edge

do.end498.do.body504_crit_edge:                   ; preds = %do.end498
  br label %do.body504

do.end498.do.body524_crit_edge:                   ; preds = %do.end498
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body524

do.body504:                                       ; preds = %do.body504.do.body504_crit_edge, %do.end498.do.body504_crit_edge
  %i.4817 = phi i32 [ %inc521, %do.body504.do.body504_crit_edge ], [ 0, %do.end498.do.body504_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !519
  tail call void @arm_heavy_mb() #10
  %conv507 = trunc i32 %i.4817 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %conv507) #10, !srcloc !499
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !520
  %arrayidx519 = getelementptr [4 x i8], ptr %pts_reply, i32 0, i32 %i.4817
  %134 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx519, align 1
  %inc521 = add nuw nsw i32 %i.4817, 1
  %exitcond822.not = icmp eq i32 %inc521, %conv500
  br i1 %exitcond822.not, label %do.body504.do.body524_crit_edge, label %do.body504.do.body504_crit_edge

do.body504.do.body504_crit_edge:                  ; preds = %do.body504
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body504

do.body504.do.body524_crit_edge:                  ; preds = %do.body504
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body524

do.body524:                                       ; preds = %do.body504.do.body524_crit_edge, %do.end498.do.body524_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then536)) #10
          to label %do.body544 [label %if.then536], !srcloc !493

if.then536:                                       ; preds = %do.body524
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev, align 4
  %dev538 = getelementptr inbounds %struct.pcmcia_device, ptr %136, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug264, ptr noundef %dev538, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.80) #10
  br label %do.body544

do.body544:                                       ; preds = %if.then536, %do.body524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !521
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 32) #10, !srcloc !499
  %137 = ptrtoint ptr %pts to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %pts, align 4
  %139 = ptrtoint ptr %pts_reply to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %pts_reply, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %140)
  %cmp556 = icmp eq i8 %138, %140
  br i1 %cmp556, label %land.lhs.true, label %do.body544.do.body619_crit_edge

do.body544.do.body619_crit_edge:                  ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body619

land.lhs.true:                                    ; preds = %do.body544
  %141 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx35, align 1
  %143 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp563 = icmp eq i8 %142, %144
  br i1 %cmp563, label %land.lhs.true565, label %land.lhs.true.land.lhs.true593_crit_edge

land.lhs.true.land.lhs.true593_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true593

land.lhs.true565:                                 ; preds = %land.lhs.true
  %145 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx79, align 2
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %148)
  %cmp571 = icmp eq i8 %146, %148
  br i1 %cmp571, label %land.lhs.true573, label %land.lhs.true565.land.lhs.true593_crit_edge

land.lhs.true565.land.lhs.true593_crit_edge:      ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true593

land.lhs.true573:                                 ; preds = %land.lhs.true565
  %149 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx92, align 1
  %151 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %152)
  %cmp579 = icmp eq i8 %150, %152
  br i1 %cmp579, label %if.then581, label %land.lhs.true573.land.lhs.true593_crit_edge

land.lhs.true573.land.lhs.true593_crit_edge:      ; preds = %land.lhs.true573
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true593

if.then581:                                       ; preds = %land.lhs.true573
  call void @__sanitizer_cov_trace_pc() #12
  %call584 = tail call fastcc i32 @calc_baudv(i8 noundef zeroext %146)
  %153 = ptrtoint ptr %baudv to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call584, ptr %baudv, align 4
  tail call fastcc void @set_cardparameter(ptr noundef %dev)
  br label %do.body619

land.lhs.true593:                                 ; preds = %land.lhs.true573.land.lhs.true593_crit_edge, %land.lhs.true565.land.lhs.true593_crit_edge, %land.lhs.true.land.lhs.true593_crit_edge
  %154 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx35, align 1
  %156 = and i8 %155, -17
  %157 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %156, i8 %158)
  %cmp600 = icmp eq i8 %156, %158
  br i1 %cmp600, label %land.lhs.true602, label %land.lhs.true593.do.body619_crit_edge

land.lhs.true593.do.body619_crit_edge:            ; preds = %land.lhs.true593
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body619

land.lhs.true602:                                 ; preds = %land.lhs.true593
  %xor607726 = xor i8 %156, %138
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %xor607726, i8 %160)
  %cmp610 = icmp eq i8 %xor607726, %160
  br i1 %cmp610, label %if.then612, label %land.lhs.true602.do.body619_crit_edge

land.lhs.true602.do.body619_crit_edge:            ; preds = %land.lhs.true602
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body619

if.then612:                                       ; preds = %land.lhs.true602
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %baudv to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 372, ptr %baudv, align 4
  tail call fastcc void @set_cardparameter(ptr noundef %dev)
  br label %do.body619

do.body619:                                       ; preds = %if.then612, %land.lhs.true602.do.body619_crit_edge, %land.lhs.true593.do.body619_crit_edge, %if.then581, %do.body544.do.body619_crit_edge, %if.then441, %do.body429, %do.end410.do.body619_crit_edge, %if.then350, %do.body338
  %rc.0 = phi i32 [ 0, %if.then581 ], [ 0, %if.then612 ], [ -5, %if.then350 ], [ -5, %do.end410.do.body619_crit_edge ], [ -5, %if.then441 ], [ -5, %land.lhs.true602.do.body619_crit_edge ], [ -5, %land.lhs.true593.do.body619_crit_edge ], [ -5, %do.body338 ], [ -5, %do.body429 ], [ -5, %do.body544.do.body619_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_protocol.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_protocol, %if.then631)) #10
          to label %do.end638 [label %if.then631], !srcloc !493

if.then631:                                       ; preds = %do.body619
  call void @__sanitizer_cov_trace_pc() #12
  %162 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev, align 4
  %dev633 = getelementptr inbounds %struct.pcmcia_device, ptr %163, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_protocol.__UNIQUE_ID_ddebug265, ptr noundef %dev633, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.80) #10
  br label %do.end638

do.end638:                                        ; preds = %if.then631, %do.body619
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pts_reply) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_cardparameter(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_cardparameter.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_cardparameter, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.pcmcia_device, ptr %7, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_cardparameter.__UNIQUE_ID_ddebug244, ptr noundef %dev5, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %flags1 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 9
  %8 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags1, align 4
  %baudv = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 11
  %10 = ptrtoint ptr %baudv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baudv, align 4
  %sub = add i32 %11, 511
  %and = lshr i32 %sub, 8
  %12 = trunc i32 %and to i8
  %13 = and i8 %12, 1
  %conv8 = or i8 %13, %9
  store i8 %conv8, ptr %flags1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !522
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags1, align 4
  %add = add i32 %5, 1
  %and14 = and i32 %add, 1048575
  %add15 = or i32 %and14, -18874368
  %16 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %15) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_cardparameter.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_cardparameter, %if.then30)) #10
          to label %do.body40 [label %if.then30], !srcloc !493

if.then30:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev32 = getelementptr inbounds %struct.pcmcia_device, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags1, align 4
  %conv34 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_cardparameter.__UNIQUE_ID_ddebug245, ptr noundef %dev32, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, i32 noundef %conv34) #10
  br label %do.body40

do.body40:                                        ; preds = %if.then30, %do.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !523
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %baudv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %baudv, align 4
  %23 = trunc i32 %22 to i8
  %conv46 = add i8 %23, -1
  %add47 = add i32 %5, 6
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %24 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv46) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_cardparameter.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_cardparameter, %if.then64)) #10
          to label %do.end75 [label %if.then64], !srcloc !493

if.then64:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %dev66 = getelementptr inbounds %struct.pcmcia_device, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %baudv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %baudv, align 4
  %sub69 = add i32 %28, 255
  %and70 = and i32 %sub69, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_cardparameter.__UNIQUE_ID_ddebug246, ptr noundef %dev66, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.99, i32 noundef %28, i32 noundef %and70) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then64, %do.body40
  %atr = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 1
  %29 = load i8, ptr getelementptr inbounds ([2 x %struct.card_fixup], ptr @card_fixups, i32 0, i32 0, i32 1), align 1
  %conv81 = zext i8 %29 to i32
  %bcmp = tail call i32 @bcmp(ptr %atr, ptr nonnull @card_fixups, i32 %conv81) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool83.not = icmp eq i32 %bcmp, 0
  br i1 %tobool83.not, label %if.then84, label %do.end75.for.inc_crit_edge

do.end75.for.inc_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then84:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  %30 = load i8, ptr getelementptr inbounds ([2 x %struct.card_fixup], ptr @card_fixups, i32 0, i32 0, i32 2), align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then84, %do.end75.for.inc_crit_edge
  %stopbits.1 = phi i8 [ 2, %do.end75.for.inc_crit_edge ], [ %30, %if.then84 ]
  %31 = load i8, ptr getelementptr inbounds ([2 x %struct.card_fixup], ptr @card_fixups, i32 0, i32 1, i32 1), align 1
  %conv81.1 = zext i8 %31 to i32
  %bcmp.1 = tail call i32 @bcmp(ptr %atr, ptr getelementptr inbounds ([2 x %struct.card_fixup], ptr @card_fixups, i32 0, i32 1), i32 %conv81.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool83.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool83.not.1, label %if.then84.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then84.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %32 = load i8, ptr getelementptr inbounds ([2 x %struct.card_fixup], ptr @card_fixups, i32 0, i32 1, i32 2), align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then84.1, %for.inc.for.inc.1_crit_edge
  %stopbits.1.1 = phi i8 [ %stopbits.1, %for.inc.for.inc.1_crit_edge ], [ %32, %if.then84.1 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !524
  tail call void @arm_heavy_mb() #10
  %add91 = add i32 %5, 7
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %33 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %stopbits.1.1) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_cardparameter.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_cardparameter, %if.then108)) #10
          to label %do.end115 [label %if.then108], !srcloc !493

if.then108:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dev110 = getelementptr inbounds %struct.pcmcia_device, ptr %35, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_cardparameter.__UNIQUE_ID_ddebug247, ptr noundef %dev110, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.99) #10
  br label %do.end115

do.end115:                                        ; preds = %if.then108, %for.inc.1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @calc_baudv(i8 noundef zeroext %fidi) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %fidi to i32
  %0 = lshr i32 %conv, 4
  %switch.tableidx = add nsw i32 %0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 12
  br i1 %1, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [12 x i16], ptr @switch.table.calc_baudv, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %wcrcf.0 = phi i16 [ 372, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %and15 = and i32 %conv, 15
  %switch.tableidx35 = add nsw i32 %and15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx35)
  %3 = icmp ult i32 %switch.tableidx35, 8
  br i1 %3, label %switch.lookup34, label %sw.epilog.sw.epilog27_crit_edge

sw.epilog.sw.epilog27_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog27

switch.lookup34:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep36 = getelementptr inbounds [8 x i16], ptr @switch.table.calc_baudv.171, i32 0, i32 %switch.tableidx35
  %4 = ptrtoint ptr %switch.gep36 to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load37 = load i16, ptr %switch.gep36, align 2
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %switch.lookup34, %sw.epilog.sw.epilog27_crit_edge
  %wbrcf.0 = phi i16 [ 1, %sw.epilog.sw.epilog27_crit_edge ], [ %switch.load37, %switch.lookup34 ]
  %div33 = udiv i16 %wcrcf.0, %wbrcf.0
  %div.zext = zext i16 %div33 to i32
  ret i32 %div.zext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmm_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry83 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry136 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_read.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_read, %if.then)) #10
          to label %do.end10 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 21
  %10 = tail call i32 @llvm.read_register.i32(metadata !483) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_read.__UNIQUE_ID_ddebug302, ptr noundef %dev5, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, ptr noundef %comm, i32 noundef %15) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end10.cleanup491_crit_edge, label %if.end12

do.end10.cleanup491_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup491

if.end12:                                         ; preds = %do.end10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call14 = tail call ptr @pcmcia_dev_present(ptr noundef %17) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.cleanup491_crit_edge, label %lor.lhs.false

if.end12.cleanup491_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup491

lor.lhs.false:                                    ; preds = %if.end12
  %flags = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 14
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %if.end19, label %lor.lhs.false.cleanup491_crit_edge

lor.lhs.false.cleanup491_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup491

if.end19:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup491_crit_edge

if.end19.cleanup491_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup491

if.end24:                                         ; preds = %if.end19
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 950) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %24 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_flags, align 4
  %and = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %if.end24.if.end62_crit_edge

if.end24.if.end62_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

lor.lhs.false32:                                  ; preds = %if.end24
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp35.not = icmp eq i32 %28, 0
  br i1 %cmp35.not, label %if.then36, label %lor.lhs.false32.if.end62_crit_edge

lor.lhs.false32.if.end62_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then36:                                        ; preds = %lor.lhs.false32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %29 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %atrq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 6
  %call38691 = call i32 @prepare_to_wait_event(ptr noundef %atrq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %30 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_flags, align 4
  %and40692 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40692)
  %tobool41.not693 = icmp eq i32 %and40692, 0
  br i1 %tobool41.not693, label %if.then36.lor.lhs.false42_crit_edge, label %if.then36.if.end53.thread655_crit_edge

if.then36.if.end53.thread655_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.thread655

if.then36.lor.lhs.false42_crit_edge:              ; preds = %if.then36
  br label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %cleanup.lor.lhs.false42_crit_edge, %if.then36.lor.lhs.false42_crit_edge
  %call38694 = phi i32 [ %call38, %cleanup.lor.lhs.false42_crit_edge ], [ %call38691, %if.then36.lor.lhs.false42_crit_edge ]
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp45.not = icmp eq i32 %34, 0
  br i1 %cmp45.not, label %if.end47, label %lor.lhs.false42.if.end53.thread655_crit_edge

lor.lhs.false42.if.end53.thread655_crit_edge:     ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.thread655

if.end47:                                         ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38694)
  %tobool48.not = icmp eq i32 %call38694, 0
  br i1 %tobool48.not, label %cleanup, label %if.then56

cleanup:                                          ; preds = %if.end47
  call void @schedule() #10
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %atrq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %35 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_flags, align 4
  %and40 = and i32 %36, 2048
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %cleanup.lor.lhs.false42_crit_edge, label %cleanup.if.end53.thread655_crit_edge

cleanup.if.end53.thread655_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.thread655

cleanup.lor.lhs.false42_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false42

if.end53.thread655:                               ; preds = %cleanup.if.end53.thread655_crit_edge, %lor.lhs.false42.if.end53.thread655_crit_edge, %if.then36.if.end53.thread655_crit_edge
  call void @finish_wait(ptr noundef %atrq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end62

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %37 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f_flags, align 4
  %and58 = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %. = select i1 %tobool59.not, i32 -512, i32 -11
  br label %cleanup491

if.end62:                                         ; preds = %if.end53.thread655, %lor.lhs.false32.if.end62_crit_edge, %if.end24.if.end62_crit_edge
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags, align 4
  %41 = and i32 %40, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp65 = icmp eq i32 %41, 0
  br i1 %cmp65, label %if.end62.cleanup491_crit_edge, label %if.end67

if.end62.cleanup491_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup491

if.end67:                                         ; preds = %if.end62
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 962) #10
  %42 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_flags, align 4
  %and76 = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %if.end67.if.end119_crit_edge

if.end67.if.end119_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

lor.lhs.false78:                                  ; preds = %if.end67
  %rpos = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 4
  %44 = ptrtoint ptr %rpos to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rpos, align 2
  %rlen = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 3
  %46 = ptrtoint ptr %rlen to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp80 = icmp ult i16 %45, %47
  br i1 %cmp80, label %lor.lhs.false78.if.end119_crit_edge, label %if.then82

lor.lhs.false78.if.end119_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then82:                                        ; preds = %lor.lhs.false78
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry83) #10
  %48 = call ptr @memset(ptr %__wq_entry83, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry83, i32 noundef 0) #10
  %readq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 7
  %call87696 = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry83, i32 noundef 1) #10
  %49 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %f_flags, align 4
  %and89697 = and i32 %50, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89697)
  %tobool90.not698 = icmp eq i32 %and89697, 0
  br i1 %tobool90.not698, label %if.then82.lor.lhs.false91_crit_edge, label %if.then82.if.end110.thread667_crit_edge

if.then82.if.end110.thread667_crit_edge:          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.thread667

if.then82.lor.lhs.false91_crit_edge:              ; preds = %if.then82
  br label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %cleanup103.lor.lhs.false91_crit_edge, %if.then82.lor.lhs.false91_crit_edge
  %call87699 = phi i32 [ %call87, %cleanup103.lor.lhs.false91_crit_edge ], [ %call87696, %if.then82.lor.lhs.false91_crit_edge ]
  %51 = ptrtoint ptr %rpos to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %rpos, align 2
  %53 = ptrtoint ptr %rlen to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp96 = icmp ult i16 %52, %54
  br i1 %cmp96, label %lor.lhs.false91.if.end110.thread667_crit_edge, label %if.end99

lor.lhs.false91.if.end110.thread667_crit_edge:    ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.thread667

if.end99:                                         ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87699)
  %tobool100.not = icmp eq i32 %call87699, 0
  br i1 %tobool100.not, label %cleanup103, label %if.then113

cleanup103:                                       ; preds = %if.end99
  call void @schedule() #10
  %call87 = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry83, i32 noundef 1) #10
  %55 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %f_flags, align 4
  %and89 = and i32 %56, 2048
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %cleanup103.lor.lhs.false91_crit_edge, label %cleanup103.if.end110.thread667_crit_edge

cleanup103.if.end110.thread667_crit_edge:         ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.thread667

cleanup103.lor.lhs.false91_crit_edge:             ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false91

if.end110.thread667:                              ; preds = %cleanup103.if.end110.thread667_crit_edge, %lor.lhs.false91.if.end110.thread667_crit_edge, %if.then82.if.end110.thread667_crit_edge
  call void @finish_wait(ptr noundef %readq, ptr noundef nonnull %__wq_entry83) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry83) #10
  br label %if.end119

if.then113:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry83) #10
  %57 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %f_flags, align 4
  %and115 = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %.611 = select i1 %tobool116.not, i32 -512, i32 -11
  br label %cleanup491

if.end119:                                        ; preds = %if.end110.thread667, %lor.lhs.false78.if.end119_crit_edge, %if.end67.if.end119_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 972) #10
  %59 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f_flags, align 4
  %and128 = and i32 %60, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %lor.lhs.false130, label %if.end119.if.end170_crit_edge

if.end119.if.end170_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

lor.lhs.false130:                                 ; preds = %if.end119
  %call132 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp eq i32 %call132, 0
  br i1 %cmp133, label %lor.lhs.false130.if.end170_crit_edge, label %if.then135

lor.lhs.false130.if.end170_crit_edge:             ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then135:                                       ; preds = %lor.lhs.false130
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry136) #10
  %61 = call ptr @memset(ptr %__wq_entry136, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry136, i32 noundef 0) #10
  %ioq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  %call140702 = call i32 @prepare_to_wait_event(ptr noundef %ioq, ptr noundef nonnull %__wq_entry136, i32 noundef 1) #10
  %62 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %f_flags, align 4
  %and142703 = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142703)
  %tobool143.not704 = icmp eq i32 %and142703, 0
  br i1 %tobool143.not704, label %if.then135.lor.lhs.false144_crit_edge, label %if.then135.if.end161.thread679_crit_edge

if.then135.if.end161.thread679_crit_edge:         ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.thread679

if.then135.lor.lhs.false144_crit_edge:            ; preds = %if.then135
  br label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %cleanup154.lor.lhs.false144_crit_edge, %if.then135.lor.lhs.false144_crit_edge
  %call140705 = phi i32 [ %call140, %cleanup154.lor.lhs.false144_crit_edge ], [ %call140702, %if.then135.lor.lhs.false144_crit_edge ]
  %call146 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %lor.lhs.false144.if.end161.thread679_crit_edge, label %if.end150

lor.lhs.false144.if.end161.thread679_crit_edge:   ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.thread679

if.end150:                                        ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140705)
  %tobool151.not = icmp eq i32 %call140705, 0
  br i1 %tobool151.not, label %cleanup154, label %if.then164

cleanup154:                                       ; preds = %if.end150
  call void @schedule() #10
  %call140 = call i32 @prepare_to_wait_event(ptr noundef %ioq, ptr noundef nonnull %__wq_entry136, i32 noundef 1) #10
  %64 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f_flags, align 4
  %and142 = and i32 %65, 2048
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %cleanup154.lor.lhs.false144_crit_edge, label %cleanup154.if.end161.thread679_crit_edge

cleanup154.if.end161.thread679_crit_edge:         ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.thread679

cleanup154.lor.lhs.false144_crit_edge:            ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false144

if.end161.thread679:                              ; preds = %cleanup154.if.end161.thread679_crit_edge, %lor.lhs.false144.if.end161.thread679_crit_edge, %if.then135.if.end161.thread679_crit_edge
  call void @finish_wait(ptr noundef %ioq, ptr noundef nonnull %__wq_entry136) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry136) #10
  br label %if.end170

if.then164:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry136) #10
  %66 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %f_flags, align 4
  %and166 = and i32 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  %.612 = select i1 %tobool167.not, i32 -512, i32 -11
  br label %cleanup491

if.end170:                                        ; preds = %if.end161.thread679, %lor.lhs.false130.if.end170_crit_edge, %if.end119.if.end170_crit_edge
  %and171 = and i32 %7, 1048575
  %add172 = or i32 %and171, -18874368
  %68 = inttoptr i32 %add172 to ptr
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !525
  %flags0 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 8
  %70 = ptrtoint ptr %flags0 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %flags0, align 1
  %71 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp179 = icmp eq i8 %71, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp184 = icmp eq i8 %69, -1
  %or.cond = or i1 %cmp184, %cmp179
  br i1 %or.cond, label %if.then186, label %do.body197

if.then186:                                       ; preds = %if.end170
  call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  %72 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flags0, align 1
  %74 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool191.not = icmp eq i8 %74, 0
  br i1 %tobool191.not, label %if.then186.release_io_crit_edge, label %if.then192

if.then186.release_io_crit_edge:                  ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_io

if.then192:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  br label %release_io

do.body197:                                       ; preds = %if.end170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_read, %if.then209)) #10
          to label %do.end216 [label %if.then209], !srcloc !493

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %dev211 = getelementptr inbounds %struct.pcmcia_device, ptr %76, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_read.__UNIQUE_ID_ddebug303, ptr noundef %dev211, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109) #10
  br label %do.end216

do.end216:                                        ; preds = %if.then209, %do.body197
  %rlen217 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 3
  %77 = ptrtoint ptr %rlen217 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rlen217, align 4
  %conv218 = zext i16 %78 to i32
  %rpos219 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 4
  %79 = ptrtoint ptr %rpos219 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %rpos219, align 2
  %conv220 = zext i16 %80 to i32
  %sub = sub nsw i32 %conv218, %conv220
  %81 = call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %add226 = add i32 %81, %conv220
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add226)
  %cmp227 = icmp sgt i32 %add226, 255
  %sub230 = sub nsw i32 256, %conv220
  %j.0 = select i1 %cmp227, i32 %sub230, i32 %81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_read.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_read, %if.then245)) #10
          to label %do.end252 [label %if.then245], !srcloc !493

if.then245:                                       ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %dev247 = getelementptr inbounds %struct.pcmcia_device, ptr %83, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_read.__UNIQUE_ID_ddebug306, ptr noundef %dev247, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.109, i32 noundef %j.0) #10
  br label %do.end252

do.end252:                                        ; preds = %if.then245, %do.end216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0)
  %cmp254708 = icmp sgt i32 %j.0, 0
  br i1 %cmp254708, label %do.body256.lr.ph, label %do.end252.for.end273_crit_edge

do.end252.for.end273_crit_edge:                   ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end273

do.body256.lr.ph:                                 ; preds = %do.end252
  %add260 = add i32 %7, 3
  %and261 = and i32 %add260, 1048575
  %add262 = or i32 %and261, -18874368
  %84 = inttoptr i32 %add262 to ptr
  %add265 = add i32 %7, 4
  %and266 = and i32 %add265, 1048575
  %add267 = or i32 %and266, -18874368
  %85 = inttoptr i32 %add267 to ptr
  br label %do.body256

do.body256:                                       ; preds = %do.body256.do.body256_crit_edge, %do.body256.lr.ph
  %i.0710 = phi i32 [ 0, %do.body256.lr.ph ], [ %inc272, %do.body256.do.body256_crit_edge ]
  %k.0709 = phi i32 [ %conv220, %do.body256.lr.ph ], [ %inc, %do.body256.do.body256_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !526
  call void @arm_heavy_mb() #10
  %inc = add nuw i32 %k.0709, 1
  %conv259 = trunc i32 %k.0709 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %conv259) #10, !srcloc !499
  %86 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !527
  %arrayidx271 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 2, i32 %i.0710
  %87 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx271, align 1
  %inc272 = add nuw nsw i32 %i.0710, 1
  %exitcond.not = icmp eq i32 %inc272, %j.0
  br i1 %exitcond.not, label %do.body256.for.end273_crit_edge, label %do.body256.do.body256_crit_edge

do.body256.do.body256_crit_edge:                  ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body256

do.body256.for.end273_crit_edge:                  ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end273

for.end273:                                       ; preds = %do.body256.for.end273_crit_edge, %do.end252.for.end273_crit_edge
  %k.0.lcssa = phi i32 [ %conv220, %do.end252.for.end273_crit_edge ], [ %inc, %do.body256.for.end273_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %do.end252.for.end273_crit_edge ], [ %j.0, %do.body256.for.end273_crit_edge ]
  %88 = ptrtoint ptr %rlen217 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %rlen217, align 4
  %conv275 = zext i16 %89 to i32
  %90 = ptrtoint ptr %rpos219 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %rpos219, align 2
  %conv277 = zext i16 %91 to i32
  %sub278 = sub nsw i32 %conv275, %conv277
  %92 = call i32 @llvm.umin.i32(i32 %sub278, i32 %count)
  %add286 = add i32 %92, %k.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add286)
  %cmp287 = icmp sgt i32 %add286, 255
  br i1 %cmp287, label %do.body291, label %for.end273.if.end346_crit_edge

for.end273.if.end346_crit_edge:                   ; preds = %for.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end346

do.body291:                                       ; preds = %for.end273
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_read.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_read, %if.then303)) #10
          to label %do.end310 [label %if.then303], !srcloc !493

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %dev305 = getelementptr inbounds %struct.pcmcia_device, ptr %94, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_read.__UNIQUE_ID_ddebug309, ptr noundef %dev305, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.109, i32 noundef %92) #10
  br label %do.end310

do.end310:                                        ; preds = %if.then303, %do.body291
  %flags1 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %95 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %flags1, align 4
  %97 = or i8 %96, 16
  store i8 %97, ptr %flags1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !528
  call void @arm_heavy_mb() #10
  %98 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %flags1, align 4
  %add317 = add i32 %7, 1
  %and318 = and i32 %add317, 1048575
  %add319 = or i32 %and318, -18874368
  %100 = inttoptr i32 %add319 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 %99) #10, !srcloc !499
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %92)
  %cmp322713 = icmp slt i32 %i.0.lcssa, %92
  br i1 %cmp322713, label %do.body325.lr.ph, label %do.end310.if.end346_crit_edge

do.end310.if.end346_crit_edge:                    ; preds = %do.end310
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end346

do.body325.lr.ph:                                 ; preds = %do.end310
  %add330 = add i32 %7, 3
  %and331 = and i32 %add330, 1048575
  %add332 = or i32 %and331, -18874368
  %101 = inttoptr i32 %add332 to ptr
  %add335 = add i32 %7, 4
  %and336 = and i32 %add335, 1048575
  %add337 = or i32 %and336, -18874368
  %102 = inttoptr i32 %add337 to ptr
  br label %do.body325

do.body325:                                       ; preds = %do.body325.do.body325_crit_edge, %do.body325.lr.ph
  %i.1715 = phi i32 [ %i.0.lcssa, %do.body325.lr.ph ], [ %inc344, %do.body325.do.body325_crit_edge ]
  %k.1714 = phi i32 [ %k.0.lcssa, %do.body325.lr.ph ], [ %inc328, %do.body325.do.body325_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !529
  call void @arm_heavy_mb() #10
  %inc328 = add i32 %k.1714, 1
  %conv329 = trunc i32 %k.1714 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %conv329) #10, !srcloc !499
  %103 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %102) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !530
  %arrayidx342 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 2, i32 %i.1715
  %104 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx342, align 1
  %inc344 = add nuw i32 %i.1715, 1
  %exitcond717.not = icmp eq i32 %inc344, %92
  br i1 %exitcond717.not, label %do.body325.if.end346_crit_edge, label %do.body325.do.body325_crit_edge

do.body325.do.body325_crit_edge:                  ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body325

do.body325.if.end346_crit_edge:                   ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end346

if.end346:                                        ; preds = %do.body325.if.end346_crit_edge, %do.end310.if.end346_crit_edge, %for.end273.if.end346_crit_edge
  %i.2 = phi i32 [ %i.0.lcssa, %for.end273.if.end346_crit_edge ], [ %i.0.lcssa, %do.end310.if.end346_crit_edge ], [ %92, %do.body325.if.end346_crit_edge ]
  %proto = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 13
  %105 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp348 = icmp eq i8 %106, 0
  br i1 %cmp348, label %land.lhs.true, label %if.end346.if.end390_crit_edge

if.end346.if.end390_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end390

land.lhs.true:                                    ; preds = %if.end346
  %107 = ptrtoint ptr %rlen217 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %rlen217, align 4
  %conv351 = zext i16 %108 to i32
  %109 = ptrtoint ptr %rpos219 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %rpos219, align 2
  %conv353 = zext i16 %110 to i32
  %sub354 = sub nsw i32 %conv351, %conv353
  call void @__sanitizer_cov_trace_cmp4(i32 %sub354, i32 %count)
  %cmp355 = icmp uge i32 %sub354, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %tobool358.not = icmp eq i32 %i.2, 0
  %or.cond613 = select i1 %cmp355, i1 true, i1 %tobool358.not
  br i1 %or.cond613, label %land.lhs.true.if.end390_crit_edge, label %do.body361

land.lhs.true.if.end390_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end390

do.body361:                                       ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_read.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_read, %if.then373)) #10
          to label %do.end380 [label %if.then373], !srcloc !493

if.then373:                                       ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %dev375 = getelementptr inbounds %struct.pcmcia_device, ptr %112, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_read.__UNIQUE_ID_ddebug310, ptr noundef %dev375, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109) #10
  br label %do.end380

do.end380:                                        ; preds = %if.then373, %do.body361
  %sub382 = add nsw i32 %i.2, -1
  %arrayidx383 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 2, i32 %sub382
  %113 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx383, align 1
  %arrayidx385 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 2, i32 %i.2
  %115 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx385, align 1
  %procbyte = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 5
  %116 = ptrtoint ptr %procbyte to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %procbyte, align 4
  store i8 %117, ptr %arrayidx383, align 1
  %inc389 = add i32 %92, 1
  br label %if.end390

if.end390:                                        ; preds = %do.end380, %land.lhs.true.if.end390_crit_edge, %if.end346.if.end390_crit_edge
  %j.1 = phi i32 [ %inc389, %do.end380 ], [ %92, %land.lhs.true.if.end390_crit_edge ], [ %92, %if.end346.if.end390_crit_edge ]
  %118 = ptrtoint ptr %rlen217 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %rlen217, align 4
  %add393 = add i16 %119, 1
  %120 = ptrtoint ptr %rpos219 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %add393, ptr %rpos219, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_read.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_read, %if.then409)) #10
          to label %do.end416 [label %if.then409], !srcloc !493

if.then409:                                       ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %dev411 = getelementptr inbounds %struct.pcmcia_device, ptr %122, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_read.__UNIQUE_ID_ddebug311, ptr noundef %dev411, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.109) #10
  br label %do.end416

do.end416:                                        ; preds = %if.then409, %if.end390
  %flags1417 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %123 = ptrtoint ptr %flags1417 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %flags1417, align 4
  %125 = and i8 %124, -33
  store i8 %125, ptr %flags1417, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !531
  call void @arm_heavy_mb() #10
  %126 = ptrtoint ptr %flags1417 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %flags1417, align 4
  %add425 = add i32 %7, 1
  %and426 = and i32 %add425, 1048575
  %add427 = or i32 %and426, -18874368
  %128 = inttoptr i32 %add427 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 %127) #10, !srcloc !499
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !532
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 0) #10, !srcloc !499
  %call436 = call fastcc i32 @io_detect_cm4000(i32 noundef %7, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call436)
  %tobool437.not = icmp eq i32 %call436, 0
  br i1 %tobool437.not, label %do.end416.release_io_crit_edge, label %if.end439

do.end416.release_io_crit_edge:                   ; preds = %do.end416
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_io

if.end439:                                        ; preds = %do.end416
  %129 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %flags, align 4
  %131 = and i32 %130, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool442.not = icmp eq i32 %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1)
  %cmp444.not = icmp eq i32 %j.1, 0
  %or.cond614 = select i1 %tobool442.not, i1 true, i1 %cmp444.not
  br i1 %or.cond614, label %if.end439.if.end449_crit_edge, label %if.then446

if.end439.if.end449_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end449

if.then446:                                       ; preds = %if.end439
  %rbuf447 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1)
  %cmp6.i = icmp sgt i32 %j.1, 0
  br i1 %cmp6.i, label %if.then446.for.body.i_crit_edge, label %if.then446.if.end449_crit_edge

if.then446.if.end449_crit_edge:                   ; preds = %if.then446
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end449

if.then446.for.body.i_crit_edge:                  ; preds = %if.then446
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then446.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then446.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %rbuf447, i32 %i.07.i
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i, align 1
  %neg.i.i = xor i8 %133, -1
  %idxprom.i.i.i = zext i8 %neg.i.i to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i
  %134 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.i.i, align 1
  store i8 %135, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %j.1
  br i1 %exitcond.not.i, label %for.body.i.if.end449_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end449_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end449

if.end449:                                        ; preds = %for.body.i.if.end449_crit_edge, %if.then446.if.end449_crit_edge, %if.end439.if.end449_crit_edge
  %rbuf450 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1)
  %cmp9.i.i = icmp slt i32 %j.1, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end449
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.release_io_crit_edge, label %if.then27.i.i, !prof !533

land.rhs16.i.i.release_io_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_io

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.117, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %release_io

if.then.i.i.i:                                    ; preds = %if.end449
  call void @__check_object_size(ptr noundef %rbuf450, i32 noundef %j.1, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.119, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %136 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %j.1, i32 -1226833920) #16, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rbuf450, i32 noundef %j.1) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %rbuf450, i32 noundef %j.1) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %j.1, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %j.1, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool453.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool453.not, i32 %j.1, i32 -14
  br label %release_io

release_io:                                       ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.release_io_crit_edge, %do.end416.release_io_crit_edge, %if.then192, %if.then186.release_io_crit_edge
  %cmp485 = phi i32 [ -19, %if.then192 ], [ -5, %if.then186.release_io_crit_edge ], [ -19, %do.end416.release_io_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.release_io_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %ioq457 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  call void @__wake_up(ptr noundef %ioq457, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_read.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_read, %if.then471)) #10
          to label %cleanup491 [label %if.then471], !srcloc !493

if.then471:                                       ; preds = %release_io
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %dev473 = getelementptr inbounds %struct.pcmcia_device, ptr %138, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_read.__UNIQUE_ID_ddebug312, ptr noundef %dev473, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.109, i32 noundef %cmp485) #10
  br label %cleanup491

cleanup491:                                       ; preds = %if.then471, %release_io, %if.then164, %if.then113, %if.end62.cleanup491_crit_edge, %if.then56, %if.end19.cleanup491_crit_edge, %lor.lhs.false.cleanup491_crit_edge, %if.end12.cleanup491_crit_edge, %do.end10.cleanup491_crit_edge
  %retval.0 = phi i32 [ 0, %do.end10.cleanup491_crit_edge ], [ -19, %lor.lhs.false.cleanup491_crit_edge ], [ -19, %if.end12.cleanup491_crit_edge ], [ -5, %if.end19.cleanup491_crit_edge ], [ %., %if.then56 ], [ -5, %if.end62.cleanup491_crit_edge ], [ %.611, %if.then113 ], [ %.612, %if.then164 ], [ %cmp485, %release_io ], [ %cmp485, %if.then471 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmm_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %s = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry166 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %s) #10
  %8 = ptrtoint ptr %s to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %s, align 2, !annotation !494
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then)) #10
          to label %do.end10 [label %if.then], !srcloc !493

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.pcmcia_device, ptr %10, i32 0, i32 21
  %11 = tail call i32 @llvm.read_register.i32(metadata !483) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug313, ptr noundef %dev5, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120, ptr noundef %comm, i32 noundef %16) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end10.cleanup1376_crit_edge, label %if.end12

do.end10.cleanup1376_crit_edge:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup1376

if.end12:                                         ; preds = %do.end10
  %proto = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 13
  %17 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp13 = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp15 = icmp ult i32 %count, 4
  %or.cond = and i1 %cmp15, %cmp13
  br i1 %or.cond, label %do.body19, label %if.end39

do.body19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then31)) #10
          to label %cleanup1376 [label %if.then31], !srcloc !493

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev33 = getelementptr inbounds %struct.pcmcia_device, ptr %20, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug314, ptr noundef %dev33, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120) #10
  br label %cleanup1376

if.end39:                                         ; preds = %if.end12
  %21 = trunc i32 %count to i16
  %conv40 = and i16 %21, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv40)
  %cmp45 = icmp ugt i16 %conv40, 5
  %22 = and i1 %cmp45, %cmp13
  %cond47 = select i1 %22, i8 8, i8 0
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call50 = tail call ptr @pcmcia_dev_present(ptr noundef %24) #10
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end39.cleanup1376_crit_edge, label %lor.lhs.false

if.end39.cleanup1376_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup1376

lor.lhs.false:                                    ; preds = %if.end39
  %flags = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 14
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool53.not = icmp eq i32 %27, 0
  br i1 %tobool53.not, label %if.end55, label %lor.lhs.false.cleanup1376_crit_edge

lor.lhs.false.cleanup1376_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup1376

if.end55:                                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %30 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool58.not = icmp eq i32 %30, 0
  br i1 %tobool58.not, label %if.end81, label %do.body61

do.body61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then73)) #10
          to label %cleanup1376 [label %if.then73], !srcloc !493

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev75 = getelementptr inbounds %struct.pcmcia_device, ptr %32, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug315, ptr noundef %dev75, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.120) #10
  br label %cleanup1376

if.end81:                                         ; preds = %if.end55
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1101) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %33 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_flags, align 4
  %and88 = and i32 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %lor.lhs.false90, label %if.end81.if.end122_crit_edge

if.end81.if.end122_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

lor.lhs.false90:                                  ; preds = %if.end81
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp93.not = icmp eq i32 %37, 0
  br i1 %cmp93.not, label %if.then95, label %lor.lhs.false90.if.end122_crit_edge

lor.lhs.false90.if.end122_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then95:                                        ; preds = %lor.lhs.false90
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %38 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %atrq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 6
  %call971807 = call i32 @prepare_to_wait_event(ptr noundef %atrq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %39 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f_flags, align 4
  %and991808 = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and991808)
  %tobool100.not1809 = icmp eq i32 %and991808, 0
  br i1 %tobool100.not1809, label %if.then95.lor.lhs.false101_crit_edge, label %if.then95.if.end113.thread1736_crit_edge

if.then95.if.end113.thread1736_crit_edge:         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.thread1736

if.then95.lor.lhs.false101_crit_edge:             ; preds = %if.then95
  br label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %cleanup.lor.lhs.false101_crit_edge, %if.then95.lor.lhs.false101_crit_edge
  %call971810 = phi i32 [ %call97, %cleanup.lor.lhs.false101_crit_edge ], [ %call971807, %if.then95.lor.lhs.false101_crit_edge ]
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp104.not = icmp eq i32 %43, 0
  br i1 %cmp104.not, label %if.end107, label %lor.lhs.false101.if.end113.thread1736_crit_edge

lor.lhs.false101.if.end113.thread1736_crit_edge:  ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.thread1736

if.end107:                                        ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call971810)
  %tobool108.not = icmp eq i32 %call971810, 0
  br i1 %tobool108.not, label %cleanup, label %if.then116

cleanup:                                          ; preds = %if.end107
  call void @schedule() #10
  %call97 = call i32 @prepare_to_wait_event(ptr noundef %atrq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %44 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_flags, align 4
  %and99 = and i32 %45, 2048
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %cleanup.lor.lhs.false101_crit_edge, label %cleanup.if.end113.thread1736_crit_edge

cleanup.if.end113.thread1736_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.thread1736

cleanup.lor.lhs.false101_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false101

if.end113.thread1736:                             ; preds = %cleanup.if.end113.thread1736_crit_edge, %lor.lhs.false101.if.end113.thread1736_crit_edge, %if.then95.if.end113.thread1736_crit_edge
  call void @finish_wait(ptr noundef %atrq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end122

if.then116:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %46 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %f_flags, align 4
  %and118 = and i32 %47, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  %. = select i1 %tobool119.not, i32 -512, i32 -11
  br label %cleanup1376

if.end122:                                        ; preds = %if.end113.thread1736, %lor.lhs.false90.if.end122_crit_edge, %if.end81.if.end122_crit_edge
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags, align 4
  %50 = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp125 = icmp eq i32 %50, 0
  br i1 %cmp125, label %do.body129, label %if.end149

do.body129:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then141)) #10
          to label %cleanup1376 [label %if.then141], !srcloc !493

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %dev143 = getelementptr inbounds %struct.pcmcia_device, ptr %52, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug316, ptr noundef %dev143, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.120) #10
  br label %cleanup1376

if.end149:                                        ; preds = %if.end122
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1116) #10
  %53 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_flags, align 4
  %and158 = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %lor.lhs.false160, label %if.end149.if.end200_crit_edge

if.end149.if.end200_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

lor.lhs.false160:                                 ; preds = %if.end149
  %call162 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %lor.lhs.false160.if.end200_crit_edge, label %if.then165

lor.lhs.false160.if.end200_crit_edge:             ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

if.then165:                                       ; preds = %lor.lhs.false160
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry166) #10
  %55 = call ptr @memset(ptr %__wq_entry166, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry166, i32 noundef 0) #10
  %ioq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  %call1701812 = call i32 @prepare_to_wait_event(ptr noundef %ioq, ptr noundef nonnull %__wq_entry166, i32 noundef 1) #10
  %56 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_flags, align 4
  %and1721813 = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1721813)
  %tobool173.not1814 = icmp eq i32 %and1721813, 0
  br i1 %tobool173.not1814, label %if.then165.lor.lhs.false174_crit_edge, label %if.then165.if.end191.thread1749_crit_edge

if.then165.if.end191.thread1749_crit_edge:        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.thread1749

if.then165.lor.lhs.false174_crit_edge:            ; preds = %if.then165
  br label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %cleanup184.lor.lhs.false174_crit_edge, %if.then165.lor.lhs.false174_crit_edge
  %call1701815 = phi i32 [ %call170, %cleanup184.lor.lhs.false174_crit_edge ], [ %call1701812, %if.then165.lor.lhs.false174_crit_edge ]
  %call176 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp eq i32 %call176, 0
  br i1 %cmp177, label %lor.lhs.false174.if.end191.thread1749_crit_edge, label %if.end180

lor.lhs.false174.if.end191.thread1749_crit_edge:  ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.thread1749

if.end180:                                        ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1701815)
  %tobool181.not = icmp eq i32 %call1701815, 0
  br i1 %tobool181.not, label %cleanup184, label %if.then194

cleanup184:                                       ; preds = %if.end180
  call void @schedule() #10
  %call170 = call i32 @prepare_to_wait_event(ptr noundef %ioq, ptr noundef nonnull %__wq_entry166, i32 noundef 1) #10
  %58 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %f_flags, align 4
  %and172 = and i32 %59, 2048
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %cleanup184.lor.lhs.false174_crit_edge, label %cleanup184.if.end191.thread1749_crit_edge

cleanup184.if.end191.thread1749_crit_edge:        ; preds = %cleanup184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.thread1749

cleanup184.lor.lhs.false174_crit_edge:            ; preds = %cleanup184
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false174

if.end191.thread1749:                             ; preds = %cleanup184.if.end191.thread1749_crit_edge, %lor.lhs.false174.if.end191.thread1749_crit_edge, %if.then165.if.end191.thread1749_crit_edge
  call void @finish_wait(ptr noundef %ioq, ptr noundef nonnull %__wq_entry166) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry166) #10
  br label %if.end200

if.then194:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry166) #10
  %60 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %f_flags, align 4
  %and196 = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  %.1583 = select i1 %tobool197.not, i32 -512, i32 -11
  br label %cleanup1376

if.end200:                                        ; preds = %if.end191.thread1749, %lor.lhs.false160.if.end200_crit_edge, %if.end149.if.end200_crit_edge
  %sbuf = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 3
  %62 = call i32 @llvm.umin.i32(i32 %count, i32 512)
  call void @__check_object_size(ptr noundef %sbuf, i32 noundef %62, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.119, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end200.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end200.if.end.i.i_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end200
  %63 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %62, i32 -1226833920) #16, !srcloc !535
  %asmresult.i.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sbuf, i32 noundef %62) #10
  %64 = call i32 @llvm.read_register.i32(metadata !483) #10
  %and.i.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !536
  %and.i.i.i.i = and i32 %66, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !537
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !538
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %sbuf, ptr noundef %buf, i32 noundef %62) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #10, !srcloc !537
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !538
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end200.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %62, %if.end200.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %62, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end211, label %if.then11.i.i, !prof !533

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %62, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %sbuf, i32 %sub.i.i
  %67 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup1376

if.end211:                                        ; preds = %if.end.i.i
  %and212 = and i32 %7, 1048575
  %add213 = or i32 %and212, -18874368
  %68 = inttoptr i32 %add213 to ptr
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !539
  %flags0 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 8
  %70 = ptrtoint ptr %flags0 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %flags0, align 1
  %71 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp220 = icmp eq i8 %71, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp225 = icmp eq i8 %69, -1
  %or.cond1584 = or i1 %cmp225, %cmp220
  br i1 %or.cond1584, label %if.then227, label %do.body258

if.then227:                                       ; preds = %if.end211
  call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  %72 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flags0, align 1
  %74 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool232.not = icmp eq i8 %74, 0
  br i1 %tobool232.not, label %do.body236, label %if.then233

if.then233:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  br label %do.body1280

do.body236:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then248)) #10
          to label %do.body1280 [label %if.then248], !srcloc !493

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %dev250 = getelementptr inbounds %struct.pcmcia_device, ptr %76, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug317, ptr noundef %dev250, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.120) #10
  br label %do.body1280

do.body258:                                       ; preds = %if.end211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !540
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 -128) #10, !srcloc !499
  %call265 = call fastcc i32 @io_detect_cm4000(i32 noundef %7, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %do.body258.do.body1280_crit_edge, label %if.end268

do.body258.do.body1280_crit_edge:                 ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1280

if.end268:                                        ; preds = %do.body258
  %flags1 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %77 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags1, align 4
  %or1582 = or i8 %78, %cond47
  store i8 %or1582, ptr %flags1, align 4
  call fastcc void @set_cardparameter(ptr noundef %1)
  %add273 = add i32 %7, 1
  %and274 = and i32 %add273, 1048575
  %add275 = or i32 %and274, -18874368
  %79 = inttoptr i32 %add275 to ptr
  %80 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !541
  %81 = or i8 %cond47, 32
  %or280 = zext i8 %81 to i32
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags, align 4
  %84 = lshr i32 %83, 7
  %85 = and i32 %84, 2
  %or285 = or i32 %85, %or280
  %baudv = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 11
  %86 = ptrtoint ptr %baudv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %baudv, align 4
  %sub = add i32 %87, 511
  %and286 = lshr i32 %sub, 8
  %shr = and i32 %and286, 1
  %or287 = or i32 %or285, %shr
  %conv288 = trunc i32 %or287 to i8
  %88 = ptrtoint ptr %flags1 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv288, ptr %flags1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then303)) #10
          to label %do.body313 [label %if.then303], !srcloc !493

if.then303:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %dev305 = getelementptr inbounds %struct.pcmcia_device, ptr %90, i32 0, i32 21
  %91 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags1, align 4
  %conv307 = zext i8 %92 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug318, ptr noundef %dev305, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.120, i32 noundef %conv307) #10
  br label %do.body313

do.body313:                                       ; preds = %if.then303, %if.end268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !542
  call void @arm_heavy_mb() #10
  %93 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %flags1, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %94) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then334)) #10
          to label %do.end341 [label %if.then334], !srcloc !493

if.then334:                                       ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %dev336 = getelementptr inbounds %struct.pcmcia_device, ptr %96, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug319, ptr noundef %dev336, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.120) #10
  br label %do.end341

do.end341:                                        ; preds = %if.then334, %do.body313
  %conv343 = zext i16 %conv40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv40)
  %cmp3441818.not = icmp eq i16 %conv40, 0
  br i1 %cmp3441818.not, label %do.end341.do.body467_crit_edge, label %for.body.lr.ph

do.end341.do.body467_crit_edge:                   ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body467

for.body.lr.ph:                                   ; preds = %do.end341
  %add432 = add i32 %7, 3
  %and433 = and i32 %add432, 1048575
  %add434 = or i32 %and433, -18874368
  %97 = inttoptr i32 %add434 to ptr
  %add442 = add i32 %7, 4
  %and443 = and i32 %add442, 1048575
  %add444 = or i32 %and443, -18874368
  %98 = inttoptr i32 %add444 to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.01819 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.01819)
  %cmp346 = icmp ugt i32 %i.01819, 255
  br i1 %cmp346, label %if.then348, label %for.body.if.end395_crit_edge

for.body.if.end395_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end395

if.then348:                                       ; preds = %for.body
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %flags, align 4
  %101 = lshr i32 %100, 7
  %102 = and i32 %101, 2
  %or355 = or i32 %102, %or280
  %103 = ptrtoint ptr %baudv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %baudv, align 4
  %sub357 = add i32 %104, 511
  %and358 = lshr i32 %sub357, 8
  %shr359 = and i32 %and358, 1
  %or360 = or i32 %or355, %shr359
  %105 = trunc i32 %or360 to i8
  %conv362 = or i8 %105, 16
  %106 = ptrtoint ptr %flags1 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv362, ptr %flags1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then377)) #10
          to label %do.body387 [label %if.then377], !srcloc !493

if.then377:                                       ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %dev379 = getelementptr inbounds %struct.pcmcia_device, ptr %108, i32 0, i32 21
  %109 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %flags1, align 4
  %conv381 = zext i8 %110 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug320, ptr noundef %dev379, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.120, i32 noundef %conv381) #10
  br label %do.body387

do.body387:                                       ; preds = %if.then377, %if.then348
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !543
  call void @arm_heavy_mb() #10
  %111 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %flags1, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %112) #10, !srcloc !499
  br label %if.end395

if.end395:                                        ; preds = %do.body387, %for.body.if.end395_crit_edge
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %flags, align 4
  %115 = and i32 %114, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool398.not = icmp eq i32 %115, 0
  br i1 %tobool398.not, label %do.body447, label %do.body401

do.body401:                                       ; preds = %if.end395
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then413)) #10
          to label %do.body428 [label %if.then413], !srcloc !493

if.then413:                                       ; preds = %do.body401
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %dev415 = getelementptr inbounds %struct.pcmcia_device, ptr %117, i32 0, i32 21
  %arrayidx417 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 %i.01819
  %118 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx417, align 1
  %conv418 = zext i8 %119 to i32
  %neg.i = xor i8 %119, -1
  %idxprom.i.i = zext i8 %neg.i to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i.i, align 1
  %conv422 = zext i8 %121 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug321, ptr noundef %dev415, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.120, i32 noundef %conv418, i32 noundef %conv422) #10
  br label %do.body428

do.body428:                                       ; preds = %if.then413, %do.body401
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !544
  call void @arm_heavy_mb() #10
  %conv431 = trunc i32 %i.01819 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %conv431) #10, !srcloc !499
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !545
  call void @arm_heavy_mb() #10
  %arrayidx440 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 %i.01819
  %122 = ptrtoint ptr %arrayidx440 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx440, align 1
  %neg.i1700 = xor i8 %123, -1
  %idxprom.i.i1703 = zext i8 %neg.i1700 to i32
  %arrayidx.i.i1704 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i1703
  %124 = ptrtoint ptr %arrayidx.i.i1704 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i.i1704, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 %125) #10, !srcloc !499
  br label %for.inc

do.body447:                                       ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !546
  call void @arm_heavy_mb() #10
  %conv450 = trunc i32 %i.01819 to i8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %conv450) #10, !srcloc !499
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !547
  call void @arm_heavy_mb() #10
  %arrayidx459 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 %i.01819
  %126 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx459, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 %127) #10, !srcloc !499
  br label %for.inc

for.inc:                                          ; preds = %do.body447, %do.body428
  %inc = add nuw nsw i32 %i.01819, 1
  %exitcond.not = icmp eq i32 %inc, %conv343
  br i1 %exitcond.not, label %do.body467.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body467.loopexit:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t = trunc i32 %count to i8
  br label %do.body467

do.body467:                                       ; preds = %do.body467.loopexit, %do.end341.do.body467_crit_edge
  %i.0.lcssa.off0 = phi i8 [ 0, %do.end341.do.body467_crit_edge ], [ %extract.t, %do.body467.loopexit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then479)) #10
          to label %do.end486 [label %if.then479], !srcloc !493

if.then479:                                       ; preds = %do.body467
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %dev481 = getelementptr inbounds %struct.pcmcia_device, ptr %129, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug322, ptr noundef %dev481, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.120) #10
  br label %do.end486

do.end486:                                        ; preds = %if.then479, %do.body467
  %130 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp489 = icmp eq i8 %131, 0
  br i1 %cmp489, label %if.then491, label %do.end486.if.end572_crit_edge

do.end486.if.end572_crit_edge:                    ; preds = %do.end486
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end572

if.then491:                                       ; preds = %do.end486
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv40)
  %cmp493 = icmp eq i16 %conv40, 4
  br i1 %cmp493, label %do.body497, label %if.end545

do.body497:                                       ; preds = %if.then491
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then509)) #10
          to label %do.body517 [label %if.then509], !srcloc !493

if.then509:                                       ; preds = %do.body497
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %dev511 = getelementptr inbounds %struct.pcmcia_device, ptr %133, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug323, ptr noundef %dev511, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.120) #10
  br label %do.body517

do.body517:                                       ; preds = %if.then509, %do.body497
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !548
  call void @arm_heavy_mb() #10
  %add521 = add i32 %7, 3
  %and522 = and i32 %add521, 1048575
  %add523 = or i32 %and522, -18874368
  %134 = inttoptr i32 %add523 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 %i.0.lcssa.off0) #10, !srcloc !499
  %135 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %flags, align 4
  %137 = and i32 %136, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool527.not = icmp eq i32 %137, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %add540 = add i32 %7, 4
  %and541 = and i32 %add540, 1048575
  %add542 = or i32 %and541, -18874368
  %138 = inttoptr i32 %add542 to ptr
  br i1 %tobool527.not, label %do.body537, label %do.body529

do.body529:                                       ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 -1) #10, !srcloc !499
  br label %if.end545.thread

do.body537:                                       ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 0) #10, !srcloc !499
  br label %if.end545.thread

if.end545.thread:                                 ; preds = %do.body537, %do.body529
  %conv40.mux1764 = select i1 %22, i16 4, i16 5
  br label %if.end572

if.end545:                                        ; preds = %if.then491
  br i1 %22, label %if.end545.if.end572_crit_edge, label %if.else553

if.end545.if.end572_crit_edge:                    ; preds = %if.end545
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end572

if.else553:                                       ; preds = %if.end545
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx555 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 4
  %139 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx555, align 1
  %141 = zext i8 %140 to i16
  %conv558 = add nuw nsw i16 %141, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp562 = icmp eq i8 %140, 0
  %spec.select1798 = select i1 %cmp562, i16 261, i16 %conv558
  br label %if.end572

if.end572:                                        ; preds = %if.else553, %if.end545.if.end572_crit_edge, %if.end545.thread, %do.end486.if.end572_crit_edge
  %nsend.0 = phi i16 [ %conv40, %if.end545.if.end572_crit_edge ], [ %conv40, %do.end486.if.end572_crit_edge ], [ %conv40.mux1764, %if.end545.thread ], [ %spec.select1798, %if.else553 ]
  %142 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %flags, align 4
  %144 = and i32 %143, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool575.not = icmp eq i32 %144, 0
  br i1 %tobool575.not, label %do.body614, label %do.body578

do.body578:                                       ; preds = %if.end572
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then590)) #10
          to label %do.body602 [label %if.then590], !srcloc !493

if.then590:                                       ; preds = %do.body578
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %dev592 = getelementptr inbounds %struct.pcmcia_device, ptr %146, i32 0, i32 21
  %arrayidx594 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 1
  %147 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx594, align 1
  %neg.i1708 = xor i8 %148, -1
  %idxprom.i.i1711 = zext i8 %neg.i1708 to i32
  %arrayidx.i.i1712 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i1711
  %149 = ptrtoint ptr %arrayidx.i.i1712 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i.i1712, align 1
  %conv596 = zext i8 %150 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug324, ptr noundef %dev592, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.120, i32 noundef %conv596) #10
  br label %do.body602

do.body602:                                       ; preds = %if.then590, %do.body578
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !549
  call void @arm_heavy_mb() #10
  %arrayidx606 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 1
  %151 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx606, align 1
  %neg.i1716 = xor i8 %152, -1
  %idxprom.i.i1719 = zext i8 %neg.i1716 to i32
  %arrayidx.i.i1720 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i1719
  %153 = ptrtoint ptr %arrayidx.i.i1720 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i.i1720, align 1
  %add608 = add i32 %7, 2
  %and609 = and i32 %add608, 1048575
  %add610 = or i32 %and609, -18874368
  %155 = inttoptr i32 %add610 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 %154) #10, !srcloc !499
  br label %do.body648

do.body614:                                       ; preds = %if.end572
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then626)) #10
          to label %do.body637 [label %if.then626], !srcloc !493

if.then626:                                       ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %dev628 = getelementptr inbounds %struct.pcmcia_device, ptr %157, i32 0, i32 21
  %arrayidx630 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 1
  %158 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx630, align 1
  %conv631 = zext i8 %159 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug325, ptr noundef %dev628, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.120, i32 noundef %conv631) #10
  br label %do.body637

do.body637:                                       ; preds = %if.then626, %do.body614
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !550
  call void @arm_heavy_mb() #10
  %arrayidx641 = getelementptr %struct.cm4000_dev, ptr %1, i32 0, i32 3, i32 1
  %160 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx641, align 1
  %add642 = add i32 %7, 2
  %and643 = and i32 %add642, 1048575
  %add644 = or i32 %and643, -18874368
  %162 = inttoptr i32 %add644 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 %161) #10, !srcloc !499
  br label %do.body648

do.body648:                                       ; preds = %do.body637, %do.body602
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then660)) #10
          to label %do.body672 [label %if.then660], !srcloc !493

if.then660:                                       ; preds = %do.body648
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %dev662 = getelementptr inbounds %struct.pcmcia_device, ptr %164, i32 0, i32 21
  %165 = and i16 %nsend.0, 255
  %conv666 = zext i16 %165 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug326, ptr noundef %dev662, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.120, i32 noundef %conv666) #10
  br label %do.body672

do.body672:                                       ; preds = %if.then660, %do.body648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !551
  call void @arm_heavy_mb() #10
  %conv677 = trunc i16 %nsend.0 to i8
  %add678 = add i32 %7, 5
  %and679 = and i32 %add678, 1048575
  %add680 = or i32 %and679, -18874368
  %166 = inttoptr i32 %add680 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 %conv677) #10, !srcloc !499
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then695)) #10
          to label %do.body718 [label %if.then695], !srcloc !493

if.then695:                                       ; preds = %do.body672
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %dev697 = getelementptr inbounds %struct.pcmcia_device, ptr %168, i32 0, i32 21
  %169 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %flags0, align 1
  %171 = shl i8 %170, 1
  %172 = and i8 %171, 4
  %173 = xor i8 %172, 68
  %or703 = zext i8 %173 to i32
  %174 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool706.not = icmp eq i8 %175, 0
  %cond707 = select i1 %tobool706.not, i32 8, i32 16
  %176 = lshr i16 %nsend.0, 8
  %177 = and i16 %176, 1
  %178 = zext i16 %177 to i32
  %or708 = or i32 %cond707, %178
  %or712 = or i32 %or708, %or703
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug327, ptr noundef %dev697, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.120, i32 noundef %or712) #10
  br label %do.body718

do.body718:                                       ; preds = %if.then695, %do.body672
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !552
  call void @arm_heavy_mb() #10
  %179 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %flags0, align 1
  %181 = shl i8 %180, 1
  %182 = and i8 %181, 4
  %183 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool729.not = icmp eq i8 %184, 0
  %cond730 = select i1 %tobool729.not, i16 8, i16 16
  %and733 = lshr i16 %nsend.0, 8
  %185 = and i16 %and733, 1
  %or731 = or i16 %cond730, %185
  %186 = trunc i16 %or731 to i8
  %187 = or i8 %182, %186
  %conv736 = xor i8 %187, 68
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %conv736) #10, !srcloc !499
  %188 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %189)
  %cmp743 = icmp eq i8 %189, 1
  br i1 %cmp743, label %do.body747, label %do.body718.if.end812_crit_edge

do.body718.if.end812_crit_edge:                   ; preds = %do.body718
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end812

do.body747:                                       ; preds = %do.body718
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then759)) #10
          to label %for.body770 [label %if.then759], !srcloc !493

if.then759:                                       ; preds = %do.body747
  call void @__sanitizer_cov_trace_pc() #12
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %dev761 = getelementptr inbounds %struct.pcmcia_device, ptr %191, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug328, ptr noundef %dev761, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.120) #10
  br label %for.body770

for.body770:                                      ; preds = %if.end782.for.body770_crit_edge, %if.then759, %do.body747
  %i.11824 = phi i32 [ %inc785, %if.end782.for.body770_crit_edge ], [ 0, %do.body747 ], [ 0, %if.then759 ]
  %192 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !553
  %193 = and i8 %192, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool780.not = icmp eq i8 %193, 0
  br i1 %tobool780.not, label %if.end782, label %if.end812thread-pre-split

if.end782:                                        ; preds = %for.body770
  %call783 = call i32 @msleep_interruptible(i32 noundef 10) #10
  %inc785 = add nuw nsw i32 %i.11824, 1
  %exitcond1830.not = icmp eq i32 %inc785, 1000
  br i1 %exitcond1830.not, label %do.body791, label %if.end782.for.body770_crit_edge

if.end782.for.body770_crit_edge:                  ; preds = %if.end782
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body770

do.body791:                                       ; preds = %if.end782
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then803)) #10
          to label %do.body1280 [label %if.then803], !srcloc !493

if.then803:                                       ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %dev805 = getelementptr inbounds %struct.pcmcia_device, ptr %195, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug329, ptr noundef %dev805, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.120) #10
  br label %do.body1280

if.end812thread-pre-split:                        ; preds = %for.body770
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %196)
  %.pr = load i8, ptr %proto, align 1
  br label %if.end812

if.end812:                                        ; preds = %if.end812thread-pre-split, %do.body718.if.end812_crit_edge
  %197 = phi i8 [ %.pr, %if.end812thread-pre-split ], [ %189, %do.body718.if.end812_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool814.not = icmp eq i8 %197, 0
  br i1 %tobool814.not, label %if.else884, label %if.end812.for.body819_crit_edge

if.end812.for.body819_crit_edge:                  ; preds = %if.end812
  br label %for.body819

for.body819:                                      ; preds = %if.end854.for.body819_crit_edge, %if.end812.for.body819_crit_edge
  %i.21825 = phi i32 [ %inc857, %if.end854.for.body819_crit_edge ], [ 0, %if.end812.for.body819_crit_edge ]
  %call820 = call fastcc zeroext i16 @io_read_num_rec_bytes(i32 noundef %7, ptr noundef nonnull %s)
  %198 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %s, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %199)
  %cmp822 = icmp ugt i16 %199, 2
  br i1 %cmp822, label %if.then824, label %if.end854

if.then824:                                       ; preds = %for.body819
  %200 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %for.end858.thread)) #10
          to label %for.end858 [label %for.end858.thread], !srcloc !493

for.end858.thread:                                ; preds = %if.then824
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 4
  %dev847 = getelementptr inbounds %struct.pcmcia_device, ptr %202, i32 0, i32 21
  %conv848 = zext i8 %200 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug330, ptr noundef %dev847, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.120, i32 noundef %conv848) #10
  br label %if.end886

if.end854:                                        ; preds = %for.body819
  %call855 = call i32 @msleep_interruptible(i32 noundef 10) #10
  %inc857 = add nuw nsw i32 %i.21825, 1
  %exitcond1831.not = icmp eq i32 %inc857, 6000
  br i1 %exitcond1831.not, label %if.end854.do.body863_crit_edge, label %if.end854.for.body819_crit_edge

if.end854.for.body819_crit_edge:                  ; preds = %if.end854
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body819

if.end854.do.body863_crit_edge:                   ; preds = %if.end854
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body863

for.end858:                                       ; preds = %if.then824
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %i.21825)
  %cmp859 = icmp eq i32 %i.21825, 6000
  br i1 %cmp859, label %for.end858.do.body863_crit_edge, label %for.end858.if.end886_crit_edge

for.end858.if.end886_crit_edge:                   ; preds = %for.end858
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end886

for.end858.do.body863_crit_edge:                  ; preds = %for.end858
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body863

do.body863:                                       ; preds = %for.end858.do.body863_crit_edge, %if.end854.do.body863_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then875)) #10
          to label %do.body1280 [label %if.then875], !srcloc !493

if.then875:                                       ; preds = %do.body863
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %1, align 4
  %dev877 = getelementptr inbounds %struct.pcmcia_device, ptr %204, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug331, ptr noundef %dev877, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.120) #10
  br label %do.body1280

if.else884:                                       ; preds = %if.end812
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #10
  br label %if.end886

if.end886:                                        ; preds = %if.else884, %for.end858.if.end886_crit_edge, %for.end858.thread
  %infolen.1 = phi i8 [ %200, %for.end858.if.end886_crit_edge ], [ 0, %if.else884 ], [ %200, %for.end858.thread ]
  %rlen = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 3
  %call887 = call fastcc zeroext i16 @io_read_num_rec_bytes(i32 noundef %7, ptr noundef %rlen)
  %add941 = add i32 %7, 3
  %and942 = and i32 %add941, 1048575
  %add943 = or i32 %and942, -18874368
  %205 = inttoptr i32 %add943 to ptr
  %procbyte = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 5
  br label %for.body891

for.body891:                                      ; preds = %for.inc1071.for.body891_crit_edge, %if.end886
  %infolen.21827 = phi i8 [ %infolen.1, %if.end886 ], [ %infolen.3, %for.inc1071.for.body891_crit_edge ]
  %i.31826 = phi i32 [ 0, %if.end886 ], [ %inc1072, %for.inc1071.for.body891_crit_edge ]
  %206 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool893.not = icmp eq i8 %207, 0
  br i1 %tobool893.not, label %for.body891.if.end903_crit_edge, label %if.then894

for.body891.if.end903_crit_edge:                  ; preds = %for.body891
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end903

if.then894:                                       ; preds = %for.body891
  %208 = ptrtoint ptr %rlen to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %rlen, align 4
  %conv896 = zext i16 %209 to i32
  %conv897 = zext i8 %infolen.21827 to i32
  %add898 = add nuw nsw i32 %conv897, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add898, i32 %conv896)
  %cmp899.not = icmp ugt i32 %add898, %conv896
  br i1 %cmp899.not, label %if.then894.if.end903_crit_edge, label %if.then894.if.else1098_crit_edge

if.then894.if.else1098_crit_edge:                 ; preds = %if.then894
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else1098

if.then894.if.end903_crit_edge:                   ; preds = %if.then894
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end903

if.end903:                                        ; preds = %if.then894.if.end903_crit_edge, %for.body891.if.end903_crit_edge
  %call904 = call i32 @msleep_interruptible(i32 noundef 10) #10
  %call905 = call fastcc zeroext i16 @io_read_num_rec_bytes(i32 noundef %7, ptr noundef nonnull %s)
  %210 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %s, align 2
  %212 = ptrtoint ptr %rlen to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %211, i16 %213)
  %cmp909 = icmp ugt i16 %211, %213
  br i1 %cmp909, label %do.body913, label %if.else934

do.body913:                                       ; preds = %if.end903
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then925)) #10
          to label %do.end932 [label %if.then925], !srcloc !493

if.then925:                                       ; preds = %do.body913
  call void @__sanitizer_cov_trace_pc() #12
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 4
  %dev927 = getelementptr inbounds %struct.pcmcia_device, ptr %215, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug332, ptr noundef %dev927, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.120) #10
  br label %do.end932

do.end932:                                        ; preds = %if.then925, %do.body913
  %216 = ptrtoint ptr %rlen to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %211, ptr %rlen, align 4
  br label %if.end1059

if.else934:                                       ; preds = %if.end903
  %217 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %cmp937 = icmp eq i8 %218, 0
  br i1 %cmp937, label %if.then939, label %if.else934.if.then1062_crit_edge

if.else934.if.then1062_crit_edge:                 ; preds = %if.else934
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1062

if.then939:                                       ; preds = %if.else934
  %219 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %205) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !555
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %219)
  %tobool949.not = icmp sgt i8 %219, -1
  br i1 %tobool949.not, label %do.body974, label %do.body952

do.body952:                                       ; preds = %if.then939
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then964)) #10
          to label %if.end1024 [label %if.then964], !srcloc !493

if.then964:                                       ; preds = %do.body952
  call void @__sanitizer_cov_trace_pc() #12
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 4
  %dev966 = getelementptr inbounds %struct.pcmcia_device, ptr %221, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug333, ptr noundef %dev966, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.120) #10
  br label %if.end1024

do.body974:                                       ; preds = %if.then939
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then986)) #10
          to label %do.end993 [label %if.then986], !srcloc !493

if.then986:                                       ; preds = %do.body974
  call void @__sanitizer_cov_trace_pc() #12
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 4
  %dev988 = getelementptr inbounds %struct.pcmcia_device, ptr %223, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug334, ptr noundef %dev988, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.120) #10
  br label %do.end993

do.end993:                                        ; preds = %if.then986, %do.body974
  %224 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !556
  %225 = ptrtoint ptr %procbyte to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %procbyte, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1014)) #10
          to label %if.end1024 [label %if.then1014], !srcloc !493

if.then1014:                                      ; preds = %do.end993
  call void @__sanitizer_cov_trace_pc() #12
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 4
  %dev1016 = getelementptr inbounds %struct.pcmcia_device, ptr %227, i32 0, i32 21
  %228 = ptrtoint ptr %procbyte to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %procbyte, align 4
  %conv1018 = zext i8 %229 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug335, ptr noundef %dev1016, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.120, i32 noundef %conv1018) #10
  br label %if.end1024

if.end1024:                                       ; preds = %if.then1014, %do.end993, %if.then964, %do.body952
  %i.4 = phi i32 [ %i.31826, %if.then964 ], [ 0, %if.then1014 ], [ %i.31826, %do.body952 ], [ 0, %do.end993 ]
  %230 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !557
  %231 = and i8 %230, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool1034.not = icmp eq i8 %231, 0
  br i1 %tobool1034.not, label %if.end1024.if.end1059_crit_edge, label %do.body1037

if.end1024.if.end1059_crit_edge:                  ; preds = %if.end1024
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1059

do.body1037:                                      ; preds = %if.end1024
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1049)) #10
          to label %for.end1073 [label %if.then1049], !srcloc !493

if.then1049:                                      ; preds = %do.body1037
  call void @__sanitizer_cov_trace_pc() #12
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %1, align 4
  %dev1051 = getelementptr inbounds %struct.pcmcia_device, ptr %233, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug336, ptr noundef %dev1051, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.120) #10
  br label %if.else1098

if.end1059:                                       ; preds = %if.end1024.if.end1059_crit_edge, %do.end932
  %i.5.ph = phi i32 [ %i.4, %if.end1024.if.end1059_crit_edge ], [ 0, %do.end932 ]
  %234 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %234)
  %.pr1781 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr1781)
  %tobool1061.not = icmp eq i8 %.pr1781, 0
  br i1 %tobool1061.not, label %if.end1059.for.inc1071_crit_edge, label %if.end1059.if.then1062_crit_edge

if.end1059.if.then1062_crit_edge:                 ; preds = %if.end1059
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1062

if.end1059.for.inc1071_crit_edge:                 ; preds = %if.end1059
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc1071

if.then1062:                                      ; preds = %if.end1059.if.then1062_crit_edge, %if.else934.if.then1062_crit_edge
  %i.51784 = phi i32 [ %i.5.ph, %if.end1059.if.then1062_crit_edge ], [ %i.31826, %if.else934.if.then1062_crit_edge ]
  %235 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !558
  br label %for.inc1071

for.inc1071:                                      ; preds = %if.then1062, %if.end1059.for.inc1071_crit_edge
  %i.51785 = phi i32 [ %i.51784, %if.then1062 ], [ %i.5.ph, %if.end1059.for.inc1071_crit_edge ]
  %infolen.3 = phi i8 [ %235, %if.then1062 ], [ %infolen.21827, %if.end1059.for.inc1071_crit_edge ]
  %inc1072 = add nsw i32 %i.51785, 1
  %cmp889 = icmp slt i32 %i.51785, 599
  br i1 %cmp889, label %for.inc1071.for.body891_crit_edge, label %for.inc1071.for.end1073_crit_edge

for.inc1071.for.end1073_crit_edge:                ; preds = %for.inc1071
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end1073

for.inc1071.for.body891_crit_edge:                ; preds = %for.inc1071
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body891

for.end1073:                                      ; preds = %for.inc1071.for.end1073_crit_edge, %do.body1037
  %i.6 = phi i32 [ %i.4, %do.body1037 ], [ %inc1072, %for.inc1071.for.end1073_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %i.6)
  %cmp1074 = icmp eq i32 %i.6, 600
  br i1 %cmp1074, label %do.body1078, label %for.end1073.if.else1098_crit_edge

for.end1073.if.else1098_crit_edge:                ; preds = %for.end1073
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else1098

do.body1078:                                      ; preds = %for.end1073
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1090)) #10
          to label %do.body1280 [label %if.then1090], !srcloc !493

if.then1090:                                      ; preds = %do.body1078
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %1, align 4
  %dev1092 = getelementptr inbounds %struct.pcmcia_device, ptr %237, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug337, ptr noundef %dev1092, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.120) #10
  br label %do.body1280

if.else1098:                                      ; preds = %for.end1073.if.else1098_crit_edge, %if.then1049, %if.then894.if.else1098_crit_edge
  %238 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %cmp1101 = icmp eq i8 %239, 0
  br i1 %cmp1101, label %do.body1105, label %if.else1098.if.end1227_crit_edge

if.else1098.if.end1227_crit_edge:                 ; preds = %if.else1098
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1227

do.body1105:                                      ; preds = %if.else1098
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1117)) #10
          to label %for.body1128 [label %if.then1117], !srcloc !493

if.then1117:                                      ; preds = %do.body1105
  call void @__sanitizer_cov_trace_pc() #12
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %dev1119 = getelementptr inbounds %struct.pcmcia_device, ptr %241, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug338, ptr noundef %dev1119, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.120) #10
  br label %for.body1128

for.body1128:                                     ; preds = %if.end1140.for.body1128_crit_edge, %if.then1117, %do.body1105
  %i.71828 = phi i32 [ %inc1143, %if.end1140.for.body1128_crit_edge ], [ 0, %do.body1105 ], [ 0, %if.then1117 ]
  %242 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !559
  %243 = and i8 %242, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool1138.not = icmp eq i8 %243, 0
  br i1 %tobool1138.not, label %if.end1140, label %if.end1169

if.end1140:                                       ; preds = %for.body1128
  %call1141 = call i32 @msleep_interruptible(i32 noundef 10) #10
  %inc1143 = add nuw nsw i32 %i.71828, 1
  %exitcond1832.not = icmp eq i32 %inc1143, 1000
  br i1 %exitcond1832.not, label %do.body1149, label %if.end1140.for.body1128_crit_edge

if.end1140.for.body1128_crit_edge:                ; preds = %if.end1140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body1128

do.body1149:                                      ; preds = %if.end1140
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1161)) #10
          to label %do.body1280 [label %if.then1161], !srcloc !493

if.then1161:                                      ; preds = %do.body1149
  call void @__sanitizer_cov_trace_pc() #12
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %1, align 4
  %dev1163 = getelementptr inbounds %struct.pcmcia_device, ptr %245, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug339, ptr noundef %dev1163, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.120) #10
  br label %do.body1280

if.end1169:                                       ; preds = %for.body1128
  %246 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #10, !srcloc !495
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !560
  %247 = ptrtoint ptr %procbyte to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %procbyte, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1191)) #10
          to label %do.end1200 [label %if.then1191], !srcloc !493

if.then1191:                                      ; preds = %if.end1169
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %dev1193 = getelementptr inbounds %struct.pcmcia_device, ptr %249, i32 0, i32 21
  %250 = ptrtoint ptr %procbyte to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %procbyte, align 4
  %conv1195 = zext i8 %251 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug340, ptr noundef %dev1193, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.120, i32 noundef %conv1195) #10
  br label %do.end1200

do.end1200:                                       ; preds = %if.then1191, %if.end1169
  %call1202 = call fastcc zeroext i16 @io_read_num_rec_bytes(i32 noundef %7, ptr noundef %rlen)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1216)) #10
          to label %if.end1227 [label %if.then1216], !srcloc !493

if.then1216:                                      ; preds = %do.end1200
  call void @__sanitizer_cov_trace_pc() #12
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %1, align 4
  %dev1218 = getelementptr inbounds %struct.pcmcia_device, ptr %253, i32 0, i32 21
  %254 = ptrtoint ptr %rlen to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %rlen, align 4
  %conv1220 = zext i16 %255 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug341, ptr noundef %dev1218, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.120, i32 noundef %conv1220) #10
  br label %if.end1227

if.end1227:                                       ; preds = %if.then1216, %do.end1200, %if.else1098.if.end1227_crit_edge
  %256 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool1230.not = icmp eq i8 %257, 0
  br i1 %tobool1230.not, label %cond.false1232, label %if.end1227.cond.end1250_crit_edge

if.end1227.cond.end1250_crit_edge:                ; preds = %if.end1227
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end1250

cond.false1232:                                   ; preds = %if.end1227
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv40)
  %cmp1234 = icmp eq i16 %conv40, 4
  br i1 %cmp1234, label %cond.false1232.cond.end1250_crit_edge, label %cond.false1237

cond.false1232.cond.end1250_crit_edge:            ; preds = %cond.false1232
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end1250

cond.false1237:                                   ; preds = %cond.false1232
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %rlen to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv40, i16 %259)
  %cmp1241 = icmp ugt i16 %conv40, %259
  %spec.select1585 = select i1 %cmp1241, i16 5, i16 %conv40
  br label %cond.end1250

cond.end1250:                                     ; preds = %cond.false1237, %cond.false1232.cond.end1250_crit_edge, %if.end1227.cond.end1250_crit_edge
  %cond1251 = phi i16 [ 0, %if.end1227.cond.end1250_crit_edge ], [ 5, %cond.false1232.cond.end1250_crit_edge ], [ %spec.select1585, %cond.false1237 ]
  %rpos = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 4
  %260 = ptrtoint ptr %rpos to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %cond1251, ptr %rpos, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1266)) #10
          to label %do.body1280 [label %if.then1266], !srcloc !493

if.then1266:                                      ; preds = %cond.end1250
  call void @__sanitizer_cov_trace_pc() #12
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %1, align 4
  %dev1268 = getelementptr inbounds %struct.pcmcia_device, ptr %262, i32 0, i32 21
  %263 = ptrtoint ptr %rlen to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %rlen, align 4
  %conv1270 = zext i16 %264 to i32
  %265 = ptrtoint ptr %rpos to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %rpos, align 2
  %conv1272 = zext i16 %266 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug342, ptr noundef %dev1268, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.120, i32 noundef %conv1270, i32 noundef %conv1272, i32 noundef %conv343) #10
  br label %do.body1280

do.body1280:                                      ; preds = %if.then1266, %cond.end1250, %if.then1161, %do.body1149, %if.then1090, %do.body1078, %if.then875, %do.body863, %if.then803, %do.body791, %do.body258.do.body1280_crit_edge, %if.then248, %do.body236, %if.then233
  %cmp1307 = phi i1 [ false, %if.then1266 ], [ true, %if.then233 ], [ true, %if.then248 ], [ true, %do.body258.do.body1280_crit_edge ], [ true, %if.then803 ], [ true, %if.then875 ], [ true, %if.then1090 ], [ true, %if.then1161 ], [ true, %do.body236 ], [ true, %do.body791 ], [ true, %do.body863 ], [ true, %do.body1078 ], [ true, %do.body1149 ], [ false, %cond.end1250 ]
  %rc.0 = phi i32 [ 0, %if.then1266 ], [ -19, %if.then233 ], [ -5, %if.then248 ], [ -19, %do.body258.do.body1280_crit_edge ], [ -5, %if.then803 ], [ -5, %if.then875 ], [ -5, %if.then1090 ], [ -5, %if.then1161 ], [ -5, %do.body236 ], [ -5, %do.body791 ], [ -5, %do.body863 ], [ -5, %do.body1078 ], [ -5, %do.body1149 ], [ 0, %cond.end1250 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1292)) #10
          to label %do.body1300 [label %if.then1292], !srcloc !493

if.then1292:                                      ; preds = %do.body1280
  call void @__sanitizer_cov_trace_pc() #12
  %267 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %1, align 4
  %dev1294 = getelementptr inbounds %struct.pcmcia_device, ptr %268, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug343, ptr noundef %dev1294, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.120) #10
  br label %do.body1300

do.body1300:                                      ; preds = %if.then1292, %do.body1280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !561
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 -128) #10, !srcloc !499
  br i1 %cmp1307, label %do.body1311, label %do.body1300.if.end1343_crit_edge

do.body1300.if.end1343_crit_edge:                 ; preds = %do.body1300
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end1343

do.body1311:                                      ; preds = %do.body1300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1323)) #10
          to label %do.end1330 [label %if.then1323], !srcloc !493

if.then1323:                                      ; preds = %do.body1311
  call void @__sanitizer_cov_trace_pc() #12
  %269 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %1, align 4
  %dev1325 = getelementptr inbounds %struct.pcmcia_device, ptr %270, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug344, ptr noundef %dev1325, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.120) #10
  br label %do.end1330

do.end1330:                                       ; preds = %if.then1323, %do.body1311
  %flags11331 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %271 = ptrtoint ptr %flags11331 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %flags11331, align 4
  %273 = and i8 %272, -33
  store i8 %273, ptr %flags11331, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !562
  call void @arm_heavy_mb() #10
  %274 = ptrtoint ptr %flags11331 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %flags11331, align 4
  %add1339 = add i32 %7, 1
  %and1340 = and i32 %add1339, 1048575
  %add1341 = or i32 %and1340, -18874368
  %276 = inttoptr i32 %add1341 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %276, i8 %275) #10, !srcloc !499
  br label %if.end1343

if.end1343:                                       ; preds = %do.end1330, %do.body1300.if.end1343_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %ioq1345 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  call void @__wake_up(ptr noundef %ioq1345, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %readq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 7
  call void @__wake_up(ptr noundef %readq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %277 = call ptr @memset(ptr %sbuf, i32 0, i32 512)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_write, %if.then1361)) #10
          to label %do.end1368 [label %if.then1361], !srcloc !493

if.then1361:                                      ; preds = %if.end1343
  call void @__sanitizer_cov_trace_pc() #12
  %278 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %1, align 4
  %dev1363 = getelementptr inbounds %struct.pcmcia_device, ptr %279, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_write.__UNIQUE_ID_ddebug345, ptr noundef %dev1363, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.120) #10
  br label %do.end1368

do.end1368:                                       ; preds = %if.then1361, %if.end1343
  %conv1373 = zext i16 %conv40 to i32
  %cond1375 = select i1 %cmp1307, i32 %rc.0, i32 %conv1373
  br label %cleanup1376

cleanup1376:                                      ; preds = %do.end1368, %if.then11.i.i, %if.then194, %if.then141, %do.body129, %if.then116, %if.then73, %do.body61, %lor.lhs.false.cleanup1376_crit_edge, %if.end39.cleanup1376_crit_edge, %if.then31, %do.body19, %do.end10.cleanup1376_crit_edge
  %retval.0 = phi i32 [ %cond1375, %do.end1368 ], [ 0, %do.end10.cleanup1376_crit_edge ], [ -5, %if.then31 ], [ -19, %lor.lhs.false.cleanup1376_crit_edge ], [ -19, %if.end39.cleanup1376_crit_edge ], [ -5, %if.then73 ], [ %., %if.then116 ], [ -5, %if.then141 ], [ %.1583, %if.then194 ], [ -5, %do.body19 ], [ -5, %do.body61 ], [ -5, %do.body129 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmm_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %tmp160 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry255 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry337 = alloca %struct.wait_queue_entry, align 4
  %krnptsreq = alloca %struct.ptsreq, align 8
  %__wq_entry419 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry472 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i, align 8
  %10 = inttoptr i32 %arg to ptr
  tail call void @mutex_lock_nested(ptr noundef nonnull @cmm_mutex, i32 noundef 0) #10
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %11 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %12, 1048575
  %arrayidx2 = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %and.i
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call ptr @pcmcia_dev_present(ptr noundef %14) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.body4, label %if.end14

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then9)) #10
          to label %out [label %if.then9], !srcloc !493

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev11 = getelementptr inbounds %struct.pcmcia_device, ptr %16, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug354, ptr noundef %dev11, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.153) #10
  br label %out

if.end14:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %if.end39, label %do.body19

do.body19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then31)) #10
          to label %out [label %if.then31], !srcloc !493

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev33 = getelementptr inbounds %struct.pcmcia_device, ptr %21, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug355, ptr noundef %dev33, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.153) #10
  br label %out

if.end39:                                         ; preds = %if.end14
  %22 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 25344, i32 %22)
  %cmp.not = icmp eq i32 %22, 25344
  br i1 %cmp.not, label %if.end88, label %do.body42

do.body42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then54)) #10
          to label %out [label %if.then54], !srcloc !493

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %dev56 = getelementptr inbounds %struct.pcmcia_device, ptr %24, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug356, ptr noundef %dev56, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.153) #10
  br label %out

if.end88:                                         ; preds = %if.end39
  %25 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %cmd, label %do.body522 [
    i32 -2147196160, label %do.body90
    i32 -1073454335, label %do.body140
    i32 25348, label %sw.bb229
    i32 1074029314, label %sw.bb377
  ]

do.body90:                                        ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then102)) #10
          to label %do.end109 [label %if.then102], !srcloc !493

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev104 = getelementptr inbounds %struct.pcmcia_device, ptr %27, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug358, ptr noundef %dev104, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.153) #10
  br label %do.end109

do.end109:                                        ; preds = %if.then102, %do.body90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %flags0 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 8
  %28 = ptrtoint ptr %flags0 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags0, align 1
  %30 = and i8 %29, 3
  %and110 = zext i8 %30 to i32
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and110, ptr %status, align 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool113.not = icmp eq i32 %34, 0
  br i1 %tobool113.not, label %do.end109.if.end115_crit_edge, label %if.then114

do.end109.if.end115_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then114:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %and110, 4
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or, ptr %status, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %do.end109.if.end115_crit_edge
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags, align 4
  %38 = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool118.not = icmp eq i32 %38, 0
  br i1 %tobool118.not, label %if.end115.if.end121_crit_edge, label %if.then119

if.end115.if.end121_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status, align 4
  %or120 = or i32 %40, 8
  store i32 %or120, ptr %status, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end115.if.end121_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool124.not = icmp eq i32 %43, 0
  br i1 %tobool124.not, label %if.end121.if.end127_crit_edge, label %if.then125

if.end121.if.end127_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %or126 = or i32 %45, 16
  store i32 %or126, ptr %status, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end121.if.end127_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool130.not = icmp eq i32 %48, 0
  br i1 %tobool130.not, label %if.end127.if.end8.i.i_crit_edge, label %if.then131

if.end127.if.end8.i.i_crit_edge:                  ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or132 = or i32 %50, 32
  store i32 %or132, ptr %status, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then131, %if.end127.if.end8.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.119, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end8.i.i.copy_to_user.exit.thread_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end8.i.i
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 4, i32 -1226833920) #16, !srcloc !534
  %asmresult.i.i = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %status, i32 noundef 4) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef nonnull %status, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool135.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool135.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end8.i.i.copy_to_user.exit.thread_crit_edge
  %52 = phi i32 [ -14, %if.end8.i.i.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  br label %out

do.body140:                                       ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then152)) #10
          to label %do.end159 [label %if.then152], !srcloc !493

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %dev154 = getelementptr inbounds %struct.pcmcia_device, ptr %54, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug359, ptr noundef %dev154, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.153) #10
  br label %do.end159

do.end159:                                        ; preds = %if.then152, %do.body140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp160) #10
  %55 = ptrtoint ptr %tmp160 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %tmp160, align 4, !annotation !494
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1478) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %56 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_flags, align 4
  %and167 = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %lor.lhs.false, label %do.end159.if.end200_crit_edge

do.end159.if.end200_crit_edge:                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

lor.lhs.false:                                    ; preds = %do.end159
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags, align 4
  %60 = and i32 %59, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp171.not = icmp eq i32 %60, 0
  br i1 %cmp171.not, label %if.then173, label %lor.lhs.false.if.end200_crit_edge

lor.lhs.false.if.end200_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

if.then173:                                       ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %61 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %atrq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 6
  %call175840 = call i32 @prepare_to_wait_event(ptr noundef %atrq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %62 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %f_flags, align 4
  %and177841 = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177841)
  %tobool178.not842 = icmp eq i32 %and177841, 0
  br i1 %tobool178.not842, label %if.then173.lor.lhs.false179_crit_edge, label %if.then173.if.end191.thread747_crit_edge

if.then173.if.end191.thread747_crit_edge:         ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.thread747

if.then173.lor.lhs.false179_crit_edge:            ; preds = %if.then173
  br label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %cleanup.lor.lhs.false179_crit_edge, %if.then173.lor.lhs.false179_crit_edge
  %call175843 = phi i32 [ %call175, %cleanup.lor.lhs.false179_crit_edge ], [ %call175840, %if.then173.lor.lhs.false179_crit_edge ]
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags, align 4
  %66 = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp182.not = icmp eq i32 %66, 0
  br i1 %cmp182.not, label %if.end185, label %lor.lhs.false179.if.end191.thread747_crit_edge

lor.lhs.false179.if.end191.thread747_crit_edge:   ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.thread747

if.end185:                                        ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175843)
  %tobool186.not = icmp eq i32 %call175843, 0
  br i1 %tobool186.not, label %cleanup, label %if.then194

cleanup:                                          ; preds = %if.end185
  call void @schedule() #10
  %call175 = call i32 @prepare_to_wait_event(ptr noundef %atrq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %67 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %f_flags, align 4
  %and177 = and i32 %68, 2048
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %cleanup.lor.lhs.false179_crit_edge, label %cleanup.if.end191.thread747_crit_edge

cleanup.if.end191.thread747_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191.thread747

cleanup.lor.lhs.false179_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false179

if.end191.thread747:                              ; preds = %cleanup.if.end191.thread747_crit_edge, %lor.lhs.false179.if.end191.thread747_crit_edge, %if.then173.if.end191.thread747_crit_edge
  call void @finish_wait(ptr noundef %atrq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end200

if.then194:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %69 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %f_flags, align 4
  %and196 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  %. = select i1 %tobool197.not, i32 -512, i32 -11
  br label %cleanup227

if.end200:                                        ; preds = %if.end191.thread747, %lor.lhs.false.if.end200_crit_edge, %do.end159.if.end200_crit_edge
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags, align 4
  %73 = and i32 %72, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp203 = icmp eq i32 %73, 0
  br i1 %cmp203, label %if.then205, label %if.else210

if.then205:                                       ; preds = %if.end200
  %74 = ptrtoint ptr %tmp160 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %tmp160, align 4
  call void @__might_fault(ptr noundef nonnull @.str.119, i32 noundef 174) #10
  %call.i.i665 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i665, label %if.then205.cleanup227_crit_edge, label %if.end.i.i668

if.then205.cleanup227_crit_edge:                  ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end.i.i668:                                    ; preds = %if.then205
  %75 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 4, i32 -1226833920) #16, !srcloc !534
  %asmresult.i.i666 = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i666)
  %cmp.i6.i667 = icmp eq i32 %asmresult.i.i666, 0
  br i1 %cmp.i6.i667, label %copy_to_user.exit673, label %if.end.i.i668.cleanup227_crit_edge

if.end.i.i668.cleanup227_crit_edge:               ; preds = %if.end.i.i668
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

copy_to_user.exit673:                             ; preds = %if.end.i.i668
  %call.i.i.i669 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp160, i32 noundef 4) #10
  %call.i12.i.i670 = call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef nonnull %tmp160, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i670)
  %tobool207.not = icmp eq i32 %call.i12.i.i670, 0
  br i1 %tobool207.not, label %copy_to_user.exit673.if.end226_crit_edge, label %copy_to_user.exit673.cleanup227_crit_edge

copy_to_user.exit673.cleanup227_crit_edge:        ; preds = %copy_to_user.exit673
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

copy_to_user.exit673.if.end226_crit_edge:         ; preds = %copy_to_user.exit673
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

if.else210:                                       ; preds = %if.end200
  %atr = getelementptr inbounds %struct.atreq, ptr %10, i32 0, i32 1
  %atr211 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 1
  %atr_len213 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 2
  %76 = ptrtoint ptr %atr_len213 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %atr_len213, align 2
  %conv214 = zext i16 %77 to i32
  call void @__check_object_size(ptr noundef %atr211, i32 noundef %conv214, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.119, i32 noundef 174) #10
  %call.i.i678 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i678, label %if.else210.copy_to_user.exit686_crit_edge, label %if.end.i.i681

if.else210.copy_to_user.exit686_crit_edge:        ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit686

if.end.i.i681:                                    ; preds = %if.else210
  %78 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %atr, i32 %conv214, i32 -1226833920) #16, !srcloc !534
  %asmresult.i.i679 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i679)
  %cmp.i6.i680 = icmp eq i32 %asmresult.i.i679, 0
  br i1 %cmp.i6.i680, label %if.then2.i.i684, label %if.end.i.i681.copy_to_user.exit686_crit_edge

if.end.i.i681.copy_to_user.exit686_crit_edge:     ; preds = %if.end.i.i681
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit686

if.then2.i.i684:                                  ; preds = %if.end.i.i681
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i682 = call zeroext i1 @__kasan_check_read(ptr noundef %atr211, i32 noundef %conv214) #10
  %call.i12.i.i683 = call i32 @arm_copy_to_user(ptr noundef %atr, ptr noundef %atr211, i32 noundef %conv214) #10
  br label %copy_to_user.exit686

copy_to_user.exit686:                             ; preds = %if.then2.i.i684, %if.end.i.i681.copy_to_user.exit686_crit_edge, %if.else210.copy_to_user.exit686_crit_edge
  %n.addr.0.i685 = phi i32 [ %conv214, %if.else210.copy_to_user.exit686_crit_edge ], [ %call.i12.i.i683, %if.then2.i.i684 ], [ %conv214, %if.end.i.i681.copy_to_user.exit686_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i685)
  %tobool216.not = icmp eq i32 %n.addr.0.i685, 0
  br i1 %tobool216.not, label %if.end218, label %copy_to_user.exit686.cleanup227_crit_edge

copy_to_user.exit686.cleanup227_crit_edge:        ; preds = %copy_to_user.exit686
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end218:                                        ; preds = %copy_to_user.exit686
  %79 = ptrtoint ptr %atr_len213 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %atr_len213, align 2
  %conv220 = zext i16 %80 to i32
  %81 = ptrtoint ptr %tmp160 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv220, ptr %tmp160, align 4
  call void @__might_fault(ptr noundef nonnull @.str.119, i32 noundef 174) #10
  %call.i.i692 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i692, label %if.end218.cleanup227_crit_edge, label %if.end.i.i696

if.end218.cleanup227_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

if.end.i.i696:                                    ; preds = %if.end218
  %82 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 4, i32 -1226833920) #16, !srcloc !534
  %asmresult.i.i694 = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i694)
  %cmp.i6.i695 = icmp eq i32 %asmresult.i.i694, 0
  br i1 %cmp.i6.i695, label %copy_to_user.exit701, label %if.end.i.i696.cleanup227_crit_edge

if.end.i.i696.cleanup227_crit_edge:               ; preds = %if.end.i.i696
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

copy_to_user.exit701:                             ; preds = %if.end.i.i696
  %call.i.i.i697 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp160, i32 noundef 4) #10
  %call.i12.i.i698 = call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef nonnull %tmp160, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i698)
  %tobool223.not = icmp eq i32 %call.i12.i.i698, 0
  br i1 %tobool223.not, label %copy_to_user.exit701.if.end226_crit_edge, label %copy_to_user.exit701.cleanup227_crit_edge

copy_to_user.exit701.cleanup227_crit_edge:        ; preds = %copy_to_user.exit701
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup227

copy_to_user.exit701.if.end226_crit_edge:         ; preds = %copy_to_user.exit701
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

if.end226:                                        ; preds = %copy_to_user.exit701.if.end226_crit_edge, %copy_to_user.exit673.if.end226_crit_edge
  br label %cleanup227

cleanup227:                                       ; preds = %if.end226, %copy_to_user.exit701.cleanup227_crit_edge, %if.end.i.i696.cleanup227_crit_edge, %if.end218.cleanup227_crit_edge, %copy_to_user.exit686.cleanup227_crit_edge, %copy_to_user.exit673.cleanup227_crit_edge, %if.end.i.i668.cleanup227_crit_edge, %if.then205.cleanup227_crit_edge, %if.then194
  %rc.2 = phi i32 [ %., %if.then194 ], [ 0, %if.end226 ], [ -14, %copy_to_user.exit673.cleanup227_crit_edge ], [ -14, %copy_to_user.exit686.cleanup227_crit_edge ], [ -14, %copy_to_user.exit701.cleanup227_crit_edge ], [ -14, %if.then205.cleanup227_crit_edge ], [ -14, %if.end.i.i668.cleanup227_crit_edge ], [ -14, %if.end218.cleanup227_crit_edge ], [ -14, %if.end.i.i696.cleanup227_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp160) #10
  br label %out

sw.bb229:                                         ; preds = %if.end88
  %flags0230 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 8
  %83 = ptrtoint ptr %flags0230 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %flags0230, align 1
  %85 = and i8 %84, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %85)
  %.not = icmp eq i8 %85, 3
  br i1 %.not, label %if.then238, label %sw.bb229.if.end374_crit_edge

sw.bb229.if.end374_crit_edge:                     ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end374

if.then238:                                       ; preds = %sw.bb229
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1528) #10
  %f_flags246 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %86 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %f_flags246, align 4
  %and247 = and i32 %87, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %lor.lhs.false249, label %if.then238.do.body292_crit_edge

if.then238.do.body292_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body292

lor.lhs.false249:                                 ; preds = %if.then238
  %call251 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252 = icmp eq i32 %call251, 0
  br i1 %cmp252, label %lor.lhs.false249.do.body292_crit_edge, label %if.then254

lor.lhs.false249.do.body292_crit_edge:            ; preds = %lor.lhs.false249
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body292

if.then254:                                       ; preds = %lor.lhs.false249
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry255) #10
  %88 = call ptr @memset(ptr %__wq_entry255, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry255, i32 noundef 0) #10
  %ioq = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  %call259828 = call i32 @prepare_to_wait_event(ptr noundef %ioq, ptr noundef nonnull %__wq_entry255, i32 noundef 1) #10
  %89 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %f_flags246, align 4
  %and261829 = and i32 %90, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261829)
  %tobool262.not830 = icmp eq i32 %and261829, 0
  br i1 %tobool262.not830, label %if.then254.lor.lhs.false263_crit_edge, label %if.then254.if.end280.thread765_crit_edge

if.then254.if.end280.thread765_crit_edge:         ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280.thread765

if.then254.lor.lhs.false263_crit_edge:            ; preds = %if.then254
  br label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %cleanup273.lor.lhs.false263_crit_edge, %if.then254.lor.lhs.false263_crit_edge
  %call259831 = phi i32 [ %call259, %cleanup273.lor.lhs.false263_crit_edge ], [ %call259828, %if.then254.lor.lhs.false263_crit_edge ]
  %call265 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %cmp266 = icmp eq i32 %call265, 0
  br i1 %cmp266, label %lor.lhs.false263.if.end280.thread765_crit_edge, label %if.end269

lor.lhs.false263.if.end280.thread765_crit_edge:   ; preds = %lor.lhs.false263
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280.thread765

if.end269:                                        ; preds = %lor.lhs.false263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259831)
  %tobool270.not = icmp eq i32 %call259831, 0
  br i1 %tobool270.not, label %cleanup273, label %if.then283

cleanup273:                                       ; preds = %if.end269
  call void @schedule() #10
  %call259 = call i32 @prepare_to_wait_event(ptr noundef %ioq, ptr noundef nonnull %__wq_entry255, i32 noundef 1) #10
  %91 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %f_flags246, align 4
  %and261 = and i32 %92, 2048
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %cleanup273.lor.lhs.false263_crit_edge, label %cleanup273.if.end280.thread765_crit_edge

cleanup273.if.end280.thread765_crit_edge:         ; preds = %cleanup273
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280.thread765

cleanup273.lor.lhs.false263_crit_edge:            ; preds = %cleanup273
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false263

if.end280.thread765:                              ; preds = %cleanup273.if.end280.thread765_crit_edge, %lor.lhs.false263.if.end280.thread765_crit_edge, %if.then254.if.end280.thread765_crit_edge
  call void @finish_wait(ptr noundef %ioq, ptr noundef nonnull %__wq_entry255) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry255) #10
  br label %do.body292

if.then283:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry255) #10
  %93 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %f_flags246, align 4
  %and285 = and i32 %94, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  %.631 = select i1 %tobool286.not, i32 -512, i32 -11
  br label %out

do.body292:                                       ; preds = %if.end280.thread765, %lor.lhs.false249.do.body292_crit_edge, %if.then238.do.body292_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then304)) #10
          to label %do.body312 [label %if.then304], !srcloc !493

if.then304:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %dev306 = getelementptr inbounds %struct.pcmcia_device, ptr %96, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug360, ptr noundef %dev306, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.153) #10
  br label %do.body312

do.body312:                                       ; preds = %if.then304, %do.body292
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !563
  call void @arm_heavy_mb() #10
  %and315 = and i32 %7, 1048575
  %add316 = or i32 %and315, -18874368
  %97 = inttoptr i32 %add316 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 66) #10, !srcloc !499
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #10
  call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  %mstate = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 6
  %98 = ptrtoint ptr %mstate to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 6, ptr %mstate, align 1
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1546) #10
  %99 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %f_flags246, align 4
  %and329 = and i32 %100, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %lor.lhs.false331, label %do.body312.if.end374_crit_edge

do.body312.if.end374_crit_edge:                   ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end374

lor.lhs.false331:                                 ; preds = %do.body312
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags, align 4
  %103 = and i32 %102, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp334.not = icmp eq i32 %103, 0
  br i1 %cmp334.not, label %if.then336, label %lor.lhs.false331.if.end374_crit_edge

lor.lhs.false331.if.end374_crit_edge:             ; preds = %lor.lhs.false331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end374

if.then336:                                       ; preds = %lor.lhs.false331
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry337) #10
  %104 = call ptr @memset(ptr %__wq_entry337, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry337, i32 noundef 0) #10
  %atrq341 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 6
  %call342834 = call i32 @prepare_to_wait_event(ptr noundef %atrq341, ptr noundef nonnull %__wq_entry337, i32 noundef 1) #10
  %105 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %f_flags246, align 4
  %and344835 = and i32 %106, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344835)
  %tobool345.not836 = icmp eq i32 %and344835, 0
  br i1 %tobool345.not836, label %if.then336.lor.lhs.false346_crit_edge, label %if.then336.if.end363.thread778_crit_edge

if.then336.if.end363.thread778_crit_edge:         ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end363.thread778

if.then336.lor.lhs.false346_crit_edge:            ; preds = %if.then336
  br label %lor.lhs.false346

lor.lhs.false346:                                 ; preds = %cleanup356.lor.lhs.false346_crit_edge, %if.then336.lor.lhs.false346_crit_edge
  %call342837 = phi i32 [ %call342, %cleanup356.lor.lhs.false346_crit_edge ], [ %call342834, %if.then336.lor.lhs.false346_crit_edge ]
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags, align 4
  %109 = and i32 %108, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp349.not = icmp eq i32 %109, 0
  br i1 %cmp349.not, label %if.end352, label %lor.lhs.false346.if.end363.thread778_crit_edge

lor.lhs.false346.if.end363.thread778_crit_edge:   ; preds = %lor.lhs.false346
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end363.thread778

if.end352:                                        ; preds = %lor.lhs.false346
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342837)
  %tobool353.not = icmp eq i32 %call342837, 0
  br i1 %tobool353.not, label %cleanup356, label %if.then366

cleanup356:                                       ; preds = %if.end352
  call void @schedule() #10
  %call342 = call i32 @prepare_to_wait_event(ptr noundef %atrq341, ptr noundef nonnull %__wq_entry337, i32 noundef 1) #10
  %110 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %f_flags246, align 4
  %and344 = and i32 %111, 2048
  %tobool345.not = icmp eq i32 %and344, 0
  br i1 %tobool345.not, label %cleanup356.lor.lhs.false346_crit_edge, label %cleanup356.if.end363.thread778_crit_edge

cleanup356.if.end363.thread778_crit_edge:         ; preds = %cleanup356
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end363.thread778

cleanup356.lor.lhs.false346_crit_edge:            ; preds = %cleanup356
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false346

if.end363.thread778:                              ; preds = %cleanup356.if.end363.thread778_crit_edge, %lor.lhs.false346.if.end363.thread778_crit_edge, %if.then336.if.end363.thread778_crit_edge
  call void @finish_wait(ptr noundef %atrq341, ptr noundef nonnull %__wq_entry337) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry337) #10
  br label %if.end374

if.then366:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry337) #10
  %112 = ptrtoint ptr %f_flags246 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %f_flags246, align 4
  %and368 = and i32 %113, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368)
  %tobool369.not = icmp eq i32 %and368, 0
  %.632 = select i1 %tobool369.not, i32 -512, i32 -11
  br label %out

if.end374:                                        ; preds = %if.end363.thread778, %lor.lhs.false331.if.end374_crit_edge, %do.body312.if.end374_crit_edge, %sw.bb229.if.end374_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %ioq376 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  call void @__wake_up(ptr noundef %ioq376, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %out

sw.bb377:                                         ; preds = %if.end88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %krnptsreq) #10
  %114 = ptrtoint ptr %krnptsreq to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 -1, ptr %krnptsreq, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.119, i32 noundef 156) #10
  %call.i.i714 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i714, label %sw.bb377.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb377.if.then11.i.i_crit_edge:                 ; preds = %sw.bb377
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb377
  %115 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 8, i32 -1226833920) #16, !srcloc !535
  %asmresult.i.i716 = extractvalue { i32, i32 } %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i716)
  %cmp.i6.i717 = icmp eq i32 %asmresult.i.i716, 0
  br i1 %cmp.i6.i717, label %if.end.i.i719, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !533

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i719:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i718 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %krnptsreq, i32 noundef 8) #10
  %116 = call i32 @llvm.read_register.i32(metadata !483) #10
  %and.i.i.i.i.i.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 4
  %118 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !536
  %and.i.i.i.i = and i32 %118, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !537
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !538
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %krnptsreq, ptr noundef %10, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #10, !srcloc !537
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !538
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end381, label %if.end.i.i719.if.then11.i.i_crit_edge, !prof !533

if.end.i.i719.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i719
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i719.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb377.if.then11.i.i_crit_edge
  %res.0.i.i783 = phi i32 [ %call1.i.i.i, %if.end.i.i719.if.then11.i.i_crit_edge ], [ 8, %sw.bb377.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i783
  %add.ptr.i.i = getelementptr i8, ptr %krnptsreq, i32 %sub.i.i
  %119 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i783)
  br label %cleanup518

if.end381:                                        ; preds = %if.end.i.i719
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then395)) #10
          to label %do.end402 [label %if.then395], !srcloc !493

if.then395:                                       ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %dev397 = getelementptr inbounds %struct.pcmcia_device, ptr %121, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug361, ptr noundef %dev397, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.153) #10
  br label %do.end402

do.end402:                                        ; preds = %if.then395, %if.end381
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1577) #10
  %f_flags410 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %122 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %f_flags410, align 4
  %and411 = and i32 %123, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and411)
  %tobool412.not = icmp eq i32 %and411, 0
  br i1 %tobool412.not, label %lor.lhs.false413, label %do.end402.if.end455_crit_edge

do.end402.if.end455_crit_edge:                    ; preds = %do.end402
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end455

lor.lhs.false413:                                 ; preds = %do.end402
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %flags, align 4
  %126 = and i32 %125, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp416.not = icmp eq i32 %126, 0
  br i1 %cmp416.not, label %if.then418, label %lor.lhs.false413.if.end455_crit_edge

lor.lhs.false413.if.end455_crit_edge:             ; preds = %lor.lhs.false413
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end455

if.then418:                                       ; preds = %lor.lhs.false413
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry419) #10
  %127 = call ptr @memset(ptr %__wq_entry419, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry419, i32 noundef 0) #10
  %atrq423 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 6
  %call424817 = call i32 @prepare_to_wait_event(ptr noundef %atrq423, ptr noundef nonnull %__wq_entry419, i32 noundef 1) #10
  %128 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %f_flags410, align 4
  %and426818 = and i32 %129, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and426818)
  %tobool427.not819 = icmp eq i32 %and426818, 0
  br i1 %tobool427.not819, label %if.then418.lor.lhs.false428_crit_edge, label %if.then418.if.end445.thread796_crit_edge

if.then418.if.end445.thread796_crit_edge:         ; preds = %if.then418
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445.thread796

if.then418.lor.lhs.false428_crit_edge:            ; preds = %if.then418
  br label %lor.lhs.false428

lor.lhs.false428:                                 ; preds = %cleanup438.lor.lhs.false428_crit_edge, %if.then418.lor.lhs.false428_crit_edge
  %call424820 = phi i32 [ %call424, %cleanup438.lor.lhs.false428_crit_edge ], [ %call424817, %if.then418.lor.lhs.false428_crit_edge ]
  %130 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %flags, align 4
  %132 = and i32 %131, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp431.not = icmp eq i32 %132, 0
  br i1 %cmp431.not, label %if.end434, label %lor.lhs.false428.if.end445.thread796_crit_edge

lor.lhs.false428.if.end445.thread796_crit_edge:   ; preds = %lor.lhs.false428
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445.thread796

if.end434:                                        ; preds = %lor.lhs.false428
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call424820)
  %tobool435.not = icmp eq i32 %call424820, 0
  br i1 %tobool435.not, label %cleanup438, label %if.then448

cleanup438:                                       ; preds = %if.end434
  call void @schedule() #10
  %call424 = call i32 @prepare_to_wait_event(ptr noundef %atrq423, ptr noundef nonnull %__wq_entry419, i32 noundef 1) #10
  %133 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %f_flags410, align 4
  %and426 = and i32 %134, 2048
  %tobool427.not = icmp eq i32 %and426, 0
  br i1 %tobool427.not, label %cleanup438.lor.lhs.false428_crit_edge, label %cleanup438.if.end445.thread796_crit_edge

cleanup438.if.end445.thread796_crit_edge:         ; preds = %cleanup438
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end445.thread796

cleanup438.lor.lhs.false428_crit_edge:            ; preds = %cleanup438
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false428

if.end445.thread796:                              ; preds = %cleanup438.if.end445.thread796_crit_edge, %lor.lhs.false428.if.end445.thread796_crit_edge, %if.then418.if.end445.thread796_crit_edge
  call void @finish_wait(ptr noundef %atrq423, ptr noundef nonnull %__wq_entry419) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry419) #10
  br label %if.end455

if.then448:                                       ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry419) #10
  %135 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %f_flags410, align 4
  %and450 = and i32 %136, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and450)
  %tobool451.not = icmp eq i32 %and450, 0
  %.633 = select i1 %tobool451.not, i32 -512, i32 -11
  br label %cleanup518

if.end455:                                        ; preds = %if.end445.thread796, %lor.lhs.false413.if.end455_crit_edge, %do.end402.if.end455_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1589) #10
  %137 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %f_flags410, align 4
  %and464 = and i32 %138, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and464)
  %tobool465.not = icmp eq i32 %and464, 0
  br i1 %tobool465.not, label %lor.lhs.false466, label %if.end455.if.end508_crit_edge

if.end455.if.end508_crit_edge:                    ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end508

lor.lhs.false466:                                 ; preds = %if.end455
  %call468 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call468)
  %cmp469 = icmp eq i32 %call468, 0
  br i1 %cmp469, label %lor.lhs.false466.if.end508_crit_edge, label %if.then471

lor.lhs.false466.if.end508_crit_edge:             ; preds = %lor.lhs.false466
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end508

if.then471:                                       ; preds = %lor.lhs.false466
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry472) #10
  %139 = call ptr @memset(ptr %__wq_entry472, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry472, i32 noundef 0) #10
  %ioq476 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  %call477822 = call i32 @prepare_to_wait_event(ptr noundef %ioq476, ptr noundef nonnull %__wq_entry472, i32 noundef 1) #10
  %140 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %f_flags410, align 4
  %and479823 = and i32 %141, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and479823)
  %tobool480.not824 = icmp eq i32 %and479823, 0
  br i1 %tobool480.not824, label %if.then471.lor.lhs.false481_crit_edge, label %if.then471.if.end498.thread808_crit_edge

if.then471.if.end498.thread808_crit_edge:         ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end498.thread808

if.then471.lor.lhs.false481_crit_edge:            ; preds = %if.then471
  br label %lor.lhs.false481

lor.lhs.false481:                                 ; preds = %cleanup491.lor.lhs.false481_crit_edge, %if.then471.lor.lhs.false481_crit_edge
  %call477825 = phi i32 [ %call477, %cleanup491.lor.lhs.false481_crit_edge ], [ %call477822, %if.then471.lor.lhs.false481_crit_edge ]
  %call483 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call483)
  %cmp484 = icmp eq i32 %call483, 0
  br i1 %cmp484, label %lor.lhs.false481.if.end498.thread808_crit_edge, label %if.end487

lor.lhs.false481.if.end498.thread808_crit_edge:   ; preds = %lor.lhs.false481
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end498.thread808

if.end487:                                        ; preds = %lor.lhs.false481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call477825)
  %tobool488.not = icmp eq i32 %call477825, 0
  br i1 %tobool488.not, label %cleanup491, label %if.then501

cleanup491:                                       ; preds = %if.end487
  call void @schedule() #10
  %call477 = call i32 @prepare_to_wait_event(ptr noundef %ioq476, ptr noundef nonnull %__wq_entry472, i32 noundef 1) #10
  %142 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %f_flags410, align 4
  %and479 = and i32 %143, 2048
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %cleanup491.lor.lhs.false481_crit_edge, label %cleanup491.if.end498.thread808_crit_edge

cleanup491.if.end498.thread808_crit_edge:         ; preds = %cleanup491
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end498.thread808

cleanup491.lor.lhs.false481_crit_edge:            ; preds = %cleanup491
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false481

if.end498.thread808:                              ; preds = %cleanup491.if.end498.thread808_crit_edge, %lor.lhs.false481.if.end498.thread808_crit_edge, %if.then471.if.end498.thread808_crit_edge
  call void @finish_wait(ptr noundef %ioq476, ptr noundef nonnull %__wq_entry472) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry472) #10
  br label %if.end508

if.then501:                                       ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry472) #10
  %144 = ptrtoint ptr %f_flags410 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %f_flags410, align 4
  %and503 = and i32 %145, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and503)
  %tobool504.not = icmp eq i32 %and503, 0
  %.634 = select i1 %tobool504.not, i32 -512, i32 -11
  br label %cleanup518

if.end508:                                        ; preds = %if.end498.thread808, %lor.lhs.false466.if.end508_crit_edge, %if.end455.if.end508_crit_edge
  %call509 = call fastcc i32 @set_protocol(ptr noundef %1, ptr noundef nonnull %krnptsreq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call509)
  %cmp510.not = icmp eq i32 %call509, 0
  br i1 %cmp510.not, label %if.end508.if.end515_crit_edge, label %if.then512

if.end508.if.end515_crit_edge:                    ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end515

if.then512:                                       ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #12
  %mstate513 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 8, i32 0, i32 6
  %146 = ptrtoint ptr %mstate513 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %mstate513, align 1
  call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  br label %if.end515

if.end515:                                        ; preds = %if.then512, %if.end508.if.end515_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %ioq517 = getelementptr inbounds %struct.cm4000_dev, ptr %1, i32 0, i32 5
  call void @__wake_up(ptr noundef %ioq517, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup518

cleanup518:                                       ; preds = %if.end515, %if.then501, %if.then448, %if.then11.i.i
  %rc.5 = phi i32 [ %.633, %if.then448 ], [ %.634, %if.then501 ], [ %call509, %if.end515 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %krnptsreq) #10
  br label %out

do.body522:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_ioctl.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_ioctl, %if.then534)) #10
          to label %out [label %if.then534], !srcloc !493

if.then534:                                       ; preds = %do.body522
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %dev536 = getelementptr inbounds %struct.pcmcia_device, ptr %148, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_ioctl.__UNIQUE_ID_ddebug362, ptr noundef %dev536, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.153) #10
  br label %out

out:                                              ; preds = %if.then534, %do.body522, %cleanup518, %if.end374, %if.then366, %if.then283, %cleanup227, %copy_to_user.exit.thread, %if.then54, %do.body42, %if.then31, %do.body19, %if.then9, %do.body4
  %rc.6 = phi i32 [ -19, %if.then31 ], [ -22, %if.then54 ], [ %rc.5, %cleanup518 ], [ 0, %if.end374 ], [ %rc.2, %cleanup227 ], [ %52, %copy_to_user.exit.thread ], [ -19, %if.then9 ], [ %.631, %if.then283 ], [ %.632, %if.then366 ], [ -25, %if.then534 ], [ -19, %do.body4 ], [ -19, %do.body19 ], [ -22, %do.body42 ], [ -25, %do.body522 ]
  call void @mutex_unlock(ptr noundef nonnull @cmm_mutex) #10
  ret i32 %rc.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmm_open(ptr noundef %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cmm_mutex, i32 noundef 0) #10
  %arrayidx = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call ptr @pcmcia_dev_present(ptr noundef nonnull %3) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end4

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_open.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_open, %if.then13)) #10
          to label %do.end21 [label %if.then13], !srcloc !493

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %dev14 = getelementptr inbounds %struct.pcmcia_device, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %12, 20
  %13 = tail call i32 @llvm.read_register.i32(metadata !483) #10
  %and.i72 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i72 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_open.__UNIQUE_ID_ddebug363, ptr noundef %dev14, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.165, i32 noundef %shr.i, i32 noundef %and.i, ptr noundef %comm, i32 noundef %18) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then13, %if.end7
  %19 = getelementptr inbounds %struct.cm4000_dev, ptr %7, i32 0, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 88)
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %21 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_flags, align 4
  %and = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end24, label %do.end21.out_crit_edge

do.end21.out_crit_edge:                           ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end24:                                         ; preds = %do.end21
  %mdelay = getelementptr inbounds %struct.cm4000_dev, ptr %7, i32 0, i32 8, i32 0, i32 10
  %23 = ptrtoint ptr %mdelay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %mdelay, align 4
  tail call fastcc void @start_monitor(ptr noundef %7)
  %24 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %open, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_open.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_open, %if.then40)) #10
          to label %do.end47 [label %if.then40], !srcloc !493

if.then40:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %dev42 = getelementptr inbounds %struct.pcmcia_device, ptr %26, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_open.__UNIQUE_ID_ddebug364, ptr noundef %dev42, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.165) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %if.end24
  %call48 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #10
  br label %out

out:                                              ; preds = %do.end47, %do.end21.out_crit_edge, %if.end4.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call48, %do.end47 ], [ -19, %lor.lhs.false.out_crit_edge ], [ -19, %if.end.out_crit_edge ], [ -16, %if.end4.out_crit_edge ], [ -11, %do.end21.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cmm_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmm_close(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x ptr], ptr @dev_table, i32 0, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_close.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_close, %if.then8)) #10
          to label %do.end13 [label %if.then8], !srcloc !493

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev9 = getelementptr inbounds %struct.pcmcia_device, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %9, 20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_close.__UNIQUE_ID_ddebug365, ptr noundef %dev9, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.168, i32 noundef %shr.i, i32 noundef %and.i) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %if.end3
  tail call fastcc void @stop_monitor(ptr noundef %5)
  %10 = getelementptr inbounds %struct.cm4000_dev, ptr %5, i32 0, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 88)
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 23
  %12 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %open, align 4
  %devq = getelementptr inbounds %struct.cm4000_dev, ptr %5, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %devq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmm_close.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmm_close, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !493

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %dev29 = getelementptr inbounds %struct.pcmcia_device, ptr %14, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmm_close.__UNIQUE_ID_ddebug366, ptr noundef %dev29, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.168) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_detect_cm4000(i32 noundef %iobase, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %iobase, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !564
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #10
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !565
  tail call void @arm_heavy_mb() #10
  %flags1 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 9
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags1, align 4
  %5 = or i8 %4, 64
  %add7 = add i32 %iobase, 1
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %6 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %5) #10, !srcloc !499
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #10, !srcloc !495
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !566
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then21, label %do.body25

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %flags22 = getelementptr inbounds %struct.cm4000_dev, ptr %dev, i32 0, i32 8, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags22) #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags22) #10
  br label %return

do.body25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !567
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %10) #10, !srcloc !499
  br label %return

return:                                           ; preds = %do.body25, %if.then21, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then21 ], [ 1, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !183, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !281, !282, !283, !285, !286, !288, !289, !291, !292, !294, !296, !297, !299, !301, !302, !304, !305, !306, !307, !309, !311, !312, !313, !315, !316, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !338, !340, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !390, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !419, !420, !422, !424, !425, !427, !428, !430, !431, !433, !434, !436, !437, !439, !440, !441, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !458, !459, !461, !462, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !478, !479, !480, !482}
!llvm.named.register.sp = !{!483}
!llvm.module.flags = !{!484, !485, !486, !487, !488, !489, !490, !491}
!llvm.ident = !{!492}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1904, i32 27}
!2 = !{ptr @__initcall__kmod_cm4000_cs__369_1908_cmm_init6, !3, !"__initcall__kmod_cm4000_cs__369_1908_cmm_init6", i1 false, i1 false}
!3 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1908, i32 1}
!4 = !{ptr @__exitcall_cmm_exit, !5, !"__exitcall_cmm_exit", i1 false, i1 false}
!5 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1909, i32 1}
!6 = !{ptr @__UNIQUE_ID_file370, !7, !"__UNIQUE_ID_file370", i1 false, i1 false}
!7 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1910, i32 1}
!8 = !{ptr @__UNIQUE_ID_license371, !7, !"__UNIQUE_ID_license371", i1 false, i1 false}
!9 = !{ptr @major, !10, !"major", i1 false, i1 false}
!10 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 69, i32 12}
!11 = !{ptr @cmm_class, !12, !"cmm_class", i1 false, i1 false}
!12 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 150, i32 22}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1867, i32 12}
!15 = !{ptr @cm4000_driver, !16, !"cm4000_driver", i1 false, i1 false}
!16 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1865, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1794, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cm4000_probe._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @cm4000_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @cm4000_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1807, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cm4000_probe.__key.6, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1808, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cm4000_probe.__key.8, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1809, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cm4000_probe.__key.10, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1810, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1819, i32 56}
!37 = !{ptr @dev_table, !38, !"dev_table", i1 false, i1 false}
!38 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 149, i32 30}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1717, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cmm_cm4000_release.__UNIQUE_ID_ddebug367, !40, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1719, i32 3}
!45 = !{ptr @cmm_cm4000_release._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cmm_cm4000_release._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1728, i32 2}
!49 = !{ptr @cmm_cm4000_release.__UNIQUE_ID_ddebug368, !48, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1391, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @stop_monitor.__UNIQUE_ID_ddebug350, !51, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1393, i32 3}
!56 = !{ptr @stop_monitor.__UNIQUE_ID_ddebug351, !55, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1399, i32 3}
!59 = !{ptr @stop_monitor.__UNIQUE_ID_ddebug352, !58, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1400, i32 2}
!62 = !{ptr @stop_monitor.__UNIQUE_ID_ddebug353, !61, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 634, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @terminate_monitor.__UNIQUE_ID_ddebug266, !64, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 644, i32 2}
!69 = !{ptr @terminate_monitor.__UNIQUE_ID_ddebug267, !68, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 648, i32 2}
!72 = !{ptr @terminate_monitor.__UNIQUE_ID_ddebug268, !71, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 654, i32 2}
!75 = !{ptr @terminate_monitor.__UNIQUE_ID_ddebug269, !74, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1378, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @start_monitor.__UNIQUE_ID_ddebug346, !77, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1380, i32 3}
!82 = !{ptr @start_monitor.__UNIQUE_ID_ddebug347, !81, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!83 = !{ptr @start_monitor.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1381, i32 3}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1385, i32 3}
!88 = !{ptr @start_monitor.__UNIQUE_ID_ddebug348, !87, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1386, i32 2}
!91 = !{ptr @start_monitor.__UNIQUE_ID_ddebug349, !90, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 673, i32 2}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @monitor_card.__UNIQUE_ID_ddebug270, !93, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 677, i32 3}
!98 = !{ptr @monitor_card.__UNIQUE_ID_ddebug271, !97, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 686, i32 3}
!101 = !{ptr @monitor_card.__UNIQUE_ID_ddebug272, !100, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 692, i32 3}
!104 = !{ptr @monitor_card.__UNIQUE_ID_ddebug273, !103, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 698, i32 2}
!107 = !{ptr @monitor_card.__UNIQUE_ID_ddebug274, !106, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 699, i32 2}
!110 = !{ptr @monitor_card.__UNIQUE_ID_ddebug275, !109, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!111 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 701, i32 2}
!115 = !{ptr @monitor_card.__UNIQUE_ID_ddebug276, !114, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 715, i32 4}
!118 = !{ptr @monitor_card.__UNIQUE_ID_ddebug277, !117, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 718, i32 4}
!121 = !{ptr @monitor_card.__UNIQUE_ID_ddebug278, !120, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 727, i32 3}
!124 = !{ptr @monitor_card.__UNIQUE_ID_ddebug279, !123, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 732, i32 3}
!127 = !{ptr @monitor_card.__UNIQUE_ID_ddebug280, !126, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 740, i32 3}
!130 = !{ptr @monitor_card.__UNIQUE_ID_ddebug281, !129, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 764, i32 3}
!133 = !{ptr @monitor_card.__UNIQUE_ID_ddebug282, !132, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 766, i32 3}
!136 = !{ptr @monitor_card.__UNIQUE_ID_ddebug283, !135, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 778, i32 3}
!139 = !{ptr @monitor_card.__UNIQUE_ID_ddebug284, !138, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!140 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 785, i32 3}
!142 = !{ptr @monitor_card.__UNIQUE_ID_ddebug285, !141, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!143 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 800, i32 3}
!145 = !{ptr @monitor_card.__UNIQUE_ID_ddebug286, !144, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 803, i32 3}
!148 = !{ptr @monitor_card.__UNIQUE_ID_ddebug287, !147, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 810, i32 3}
!151 = !{ptr @monitor_card.__UNIQUE_ID_ddebug288, !150, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 829, i32 4}
!154 = !{ptr @monitor_card.__UNIQUE_ID_ddebug289, !153, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 836, i32 5}
!157 = !{ptr @monitor_card.__UNIQUE_ID_ddebug290, !156, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 844, i32 6}
!160 = !{ptr @monitor_card.__UNIQUE_ID_ddebug291, !159, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!161 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 848, i32 6}
!163 = !{ptr @monitor_card.__UNIQUE_ID_ddebug292, !162, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!164 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 866, i32 6}
!166 = !{ptr @monitor_card.__UNIQUE_ID_ddebug293, !165, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 869, i32 6}
!169 = !{ptr @monitor_card.__UNIQUE_ID_ddebug294, !168, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 873, i32 6}
!172 = !{ptr @monitor_card.__UNIQUE_ID_ddebug295, !171, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 879, i32 4}
!175 = !{ptr @monitor_card.__UNIQUE_ID_ddebug296, !174, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 884, i32 3}
!178 = !{ptr @monitor_card.__UNIQUE_ID_ddebug297, !177, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 888, i32 4}
!181 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.66, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @monitor_card._entry, !180, !"_entry", i1 false, i1 false}
!184 = !{ptr @monitor_card._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 890, i32 5}
!187 = !{ptr @monitor_card.__UNIQUE_ID_ddebug298, !186, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!188 = !{ptr @.str.68, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 909, i32 3}
!190 = !{ptr @monitor_card.__UNIQUE_ID_ddebug299, !189, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!191 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 914, i32 2}
!193 = !{ptr @monitor_card.__UNIQUE_ID_ddebug300, !192, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 919, i32 2}
!196 = !{ptr @monitor_card.__UNIQUE_ID_ddebug301, !195, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!197 = !{ptr @.str.71, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 324, i32 2}
!199 = !{ptr @.str.72, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @parse_atr.__UNIQUE_ID_ddebug236, !198, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!201 = !{ptr @.str.73, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 327, i32 3}
!203 = !{ptr @parse_atr.__UNIQUE_ID_ddebug237, !202, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!204 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 345, i32 4}
!206 = !{ptr @parse_atr.__UNIQUE_ID_ddebug238, !205, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!207 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 352, i32 3}
!209 = !{ptr @parse_atr.__UNIQUE_ID_ddebug239, !208, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!210 = !{ptr @.str.76, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 362, i32 5}
!212 = !{ptr @parse_atr.__UNIQUE_ID_ddebug240, !211, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!213 = !{ptr @.str.77, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 365, i32 5}
!215 = !{ptr @parse_atr.__UNIQUE_ID_ddebug241, !214, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 371, i32 2}
!218 = !{ptr @parse_atr.__UNIQUE_ID_ddebug242, !217, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!219 = !{ptr @.str.79, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 374, i32 3}
!221 = !{ptr @parse_atr.__UNIQUE_ID_ddebug243, !220, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!222 = !{ptr @.str.80, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 459, i32 2}
!224 = !{ptr @.str.81, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @set_protocol.__UNIQUE_ID_ddebug248, !223, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!226 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 460, i32 2}
!228 = !{ptr @set_protocol.__UNIQUE_ID_ddebug249, !227, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!229 = !{ptr @.str.83, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 476, i32 2}
!231 = !{ptr @set_protocol.__UNIQUE_ID_ddebug250, !230, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!232 = !{ptr @.str.84, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 483, i32 2}
!234 = !{ptr @set_protocol.__UNIQUE_ID_ddebug251, !233, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!235 = !{ptr @.str.85, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 494, i32 2}
!237 = !{ptr @set_protocol.__UNIQUE_ID_ddebug252, !236, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!238 = !{ptr @.str.86, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 500, i32 2}
!240 = !{ptr @set_protocol.__UNIQUE_ID_ddebug253, !239, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!241 = !{ptr @.str.87, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 504, i32 2}
!243 = !{ptr @set_protocol.__UNIQUE_ID_ddebug254, !242, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!244 = !{ptr @.str.88, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 517, i32 2}
!246 = !{ptr @set_protocol.__UNIQUE_ID_ddebug255, !245, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!247 = !{ptr @.str.89, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 525, i32 2}
!249 = !{ptr @set_protocol.__UNIQUE_ID_ddebug256, !248, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!250 = !{ptr @.str.90, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 529, i32 4}
!252 = !{ptr @set_protocol.__UNIQUE_ID_ddebug257, !251, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!253 = !{ptr @.str.91, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 535, i32 3}
!255 = !{ptr @set_protocol.__UNIQUE_ID_ddebug258, !254, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!256 = !{ptr @.str.92, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 541, i32 2}
!258 = !{ptr @set_protocol.__UNIQUE_ID_ddebug259, !257, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!259 = !{ptr @.str.93, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 545, i32 4}
!261 = !{ptr @set_protocol.__UNIQUE_ID_ddebug260, !260, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!262 = !{ptr @.str.94, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 560, i32 3}
!264 = !{ptr @set_protocol.__UNIQUE_ID_ddebug261, !263, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!265 = !{ptr @.str.95, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 565, i32 2}
!267 = !{ptr @set_protocol.__UNIQUE_ID_ddebug262, !266, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!268 = !{ptr @.str.96, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 569, i32 2}
!270 = !{ptr @set_protocol.__UNIQUE_ID_ddebug263, !269, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!271 = !{ptr @.str.97, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 583, i32 2}
!273 = !{ptr @set_protocol.__UNIQUE_ID_ddebug264, !272, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!274 = !{ptr @.str.98, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 603, i32 2}
!276 = !{ptr @set_protocol.__UNIQUE_ID_ddebug265, !275, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!277 = !{ptr @fi_di_table, !278, !"fi_di_table", i1 false, i1 false}
!278 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 155, i32 22}
!279 = !{ptr @.str.99, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 425, i32 2}
!281 = !{ptr @.str.100, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @set_cardparameter.__UNIQUE_ID_ddebug244, !280, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!283 = !{ptr @.str.101, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 429, i32 2}
!285 = !{ptr @set_cardparameter.__UNIQUE_ID_ddebug245, !284, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!286 = !{ptr @.str.102, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 434, i32 2}
!288 = !{ptr @set_cardparameter.__UNIQUE_ID_ddebug246, !287, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!289 = !{ptr @.str.103, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 445, i32 2}
!291 = !{ptr @set_cardparameter.__UNIQUE_ID_ddebug247, !290, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!292 = !{ptr @card_fixups, !293, !"card_fixups", i1 false, i1 false}
!293 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 405, i32 26}
!294 = !{ptr @.str.104, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1860, i32 2}
!296 = !{ptr @.str.105, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @cm4000_ids, !298, !"cm4000_ids", i1 false, i1 false}
!298 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1858, i32 38}
!299 = !{ptr @cmm_init.__key, !300, !"__key", i1 false, i1 false}
!300 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1879, i32 14}
!301 = !{ptr @.str.106, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.107, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1885, i32 3}
!304 = !{ptr @.str.108, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @cmm_init._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @cmm_init._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @cm4000_fops, !308, !"cm4000_fops", i1 false, i1 false}
!308 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1848, i32 37}
!309 = !{ptr @.str.109, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 934, i32 2}
!311 = !{ptr @.str.110, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @cmm_read.__UNIQUE_ID_ddebug302, !310, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!313 = !{ptr @.str.111, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 992, i32 2}
!315 = !{ptr @cmm_read.__UNIQUE_ID_ddebug303, !314, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!316 = !{ptr @.str.112, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 997, i32 2}
!318 = !{ptr @cmm_read.__UNIQUE_ID_ddebug306, !317, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!319 = !{ptr @.str.113, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1004, i32 3}
!321 = !{ptr @cmm_read.__UNIQUE_ID_ddebug309, !320, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!322 = !{ptr @.str.114, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1014, i32 3}
!324 = !{ptr @cmm_read.__UNIQUE_ID_ddebug310, !323, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!325 = !{ptr @.str.115, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1024, i32 2}
!327 = !{ptr @cmm_read.__UNIQUE_ID_ddebug311, !326, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!328 = !{ptr @.str.116, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1045, i32 2}
!330 = !{ptr @cmm_read.__UNIQUE_ID_ddebug312, !329, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!331 = distinct !{null, !332, !"__already_done", i1 false, i1 false}
!332 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!333 = !{ptr @.str.117, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.118, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!336 = !{ptr @.str.119, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!338 = !{ptr @.str.120, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1063, i32 2}
!340 = !{ptr @.str.121, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @cmm_write.__UNIQUE_ID_ddebug313, !339, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!342 = !{ptr @.str.122, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1070, i32 3}
!344 = !{ptr @cmm_write.__UNIQUE_ID_ddebug314, !343, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!345 = !{ptr @.str.123, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1083, i32 3}
!347 = !{ptr @cmm_write.__UNIQUE_ID_ddebug315, !346, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!348 = !{ptr @.str.124, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1108, i32 3}
!350 = !{ptr @cmm_write.__UNIQUE_ID_ddebug316, !349, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!351 = !{ptr @.str.125, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1134, i32 4}
!353 = !{ptr @cmm_write.__UNIQUE_ID_ddebug317, !352, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!354 = !{ptr @.str.126, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1159, i32 2}
!356 = !{ptr @cmm_write.__UNIQUE_ID_ddebug318, !355, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!357 = !{ptr @.str.127, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1163, i32 2}
!359 = !{ptr @cmm_write.__UNIQUE_ID_ddebug319, !358, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!360 = !{ptr @.str.128, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1172, i32 4}
!362 = !{ptr @cmm_write.__UNIQUE_ID_ddebug320, !361, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!363 = !{ptr @.str.129, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1177, i32 4}
!365 = !{ptr @cmm_write.__UNIQUE_ID_ddebug321, !364, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!366 = !{ptr @.str.130, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1188, i32 2}
!368 = !{ptr @cmm_write.__UNIQUE_ID_ddebug322, !367, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!369 = !{ptr @.str.131, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1193, i32 4}
!371 = !{ptr @cmm_write.__UNIQUE_ID_ddebug323, !370, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!372 = !{ptr @.str.132, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1218, i32 3}
!374 = !{ptr @cmm_write.__UNIQUE_ID_ddebug324, !373, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!375 = !{ptr @.str.133, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1222, i32 3}
!377 = !{ptr @cmm_write.__UNIQUE_ID_ddebug325, !376, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!378 = !{ptr @.str.134, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1226, i32 2}
!380 = !{ptr @cmm_write.__UNIQUE_ID_ddebug326, !379, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!381 = !{ptr @.str.135, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1230, i32 2}
!383 = !{ptr @cmm_write.__UNIQUE_ID_ddebug327, !382, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!384 = !{ptr @.str.136, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1243, i32 3}
!386 = !{ptr @cmm_write.__UNIQUE_ID_ddebug328, !385, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!387 = !{ptr @.str.137, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1250, i32 4}
!389 = !{ptr @cmm_write.__UNIQUE_ID_ddebug329, !388, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!390 = !{ptr @.str.138, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1265, i32 5}
!392 = !{ptr @cmm_write.__UNIQUE_ID_ddebug330, !391, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!393 = !{ptr @.str.139, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1271, i32 4}
!395 = !{ptr @cmm_write.__UNIQUE_ID_ddebug331, !394, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!396 = !{ptr @.str.140, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1289, i32 4}
!398 = !{ptr @cmm_write.__UNIQUE_ID_ddebug332, !397, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!399 = !{ptr @.str.141, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1303, i32 5}
!401 = !{ptr @cmm_write.__UNIQUE_ID_ddebug333, !400, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!402 = !{ptr @.str.142, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1307, i32 5}
!404 = !{ptr @cmm_write.__UNIQUE_ID_ddebug334, !403, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!405 = !{ptr @.str.143, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1310, i32 5}
!407 = !{ptr @cmm_write.__UNIQUE_ID_ddebug335, !406, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!408 = !{ptr @.str.144, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1315, i32 5}
!410 = !{ptr @cmm_write.__UNIQUE_ID_ddebug336, !409, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!411 = !{ptr @.str.145, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1323, i32 3}
!413 = !{ptr @cmm_write.__UNIQUE_ID_ddebug337, !412, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!414 = !{ptr @.str.146, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1328, i32 4}
!416 = !{ptr @cmm_write.__UNIQUE_ID_ddebug338, !415, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!417 = !{ptr @.str.147, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1335, i32 5}
!419 = !{ptr @cmm_write.__UNIQUE_ID_ddebug339, !418, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!420 = !{ptr @cmm_write.__UNIQUE_ID_ddebug340, !421, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!421 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1341, i32 4}
!422 = !{ptr @.str.148, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1345, i32 4}
!424 = !{ptr @cmm_write.__UNIQUE_ID_ddebug341, !423, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!425 = !{ptr @.str.149, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1351, i32 2}
!427 = !{ptr @cmm_write.__UNIQUE_ID_ddebug342, !426, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!428 = !{ptr @.str.150, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1355, i32 2}
!430 = !{ptr @cmm_write.__UNIQUE_ID_ddebug343, !429, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!431 = !{ptr @.str.151, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1359, i32 3}
!433 = !{ptr @cmm_write.__UNIQUE_ID_ddebug344, !432, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!434 = !{ptr @.str.152, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1372, i32 2}
!436 = !{ptr @cmm_write.__UNIQUE_ID_ddebug345, !435, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!437 = !{ptr @.str.153, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1427, i32 3}
!439 = !{ptr @.str.154, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug354, !438, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!441 = !{ptr @.str.155, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1432, i32 3}
!443 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug355, !442, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!444 = !{ptr @.str.156, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1438, i32 3}
!446 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug356, !445, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!447 = distinct !{null, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1442, i32 3}
!449 = distinct !{null, !448, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!450 = !{ptr @.str.158, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1449, i32 3}
!452 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug358, !451, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!453 = !{ptr @.str.159, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1469, i32 3}
!455 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug359, !454, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!456 = !{ptr @.str.160, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1536, i32 4}
!458 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug360, !457, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!459 = !{ptr @.str.161, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1571, i32 4}
!461 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug361, !460, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!462 = !{ptr @.str.162, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1614, i32 3}
!464 = !{ptr @cmm_ioctl.__UNIQUE_ID_ddebug362, !463, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!465 = !{ptr @.str.163, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 57, i32 8}
!467 = !{ptr @.str.164, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @cmm_mutex, !466, !"cmm_mutex", i1 false, i1 false}
!469 = !{ptr @.str.165, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1647, i32 2}
!471 = !{ptr @.str.166, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @cmm_open.__UNIQUE_ID_ddebug363, !470, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!473 = !{ptr @.str.167, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1674, i32 2}
!475 = !{ptr @cmm_open.__UNIQUE_ID_ddebug364, !474, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!476 = !{ptr @.str.168, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1696, i32 2}
!478 = !{ptr @.str.169, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @cmm_close.__UNIQUE_ID_ddebug365, !477, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!480 = !{ptr @.str.170, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/char/pcmcia/cm4000_cs.c", i32 1706, i32 2}
!482 = !{ptr @cmm_close.__UNIQUE_ID_ddebug366, !481, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!483 = !{!"sp"}
!484 = !{i32 1, !"wchar_size", i32 2}
!485 = !{i32 1, !"min_enum_size", i32 4}
!486 = !{i32 8, !"branch-target-enforcement", i32 0}
!487 = !{i32 8, !"sign-return-address", i32 0}
!488 = !{i32 8, !"sign-return-address-all", i32 0}
!489 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!490 = !{i32 7, !"uwtable", i32 1}
!491 = !{i32 7, !"frame-pointer", i32 2}
!492 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!493 = !{i64 2148738637, i64 2148738642, i64 2148738655, i64 2148738699, i64 2148738733, i64 2148738754}
!494 = !{!"auto-init"}
!495 = !{i64 5730308}
!496 = !{i64 2154638597}
!497 = !{i64 2154660473}
!498 = !{i64 2154660729}
!499 = !{i64 5729913}
!500 = !{i64 2154663541}
!501 = !{i64 2154666408}
!502 = !{i64 2154666765}
!503 = !{i64 2154667122}
!504 = !{i64 2154667504}
!505 = !{i64 2154677873}
!506 = !{i64 2154678227}
!507 = !{i64 2154678651}
!508 = !{i64 2154681463}
!509 = !{i64 2154523536}
!510 = !{i64 2154523838}
!511 = !{i64 2154569027}
!512 = !{i64 2154572087}
!513 = !{i64 2154577799}
!514 = !{i64 2154578163}
!515 = !{i64 2154581120}
!516 = !{i64 2154581477}
!517 = !{i64 2154584591}
!518 = !{i64 2154600445}
!519 = !{i64 2154603259}
!520 = !{i64 2154603683}
!521 = !{i64 2154606468}
!522 = !{i64 2154547508}
!523 = !{i64 2154550439}
!524 = !{i64 2154553990}
!525 = !{i64 2154727030}
!526 = !{i64 2154734029}
!527 = !{i64 2154734457}
!528 = !{i64 2154742843}
!529 = !{i64 2154743199}
!530 = !{i64 2154743627}
!531 = !{i64 2154748871}
!532 = !{i64 2154749225}
!533 = !{!"branch_weights", i32 2000, i32 1}
!534 = !{i64 2152857370, i64 2152857395}
!535 = !{i64 2152856689, i64 2152856714}
!536 = !{i64 5352244}
!537 = !{i64 5352441}
!538 = !{i64 2152837674}
!539 = !{i64 2154766066}
!540 = !{i64 2154768895}
!541 = !{i64 2154769322}
!542 = !{i64 2154772209}
!543 = !{i64 2154777899}
!544 = !{i64 2154781448}
!545 = !{i64 2154781828}
!546 = !{i64 2154782182}
!547 = !{i64 2154782547}
!548 = !{i64 2154787873}
!549 = !{i64 2154791968}
!550 = !{i64 2154795017}
!551 = !{i64 2154798128}
!552 = !{i64 2154802114}
!553 = !{i64 2154805039}
!554 = !{i64 2154807954}
!555 = !{i64 2154816043}
!556 = !{i64 2154821647}
!557 = !{i64 2154824608}
!558 = !{i64 2154827471}
!559 = !{i64 2154833027}
!560 = !{i64 2154835912}
!561 = !{i64 2154846650}
!562 = !{i64 2154849645}
!563 = !{i64 2154900467}
!564 = !{i64 2154609364}
!565 = !{i64 2154609801}
!566 = !{i64 2154610225}
!567 = !{i64 2154610655}
