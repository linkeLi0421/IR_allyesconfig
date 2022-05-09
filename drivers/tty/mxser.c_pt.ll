; ModuleID = '/llk/IR_all_yes/drivers/tty/mxser.c_pt.bc'
source_filename = "../drivers/tty/mxser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.75 = type { i8, i8, i8, i8, i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.mxser_board = type { i32, i16, i32, i32, i32, i32, [0 x %struct.mxser_port] }
%struct.mxser_port = type { %struct.tty_port, ptr, i32, i32, i8, i8, i32, i8, i8, i8, i8, %struct.async_icount, i32, i8, i8, i8, i32, i32, i32, %struct.spinlock }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__UNIQUE_ID_author240 = internal constant [25 x i8] c"mxser.author=Casper Yang\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [77 x i8] c"mxser.description=MOXA Smartio/Industio Family Multiport Board Device Driver\00", section ".modinfo", align 1
@__param_str_ttymajor = internal constant [15 x i8] c"mxser.ttymajor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ttymajor = internal global { i32, [28 x i8] } { i32 174, [28 x i8] zeroinitializer }, align 32
@__param_ttymajor = internal constant %struct.kernel_param { ptr @__param_str_ttymajor, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @ttymajor } }, section "__param", align 4
@__UNIQUE_ID_ttymajortype242 = internal constant [28 x i8] c"mxser.parmtype=ttymajor:int\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [29 x i8] c"mxser.file=drivers/tty/mxser\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [18 x i8] c"mxser.license=GPL\00", section ".modinfo", align 1
@mxser_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @mxser_pcibrds, ptr @mxser_probe, ptr @mxser_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@mxvar_sdriver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mxser__249_1969_mxser_module_init6 = internal global ptr @mxser_module_init, section ".initcall6.init", align 4
@__exitcall_mxser_module_exit = internal global ptr @mxser_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mxser\00", [26 x i8] zeroinitializer }, align 32
@mxser_pcibrds = internal constant { [27 x %struct.pci_device_id], [192 x i8] } { [27 x %struct.pci_device_id] [%struct.pci_device_id { i32 5011, i32 5760, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 4160, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4896, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5011, i32 4417, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4416, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4128, i32 -1, i32 -1, i32 0, i32 0, i32 258, i32 0 }, %struct.pci_device_id { i32 5011, i32 4161, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 5761, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 4897, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5011, i32 4928, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4162, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 4480, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 4129, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5011, i32 4130, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5011, i32 4481, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 5762, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 4163, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4224, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 4418, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4929, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4992, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5011, i32 4164, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4419, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5011, i32 4131, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5011, i32 4384, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@mxser_boards = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mxser_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"too many boards found (maximum %d), board not configured\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mxser_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/tty/mxser.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxser_probe._entry_ptr = internal global ptr @mxser_probe._entry, section ".printk_index", align 4
@mxser_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCI enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@mxser_probe._entry_ptr.8 = internal global ptr @mxser_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxser(IO)\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxser(vector)\00", [18 x i8] zeroinitializer }, align 32
@mxser_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1874, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"request irq failed\00", [45 x i8] zeroinitializer }, align 32
@mxser_probe._entry_ptr.13 = internal global ptr @mxser_probe._entry.11, section ".printk_index", align 4
@Gpci_uart_info = internal constant { [3 x %struct.anon.75], [40 x i8] } { [3 x %struct.anon.75] [%struct.anon.75 { i8 0, i8 16, i8 14, i8 1, i32 921600 }, %struct.anon.75 { i8 1, i8 64, i8 48, i8 16, i32 230400 }, %struct.anon.75 { i8 2, i8 -128, i8 96, i8 32, i32 921600 }], [40 x i8] zeroinitializer }, align 32
@mxser_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @mxser_carrier_raised, ptr @mxser_dtr_rts, ptr @mxser_shutdown_port, ptr @mxser_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@mxser_initbrd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->slock\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyMI\00", [26 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@mxser_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @mxser_open, ptr @mxser_close, ptr null, ptr null, ptr @mxser_write, ptr @mxser_put_char, ptr @mxser_flush_chars, ptr @mxser_write_room, ptr @mxser_chars_in_buffer, ptr @mxser_ioctl, ptr null, ptr @mxser_set_termios, ptr @mxser_throttle, ptr @mxser_unthrottle, ptr @mxser_stop, ptr @mxser_start, ptr @mxser_hangup, ptr @mxser_rs_break, ptr @mxser_flush_buffer, ptr null, ptr @mxser_wait_until_sent, ptr null, ptr @mxser_tiocmget, ptr @mxser_tiocmset, ptr null, ptr @mxser_get_icount, ptr @mxser_get_serial_info, ptr @mxser_set_serial_info, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mxser_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Couldn't install MOXA Smartio/Industio family tty driver !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxser_module_init\00", [46 x i8] zeroinitializer }, align 32
@mxser_module_init._entry_ptr = internal global ptr @mxser_module_init._entry, section ".printk_index", align 4
@mxser_module_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013mxser: can't register pci driver\0A\00", [60 x i8] zeroinitializer }, align 32
@mxser_module_init._entry_ptr.20 = internal global ptr @mxser_module_init._entry.18, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 6, i64 4, i64 6, i64 12, i64 28]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 134]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1090, i64 1091, i64 21596]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 21593, i64 21596]
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"ttymajor\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 245, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"mxser_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1915, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"mxvar_sdriver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 298, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1916, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"mxser_pcibrds\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 214, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"mxser_boards\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 297, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1829, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1845, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1851, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1861, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1874, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"Gpci_uart_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 204, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"mxser_port_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1750, i32 41 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1809, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1932, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"mxser_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1725, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1943, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [23 x i8] c"../drivers/tty/mxser.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1950, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_ttymajortype242, ptr @__exitcall_mxser_module_exit, ptr @__initcall__kmod_mxser__249_1969_mxser_module_init6, ptr @__param_ttymajor, ptr @mxser_module_exit, ptr @mxser_module_init._entry, ptr @mxser_module_init._entry.18, ptr @mxser_module_init._entry_ptr, ptr @mxser_module_init._entry_ptr.20, ptr @mxser_probe._entry, ptr @mxser_probe._entry.11, ptr @mxser_probe._entry.6, ptr @mxser_probe._entry_ptr, ptr @mxser_probe._entry_ptr.13, ptr @mxser_probe._entry_ptr.8, ptr @ttymajor, ptr @mxser_driver, ptr @mxvar_sdriver, ptr @.str, ptr @mxser_pcibrds, ptr @mxser_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @Gpci_uart_info, ptr @mxser_port_ops, ptr @mxser_initbrd.__key, ptr @.str.14, ptr @.str.15, ptr @mxser_ops, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttymajor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxvar_sdriver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_pcibrds to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_boards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Gpci_uart_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_initbrd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxser_module_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxser_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @mxser_driver) #8
  %0 = load ptr, ptr @mxvar_sdriver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #8
  %1 = load ptr, ptr @mxvar_sdriver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 32, ptr noundef null, i32 noundef 12) #8
  store ptr %call, ptr @mxvar_sdriver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.15, ptr %name, align 4
  %2 = load i32, ptr @ttymajor, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3261, ptr %c_cflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mxser_ops, ptr %ops.i, align 4
  %call5 = tail call i32 @tty_register_driver(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %err_put

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @__pci_register_driver(ptr noundef nonnull @mxser_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  %10 = load ptr, ptr @mxvar_sdriver, align 4
  tail call void @tty_unregister_driver(ptr noundef %10) #8
  br label %err_put

err_put:                                          ; preds = %do.end14, %do.end
  %retval1.0 = phi i32 [ %call5, %do.end ], [ %call9, %do.end14 ]
  %11 = load ptr, ptr @mxvar_sdriver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval1.0, %err_put ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = trunc i32 %1 to i16
  %conv = and i16 %2, 255
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @mxser_boards, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp ugt i32 %call, 3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv4 = zext i16 %conv to i32
  %3 = mul nuw nsw i32 %conv4, 708
  %4 = add nuw nsw i32 %3, 24
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %4, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %call.i, align 4
  %shl.i = shl nuw nsw i32 1, %call
  %6 = load i32, ptr @mxser_boards, align 4
  %or.i = or i32 %6, %shl.i
  store i32 %or.i, ptr @mxser_boards, align 4
  %mul = shl nuw nsw i32 %call, 3
  %call10 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %err_zero

if.end17:                                         ; preds = %if.end8
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  %call18 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 2, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_zero_crit_edge

if.end17.err_zero_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_zero

if.end21:                                         ; preds = %if.end17
  %nports22 = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %nports22 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %nports22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp24150.not = icmp eq i16 %conv, 0
  br i1 %cmp24150.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.0151 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %mul26 = shl i32 %i.0151, 3
  %add = add i32 %mul26, %8
  %ioaddr = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.0151, i32 2
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %ioaddr, align 4
  %inc = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end21.for.end_crit_edge
  %arrayidx29 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %11 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx29, align 8
  %call31 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 3, ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %for.end.err_zero_crit_edge

for.end.err_zero_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_zero

if.end34:                                         ; preds = %for.end
  %vector = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %vector, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq35 = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %irq35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq35, align 4
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  %and37 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %ioaddr.i = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 25, i32 1
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ioaddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %add.i.i = add i32 %20, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %21 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #8, !srcloc !78
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 -65) #8, !srcloc !78
  %add8.i.i.i.i.i = add i32 %20, 2
  %and9.i.i.i.i.i = and i32 %add8.i.i.i.i.i, 1048575
  %add10.i.i.i.i.i = or i32 %and9.i.i.i.i.i, -18874368
  %23 = inttoptr i32 %add10.i.i.i.i.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i.i.i = and i8 %24, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %and15.i.i.i.i.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %22) #8, !srcloc !78
  %add2.i.i = add i32 %20, 4
  %and3.i.i = and i32 %add2.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %25 = inttoptr i32 %add4.i.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #8, !srcloc !78
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 -65) #8, !srcloc !78
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i57.i.i = and i8 %28, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %and15.i.i.i57.i.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 17) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %27) #8, !srcloc !78
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i.i = icmp eq i8 %29, 0
  br i1 %cmp.not.i.i, label %mxser_must_get_hwid.exit.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %26) #8, !srcloc !78
  %must_hwid122.i = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %must_hwid122.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %must_hwid122.i, align 4
  %max_baud9133.i = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %max_baud9133.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 921600, ptr %max_baud9133.i, align 4
  br label %if.end25.i

mxser_must_get_hwid.exit.i:                       ; preds = %if.end34
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 -65) #8, !srcloc !78
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i64.i.i = and i8 %33, 63
  %or41.i.i.i.i.i = or i8 %and15.i.i.i64.i.i, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %or41.i.i.i.i.i) #8, !srcloc !78
  %add.i65.i.i = add i32 %20, 5
  %and.i66.i.i = and i32 %add.i65.i.i, 1048575
  %add1.i67.i.i = or i32 %and.i66.i.i, -18874368
  %34 = inttoptr i32 %add1.i67.i.i to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %32) #8, !srcloc !78
  %.off.i.i = add i8 %35, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %narrow.i.i = select i1 %switch.i.i, i8 %35, i8 0
  %spec.select.i.i = zext i8 %narrow.i.i to i32
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select.i.i, ptr %must_hwid.i, align 4
  %37 = zext i8 %narrow.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i8 %narrow.i.i, label %do.body.i [
    i8 0, label %mxser_must_get_hwid.exit.i.for.end.i_crit_edge
    i8 1, label %for.end.fold.split.i
  ]

mxser_must_get_hwid.exit.i.for.end.i_crit_edge:   ; preds = %mxser_must_get_hwid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %mxser_must_get_hwid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split.i, %mxser_must_get_hwid.exit.i.for.end.i_crit_edge
  %i.0115.lcssa.i = phi i32 [ 0, %mxser_must_get_hwid.exit.i.for.end.i_crit_edge ], [ 1, %for.end.fold.split.i ]
  %max_baud.i = getelementptr [3 x %struct.anon.75], ptr @Gpci_uart_info, i32 0, i32 %i.0115.lcssa.i, i32 4
  %38 = ptrtoint ptr %max_baud.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_baud.i, align 4
  %max_baud9.i = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 5
  %spec.store.select.i = select i1 %tobool38.not, i32 %39, i32 921600
  %40 = ptrtoint ptr %max_baud9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.store.select.i, ptr %max_baud9.i, align 4
  br label %if.end25.i

do.body.i:                                        ; preds = %mxser_must_get_hwid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_baud9137.i = getelementptr inbounds %struct.mxser_board, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %max_baud9137.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 921600, ptr %max_baud9137.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vector, align 4
  %add.i = add i32 %43, 4
  %and.i146 = and i32 %add.i, 1048575
  %add15.i = or i32 %and.i146, -18874368
  %44 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 0) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vector, align 4
  %add21.i = add i32 %46, 12
  %and22.i = and i32 %add21.i, 1048575
  %add23.i = or i32 %and22.i, -18874368
  %47 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 0) #8, !srcloc !78
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.body.i, %for.end.i, %for.end.thread.i
  %must_hwid126136.i = phi ptr [ %must_hwid122.i, %for.end.thread.i ], [ %must_hwid.i, %do.body.i ], [ %must_hwid.i, %for.end.i ]
  %cmp128135.i = phi i1 [ false, %for.end.thread.i ], [ true, %do.body.i ], [ false, %for.end.i ]
  %48 = ptrtoint ptr %nports22 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nports22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp28117.not.i = icmp eq i16 %49, 0
  br i1 %cmp28117.not.i, label %if.end25.i.mxser_initbrd.exit_crit_edge, label %if.end25.i.for.body30.i_crit_edge

if.end25.i.for.body30.i_crit_edge:                ; preds = %if.end25.i
  br label %for.body30.i

if.end25.i.mxser_initbrd.exit_crit_edge:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_initbrd.exit

for.body30.i:                                     ; preds = %mxser_process_txrx_fifo.exit.i.for.body30.i_crit_edge, %if.end25.i.for.body30.i_crit_edge
  %i.1118.i = phi i32 [ %inc77.i, %mxser_process_txrx_fifo.exit.i.for.body30.i_crit_edge ], [ 0, %if.end25.i.for.body30.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i
  br i1 %cmp128135.i, label %if.then34.i, label %for.body30.i.if.end44.i_crit_edge

for.body30.i.if.end44.i_crit_edge:                ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then34.i:                                      ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1118.i)
  %cmp35.i = icmp ult i32 %i.1118.i, 4
  %50 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vector, align 4
  %..i = select i1 %cmp35.i, i32 4, i32 12
  %add39.i = add i32 %51, %..i
  %opmode_ioaddr.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 3
  %52 = ptrtoint ptr %opmode_ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add39.i, ptr %opmode_ioaddr.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then34.i, %for.body30.i.if.end44.i_crit_edge
  tail call void @tty_port_init(ptr noundef %arrayidx32.i) #8
  %ops.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx32.i, i32 0, i32 3
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @mxser_port_ops, ptr %ops.i, align 4
  %board.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 1
  %54 = ptrtoint ptr %board.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %board.i, align 4
  %55 = ptrtoint ptr %must_hwid126136.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %must_hwid126136.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp47.not.i = icmp eq i32 %56, 0
  br i1 %cmp47.not.i, label %if.end44.i.if.end51.i_crit_edge, label %if.then49.i

if.end44.i.if.end51.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr50.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 2
  %57 = ptrtoint ptr %ioaddr50.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ioaddr50.i, align 4
  %add.i.i.i.i = add i32 %58, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %59 = inttoptr i32 %add1.i.i.i.i to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 -65) #8, !srcloc !78
  %add8.i.i.i.i = add i32 %58, 2
  %and9.i.i.i.i = and i32 %add8.i.i.i.i, 1048575
  %add10.i.i.i.i = or i32 %and9.i.i.i.i, -18874368
  %61 = inttoptr i32 %add10.i.i.i.i to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %or41.i.i.i.i = or i8 %62, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %or41.i.i.i.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %60) #8, !srcloc !78
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end51.i_crit_edge
  %type52.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 6
  %63 = ptrtoint ptr %type52.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %type52.i, align 4
  %64 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %board.i, align 4
  %must_hwid.i.i = getelementptr inbounds %struct.mxser_board, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %must_hwid.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %must_hwid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %switch.i = icmp ult i32 %67, 3
  br i1 %switch.i, label %if.then7.i.i, label %if.end51.i.mxser_process_txrx_fifo.exit.i_crit_edge

if.end51.i.mxser_process_txrx_fifo.exit.i_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_process_txrx_fifo.exit.i

if.then7.i.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_low_water9.i.i = getelementptr [3 x %struct.anon.75], ptr @Gpci_uart_info, i32 0, i32 %67, i32 3
  %68 = ptrtoint ptr %rx_low_water9.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rx_low_water9.i.i, align 1
  %rx_low_water10.i.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 5
  %70 = ptrtoint ptr %rx_low_water10.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %rx_low_water10.i.i, align 1
  %rx_high_water12.i.i = getelementptr [3 x %struct.anon.75], ptr @Gpci_uart_info, i32 0, i32 %67, i32 2
  %71 = ptrtoint ptr %rx_high_water12.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_high_water12.i.i, align 2
  %rx_high_water13.i.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 4
  %73 = ptrtoint ptr %rx_high_water13.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %rx_high_water13.i.i, align 4
  %fifo_size.i.i = getelementptr [3 x %struct.anon.75], ptr @Gpci_uart_info, i32 0, i32 %67, i32 1
  %74 = ptrtoint ptr %fifo_size.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %fifo_size.i.i, align 1
  %xmit_fifo_size15.i.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 15
  %76 = ptrtoint ptr %xmit_fifo_size15.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %xmit_fifo_size15.i.i, align 2
  br label %mxser_process_txrx_fifo.exit.i

