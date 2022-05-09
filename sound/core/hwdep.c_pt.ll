; ModuleID = '/llk/IR_all_yes/sound/core/hwdep.c_pt.bc'
source_filename = "../sound/core/hwdep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_hwdep_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hwdep_new\09\09\09\09"
module asm "\09.long\09__crc_snd_hwdep_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hwdep_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hwdep_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hwdep_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_hwdep_dsp_image = type { i32, [64 x i8], ptr, i32, i32 }
%struct.snd_hwdep_dsp_status = type { i32, [32 x i8], i32, i32, i32, [16 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
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
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_hwdep_info = type { i32, i32, [64 x i8], [80 x i8], i32, [64 x i8] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.64, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author229 = internal constant [50 x i8] c"snd_hwdep.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [47 x i8] c"snd_hwdep.description=Hardware dependent layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [36 x i8] c"snd_hwdep.file=sound/core/snd-hwdep\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"snd_hwdep.license=GPL\00", section ".modinfo", align 1
@snd_hwdep_new.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_hwdep_dev_free, ptr @snd_hwdep_dev_register, ptr @snd_hwdep_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/core/hwdep.c\00", [45 x i8] zeroinitializer }, align 32
@snd_hwdep_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hwdep->open_wait\00", [46 x i8] zeroinitializer }, align 32
@snd_hwdep_new.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hwdep->open_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hwC%iD%i\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_snd_hwdep_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hwdep_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hwdep_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hwdep_new to i32), ptr @__kstrtab_snd_hwdep_new, ptr @__kstrtabns_snd_hwdep_new }, section "___ksymtab+snd_hwdep_new", align 4
@snd_hwdep_proc_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_snd_hwdep__234_544_alsa_hwdep_init6 = internal global ptr @alsa_hwdep_init, section ".initcall6.init", align 4
@__exitcall_alsa_hwdep_exit = internal global ptr @alsa_hwdep_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 52), ptr getelementptr (i8, ptr @register_mutex, i64 52) }, ptr @register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@snd_hwdep_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @snd_hwdep_devices, ptr @snd_hwdep_devices }, [24 x i8] zeroinitializer }, align 32
@snd_hwdep_f_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @snd_hwdep_llseek, ptr @snd_hwdep_read, ptr @snd_hwdep_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_hwdep_poll, ptr @snd_hwdep_ioctl, ptr null, ptr @snd_hwdep_mmap, i32 0, ptr @snd_hwdep_open, ptr null, ptr @snd_hwdep_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_hwdep_dev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 431, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_hwdep_dev_register\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_hwdep_dev_register._entry_ptr = internal global ptr @snd_hwdep_dev_register._entry, section ".printk_index", align 4
@snd_hwdep_dev_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str, i32 443, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"only hwdep device 0 can be registered as OSS direct FM device!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_hwdep_dev_register._entry_ptr.12 = internal global ptr @snd_hwdep_dev_register._entry.9, section ".printk_index", align 4
@snd_hwdep_dev_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str, i32 448, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to register OSS compatibility device\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_hwdep_dev_register._entry_ptr.15 = internal global ptr @snd_hwdep_dev_register._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_major = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwdep\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02i-%02i: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2161923361, i64 3221509408]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1079003139, i64 2147764224, i64 2151696386, i64 2161920001]
@___asan_gen_.24 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 364, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 370, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 378, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 379, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 387, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"snd_hwdep_proc_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 498, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"register_mutex\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"snd_hwdep_devices\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 24, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"snd_hwdep_f_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 327, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 431, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 442, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 447, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 25, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 174, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 504, i32 52 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [22 x i8] c"../sound/core/hwdep.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 493, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_alsa_hwdep_exit, ptr @__initcall__kmod_snd_hwdep__234_544_alsa_hwdep_init6, ptr @__ksymtab_snd_hwdep_new, ptr @alsa_hwdep_exit, ptr @snd_hwdep_dev_register._entry, ptr @snd_hwdep_dev_register._entry.13, ptr @snd_hwdep_dev_register._entry.9, ptr @snd_hwdep_dev_register._entry_ptr, ptr @snd_hwdep_dev_register._entry_ptr.12, ptr @snd_hwdep_dev_register._entry_ptr.15, ptr @snd_hwdep_proc_done, ptr @snd_hwdep_new.ops, ptr @.str, ptr @snd_hwdep_new.__key, ptr @.str.1, ptr @snd_hwdep_new.__key.2, ptr @.str.3, ptr @.str.4, ptr @snd_hwdep_proc_entry, ptr @register_mutex, ptr @snd_hwdep_devices, ptr @snd_hwdep_f_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_new.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_new.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_proc_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_f_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_dev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_dev_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hwdep_dev_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hwdep_new(ptr noundef %card, ptr noundef %id, i32 noundef %device, ptr noundef writeonly %rhwdep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 370, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool24.not = icmp eq ptr %rhwdep, null
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rhwdep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rhwdep, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1280) #10
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %do.body30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body30:                                        ; preds = %if.end26
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %open_wait, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_hwdep_new.__key) #7
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %open_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_hwdep_new.__key.2) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %call7.i.i, align 8
  %device37 = getelementptr inbounds %struct.snd_hwdep, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %device37 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %device, ptr %device37, align 4
  %tobool38.not = icmp eq ptr %id, null
  br i1 %tobool38.not, label %do.body30.if.end42_crit_edge, label %if.then39

