; ModuleID = '/llk/IR_all_yes/drivers/char/lp.c_pt.bc'
source_filename = "../drivers/char/lp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lp_struct = type { ptr, i32, i32, i32, i32, ptr, %struct.wait_queue_head, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
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
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }

@__param_str_parport = internal constant [11 x i8] c"lp.parport\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_parport = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_charp, ptr @parport }, align 4
@__param_parport = internal constant %struct.kernel_param { ptr @__param_str_parport, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_parport } }, section "__param", align 4
@__UNIQUE_ID_parporttype225 = internal constant [35 x i8] c"lp.parmtype=parport:array of charp\00", section ".modinfo", align 1
@__param_str_reset = internal constant [9 x i8] c"lp.reset\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@reset = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @reset } }, section "__param", align 4
@__UNIQUE_ID_resettype226 = internal constant [23 x i8] c"lp.parmtype=reset:bool\00", section ".modinfo", align 1
@__setup_str_lp_setup = internal constant [4 x i8] c"lp=\00", section ".init.rodata", align 1
@__setup_lp_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_lp_setup, ptr @lp_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_lp__227_1122_lp_init_module6 = internal global ptr @lp_init_module, section ".initcall6.init", align 4
@__exitcall_lp_cleanup_module = internal global ptr @lp_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias228 = internal constant [24 x i8] c"lp.alias=char-major-6-*\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [24 x i8] c"lp.file=drivers/char/lp\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [15 x i8] c"lp.license=GPL\00", section ".modinfo", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@parport = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@lp_setup.parport_ptr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@parport_nr = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4], [32 x i8] zeroinitializer }, align 32
@lp_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014warning: 'lp=0x%x' is deprecated, ignored\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lp_setup\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/char/lp.c\00", [46 x i8] zeroinitializer }, align 32
@lp_setup._entry_ptr = internal global ptr @lp_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"parport\00", [24 x i8] zeroinitializer }, align 32
@lp_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016lp: too many ports, %s ignored.\0A\00", [61 x i8] zeroinitializer }, align 32
@lp_setup._entry_ptr.6 = internal global ptr @lp_setup._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@lp_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lp_setup._entry_ptr.10 = internal global ptr @lp_setup._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@lp_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013lp: bad port specifier `%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lp_init_module\00", [17 x i8] zeroinitializer }, align 32
@lp_init_module._entry_ptr = internal global ptr @lp_init_module._entry, section ".printk_index", align 4
@lp_table = internal global { [8 x %struct.lp_struct], [480 x i8] } zeroinitializer, align 32
@lp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&lp_table[i].waitq\00", [45 x i8] zeroinitializer }, align 32
@lp_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&lp_table[i].dataq\00", [45 x i8] zeroinitializer }, align 32
@lp_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&lp_table[i].port_mutex\00", [40 x i8] zeroinitializer }, align 32
@port_num = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lp\00", [29 x i8] zeroinitializer }, align 32
@lp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @lp_read, ptr @lp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp_ioctl, ptr null, ptr null, i32 0, ptr @lp_open, ptr null, ptr @lp_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013lp: unable to get major %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lp_init\00", [24 x i8] zeroinitializer }, align 32
@lp_init._entry_ptr = internal global ptr @lp_init._entry, section ".printk_index", align 4
@lp_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"printer\00", [24 x i8] zeroinitializer }, align 32
@lp_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lp_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.19, ptr null, ptr @lp_detach, ptr @lp_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@lp_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013lp: unable to register with parport\0A\00", [57 x i8] zeroinitializer }, align 32
@lp_init._entry_ptr.26 = internal global ptr @lp_init._entry.24, section ".printk_index", align 4
@lp_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lp_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lp: driver loaded but no devices found\0A\00", [54 x i8] zeroinitializer }, align 32
@lp_init._entry_ptr.29 = internal global ptr @lp_init._entry.27, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@lp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016lp%d releasing parport\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lp_write\00", [23 x i8] zeroinitializer }, align 32
@lp_write._entry_ptr = internal global ptr @lp_write._entry, section ".printk_index", align 4
@lp_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016lp%d out of paper\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp_check_status\00", [16 x i8] zeroinitializer }, align 32
@lp_check_status._entry_ptr = internal global ptr @lp_check_status._entry, section ".printk_index", align 4
@lp_check_status._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016lp%d off-line\0A\00", [47 x i8] zeroinitializer }, align 32
@lp_check_status._entry_ptr.39 = internal global ptr @lp_check_status._entry.37, section ".printk_index", align 4
@lp_check_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016lp%d on fire\0A\00", [16 x i8] zeroinitializer }, align 32
@lp_check_status._entry_ptr.42 = internal global ptr @lp_check_status._entry.40, section ".printk_index", align 4
@lp_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lp_mutex, i64 52), ptr getelementptr (i8, ptr @lp_mutex, i64 52) }, ptr @lp_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lp_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lp_mutex\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lp_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.45, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lp_open\00", [24 x i8] zeroinitializer }, align 32
@lp_open._entry_ptr = internal global ptr @lp_open._entry, section ".printk_index", align 4
@lp_open._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.45, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lp_open._entry_ptr.47 = internal global ptr @lp_open._entry.46, section ".printk_index", align 4
@lp_open._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013lp%d printer error\0A\00", [42 x i8] zeroinitializer }, align 32
@lp_open._entry_ptr.50 = internal global ptr @lp_open._entry.48, section ".printk_index", align 4
@lp_open._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016lp%d: ECP mode\0A\00", [46 x i8] zeroinitializer }, align 32
@lp_open._entry_ptr.53 = internal global ptr @lp_open._entry.51, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@console_registered = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lpcons = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"lp\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lp_console_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 1, i16 0, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0D\0A\00", [29 x i8] zeroinitializer }, align 32
@lp_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016lp: ignoring parallel port (max. %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lp_attach\00", [22 x i8] zeroinitializer }, align 32
@lp_attach._entry_ptr = internal global ptr @lp_attach._entry, section ".printk_index", align 4
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lp%d\00", [27 x i8] zeroinitializer }, align 32
@lp_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016lp%d: using %s (%s).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp_register\00", [20 x i8] zeroinitializer }, align 32
@lp_register._entry_ptr = internal global ptr @lp_register._entry, section ".printk_index", align 4
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"polling\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"interrupt-driven\00", [47 x i8] zeroinitializer }, align 32
@lp_register._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016lp%d: console ready\0A\00", [41 x i8] zeroinitializer }, align 32
@lp_register._entry_ptr.64 = internal global ptr @lp_register._entry.62, section ".printk_index", align 4
@lp_register._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013lp%d: cannot run console on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@lp_register._entry_ptr.67 = internal global ptr @lp_register._entry.65, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1551, i64 1074791951]
@__sancov_gen_cov_switch_values.68 = internal global [13 x i64] [i64 11, i64 32, i64 1537, i64 1538, i64 1540, i64 1541, i64 1542, i64 1544, i64 1545, i64 1546, i64 1547, i64 1548, i64 1550]
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 878, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"parport\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 877, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"parport_ptr\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 886, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"parport_nr\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 876, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 894, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 897, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 902, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 904, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 906, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 910, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 912, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1098, i32 7 }
@___asan_gen_.123 = private unnamed_addr constant [9 x i8] c"lp_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 144, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1040, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1041, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1042, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [9 x i8] c"port_num\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 145, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1047, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant [8 x i8] c"lp_fops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 784, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1048, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1052, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"lp_class\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 148, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"lp_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1013, i32 30 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1059, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [9 x i8] c"lp_count\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 147, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1065, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 230, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 214, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 174, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 402, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 250, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 256, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 262, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [9 x i8] c"lp_mutex\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 143, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 525, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 530, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 535, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 552, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"console_registered\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 151, i32 24 }
@___asan_gen_.261 = private unnamed_addr constant [7 x i8] c"lpcons\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 866, i32 23 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 847, i32 23 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 968, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 936, i32 9 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 938, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 946, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [21 x i8] c"../drivers/char/lp.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 948, i32 4 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_parporttype225, ptr @__UNIQUE_ID_resettype226, ptr @__exitcall_lp_cleanup_module, ptr @__initcall__kmod_lp__227_1122_lp_init_module6, ptr @__param_parport, ptr @__param_reset, ptr @__setup_lp_setup, ptr @lp_attach._entry, ptr @lp_attach._entry_ptr, ptr @lp_check_status._entry, ptr @lp_check_status._entry.37, ptr @lp_check_status._entry.40, ptr @lp_check_status._entry_ptr, ptr @lp_check_status._entry_ptr.39, ptr @lp_check_status._entry_ptr.42, ptr @lp_init._entry, ptr @lp_init._entry.24, ptr @lp_init._entry.27, ptr @lp_init._entry_ptr, ptr @lp_init._entry_ptr.26, ptr @lp_init._entry_ptr.29, ptr @lp_init_module._entry, ptr @lp_init_module._entry_ptr, ptr @lp_open._entry, ptr @lp_open._entry.46, ptr @lp_open._entry.48, ptr @lp_open._entry.51, ptr @lp_open._entry_ptr, ptr @lp_open._entry_ptr.47, ptr @lp_open._entry_ptr.50, ptr @lp_open._entry_ptr.53, ptr @lp_register._entry, ptr @lp_register._entry.62, ptr @lp_register._entry.65, ptr @lp_register._entry_ptr, ptr @lp_register._entry_ptr.64, ptr @lp_register._entry_ptr.67, ptr @lp_setup._entry, ptr @lp_setup._entry.4, ptr @lp_setup._entry.9, ptr @lp_setup._entry_ptr, ptr @lp_setup._entry_ptr.10, ptr @lp_setup._entry_ptr.6, ptr @lp_write._entry, ptr @lp_write._entry_ptr, ptr @reset, ptr @parport, ptr @lp_setup.parport_ptr, ptr @parport_nr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @lp_table, ptr @lp_init.__key, ptr @.str.14, ptr @lp_init.__key.15, ptr @.str.16, ptr @lp_init.__key.17, ptr @.str.18, ptr @port_num, ptr @.str.19, ptr @lp_fops, ptr @.str.20, ptr @.str.21, ptr @lp_init.__key.22, ptr @.str.23, ptr @lp_class, ptr @lp_driver, ptr @.str.25, ptr @lp_count, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @lp_mutex, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.49, ptr @.str.52, ptr @console_registered, ptr @lpcons, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_setup.parport_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_table to i32), i32 1920, i32 2400, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_num to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_check_status._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_check_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_open._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_open._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_open._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_registered to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpcons to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_register._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_register._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %x = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #9
  %1 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %x, align 4, !annotation !176
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %x) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %do.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  store i32 -2, ptr @parport_nr, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #12
  br label %cleanup

if.else3:                                         ; preds = %entry
  %4 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %str.addr, align 4
  %call4 = call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(8) @.str.3, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else17

if.then6:                                         ; preds = %if.else3
  %add.ptr = getelementptr i8, ptr %5, i32 7
  %call7 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 10) #9
  %6 = load i32, ptr @lp_setup.parport_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp8 = icmp slt i32 %6, 8
  br i1 %cmp8, label %if.then9, label %do.end13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @lp_setup.parport_ptr, align 4
  %arrayidx = getelementptr [8 x i32], ptr @parport_nr, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7, ptr %arrayidx, align 4
  br label %cleanup

do.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %str.addr, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %9) #12
  br label %cleanup

if.else17:                                        ; preds = %if.else3
  %call18 = call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(5) @.str.7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  store i32 -3, ptr @parport_nr, align 4
  br label %cleanup

if.else21:                                        ; preds = %if.else17
  %call22 = call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(5) @.str.8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else36

if.then24:                                        ; preds = %if.else21
  %10 = load i32, ptr @lp_setup.parport_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp25 = icmp slt i32 %10, 8
  br i1 %cmp25, label %if.then26, label %do.end32

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %inc27 = add nsw i32 %10, 1
  store i32 %inc27, ptr @lp_setup.parport_ptr, align 4
  %arrayidx28 = getelementptr [8 x i32], ptr @parport_nr, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx28, align 4
  br label %cleanup

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %5) #12
  br label %cleanup

if.else36:                                        ; preds = %if.else21
  %call37 = call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(6) @.str.11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.else36.cleanup_crit_edge

if.else36.cleanup_crit_edge:                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @reset, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.else36.cleanup_crit_edge, %do.end32, %if.then26, %if.then20, %do.end13, %if.then9, %do.end, %if.then1
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then9 ], [ 1, %do.end13 ], [ 1, %do.end32 ], [ 1, %if.then26 ], [ 1, %if.then39 ], [ 1, %if.else36.cleanup_crit_edge ], [ 1, %if.then20 ], [ 1, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #9
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_init_module() #0 section ".init.text" align 64 {
entry:
  %ep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @parport, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(5) @.str.7, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.land.rhs_crit_edge

if.then.land.rhs_crit_edge:                       ; preds = %if.then
  br label %land.rhs

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  store i32 -3, ptr @parport_nr, align 4
  br label %if.end25

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.then.land.rhs_crit_edge
  %n.040 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %if.then.land.rhs_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @parport, i32 0, i32 %n.040
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %land.rhs.if.end25_crit_edge, label %for.body

land.rhs.if.end25_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

for.body:                                         ; preds = %land.rhs
  %call5 = call i32 @strncmp(ptr noundef nonnull %2, ptr noundef nonnull dereferenceable(5) @.str.8, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else9

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8 = getelementptr [8 x i32], ptr @parport_nr, i32 0, i32 %n.040
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %arrayidx8, align 4
  br label %for.inc

if.else9:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #9
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !176
  %call11 = call i32 @simple_strtoul(ptr noundef nonnull %2, ptr noundef nonnull %ep, i32 noundef 0) #9
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp13.not = icmp eq ptr %6, %8
  br i1 %cmp13.not, label %cleanup21, label %if.then14

if.then14:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr [8 x i32], ptr @parport_nr, i32 0, i32 %n.040
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call11, ptr %arrayidx15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.then7
  %inc = add nuw nsw i32 %n.040, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.if.end25_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

cleanup21:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #9
  br label %return

if.end25:                                         ; preds = %for.inc.if.end25_crit_edge, %land.rhs.if.end25_crit_edge, %if.then2, %entry.if.end25_crit_edge
  %call26 = call fastcc i32 @lp_init() #14
  br label %return

return:                                           ; preds = %if.end25, %cleanup21
  %retval.4 = phi i32 [ -19, %cleanup21 ], [ %call26, %if.end25 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp_cleanup_module() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @parport_unregister_driver(ptr noundef nonnull @lp_driver) #9
  %call = tail call i32 @unregister_console(ptr noundef nonnull @lpcons) #9
  tail call void @__unregister_chrdev(i32 noundef 6, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.19) #9
  %0 = load ptr, ptr @lp_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @parport_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx, align 4
  %flags = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %chars = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 2
  %3 = ptrtoint ptr %chars to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1000, ptr %chars, align 4
  %time = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 3
  %4 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %time, align 4
  %wait = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 4
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %wait, align 4
  %lp_buffer = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 5
  %6 = ptrtoint ptr %lp_buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %lp_buffer, align 4
  %last_error = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 7
  %7 = ptrtoint ptr %last_error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_error, align 4
  %waitq = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.14, ptr noundef nonnull @lp_init.__key) #9
  %dataq = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %dataq, ptr noundef nonnull @.str.16, ptr noundef nonnull @lp_init.__key.15) #9
  %port_mutex = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 8
  tail call void @__mutex_init(ptr noundef %port_mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @lp_init.__key.17) #9
  %timeout = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %i.062, i32 10
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %timeout, align 4
  %arrayidx18 = getelementptr [8 x i32], ptr @port_num, i32 0, i32 %i.062
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %arrayidx18, align 4
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i = tail call i32 @__register_chrdev(i32 noundef 6, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.19, ptr noundef nonnull @lp_fops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef 6) #12
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %call26 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @lp_init.__key.22) #9
  store ptr %call26, ptr @lp_class, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call26 to i32
  br label %out_reg

if.end30:                                         ; preds = %if.end24
  %call31 = tail call i32 @__parport_register_driver(ptr noundef nonnull @lp_driver, ptr noundef null, ptr noundef nonnull @.str.19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  %11 = load ptr, ptr @lp_class, align 4
  tail call void @class_destroy(ptr noundef %11) #9
  br label %out_reg

if.end39:                                         ; preds = %if.end30
  %12 = load i32, ptr @lp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool40.not = icmp eq i32 %12, 0
  br i1 %tobool40.not, label %do.end44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %cleanup

out_reg:                                          ; preds = %do.end36, %if.then28
  %err.0 = phi i32 [ %10, %if.then28 ], [ -5, %do.end36 ]
  tail call void @__unregister_chrdev(i32 noundef 6, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.19) #9
  br label %cleanup

cleanup:                                          ; preds = %out_reg, %do.end44, %if.end39.cleanup_crit_edge, %do.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end22 ], [ %err.0, %out_reg ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end44 ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %13 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_rdev.i, align 8
  %and.i113 = and i32 %16, 1048575
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i113
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %port6 = getelementptr inbounds %struct.pardevice, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port6, align 4
  %lp_buffer = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i113, i32 5
  %21 = ptrtoint ptr %lp_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lp_buffer, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %23 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_flags, align 4
  %and = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags10 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i113, i32 1
  %25 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags10, align 4
  %and11 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12 = icmp ne i32 %and11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %27 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool12, %lor.rhs ]
  %28 = call i32 @llvm.umin.i32(i32 %count, i32 4096)
  %port_mutex = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i113, i32 8
  %call14 = call i32 @mutex_lock_interruptible_nested(ptr noundef %port_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %lor.end
  %bits.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i113, i32 13
  %call.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i114, label %if.end17.lp_claim_parport_or_block.exit_crit_edge

if.end17.lp_claim_parport_or_block.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_claim_parport_or_block.exit

if.then.i114:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %call1.i = call i32 @parport_claim_or_block(ptr noundef %30) #9
  br label %lp_claim_parport_or_block.exit

lp_claim_parport_or_block.exit:                   ; preds = %if.then.i114, %if.end17.lp_claim_parport_or_block.exit_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  br i1 %27, label %lp_claim_parport_or_block.exit.cond.end_crit_edge, label %cond.false

lp_claim_parport_or_block.exit.cond.end_crit_edge: ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %timeout = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i113, i32 10
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeout, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lp_claim_parport_or_block.exit.cond.end_crit_edge
  %cond = phi i32 [ %34, %cond.false ], [ 1, %lp_claim_parport_or_block.exit.cond.end_crit_edge ]
  %call23 = call i32 @parport_set_timeout(ptr noundef %32, i32 noundef %cond) #9
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %port26 = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port26, align 4
  %call27 = call i32 @parport_negotiate(ptr noundef %38, i32 noundef 256) #9
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %port30 = getelementptr inbounds %struct.pardevice, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %port30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port30, align 4
  %call31 = call i32 @parport_negotiate(ptr noundef %42, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.cond.preheader, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.preheader:                             ; preds = %cond.end
  %waitq = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i113, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end69.while.body_crit_edge, %while.cond.preheader
  %call36 = call i32 @parport_read(ptr noundef %20, ptr noundef %22, i32 noundef %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp sgt i32 %call36, 0
  %brmerge = select i1 %cmp37, i1 true, i1 %27
  br i1 %brmerge, label %while.end.split.loop.exit124, label %if.end42

if.end42:                                         ; preds = %while.body
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %port45 = getelementptr inbounds %struct.pardevice, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %port45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port45, align 4
  %irq = getelementptr inbounds %struct.parport, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp46 = icmp eq i32 %48, -1
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end42
  %call51 = call i32 @parport_negotiate(ptr noundef %46, i32 noundef 256) #9
  call fastcc void @lp_error(i32 noundef %and.i113)
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %port54 = getelementptr inbounds %struct.pardevice, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %port54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port54, align 4
  %call55 = call i32 @parport_negotiate(ptr noundef %52, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then47.if.end63_crit_edge, label %if.then47.out_crit_edge

if.then47.out_crit_edge:                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then47.if.end63_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void @prepare_to_wait(ptr noundef %waitq, ptr noundef nonnull %wait, i32 noundef 1) #9
  %call60 = call i32 @schedule_timeout(i32 noundef 1000) #9
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %wait) #9
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then47.if.end63_crit_edge
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stack.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %59 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i115 = icmp eq i32 %59, 0
  br i1 %tobool.not.i115, label %signal_pending.exit, label %if.end63.while.end_crit_edge, !prof !177

if.end63.while.end_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

signal_pending.exit:                              ; preds = %if.end63
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %56, align 4
  %and1.i.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool67.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool67.not, label %if.end69, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end69:                                         ; preds = %signal_pending.exit
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 480, i32 noundef 0) #9
  %call.i116 = call i32 @__cond_resched() #9
  %cmp35 = icmp eq i32 %call36, 0
  br i1 %cmp35, label %if.end69.while.body_crit_edge, label %if.end69.while.end_crit_edge

if.end69.while.end_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.split.loop.exit124:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call36.mux.le = select i1 %cmp37, i32 %call36, i32 -11
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit124, %if.end69.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end63.while.end_crit_edge
  %retval7.1 = phi i32 [ %call36.mux.le, %while.end.split.loop.exit124 ], [ -512, %if.end63.while.end_crit_edge ], [ -512, %signal_pending.exit.while.end_crit_edge ], [ %call36, %if.end69.while.end_crit_edge ]
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %port73 = getelementptr inbounds %struct.pardevice, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %port73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port73, align 4
  %call74 = call i32 @parport_negotiate(ptr noundef %65, i32 noundef 256) #9
  br label %out

out:                                              ; preds = %while.end, %if.then47.out_crit_edge, %cond.end.out_crit_edge
  %retval7.2 = phi i32 [ %retval7.1, %while.end ], [ -5, %cond.end.out_crit_edge ], [ -5, %if.then47.out_crit_edge ]
  %call.i118 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i119 = icmp eq i32 %call.i118, 0
  br i1 %tobool.not.i119, label %out.lp_release_parport.exit_crit_edge, label %if.then.i120

out.lp_release_parport.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_release_parport.exit

if.then.i120:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  call void @parport_release(ptr noundef %67) #9
  br label %lp_release_parport.exit

lp_release_parport.exit:                          ; preds = %if.then.i120, %out.lp_release_parport.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval7.2)
  %cmp76 = icmp sgt i32 %retval7.2, 0
  br i1 %cmp76, label %if.then.i.i.i, label %lp_release_parport.exit.if.end80_crit_edge

lp_release_parport.exit.if.end80_crit_edge:       ; preds = %lp_release_parport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then.i.i.i:                                    ; preds = %lp_release_parport.exit
  call void @__check_object_size(ptr noundef %22, i32 noundef %retval7.2, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end80_crit_edge, label %if.end.i.i

if.then.i.i.i.if.end80_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %68 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %retval7.2, i32 -1226833920) #15, !srcloc !178
  %asmresult.i.i = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.if.end80_crit_edge

if.end.i.i.if.end80_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %22, i32 noundef %retval7.2) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %22, i32 noundef %retval7.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %retval7.2, i32 -14
  br label %if.end80

if.end80:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end80_crit_edge, %if.then.i.i.i.if.end80_crit_edge, %lp_release_parport.exit.if.end80_crit_edge
  %retval7.3 = phi i32 [ %retval7.2, %lp_release_parport.exit.if.end80_crit_edge ], [ -14, %if.then.i.i.i.if.end80_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.if.end80_crit_edge ]
  call void @mutex_unlock(ptr noundef %port_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval7.3, %if.end80 ], [ -4, %lor.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %port2 = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port2, align 4
  %lp_buffer = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 5
  %8 = ptrtoint ptr %lp_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp_buffer, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and5 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6 = icmp ne i32 %and5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %14 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  %15 = tail call i32 @llvm.umin.i32(i32 %count, i32 4096)
  %port_mutex = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 8
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %port_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.i.i.i, label %lor.end.cleanup108_crit_edge

lor.end.cleanup108_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup108

if.then.i.i.i:                                    ; preds = %lor.end
  tail call void @__check_object_size(ptr noundef %9, i32 noundef %15, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %15, i32 -1226833920) #15, !srcloc !179
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !177

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef %15) #9
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !180
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %9, ptr noundef %buf, i32 noundef %15) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #9, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %15, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %15, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end15, label %if.then11.i.i, !prof !177

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %15, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out_unlock

if.end15:                                         ; preds = %if.end.i.i
  %bits.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 13
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i198, label %if.end15.lp_claim_parport_or_block.exit_crit_edge

if.end15.lp_claim_parport_or_block.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_claim_parport_or_block.exit

if.then.i198:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call i32 @parport_claim_or_block(ptr noundef %22) #9
  br label %lp_claim_parport_or_block.exit

lp_claim_parport_or_block.exit:                   ; preds = %if.then.i198, %if.end15.lp_claim_parport_or_block.exit_crit_edge
  %best_mode = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 11
  %23 = ptrtoint ptr %best_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %best_mode, align 4
  %call.i199 = tail call i32 @parport_negotiate(ptr noundef %7, i32 noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp.not.i = icmp eq i32 %call.i199, 0
  br i1 %cmp.not.i, label %lp_claim_parport_or_block.exit.lp_negotiate.exit_crit_edge, label %if.then.i201

lp_claim_parport_or_block.exit.lp_negotiate.exit_crit_edge: ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_negotiate.exit

if.then.i201:                                     ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i200 = tail call i32 @parport_negotiate(ptr noundef %7, i32 noundef 256) #9
  br label %lp_negotiate.exit

lp_negotiate.exit:                                ; preds = %if.then.i201, %lp_claim_parport_or_block.exit.lp_negotiate.exit_crit_edge
  %mode.addr.0.i = phi i32 [ 256, %if.then.i201 ], [ %24, %lp_claim_parport_or_block.exit.lp_negotiate.exit_crit_edge ]
  %current_mode = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 12
  %25 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mode.addr.0.i, ptr %current_mode, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  br i1 %14, label %lp_negotiate.exit.cond.end_crit_edge, label %cond.false

lp_negotiate.exit.cond.end_crit_edge:             ; preds = %lp_negotiate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %lp_negotiate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %timeout = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 10
  %28 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timeout, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lp_negotiate.exit.cond.end_crit_edge
  %cond = phi i32 [ %29, %cond.false ], [ 1, %lp_negotiate.exit.cond.end_crit_edge ]
  %call24 = tail call i32 @parport_set_timeout(ptr noundef %27, i32 noundef %cond) #9
  %call25 = tail call fastcc i32 @lp_wait_ready(i32 noundef %and.i, i32 noundef %lor.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %cond.end.do.body_crit_edge, label %cond.end.if.end89_crit_edge

cond.end.if.end89_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end.i.i192.do.body_crit_edge, %cond.end.do.body_crit_edge
  %count.addr.0 = phi i32 [ %count.addr.1, %if.end.i.i192.do.body_crit_edge ], [ %count, %cond.end.do.body_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf.addr.1, %if.end.i.i192.do.body_crit_edge ], [ %buf, %cond.end.do.body_crit_edge ]
  %retv.0 = phi i32 [ %retv.1, %if.end.i.i192.do.body_crit_edge ], [ 0, %cond.end.do.body_crit_edge ]
  %copy_size.0 = phi i32 [ %65, %if.end.i.i192.do.body_crit_edge ], [ %15, %cond.end.do.body_crit_edge ]
  %call28 = tail call i32 @parport_write(ptr noundef %7, ptr noundef %9, i32 noundef %copy_size.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %do.body.if.end32_crit_edge

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nsw i32 %copy_size.0, %call28
  %sub31 = sub i32 %count.addr.0, %call28
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 %call28
  %add = add i32 %call28, %retv.0
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.body.if.end32_crit_edge
  %count.addr.1 = phi i32 [ %sub31, %if.then30 ], [ %count.addr.0, %do.body.if.end32_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then30 ], [ %buf.addr.0, %do.body.if.end32_crit_edge ]
  %retv.1 = phi i32 [ %add, %if.then30 ], [ %retv.0, %do.body.if.end32_crit_edge ]
  %copy_size.1 = phi i32 [ %sub, %if.then30 ], [ %copy_size.0, %do.body.if.end32_crit_edge ]
  %30 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i202 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i202 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i203 = icmp eq i32 %38, 0
  br i1 %tobool.not.i203, label %signal_pending.exit, label %if.end32.if.then36_crit_edge, !prof !177

if.end32.if.then36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

signal_pending.exit:                              ; preds = %if.end32
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %35, align 4
  %and1.i.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool35.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool35.not, label %if.end40, label %signal_pending.exit.if.then36_crit_edge

signal_pending.exit.if.then36_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %signal_pending.exit.if.then36_crit_edge, %if.end32.if.then36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retv.1)
  %cmp37 = icmp eq i32 %retv.1, 0
  %spec.store.select115 = select i1 %cmp37, i32 -4, i32 %retv.1
  br label %if.end89

if.end40:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_size.1)
  %cmp41.not = icmp eq i32 %copy_size.1, 0
  br i1 %cmp41.not, label %if.else70, label %if.then42

if.then42:                                        ; preds = %if.end40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %port45 = getelementptr inbounds %struct.pardevice, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %port45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port45, align 4
  %call46 = tail call i32 @parport_negotiate(ptr noundef %44, i32 noundef 256) #9
  %45 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 256, ptr %current_mode, align 4
  %call49 = tail call fastcc i32 @lp_wait_ready(i32 noundef %and.i, i32 noundef %lor.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retv.1)
  %cmp52 = icmp eq i32 %retv.1, 0
  %spec.select = select i1 %cmp52, i32 %call49, i32 %retv.1
  br label %if.end89

if.else:                                          ; preds = %if.then42
  br i1 %14, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retv.1)
  %cmp57 = icmp eq i32 %retv.1, 0
  %spec.store.select116 = select i1 %cmp57, i32 -11, i32 %retv.1
  br label %if.end89

if.end61:                                         ; preds = %if.else
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %port.i = getelementptr inbounds %struct.pardevice, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port.i, align 4
  %waithead.i = getelementptr inbounds %struct.parport, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %waithead.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %waithead.i, align 4
  %cmp.i = icmp eq ptr %52, null
  br i1 %cmp.i, label %if.end61.parport_yield_blocking.exit_crit_edge, label %lor.lhs.false.i

if.end61.parport_yield_blocking.exit_crit_edge:   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %parport_yield_blocking.exit

lor.lhs.false.i:                                  ; preds = %if.end61
  %time.i = getelementptr inbounds %struct.pardevice, ptr %47, i32 0, i32 14
  %53 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %time.i, align 4
  %sub.i = sub i32 %48, %54
  %timeslice.i = getelementptr inbounds %struct.pardevice, ptr %47, i32 0, i32 15
  %55 = ptrtoint ptr %timeslice.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %timeslice.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %56)
  %cmp1.i = icmp ult i32 %sub.i, %56
  br i1 %cmp1.i, label %lor.lhs.false.i.parport_yield_blocking.exit_crit_edge, label %if.end.i205

lor.lhs.false.i.parport_yield_blocking.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parport_yield_blocking.exit

if.end.i205:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @parport_release(ptr noundef %47) #9
  %call.i204 = tail call i32 @parport_claim_or_block(ptr noundef %47) #9
  br label %parport_yield_blocking.exit

parport_yield_blocking.exit:                      ; preds = %if.end.i205, %lor.lhs.false.i.parport_yield_blocking.exit_crit_edge, %if.end61.parport_yield_blocking.exit_crit_edge
  %57 = ptrtoint ptr %best_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %best_mode, align 4
  %call.i206 = tail call i32 @parport_negotiate(ptr noundef %7, i32 noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %cmp.not.i207, label %parport_yield_blocking.exit.cleanup_crit_edge, label %if.then.i209

parport_yield_blocking.exit.cleanup_crit_edge:    ; preds = %parport_yield_blocking.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i209:                                     ; preds = %parport_yield_blocking.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i208 = tail call i32 @parport_negotiate(ptr noundef %7, i32 noundef 256) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i209, %parport_yield_blocking.exit.cleanup_crit_edge
  %mode.addr.0.i210 = phi i32 [ 256, %if.then.i209 ], [ %58, %parport_yield_blocking.exit.cleanup_crit_edge ]
  %59 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mode.addr.0.i210, ptr %current_mode, align 4
  br label %if.end74

if.else70:                                        ; preds = %if.end40
  %60 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 16384
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not = icmp eq i32 %64, 0
  br i1 %tobool.i.not, label %if.else70.if.end74_crit_edge, label %if.then72

if.else70.if.end74_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then72:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @schedule() #9
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.else70.if.end74_crit_edge, %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool75.not = icmp eq i32 %count.addr.1, 0
  br i1 %tobool75.not, label %if.end74.if.end89_crit_edge, label %if.then76

if.end74.if.end89_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then76:                                        ; preds = %if.end74
  %65 = tail call i32 @llvm.umin.i32(i32 %count.addr.1, i32 4096)
  tail call void @__check_object_size(ptr noundef %9, i32 noundef %65, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i178 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i178, label %if.then76.if.then11.i.i195_crit_edge, label %land.lhs.true.i.i182

if.then76.if.then11.i.i195_crit_edge:             ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i195

land.lhs.true.i.i182:                             ; preds = %if.then76
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.1, i32 %65, i32 -1226833920) #15, !srcloc !179
  %asmresult.i.i180 = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i180)
  %cmp.i6.i181 = icmp eq i32 %asmresult.i.i180, 0
  br i1 %cmp.i6.i181, label %if.end.i.i192, label %land.lhs.true.i.i182.if.then11.i.i195_crit_edge, !prof !177

land.lhs.true.i.i182.if.then11.i.i195_crit_edge:  ; preds = %land.lhs.true.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i195

if.end.i.i192:                                    ; preds = %land.lhs.true.i.i182
  %call.i.i.i183 = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef %65) #9
  %67 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i.i.i184 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i184 to ptr
  %cpu_domain.i.i.i.i.i185 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i185) #6, !srcloc !180
  %and.i.i.i.i186 = and i32 %69, -13
  %or.i.i.i.i187 = or i32 %and.i.i.i.i186, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i187) #9, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %call1.i.i.i188 = tail call i32 @arm_copy_from_user(ptr noundef %9, ptr noundef %buf.addr.1, i32 noundef %65) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #9, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %tobool4.not.i.i191 = icmp eq i32 %call1.i.i.i188, 0
  br i1 %tobool4.not.i.i191, label %if.end.i.i192.do.body_crit_edge, label %if.end.i.i192.if.then11.i.i195_crit_edge, !prof !177

if.end.i.i192.if.then11.i.i195_crit_edge:         ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i195

if.end.i.i192.do.body_crit_edge:                  ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then11.i.i195:                                 ; preds = %if.end.i.i192.if.then11.i.i195_crit_edge, %land.lhs.true.i.i182.if.then11.i.i195_crit_edge, %if.then76.if.then11.i.i195_crit_edge
  %res.0.i.i190222 = phi i32 [ %call1.i.i.i188, %if.end.i.i192.if.then11.i.i195_crit_edge ], [ %65, %if.then76.if.then11.i.i195_crit_edge ], [ %65, %land.lhs.true.i.i182.if.then11.i.i195_crit_edge ]
  %sub.i.i193 = sub i32 %65, %res.0.i.i190222
  %add.ptr.i.i194 = getelementptr i8, ptr %9, i32 %sub.i.i193
  %70 = call ptr @memset(ptr %add.ptr.i.i194, i32 0, i32 %res.0.i.i190222)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retv.1)
  %cmp83 = icmp eq i32 %retv.1, 0
  %spec.store.select118 = select i1 %cmp83, i32 -14, i32 %retv.1
  br label %if.end89

if.end89:                                         ; preds = %if.then11.i.i195, %if.end74.if.end89_crit_edge, %if.then56, %if.then51, %if.then36, %cond.end.if.end89_crit_edge
  %retv.5 = phi i32 [ %spec.store.select115, %if.then36 ], [ %spec.store.select118, %if.then11.i.i195 ], [ %call25, %cond.end.if.end89_crit_edge ], [ %spec.store.select116, %if.then56 ], [ %spec.select, %if.then51 ], [ %retv.1, %if.end74.if.end89_crit_edge ]
  %call91 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.out_unlock_crit_edge, label %do.end96

if.end89.out_unlock_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %and.i) #12
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx, align 4
  %port100 = getelementptr inbounds %struct.pardevice, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %port100 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port100, align 4
  %call101 = tail call i32 @parport_negotiate(ptr noundef %74, i32 noundef 256) #9
  %75 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 256, ptr %current_mode, align 4
  tail call fastcc void @lp_release_parport(ptr noundef %arrayidx)
  br label %out_unlock

out_unlock:                                       ; preds = %do.end96, %if.end89.out_unlock_crit_edge, %if.then11.i.i
  %retv.6 = phi i32 [ %retv.5, %do.end96 ], [ %retv.5, %if.end89.out_unlock_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %port_mutex) #9
  br label %cleanup108

cleanup108:                                       ; preds = %out_unlock, %lor.end.cleanup108_crit_edge
  %retval.0 = phi i32 [ %retv.6, %out_unlock ], [ -4, %lor.end.cleanup108_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  %status.i = alloca i32, align 4
  %karg.i12 = alloca [2 x i64], align 8
  %karg.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %3, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @lp_mutex, i32 noundef 0) #9
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 1551, label %sw.bb
    i32 1074791951, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %5 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %karg.i) #9
  %6 = ptrtoint ptr %karg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %karg.i, align 4, !annotation !176
  %7 = getelementptr inbounds [2 x i32], ptr %karg.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !176
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 8, i32 -1226833920) #15, !srcloc !179
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !177

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i, i32 noundef 8) #9
  %10 = call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !180
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i, ptr noundef %5, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !177

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i5.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %sw.bb.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i5.i
  %add.ptr.i.i.i = getelementptr i8, ptr %karg.i, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i5.i)
  br label %lp_set_timeout32.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %14 = ptrtoint ptr %karg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %karg.i, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 4
  %18 = or i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i = icmp sgt i32 %18, -1
  br i1 %.not.i, label %if.end.i.i, label %if.end.i.lp_set_timeout32.exit_crit_edge

if.end.i.lp_set_timeout32.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_set_timeout32.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10737416, i32 %15)
  %cmp5.i.i = icmp ugt i32 %15, 10737416
  br i1 %cmp5.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.end9.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %19 = call i32 @llvm.smin.i32(i32 %17, i32 999999) #9
  %sub.i.i = add nuw nsw i32 %19, 9999
  %div24.i.i = udiv i32 %sub.i.i, 10000
  %20 = mul nuw nsw i32 %15, 100
  %conv8.i.i = add nuw nsw i32 %div24.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i.i)
  %cmp10.i.i = icmp eq i32 %conv8.i.i, 0
  br i1 %cmp10.i.i, label %if.end9.i.i.lp_set_timeout32.exit_crit_edge, label %if.end9.i.i.if.end13.i.i_crit_edge

if.end9.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i

if.end9.i.i.lp_set_timeout32.exit_crit_edge:      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_set_timeout32.exit

if.end13.i.i:                                     ; preds = %if.end9.i.i.if.end13.i.i_crit_edge, %if.end.i.i.if.end13.i.i_crit_edge
  %to_jiffies.023.i.i = phi i32 [ %conv8.i.i, %if.end9.i.i.if.end13.i.i_crit_edge ], [ 1073741822, %if.end.i.i.if.end13.i.i_crit_edge ]
  %timeout.i.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 10
  %21 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %to_jiffies.023.i.i, ptr %timeout.i.i, align 4
  br label %lp_set_timeout32.exit

lp_set_timeout32.exit:                            ; preds = %if.end13.i.i, %if.end9.i.i.lp_set_timeout32.exit_crit_edge, %if.end.i.lp_set_timeout32.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ 0, %if.end13.i.i ], [ -22, %if.end.i.lp_set_timeout32.exit_crit_edge ], [ -22, %if.end9.i.i.lp_set_timeout32.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %karg.i) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %22 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %karg.i12) #9
  %23 = getelementptr inbounds [2 x i64], ptr %karg.i12, i32 0, i32 1
  %24 = call ptr @memset(ptr %karg.i12, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i.i13 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i13, label %sw.bb3.if.then11.i.i.i28_crit_edge, label %land.lhs.true.i.i.i16

sw.bb3.if.then11.i.i.i28_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i28

land.lhs.true.i.i.i16:                            ; preds = %sw.bb3
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 16, i32 -1226833920) #15, !srcloc !179
  %asmresult.i.i.i14 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i14)
  %cmp.i6.i.i15 = icmp eq i32 %asmresult.i.i.i14, 0
  br i1 %cmp.i6.i.i15, label %if.end.i.i.i24, label %land.lhs.true.i.i.i16.if.then11.i.i.i28_crit_edge, !prof !177

land.lhs.true.i.i.i16.if.then11.i.i.i28_crit_edge: ; preds = %land.lhs.true.i.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i28

if.end.i.i.i24:                                   ; preds = %land.lhs.true.i.i.i16
  %call.i.i.i.i17 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i12, i32 noundef 16) #9
  %26 = call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i.i.i.i.i.i.i18 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i18 to ptr
  %cpu_domain.i.i.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i19) #6, !srcloc !180
  %and.i.i.i.i.i20 = and i32 %28, -13
  %or.i.i.i.i.i21 = or i32 %and.i.i.i.i.i20, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i21) #9, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %call1.i.i.i.i22 = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i12, ptr noundef %22, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i22)
  %tobool4.not.i.i.i23 = icmp eq i32 %call1.i.i.i.i22, 0
  br i1 %tobool4.not.i.i.i23, label %if.end.i29, label %if.end.i.i.i24.if.then11.i.i.i28_crit_edge, !prof !177

if.end.i.i.i24.if.then11.i.i.i28_crit_edge:       ; preds = %if.end.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i28

if.then11.i.i.i28:                                ; preds = %if.end.i.i.i24.if.then11.i.i.i28_crit_edge, %land.lhs.true.i.i.i16.if.then11.i.i.i28_crit_edge, %sw.bb3.if.then11.i.i.i28_crit_edge
  %res.0.i.i5.i25 = phi i32 [ %call1.i.i.i.i22, %if.end.i.i.i24.if.then11.i.i.i28_crit_edge ], [ 16, %sw.bb3.if.then11.i.i.i28_crit_edge ], [ 16, %land.lhs.true.i.i.i16.if.then11.i.i.i28_crit_edge ]
  %sub.i.i.i26 = sub i32 16, %res.0.i.i5.i25
  %add.ptr.i.i.i27 = getelementptr i8, ptr %karg.i12, i32 %sub.i.i.i26
  %29 = call ptr @memset(ptr %add.ptr.i.i.i27, i32 0, i32 %res.0.i.i5.i25)
  br label %lp_set_timeout64.exit

if.end.i29:                                       ; preds = %if.end.i.i.i24
  %30 = ptrtoint ptr %karg.i12 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %karg.i12, align 8
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %23, align 8
  %conv.i = trunc i64 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp.i.i = icmp slt i64 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp1.i.i = icmp slt i32 %conv.i, 0
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.end.i29.lp_set_timeout64.exit_crit_edge, label %if.end.i.i31

if.end.i29.lp_set_timeout64.exit_crit_edge:       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_set_timeout64.exit

if.end.i.i31:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_const_cmp8(i64 10737416, i64 %31)
  %cmp5.i.i30 = icmp ugt i64 %31, 10737416
  br i1 %cmp5.i.i30, label %if.end.i.i31.if.end13.i.i39_crit_edge, label %if.end9.i.i36

if.end.i.i31.if.end13.i.i39_crit_edge:            ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i39

if.end9.i.i36:                                    ; preds = %if.end.i.i31
  %34 = call i32 @llvm.smin.i32(i32 %conv.i, i32 999999) #9
  %sub.i.i32 = add nuw nsw i32 %34, 9999
  %div24.i.i33 = udiv i32 %sub.i.i32, 10000
  %35 = trunc i64 %31 to i32
  %36 = mul nuw nsw i32 %35, 100
  %conv8.i.i34 = add nuw nsw i32 %div24.i.i33, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i.i34)
  %cmp10.i.i35 = icmp eq i32 %conv8.i.i34, 0
  br i1 %cmp10.i.i35, label %if.end9.i.i36.lp_set_timeout64.exit_crit_edge, label %if.end9.i.i36.if.end13.i.i39_crit_edge

if.end9.i.i36.if.end13.i.i39_crit_edge:           ; preds = %if.end9.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i39

if.end9.i.i36.lp_set_timeout64.exit_crit_edge:    ; preds = %if.end9.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_set_timeout64.exit

if.end13.i.i39:                                   ; preds = %if.end9.i.i36.if.end13.i.i39_crit_edge, %if.end.i.i31.if.end13.i.i39_crit_edge
  %to_jiffies.023.i.i37 = phi i32 [ %conv8.i.i34, %if.end9.i.i36.if.end13.i.i39_crit_edge ], [ 1073741822, %if.end.i.i31.if.end13.i.i39_crit_edge ]
  %timeout.i.i38 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 10
  %37 = ptrtoint ptr %timeout.i.i38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %to_jiffies.023.i.i37, ptr %timeout.i.i38, align 4
  br label %lp_set_timeout64.exit

lp_set_timeout64.exit:                            ; preds = %if.end13.i.i39, %if.end9.i.i36.lp_set_timeout64.exit_crit_edge, %if.end.i29.lp_set_timeout64.exit_crit_edge, %if.then11.i.i.i28
  %retval.0.i40 = phi i32 [ 0, %if.end13.i.i39 ], [ -22, %if.end.i29.lp_set_timeout64.exit_crit_edge ], [ -22, %if.end9.i.i36.lp_set_timeout64.exit_crit_edge ], [ -14, %if.then11.i.i.i28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %karg.i12) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %38 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 7
  br i1 %cmp.i, label %sw.default.lp_do_ioctl.exit_crit_edge, label %if.end.i42

sw.default.lp_do_ioctl.exit_crit_edge:            ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end.i42:                                       ; preds = %sw.default
  %arrayidx.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i
  %flags.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 1
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %and.i41 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %cmp2.i = icmp eq i32 %and.i41, 0
  br i1 %cmp2.i, label %if.end.i42.lp_do_ioctl.exit_crit_edge, label %if.end4.i

if.end.i42.lp_do_ioctl.exit_crit_edge:            ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end4.i:                                        ; preds = %if.end.i42
  %41 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %cmd, label %if.end4.i.sw.epilog.i_crit_edge [
    i32 1538, label %sw.bb.i
    i32 1537, label %sw.bb9.i
    i32 1540, label %sw.bb11.i
    i32 1546, label %sw.bb19.i
    i32 1545, label %sw.bb30.i
    i32 1544, label %sw.bb41.i
    i32 1541, label %if.end4.i.lp_do_ioctl.exit_crit_edge
    i32 1542, label %sw.bb44.i
    i32 1547, label %sw.bb49.i
    i32 1548, label %sw.bb70.i
    i32 1550, label %sw.bb72.i
  ]

if.end4.i.lp_do_ioctl.exit_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end4.i.sw.epilog.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %arg)
  %cmp5.i = icmp ugt i32 %arg, 42949672
  br i1 %cmp5.i, label %sw.bb.i.lp_do_ioctl.exit_crit_edge, label %if.end7.i

sw.bb.i.lp_do_ioctl.exit_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end7.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %time.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 3
  %42 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %arg, ptr %time.i, align 4
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %chars.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 2
  %43 = ptrtoint ptr %chars.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %arg, ptr %chars.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not.i = icmp eq i32 %arg, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %40, 64
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i, ptr %flags.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  %and17.i = and i32 %40, -65
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and17.i, ptr %flags.i, align 4
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool20.not.i = icmp eq i32 %arg, 0
  br i1 %tobool20.not.i, label %if.else25.i, label %if.then21.i

if.then21.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %or24.i = or i32 %40, 256
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or24.i, ptr %flags.i, align 4
  br label %sw.epilog.i

if.else25.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %and28.i = and i32 %40, -257
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and28.i, ptr %flags.i, align 4
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool31.not.i = icmp eq i32 %arg, 0
  br i1 %tobool31.not.i, label %if.else36.i, label %if.then32.i

if.then32.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  %or35.i = or i32 %40, 128
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or35.i, ptr %flags.i, align 4
  br label %sw.epilog.i

if.else36.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  %and39.i = and i32 %40, -129
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and39.i, ptr %flags.i, align 4
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %wait.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 4
  %50 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %arg, ptr %wait.i, align 4
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %if.end4.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port.i, align 4
  %irq.i = getelementptr inbounds %struct.parport, ptr %54, i32 0, i32 5
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i.i43 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i43, label %sw.bb44.i.lp_do_ioctl.exit_crit_edge, label %if.end.i.i.i46

sw.bb44.i.lp_do_ioctl.exit_crit_edge:             ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end.i.i.i46:                                   ; preds = %sw.bb44.i
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 4, i32 -1226833920) #15, !srcloc !178
  %asmresult.i.i.i44 = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i44)
  %cmp.i6.i.i45 = icmp eq i32 %asmresult.i.i.i44, 0
  br i1 %cmp.i6.i.i45, label %copy_to_user.exit.i, label %if.end.i.i.i46.lp_do_ioctl.exit_crit_edge

if.end.i.i.i46.lp_do_ioctl.exit_crit_edge:        ; preds = %if.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i46
  %call.i.i.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq.i, i32 noundef 4) #9
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef %irq.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool46.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool46.not.i, label %copy_to_user.exit.i.sw.epilog.i_crit_edge, label %copy_to_user.exit.i.lp_do_ioctl.exit_crit_edge

copy_to_user.exit.i.lp_do_ioctl.exit_crit_edge:   ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

copy_to_user.exit.i.sw.epilog.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %if.end4.i
  %port_mutex.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 8
  %call51.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %port_mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %sw.bb49.i.lp_do_ioctl.exit_crit_edge

sw.bb49.i.lp_do_ioctl.exit_crit_edge:             ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end54.i:                                       ; preds = %sw.bb49.i
  %bits.i52 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 13
  %call.i53 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.then.i55, label %if.end54.i.lp_claim_parport_or_block.exit_crit_edge

if.end54.i.lp_claim_parport_or_block.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_claim_parport_or_block.exit

if.then.i55:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call i32 @parport_claim_or_block(ptr noundef %57) #9
  br label %lp_claim_parport_or_block.exit

lp_claim_parport_or_block.exit:                   ; preds = %if.then.i55, %if.end54.i.lp_claim_parport_or_block.exit_crit_edge
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 4
  %port58.i = getelementptr inbounds %struct.pardevice, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %port58.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port58.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %61, i32 0, i32 24
  %62 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_status.i, align 4
  %call62.i = tail call zeroext i8 %65(ptr noundef %61) #9
  %conv.i48 = zext i8 %call62.i to i32
  %66 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.i48, ptr %status.i, align 4
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits.i52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i50 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i50, label %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge, label %if.then.i

lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge: ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_release_parport.exit

if.then.i:                                        ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  tail call void @parport_release(ptr noundef %68) #9
  br label %lp_release_parport.exit

lp_release_parport.exit:                          ; preds = %if.then.i, %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %port_mutex.i) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i111.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i111.i, label %lp_release_parport.exit.lp_do_ioctl.exit_crit_edge, label %if.end.i.i114.i

lp_release_parport.exit.lp_do_ioctl.exit_crit_edge: ; preds = %lp_release_parport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end.i.i114.i:                                  ; preds = %lp_release_parport.exit
  %69 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 4, i32 -1226833920) #15, !srcloc !178
  %asmresult.i.i112.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i112.i)
  %cmp.i6.i113.i = icmp eq i32 %asmresult.i.i112.i, 0
  br i1 %cmp.i6.i113.i, label %copy_to_user.exit119.i, label %if.end.i.i114.i.lp_do_ioctl.exit_crit_edge

if.end.i.i114.i.lp_do_ioctl.exit_crit_edge:       ; preds = %if.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

copy_to_user.exit119.i:                           ; preds = %if.end.i.i114.i
  %call.i.i.i115.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %status.i, i32 noundef 4) #9
  %call.i12.i.i116.i = call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef nonnull %status.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i116.i)
  %tobool67.not.i = icmp eq i32 %call.i12.i.i116.i, 0
  br i1 %tobool67.not.i, label %copy_to_user.exit119.i.sw.epilog.i_crit_edge, label %copy_to_user.exit119.i.lp_do_ioctl.exit_crit_edge

copy_to_user.exit119.i.lp_do_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

copy_to_user.exit119.i.sw.epilog.i_crit_edge:     ; preds = %copy_to_user.exit119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb70.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @lp_reset(i32 noundef %and.i) #9
  br label %sw.epilog.i

sw.bb72.i:                                        ; preds = %if.end4.i
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %40, ptr %status.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i124.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i124.i, label %sw.bb72.i.lp_do_ioctl.exit_crit_edge, label %if.end.i.i127.i

sw.bb72.i.lp_do_ioctl.exit_crit_edge:             ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

if.end.i.i127.i:                                  ; preds = %sw.bb72.i
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 4, i32 -1226833920) #15, !srcloc !178
  %asmresult.i.i125.i = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i125.i)
  %cmp.i6.i126.i = icmp eq i32 %asmresult.i.i125.i, 0
  br i1 %cmp.i6.i126.i, label %copy_to_user.exit132.i, label %if.end.i.i127.i.lp_do_ioctl.exit_crit_edge

if.end.i.i127.i.lp_do_ioctl.exit_crit_edge:       ; preds = %if.end.i.i127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

copy_to_user.exit132.i:                           ; preds = %if.end.i.i127.i
  %call.i.i.i128.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %status.i, i32 noundef 4) #9
  %call.i12.i.i129.i = call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef nonnull %status.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i129.i)
  %tobool76.not.i = icmp eq i32 %call.i12.i.i129.i, 0
  br i1 %tobool76.not.i, label %copy_to_user.exit132.i.sw.epilog.i_crit_edge, label %copy_to_user.exit132.i.lp_do_ioctl.exit_crit_edge

copy_to_user.exit132.i.lp_do_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_do_ioctl.exit

copy_to_user.exit132.i.sw.epilog.i_crit_edge:     ; preds = %copy_to_user.exit132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %copy_to_user.exit132.i.sw.epilog.i_crit_edge, %sw.bb70.i, %copy_to_user.exit119.i.sw.epilog.i_crit_edge, %copy_to_user.exit.i.sw.epilog.i_crit_edge, %sw.bb41.i, %if.else36.i, %if.then32.i, %if.else25.i, %if.then21.i, %if.else.i, %if.then12.i, %sw.bb9.i, %if.end7.i, %if.end4.i.sw.epilog.i_crit_edge
  %retval1.0.i = phi i32 [ 0, %copy_to_user.exit132.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb70.i ], [ 0, %copy_to_user.exit119.i.sw.epilog.i_crit_edge ], [ 0, %copy_to_user.exit.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb41.i ], [ 0, %if.then32.i ], [ 0, %if.else36.i ], [ 0, %if.then21.i ], [ 0, %if.else25.i ], [ 0, %if.then12.i ], [ 0, %if.else.i ], [ 0, %sw.bb9.i ], [ 0, %if.end7.i ], [ -22, %if.end4.i.sw.epilog.i_crit_edge ]
  br label %lp_do_ioctl.exit

lp_do_ioctl.exit:                                 ; preds = %sw.epilog.i, %copy_to_user.exit132.i.lp_do_ioctl.exit_crit_edge, %if.end.i.i127.i.lp_do_ioctl.exit_crit_edge, %sw.bb72.i.lp_do_ioctl.exit_crit_edge, %copy_to_user.exit119.i.lp_do_ioctl.exit_crit_edge, %if.end.i.i114.i.lp_do_ioctl.exit_crit_edge, %lp_release_parport.exit.lp_do_ioctl.exit_crit_edge, %sw.bb49.i.lp_do_ioctl.exit_crit_edge, %copy_to_user.exit.i.lp_do_ioctl.exit_crit_edge, %if.end.i.i.i46.lp_do_ioctl.exit_crit_edge, %sw.bb44.i.lp_do_ioctl.exit_crit_edge, %sw.bb.i.lp_do_ioctl.exit_crit_edge, %if.end4.i.lp_do_ioctl.exit_crit_edge, %if.end.i42.lp_do_ioctl.exit_crit_edge, %sw.default.lp_do_ioctl.exit_crit_edge
  %retval.0.i49 = phi i32 [ %retval1.0.i, %sw.epilog.i ], [ -19, %sw.default.lp_do_ioctl.exit_crit_edge ], [ -19, %if.end.i42.lp_do_ioctl.exit_crit_edge ], [ -22, %sw.bb.i.lp_do_ioctl.exit_crit_edge ], [ -22, %if.end4.i.lp_do_ioctl.exit_crit_edge ], [ -14, %copy_to_user.exit.i.lp_do_ioctl.exit_crit_edge ], [ -4, %sw.bb49.i.lp_do_ioctl.exit_crit_edge ], [ -14, %copy_to_user.exit119.i.lp_do_ioctl.exit_crit_edge ], [ -14, %copy_to_user.exit132.i.lp_do_ioctl.exit_crit_edge ], [ -14, %sw.bb44.i.lp_do_ioctl.exit_crit_edge ], [ -14, %if.end.i.i.i46.lp_do_ioctl.exit_crit_edge ], [ -14, %lp_release_parport.exit.lp_do_ioctl.exit_crit_edge ], [ -14, %if.end.i.i114.i.lp_do_ioctl.exit_crit_edge ], [ -14, %sw.bb72.i.lp_do_ioctl.exit_crit_edge ], [ -14, %if.end.i.i127.i.lp_do_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %lp_do_ioctl.exit, %lp_set_timeout64.exit, %lp_set_timeout32.exit
  %ret.0 = phi i32 [ %retval.0.i49, %lp_do_ioctl.exit ], [ %retval.0.i40, %lp_set_timeout64.exit ], [ %retval.0.i, %lp_set_timeout32.exit ]
  call void @mutex_unlock(ptr noundef nonnull @lp_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @lp_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 7
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i
  %flags = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and11 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end56_crit_edge, label %land.lhs.true

if.end8.if.end56_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and13 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then15:                                        ; preds = %land.lhs.true
  %bits.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 13
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then15.lp_claim_parport_or_block.exit_crit_edge

if.then15.lp_claim_parport_or_block.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_claim_parport_or_block.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call i32 @parport_claim_or_block(ptr noundef %9) #9
  br label %lp_claim_parport_or_block.exit

lp_claim_parport_or_block.exit:                   ; preds = %if.then.i, %if.then15.lp_claim_parport_or_block.exit_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_status, align 4
  %call21 = tail call zeroext i8 %17(ptr noundef %13) #9
  %conv = zext i8 %call21 to i32
  %call.i127 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge, label %if.then.i129

lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge: ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_release_parport.exit

if.then.i129:                                     ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @parport_release(ptr noundef %19) #9
  br label %lp_release_parport.exit

lp_release_parport.exit:                          ; preds = %if.then.i129, %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge
  %and23 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else, label %do.end

do.end:                                           ; preds = %lp_release_parport.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %and.i) #12
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and29 = and i32 %21, -5
  store i32 %and29, ptr %flags, align 4
  br label %out

if.else:                                          ; preds = %lp_release_parport.exit
  %and30 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.end35, label %if.else41

do.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.i) #12
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and40 = and i32 %23, -5
  store i32 %and40, ptr %flags, align 4
  br label %out

if.else41:                                        ; preds = %if.else
  %and42 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.end47, label %if.else41.if.end56_crit_edge

if.else41.if.end56_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end47:                                         ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %and.i) #12
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and52 = and i32 %25, -5
  store i32 %and52, ptr %flags, align 4
  br label %out

if.end56:                                         ; preds = %if.else41.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.end8.if.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 4096) #16
  %lp_buffer = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 5
  %27 = ptrtoint ptr %lp_buffer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %lp_buffer, align 4
  %tobool61.not = icmp eq ptr %call7.i, null
  br i1 %tobool61.not, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and65 = and i32 %29, -5
  store i32 %and65, ptr %flags, align 4
  br label %out

if.end66:                                         ; preds = %if.end56
  %bits.i130 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 13
  %call.i131 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i130) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.then.i134, label %if.end66.lp_claim_parport_or_block.exit135_crit_edge

if.end66.lp_claim_parport_or_block.exit135_crit_edge: ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_claim_parport_or_block.exit135

if.then.i134:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call1.i133 = tail call i32 @parport_claim_or_block(ptr noundef %31) #9
  br label %lp_claim_parport_or_block.exit135

lp_claim_parport_or_block.exit135:                ; preds = %if.then.i134, %if.end66.lp_claim_parport_or_block.exit135_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %port70 = getelementptr inbounds %struct.pardevice, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %port70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port70, align 4
  %modes = getelementptr inbounds %struct.parport, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %modes, align 8
  %and71 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %lp_claim_parport_or_block.exit135.if.end89_crit_edge, label %land.lhs.true73

lp_claim_parport_or_block.exit135.if.end89_crit_edge: ; preds = %lp_claim_parport_or_block.exit135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.lhs.true73:                                  ; preds = %lp_claim_parport_or_block.exit135
  %call77 = tail call i32 @parport_negotiate(ptr noundef %35, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.end82, label %land.lhs.true73.if.end89_crit_edge

land.lhs.true73.if.end89_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end82:                                         ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %and.i) #12
  br label %if.end89

if.end89:                                         ; preds = %do.end82, %land.lhs.true73.if.end89_crit_edge, %lp_claim_parport_or_block.exit135.if.end89_crit_edge
  %.sink = phi i32 [ 16, %do.end82 ], [ 256, %land.lhs.true73.if.end89_crit_edge ], [ 256, %lp_claim_parport_or_block.exit135.if.end89_crit_edge ]
  %best_mode88 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 11
  %38 = ptrtoint ptr %best_mode88 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %best_mode88, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %port92 = getelementptr inbounds %struct.pardevice, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %port92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port92, align 4
  %call93 = tail call i32 @parport_negotiate(ptr noundef %42, i32 noundef 256) #9
  %call.i137 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits.i130) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.end89.lp_release_parport.exit140_crit_edge, label %if.then.i139

if.end89.lp_release_parport.exit140_crit_edge:    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_release_parport.exit140

if.then.i139:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  tail call void @parport_release(ptr noundef %44) #9
  br label %lp_release_parport.exit140

lp_release_parport.exit140:                       ; preds = %if.then.i139, %if.end89.lp_release_parport.exit140_crit_edge
  %current_mode = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 12
  %45 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 256, ptr %current_mode, align 4
  br label %out

out:                                              ; preds = %lp_release_parport.exit140, %if.then62, %do.end47, %do.end35, %do.end, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ 0, %lp_release_parport.exit140 ], [ -12, %if.then62 ], [ -6, %entry.out_crit_edge ], [ -6, %if.end.out_crit_edge ], [ -16, %if.end3.out_crit_edge ], [ -5, %do.end35 ], [ -5, %do.end47 ], [ -28, %do.end ]
  tail call void @mutex_unlock(ptr noundef nonnull @lp_mutex) #9
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i
  %bits.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 13
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.lp_claim_parport_or_block.exit_crit_edge

entry.lp_claim_parport_or_block.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_claim_parport_or_block.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call i32 @parport_claim_or_block(ptr noundef %3) #9
  br label %lp_claim_parport_or_block.exit

lp_claim_parport_or_block.exit:                   ; preds = %if.then.i, %entry.lp_claim_parport_or_block.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %call2 = tail call i32 @parport_negotiate(ptr noundef %7, i32 noundef 256) #9
  %current_mode = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 12
  %8 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 256, ptr %current_mode, align 4
  %call.i16 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge, label %if.then.i18

lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge: ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_release_parport.exit

if.then.i18:                                      ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @parport_release(ptr noundef %10) #9
  br label %lp_release_parport.exit

lp_release_parport.exit:                          ; preds = %if.then.i18, %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge
  %lp_buffer = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 5
  %11 = ptrtoint ptr %lp_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lp_buffer, align 4
  tail call void @kfree(ptr noundef %12) #9
  %13 = ptrtoint ptr %lp_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %lp_buffer, align 4
  %flags = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %and.i, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, -5
  store i32 %and, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_negotiate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lp_error(i32 noundef %minor) unnamed_addr #1 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor
  %flags4 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 1
  %13 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags4, align 4
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  %irq = getelementptr inbounds %struct.parport, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp = icmp eq i32 %20, -1
  br i1 %cmp, label %if.then7, label %if.else.critedge

if.then7:                                         ; preds = %if.end
  %bits.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 13
  %call.i = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then7.lp_release_parport.exit_crit_edge, label %if.then.i

if.then7.lp_release_parport.exit_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_release_parport.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  call void @parport_release(ptr noundef %22) #9
  br label %lp_release_parport.exit

lp_release_parport.exit:                          ; preds = %if.then.i, %if.then7.lp_release_parport.exit_crit_edge
  %waitq.c = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 6
  call void @prepare_to_wait(ptr noundef %waitq.c, ptr noundef nonnull %wait, i32 noundef 1) #9
  %call11.c = call i32 @schedule_timeout(i32 noundef 1000) #9
  call void @finish_wait(ptr noundef %waitq.c, ptr noundef nonnull %wait) #9
  %call.i32 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.then.i34, label %lp_release_parport.exit.cleanup_crit_edge

lp_release_parport.exit.cleanup_crit_edge:        ; preds = %lp_release_parport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i34:                                      ; preds = %lp_release_parport.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  br label %cleanup.sink.split

if.else.critedge:                                 ; preds = %if.end
  %waitq.c29 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 6
  call void @prepare_to_wait(ptr noundef %waitq.c29, ptr noundef nonnull %wait, i32 noundef 1) #9
  %call11.c30 = call i32 @schedule_timeout(i32 noundef 1000) #9
  call void @finish_wait(ptr noundef %waitq.c29, ptr noundef nonnull %wait) #9
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %port.i = getelementptr inbounds %struct.pardevice, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i, align 4
  %waithead.i = getelementptr inbounds %struct.parport, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %waithead.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %waithead.i, align 4
  %cmp.i = icmp eq ptr %31, null
  br i1 %cmp.i, label %if.else.critedge.cleanup_crit_edge, label %lor.lhs.false.i

if.else.critedge.cleanup_crit_edge:               ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.else.critedge
  %time.i = getelementptr inbounds %struct.pardevice, ptr %26, i32 0, i32 14
  %32 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time.i, align 4
  %sub.i = sub i32 %27, %33
  %timeslice.i = getelementptr inbounds %struct.pardevice, ptr %26, i32 0, i32 15
  %34 = ptrtoint ptr %timeslice.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeslice.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %35)
  %cmp1.i = icmp ult i32 %sub.i, %35
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @parport_release(ptr noundef %26) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i, %if.then.i34
  %.sink = phi ptr [ %26, %if.end.i ], [ %24, %if.then.i34 ]
  %call.i35 = call i32 @parport_claim_or_block(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.i.cleanup_crit_edge, %if.else.critedge.cleanup_crit_edge, %lp_release_parport.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lp_release_parport(ptr noundef %this_lp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bits = getelementptr inbounds %struct.lp_struct, ptr %this_lp, i32 0, i32 13
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %this_lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %this_lp, align 4
  tail call void @parport_release(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim_or_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp_wait_ready(i32 noundef %minor, i32 noundef %nonblock) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_mode = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 12
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp.not = icmp eq i32 %1, 256
  br i1 %cmp.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %flags = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 1
  %arrayidx.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor
  %last_error.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool1.not = icmp eq i32 %nonblock, 0
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %do.body.preheader
  %2 = ptrtoint ptr %last_error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_error.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %7) #9
  %conv.i = zext i8 %call.i to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.if.else.i_crit_edge, label %land.lhs.true.i

do.body.if.else.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.body
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and6.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.lp_check_status.exit.thread_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.lp_check_status.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_check_status.exit.thread

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.body.if.else.i_crit_edge
  %and9.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else15.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 32
  br i1 %cmp.not.i, label %if.then11.i.land.lhs.true_crit_edge, label %if.then11.i.if.then52.sink.split.i_crit_edge

if.then11.i.if.then52.sink.split.i_crit_edge:     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.sink.split.i

if.then11.i.land.lhs.true_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else15.i:                                      ; preds = %if.else.i
  %and17.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.else29.i

if.then19.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp20.not.i = icmp eq i32 %3, 16
  br i1 %cmp20.not.i, label %if.then19.i.land.lhs.true_crit_edge, label %if.then19.i.if.then52.sink.split.i_crit_edge

if.then19.i.if.then52.sink.split.i_crit_edge:     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.sink.split.i

if.then19.i.land.lhs.true_crit_edge:              ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else29.i:                                      ; preds = %if.else15.i
  br i1 %tobool.not.i, label %if.then33.i, label %if.else29.i.lp_check_status.exit.thread_crit_edge

if.else29.i.lp_check_status.exit.thread_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_check_status.exit.thread

if.then33.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp34.not.i = icmp eq i32 %3, 8
  br i1 %cmp34.not.i, label %if.then33.i.land.lhs.true_crit_edge, label %if.then33.i.if.then52.sink.split.i_crit_edge

if.then33.i.if.then52.sink.split.i_crit_edge:     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.sink.split.i

if.then33.i.land.lhs.true_crit_edge:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lp_check_status.exit.thread:                      ; preds = %if.else29.i.lp_check_status.exit.thread_crit_edge, %land.lhs.true.i.lp_check_status.exit.thread_crit_edge
  %14 = ptrtoint ptr %last_error.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %last_error.i, align 4
  br label %if.end5

if.then52.sink.split.i:                           ; preds = %if.then33.i.if.then52.sink.split.i_crit_edge, %if.then19.i.if.then52.sink.split.i_crit_edge, %if.then11.i.if.then52.sink.split.i_crit_edge
  %.str.35.sink.i = phi ptr [ @.str.35, %if.then11.i.if.then52.sink.split.i_crit_edge ], [ @.str.38, %if.then19.i.if.then52.sink.split.i_crit_edge ], [ @.str.41, %if.then33.i.if.then52.sink.split.i_crit_edge ]
  %last.3.ph.ph.i = phi i32 [ 32, %if.then11.i.if.then52.sink.split.i_crit_edge ], [ 16, %if.then19.i.if.then52.sink.split.i_crit_edge ], [ 8, %if.then33.i.if.then52.sink.split.i_crit_edge ]
  %error.0.ph.ph.i = phi i32 [ -28, %if.then11.i.if.then52.sink.split.i_crit_edge ], [ -5, %if.then19.i.if.then52.sink.split.i_crit_edge ], [ -5, %if.then33.i.if.then52.sink.split.i_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink.i, i32 noundef %minor) #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then52.sink.split.i, %if.then33.i.land.lhs.true_crit_edge, %if.then19.i.land.lhs.true_crit_edge, %if.then11.i.land.lhs.true_crit_edge
  %last.3.ph.i = phi i32 [ 8, %if.then33.i.land.lhs.true_crit_edge ], [ 16, %if.then19.i.land.lhs.true_crit_edge ], [ 32, %if.then11.i.land.lhs.true_crit_edge ], [ %last.3.ph.ph.i, %if.then52.sink.split.i ]
  %error.0.ph.i = phi i32 [ -5, %if.then33.i.land.lhs.true_crit_edge ], [ -5, %if.then19.i.land.lhs.true_crit_edge ], [ -28, %if.then11.i.land.lhs.true_crit_edge ], [ %error.0.ph.ph.i, %if.then52.sink.split.i ]
  %15 = ptrtoint ptr %last_error.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %last.3.ph.i, ptr %last_error.i, align 4
  tail call fastcc void @lp_error(i32 noundef %minor) #9
  br i1 %tobool1.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %lor.lhs.false.if.end5_crit_edge, %lp_check_status.exit.thread
  %tobool.not20 = phi i1 [ true, %lp_check_status.exit.thread ], [ false, %lor.lhs.false.if.end5_crit_edge ]
  %18 = tail call i32 @llvm.read_register.i32(metadata !166) #9
  %and.i16 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i16 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i17 = icmp eq i32 %26, 0
  br i1 %tobool.not.i17, label %signal_pending.exit, label %if.end5.cleanup_crit_edge, !prof !177

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end5
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool8.not = icmp ne i32 %and1.i.i.i.i.i, 0
  %brmerge = or i1 %tobool.not20, %tobool8.not
  br i1 %brmerge, label %cleanup.loopexit.split.loop.exit, label %signal_pending.exit.do.body_crit_edge

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup.loopexit.split.loop.exit:                 ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  %.mux.le = select i1 %tobool8.not, i32 -4, i32 0
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %.mux.le, %cleanup.loopexit.split.loop.exit ], [ %error.0.ph.i, %land.lhs.true.cleanup_crit_edge ], [ %error.0.ph.i, %lor.lhs.false.cleanup_crit_edge ], [ -4, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lp_reset(i32 noundef %minor) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor
  %bits.i = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %minor, i32 13
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.lp_claim_parport_or_block.exit_crit_edge

entry.lp_claim_parport_or_block.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_claim_parport_or_block.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call i32 @parport_claim_or_block(ptr noundef %1) #9
  br label %lp_claim_parport_or_block.exit

lp_claim_parport_or_block.exit:                   ; preds = %if.then.i, %entry.lp_claim_parport_or_block.exit_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_control, align 4
  tail call void %9(ptr noundef %5, i8 noundef zeroext 8) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 10737400) #9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %port9 = getelementptr inbounds %struct.pardevice, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port9, align 4
  %ops10 = getelementptr inbounds %struct.parport, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %ops10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops10, align 4
  %write_control11 = getelementptr inbounds %struct.parport_operations, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_control11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_control11, align 4
  tail call void %18(ptr noundef %14, i8 noundef zeroext 12) #9
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %port19 = getelementptr inbounds %struct.pardevice, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %port19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port19, align 4
  %ops20 = getelementptr inbounds %struct.parport, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops20, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_status, align 4
  %call = tail call zeroext i8 %26(ptr noundef %22) #9
  %call.i2 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %bits.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge, label %if.then.i4

lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge: ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lp_release_parport.exit

if.then.i4:                                       ; preds = %lp_claim_parport_or_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  tail call void @parport_release(ptr noundef %28) #9
  br label %lp_release_parport.exit

lp_release_parport.exit:                          ; preds = %if.then.i4, %lp_claim_parport_or_block.exit.lp_release_parport.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp_detach(ptr nocapture noundef readonly %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @console_registered, align 4
  %cmp = icmp eq ptr %0, %port
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_console(ptr noundef nonnull @lpcons) #9
  store ptr null, ptr @console_registered, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %n.013 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr @port_num, i32 0, i32 %n.013
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp2 = icmp eq i32 %2, %4
  br i1 %cmp2, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %arrayidx, align 4
  %6 = load i32, ptr @lp_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @lp_count, align 4
  %7 = load ptr, ptr @lp_class, align 4
  %or = or i32 %n.013, 6291456
  tail call void @device_destroy(ptr noundef %7, i32 noundef %or) #9
  %arrayidx5 = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %n.013
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  tail call void @parport_unregister_device(ptr noundef %9) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.013, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp_attach(ptr noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @parport_nr, align 4
  %1 = and i32 %0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %1)
  %switch = icmp eq i32 %1, -4
  br i1 %switch, label %sw.bb, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %entry
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %4 = load i32, ptr @parport_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp18 = icmp eq i32 %3, %4
  br i1 %cmp18, label %for.cond14.preheader.if.then19_crit_edge, label %for.inc26

for.cond14.preheader.if.then19_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %cmp = icmp eq i32 %0, -3
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %probe_info = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 22
  %5 = ptrtoint ptr %probe_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %probe_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1.not = icmp eq i32 %6, 1
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %7 = load i32, ptr @lp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp2 = icmp eq i32 %7, 8
  br i1 %cmp2, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %8 = load i32, ptr @port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp7 = icmp eq i32 %8, -1
  br i1 %cmp7, label %for.body.preheader.for.end_crit_edge, label %for.inc

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef 8) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %9 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @port_num, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp7.1 = icmp eq i32 %9, -1
  br i1 %cmp7.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %10 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @port_num, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp7.2 = icmp eq i32 %10, -1
  br i1 %cmp7.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %11 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @port_num, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp7.3 = icmp eq i32 %11, -1
  br i1 %cmp7.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %12 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @port_num, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp7.4 = icmp eq i32 %12, -1
  br i1 %cmp7.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %13 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @port_num, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp7.5 = icmp eq i32 %13, -1
  br i1 %cmp7.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %14 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @port_num, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp7.6 = icmp eq i32 %14, -1
  br i1 %cmp7.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @port_num, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp7.7 = icmp eq i32 %15, -1
  %spec.select = select i1 %cmp7.7, i32 7, i32 8
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.body.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %call10 = tail call fastcc i32 @lp_register(i32 noundef %i.0.lcssa, ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = load i32, ptr @lp_count, align 4
  %inc12 = add i32 %16, 1
  store i32 %inc12, ptr @lp_count, align 4
  br label %cleanup

if.then19:                                        ; preds = %for.inc26.6.if.then19_crit_edge, %for.inc26.5.if.then19_crit_edge, %for.inc26.4.if.then19_crit_edge, %for.inc26.3.if.then19_crit_edge, %for.inc26.2.if.then19_crit_edge, %for.inc26.1.if.then19_crit_edge, %for.inc26.if.then19_crit_edge, %for.cond14.preheader.if.then19_crit_edge
  %i.140.lcssa = phi i32 [ 0, %for.cond14.preheader.if.then19_crit_edge ], [ 1, %for.inc26.if.then19_crit_edge ], [ 2, %for.inc26.1.if.then19_crit_edge ], [ 3, %for.inc26.2.if.then19_crit_edge ], [ 4, %for.inc26.3.if.then19_crit_edge ], [ 5, %for.inc26.4.if.then19_crit_edge ], [ 6, %for.inc26.5.if.then19_crit_edge ], [ 7, %for.inc26.6.if.then19_crit_edge ]
  %call20 = tail call fastcc i32 @lp_register(i32 noundef %i.140.lcssa, ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %17 = load i32, ptr @lp_count, align 4
  %inc23 = add i32 %17, 1
  store i32 %inc23, ptr @lp_count, align 4
  br label %cleanup

for.inc26:                                        ; preds = %for.cond14.preheader
  %18 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport_nr, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %18)
  %cmp18.1 = icmp eq i32 %3, %18
  br i1 %cmp18.1, label %for.inc26.if.then19_crit_edge, label %for.inc26.1

for.inc26.if.then19_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc26.1:                                      ; preds = %for.inc26
  %19 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport_nr, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %19)
  %cmp18.2 = icmp eq i32 %3, %19
  br i1 %cmp18.2, label %for.inc26.1.if.then19_crit_edge, label %for.inc26.2

for.inc26.1.if.then19_crit_edge:                  ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc26.2:                                      ; preds = %for.inc26.1
  %20 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport_nr, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %20)
  %cmp18.3 = icmp eq i32 %3, %20
  br i1 %cmp18.3, label %for.inc26.2.if.then19_crit_edge, label %for.inc26.3

for.inc26.2.if.then19_crit_edge:                  ; preds = %for.inc26.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc26.3:                                      ; preds = %for.inc26.2
  %21 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport_nr, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %21)
  %cmp18.4 = icmp eq i32 %3, %21
  br i1 %cmp18.4, label %for.inc26.3.if.then19_crit_edge, label %for.inc26.4

for.inc26.3.if.then19_crit_edge:                  ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc26.4:                                      ; preds = %for.inc26.3
  %22 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport_nr, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %22)
  %cmp18.5 = icmp eq i32 %3, %22
  br i1 %cmp18.5, label %for.inc26.4.if.then19_crit_edge, label %for.inc26.5

for.inc26.4.if.then19_crit_edge:                  ; preds = %for.inc26.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc26.5:                                      ; preds = %for.inc26.4
  %23 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport_nr, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %23)
  %cmp18.6 = icmp eq i32 %3, %23
  br i1 %cmp18.6, label %for.inc26.5.if.then19_crit_edge, label %for.inc26.6

for.inc26.5.if.then19_crit_edge:                  ; preds = %for.inc26.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc26.6:                                      ; preds = %for.inc26.5
  %24 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @parport_nr, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %24)
  %cmp18.7 = icmp eq i32 %3, %24
  br i1 %cmp18.7, label %for.inc26.6.if.then19_crit_edge, label %for.inc26.6.cleanup_crit_edge

for.inc26.6.cleanup_crit_edge:                    ; preds = %for.inc26.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc26.6.if.then19_crit_edge:                  ; preds = %for.inc26.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

cleanup:                                          ; preds = %for.inc26.6.cleanup_crit_edge, %if.then22, %if.then19.cleanup_crit_edge, %if.then11, %for.end.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp_console_write(ptr nocapture noundef readnone %co, ptr noundef %s, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lp_table, align 4
  %port1 = getelementptr inbounds %struct.pardevice, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port1, align 4
  %call = tail call i32 @parport_claim(ptr noundef %0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup33_crit_edge

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup33

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @parport_set_timeout(ptr noundef %0, i32 noundef 0) #9
  %call3 = tail call i32 @parport_negotiate(ptr noundef %2, i32 noundef 256) #9
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end
  %s.addr.0 = phi ptr [ %s, %if.end ], [ %s.addr.3, %cleanup.do.body_crit_edge ]
  %count.addr.0 = phi i32 [ %count, %if.end ], [ %count.addr.3, %cleanup.do.body_crit_edge ]
  %call4 = tail call ptr @memchr(ptr noundef %s.addr.0, i32 noundef 10, i32 noundef %count.addr.0) #13
  %tobool5.not = icmp eq ptr %call4, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %s.addr.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %canwrite.0 = select i1 %tobool5.not, i32 %count.addr.0, i32 %sub.ptr.sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %canwrite.0)
  %cmp = icmp sgt i32 %canwrite.0, 0
  br i1 %cmp, label %if.then8, label %do.body.if.end14_crit_edge

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %do.body
  %call9 = tail call i32 @parport_write(ptr noundef %2, ptr noundef %s.addr.0, i32 noundef %canwrite.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %s.addr.0, i32 %call9
  %sub = sub i32 %count.addr.0, %call9
  %sub13 = sub nsw i32 %canwrite.0, %call9
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %do.body.if.end14_crit_edge
  %s.addr.1 = phi ptr [ %add.ptr, %if.end12 ], [ %s.addr.0, %do.body.if.end14_crit_edge ]
  %count.addr.1 = phi i32 [ %sub, %if.end12 ], [ %count.addr.0, %do.body.if.end14_crit_edge ]
  %canwrite.1 = phi i32 [ %sub13, %if.end12 ], [ %canwrite.0, %do.body.if.end14_crit_edge ]
  %tobool5.not.not = xor i1 %tobool5.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %canwrite.1)
  %cmp16 = icmp slt i32 %canwrite.1, 1
  %or.cond = select i1 %tobool5.not.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %incdec.ptr = getelementptr i8, ptr %s.addr.1, i32 1
  br label %do.body18

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %if.then17
  %crlf.0 = phi ptr [ @.str.54, %if.then17 ], [ %crlf.1, %do.body18.do.body18_crit_edge ]
  %i.0 = phi i32 [ 2, %if.then17 ], [ %i.1, %do.body18.do.body18_crit_edge ]
  %call19 = tail call i32 @parport_write(ptr noundef %2, ptr noundef %crlf.0, i32 noundef %i.0) #9
  %3 = tail call i32 @llvm.smax.i32(i32 %call19, i32 0)
  %crlf.1 = getelementptr i8, ptr %crlf.0, i32 %3
  %i.1 = sub nsw i32 %i.0, %3
  %cmp25 = icmp sgt i32 %i.1, 0
  br i1 %cmp25, label %do.body18.do.body18_crit_edge, label %cleanup.loopexit

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

cleanup.loopexit:                                 ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %count.addr.1, -1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end14.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %s.addr.3 = phi ptr [ %s.addr.0, %if.then8.cleanup_crit_edge ], [ %s.addr.1, %if.end14.cleanup_crit_edge ], [ %incdec.ptr, %cleanup.loopexit ]
  %count.addr.3 = phi i32 [ %count.addr.0, %if.then8.cleanup_crit_edge ], [ %count.addr.1, %if.end14.cleanup_crit_edge ], [ %dec, %cleanup.loopexit ]
  %cmp29.not = icmp eq i32 %count.addr.3, 0
  br i1 %cmp29.not, label %do.end32, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end32:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @parport_release(ptr noundef %0) #9
  br label %cleanup33

cleanup33:                                        ; preds = %do.end32, %entry.cleanup33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp_register(i32 noundef %nr, ptr noundef %port) unnamed_addr #1 align 64 {
entry:
  %ppdev_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ppdev_cb) #9
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %ppdev_cb, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %ppdev_cb, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = ptrtoint ptr %ppdev_cb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lp_preempt, ptr %ppdev_cb, align 4
  %arrayidx = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %nr
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %0, align 4
  %call = call ptr @parport_register_dev_model(ptr noundef %port, ptr noundef nonnull @.str.19, ptr noundef nonnull %ppdev_cb, i32 noundef %nr) #9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr [8 x %struct.lp_struct], ptr @lp_table, i32 0, i32 %nr, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %flags, align 4
  %8 = load i8, ptr @reset, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @lp_reset(i32 noundef %nr)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %9 = load ptr, ptr @lp_class, align 4
  %dev8 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 9
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  %or9 = or i32 %nr, 6291456
  %call10 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %9, ptr noundef %11, i32 noundef %or9, ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef %nr) #9
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %irq = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 5
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp11 = icmp eq i32 %15, -1
  %cond = select i1 %cmp11, ptr @.str.60, ptr @.str.61
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %nr, ptr noundef %13, ptr noundef nonnull %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool13.not = icmp eq i32 %nr, 0
  br i1 %tobool13.not, label %if.then14, label %if.end7.if.end29_crit_edge

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then14:                                        ; preds = %if.end7
  %modes = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 4
  %16 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %modes, align 8
  %and = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.end24, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  call void @register_console(ptr noundef nonnull @lpcons) #9
  store ptr %port, ptr @console_registered, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef 0) #12
  br label %if.end29

do.end24:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef %19) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %if.then16, %if.end7.if.end29_crit_edge
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %20 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %number, align 4
  %arrayidx30 = getelementptr [8 x i32], ptr @port_num, i32 0, i32 %nr
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ppdev_cb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp_preempt(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bits = getelementptr inbounds %struct.lp_struct, ptr %handle, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %bits) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { cold }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !149, !151, !152, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164}
!llvm.named.register.sp = !{!166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @__param_parport, !1, !"__param_parport", i1 false, i1 false}
!1 = !{!"../drivers/char/lp.c", i32 880, i32 1}
!2 = !{ptr @__UNIQUE_ID_parporttype225, !1, !"__UNIQUE_ID_parporttype225", i1 false, i1 false}
!3 = !{ptr @__param_reset, !4, !"__param_reset", i1 false, i1 false}
!4 = !{!"../drivers/char/lp.c", i32 881, i32 1}
!5 = !{ptr @__UNIQUE_ID_resettype226, !4, !"__UNIQUE_ID_resettype226", i1 false, i1 false}
!6 = !{ptr @__setup_lp_setup, !7, !"__setup_lp_setup", i1 false, i1 false}
!7 = !{!"../drivers/char/lp.c", i32 1121, i32 1}
!8 = !{ptr @__initcall__kmod_lp__227_1122_lp_init_module6, !9, !"__initcall__kmod_lp__227_1122_lp_init_module6", i1 false, i1 false}
!9 = !{!"../drivers/char/lp.c", i32 1122, i32 1}
!10 = !{ptr @__exitcall_lp_cleanup_module, !11, !"__exitcall_lp_cleanup_module", i1 false, i1 false}
!11 = !{!"../drivers/char/lp.c", i32 1123, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias228, !13, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!13 = !{!"../drivers/char/lp.c", i32 1125, i32 1}
!14 = !{ptr @__UNIQUE_ID_file229, !15, !"__UNIQUE_ID_file229", i1 false, i1 false}
!15 = !{!"../drivers/char/lp.c", i32 1126, i32 1}
!16 = !{ptr @__UNIQUE_ID_license230, !15, !"__UNIQUE_ID_license230", i1 false, i1 false}
!17 = !{ptr @reset, !18, !"reset", i1 false, i1 false}
!18 = !{!"../drivers/char/lp.c", i32 878, i32 13}
!19 = !{ptr @__param_str_parport, !1, !"__param_str_parport", i1 false, i1 false}
!20 = !{ptr @__param_arr_parport, !1, !"__param_arr_parport", i1 false, i1 false}
!21 = !{ptr @parport, !22, !"parport", i1 false, i1 false}
!22 = !{!"../drivers/char/lp.c", i32 877, i32 14}
!23 = !{ptr @__param_str_reset, !4, !"__param_str_reset", i1 false, i1 false}
!24 = !{ptr @__setup_str_lp_setup, !7, !"__setup_str_lp_setup", i1 false, i1 false}
!25 = !{ptr @lp_setup.parport_ptr, !26, !"parport_ptr", i1 false, i1 false}
!26 = !{!"../drivers/char/lp.c", i32 886, i32 13}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/lp.c", i32 894, i32 4}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lp_setup._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @lp_setup._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/char/lp.c", i32 897, i32 27}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/lp.c", i32 902, i32 4}
!37 = !{ptr @lp_setup._entry.4, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lp_setup._entry_ptr.6, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/char/lp.c", i32 904, i32 26}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/lp.c", i32 906, i32 26}
!43 = !{ptr @lp_setup._entry.9, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/char/lp.c", i32 910, i32 4}
!45 = !{ptr @lp_setup._entry_ptr.10, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/lp.c", i32 912, i32 26}
!48 = !{ptr @parport_nr, !49, !"parport_nr", i1 false, i1 false}
!49 = !{!"../drivers/char/lp.c", i32 876, i32 12}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/lp.c", i32 1098, i32 7}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lp_init_module._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @lp_init_module._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @lp_init.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/char/lp.c", i32 1040, i32 3}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lp_init.__key.15, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/char/lp.c", i32 1041, i32 3}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @lp_init.__key.17, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/char/lp.c", i32 1042, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/lp.c", i32 1047, i32 32}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/char/lp.c", i32 1048, i32 3}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @lp_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @lp_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @lp_init.__key.22, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/char/lp.c", i32 1052, i32 13}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/char/lp.c", i32 1059, i32 3}
!76 = !{ptr @lp_init._entry.24, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lp_init._entry_ptr.26, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/lp.c", i32 1065, i32 3}
!80 = !{ptr @lp_init._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lp_init._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @lp_table, !83, !"lp_table", i1 false, i1 false}
!83 = !{!"../drivers/char/lp.c", i32 144, i32 25}
!84 = !{ptr @port_num, !85, !"port_num", i1 false, i1 false}
!85 = !{!"../drivers/char/lp.c", i32 145, i32 12}
!86 = !{ptr @lp_fops, !87, !"lp_fops", i1 false, i1 false}
!87 = !{!"../drivers/char/lp.c", i32 784, i32 37}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/char/lp.c", i32 402, i32 3}
!97 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @lp_write._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @lp_write._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/char/lp.c", i32 250, i32 4}
!102 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @lp_check_status._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @lp_check_status._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/char/lp.c", i32 256, i32 4}
!107 = !{ptr @lp_check_status._entry.37, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @lp_check_status._entry_ptr.39, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/char/lp.c", i32 262, i32 4}
!111 = !{ptr @lp_check_status._entry.40, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @lp_check_status._entry_ptr.42, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/char/lp.c", i32 143, i32 8}
!115 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @lp_mutex, !114, !"lp_mutex", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/char/lp.c", i32 525, i32 4}
!119 = !{ptr @lp_open._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @lp_open._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @lp_open._entry.46, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/char/lp.c", i32 530, i32 4}
!123 = !{ptr @lp_open._entry_ptr.47, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/char/lp.c", i32 535, i32 4}
!126 = !{ptr @lp_open._entry.48, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @lp_open._entry_ptr.50, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/char/lp.c", i32 552, i32 3}
!130 = !{ptr @lp_open._entry.51, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @lp_open._entry_ptr.53, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @lp_class, !133, !"lp_class", i1 false, i1 false}
!133 = !{!"../drivers/char/lp.c", i32 148, i32 22}
!134 = !{ptr @lp_driver, !135, !"lp_driver", i1 false, i1 false}
!135 = !{!"../drivers/char/lp.c", i32 1013, i32 30}
!136 = !{ptr @console_registered, !137, !"console_registered", i1 false, i1 false}
!137 = !{!"../drivers/char/lp.c", i32 151, i32 24}
!138 = !{ptr @lpcons, !139, !"lpcons", i1 false, i1 false}
!139 = !{!"../drivers/char/lp.c", i32 866, i32 23}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/char/lp.c", i32 847, i32 23}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/char/lp.c", i32 968, i32 4}
!144 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @lp_attach._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @lp_attach._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/char/lp.c", i32 936, i32 9}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/char/lp.c", i32 938, i32 2}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @lp_register._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @lp_register._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/char/lp.c", i32 946, i32 4}
!158 = !{ptr @lp_register._entry.62, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @lp_register._entry_ptr.64, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/char/lp.c", i32 948, i32 4}
!162 = !{ptr @lp_register._entry.65, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @lp_register._entry_ptr.67, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @lp_count, !165, !"lp_count", i1 false, i1 false}
!165 = !{!"../drivers/char/lp.c", i32 147, i32 21}
!166 = !{!"sp"}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"auto-init"}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 2152147346, i64 2152147371}
!179 = !{i64 2152146665, i64 2152146690}
!180 = !{i64 4638159}
!181 = !{i64 4638356}
!182 = !{i64 2152123589}
!183 = !{i8 0, i8 2}