mxser_process_txrx_fifo.exit.i:                   ; preds = %if.then7.i.i, %if.end51.i.mxser_process_txrx_fifo.exit.i_crit_edge
  %close_delay.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx32.i, i32 0, i32 16
  %77 = ptrtoint ptr %close_delay.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 50, ptr %close_delay.i, align 4
  %closing_wait.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx32.i, i32 0, i32 17
  %78 = ptrtoint ptr %closing_wait.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3000, ptr %closing_wait.i, align 4
  %slock.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %slock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @mxser_initbrd.__key, i16 noundef signext 3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %ioaddr62.i = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1118.i, i32 2
  %79 = ptrtoint ptr %ioaddr62.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ioaddr62.i, align 4
  %add63.i = add i32 %80, 1
  %and64.i = and i32 %add63.i, 1048575
  %add65.i = or i32 %and64.i, -18874368
  %81 = inttoptr i32 %add65.i to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %83 = and i8 %82, -16
  %84 = ptrtoint ptr %ioaddr62.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ioaddr62.i, align 4
  %add72.i = add i32 %85, 1
  %and73.i = and i32 %add72.i, 1048575
  %add74.i = or i32 %and73.i, -18874368
  %86 = inttoptr i32 %add74.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %83) #8, !srcloc !78
  %inc77.i = add nuw nsw i32 %i.1118.i, 1
  %87 = ptrtoint ptr %nports22 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %nports22, align 4
  %conv27.i = zext i16 %88 to i32
  %cmp28.i = icmp ult i32 %inc77.i, %conv27.i
  br i1 %cmp28.i, label %mxser_process_txrx_fifo.exit.i.for.body30.i_crit_edge, label %mxser_process_txrx_fifo.exit.i.mxser_initbrd.exit_crit_edge

mxser_process_txrx_fifo.exit.i.mxser_initbrd.exit_crit_edge: ; preds = %mxser_process_txrx_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_initbrd.exit

mxser_process_txrx_fifo.exit.i.for.body30.i_crit_edge: ; preds = %mxser_process_txrx_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30.i

mxser_initbrd.exit:                               ; preds = %mxser_process_txrx_fifo.exit.i.mxser_initbrd.exit_crit_edge, %if.end25.i.mxser_initbrd.exit_crit_edge
  %89 = ptrtoint ptr %irq35 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq35, align 4
  %call.i147 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %90, ptr noundef nonnull @mxser_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool42.not = icmp eq i32 %call.i147, 0
  br i1 %tobool42.not, label %for.cond49.preheader, label %do.end46

for.cond49.preheader:                             ; preds = %mxser_initbrd.exit
  br i1 %cmp24150.not, label %for.cond49.preheader.for.end72_crit_edge, label %for.cond49.preheader.for.body53_crit_edge

for.cond49.preheader.for.body53_crit_edge:        ; preds = %for.cond49.preheader
  br label %for.body53

for.cond49.preheader.for.end72_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end72

do.end46:                                         ; preds = %mxser_initbrd.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %err_relbrd

for.body53:                                       ; preds = %for.inc70.for.body53_crit_edge, %for.cond49.preheader.for.body53_crit_edge
  %i.1153 = phi i32 [ %inc71, %for.inc70.for.body53_crit_edge ], [ 0, %for.cond49.preheader.for.body53_crit_edge ]
  %arrayidx55 = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.1153
  %91 = load ptr, ptr @mxvar_sdriver, align 4
  %add56 = add i32 %i.1153, %mul
  %call58 = tail call ptr @tty_port_register_device(ptr noundef %arrayidx55, ptr noundef %91, i32 noundef %add56, ptr noundef %dev) #8
  %cmp.i148 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then60, label %for.inc70

if.then60:                                        ; preds = %for.body53
  %92 = ptrtoint ptr %call58 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1153)
  %cmp63.not154 = icmp eq i32 %i.1153, 0
  br i1 %cmp63.not154, label %if.then60.err_relbrd_crit_edge, label %if.then60.for.body65_crit_edge

if.then60.for.body65_crit_edge:                   ; preds = %if.then60
  br label %for.body65

if.then60.err_relbrd_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_relbrd

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %if.then60.for.body65_crit_edge
  %i.2155 = phi i32 [ %add66, %for.body65.for.body65_crit_edge ], [ %i.1153, %if.then60.for.body65_crit_edge ]
  %93 = load ptr, ptr @mxvar_sdriver, align 4
  %add66 = add nsw i32 %i.2155, -1
  %sub = add i32 %add66, %mul
  tail call void @tty_unregister_device(ptr noundef %93, i32 noundef %sub) #8
  %cmp63.not = icmp eq i32 %add66, 0
  br i1 %cmp63.not, label %for.body65.err_relbrd_crit_edge, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body65

for.body65.err_relbrd_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_relbrd

for.inc70:                                        ; preds = %for.body53
  %inc71 = add nuw nsw i32 %i.1153, 1
  %exitcond160.not = icmp eq i32 %inc71, %conv4
  br i1 %exitcond160.not, label %for.inc70.for.end72_crit_edge, label %for.inc70.for.body53_crit_edge

for.inc70.for.body53_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body53

for.inc70.for.end72_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end72

for.end72:                                        ; preds = %for.inc70.for.end72_crit_edge, %for.cond49.preheader.for.end72_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %94 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_relbrd:                                       ; preds = %for.body65.err_relbrd_crit_edge, %if.then60.err_relbrd_crit_edge, %do.end46
  %retval1.0 = phi i32 [ %call.i147, %do.end46 ], [ %92, %if.then60.err_relbrd_crit_edge ], [ %92, %for.body65.err_relbrd_crit_edge ]
  br i1 %cmp24150.not, label %err_relbrd.err_zero_crit_edge, label %err_relbrd.for.body77_crit_edge

err_relbrd.for.body77_crit_edge:                  ; preds = %err_relbrd
  br label %for.body77

err_relbrd.err_zero_crit_edge:                    ; preds = %err_relbrd
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_zero

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %err_relbrd.for.body77_crit_edge
  %i.3157 = phi i32 [ %inc82, %for.body77.for.body77_crit_edge ], [ 0, %err_relbrd.for.body77_crit_edge ]
  %arrayidx79 = getelementptr %struct.mxser_board, ptr %call.i, i32 0, i32 6, i32 %i.3157
  tail call void @tty_port_destroy(ptr noundef %arrayidx79) #8
  %inc82 = add nuw nsw i32 %i.3157, 1
  %exitcond161.not = icmp eq i32 %inc82, %conv4
  br i1 %exitcond161.not, label %for.body77.err_zero_crit_edge, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77

for.body77.err_zero_crit_edge:                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_zero

err_zero:                                         ; preds = %for.body77.err_zero_crit_edge, %err_relbrd.err_zero_crit_edge, %for.end.err_zero_crit_edge, %if.end17.err_zero_crit_edge, %do.end15
  %retval1.1 = phi i32 [ %call10, %do.end15 ], [ %call18, %if.end17.err_zero_crit_edge ], [ %call31, %for.end.err_zero_crit_edge ], [ %retval1.0, %err_relbrd.err_zero_crit_edge ], [ %retval1.0, %for.body77.err_zero_crit_edge ]
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %call.i, align 4
  %rem.i144 = and i32 %96, 31
  %shl.i145 = shl nuw i32 1, %rem.i144
  %div1.i = lshr i32 %96, 5
  %add.ptr.i = getelementptr i32, ptr @mxser_boards, i32 %div1.i
  %neg.i = xor i32 %shl.i145, -1
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %98, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_zero, %for.end72, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %for.end72 ], [ -22, %do.end ], [ %retval1.1, %err_zero ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mul = shl i32 %3, 3
  %nports = getelementptr inbounds %struct.mxser_board, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp10.not = icmp eq i16 %5, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = load ptr, ptr @mxvar_sdriver, align 4
  %add = add i32 %i.011, %mul
  tail call void @tty_unregister_device(ptr noundef %6, i32 noundef %add) #8
  %arrayidx = getelementptr %struct.mxser_board, ptr %1, i32 0, i32 6, i32 %i.011
  tail call void @tty_port_destroy(ptr noundef %arrayidx) #8
  %inc = add nuw nsw i32 %i.011, 1
  %7 = ptrtoint ptr %nports to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nports, align 4
  %conv = zext i16 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %rem.i = and i32 %10, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div1.i = lshr i32 %10, 5
  %add.ptr.i = getelementptr i32, ptr @mxser_boards, i32 %div1.i
  %neg.i = xor i32 %shl.i, -1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %12, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.mxser_board, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nports, align 4
  %conv = zext i16 %1 to i32
  %notmask = shl nsw i32 -1, %conv
  %vector = getelementptr inbounds %struct.mxser_board, ptr %dev_id, i32 0, i32 3
  %conv1 = and i32 %notmask, 255
  %conv5 = xor i32 %conv1, 255
  %2 = trunc i32 %conv5 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1265.not = icmp eq i16 %1, 0
  %3 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vector, align 4
  %and76 = and i32 %4, 1048575
  %add77 = or i32 %and76, -18874368
  %5 = inttoptr i32 %add77 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %conv778 = and i8 %6, %2
  %conv879 = zext i8 %conv778 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %conv879)
  %cmp1080 = icmp eq i32 %conv5, %conv879
  br i1 %cmp1080, label %entry.while.end_crit_edge, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  br label %for.cond.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %for.end
  %7 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vector, align 4
  %and = and i32 %8, 1048575
  %add = or i32 %and, -18874368
  %9 = inttoptr i32 %add to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %conv7 = and i8 %10, %2
  %conv8 = zext i8 %conv7 to i32
  %cmp10 = icmp eq i32 %conv5, %conv8
  br i1 %cmp10, label %while.body.while.end_crit_edge, label %while.body.for.cond.preheader_crit_edge

while.body.for.cond.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.cond.preheader:                               ; preds = %while.body.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %conv782 = phi i8 [ %conv7, %while.body.for.cond.preheader_crit_edge ], [ %conv778, %entry.for.cond.preheader_crit_edge ]
  %inc7181 = phi i32 [ %inc, %while.body.for.cond.preheader_crit_edge ], [ 1, %entry.for.cond.preheader_crit_edge ]
  br i1 %cmp1265.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bits.069 = phi i32 [ %shl37, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %irqbits.068 = phi i8 [ %conv35, %for.inc.for.body_crit_edge ], [ %conv782, %for.cond.preheader.for.body_crit_edge ]
  %i.066 = phi i32 [ %inc32, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv14 = zext i8 %irqbits.068 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %conv14)
  %cmp16 = icmp eq i32 %conv5, %conv14
  br i1 %cmp16, label %for.body.for.end_crit_edge, label %if.end19

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end19:                                         ; preds = %for.body
  %and22 = and i32 %bits.069, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %if.end24, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end24:                                         ; preds = %if.end19
  %arrayidx = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066
  %slock = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 19
  tail call void @_raw_spin_lock(ptr noundef %slock) #8
  %ioaddr.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 2
  %board.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 1
  %tail.i.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %arrayidx, i32 0, i32 8
  %buf_overrun.i.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 11, i32 10
  %read_status_mask.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 13
  %FCR.i.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 10
  %ignore_status_mask.i.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 14
  %brk.i.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 11, i32 9
  %flags.i.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx, i32 0, i32 10
  %parity.i.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 11, i32 7
  %frame.i.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 11, i32 6
  %overrun.i.i = getelementptr %struct.mxser_board, ptr %dev_id, i32 0, i32 6, i32 %i.066, i32 11, i32 8
  br label %do.body

do.body:                                          ; preds = %mxser_port_isr.exit.do.body_crit_edge, %if.end24
  %int_cnt.0 = phi i32 [ 0, %if.end24 ], [ %inc28, %mxser_port_isr.exit.do.body_crit_edge ]
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %12, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %do.body
  %and5.i = and i8 %14, 62
  %call8.i = tail call ptr @tty_port_tty_get(ptr noundef %arrayidx) #8
  %tobool9.not.i = icmp eq ptr %call8.i, null
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ioaddr.i, align 4
  %add13.i = add i32 %17, 5
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %18 = inttoptr i32 %add15.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end35.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %FCR.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %FCR.i.i, align 1
  %22 = or i8 %21, 6
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ioaddr.i, align 4
  %add23.i = add i32 %24, 2
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %25 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #8, !srcloc !78
  %26 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ioaddr.i, align 4
  %add29.i = add i32 %27, 6
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %28 = inttoptr i32 %add31.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  br label %mxser_port_isr.exit

if.end35.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool44.not.i = icmp eq i32 %33, 0
  br i1 %tobool44.not.i, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end35.i
  %trunc.i = trunc i8 %and5.i to i6
  %34 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.21)
  switch i6 %trunc.i, label %if.then45.i.if.end72.i_crit_edge [
    i6 28, label %if.then45.i.if.end72.sink.split.i_crit_edge
    i6 4, label %if.then45.i.if.end72.sink.split.i_crit_edge85
    i6 12, label %if.then45.i.if.end72.sink.split.i_crit_edge86
    i6 6, label %if.then45.i.if.end72.sink.split.i_crit_edge87
  ]

if.then45.i.if.end72.sink.split.i_crit_edge87:    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.sink.split.i

if.then45.i.if.end72.sink.split.i_crit_edge86:    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.sink.split.i

if.then45.i.if.end72.sink.split.i_crit_edge85:    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.sink.split.i

if.then45.i.if.end72.sink.split.i_crit_edge:      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.sink.split.i

if.then45.i.if.end72.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.else.i:                                        ; preds = %if.end35.i
  %35 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %read_status_mask.i, align 4
  %and64128.i = and i8 %36, %19
  %37 = and i8 %and64128.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool68.not.i = icmp eq i8 %37, 0
  br i1 %tobool68.not.i, label %if.else.i.if.end72.i_crit_edge, label %if.else.i.do.body.i.i.preheader_crit_edge

if.else.i.do.body.i.i.preheader_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.preheader

if.else.i.if.end72.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.end72.sink.split.i:                            ; preds = %if.then45.i.if.end72.sink.split.i_crit_edge, %if.then45.i.if.end72.sink.split.i_crit_edge85, %if.then45.i.if.end72.sink.split.i_crit_edge86, %if.then45.i.if.end72.sink.split.i_crit_edge87
  %38 = and i8 %19, -98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %if.end2.i.i, label %if.end72.sink.split.i.do.body.i.i.preheader_crit_edge

if.end72.sink.split.i.do.body.i.i.preheader_crit_edge: ; preds = %if.end72.sink.split.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.end72.sink.split.i.do.body.i.i.preheader_crit_edge, %if.else.i.do.body.i.i.preheader_crit_edge
  %status.addr.0.i.i.ph = phi i8 [ %19, %if.end72.sink.split.i.do.body.i.i.preheader_crit_edge ], [ %and64128.i, %if.else.i.do.body.i.i.preheader_crit_edge ]
  br label %do.body.i.i

if.end2.i.i:                                      ; preds = %if.end72.sink.split.i
  %39 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ioaddr.i, align 4
  %add.i.i = add i32 %40, 7
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %41 = inttoptr i32 %add4.i.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp6.i.i = icmp eq i32 %33, 1
  %43 = and i8 %42, 127
  %spec.select.i.i = select i1 %cmp6.i.i, i8 %43, i8 %42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i.i)
  %tobool13.not37.i.i = icmp eq i8 %spec.select.i.i, 0
  br i1 %tobool13.not37.i.i, label %if.end2.i.i.mxser_receive_chars.exit_crit_edge, label %if.end2.i.i.while.body.i.i_crit_edge

if.end2.i.i.while.body.i.i_crit_edge:             ; preds = %if.end2.i.i
  br label %while.body.i.i

if.end2.i.i.mxser_receive_chars.exit_crit_edge:   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_receive_chars.exit

while.body.i.i:                                   ; preds = %if.end26.i.i.while.body.i.i_crit_edge, %if.end2.i.i.while.body.i.i_crit_edge
  %dec38.in.i.i = phi i8 [ %dec38.i.i, %if.end26.i.i.while.body.i.i_crit_edge ], [ %spec.select.i.i, %if.end2.i.i.while.body.i.i_crit_edge ]
  %dec38.i.i = add i8 %dec38.in.i.i, -1
  %44 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ioaddr.i, align 4
  %and17.i.i = and i32 %45, 1048575
  %add18.i.i = or i32 %and17.i.i, -18874368
  %46 = inttoptr i32 %add18.i.i to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  %48 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i.i, align 4
  %used.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %used.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp3.i.i.i = icmp slt i32 %51, %53
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %tty_insert_flip_char.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  %flags.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 5
  %54 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %if.then.i.i.i.tty_insert_flip_char.exit.thread.i.i_crit_edge

if.then.i.i.i.tty_insert_flip_char.exit.thread.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tty_insert_flip_char.exit.thread.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 6
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i, i32 %51
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %53
  %56 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %add.ptr.i.i.i.i, align 1
  br label %tty_insert_flip_char.exit.thread.i.i

tty_insert_flip_char.exit.thread.i.i:             ; preds = %if.then8.i.i.i, %if.then.i.i.i.tty_insert_flip_char.exit.thread.i.i_crit_edge
  %57 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %49, i32 0, i32 6
  %add.ptr.i26.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %58
  %59 = ptrtoint ptr %add.ptr.i26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %47, ptr %add.ptr.i26.i.i.i, align 1
  br label %if.end26.i.i

tty_insert_flip_char.exit.i.i:                    ; preds = %while.body.i.i
  %call13.i.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %arrayidx, i8 noundef zeroext %47, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then25.i.i, label %tty_insert_flip_char.exit.i.i.if.end26.i.i_crit_edge

tty_insert_flip_char.exit.i.i.if.end26.i.i_crit_edge: ; preds = %tty_insert_flip_char.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %tty_insert_flip_char.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %buf_overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_overrun.i.i, align 4
  %inc.i.i = add i32 %61, 1
  store i32 %inc.i.i, ptr %buf_overrun.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then25.i.i, %tty_insert_flip_char.exit.i.i.if.end26.i.i_crit_edge, %tty_insert_flip_char.exit.thread.i.i
  %tobool13.not.i.i = icmp eq i8 %dec38.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end26.i.i.mxser_receive_chars.exit_crit_edge, label %if.end26.i.i.while.body.i.i_crit_edge

if.end26.i.i.while.body.i.i_crit_edge:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end26.i.i.mxser_receive_chars.exit_crit_edge:  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_receive_chars.exit