do.body30.if.end42_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %id40 = getelementptr inbounds %struct.snd_hwdep, ptr %call7.i.i, i32 0, i32 3
  %call41 = tail call i32 @strscpy(ptr noundef %id40, ptr noundef nonnull %id, i32 noundef 32) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %do.body30.if.end42_crit_edge
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %call7.i.i, i32 0, i32 12
  tail call void @snd_device_initialize(ptr noundef %dev, ptr noundef nonnull %card) #7
  %release = getelementptr inbounds %struct.snd_hwdep, ptr %call7.i.i, i32 0, i32 12, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @release_hwdep_device, ptr %release, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %card, align 8
  %call45 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %device) #7
  %oss_type = getelementptr inbounds %struct.snd_hwdep, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %oss_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %oss_type, align 4
  %call46 = tail call i32 @snd_device_new(ptr noundef nonnull %card, i32 noundef 9, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @snd_hwdep_new.ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef %dev) #7
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  br i1 %tobool24.not, label %if.end49.cleanup_crit_edge, label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rhwdep to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %rhwdep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end49.cleanup_crit_edge, %if.then47, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call46, %if.then47 ], [ -12, %if.end26.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_free = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_free, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef nonnull %1) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 12
  tail call void @put_device(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_dev_register(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #7
  %device2 = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device2, align 4
  %.pn13.i = load ptr, ptr @snd_hwdep_devices, align 4
  %cmp.not15.i = icmp eq ptr %.pn13.i, @snd_hwdep_devices
  br i1 %cmp.not15.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %hwdep.017.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %6 = ptrtoint ptr %hwdep.017.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwdep.017.i, align 8
  %cmp2.i = icmp eq ptr %7, %3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %device3.i = getelementptr i8, ptr %.pn16.i, i32 8
  %8 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp4.i = icmp eq i32 %9, %5
  br i1 %cmp4.i, label %snd_hwdep_search.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @snd_hwdep_devices
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

snd_hwdep_search.exit:                            ; preds = %land.lhs.true.i
  %hwdep.017.i.le = getelementptr i8, ptr %.pn16.i, i32 -4
  %tobool.not = icmp eq ptr %hwdep.017.i.le, null
  br i1 %tobool.not, label %snd_hwdep_search.exit.if.end_crit_edge, label %snd_hwdep_search.exit.cleanup_crit_edge

snd_hwdep_search.exit.cleanup_crit_edge:          ; preds = %snd_hwdep_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

snd_hwdep_search.exit.if.end_crit_edge:           ; preds = %snd_hwdep_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %snd_hwdep_search.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %list = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_hwdep_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %11, ptr noundef nonnull @snd_hwdep_devices) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @snd_hwdep_devices, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_hwdep_devices, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 12
  %call5 = tail call i32 @snd_register_device(i32 noundef 3, ptr noundef %16, i32 noundef %18, ptr noundef nonnull @snd_hwdep_f_ops, ptr noundef %1, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %list_add_tail.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  %call.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i57, label %if.end.i.i58, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i58:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i58, %do.end.list_del.exit_crit_edge
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

if.end9:                                          ; preds = %list_add_tail.exit
  %ossreg = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %ossreg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ossreg, align 8
  %oss_type = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %oss_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oss_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp10 = icmp sgt i32 %29, -1
  br i1 %cmp10, label %if.then11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp13 = icmp eq i32 %29, 4
  br i1 %cmp13, label %land.lhs.true, label %if.then11.if.else_crit_edge

if.then11.if.else_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.then11
  %30 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %land.lhs.true.if.else_crit_edge, label %do.end19

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.end19:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then11.if.else_crit_edge
  %32 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device2, align 4
  %call23 = tail call i32 @snd_register_oss_device(i32 noundef %29, ptr noundef %3, i32 noundef %33, ptr noundef nonnull @snd_hwdep_f_ops, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.else30

do.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %ossreg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %ossreg, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else30, %do.end28, %do.end19, %if.end9.cleanup_crit_edge, %list_del.exit, %snd_hwdep_search.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %list_del.exit ], [ -16, %snd_hwdep_search.exit.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %if.else30 ], [ 0, %do.end28 ], [ 0, %if.end9.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_dev_disconnect(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 461, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %device24 = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device24, align 4
  %.pn13.i = load ptr, ptr @snd_hwdep_devices, align 4
  %cmp.not15.i = icmp eq ptr %.pn13.i, @snd_hwdep_devices
  br i1 %cmp.not15.i, label %if.end23.snd_hwdep_search.exit_crit_edge, label %if.end23.for.body.i_crit_edge

if.end23.for.body.i_crit_edge:                    ; preds = %if.end23
  br label %for.body.i

if.end23.snd_hwdep_search.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_search.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end23.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %if.end23.for.body.i_crit_edge ]
  %hwdep.017.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %6 = ptrtoint ptr %hwdep.017.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwdep.017.i, align 8
  %cmp2.i = icmp eq ptr %7, %3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %device3.i = getelementptr i8, ptr %.pn16.i, i32 8
  %8 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp4.i = icmp eq i32 %9, %5
  br i1 %cmp4.i, label %snd_hwdep_search.exit.loopexit.split.loop.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @snd_hwdep_devices
  br i1 %cmp.not.i, label %for.inc.i.snd_hwdep_search.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.snd_hwdep_search.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_search.exit

snd_hwdep_search.exit.loopexit.split.loop.exit:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %hwdep.017.i.le = getelementptr i8, ptr %.pn16.i, i32 -4
  br label %snd_hwdep_search.exit

snd_hwdep_search.exit:                            ; preds = %snd_hwdep_search.exit.loopexit.split.loop.exit, %for.inc.i.snd_hwdep_search.exit_crit_edge, %if.end23.snd_hwdep_search.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end23.snd_hwdep_search.exit_crit_edge ], [ %hwdep.017.i.le, %snd_hwdep_search.exit.loopexit.split.loop.exit ], [ null, %for.inc.i.snd_hwdep_search.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, %1
  br i1 %cmp.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %snd_hwdep_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #7
  br label %cleanup

if.end26:                                         ; preds = %snd_hwdep_search.exit
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #7
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %ossreg = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ossreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ossreg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  br i1 %tobool27.not, label %if.end26.if.end32_crit_edge, label %if.then28

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %oss_type = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %oss_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oss_type, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device24, align 4
  %call31 = tail call i32 @snd_unregister_oss_device(i32 noundef %14, ptr noundef %16, i32 noundef %18) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end26.if.end32_crit_edge
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 12
  %call33 = tail call i32 @snd_unregister_device(ptr noundef %dev) #7
  %list = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_del_init.exit_crit_edge

if.end32.list_del_init.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end32.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %open_mutex) #7
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then25, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %if.then25 ], [ 0, %list_del_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_hwdep_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -248
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_hwdep_proc_done() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @snd_hwdep_proc_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_hwdep_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_ctl_unregister_ioctl(ptr noundef nonnull @snd_hwdep_control_ioctl) #7
  %0 = load ptr, ptr @snd_hwdep_proc_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_unregister_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_control_ioctl(ptr noundef readnone %card, ptr nocapture noundef readnone %control, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -1073457888, label %sw.bb
    i32 -2133043935, label %sw.bb30
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 273) #7
  %1 = inttoptr i32 %arg to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !75
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #7, !srcloc !78
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %sw.bb
  %asmresult1 = extractvalue { i32, i32 } %5, 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1)
  %cmp = icmp slt i32 %asmresult1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult1)
  %cmp4 = icmp slt i32 %asmresult1, 4
  %inc = add i32 %asmresult1, 1
  %spec.select = select i1 %cmp4, i32 %inc, i32 4
  %spec.select98 = select i1 %cmp, i32 0, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select98)
  %cmp9101 = icmp slt i32 %spec.select98, 4
  br i1 %cmp9101, label %while.body.lr.ph, label %if.end.while.end.thread_crit_edge