do.body.i.i:                                      ; preds = %if.end78.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %max.0.i.i = phi i32 [ %dec.i.i, %if.end78.i.i.do.body.i.i_crit_edge ], [ 256, %do.body.i.i.preheader ]
  %ignored.0.i.i = phi i32 [ %ignored.1.i.i, %if.end78.i.i.do.body.i.i_crit_edge ], [ 0, %do.body.i.i.preheader ]
  %status.addr.0.i.i = phi i8 [ %116, %if.end78.i.i.do.body.i.i_crit_edge ], [ %status.addr.0.i.i.ph, %do.body.i.i.preheader ]
  %dec.i.i = add nsw i32 %max.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.0.i.i)
  %cmp.i12.i = icmp slt i32 %max.0.i.i, 0
  br i1 %cmp.i12.i, label %do.body.i.i.mxser_receive_chars.exit_crit_edge, label %if.end.i.i

do.body.i.i.mxser_receive_chars.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_receive_chars.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  %62 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ioaddr.i, align 4
  %and.i.i = and i32 %63, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %64 = inttoptr i32 %add1.i.i to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %66 = and i8 %status.addr.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool4.not.i.i = icmp eq i8 %66, 0
  %or.cond.i13.i = select i1 %tobool44.not.i, i1 true, i1 %tobool4.not.i.i
  br i1 %or.cond.i13.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %do.body6.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

do.body6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %FCR.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %FCR.i.i, align 1
  %69 = or i8 %68, 2
  %70 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ioaddr.i, align 4
  %add10.i.i = add i32 %71, 2
  %and11.i.i = and i32 %add10.i.i, 1048575
  %add12.i.i = or i32 %and11.i.i, -18874368
  %72 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %69) #8, !srcloc !78
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %do.body6.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %73 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %read_status_mask.i, align 4
  %and17119.i.i = and i8 %74, %status.addr.0.i.i
  %conv19.i.i = zext i8 %and17119.i.i to i32
  %75 = ptrtoint ptr %ignore_status_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ignore_status_mask.i.i, align 1
  %and21120.i.i = and i8 %and17119.i.i, %76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and21120.i.i)
  %tobool22.not.i.i = icmp eq i8 %and21120.i.i, 0
  br i1 %tobool22.not.i.i, label %if.else.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end14.i.i
  %inc.i14.i = add i32 %ignored.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i14.i)
  %cmp24.i.i = icmp sgt i32 %inc.i14.i, 100
  br i1 %cmp24.i.i, label %if.then23.i.i.mxser_receive_chars.exit_crit_edge, label %if.then23.i.i.if.end75.i.i_crit_edge

if.then23.i.i.if.end75.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i.i

if.then23.i.i.mxser_receive_chars.exit_crit_edge: ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_receive_chars.exit

if.else.i.i:                                      ; preds = %if.end14.i.i
  %and29.i.i = and i32 %conv19.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.else.i.i.land.lhs.true.i.i.i_crit_edge, label %if.then31.i.i

if.else.i.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

if.then31.i.i:                                    ; preds = %if.else.i.i
  %and33.i.i = and i32 %conv19.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.else42.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.then31.i.i
  %77 = ptrtoint ptr %brk.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %brk.i.i, align 4
  %inc36.i.i = add i32 %78, 1
  store i32 %inc36.i.i, ptr %brk.i.i, align 4
  %79 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i.i, align 4
  %and38.i.i = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.then35.i.i.if.end67.i.i_crit_edge, label %if.then40.i.i

if.then35.i.i.if.end67.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i

if.then40.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @do_SAK(ptr noundef nonnull %call8.i) #8
  br label %if.end67.i.i

if.else42.i.i:                                    ; preds = %if.then31.i.i
  %and44.i.i = and i32 %conv19.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i)
  %tobool45.not.i.i = icmp eq i32 %and44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.else49.i.i, label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %parity.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %parity.i.i, align 4
  %inc48.i.i = add i32 %82, 1
  store i32 %inc48.i.i, ptr %parity.i.i, align 4
  br label %if.end67.i.i

if.else49.i.i:                                    ; preds = %if.else42.i.i
  %and51.i.i = and i32 %conv19.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i.i)
  %tobool52.not.i.i = icmp eq i32 %and51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.else56.i.i, label %if.then53.i.i

if.then53.i.i:                                    ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %frame.i.i, align 4
  %inc55.i.i = add i32 %84, 1
  store i32 %inc55.i.i, ptr %frame.i.i, align 4
  br label %if.end67.i.i

if.else56.i.i:                                    ; preds = %if.else49.i.i
  %and58.i.i = and i32 %conv19.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i = icmp eq i32 %and58.i.i, 0
  br i1 %tobool59.not.i.i, label %if.else56.i.i.land.lhs.true.i.i.i_crit_edge, label %if.then60.i.i

if.else56.i.i.land.lhs.true.i.i.i_crit_edge:      ; preds = %if.else56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i

if.then60.i.i:                                    ; preds = %if.else56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %overrun.i.i, align 4
  %inc62.i.i = add i32 %86, 1
  store i32 %inc62.i.i, ptr %overrun.i.i, align 4
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then60.i.i, %if.then53.i.i, %if.then46.i.i, %if.then40.i.i, %if.then35.i.i.if.end67.i.i_crit_edge
  %flag.0.i.i = phi i8 [ 1, %if.then40.i.i ], [ 1, %if.then35.i.i.if.end67.i.i_crit_edge ], [ 3, %if.then46.i.i ], [ 2, %if.then53.i.i ], [ 4, %if.then60.i.i ]
  %87 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i.i, align 4
  %flags.i.i15.i = getelementptr inbounds %struct.tty_buffer, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %flags.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i.i15.i, align 4
  %and.i.i16.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16.i)
  %tobool.not.i.i17.i = icmp eq i32 %and.i.i16.i, 0
  br i1 %tobool.not.i.i17.i, label %land.lhs.true.i.thread.i.i, label %if.end67.i.i.tty_insert_flip_char.exit.i31.i_crit_edge

if.end67.i.i.tty_insert_flip_char.exit.i31.i_crit_edge: ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tty_insert_flip_char.exit.i31.i

land.lhs.true.i.i.i:                              ; preds = %if.else56.i.i.land.lhs.true.i.i.i_crit_edge, %if.else.i.i.land.lhs.true.i.i.i_crit_edge
  %91 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tail.i.i.i, align 4
  %used.i.i18.i = getelementptr inbounds %struct.tty_buffer, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %used.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %used.i.i18.i, align 4
  %size.i.i19.i = getelementptr inbounds %struct.tty_buffer, ptr %92, i32 0, i32 2
  %95 = ptrtoint ptr %size.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size.i.i19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp3.i.i20.i = icmp slt i32 %94, %96
  br i1 %cmp3.i.i20.i, label %if.then.i.i21.i, label %land.lhs.true.i.i.i.tty_insert_flip_char.exit.i31.i_crit_edge

land.lhs.true.i.i.i.tty_insert_flip_char.exit.i31.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tty_insert_flip_char.exit.i31.i

land.lhs.true.i.thread.i.i:                       ; preds = %if.end67.i.i
  %used.i136.i.i = getelementptr inbounds %struct.tty_buffer, ptr %88, i32 0, i32 1
  %97 = ptrtoint ptr %used.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %used.i136.i.i, align 4
  %size.i137.i.i = getelementptr inbounds %struct.tty_buffer, ptr %88, i32 0, i32 2
  %99 = ptrtoint ptr %size.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size.i137.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp3.i138.i.i = icmp slt i32 %98, %100
  br i1 %cmp3.i138.i.i, label %land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge, label %land.lhs.true.i.thread.i.i.tty_insert_flip_char.exit.i31.i_crit_edge

land.lhs.true.i.thread.i.i.tty_insert_flip_char.exit.i31.i_crit_edge: ; preds = %land.lhs.true.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tty_insert_flip_char.exit.i31.i

land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge: ; preds = %land.lhs.true.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i25.i

if.then.i.i21.i:                                  ; preds = %land.lhs.true.i.i.i
  %flags.i123.i.i = getelementptr inbounds %struct.tty_buffer, ptr %92, i32 0, i32 5
  %101 = ptrtoint ptr %flags.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i123.i.i, align 4
  %and.i124.i.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124.i.i)
  %tobool.not.i125.i.i = icmp eq i32 %and.i124.i.i, 0
  br i1 %tobool.not.i125.i.i, label %if.then.i.i21.i.if.then8.i.i25.i_crit_edge, label %if.then.i.i21.i.tty_insert_flip_char.exit.thread.i29.i_crit_edge

if.then.i.i21.i.tty_insert_flip_char.exit.thread.i29.i_crit_edge: ; preds = %if.then.i.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tty_insert_flip_char.exit.thread.i29.i

if.then.i.i21.i.if.then8.i.i25.i_crit_edge:       ; preds = %if.then.i.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i.i25.i

if.then8.i.i25.i:                                 ; preds = %if.then.i.i21.i.if.then8.i.i25.i_crit_edge, %land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge
  %103 = phi ptr [ %92, %if.then.i.i21.i.if.then8.i.i25.i_crit_edge ], [ %88, %land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge ]
  %flag.0128140147.i.i = phi i8 [ 0, %if.then.i.i21.i.if.then8.i.i25.i_crit_edge ], [ %flag.0.i.i, %land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge ]
  %used.i141146.i.i = phi ptr [ %used.i.i18.i, %if.then.i.i21.i.if.then8.i.i25.i_crit_edge ], [ %used.i136.i.i, %land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge ]
  %104 = phi i32 [ %94, %if.then.i.i21.i.if.then8.i.i25.i_crit_edge ], [ %98, %land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge ]
  %105 = phi i32 [ %96, %if.then.i.i21.i.if.then8.i.i25.i_crit_edge ], [ %100, %land.lhs.true.i.thread.i.i.if.then8.i.i25.i_crit_edge ]
  %data.i.i.i.i22.i = getelementptr inbounds %struct.tty_buffer, ptr %103, i32 0, i32 6
  %add.ptr.i.i.i.i23.i = getelementptr i8, ptr %data.i.i.i.i22.i, i32 %104
  %add.ptr.i.i.i24.i = getelementptr i8, ptr %add.ptr.i.i.i.i23.i, i32 %105
  %106 = ptrtoint ptr %add.ptr.i.i.i24.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %flag.0128140147.i.i, ptr %add.ptr.i.i.i24.i, align 1
  br label %tty_insert_flip_char.exit.thread.i29.i

tty_insert_flip_char.exit.thread.i29.i:           ; preds = %if.then8.i.i25.i, %if.then.i.i21.i.tty_insert_flip_char.exit.thread.i29.i_crit_edge
  %107 = phi ptr [ %92, %if.then.i.i21.i.tty_insert_flip_char.exit.thread.i29.i_crit_edge ], [ %103, %if.then8.i.i25.i ]
  %used.i141145.i.i = phi ptr [ %used.i.i18.i, %if.then.i.i21.i.tty_insert_flip_char.exit.thread.i29.i_crit_edge ], [ %used.i141146.i.i, %if.then8.i.i25.i ]
  %108 = ptrtoint ptr %used.i141145.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %used.i141145.i.i, align 4
  %inc.i.i26.i = add i32 %109, 1
  store i32 %inc.i.i26.i, ptr %used.i141145.i.i, align 4
  %data.i.i.i27.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 6
  %add.ptr.i26.i.i28.i = getelementptr i8, ptr %data.i.i.i27.i, i32 %109
  %110 = ptrtoint ptr %add.ptr.i26.i.i28.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %65, ptr %add.ptr.i26.i.i28.i, align 1
  br label %if.end75.i.i

tty_insert_flip_char.exit.i31.i:                  ; preds = %land.lhs.true.i.thread.i.i.tty_insert_flip_char.exit.i31.i_crit_edge, %land.lhs.true.i.i.i.tty_insert_flip_char.exit.i31.i_crit_edge, %if.end67.i.i.tty_insert_flip_char.exit.i31.i_crit_edge
  %flag.0127.i.i = phi i8 [ 0, %land.lhs.true.i.i.i.tty_insert_flip_char.exit.i31.i_crit_edge ], [ %flag.0.i.i, %if.end67.i.i.tty_insert_flip_char.exit.i31.i_crit_edge ], [ %flag.0.i.i, %land.lhs.true.i.thread.i.i.tty_insert_flip_char.exit.i31.i_crit_edge ]
  %call13.i.i30.i = tail call i32 @__tty_insert_flip_char(ptr noundef %arrayidx, i8 noundef zeroext %65, i8 noundef zeroext %flag.0127.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i30.i)
  %tobool70.not.i.i = icmp eq i32 %call13.i.i30.i, 0
  br i1 %tobool70.not.i.i, label %cleanup.i.i, label %tty_insert_flip_char.exit.i31.i.if.end75.i.i_crit_edge

tty_insert_flip_char.exit.i31.i.if.end75.i.i_crit_edge: ; preds = %tty_insert_flip_char.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i.i

cleanup.i.i:                                      ; preds = %tty_insert_flip_char.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %buf_overrun.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_overrun.i.i, align 4
  %inc73.i.i = add i32 %112, 1
  store i32 %inc73.i.i, ptr %buf_overrun.i.i, align 4
  br label %mxser_receive_chars.exit

if.end75.i.i:                                     ; preds = %tty_insert_flip_char.exit.i31.i.if.end75.i.i_crit_edge, %tty_insert_flip_char.exit.thread.i29.i, %if.then23.i.i.if.end75.i.i_crit_edge
  %ignored.1.i.i = phi i32 [ %inc.i14.i, %if.then23.i.i.if.end75.i.i_crit_edge ], [ %ignored.0.i.i, %tty_insert_flip_char.exit.i31.i.if.end75.i.i_crit_edge ], [ %ignored.0.i.i, %tty_insert_flip_char.exit.thread.i29.i ]
  br i1 %tobool44.not.i, label %if.end78.i.i, label %if.end75.i.i.mxser_receive_chars.exit_crit_edge

if.end75.i.i.mxser_receive_chars.exit_crit_edge:  ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_receive_chars.exit

if.end78.i.i:                                     ; preds = %if.end75.i.i
  %113 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ioaddr.i, align 4
  %add81.i.i = add i32 %114, 5
  %and82.i.i = and i32 %add81.i.i, 1048575
  %add83.i.i = or i32 %and82.i.i, -18874368
  %115 = inttoptr i32 %add83.i.i to ptr
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %115) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %117 = and i8 %116, 1
  %tobool90.not.i.i = icmp eq i8 %117, 0
  br i1 %tobool90.not.i.i, label %if.end78.i.i.mxser_receive_chars.exit_crit_edge, label %if.end78.i.i.do.body.i.i_crit_edge

if.end78.i.i.do.body.i.i_crit_edge:               ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end78.i.i.mxser_receive_chars.exit_crit_edge:  ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_receive_chars.exit

mxser_receive_chars.exit:                         ; preds = %if.end78.i.i.mxser_receive_chars.exit_crit_edge, %if.end75.i.i.mxser_receive_chars.exit_crit_edge, %cleanup.i.i, %if.then23.i.i.mxser_receive_chars.exit_crit_edge, %do.body.i.i.mxser_receive_chars.exit_crit_edge, %if.end26.i.i.mxser_receive_chars.exit_crit_edge, %if.end2.i.i.mxser_receive_chars.exit_crit_edge
  %status.addr.0.i = phi i8 [ %and17119.i.i, %cleanup.i.i ], [ %19, %if.end2.i.i.mxser_receive_chars.exit_crit_edge ], [ %116, %if.end78.i.i.mxser_receive_chars.exit_crit_edge ], [ %and17119.i.i, %if.end75.i.i.mxser_receive_chars.exit_crit_edge ], [ %and17119.i.i, %if.then23.i.i.mxser_receive_chars.exit_crit_edge ], [ %status.addr.0.i.i, %do.body.i.i.mxser_receive_chars.exit_crit_edge ], [ %19, %if.end26.i.i.mxser_receive_chars.exit_crit_edge ]
  tail call void @tty_flip_buffer_push(ptr noundef %arrayidx) #8
  br label %if.end72.i

if.end72.i:                                       ; preds = %mxser_receive_chars.exit, %if.else.i.if.end72.i_crit_edge, %if.then45.i.if.end72.i_crit_edge
  %status.0.i = phi i8 [ %and64128.i, %if.else.i.if.end72.i_crit_edge ], [ %19, %if.then45.i.if.end72.i_crit_edge ], [ %status.addr.0.i, %mxser_receive_chars.exit ]
  %call73.i = tail call fastcc zeroext i8 @mxser_check_modem_status(ptr noundef nonnull %call8.i, ptr noundef %arrayidx) #8
  %118 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %board.i, align 4
  %must_hwid75.i = getelementptr inbounds %struct.mxser_board, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %must_hwid75.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %must_hwid75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool76.not.i = icmp eq i32 %121, 0
  br i1 %tobool76.not.i, label %if.else86.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and5.i)
  %cmp79.i = icmp ne i8 %and5.i, 2
  %122 = and i8 %status.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool83.not.i = icmp eq i8 %122, 0
  %or.cond.i = select i1 %cmp79.i, i1 true, i1 %tobool83.not.i
  br i1 %or.cond.i, label %if.then77.i.mxser_port_isr.exit_crit_edge, label %if.then84.i

if.then77.i.mxser_port_isr.exit_crit_edge:        ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_port_isr.exit

if.then84.i:                                      ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mxser_transmit_chars(ptr noundef nonnull %call8.i, ptr noundef %arrayidx) #8
  br label %mxser_port_isr.exit

if.else86.i:                                      ; preds = %if.end72.i
  %123 = and i8 %status.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool89.not.i = icmp eq i8 %123, 0
  br i1 %tobool89.not.i, label %if.else86.i.mxser_port_isr.exit_crit_edge, label %if.then90.i

if.else86.i.mxser_port_isr.exit_crit_edge:        ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_port_isr.exit

if.then90.i:                                      ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mxser_transmit_chars(ptr noundef nonnull %call8.i, ptr noundef %arrayidx) #8
  br label %mxser_port_isr.exit

mxser_port_isr.exit:                              ; preds = %if.then90.i, %if.else86.i.mxser_port_isr.exit_crit_edge, %if.then84.i, %if.then77.i.mxser_port_isr.exit_crit_edge, %if.then10.i
  tail call void @tty_kref_put(ptr noundef %call8.i) #8
  %call25.not = xor i1 %tobool9.not.i, true
  %inc28 = add nuw nsw i32 %int_cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %int_cnt.0)
  %cmp29 = icmp ult i32 %int_cnt.0, 100
  %or.cond = select i1 %call25.not, i1 %cmp29, i1 false
  br i1 %or.cond, label %mxser_port_isr.exit.do.body_crit_edge, label %mxser_port_isr.exit.do.end_crit_edge

mxser_port_isr.exit.do.end_crit_edge:             ; preds = %mxser_port_isr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

mxser_port_isr.exit.do.body_crit_edge:            ; preds = %mxser_port_isr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %mxser_port_isr.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end19.for.inc_crit_edge
  %inc32 = add nuw nsw i32 %i.066, 1
  %124 = trunc i32 %bits.069 to i8
  %conv35 = or i8 %irqbits.068, %124
  %conv20 = shl nuw nsw i32 %bits.069, 1
  %shl37 = and i32 %conv20, 510
  %exitcond.not = icmp eq i32 %inc32, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %inc = add nuw nsw i32 %inc7181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %inc)
  %exitcond73.not = icmp eq i32 %inc, 101
  br i1 %exitcond73.not, label %for.end.while.end_crit_edge, label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 1, %for.end.while.end_crit_edge ]
  ret i32 %handled.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_carrier_raised(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioaddr, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %call2.lobit = lshr i8 %3, 7
  %4 = zext i8 %call2.lobit to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioaddr, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %2 = inttoptr i32 %add6 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %4 = and i8 %3, -4
  %masksel = select i1 %tobool.not, i8 0, i8 3
  %mcr.0 = or i8 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ioaddr, align 4
  %add19 = add i32 %6, 4
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %7 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %mcr.0) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_shutdown_port(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %IER.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %IER.i, align 1
  %2 = and i8 %1, -5
  store i8 %2, ptr %IER.i, align 1
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.mxser_stop_rx.exit_crit_edge, label %if.then.i

entry.mxser_stop_rx.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxser_stop_rx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = and i8 %1, -22
  %8 = ptrtoint ptr %IER.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %IER.i, align 1
  br label %mxser_stop_rx.exit

mxser_stop_rx.exit:                               ; preds = %if.then.i, %entry.mxser_stop_rx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %IER.i, align 1
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %12, 1
  %and7.i = and i32 %add.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %13 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #8, !srcloc !78
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %xmit_buf = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 15
  %14 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xmit_buf, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %mxser_stop_rx.exit.if.end_crit_edge, label %if.then

mxser_stop_rx.exit.if.end_crit_edge:              ; preds = %mxser_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %mxser_stop_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %15 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #8
  %17 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %xmit_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mxser_stop_rx.exit.if.end_crit_edge
  %18 = ptrtoint ptr %IER.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %IER.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ioaddr.i, align 4
  %add = add i32 %20, 1
  %and = and i32 %add, 1048575
  %add15 = or i32 %and, -18874368
  %21 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #8, !srcloc !78
  %22 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board.i, align 4
  %must_hwid.i42 = getelementptr inbounds %struct.mxser_board, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %must_hwid.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %must_hwid.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i43 = icmp eq i32 %25, 0
  %spec.select.i = select i1 %tobool.not.i43, i8 6, i8 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ioaddr.i, align 4
  %add.i45 = add i32 %27, 2
  %and.i = and i32 %add.i45, 1048575
  %add2.i = or i32 %and.i, -18874368
  %28 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %spec.select.i) #8, !srcloc !78
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ioaddr.i, align 4
  %and19 = and i32 %30, 1048575
  %add20 = or i32 %and19, -18874368
  %31 = inttoptr i32 %add20 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %33 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %board.i, align 4
  %must_hwid = getelementptr inbounds %struct.mxser_board, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %must_hwid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %must_hwid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool24.not = icmp eq i32 %36, 0
  br i1 %tobool24.not, label %if.end.if.end27_crit_edge, label %if.then25

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ioaddr.i, align 4
  %add.i.i.i = add i32 %38, 3
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %39 = inttoptr i32 %add1.i.i.i to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 -65) #8, !srcloc !78
  %add8.i.i.i = add i32 %38, 2
  %and9.i.i.i = and i32 %add8.i.i.i, 1048575
  %add10.i.i.i = or i32 %and9.i.i.i, -18874368
  %41 = inttoptr i32 %add10.i.i.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i = and i8 %42, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %and15.i.i.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %40) #8, !srcloc !78
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end.if.end27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_activate(ptr noundef %port, ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %slock = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 19
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %type = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %flags9 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags9) #8
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #8
  br label %cleanup

if.end11:                                         ; preds = %do.body1
  %2 = inttoptr i32 %call to ptr
  %xmit_buf = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 15
  %3 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %xmit_buf, align 4
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool.not.i, i8 6, i8 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %9, 2
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %spec.select.i) #8, !srcloc !78
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ioaddr.i, align 4
  %add = add i32 %12, 5
  %and = and i32 %add, 1048575
  %add13 = or i32 %and, -18874368
  %13 = inttoptr i32 %add13 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp18 = icmp eq i8 %14, -1
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #8
  %call22 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call22, label %if.then23, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %flags24 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags24) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ioaddr.i, align 4
  %add28 = add i32 %16, 5
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %17 = inttoptr i32 %add30 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ioaddr.i, align 4
  %and37 = and i32 %20, 1048575
  %add38 = or i32 %and37, -18874368
  %21 = inttoptr i32 %add38 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ioaddr.i, align 4
  %add44 = add i32 %24, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %25 = inttoptr i32 %add46 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %27 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ioaddr.i, align 4
  %add52 = add i32 %28, 6
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %29 = inttoptr i32 %add54 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ioaddr.i, align 4
  %add62 = add i32 %32, 3
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %33 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 3) #8, !srcloc !78
  %MCR = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 9
  %34 = ptrtoint ptr %MCR to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %MCR, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %MCR, align 2
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ioaddr.i, align 4
  %add71 = add i32 %38, 4
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %39 = inttoptr i32 %add73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %36) #8, !srcloc !78
  %IER = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 8
  %40 = ptrtoint ptr %IER to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 13, ptr %IER, align 1
  %41 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %board.i, align 4
  %must_hwid = getelementptr inbounds %struct.mxser_board, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %must_hwid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %must_hwid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool75.not = icmp eq i32 %44, 0
  %spec.store.select = select i1 %tobool75.not, i8 13, i8 29
  %45 = ptrtoint ptr %IER to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.store.select, ptr %IER, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %IER, align 1
  %48 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ioaddr.i, align 4
  %add86 = add i32 %49, 1
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %50 = inttoptr i32 %add88 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %47) #8, !srcloc !78
  %51 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ioaddr.i, align 4
  %add92 = add i32 %52, 5
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %53 = inttoptr i32 %add94 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %55 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ioaddr.i, align 4
  %and101 = and i32 %56, 1048575
  %add102 = or i32 %and101, -18874368
  %57 = inttoptr i32 %add102 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %59 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ioaddr.i, align 4
  %add108 = add i32 %60, 2
  %and109 = and i32 %add108, 1048575
  %add110 = or i32 %and109, -18874368
  %61 = inttoptr i32 %add110 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %63 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ioaddr.i, align 4
  %add116 = add i32 %64, 6
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %65 = inttoptr i32 %add118 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %flags122 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags122) #8
  %xmit_tail = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 17
  %67 = ptrtoint ptr %xmit_tail to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %xmit_tail, align 4
  %xmit_head = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 16
  %68 = ptrtoint ptr %xmit_head to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %xmit_head, align 4
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 18
  %69 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %xmit_cnt, align 4
  tail call fastcc void @mxser_change_speed(ptr noundef %tty, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23, %if.then20.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ 0, %if.end25 ], [ 0, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxser_change_speed(ptr noundef %tty, ptr noundef %old_termios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #8
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board.i, align 4
  %max_baud.i = getelementptr inbounds %struct.mxser_board, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %max_baud.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_baud.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call.i)
  %cmp.i = icmp ult i32 %9, %call.i
  br i1 %cmp.i, label %mxser_set_baud.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %10 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call.i, label %if.then3.i [
    i32 134, label %if.then2.i
    i32 0, label %if.end.i.if.end10.i_crit_edge
  ]

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef 134, i32 noundef 134) #8
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 921600, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %call.i)
  %cmp4.i = icmp ugt i32 %call.i, 921600
  %spec.store.select.i = select i1 %cmp4.i, i32 1, i32 %div.i
  %div7.i = udiv i32 921600, %spec.store.select.i
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %div7.i, i32 noundef %div7.i) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i, %if.then2.i, %if.end.i.if.end10.i_crit_edge
  %quot.0.i = phi i32 [ 6852, %if.then2.i ], [ %spec.store.select.i, %if.then3.i ], [ %call.i, %if.end.i.if.end10.i_crit_edge ]
  %xmit_fifo_size.i = getelementptr inbounds %struct.mxser_port, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %xmit_fifo_size.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xmit_fifo_size.i, align 2
  %conv.i = zext i8 %12 to i64
  %conv12.i = zext i32 %quot.0.i to i64
  %mul11.i = mul nuw nsw i64 %conv12.i, 1000
  %mul13.i = mul nuw nsw i64 %mul11.i, %conv.i
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7952596333999228919, i64 %mul13.i, i32 0) #12, !srcloc !125
  %asmresult.i.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7952596333999228919, i64 %mul13.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !126
  %asmresult10.i.i = extractvalue { i64, i32 } %14, 0
  %div180418.i = lshr i64 %asmresult10.i.i, 19
  %15 = trunc i64 %div180418.i to i32
  %conv203.i = add i32 %15, 2
  %timeout204.i = getelementptr inbounds %struct.mxser_port, ptr %5, i32 0, i32 12
  %16 = ptrtoint ptr %timeout204.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv203.i, ptr %timeout204.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quot.0.i)
  %tobool205.not.i = icmp eq i32 %quot.0.i, 0
  %MCR216.i = getelementptr inbounds %struct.mxser_port, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %MCR216.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %MCR216.i, align 2
  br i1 %tobool205.not.i, label %if.else215.i, label %if.then206.i

if.then206.i:                                     ; preds = %if.end10.i
  %19 = or i8 %18, 1
  %20 = ptrtoint ptr %MCR216.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %MCR216.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %MCR216.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %MCR216.i, align 2
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ioaddr.i, align 4
  %add211.i = add i32 %24, 4
  %and212.i = and i32 %add211.i, 1048575
  %add213.i = or i32 %and212.i, -18874368
  %25 = inttoptr i32 %add213.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #8, !srcloc !78
  %26 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ioaddr.i, align 4
  %add231.i = add i32 %27, 3
  %and232.i = and i32 %add231.i, 1048575
  %add233.i = or i32 %and232.i, -18874368
  %28 = inttoptr i32 %add233.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %30 = or i8 %29, -128
  %31 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ioaddr.i, align 4
  %add244.i = add i32 %32, 3
  %and245.i = and i32 %add244.i, 1048575
  %add246.i = or i32 %and245.i, -18874368
  %33 = inttoptr i32 %add246.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %30) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %conv252.i = trunc i32 %quot.0.i to i8
  %34 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ioaddr.i, align 4
  %and255.i = and i32 %35, 1048575
  %add256.i = or i32 %and255.i, -18874368
  %36 = inttoptr i32 %add256.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv252.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %shr261.i = lshr i32 %quot.0.i, 8
  %conv262.i = trunc i32 %shr261.i to i8
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ioaddr.i, align 4
  %add264.i = add i32 %38, 1
  %and265.i = and i32 %add264.i, 1048575
  %add266.i = or i32 %and265.i, -18874368
  %39 = inttoptr i32 %add266.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %conv262.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ioaddr.i, align 4
  %add272.i = add i32 %41, 3
  %and273.i = and i32 %add272.i, 1048575
  %add274.i = or i32 %and273.i, -18874368
  %42 = inttoptr i32 %add274.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %29) #8, !srcloc !78
  %43 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %c_cflag, align 4
  %and276.i = and i32 %44, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and276.i)
  %cmp277.i = icmp eq i32 %and276.i, 4096
  br i1 %cmp277.i, label %if.then279.i, label %if.else293.i

if.else215.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = and i8 %18, -2
  %46 = ptrtoint ptr %MCR216.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %MCR216.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %MCR216.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %MCR216.i, align 2
  %ioaddr224.i = getelementptr inbounds %struct.mxser_port, ptr %5, i32 0, i32 2
  %49 = ptrtoint ptr %ioaddr224.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ioaddr224.i, align 4
  %add225.i = add i32 %50, 4
  %and226.i = and i32 %add225.i, 1048575
  %add227.i = or i32 %and226.i, -18874368
  %51 = inttoptr i32 %add227.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #8, !srcloc !78
  br label %if.end5

if.then279.i:                                     ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem280.i = urem i32 921600, %call.i
  %mul281.i = shl nuw nsw i32 %rem280.i, 3
  %mul281.i.frozen = freeze i32 %mul281.i
  %div287.i = udiv i32 %mul281.i.frozen, %call.i
  %52 = mul i32 %div287.i, %call.i
  %rem282.i.decomposed = sub i32 %mul281.i.frozen, %52
  %div283419.i = lshr i32 %call.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem282.i.decomposed, i32 %div283419.i)
  %cmp284.i = icmp ugt i32 %rem282.i.decomposed, %div283419.i
  %inc.i = zext i1 %cmp284.i to i32
  %quot.1.i = add nuw nsw i32 %div287.i, %inc.i
  %53 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ioaddr.i, align 4
  %conv292.i = trunc i32 %quot.1.i to i8
  %add.i.i.i.i = add i32 %54, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %55 = inttoptr i32 %add1.i.i.i.i to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 -65) #8, !srcloc !78
  %add8.i.i.i.i = add i32 %54, 2
  %and9.i.i.i.i = and i32 %add8.i.i.i.i, 1048575
  %add10.i.i.i.i = or i32 %and9.i.i.i.i, -18874368
  %57 = inttoptr i32 %add10.i.i.i.i to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i.i = and i8 %58, 63
  %or41.i.i.i.i = or i8 %and15.i.i.i.i, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %or41.i.i.i.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %add.i.i = add i32 %54, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %59 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv292.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %56) #8, !srcloc !78
  br label %if.end5

if.else293.i:                                     ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ioaddr.i, align 4
  %add.i.i.i420.i = add i32 %61, 3
  %and.i.i.i421.i = and i32 %add.i.i.i420.i, 1048575
  %add1.i.i.i422.i = or i32 %and.i.i.i421.i, -18874368
  %62 = inttoptr i32 %add1.i.i.i422.i to ptr
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 -65) #8, !srcloc !78
  %add8.i.i.i423.i = add i32 %61, 2
  %and9.i.i.i424.i = and i32 %add8.i.i.i423.i, 1048575
  %add10.i.i.i425.i = or i32 %and9.i.i.i424.i, -18874368
  %64 = inttoptr i32 %add10.i.i.i425.i to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i426.i = and i8 %65, 63
  %or41.i.i.i427.i = or i8 %and15.i.i.i426.i, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %or41.i.i.i427.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %add.i428.i = add i32 %61, 4
  %and.i429.i = and i32 %add.i428.i, 1048575
  %add1.i430.i = or i32 %and.i429.i, -18874368
  %66 = inttoptr i32 %add1.i430.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %63) #8, !srcloc !78
  br label %if.end5

mxser_set_baud.exit:                              ; preds = %entry
  %tobool2.not = icmp eq ptr %old_termios, null
  br i1 %tobool2.not, label %mxser_set_baud.exit.if.end5_crit_edge, label %if.then3

mxser_set_baud.exit.if.end5_crit_edge:            ; preds = %mxser_set_baud.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %mxser_set_baud.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @tty_termios_baud_rate(ptr noundef nonnull %old_termios) #8
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %call4, i32 noundef %call4) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %mxser_set_baud.exit.if.end5_crit_edge, %if.else293.i, %if.then279.i, %if.else215.i
  %FCR = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 10
  %67 = ptrtoint ptr %FCR to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %FCR, align 1
  %board = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %board, align 4
  %must_hwid = getelementptr inbounds %struct.mxser_board, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %must_hwid to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %must_hwid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool28.not = icmp eq i32 %71, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %FCR to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 33, ptr %FCR, align 1
  %ioaddr.i281 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %ioaddr.i281 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ioaddr.i281, align 4
  %add.i.i.i = add i32 %74, 3
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %75 = inttoptr i32 %add1.i.i.i to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 -65) #8, !srcloc !78
  %add8.i.i.i = add i32 %74, 2
  %and9.i.i.i = and i32 %add8.i.i.i, 1048575
  %add10.i.i.i = or i32 %and9.i.i.i, -18874368
  %77 = inttoptr i32 %add10.i.i.i to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i = and i8 %78, 63
  %or41.i.i.i = or i8 %and15.i.i.i, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %or41.i.i.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %rx_high_water.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 4
  %79 = ptrtoint ptr %rx_high_water.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rx_high_water.i, align 4
  %81 = ptrtoint ptr %ioaddr.i281 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ioaddr.i281, align 4
  %add.i = add i32 %82, 5
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %83 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %80) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %rx_high_water.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rx_high_water.i, align 4
  %86 = ptrtoint ptr %ioaddr.i281 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ioaddr.i281, align 4
  %add9.i = add i32 %87, 6
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %88 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 %85) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %rx_low_water.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 5
  %89 = ptrtoint ptr %rx_low_water.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rx_low_water.i, align 1
  %91 = ptrtoint ptr %ioaddr.i281 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ioaddr.i281, align 4
  %add17.i = add i32 %92, 4
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %93 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %90) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %ioaddr.i281 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ioaddr.i281, align 4
  %add25.i = add i32 %95, 3
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %96 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %76) #8, !srcloc !78
  br label %if.end65

if.else:                                          ; preds = %if.end5
  %type = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 6
  %97 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type, align 4
  %.off = add i32 %98, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.else.if.end65_crit_edge, label %if.then37

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then37:                                        ; preds = %if.else
  %rx_high_water = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 4
  %99 = ptrtoint ptr %rx_high_water to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rx_high_water, align 4
  %101 = zext i8 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %100, label %sw.default58 [
    i8 1, label %sw.bb43
    i8 4, label %sw.bb48
    i8 8, label %sw.bb53
  ]