if.end.while.end.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %if.end
  %.pn13.i = load ptr, ptr @snd_hwdep_devices, align 4
  %cmp.not15.i = icmp eq ptr %.pn13.i, @snd_hwdep_devices
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %device.1102 = phi i32 [ %spec.select98, %while.body.lr.ph ], [ %inc14, %if.end13.while.body_crit_edge ]
  br i1 %cmp.not15.i, label %while.body.if.end13_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %while.body.for.body.i_crit_edge ]
  %hwdep.017.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %6 = ptrtoint ptr %hwdep.017.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwdep.017.i, align 8
  %cmp2.i = icmp eq ptr %7, %card
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %device3.i = getelementptr i8, ptr %.pn16.i, i32 8
  %8 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %device.1102)
  %cmp4.i = icmp eq i32 %9, %device.1102
  br i1 %cmp4.i, label %snd_hwdep_search.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @snd_hwdep_devices
  br i1 %cmp.not.i, label %for.inc.i.if.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

snd_hwdep_search.exit:                            ; preds = %land.lhs.true.i
  %hwdep.017.i.le = getelementptr i8, ptr %.pn16.i, i32 -4
  %tobool11.not = icmp eq ptr %hwdep.017.i.le, null
  br i1 %tobool11.not, label %snd_hwdep_search.exit.if.end13_crit_edge, label %while.end

snd_hwdep_search.exit.if.end13_crit_edge:         ; preds = %snd_hwdep_search.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %snd_hwdep_search.exit.if.end13_crit_edge, %for.inc.i.if.end13_crit_edge, %while.body.if.end13_crit_edge
  %inc14 = add nsw i32 %device.1102, 1
  %exitcond.not = icmp eq i32 %inc14, 4
  br i1 %exitcond.not, label %if.end13.while.end.thread_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end13.while.end.thread_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

while.end:                                        ; preds = %snd_hwdep_search.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %device.1102)
  %cmp15 = icmp sgt i32 %device.1102, 3
  br i1 %cmp15, label %while.end.while.end.thread_crit_edge, label %while.end._crit_edge

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.end13.while.end.thread_crit_edge, %if.end.while.end.thread_crit_edge
  br label %11