sw.bb43:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %FCR to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %FCR, align 1
  br label %if.end65

sw.bb48:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %FCR to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 65, ptr %FCR, align 1
  br label %if.end65

sw.bb53:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %FCR to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -127, ptr %FCR, align 1
  br label %if.end65

sw.default58:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %FCR to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -63, ptr %FCR, align 1
  br label %if.end65

if.end65:                                         ; preds = %sw.default58, %sw.bb53, %sw.bb48, %sw.bb43, %if.else.if.end65_crit_edge, %if.then29
  %IER = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %106 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %IER, align 1
  %108 = and i8 %107, -9
  store i8 %108, ptr %IER, align 1
  %MCR = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %109 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %MCR, align 2
  %111 = and i8 %110, -33
  store i8 %111, ptr %MCR, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool73 = icmp slt i32 %3, 0
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  br i1 %tobool73, label %if.then76, label %tty_port_set_cts_flow.exit

tty_port_set_cts_flow.exit:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %iflags.i) #8
  br label %do.body

if.then76:                                        ; preds = %if.end65
  tail call void @_set_bit(i32 noundef 3, ptr noundef %iflags.i) #8
  %112 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %IER, align 1
  %114 = or i8 %113, 8
  store i8 %114, ptr %IER, align 1
  %type.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 6
  %115 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %116)
  %cmp.i282 = icmp eq i32 %116, 4
  br i1 %cmp.i282, label %if.then76.if.then82_crit_edge, label %mxser_16550A_or_MUST.exit

if.then76.if.then82_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

mxser_16550A_or_MUST.exit:                        ; preds = %if.then76
  %117 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %board, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i.not = icmp eq i32 %120, 0
  br i1 %tobool.i.not, label %if.else87, label %mxser_16550A_or_MUST.exit.if.then82_crit_edge

mxser_16550A_or_MUST.exit.if.then82_crit_edge:    ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

if.then82:                                        ; preds = %mxser_16550A_or_MUST.exit.if.then82_crit_edge, %if.then76.if.then82_crit_edge
  %121 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %MCR, align 2
  %123 = or i8 %122, 32
  store i8 %123, ptr %MCR, align 2
  br label %do.body

if.else87:                                        ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %124 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ioaddr, align 4
  %add = add i32 %125, 6
  %and88 = and i32 %add, 1048575
  %add89 = or i32 %and88, -18874368
  %126 = inttoptr i32 %add89 to ptr
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %126) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call fastcc void @mxser_handle_cts(ptr noundef %tty, ptr noundef %1, i8 noundef zeroext %127)
  br label %do.body

do.body:                                          ; preds = %if.else87, %if.then82, %tty_port_set_cts_flow.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %MCR, align 2
  %ioaddr95 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %130 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ioaddr95, align 4
  %add96 = add i32 %131, 4
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %132 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %129) #8, !srcloc !78
  %neg = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool102 = icmp eq i32 %neg, 0
  br i1 %tobool102, label %if.then106, label %tty_port_set_check_carrier.exit

tty_port_set_check_carrier.exit:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %iflags.i) #8
  br label %do.body112

if.then106:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %iflags.i) #8
  %133 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %IER, align 1
  %135 = or i8 %134, 8
  store i8 %135, ptr %IER, align 1
  br label %do.body112

do.body112:                                       ; preds = %if.then106, %tty_port_set_check_carrier.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %136 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %IER, align 1
  %138 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ioaddr95, align 4
  %add117 = add i32 %139, 1
  %and118 = and i32 %add117, 1048575
  %add119 = or i32 %and118, -18874368
  %140 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 %137) #8, !srcloc !78
  %read_status_mask = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 13
  %141 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 35, ptr %read_status_mask, align 4
  %142 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %termios, align 4
  %and122 = and i32 %143, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %spec.store.select = select i1 %tobool123.not, i8 35, i8 47
  %144 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %spec.store.select, ptr %read_status_mask, align 4
  %145 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %termios, align 4
  %147 = and i32 %146, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %do.body112.if.end143_crit_edge, label %if.then138

do.body112.if.end143_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then138:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %149 = or i8 %spec.store.select, 16
  %150 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %read_status_mask, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %do.body112.if.end143_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 14
  %151 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %ignore_status_mask, align 1
  %152 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %termios, align 4
  %and146 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end143.if.end171_crit_edge, label %if.then148

if.end143.if.end171_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then148:                                       ; preds = %if.end143
  %154 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 16, ptr %ignore_status_mask, align 1
  %155 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %read_status_mask, align 4
  %157 = or i8 %156, 16
  store i8 %157, ptr %read_status_mask, align 4
  %158 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %termios, align 4
  %and159 = and i32 %159, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.then148.if.end171_crit_edge, label %if.then161

if.then148.if.end171_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then161:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 30, ptr %ignore_status_mask, align 1
  %161 = or i8 %156, 30
  %162 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %read_status_mask, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then161, %if.then148.if.end171_crit_edge, %if.end143.if.end171_crit_edge
  %163 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %board, align 4
  %must_hwid173 = getelementptr inbounds %struct.mxser_board, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %must_hwid173 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %must_hwid173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool174.not = icmp eq i32 %166, 0
  br i1 %tobool174.not, label %if.end171.do.body193_crit_edge, label %if.then175

if.end171.do.body193_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body193

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ioaddr95, align 4
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %169 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx, align 1
  %add.i.i.i287 = add i32 %168, 3
  %and.i.i.i288 = and i32 %add.i.i.i287, 1048575
  %add1.i.i.i289 = or i32 %and.i.i.i288, -18874368
  %171 = inttoptr i32 %add1.i.i.i289 to ptr
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %171) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 -65) #8, !srcloc !78
  %add8.i.i.i290 = add i32 %168, 2
  %and9.i.i.i291 = and i32 %add8.i.i.i290, 1048575
  %add10.i.i.i292 = or i32 %and9.i.i.i291, -18874368
  %173 = inttoptr i32 %add10.i.i.i292 to ptr
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %173) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i293 = and i8 %174, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 %and15.i.i.i293) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %add.i294 = add i32 %168, 4
  %and.i295 = and i32 %add.i294, 1048575
  %add1.i = or i32 %and.i295, -18874368
  %175 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 %170) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 %172) #8, !srcloc !78
  %176 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ioaddr95, align 4
  %arrayidx181 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %178 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx181, align 1
  %add.i.i.i296 = add i32 %177, 3
  %and.i.i.i297 = and i32 %add.i.i.i296, 1048575
  %add1.i.i.i298 = or i32 %and.i.i.i297, -18874368
  %180 = inttoptr i32 %add1.i.i.i298 to ptr
  %181 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %180) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 -65) #8, !srcloc !78
  %add8.i.i.i299 = add i32 %177, 2
  %and9.i.i.i300 = and i32 %add8.i.i.i299, 1048575
  %add10.i.i.i301 = or i32 %and9.i.i.i300, -18874368
  %182 = inttoptr i32 %add10.i.i.i301 to ptr
  %183 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %182) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i302 = and i8 %183, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %182, i8 %and15.i.i.i302) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %add.i303 = add i32 %177, 6
  %and.i304 = and i32 %add.i303, 1048575
  %add1.i305 = or i32 %and.i304, -18874368
  %184 = inttoptr i32 %add1.i305 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 %179) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 %181) #8, !srcloc !78
  %185 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ioaddr95, align 4
  %187 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %termios, align 4
  %and185 = lshr i32 %188, 9
  %189 = trunc i32 %and185 to i8
  %190 = and i8 %189, 2
  %add.i.i.i307 = add i32 %186, 3
  %and.i.i.i308 = and i32 %add.i.i.i307, 1048575
  %add1.i.i.i309 = or i32 %and.i.i.i308, -18874368
  %191 = inttoptr i32 %add1.i.i.i309 to ptr
  %192 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %191) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 -65) #8, !srcloc !78
  %add8.i.i.i310 = add i32 %186, 2
  %and9.i.i.i311 = and i32 %add8.i.i.i310, 1048575
  %add10.i.i.i312 = or i32 %and9.i.i.i311, -18874368
  %193 = inttoptr i32 %add10.i.i.i312 to ptr
  %194 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %193) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i313 = and i8 %194, -4
  %or41.i.i.i314 = or i8 %and15.i.i.i313, %190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 %or41.i.i.i314) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 %192) #8, !srcloc !78
  %195 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ioaddr95, align 4
  %197 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %termios, align 4
  %and190 = lshr i32 %198, 9
  %199 = trunc i32 %and190 to i8
  %200 = and i8 %199, 8
  %add.i.i.i316 = add i32 %196, 3
  %and.i.i.i317 = and i32 %add.i.i.i316, 1048575
  %add1.i.i.i318 = or i32 %and.i.i.i317, -18874368
  %201 = inttoptr i32 %add1.i.i.i318 to ptr
  %202 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %201) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %201, i8 -65) #8, !srcloc !78
  %add8.i.i.i319 = add i32 %196, 2
  %and9.i.i.i320 = and i32 %add8.i.i.i319, 1048575
  %add10.i.i.i321 = or i32 %and9.i.i.i320, -18874368
  %203 = inttoptr i32 %add10.i.i.i321 to ptr
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %203) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i322 = and i8 %204, -13
  %or41.i.i.i323 = or i8 %and15.i.i.i322, %200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 %or41.i.i.i323) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %201, i8 %202) #8, !srcloc !78
  br label %do.body193

do.body193:                                       ; preds = %if.then175, %if.end171.do.body193_crit_edge
  %and18 = lshr i32 %3, 5
  %205 = and i32 %and18, 16
  %206 = and i32 %and18, 8
  %and9 = lshr i32 %3, 4
  %207 = and i32 %and9, 7
  %208 = or i32 %207, %206
  %209 = or i32 %208, %205
  %and23 = lshr i32 %3, 25
  %210 = and i32 %and23, 32
  %211 = or i32 %209, %210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %212 = ptrtoint ptr %FCR to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %FCR, align 1
  %214 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %ioaddr95, align 4
  %add198 = add i32 %215, 2
  %and199 = and i32 %add198, 1048575
  %add200 = or i32 %and199, -18874368
  %216 = inttoptr i32 %add200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %216, i8 %213) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %217 = trunc i32 %211 to i8
  %conv205 = xor i8 %217, 16
  %218 = ptrtoint ptr %ioaddr95 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ioaddr95, align 4
  %add207 = add i32 %219, 3
  %and208 = and i32 %add207, 1048575
  %add209 = or i32 %and208, -18874368
  %220 = inttoptr i32 %add209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %220, i8 %conv205) #8, !srcloc !78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxser_handle_cts(ptr noundef %tty, ptr nocapture noundef %info, i8 noundef zeroext %msr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %msr, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %1 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %3 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hw_stopped, align 4
  %type.i = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp eq i32 %5, 4
  br i1 %cmp.i, label %if.then3.if.end_crit_edge, label %mxser_16550A_or_MUST.exit

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mxser_16550A_or_MUST.exit:                        ; preds = %if.then3
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.then5, label %mxser_16550A_or_MUST.exit.if.end_crit_edge

mxser_16550A_or_MUST.exit.if.end_crit_edge:       ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %IER.i = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 8
  %10 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %IER.i, align 1
  %12 = and i8 %11, -3
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %14, 1
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %15 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #8, !srcloc !78
  %16 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %IER.i, align 1
  %18 = or i8 %17, 2
  store i8 %18, ptr %IER.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %IER.i, align 1
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ioaddr.i, align 4
  %add11.i = add i32 %22, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %23 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %20) #8, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then5, %mxser_16550A_or_MUST.exit.if.end_crit_edge, %if.then3.if.end_crit_edge
  tail call void @tty_wakeup(ptr noundef %tty) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %24 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %hw_stopped, align 4
  %type.i22 = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 6
  %25 = ptrtoint ptr %type.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp.i23 = icmp eq i32 %26, 4
  br i1 %cmp.i23, label %if.end10.cleanup_crit_edge, label %mxser_16550A_or_MUST.exit28

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mxser_16550A_or_MUST.exit28:                      ; preds = %if.end10
  %board.i24 = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 1
  %27 = ptrtoint ptr %board.i24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %board.i24, align 4
  %must_hwid.i25 = getelementptr inbounds %struct.mxser_board, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %must_hwid.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %must_hwid.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i26.not = icmp eq i32 %30, 0
  br i1 %tobool.i26.not, label %if.then13, label %mxser_16550A_or_MUST.exit28.cleanup_crit_edge

mxser_16550A_or_MUST.exit28.cleanup_crit_edge:    ; preds = %mxser_16550A_or_MUST.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %mxser_16550A_or_MUST.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %IER.i29 = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 8
  %31 = ptrtoint ptr %IER.i29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %IER.i29, align 1
  %33 = and i8 %32, -3
  store i8 %33, ptr %IER.i29, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %IER.i29 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %IER.i29, align 1
  %ioaddr.i30 = getelementptr inbounds %struct.mxser_port, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %ioaddr.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ioaddr.i30, align 4
  %add.i31 = add i32 %37, 1
  %and3.i = and i32 %add.i31, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %38 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %35) #8, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %mxser_16550A_or_MUST.exit28.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mxser_check_modem_status(ptr noundef %tty, ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioaddr, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %conv = zext i8 %3 to i32
  %and3 = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rng = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rng, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rng, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %and10 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dsr = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsr, align 4
  %inc14 = add i32 %7, 1
  store i32 %inc14, ptr %dsr, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  %and17 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dcd = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcd, align 4
  %inc21 = add i32 %9, 1
  store i32 %inc21, ptr %dcd, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %and24 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %icount27 = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 11
  %10 = ptrtoint ptr %icount27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %icount27, align 4
  %inc28 = add i32 %11, 1
  store i32 %inc28, ptr %icount27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end22.if.end29_crit_edge
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 11
  %12 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %iflags.i, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  %brmerge = select i1 %tobool.i.not, i1 true, i1 %tobool18.not
  %and39 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond = select i1 %brmerge, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %if.end29.if.end44_crit_edge, label %if.then41

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then41:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %open_wait = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end29.if.end44_crit_edge
  %15 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %iflags.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i68.not = icmp eq i32 %17, 0
  br i1 %tobool.i68.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mxser_handle_cts(ptr noundef %tty, ptr noundef %port, i8 noundef zeroext %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxser_transmit_chars(ptr noundef %tty, ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %x_char = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 4
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ioaddr, align 4
  %and = and i32 %5, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %3) #8, !srcloc !78
  %7 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %x_char, align 4
  %tx = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 18
  %10 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xmit_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %12 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stopped, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %14 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %lor.lhs.false6.if.end10_crit_edge, label %land.lhs.true

lor.lhs.false6.if.end10_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false6
  %type.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 6
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.i = icmp eq i32 %17, 4
  br i1 %cmp.i, label %land.lhs.true.if.end10_crit_edge, label %mxser_16550A_or_MUST.exit

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

mxser_16550A_or_MUST.exit:                        ; preds = %land.lhs.true
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 1
  %18 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %mxser_16550A_or_MUST.exit.if.then9_crit_edge, label %mxser_16550A_or_MUST.exit.if.end10_crit_edge

mxser_16550A_or_MUST.exit.if.end10_crit_edge:     ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

mxser_16550A_or_MUST.exit.if.then9_crit_edge:     ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %mxser_16550A_or_MUST.exit.if.then9_crit_edge, %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %IER.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 8
  %22 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %IER.i, align 1
  %24 = and i8 %23, -3
  store i8 %24, ptr %IER.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %IER.i, align 1
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %27 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %28, 1
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %29 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %26) #8, !srcloc !78
  br label %cleanup

if.end10:                                         ; preds = %mxser_16550A_or_MUST.exit.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %lor.lhs.false6.if.end10_crit_edge
  %xmit_fifo_size = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 15
  %30 = ptrtoint ptr %xmit_fifo_size to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %xmit_fifo_size, align 2
  %conv = zext i8 %31 to i32
  %xmit_buf = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 15
  %xmit_tail = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 17
  %ioaddr17 = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 2
  %tx25 = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 11, i32 4
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %if.end10
  %count.0 = phi i32 [ %conv, %if.end10 ], [ %dec32, %do.body11.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xmit_buf, align 4
  %34 = ptrtoint ptr %xmit_tail to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xmit_tail, align 4
  %inc16 = add i32 %35, 1
  store i32 %inc16, ptr %xmit_tail, align 4
  %arrayidx = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %38 = ptrtoint ptr %ioaddr17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ioaddr17, align 4
  %and19 = and i32 %39, 1048575
  %add20 = or i32 %and19, -18874368
  %40 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %37) #8, !srcloc !78
  %41 = ptrtoint ptr %xmit_tail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xmit_tail, align 4
  %and23 = and i32 %42, 4095
  store i32 %and23, ptr %xmit_tail, align 4
  %43 = ptrtoint ptr %tx25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx25, align 4
  %inc26 = add i32 %44, 1
  store i32 %inc26, ptr %tx25, align 4
  %45 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xmit_cnt, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr %xmit_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool28.not = icmp ne i32 %dec, 0
  %dec32 = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0)
  %cmp = icmp ugt i32 %count.0, 1
  %or.cond = select i1 %tobool28.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body11.do.body11_crit_edge, label %do.end34

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

do.end34:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %dec)
  %cmp36 = icmp ult i32 %dec, 256
  br i1 %cmp36, label %if.then38, label %do.end34.if.end39_crit_edge