11:                                               ; preds = %while.end.thread, %while.end._crit_edge
  %12 = phi i32 [ -1, %while.end.thread ], [ %device.1102, %while.end._crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 292) #7
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i70 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i70 to ptr
  %cpu_domain.i.i71 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i71) #6, !srcloc !75
  %and.i72 = and i32 %15, -13
  %or.i73 = or i32 %and.i72, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i73) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %12, i32 -1226833921) #7, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  %. = select i1 %tobool27.not, i32 0, i32 -14
  br label %return

sw.bb30:                                          ; preds = %entry
  %17 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 302) #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i74 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i74 to ptr
  %cpu_domain.i.i75 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i75) #6, !srcloc !75
  %and.i76 = and i32 %20, -13
  %or.i77 = or i32 %and.i76, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i77) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %21 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %17, i32 -1226833921) #7, !srcloc !80
  %asmresult42 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult42)
  %tobool45.not = icmp eq i32 %asmresult42, 0
  br i1 %tobool45.not, label %if.end47, label %sw.bb30.return_crit_edge

sw.bb30.return_crit_edge:                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end47:                                         ; preds = %sw.bb30
  %asmresult43 = extractvalue { i32, i32 } %21, 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #7
  %.pn13.i78 = load ptr, ptr @snd_hwdep_devices, align 4
  %cmp.not15.i79 = icmp eq ptr %.pn13.i78, @snd_hwdep_devices
  br i1 %cmp.not15.i79, label %if.end47.if.end53_crit_edge, label %if.end47.for.body.i83_crit_edge

if.end47.for.body.i83_crit_edge:                  ; preds = %if.end47
  br label %for.body.i83

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.body.i83:                                     ; preds = %for.inc.i89.for.body.i83_crit_edge, %if.end47.for.body.i83_crit_edge
  %.pn16.i80 = phi ptr [ %.pn.i87, %for.inc.i89.for.body.i83_crit_edge ], [ %.pn13.i78, %if.end47.for.body.i83_crit_edge ]
  %hwdep.017.i81 = getelementptr i8, ptr %.pn16.i80, i32 -4
  %22 = ptrtoint ptr %hwdep.017.i81 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwdep.017.i81, align 8
  %cmp2.i82 = icmp eq ptr %23, %card
  br i1 %cmp2.i82, label %land.lhs.true.i86, label %for.body.i83.for.inc.i89_crit_edge

for.body.i83.for.inc.i89_crit_edge:               ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i89

land.lhs.true.i86:                                ; preds = %for.body.i83
  %device3.i84 = getelementptr i8, ptr %.pn16.i80, i32 8
  %24 = ptrtoint ptr %device3.i84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device3.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %asmresult43)
  %cmp4.i85 = icmp eq i32 %25, %asmresult43
  br i1 %cmp4.i85, label %snd_hwdep_search.exit93, label %land.lhs.true.i86.for.inc.i89_crit_edge

land.lhs.true.i86.for.inc.i89_crit_edge:          ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i89

for.inc.i89:                                      ; preds = %land.lhs.true.i86.for.inc.i89_crit_edge, %for.body.i83.for.inc.i89_crit_edge
  %26 = ptrtoint ptr %.pn16.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i87 = load ptr, ptr %.pn16.i80, align 4
  %cmp.not.i88 = icmp eq ptr %.pn.i87, @snd_hwdep_devices
  br i1 %cmp.not.i88, label %for.inc.i89.if.end53_crit_edge, label %for.inc.i89.for.body.i83_crit_edge

for.inc.i89.for.body.i83_crit_edge:               ; preds = %for.inc.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i83

for.inc.i89.if.end53_crit_edge:                   ; preds = %for.inc.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

snd_hwdep_search.exit93:                          ; preds = %land.lhs.true.i86
  %hwdep.017.i81.le = getelementptr i8, ptr %.pn16.i80, i32 -4
  %tobool49.not = icmp eq ptr %hwdep.017.i81.le, null
  br i1 %tobool49.not, label %snd_hwdep_search.exit93.if.end53_crit_edge, label %if.then50