do.end34.if.end39_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then38:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_wakeup(ptr noundef %tty) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %do.end34.if.end39_crit_edge
  %47 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %xmit_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool41.not = icmp eq i32 %48, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %IER.i63 = getelementptr inbounds %struct.mxser_port, ptr %port, i32 0, i32 8
  %49 = ptrtoint ptr %IER.i63 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %IER.i63, align 1
  %51 = and i8 %50, -3
  store i8 %51, ptr %IER.i63, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %IER.i63 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %IER.i63, align 1
  %54 = ptrtoint ptr %ioaddr17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ioaddr17, align 4
  %add.i65 = add i32 %55, 1
  %and3.i66 = and i32 %add.i65, 1048575
  %add4.i67 = or i32 %and3.i66, -18874368
  %56 = inttoptr i32 %add4.i67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %53) #8, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end39.cleanup_crit_edge, %if.then9, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_open(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data, align 4
  %call = tail call i32 @tty_port_open(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_close(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 37
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_write(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %xmit_head = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_cnt, align 4
  %sub160 = sub i32 4095, %3
  %4 = ptrtoint ptr %xmit_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xmit_head, align 4
  %sub261 = sub i32 4096, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub160, i32 %sub261)
  %7 = tail call i32 @llvm.smin.i32(i32 %count, i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp962 = icmp slt i32 %7, 1
  br i1 %cmp962, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %xmit_buf = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 15
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %8 = phi i32 [ %7, %if.end.lr.ph ], [ %22, %if.end.if.end_crit_edge ]
  %9 = phi i32 [ %5, %if.end.lr.ph ], [ %20, %if.end.if.end_crit_edge ]
  %buf.addr.065 = phi ptr [ %buf, %if.end.lr.ph ], [ %add.ptr22, %if.end.if.end_crit_edge ]
  %count.addr.064 = phi i32 [ %count, %if.end.lr.ph ], [ %sub23, %if.end.if.end_crit_edge ]
  %total.063 = phi i32 [ 0, %if.end.lr.ph ], [ %add24, %if.end.if.end_crit_edge ]
  %10 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xmit_buf, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %9
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.065, i32 %8)
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %13 = ptrtoint ptr %xmit_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xmit_head, align 4
  %add = add i32 %14, %8
  %and = and i32 %add, 4095
  store i32 %and, ptr %xmit_head, align 4
  %15 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xmit_cnt, align 4
  %add20 = add i32 %16, %8
  store i32 %add20, ptr %xmit_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call14) #8
  %add.ptr22 = getelementptr i8, ptr %buf.addr.065, i32 %8
  %sub23 = sub i32 %count.addr.064, %8
  %add24 = add i32 %8, %total.063
  %17 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xmit_cnt, align 4
  %sub1 = sub i32 4095, %18
  %19 = ptrtoint ptr %xmit_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xmit_head, align 4
  %sub2 = sub i32 4096, %20
  %21 = tail call i32 @llvm.umin.i32(i32 %sub1, i32 %sub2)
  %22 = tail call i32 @llvm.smin.i32(i32 %sub23, i32 %21)
  %cmp9 = icmp slt i32 %22, 1
  br i1 %cmp9, label %if.end.while.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %total.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add24, %if.end.while.end_crit_edge ]
  %.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %18, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool.not = icmp eq i32 %.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end33_crit_edge, label %land.lhs.true

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %while.end
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %stopped, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %land.lhs.true
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %25 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool28.not = icmp eq i32 %26, 0
  br i1 %tobool28.not, label %if.then27.if.then31_crit_edge, label %lor.lhs.false

if.then27.if.then31_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.then27
  %type.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp.i = icmp eq i32 %28, 4
  br i1 %cmp.i, label %lor.lhs.false.if.then31_crit_edge, label %mxser_16550A_or_MUST.exit

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

mxser_16550A_or_MUST.exit:                        ; preds = %lor.lhs.false
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not = icmp eq i32 %32, 0
  br i1 %tobool.i.not, label %mxser_16550A_or_MUST.exit.if.end33_crit_edge, label %mxser_16550A_or_MUST.exit.if.then31_crit_edge

mxser_16550A_or_MUST.exit.if.then31_crit_edge:    ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

mxser_16550A_or_MUST.exit.if.end33_crit_edge:     ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %mxser_16550A_or_MUST.exit.if.then31_crit_edge, %lor.lhs.false.if.then31_crit_edge, %if.then27.if.then31_crit_edge
  %slock.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %IER.i.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %IER.i.i, align 1
  %35 = and i8 %34, -3
  %ioaddr.i.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ioaddr.i.i, align 4
  %add.i.i = add i32 %37, 1
  %and2.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %38 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %35) #8, !srcloc !78
  %39 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %IER.i.i, align 1
  %41 = or i8 %40, 2
  store i8 %41, ptr %IER.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %IER.i.i, align 1
  %44 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ioaddr.i.i, align 4
  %add11.i.i = add i32 %45, 1
  %and12.i.i = and i32 %add11.i.i, 1048575
  %add13.i.i = or i32 %and12.i.i, -18874368
  %46 = inttoptr i32 %add13.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %43) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %mxser_16550A_or_MUST.exit.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %while.end.if.end33_crit_edge
  ret i32 %total.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_put_char(ptr nocapture noundef readonly %tty, i8 noundef zeroext %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %3)
  %cmp = icmp ugt i32 %3, 4094
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %xmit_buf = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xmit_buf, align 4
  %xmit_head = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %xmit_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xmit_head, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %xmit_head, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %ch, ptr %arrayidx, align 1
  %9 = load i32, ptr %xmit_head, align 4
  %and = and i32 %9, 4095
  store i32 %and, ptr %xmit_head, align 4
  %10 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xmit_cnt, align 4
  %inc8 = add i32 %11, 1
  store i32 %inc8, ptr %xmit_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body1 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_flush_chars(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stopped, align 4, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %6 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false2.if.end_crit_edge, label %land.lhs.true

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %type.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i = icmp eq i32 %9, 4
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %mxser_16550A_or_MUST.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mxser_16550A_or_MUST.exit:                        ; preds = %land.lhs.true
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %mxser_16550A_or_MUST.exit.cleanup_crit_edge, label %mxser_16550A_or_MUST.exit.if.end_crit_edge

mxser_16550A_or_MUST.exit.if.end_crit_edge:       ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mxser_16550A_or_MUST.exit.cleanup_crit_edge:      ; preds = %mxser_16550A_or_MUST.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mxser_16550A_or_MUST.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge
  %slock.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %IER.i.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %IER.i.i, align 1
  %16 = and i8 %15, -3
  %ioaddr.i.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ioaddr.i.i, align 4
  %add.i.i = add i32 %18, 1
  %and2.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %19 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #8, !srcloc !78
  %20 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %IER.i.i, align 1
  %22 = or i8 %21, 2
  store i8 %22, ptr %IER.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %IER.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %IER.i.i, align 1
  %25 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ioaddr.i.i, align 4
  %add11.i.i = add i32 %26, 1
  %and12.i.i = and i32 %add11.i.i, 1048575
  %add13.i.i = or i32 %and12.i.i, -18874368
  %27 = inttoptr i32 %add13.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %24) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mxser_16550A_or_MUST.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxser_write_room(ptr nocapture noundef readonly %tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_cnt, align 4
  %sub1 = sub i32 4095, %3
  %4 = tail call i32 @llvm.smax.i32(i32 %sub1, i32 0)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxser_chars_in_buffer(ptr nocapture noundef readonly %tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_cnt, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1090
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %cmd, label %land.lhs.true [
    i32 1091, label %entry.if.then_crit_edge
    i32 1090, label %entry.if.then_crit_edge165
    i32 21596, label %entry.do.body9_crit_edge
  ]

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

entry.if.then_crit_edge165:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge165
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %rem.i = srem i32 %5, 4
  %mul.i = shl nsw i32 %rem.i, 1
  %board.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board.i, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup38_crit_edge

if.then.cleanup38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end.i:                                         ; preds = %if.then
  br i1 %cmp, label %if.then1.i, label %if.end24.i

if.then1.i:                                       ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1212) #8
  %10 = tail call i32 @llvm.read_register.i32(metadata !67) #8
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !154
  %and.i.i = and i32 %12, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #8, !srcloc !157
  %asmresult.i = extractvalue { i32, i32 } %13, 0
  %asmresult2.i = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool4.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then1.i.cleanup38_crit_edge

if.then1.i.cleanup38_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end6.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult2.i)
  %tobool7.not.i = icmp ult i32 %asmresult2.i, 4
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end6.i.cleanup38_crit_edge

if.end6.i.cleanup38_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %slock.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %slock.i) #8
  %opmode_ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %opmode_ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opmode_ioaddr.i, align 4
  %and10.i = and i32 %15, 1048575
  %add.i = or i32 %and10.i, -18874368
  %16 = inttoptr i32 %add.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  %shl.i = shl i32 3, %mul.i
  %18 = trunc i32 %shl.i to i8
  %19 = xor i8 %18, -1
  %conv15.i = and i8 %17, %19
  %shl16.i = shl i32 %asmresult2.i, %mul.i
  %20 = trunc i32 %shl16.i to i8
  %conv18.i = or i8 %conv15.i, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %opmode_ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %opmode_ioaddr.i, align 4
  %and20.i = and i32 %22, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %23 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv18.i) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irq(ptr noundef %slock.i) #8
  br label %cleanup38

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %slock25.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %slock25.i) #8
  %opmode_ioaddr27.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %opmode_ioaddr27.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opmode_ioaddr27.i, align 4
  %and28.i = and i32 %25, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %26 = inttoptr i32 %add29.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %conv33.i = zext i8 %27 to i32
  %shr.i = lshr i32 %conv33.i, %mul.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %slock25.i) #8
  %and36.i = and i32 %shr.i, 3
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1232) #8
  %28 = tail call i32 @llvm.read_register.i32(metadata !67) #8
  %and.i.i.i65.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i65.i to ptr
  %cpu_domain.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66.i) #6, !srcloc !154
  %and.i67.i = and i32 %30, -13
  %or.i68.i = or i32 %and.i67.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68.i) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %and36.i, i32 -1226833921) #8, !srcloc !161
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  br label %cleanup38

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %if.end6, label %land.lhs.true.cleanup38_crit_edge

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end6:                                          ; preds = %land.lhs.true
  %35 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %if.end6.cleanup38_crit_edge [
    i32 21593, label %sw.bb
    i32 21596, label %if.end6.do.body9_crit_edge
  ]

if.end6.do.body9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

if.end6.cleanup38_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %slock.i60 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i60) #8
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ioaddr.i, align 4
  %add.i61 = add i32 %37, 5
  %and.i = and i32 %add.i61, 1048575
  %add5.i = or i32 %and.i, -18874368
  %38 = inttoptr i32 %add5.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i60, i32 noundef %call2.i) #8
  %40 = lshr i8 %39, 6
  %.lobit.i = and i8 %40, 1
  %41 = zext i8 %.lobit.i to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1127) #8
  %42 = tail call i32 @llvm.read_register.i32(metadata !67) #8
  %and.i.i.i.i62 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i62 to ptr
  %cpu_domain.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i63) #6, !srcloc !154
  %and.i.i64 = and i32 %44, -13
  %or.i.i65 = or i32 %and.i.i64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i65) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %41, i32 -1226833921) #8, !srcloc !163
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #8, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  br label %cleanup38

do.body9:                                         ; preds = %if.end6.do.body9_crit_edge, %entry.do.body9_crit_edge
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %icount = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %46)
  %cnow.sroa.0.0.copyload = load i32, ptr %icount, align 4
  %cnow.sroa.8.0.icount.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 1
  %47 = ptrtoint ptr %cnow.sroa.8.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %47)
  %cnow.sroa.8.0.copyload = load i32, ptr %cnow.sroa.8.0.icount.sroa_idx, align 4
  %cnow.sroa.12.0.icount.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %cnow.sroa.12.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %cnow.sroa.12.0.copyload = load i32, ptr %cnow.sroa.12.0.icount.sroa_idx, align 4
  %cnow.sroa.16.0.icount.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 3
  %49 = ptrtoint ptr %cnow.sroa.16.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %cnow.sroa.16.0.copyload = load i32, ptr %cnow.sroa.16.0.icount.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call12) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1265) #8
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %50 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %50)
  %cnow.sroa.0.0.copyload.i = load i32, ptr %icount, align 4
  %51 = ptrtoint ptr %cnow.sroa.8.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %cnow.sroa.6.0.copyload.i = load i32, ptr %cnow.sroa.8.0.icount.sroa_idx, align 4
  %52 = ptrtoint ptr %cnow.sroa.12.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %cnow.sroa.7.0.copyload.i = load i32, ptr %cnow.sroa.12.0.icount.sroa_idx, align 4
  %53 = ptrtoint ptr %cnow.sroa.16.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %cnow.sroa.8.0.copyload.i = load i32, ptr %cnow.sroa.16.0.icount.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2.i67) #8
  %and.i68 = and i32 %arg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i = icmp eq i32 %and.i68, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload.i, i32 %cnow.sroa.12.0.copyload)
  %cmp7.not.i = icmp eq i32 %cnow.sroa.7.0.copyload.i, %cnow.sroa.12.0.copyload
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp7.not.i
  br i1 %or.cond, label %lor.lhs.false.i, label %do.body9.cleanup38_crit_edge

do.body9.cleanup38_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

lor.lhs.false.i:                                  ; preds = %do.body9
  %and9.i = and i32 %arg, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.6.0.copyload.i, i32 %cnow.sroa.8.0.copyload)
  %cmp13.not.i = icmp eq i32 %cnow.sroa.6.0.copyload.i, %cnow.sroa.8.0.copyload
  %or.cond130 = select i1 %tobool10.not.i, i1 true, i1 %cmp13.not.i
  br i1 %or.cond130, label %lor.lhs.false15.i, label %lor.lhs.false.i.cleanup38_crit_edge

lor.lhs.false.i.cleanup38_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %and16.i = and i32 %arg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.8.0.copyload.i, i32 %cnow.sroa.16.0.copyload)
  %cmp20.not.i = icmp eq i32 %cnow.sroa.8.0.copyload.i, %cnow.sroa.16.0.copyload
  %or.cond131 = select i1 %tobool17.not.i, i1 true, i1 %cmp20.not.i
  br i1 %or.cond131, label %lor.rhs.i, label %lor.lhs.false15.i.cleanup38_crit_edge

lor.lhs.false15.i.cleanup38_crit_edge:            ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

lor.rhs.i:                                        ; preds = %lor.lhs.false15.i
  %and22.i = and i32 %arg, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.0.0.copyload.i, i32 %cnow.sroa.0.0.copyload)
  %cmp25.i.not = icmp eq i32 %cnow.sroa.0.0.copyload.i, %cnow.sroa.0.0.copyload
  %or.cond135 = select i1 %tobool23.not.i, i1 true, i1 %cmp25.i.not
  br i1 %or.cond135, label %if.then23, label %lor.rhs.i.cleanup38_crit_edge

lor.rhs.i.cleanup38_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.then23:                                        ; preds = %lor.rhs.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %54 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 9
  %call25139 = call i32 @prepare_to_wait_event(ptr noundef %delta_msr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call2.i71140 = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %55 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %55)
  %cnow.sroa.0.0.copyload.i73141 = load i32, ptr %icount, align 4
  %56 = ptrtoint ptr %cnow.sroa.8.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %56)
  %cnow.sroa.6.0.copyload.i75142 = load i32, ptr %cnow.sroa.8.0.icount.sroa_idx, align 4
  %57 = ptrtoint ptr %cnow.sroa.12.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %cnow.sroa.7.0.copyload.i77143 = load i32, ptr %cnow.sroa.12.0.icount.sroa_idx, align 4
  %58 = ptrtoint ptr %cnow.sroa.16.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %58)
  %cnow.sroa.8.0.copyload.i79144 = load i32, ptr %cnow.sroa.16.0.icount.sroa_idx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2.i71140) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload.i77143, i32 %cnow.sroa.7.0.copyload.i)
  %cmp7.not.i84145 = icmp eq i32 %cnow.sroa.7.0.copyload.i77143, %cnow.sroa.7.0.copyload.i
  %or.cond132146 = select i1 %tobool.not.i, i1 true, i1 %cmp7.not.i84145
  br i1 %or.cond132146, label %if.then23.lor.lhs.false.i88_crit_edge, label %if.then23.for.end_crit_edge

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then23.lor.lhs.false.i88_crit_edge:            ; preds = %if.then23
  br label %lor.lhs.false.i88

lor.lhs.false.i88:                                ; preds = %cleanup.lor.lhs.false.i88_crit_edge, %if.then23.lor.lhs.false.i88_crit_edge
  %cnow.sroa.8.0.copyload.i79154 = phi i32 [ %cnow.sroa.8.0.copyload.i79, %cleanup.lor.lhs.false.i88_crit_edge ], [ %cnow.sroa.8.0.copyload.i79144, %if.then23.lor.lhs.false.i88_crit_edge ]
  %cnow.sroa.7.0.copyload.i77153 = phi i32 [ %cnow.sroa.7.0.copyload.i77, %cleanup.lor.lhs.false.i88_crit_edge ], [ %cnow.sroa.7.0.copyload.i77143, %if.then23.lor.lhs.false.i88_crit_edge ]
  %cnow.sroa.6.0.copyload.i75152 = phi i32 [ %cnow.sroa.6.0.copyload.i75, %cleanup.lor.lhs.false.i88_crit_edge ], [ %cnow.sroa.6.0.copyload.i75142, %if.then23.lor.lhs.false.i88_crit_edge ]
  %cnow.sroa.0.0.copyload.i73151 = phi i32 [ %cnow.sroa.0.0.copyload.i73, %cleanup.lor.lhs.false.i88_crit_edge ], [ %cnow.sroa.0.0.copyload.i73141, %if.then23.lor.lhs.false.i88_crit_edge ]
  %call25150 = phi i32 [ %call25, %cleanup.lor.lhs.false.i88_crit_edge ], [ %call25139, %if.then23.lor.lhs.false.i88_crit_edge ]
  %cnow.sroa.16.0149 = phi i32 [ %cnow.sroa.8.0.copyload.i79154, %cleanup.lor.lhs.false.i88_crit_edge ], [ %cnow.sroa.8.0.copyload.i, %if.then23.lor.lhs.false.i88_crit_edge ]
  %cnow.sroa.8.0148 = phi i32 [ %cnow.sroa.6.0.copyload.i75152, %cleanup.lor.lhs.false.i88_crit_edge ], [ %cnow.sroa.6.0.copyload.i, %if.then23.lor.lhs.false.i88_crit_edge ]
  %cnow.sroa.0.0147 = phi i32 [ %cnow.sroa.0.0.copyload.i73151, %cleanup.lor.lhs.false.i88_crit_edge ], [ %cnow.sroa.0.0.copyload.i, %if.then23.lor.lhs.false.i88_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.6.0.copyload.i75152, i32 %cnow.sroa.8.0148)
  %cmp13.not.i90 = icmp eq i32 %cnow.sroa.6.0.copyload.i75152, %cnow.sroa.8.0148
  %or.cond133 = select i1 %tobool10.not.i, i1 true, i1 %cmp13.not.i90
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.8.0.copyload.i79154, i32 %cnow.sroa.16.0149)
  %cmp20.not.i96 = icmp eq i32 %cnow.sroa.8.0.copyload.i79154, %cnow.sroa.16.0149
  %or.cond134 = select i1 %tobool17.not.i, i1 true, i1 %cmp20.not.i96
  %or.cond158 = select i1 %or.cond133, i1 %or.cond134, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.0.0.copyload.i73151, i32 %cnow.sroa.0.0147)
  %cmp25.i101.not = icmp eq i32 %cnow.sroa.0.0.copyload.i73151, %cnow.sroa.0.0147
  %or.cond136 = select i1 %tobool23.not.i, i1 true, i1 %cmp25.i101.not
  %or.cond159 = select i1 %or.cond158, i1 %or.cond136, i1 false
  br i1 %or.cond159, label %if.end29, label %lor.lhs.false.i88.for.end_crit_edge

lor.lhs.false.i88.for.end_crit_edge:              ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end29:                                         ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25150)
  %tobool30.not = icmp eq i32 %call25150, 0
  br i1 %tobool30.not, label %cleanup, label %if.end29.__out_crit_edge

if.end29.__out_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end29
  call void @schedule() #8
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %delta_msr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call2.i71 = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %59 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %59)
  %cnow.sroa.0.0.copyload.i73 = load i32, ptr %icount, align 4
  %60 = ptrtoint ptr %cnow.sroa.8.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %60)
  %cnow.sroa.6.0.copyload.i75 = load i32, ptr %cnow.sroa.8.0.icount.sroa_idx, align 4
  %61 = ptrtoint ptr %cnow.sroa.12.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %cnow.sroa.7.0.copyload.i77 = load i32, ptr %cnow.sroa.12.0.icount.sroa_idx, align 4
  %62 = ptrtoint ptr %cnow.sroa.16.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %cnow.sroa.8.0.copyload.i79 = load i32, ptr %cnow.sroa.16.0.icount.sroa_idx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2.i71) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload.i77, i32 %cnow.sroa.7.0.copyload.i77153)
  %cmp7.not.i84 = icmp eq i32 %cnow.sroa.7.0.copyload.i77, %cnow.sroa.7.0.copyload.i77153
  %or.cond132 = select i1 %tobool.not.i, i1 true, i1 %cmp7.not.i84
  br i1 %or.cond132, label %cleanup.lor.lhs.false.i88_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.lor.lhs.false.i88_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i88

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false.i88.for.end_crit_edge, %if.then23.for.end_crit_edge
  call void @finish_wait(ptr noundef %delta_msr_wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end29.__out_crit_edge
  %__ret24.1125 = phi i32 [ 0, %for.end ], [ %call25150, %if.end29.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup38

cleanup38:                                        ; preds = %__out, %lor.rhs.i.cleanup38_crit_edge, %lor.lhs.false15.i.cleanup38_crit_edge, %lor.lhs.false.i.cleanup38_crit_edge, %do.body9.cleanup38_crit_edge, %sw.bb, %if.end6.cleanup38_crit_edge, %land.lhs.true.cleanup38_crit_edge, %if.end24.i, %if.end9.i, %if.end6.i.cleanup38_crit_edge, %if.then1.i.cleanup38_crit_edge, %if.then.cleanup38_crit_edge
  %retval.0 = phi i32 [ %45, %sw.bb ], [ -5, %land.lhs.true.cleanup38_crit_edge ], [ %__ret24.1125, %__out ], [ -515, %if.end6.cleanup38_crit_edge ], [ 0, %if.end9.i ], [ %31, %if.end24.i ], [ -14, %if.then.cleanup38_crit_edge ], [ -14, %if.then1.i.cleanup38_crit_edge ], [ -22, %if.end6.i.cleanup38_crit_edge ], [ 0, %lor.lhs.false15.i.cleanup38_crit_edge ], [ 0, %lor.lhs.false.i.cleanup38_crit_edge ], [ 0, %do.body9.cleanup38_crit_edge ], [ 0, %lor.rhs.i.cleanup38_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_set_termios(ptr noundef %tty, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  tail call fastcc void @mxser_change_speed(ptr noundef %tty, ptr noundef %old_termios)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #8
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %c_cflag6 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool8.not = icmp sgt i32 %5, -1
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %6 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hw_stopped, align 4
  tail call void @mxser_start(ptr noundef %tty)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old_termios, align 4
  %and9 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end35_crit_edge, label %land.lhs.true11

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true11:                                  ; preds = %if.end
  %termios12 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %9 = ptrtoint ptr %termios12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %termios12, align 4
  %and14 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true11.if.end35_crit_edge

land.lhs.true11.if.end35_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then16:                                        ; preds = %land.lhs.true11
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %stopped, align 4
  %board = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board, align 4
  %must_hwid = getelementptr inbounds %struct.mxser_board, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %must_hwid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %must_hwid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %if.then16.if.end34_crit_edge, label %do.body20

if.then16.if.end34_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.body20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ioaddr, align 4
  %add.i.i.i = add i32 %17, 3
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %18 = inttoptr i32 %add1.i.i.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 -65) #8, !srcloc !78
  %add8.i.i.i = add i32 %17, 2
  %and9.i.i.i = and i32 %add8.i.i.i, 1048575
  %add10.i.i.i = or i32 %and9.i.i.i, -18874368
  %20 = inttoptr i32 %add10.i.i.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and15.i.i.i = and i8 %21, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %and15.i.i.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %19) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call28) #8
  br label %if.end34

if.end34:                                         ; preds = %do.body20, %if.then16.if.end34_crit_edge
  tail call void @mxser_start(ptr noundef %tty)
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %land.lhs.true11.if.end35_crit_edge, %if.end.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %entry
  %board = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %must_hwid = getelementptr inbounds %struct.mxser_board, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %must_hwid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %must_hwid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %IER = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %IER, align 1
  %10 = and i8 %9, -18
  store i8 %10, ptr %IER, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %IER, align 1
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ioaddr, align 4
  %add = add i32 %14, 1
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %15 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #8, !srcloc !78
  br label %if.end29

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %x_char = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %x_char, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %ioaddr12 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ioaddr12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ioaddr12, align 4
  %add13 = add i32 %20, 1
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %21 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #8, !srcloc !78
  %IER17 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %IER17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %IER17, align 1
  %24 = or i8 %23, 2
  store i8 %24, ptr %IER17, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %IER17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %IER17, align 1
  %27 = ptrtoint ptr %ioaddr12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ioaddr12, align 4
  %add25 = add i32 %28, 1
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %29 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %26) #8, !srcloc !78
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then2, %entry.if.end29_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %tobool32.not = icmp sgt i32 %31, -1
  br i1 %tobool32.not, label %if.end29.if.end46_crit_edge, label %if.then33

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %MCR = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %MCR, align 2
  %34 = and i8 %33, -3
  store i8 %34, ptr %MCR, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %MCR, align 2
  %ioaddr41 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %ioaddr41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ioaddr41, align 4
  %add42 = add i32 %38, 4
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %39 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %36) #8, !srcloc !78
  br label %if.end46

if.end46:                                         ; preds = %if.then33, %if.end29.if.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then:                                          ; preds = %entry
  %x_char = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %x_char, align 4
  br label %if.end35

if.else:                                          ; preds = %if.then
  %board = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board, align 4
  %must_hwid = getelementptr inbounds %struct.mxser_board, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %must_hwid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %must_hwid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %IER = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %IER, align 1
  %13 = or i8 %12, 17
  store i8 %13, ptr %IER, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %IER, align 1
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ioaddr, align 4
  %add = add i32 %17, 1
  %and8 = and i32 %add, 1048575
  %add9 = or i32 %and8, -18874368
  %18 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #8, !srcloc !78
  br label %if.end35

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %x_char, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %ioaddr16 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %ioaddr16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ioaddr16, align 4
  %add17 = add i32 %23, 1
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %24 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #8, !srcloc !78
  %IER21 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %IER21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %IER21, align 1
  %27 = or i8 %26, 2
  store i8 %27, ptr %IER21, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %IER21 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %IER21, align 1
  %30 = ptrtoint ptr %ioaddr16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ioaddr16, align 4
  %add30 = add i32 %31, 1
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %32 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %29) #8, !srcloc !78
  br label %if.end35

if.end35:                                         ; preds = %if.else10, %if.then5, %if.then2, %entry.if.end35_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool38.not = icmp sgt i32 %34, -1
  br i1 %tobool38.not, label %if.end35.if.end52_crit_edge, label %if.then39

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %MCR = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %MCR, align 2
  %37 = or i8 %36, 2
  store i8 %37, ptr %MCR, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %MCR, align 2
  %ioaddr47 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %ioaddr47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ioaddr47, align 4
  %add48 = add i32 %41, 4
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %42 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %39) #8, !srcloc !78
  br label %if.end52

if.end52:                                         ; preds = %if.then39, %if.end35.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_stop(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %IER = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %IER, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i8 %3, -3
  %6 = ptrtoint ptr %IER to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %IER, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %IER to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %IER, align 1
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %10, 1
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %11 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %8) #8, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_start(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmit_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %IER.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %IER.i, align 1
  %6 = and i8 %5, -3
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %8, 1
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %9 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #8, !srcloc !78
  %10 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %IER.i, align 1
  %12 = or i8 %11, 2
  store i8 %12, ptr %IER.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %IER.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %IER.i, align 1
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ioaddr.i, align 4
  %add11.i = add i32 %16, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %17 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #8, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_hangup(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %slock.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  %xmit_tail.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %xmit_tail.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xmit_tail.i, align 4
  %xmit_head.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %xmit_head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %xmit_head.i, align 4
  %xmit_cnt.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %xmit_cnt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %xmit_cnt.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %FCR.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %FCR.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %FCR.i, align 1
  %7 = or i8 %6, 6
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %9, 2
  %and.i = and i32 %add.i, 1048575
  %add11.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %7) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #8
  tail call void @tty_wakeup(ptr noundef %tty) #8
  tail call void @tty_port_hangup(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_rs_break(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ioaddr, align 4
  %add = add i32 %3, 3
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %4 = inttoptr i32 %add5 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp9 = icmp eq i32 %break_state, -1
  %6 = and i8 %5, -65
  %masksel = select i1 %cmp9, i8 64, i8 0
  %lcr.0 = or i8 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ioaddr, align 4
  %add20 = add i32 %8, 3
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %9 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %lcr.0) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_flush_buffer(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %xmit_tail = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %xmit_tail to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xmit_tail, align 4
  %xmit_head = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %xmit_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %xmit_head, align 4
  %xmit_cnt = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %xmit_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %xmit_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %FCR = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %FCR to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %FCR, align 1
  %7 = or i8 %6, 6
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ioaddr, align 4
  %add = add i32 %9, 2
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %10 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %7) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #8
  tail call void @tty_wakeup(ptr noundef %tty) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxser_wait_until_sent(ptr nocapture noundef readonly %tty, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %xmit_fifo_size = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %xmit_fifo_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xmit_fifo_size, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1 = icmp eq i8 %5, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = zext i8 %5 to i32
  %timeout5 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %timeout5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout5, align 4
  %sub = add i32 %7, -2
  %div = udiv i32 %sub, %conv
  %div8 = udiv i32 %div, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div)
  %8 = icmp ult i32 %div, 5
  %spec.store.select = select i1 %8, i32 1, i32 %div8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %timeout)
  %cmp13 = icmp ugt i32 %spec.store.select, %timeout
  %or.cond = select i1 %tobool.not.not, i1 %cmp13, i1 false
  %char_time.0 = select i1 %or.cond, i32 %timeout, i32 %spec.store.select
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %char_time.0) #8
  br i1 %tobool.not, label %if.end4.if.then21_crit_edge, label %lor.lhs.false