snd_hwdep_search.exit93.if.end53_crit_edge:       ; preds = %snd_hwdep_search.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then50:                                        ; preds = %snd_hwdep_search.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call fastcc i32 @snd_hwdep_info(ptr noundef nonnull %hwdep.017.i81.le, ptr noundef %17)
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %snd_hwdep_search.exit93.if.end53_crit_edge, %for.inc.i89.if.end53_crit_edge, %if.end47.if.end53_crit_edge
  %err.0 = phi i32 [ %call51, %if.then50 ], [ -6, %snd_hwdep_search.exit93.if.end53_crit_edge ], [ -6, %if.end47.if.end53_crit_edge ], [ -6, %for.inc.i89.if.end53_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #7
  br label %return

return:                                           ; preds = %if.end53, %sw.bb30.return_crit_edge, %11, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ -14, %sw.bb.return_crit_edge ], [ %., %11 ], [ %err.0, %if.end53 ], [ -14, %sw.bb30.return_crit_edge ], [ -515, %entry.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_hwdep_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_hwdep_proc_init() #12
  %call = tail call i32 @snd_ctl_register_ioctl(ptr noundef nonnull @snd_hwdep_control_ioctl) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_oss_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @snd_hwdep_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i64 %3(ptr noundef %1, ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call, %if.then ], [ -6, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %buf, i32 noundef %count, ptr noundef %offset) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %write = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %buf, i32 noundef %count, ptr noundef %offset) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %poll = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %file, ptr noundef %wait) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %info.i23 = alloca %struct.snd_hwdep_dsp_image, align 4
  %info.i = alloca %struct.snd_hwdep_dsp_status, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %cmd, label %sw.epilog [
    i32 -2147203072, label %sw.bb
    i32 -2133047295, label %sw.bb2
    i32 -2143270910, label %sw.bb4
    i32 1079003139, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 243) #7
  %4 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !75
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 65537, i32 -1226833921) #7, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @snd_hwdep_info(ptr noundef %1, ptr noundef %2)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info.i) #7
  %dsp_status.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 9
  %8 = ptrtoint ptr %dsp_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsp_status.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sw.bb4.snd_hwdep_dsp_status.exit_crit_edge, label %if.end.i

sw.bb4.snd_hwdep_dsp_status.exit_crit_edge:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_status.exit

if.end.i:                                         ; preds = %sw.bb4
  %10 = call ptr @memset(ptr %info.i, i32 0, i32 64)
  %dsp_loaded.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %dsp_loaded.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dsp_loaded.i, align 8
  %dsp_loaded1.i = getelementptr inbounds %struct.snd_hwdep_dsp_status, ptr %info.i, i32 0, i32 3
  %13 = ptrtoint ptr %dsp_loaded1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dsp_loaded1.i, align 4
  %call.i = call i32 %9(ptr noundef %1, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.snd_hwdep_dsp_status.exit_crit_edge, label %if.end59.i.i.i

if.end.i.snd_hwdep_dsp_status.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_status.exit

if.end59.i.i.i:                                   ; preds = %if.end.i
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #7
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.end59.i.i.i.snd_hwdep_dsp_status.exit_crit_edge, label %if.end.i.i.i

if.end59.i.i.i.snd_hwdep_dsp_status.exit_crit_edge: ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_status.exit

if.end.i.i.i:                                     ; preds = %if.end59.i.i.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1226833920) #13, !srcloc !82
  %asmresult.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.snd_hwdep_dsp_status.exit_crit_edge

if.end.i.i.i.snd_hwdep_dsp_status.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_status.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 64) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %info.i, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool7.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 0, i32 -14
  br label %snd_hwdep_dsp_status.exit

snd_hwdep_dsp_status.exit:                        ; preds = %copy_to_user.exit.i, %if.end.i.i.i.snd_hwdep_dsp_status.exit_crit_edge, %if.end59.i.i.i.snd_hwdep_dsp_status.exit_crit_edge, %if.end.i.snd_hwdep_dsp_status.exit_crit_edge, %sw.bb4.snd_hwdep_dsp_status.exit_crit_edge
  %retval.0.i = phi i32 [ -6, %sw.bb4.snd_hwdep_dsp_status.exit_crit_edge ], [ %call.i, %if.end.i.snd_hwdep_dsp_status.exit_crit_edge ], [ -14, %if.end59.i.i.i.snd_hwdep_dsp_status.exit_crit_edge ], [ -14, %if.end.i.i.i.snd_hwdep_dsp_status.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info.i) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %info.i23) #7
  %15 = call ptr @memset(ptr %info.i23, i32 0, i32 80)
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #7
  %call.i.i.i24 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i24, label %sw.bb6.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb6.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb6
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 80, i32 -1226833920) #13, !srcloc !83
  %asmresult.i.i.i25 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i25)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i25, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i27, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !84

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i27:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i26 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i23, i32 noundef 80) #7
  %17 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !75
  %and.i.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i23, ptr noundef %2, i32 noundef 80) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #7, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i28, label %if.end.i.i.i27.if.then11.i.i.i_crit_edge, !prof !84

if.end.i.i.i27.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i27.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb6.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i27.if.then11.i.i.i_crit_edge ], [ 80, %sw.bb6.if.then11.i.i.i_crit_edge ], [ 80, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 80, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %info.i23, i32 %sub.i.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %snd_hwdep_dsp_load_user.exit

if.end.i28:                                       ; preds = %if.end.i.i.i27
  %dsp_load.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 10
  %21 = ptrtoint ptr %dsp_load.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsp_load.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i28.snd_hwdep_dsp_load_user.exit_crit_edge, label %if.end.i.i

if.end.i28.snd_hwdep_dsp_load_user.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_load_user.exit

if.end.i.i:                                       ; preds = %if.end.i28
  %23 = ptrtoint ptr %info.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %info.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %24)
  %cmp.i.i = icmp ugt i32 %24, 31
  br i1 %cmp.i.i, label %if.end.i.i.snd_hwdep_dsp_load_user.exit_crit_edge, label %if.end2.i.i

if.end.i.i.snd_hwdep_dsp_load_user.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_load_user.exit

if.end2.i.i:                                      ; preds = %if.end.i.i
  %dsp_loaded.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %dsp_loaded.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dsp_loaded.i.i, align 8
  %shl.i.i = shl nuw i32 1, %24
  %and.i.i = and i32 %26, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end2.i.i.snd_hwdep_dsp_load_user.exit_crit_edge

if.end2.i.i.snd_hwdep_dsp_load_user.exit_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_load_user.exit

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %call.i.i = call i32 %22(ptr noundef %1, ptr noundef nonnull %info.i23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i.i, label %if.end6.i.i.snd_hwdep_dsp_load_user.exit_crit_edge, label %if.end11.i.i

if.end6.i.i.snd_hwdep_dsp_load_user.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_hwdep_dsp_load_user.exit

if.end11.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %info.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %info.i23, align 4
  %shl13.i.i = shl nuw i32 1, %28
  %29 = ptrtoint ptr %dsp_loaded.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dsp_loaded.i.i, align 8
  %or.i.i = or i32 %30, %shl13.i.i
  store i32 %or.i.i, ptr %dsp_loaded.i.i, align 8
  br label %snd_hwdep_dsp_load_user.exit

snd_hwdep_dsp_load_user.exit:                     ; preds = %if.end11.i.i, %if.end6.i.i.snd_hwdep_dsp_load_user.exit_crit_edge, %if.end2.i.i.snd_hwdep_dsp_load_user.exit_crit_edge, %if.end.i.i.snd_hwdep_dsp_load_user.exit_crit_edge, %if.end.i28.snd_hwdep_dsp_load_user.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i29 = phi i32 [ 0, %if.end11.i.i ], [ -6, %if.end.i28.snd_hwdep_dsp_load_user.exit_crit_edge ], [ -22, %if.end.i.i.snd_hwdep_dsp_load_user.exit_crit_edge ], [ -16, %if.end2.i.i.snd_hwdep_dsp_load_user.exit_crit_edge ], [ %call.i.i, %if.end6.i.i.snd_hwdep_dsp_load_user.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %info.i23) #7
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %ioctl = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 6
  %31 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioctl, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 %32(ptr noundef %1, ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %snd_hwdep_dsp_load_user.exit, %snd_hwdep_dsp_status.exit, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %call10, %if.then ], [ %retval.0.i29, %snd_hwdep_dsp_load_user.exit ], [ %retval.0.i, %snd_hwdep_dsp_status.exit ], [ %call3, %sw.bb2 ], [ %7, %sw.bb ], [ -25, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmap = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 8
  %2 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %file, ptr noundef %vma) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %1, 20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds i8, ptr %wait, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_major to i32))
  %6 = load i32, ptr @snd_major, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %6)
  %cmp = icmp eq i32 %shr.i, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %1, 1048575
  %call2 = tail call ptr @snd_lookup_minor_data(i32 noundef %and.i, i32 noundef 3) #7
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %shr.i)
  %cmp3 = icmp eq i32 %shr.i, 14
  br i1 %cmp3, label %if.then4, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and.i179 = and i32 %1, 1048575
  %call6 = tail call ptr @snd_lookup_oss_minor_data(i32 noundef %and.i179, i32 noundef 4) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then
  %hw.0 = phi ptr [ %call2, %if.then ], [ %call6, %if.then4 ]
  %cmp9 = icmp eq ptr %hw.0, null
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %hw.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.0, align 8
  %module = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %module, align 4
  %call12 = tail call zeroext i1 @try_module_get(ptr noundef %10) #7
  br i1 %call12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %hw.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.0, align 8
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i180 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i180 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wait, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %2, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @default_wake_function, ptr %3, align 4
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %hw.0, i32 0, i32 9
  call void @add_wait_queue(ptr noundef %open_wait, ptr noundef nonnull %wait) #7
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %hw.0, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #7
  %exclusive = getelementptr inbounds %struct.snd_hwdep, ptr %hw.0, i32 0, i32 16
  %used = getelementptr inbounds %struct.snd_hwdep, ptr %hw.0, i32 0, i32 14
  %open = getelementptr inbounds %struct.snd_hwdep, ptr %hw.0, i32 0, i32 8, i32 3
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %if.end15
  %20 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %exclusive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %while.cond.if.end19_crit_edge, label %land.lhs.true

while.cond.if.end19_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %while.cond
  %21 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp17 = icmp sgt i32 %22, 0
  br i1 %cmp17, label %land.lhs.true.while.end.thread_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true.while.end.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %while.cond.if.end19_crit_edge
  %23 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %open, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %while.end.thread186, label %if.end22

while.end.thread186:                              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @remove_wait_queue(ptr noundef %open_wait, ptr noundef nonnull %wait) #7
  br label %if.then114

if.end22:                                         ; preds = %if.end19
  %call25 = call i32 %24(ptr noundef nonnull %hw.0, ptr noundef %file) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call25)
  %cmp29 = icmp eq i32 %call25, -11
  br i1 %cmp29, label %if.then30, label %while.end

if.then30:                                        ; preds = %if.end22
  %25 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_flags, align 4
  %and = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %__here, label %if.then30.while.end.thread_crit_edge