if.end4.if.then21_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end4
  %9 = ptrtoint ptr %timeout5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout5, align 4
  %mul = shl i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %timeout)
  %cmp19 = icmp ult i32 %mul, %timeout
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end4.if.then21_crit_edge
  %11 = ptrtoint ptr %timeout5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout5, align 4
  %mul23 = shl i32 %12, 1
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %lor.lhs.false.if.end24_crit_edge
  %timeout.addr.0 = phi i32 [ %mul23, %if.then21 ], [ %timeout, %lor.lhs.false.if.end24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, %timeout.addr.0
  %slock.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %ioaddr.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end31.while.cond_crit_edge, %if.end24
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #8
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ioaddr.i, align 4
  %add.i = add i32 %15, 5
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add5.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #8
  %18 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call26 = tail call i32 @msleep_interruptible(i32 noundef %call) #8
  %19 = tail call i32 @llvm.read_register.i32(metadata !67) #8
  %and.i54 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i54 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i55 = icmp eq i32 %27, 0
  br i1 %tobool.not.i55, label %signal_pending.exit, label %while.body.cleanup_crit_edge, !prof !176

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %while.body
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and1.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool29.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool29.not, label %if.end31, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %signal_pending.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub32 = sub i32 %add, %30
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end31.while.cond_crit_edge

if.end31.while.cond_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31.cleanup_crit_edge, %signal_pending.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_tiocmget(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %MCR = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %MCR, align 2
  %call6 = tail call fastcc zeroext i8 @mxser_check_modem_status(ptr noundef %tty, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #8
  %conv8 = zext i8 %6 to i32
  %and = shl nuw nsw i32 %conv8, 1
  %or = and i32 %and, 6
  %conv13 = zext i8 %call6 to i32
  %and14 = lshr i32 %conv13, 1
  %7 = and i32 %and14, 64
  %or17 = or i32 %7, %or
  %and19 = shl nuw nsw i32 %conv13, 1
  %8 = and i32 %and19, 128
  %or22 = or i32 %or17, %8
  %and24 = shl nuw nsw i32 %conv13, 3
  %9 = and i32 %and24, 256
  %or27 = or i32 %or22, %9
  %10 = and i32 %and19, 32
  %or32 = or i32 %or27, %10
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or32, %do.body1 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_tiocmset(ptr noundef %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1.if.end9_crit_edge, label %if.then6

do.body1.if.end9_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %MCR = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %MCR to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %MCR, align 2
  %7 = or i8 %6, 2
  store i8 %7, ptr %MCR, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body1.if.end9_crit_edge
  %and10 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %if.then12

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %MCR13 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %MCR13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %MCR13, align 2
  %10 = or i8 %9, 1
  store i8 %10, ptr %MCR13, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end9.if.end17_crit_edge
  %and18 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end25_crit_edge, label %if.then20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %MCR21 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %MCR21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %MCR21, align 2
  %13 = and i8 %12, -3
  store i8 %13, ptr %MCR21, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end17.if.end25_crit_edge
  %and26 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.do.body34_crit_edge, label %if.then28

if.end25.do.body34_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %MCR29 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %MCR29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %MCR29, align 2
  %16 = and i8 %15, -2
  store i8 %16, ptr %MCR29, align 2
  br label %do.body34

do.body34:                                        ; preds = %if.then28, %if.end25.do.body34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %MCR37 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %MCR37 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %MCR37, align 2
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ioaddr, align 4
  %add = add i32 %20, 4
  %and38 = and i32 %add, 1048575
  %add39 = or i32 %and38, -18874368
  %21 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %18) #8, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body34 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_get_icount(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %icount5 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %icount5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %cnow.sroa.0.0.copyload = load i32, ptr %icount5, align 4
  %cnow.sroa.5.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %cnow.sroa.5.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cnow.sroa.5.0.copyload = load i32, ptr %cnow.sroa.5.0.icount5.sroa_idx, align 4
  %cnow.sroa.6.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %cnow.sroa.6.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cnow.sroa.6.0.copyload = load i32, ptr %cnow.sroa.6.0.icount5.sroa_idx, align 4
  %cnow.sroa.7.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %cnow.sroa.7.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cnow.sroa.7.0.copyload = load i32, ptr %cnow.sroa.7.0.icount5.sroa_idx, align 4
  %cnow.sroa.8.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %cnow.sroa.8.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %cnow.sroa.8.0.copyload = load i32, ptr %cnow.sroa.8.0.icount5.sroa_idx, align 4
  %cnow.sroa.9.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 5
  %7 = ptrtoint ptr %cnow.sroa.9.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cnow.sroa.9.0.copyload = load i32, ptr %cnow.sroa.9.0.icount5.sroa_idx, align 4
  %cnow.sroa.10.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 6
  %8 = ptrtoint ptr %cnow.sroa.10.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %cnow.sroa.10.0.copyload = load i32, ptr %cnow.sroa.10.0.icount5.sroa_idx, align 4
  %cnow.sroa.11.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 7
  %9 = ptrtoint ptr %cnow.sroa.11.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %cnow.sroa.11.0.copyload = load i32, ptr %cnow.sroa.11.0.icount5.sroa_idx, align 4
  %cnow.sroa.12.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 8
  %10 = ptrtoint ptr %cnow.sroa.12.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %cnow.sroa.12.0.copyload = load i32, ptr %cnow.sroa.12.0.icount5.sroa_idx, align 4
  %cnow.sroa.13.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 9
  %11 = ptrtoint ptr %cnow.sroa.13.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %cnow.sroa.13.0.copyload = load i32, ptr %cnow.sroa.13.0.icount5.sroa_idx, align 4
  %cnow.sroa.14.0.icount5.sroa_idx = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 11, i32 10
  %12 = ptrtoint ptr %cnow.sroa.14.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %cnow.sroa.14.0.copyload = load i32, ptr %cnow.sroa.14.0.icount5.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #8
  %frame7 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %13 = ptrtoint ptr %frame7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cnow.sroa.10.0.copyload, ptr %frame7, align 4
  %brk8 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %14 = ptrtoint ptr %brk8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cnow.sroa.13.0.copyload, ptr %brk8, align 4
  %overrun9 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 7
  %15 = ptrtoint ptr %overrun9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cnow.sroa.12.0.copyload, ptr %overrun9, align 4
  %buf_overrun10 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 10
  %16 = ptrtoint ptr %buf_overrun10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cnow.sroa.14.0.copyload, ptr %buf_overrun10, align 4
  %parity11 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %17 = ptrtoint ptr %parity11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cnow.sroa.11.0.copyload, ptr %parity11, align 4
  %rx12 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 4
  %18 = ptrtoint ptr %rx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cnow.sroa.9.0.copyload, ptr %rx12, align 4
  %tx13 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 5
  %19 = ptrtoint ptr %tx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cnow.sroa.8.0.copyload, ptr %tx13, align 4
  %20 = ptrtoint ptr %icount to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cnow.sroa.0.0.copyload, ptr %icount, align 4
  %dsr15 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 1
  %21 = ptrtoint ptr %dsr15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cnow.sroa.5.0.copyload, ptr %dsr15, align 4
  %rng16 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 2
  %22 = ptrtoint ptr %rng16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cnow.sroa.6.0.copyload, ptr %rng16, align 4
  %dcd17 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 3
  %23 = ptrtoint ptr %dcd17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cnow.sroa.7.0.copyload, ptr %dcd17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %mutex = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %close_delay3 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %close_delay3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %close_delay3, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #8
  %closing_wait5 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %closing_wait5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %closing_wait5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp.not = icmp eq i32 %5, 65535
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @jiffies_to_msecs(i32 noundef %5) #8
  %div7 = udiv i32 %call6, 10
  %phi.cast = trunc i32 %div7 to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %closing_wait.0 = phi i16 [ %phi.cast, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %div = udiv i32 %call, 10
  %type = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = ptrtoint ptr %ss to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ss, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %line = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 1
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %line, align 4
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ioaddr, align 4
  %port9 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 2
  %14 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port9, align 4
  %board = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %board, align 4
  %irq = getelementptr inbounds %struct.mxser_board, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %irq10 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 3
  %19 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq10, align 4
  %flags = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %flags12 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %22 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flags12, align 4
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %23 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 921600, ptr %baud_base, align 4
  %conv = trunc i32 %div to i16
  %close_delay13 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %24 = ptrtoint ptr %close_delay13 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %close_delay13, align 4
  %closing_wait15 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %25 = ptrtoint ptr %closing_wait15 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %closing_wait.0, ptr %closing_wait15, align 4
  %custom_divisor = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 6
  %26 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 14745600, ptr %custom_divisor, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxser_set_serial_info(ptr noundef %tty, ptr nocapture noundef readonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %board = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board, align 4
  %irq3 = getelementptr inbounds %struct.mxser_board, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not = icmp eq i32 %6, %10
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %port4 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 2
  %11 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port4, align 4
  %ioaddr = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ioaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5.not = icmp eq i32 %12, %14
  br i1 %cmp5.not, label %if.end8, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8:                                          ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %close_delay9 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %17 = ptrtoint ptr %close_delay9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %close_delay9, align 4
  %conv = zext i16 %18 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #8
  %closing_wait11 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 12
  %19 = ptrtoint ptr %closing_wait11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %closing_wait11, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp13.not = icmp eq i16 %20, -1
  br i1 %cmp13.not, label %if.end8.if.end18_crit_edge, label %if.else.i159

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else.i159:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i16 %20 to i32
  %mul16 = mul nuw nsw i32 %conv12, 10
  %call2.i158 = tail call i32 @__msecs_to_jiffies(i32 noundef %mul16) #8
  br label %if.end18

if.end18:                                         ; preds = %if.else.i159, %if.end8.if.end18_crit_edge
  %closing_wait.0 = phi i32 [ 65535, %if.end8.if.end18_crit_edge ], [ %call2.i158, %if.else.i159 ]
  %call19 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call19, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %21 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %22)
  %cmp21.not = icmp eq i32 %22, 921600
  br i1 %cmp21.not, label %lor.lhs.false23, label %if.then20.cleanup.sink.split_crit_edge

if.then20.cleanup.sink.split_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false23:                                  ; preds = %if.then20
  %close_delay24 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %close_delay24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %close_delay24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %24)
  %cmp25.not = icmp eq i32 %call2.i, %24
  br i1 %cmp25.not, label %lor.lhs.false27, label %lor.lhs.false23.cleanup.sink.split_crit_edge

lor.lhs.false23.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %closing_wait28 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 17
  %25 = ptrtoint ptr %closing_wait28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %closing_wait28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %closing_wait.0, i32 %26)
  %cmp29.not = icmp eq i32 %closing_wait.0, %26
  br i1 %cmp29.not, label %lor.lhs.false31, label %lor.lhs.false27.cleanup.sink.split_crit_edge

lor.lhs.false27.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %flags32 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %27 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags32, align 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %31 = xor i32 %28, %30
  %32 = and i32 %31, -13361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp36.not = icmp eq i32 %32, 0
  br i1 %cmp36.not, label %if.end40, label %lor.lhs.false31.cleanup.sink.split_crit_edge

lor.lhs.false31.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end40:                                         ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %flags, align 4
  br label %if.end75

if.else:                                          ; preds = %if.end18
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and47 = and i32 %35, -131072
  %flags48 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %36 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags48, align 4
  %and49 = and i32 %37, 131071
  %or50 = or i32 %and49, %and47
  store i32 %or50, ptr %flags, align 4
  %close_delay52 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %close_delay52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call2.i, ptr %close_delay52, align 4
  %closing_wait53 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 17
  %39 = ptrtoint ptr %closing_wait53 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %closing_wait.0, ptr %closing_wait53, align 4
  %and55 = and i32 %37, 4144
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 48
  br i1 %cmp56, label %land.lhs.true, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

land.lhs.true:                                    ; preds = %if.else
  %baud_base58 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %40 = ptrtoint ptr %baud_base58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %baud_base58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %41)
  %cmp59.not = icmp eq i32 %41, 921600
  br i1 %cmp59.not, label %lor.lhs.false61, label %land.lhs.true.if.then64_crit_edge

land.lhs.true.if.then64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

lor.lhs.false61:                                  ; preds = %land.lhs.true
  %custom_divisor = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 6
  %42 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %custom_divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14745600, i32 %43)
  %cmp62.not = icmp eq i32 %43, 14745600
  br i1 %cmp62.not, label %lor.lhs.false61.if.end73_crit_edge, label %lor.lhs.false61.if.then64_crit_edge

lor.lhs.false61.if.then64_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

lor.lhs.false61.if.end73_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then64:                                        ; preds = %lor.lhs.false61.if.then64_crit_edge, %land.lhs.true.if.then64_crit_edge
  %custom_divisor65 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 6
  %44 = ptrtoint ptr %custom_divisor65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %custom_divisor65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp66 = icmp eq i32 %45, 0
  br i1 %cmp66, label %if.then64.cleanup.sink.split_crit_edge, label %if.end70

if.then64.cleanup.sink.split_crit_edge:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %div = sdiv i32 %41, %45
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %div, i32 noundef %div) #8
  br label %if.end73

if.end73:                                         ; preds = %if.end70, %lor.lhs.false61.if.end73_crit_edge, %if.else.if.end73_crit_edge
  %46 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ss, align 4
  %type74 = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %type74, align 4
  %.off.i = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end73
  %49 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %board, align 4
  %must_hwid.i = getelementptr inbounds %struct.mxser_board, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %must_hwid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %must_hwid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %switch = icmp ult i32 %52, 3
  br i1 %switch, label %if.then7.i, label %for.cond.preheader.i.if.end75_crit_edge

for.cond.preheader.i.if.end75_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %rx_high_water.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %rx_high_water.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %rx_high_water.i, align 4
  %rx_low_water.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %rx_low_water.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %rx_low_water.i, align 1
  br label %cleanup.sink.split.i

if.then7.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_low_water9.i = getelementptr [3 x %struct.anon.75], ptr @Gpci_uart_info, i32 0, i32 %52, i32 3
  %55 = ptrtoint ptr %rx_low_water9.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rx_low_water9.i, align 1
  %rx_low_water10.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %rx_low_water10.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %rx_low_water10.i, align 1
  %rx_high_water12.i = getelementptr [3 x %struct.anon.75], ptr @Gpci_uart_info, i32 0, i32 %52, i32 2
  %58 = ptrtoint ptr %rx_high_water12.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rx_high_water12.i, align 2
  %rx_high_water13.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %rx_high_water13.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %rx_high_water13.i, align 4
  %fifo_size.i = getelementptr [3 x %struct.anon.75], ptr @Gpci_uart_info, i32 0, i32 %52, i32 1
  %61 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %fifo_size.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then7.i, %if.then.i
  %.sink.i = phi i8 [ %62, %if.then7.i ], [ 1, %if.then.i ]
  %xmit_fifo_size15.i = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 15
  %63 = ptrtoint ptr %xmit_fifo_size15.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink.i, ptr %xmit_fifo_size15.i, align 2
  br label %if.end75

if.end75:                                         ; preds = %cleanup.sink.split.i, %for.cond.preheader.i.if.end75_crit_edge, %if.end40
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  %64 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i162.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i162.not, label %if.else92, label %if.then77

if.then77:                                        ; preds = %if.end75
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %68 = xor i32 %67, %16
  %69 = and i32 %68, 4144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp80.not = icmp eq i32 %69, 0
  br i1 %cmp80.not, label %if.then77.cleanup.sink.split_crit_edge, label %do.body83

if.then77.cleanup.sink.split_crit_edge:           ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body83:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %slock = getelementptr inbounds %struct.mxser_port, ptr %1, i32 0, i32 19
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  tail call fastcc void @mxser_change_speed(ptr noundef %tty, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call87) #8
  br label %cleanup.sink.split

if.else92:                                        ; preds = %if.end75
  %call93 = tail call i32 @mxser_activate(ptr noundef %1, ptr noundef %tty)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.else92.cleanup.sink.split_crit_edge

if.else92.cleanup.sink.split_crit_edge:           ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then96:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %iflags.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then96, %if.else92.cleanup.sink.split_crit_edge, %do.body83, %if.then77.cleanup.sink.split_crit_edge, %if.then64.cleanup.sink.split_crit_edge, %lor.lhs.false31.cleanup.sink.split_crit_edge, %lor.lhs.false27.cleanup.sink.split_crit_edge, %lor.lhs.false23.cleanup.sink.split_crit_edge, %if.then20.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -1, %lor.lhs.false31.cleanup.sink.split_crit_edge ], [ -1, %lor.lhs.false27.cleanup.sink.split_crit_edge ], [ -1, %lor.lhs.false23.cleanup.sink.split_crit_edge ], [ -1, %if.then20.cleanup.sink.split_crit_edge ], [ -22, %if.then64.cleanup.sink.split_crit_edge ], [ 0, %do.body83 ], [ 0, %if.then77.cleanup.sink.split_crit_edge ], [ 0, %if.then96 ], [ %call93, %if.else92.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !47, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__UNIQUE_ID_author240, !1, !"__UNIQUE_ID_author240", i1 false, i1 false}
!1 = !{!"../drivers/tty/mxser.c", i32 249, i32 1}
!2 = !{ptr @__UNIQUE_ID_description241, !3, !"__UNIQUE_ID_description241", i1 false, i1 false}
!3 = !{!"../drivers/tty/mxser.c", i32 250, i32 1}
!4 = !{ptr @__param_ttymajor, !5, !"__param_ttymajor", i1 false, i1 false}
!5 = !{!"../drivers/tty/mxser.c", i32 251, i32 1}
!6 = !{ptr @__UNIQUE_ID_ttymajortype242, !5, !"__UNIQUE_ID_ttymajortype242", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/tty/mxser.c", i32 252, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_mxser__249_1969_mxser_module_init6, !11, !"__initcall__kmod_mxser__249_1969_mxser_module_init6", i1 false, i1 false}
!11 = !{!"../drivers/tty/mxser.c", i32 1969, i32 1}
!12 = !{ptr @__exitcall_mxser_module_exit, !13, !"__exitcall_mxser_module_exit", i1 false, i1 false}
!13 = !{!"../drivers/tty/mxser.c", i32 1970, i32 1}
!14 = !{ptr @mxvar_sdriver, !15, !"mxvar_sdriver", i1 false, i1 false}
!15 = !{!"../drivers/tty/mxser.c", i32 298, i32 27}
!16 = !{ptr @__param_str_ttymajor, !5, !"__param_str_ttymajor", i1 false, i1 false}
!17 = !{ptr @ttymajor, !18, !"ttymajor", i1 false, i1 false}
!18 = !{!"../drivers/tty/mxser.c", i32 245, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/mxser.c", i32 1916, i32 10}
!21 = !{ptr @mxser_driver, !22, !"mxser_driver", i1 false, i1 false}
!22 = !{!"../drivers/tty/mxser.c", i32 1915, i32 26}
!23 = !{ptr @mxser_pcibrds, !24, !"mxser_pcibrds", i1 false, i1 false}
!24 = !{!"../drivers/tty/mxser.c", i32 214, i32 35}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/mxser.c", i32 1829, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mxser_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @mxser_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/mxser.c", i32 1845, i32 3}
!35 = !{ptr @mxser_probe._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mxser_probe._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/mxser.c", i32 1851, i32 39}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/mxser.c", i32 1861, i32 39}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/mxser.c", i32 1874, i32 3}
!43 = !{ptr @mxser_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mxser_probe._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mxser_boards, !46, !"mxser_boards", i1 false, i1 false}
!46 = !{!"../drivers/tty/mxser.c", i32 297, i32 8}
!47 = !{ptr @mxser_initbrd.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/tty/mxser.c", i32 1809, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @Gpci_uart_info, !51, !"Gpci_uart_info", i1 false, i1 false}
!51 = !{!"../drivers/tty/mxser.c", i32 204, i32 3}
!52 = !{ptr @mxser_port_ops, !53, !"mxser_port_ops", i1 false, i1 false}
!53 = !{!"../drivers/tty/mxser.c", i32 1750, i32 41}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/mxser.c", i32 1932, i32 24}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/mxser.c", i32 1943, i32 3}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mxser_module_init._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mxser_module_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/mxser.c", i32 1950, i32 3}
!63 = !{ptr @mxser_module_init._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mxser_module_init._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mxser_ops, !66, !"mxser_ops", i1 false, i1 false}
!66 = !{!"../drivers/tty/mxser.c", i32 1725, i32 36}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2154784334}
!78 = !{i64 4690655}
!79 = !{i64 4691050}
!80 = !{i64 2154778642}
!81 = !{i64 2154778861}
!82 = !{i64 2154779272}
!83 = !{i64 2154779491}
!84 = !{i64 2154779829}
!85 = !{i64 2154784724}
!86 = !{i64 2154784931}
!87 = !{i64 2154780179}
!88 = !{i64 2154780517}
!89 = !{i64 2154785321}
!90 = !{i64 2154785533}
!91 = !{i64 2154783757}
!92 = !{i64 2154783973}
!93 = !{i64 2154878891}
!94 = !{i64 2154879232}
!95 = !{i64 2154880310}
!96 = !{i64 2154880120}
!97 = !{i64 2154878242}
!98 = !{i64 2154876574}
!99 = !{i64 2154877128}
!100 = !{i64 2154877548}
!101 = !{i64 2154874157}
!102 = !{i64 2154874457}
!103 = !{i64 2154874752}
!104 = !{i64 2154874994}
!105 = !{i64 2154875468}
!106 = !{i64 2154789394}
!107 = !{i64 2154791199}
!108 = !{i64 2154791436}
!109 = !{i64 2154808876}
!110 = !{i64 2154810892}
!111 = !{i64 2154802600}
!112 = !{i64 2154811312}
!113 = !{i64 2154804959}
!114 = !{i64 2154805348}
!115 = !{i64 2154805643}
!116 = !{i64 2154805938}
!117 = !{i64 2154806233}
!118 = !{i64 2154806458}
!119 = !{i64 2154806818}
!120 = !{i64 2154807188}
!121 = !{i64 2154807608}
!122 = !{i64 2154807903}
!123 = !{i64 2154808198}
!124 = !{i64 2154808493}
!125 = !{i64 749390, i64 749417, i64 749439, i64 749467}
!126 = !{i64 749798, i64 749825, i64 749858, i64 749879, i64 749906, i64 749932}
!127 = !{i64 2154796961}
!128 = !{i64 2154797736}
!129 = !{i64 2154797968}
!130 = !{i64 2154798320}
!131 = !{i64 2154798670}
!132 = !{i64 2154799015}
!133 = !{i64 2154797316}
!134 = !{i64 2154783003}
!135 = !{i64 2154783341}
!136 = !{i64 2154781565}
!137 = !{i64 2154781934}
!138 = !{i64 2154782302}
!139 = !{i64 2154782652}
!140 = !{i64 2154799738}
!141 = !{i64 2154799963}
!142 = !{i64 2154800334}
!143 = !{i64 2154780862}
!144 = !{i64 2154781200}
!145 = !{i64 2154801395}
!146 = !{i64 2154801740}
!147 = !{i64 2154786755}
!148 = !{i64 2154787110}
!149 = !{i64 2154787821}
!150 = !{i64 2154802160}
!151 = !{i64 2154875701}
!152 = !{i8 0, i8 2}
!153 = !{i64 2154876080}
!154 = !{i64 5685882}
!155 = !{i64 5686079}
!156 = !{i64 2153171312}
!157 = !{i64 2154851255, i64 2154851535, i64 2154851869, i64 2154852203}
!158 = !{i64 2154855146}
!159 = !{i64 2154855368}
!160 = !{i64 2154855795}
!161 = !{i64 2154861703, i64 2154861983, i64 2154862317, i64 2154862651}
!162 = !{i64 2154832281}
!163 = !{i64 2154838174, i64 2154838454, i64 2154838788, i64 2154839122}
!164 = !{i64 2154867192}
!165 = !{i64 2154867569}
!166 = !{i64 2154867924}
!167 = !{i64 2154868372}
!168 = !{i64 2154868850}
!169 = !{i64 2154869228}
!170 = !{i64 2154869583}
!171 = !{i64 2154870031}
!172 = !{i64 2154813085}
!173 = !{i64 2154873489}
!174 = !{i64 2154873718}
!175 = !{i64 2154872430}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2154842126}