if.then30.while.end.thread_crit_edge:             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

__here:                                           ; preds = %if.then30
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 212
  %29 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 ptrtoint (ptr blockaddress(@snd_hwdep_open, %__here) to i32), ptr %task_state_change, align 4
  %30 = load ptr, ptr %task, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %30, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !85
  call void @mutex_unlock(ptr noundef %open_mutex) #7
  call void @schedule() #7
  call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #7
  %32 = ptrtoint ptr %hw.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.0, align 8
  %shutdown = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %shutdown, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool103.not = icmp eq i32 %35, 0
  br i1 %tobool103.not, label %if.end105, label %__here.while.end.thread_crit_edge

__here.while.end.thread_crit_edge:                ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

if.end105:                                        ; preds = %__here
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stack.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end105.while.end.thread_crit_edge, !prof !84

if.end105.while.end.thread_crit_edge:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

signal_pending.exit:                              ; preds = %if.end105
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %39, align 4
  %and1.i.i.i.i.i = and i32 %44, 1
  %tobool109.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool109.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.while.end.thread_crit_edge

signal_pending.exit.while.end.thread_crit_edge:   ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.thread

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end.thread:                                 ; preds = %signal_pending.exit.while.end.thread_crit_edge, %if.end105.while.end.thread_crit_edge, %__here.while.end.thread_crit_edge, %if.then30.while.end.thread_crit_edge, %land.lhs.true.while.end.thread_crit_edge
  %err.0.ph = phi i32 [ -512, %signal_pending.exit.while.end.thread_crit_edge ], [ -19, %__here.while.end.thread_crit_edge ], [ -16, %if.then30.while.end.thread_crit_edge ], [ -16, %land.lhs.true.while.end.thread_crit_edge ], [ -512, %if.end105.while.end.thread_crit_edge ]
  call void @remove_wait_queue(ptr noundef %open_wait, ptr noundef nonnull %wait) #7
  br label %if.then132

while.end:                                        ; preds = %if.end22
  call void @remove_wait_queue(ptr noundef %open_wait, ptr noundef nonnull %wait) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp113 = icmp sgt i32 %call25, -1
  br i1 %cmp113, label %while.end.if.then114_crit_edge, label %while.end.if.then132_crit_edge

while.end.if.then132_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then132

while.end.if.then114_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then114

if.then114:                                       ; preds = %while.end.if.then114_crit_edge, %while.end.thread186
  %45 = ptrtoint ptr %hw.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw.0, align 8
  %call116 = call i32 @snd_card_file_add(ptr noundef %46, ptr noundef %file) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call116)
  %cmp117 = icmp sgt i32 %call116, -1
  br i1 %cmp117, label %if.end129, label %if.else120

if.else120:                                       ; preds = %if.then114
  %release = getelementptr inbounds %struct.snd_hwdep, ptr %hw.0, i32 0, i32 8, i32 4
  %47 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %release, align 4
  %tobool122.not = icmp eq ptr %48, null
  br i1 %tobool122.not, label %if.else120.if.then132_crit_edge, label %if.then123

if.else120.if.then132_crit_edge:                  ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then132

if.then123:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = call i32 %48(ptr noundef nonnull %hw.0, ptr noundef %file) #7
  br label %if.then132

if.end129:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %49 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %hw.0, ptr %private_data, align 4
  %50 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %used, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %used, align 4
  call void @mutex_unlock(ptr noundef %open_mutex) #7
  br label %if.end135

if.then132:                                       ; preds = %if.then123, %if.else120.if.then132_crit_edge, %while.end.if.then132_crit_edge, %while.end.thread
  %err.1.ph = phi i32 [ %err.0.ph, %while.end.thread ], [ %call25, %while.end.if.then132_crit_edge ], [ %call116, %if.else120.if.then132_crit_edge ], [ %call116, %if.then123 ]
  call void @mutex_unlock(ptr noundef %open_mutex) #7
  %52 = ptrtoint ptr %hw.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw.0, align 8
  %module134 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %module134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %module134, align 4
  call void @module_put(ptr noundef %55) #7
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end129
  %err.1191 = phi i32 [ %err.1.ph, %if.then132 ], [ %call116, %if.end129 ]
  %56 = ptrtoint ptr %hw.0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.0, align 8
  %card_dev.i181 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 28
  call void @put_device(ptr noundef %card_dev.i181) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.then13, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1191, %if.end135 ], [ -14, %if.then13 ], [ -6, %if.else.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hwdep_release(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %module = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #7
  %release = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %file) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %used = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nsw i32 %9, -1
  %10 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %used, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #7
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call8 = tail call i32 @snd_card_file_remove(ptr noundef %12, ptr noundef %file) #7
  tail call void @module_put(ptr noundef %5) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_hwdep_info(ptr noundef %hw, ptr noundef %_info) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.snd_hwdep_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 220, ptr nonnull %info) #7
  %0 = call ptr @memset(ptr %info, i32 0, i32 220)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %card1 = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %card1, align 4
  %id = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 2
  %id2 = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 3
  %call = call i32 @strscpy(ptr noundef %id, ptr noundef %id2, i32 noundef 64) #7
  %name = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 3
  %name5 = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 4
  %call7 = call i32 @strscpy(ptr noundef %name, ptr noundef %name5, i32 noundef 80) #7
  %iface = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 5
  %6 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iface, align 8
  %iface8 = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %iface8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %iface8, align 4
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_info, i32 220, i32 -1226833920) #13, !srcloc !82
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 220) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %_info, ptr noundef nonnull %info, i32 noundef 220) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %10 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 220, ptr nonnull %info) #7
  ret i32 %10
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_oss_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_oss_device(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_hwdep_proc_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @snd_hwdep_proc_read, ptr %c, align 4
  %call2 = tail call i32 @snd_info_register(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_info_free_entry(ptr noundef nonnull %call) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %entry1.0 = phi ptr [ null, %if.then3 ], [ %call, %if.then.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  store ptr %entry1.0, ptr @snd_hwdep_proc_entry, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_register_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_hwdep_proc_read(ptr nocapture noundef readnone %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #7
  %.pn11 = load ptr, ptr @snd_hwdep_devices, align 4
  %cmp.not12 = icmp eq ptr %.pn11, @snd_hwdep_devices
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %hwdep.0 = getelementptr i8, ptr %.pn13, i32 -4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = ptrtoint ptr %hwdep.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwdep.0, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %device = getelementptr i8, ptr %.pn13, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %name = getelementptr i8, ptr %.pn13, i32 44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %5, i32 noundef %7, ptr noundef %name) #7
  %8 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, @snd_hwdep_devices
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_author229, !1, !"__UNIQUE_ID_author229", i1 false, i1 false}
!1 = !{!"../sound/core/hwdep.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description230, !3, !"__UNIQUE_ID_description230", i1 false, i1 false}
!3 = !{!"../sound/core/hwdep.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file231, !5, !"__UNIQUE_ID_file231", i1 false, i1 false}
!5 = !{!"../sound/core/hwdep.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license232, !5, !"__UNIQUE_ID_license232", i1 false, i1 false}
!7 = !{ptr @snd_hwdep_new.ops, !8, !"ops", i1 false, i1 false}
!8 = !{!"../sound/core/hwdep.c", i32 364, i32 37}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/core/hwdep.c", i32 370, i32 6}
!11 = !{ptr @snd_hwdep_new.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../sound/core/hwdep.c", i32 378, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @snd_hwdep_new.__key.2, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/core/hwdep.c", i32 379, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/core/hwdep.c", i32 387, i32 28}
!19 = !{ptr @__ksymtab_snd_hwdep_new, !20, !"__ksymtab_snd_hwdep_new", i1 false, i1 false}
!20 = !{!"../sound/core/hwdep.c", i32 402, i32 1}
!21 = !{ptr @__initcall__kmod_snd_hwdep__234_544_alsa_hwdep_init6, !22, !"__initcall__kmod_snd_hwdep__234_544_alsa_hwdep_init6", i1 false, i1 false}
!22 = !{!"../sound/core/hwdep.c", i32 544, i32 1}
!23 = !{ptr @__exitcall_alsa_hwdep_exit, !24, !"__exitcall_alsa_hwdep_exit", i1 false, i1 false}
!24 = !{!"../sound/core/hwdep.c", i32 545, i32 1}
!25 = !{ptr @snd_hwdep_proc_entry, !26, !"snd_hwdep_proc_entry", i1 false, i1 false}
!26 = !{!"../sound/core/hwdep.c", i32 498, i32 31}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/core/hwdep.c", i32 431, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @snd_hwdep_dev_register._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @snd_hwdep_dev_register._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/core/hwdep.c", i32 442, i32 4}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @snd_hwdep_dev_register._entry.9, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @snd_hwdep_dev_register._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/core/hwdep.c", i32 447, i32 4}
!41 = !{ptr @snd_hwdep_dev_register._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @snd_hwdep_dev_register._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/core/hwdep.c", i32 25, i32 8}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @register_mutex, !44, !"register_mutex", i1 false, i1 false}
!47 = !{ptr @snd_hwdep_devices, !48, !"snd_hwdep_devices", i1 false, i1 false}
!48 = !{!"../sound/core/hwdep.c", i32 24, i32 8}
!49 = !{ptr @snd_hwdep_f_ops, !50, !"snd_hwdep_f_ops", i1 false, i1 false}
!50 = !{!"../sound/core/hwdep.c", i32 327, i32 37}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!53 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../sound/core/hwdep.c", i32 115, i32 3}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/core/hwdep.c", i32 504, i32 52}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/core/hwdep.c", i32 493, i32 3}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 5027989}
!76 = !{i64 5028186}
!77 = !{i64 2152513419}
!78 = !{i64 2153580823, i64 2153581103, i64 2153581437, i64 2153581771}
!79 = !{i64 2153590402, i64 2153590682, i64 2153591016, i64 2153591350}
!80 = !{i64 2153602816, i64 2153603096, i64 2153603430, i64 2153603764}
!81 = !{i64 2153565796, i64 2153566076, i64 2153566410, i64 2153566744}
!82 = !{i64 2152533115, i64 2152533140}
!83 = !{i64 2152532434, i64 2152532459}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2153558746}
