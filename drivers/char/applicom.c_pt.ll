; ModuleID = '/llk/IR_all_yes/drivers/char/applicom.c_pt.bc'
source_filename = "../drivers/char/applicom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.applicom_board = type { i32, ptr, %struct.wait_queue_head, i32, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.st_ram_io = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [2 x i8], [4 x i8], i8, i8, i8, i8, [32 x i8] }
%struct.mailbox = type { i16, i16, i16, [4 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, [12 x i8], [256 x i8] }
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
%struct.rb_root = type { ptr }
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

@__UNIQUE_ID_author236 = internal constant [57 x i8] c"applicom.author=David Woodhouse & Applicom International\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [55 x i8] c"applicom.description=Driver for Applicom Profibus card\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [36 x i8] c"applicom.file=drivers/char/applicom\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [21 x i8] c"applicom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias240 = internal constant [33 x i8] c"applicom.alias=char-major-10-157\00", section ".modinfo", align 1
@__param_str_irq = internal constant [13 x i8] c"applicom.irq\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 2, %union.anon.65 { ptr @irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype241 = internal constant [27 x i8] c"applicom.parmtype=irq:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq242 = internal constant [44 x i8] c"applicom.parm=irq:IRQ of the Applicom board\00", section ".modinfo", align 1
@__param_str_mem = internal constant [13 x i8] c"applicom.mem\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@mem = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mem = internal constant %struct.kernel_param { ptr @__param_str_mem, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 2, %union.anon.65 { ptr @mem } }, section "__param", align 4
@__UNIQUE_ID_memtype243 = internal constant [28 x i8] c"applicom.parmtype=mem:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_mem244 = internal constant [58 x i8] c"applicom.parm=mem:Shared Memory Address of Applicom board\00", section ".modinfo", align 1
@ac_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 157, ptr @.str, ptr @ac_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@apbs = internal global { [8 x %struct.applicom_board], [192 x i8] } zeroinitializer, align 32
@dummy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_applicom__245_349_applicom_init6 = internal global ptr @applicom_init, section ".initcall6.init", align 4
@__exitcall_applicom_exit = internal global ptr @applicom_exit, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ac\00", [29 x i8] zeroinitializer }, align 32
@ac_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ac_read, ptr @ac_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ac_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014Hmmm. read() of Applicom card, length %zd != expected %zd\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ac_read\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/char/applicom.c\00", [40 x i8] zeroinitializer }, align 32
@ac_read._entry_ptr = internal global ptr @ac_read._entry, section ".printk_index", align 4
@FlagSleepRec = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @FlagSleepRec, i64 44), ptr getelementptr (i8, ptr @FlagSleepRec, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@Dummy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ac_read._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014APPLICOM driver read error board %d, DataToPcReady = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ac_read._entry_ptr.8 = internal global ptr @ac_read._entry.6, section ".printk_index", align 4
@DeviceErrorCount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FlagSleepRec.lock\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ac_write.warncount = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@ac_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016Hmmm. write() of Applicom card, length %zd != expected %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ac_write\00", [23 x i8] zeroinitializer }, align 32
@ac_write._entry_ptr = internal global ptr @ac_write._entry, section ".printk_index", align 4
@ac_write._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014APPLICOM driver write error board %d, DataFromPcReady = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ac_write._entry_ptr.17 = internal global ptr @ac_write._entry.15, section ".printk_index", align 4
@ac_ioctl.warncount = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@ac_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ac_mutex, i64 52), ptr getelementptr (i8, ptr @ac_mutex, i64 52) }, ptr @ac_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ac_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016APPLICOM driver release .... V2.8.0 ($Revision: 1.30 $)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ac_ioctl\00", [23 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr = internal global ptr @ac_ioctl._entry, section ".printk_index", align 4
@ac_ioctl._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Number of installed boards . %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.24 = internal global ptr @ac_ioctl._entry.22, section ".printk_index", align 4
@numboards = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ac_ioctl._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Segment of board ........... %X\0A\00", [61 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.27 = internal global ptr @ac_ioctl._entry.25, section ".printk_index", align 4
@ac_ioctl._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Interrupt IRQ number ....... %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.30 = internal global ptr @ac_ioctl._entry.28, section ".printk_index", align 4
@ac_ioctl._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Prom version board %d ....... V%d.%d %s\00", [54 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.33 = internal global ptr @ac_ioctl._entry.31, section ".printk_index", align 4
@ac_ioctl._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.3, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" S/N %d\0A\00", [23 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.36 = internal global ptr @ac_ioctl._entry.34, section ".printk_index", align 4
@ac_ioctl._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.3, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.39 = internal global ptr @ac_ioctl._entry.37, section ".printk_index", align 4
@ac_ioctl._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.21, ptr @.str.3, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016DeviceErrorCount ........... %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.42 = internal global ptr @ac_ioctl._entry.40, section ".printk_index", align 4
@ac_ioctl._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.21, ptr @.str.3, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ReadErrorCount ............. %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.45 = internal global ptr @ac_ioctl._entry.43, section ".printk_index", align 4
@ac_ioctl._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.21, ptr @.str.3, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016WriteErrorCount ............ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.48 = internal global ptr @ac_ioctl._entry.46, section ".printk_index", align 4
@ac_ioctl._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.21, ptr @.str.3, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Process in read pending\0A\00", [37 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.51 = internal global ptr @ac_ioctl._entry.49, section ".printk_index", align 4
@ac_ioctl._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.21, ptr @.str.3, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016Process in write pending board %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.54 = internal global ptr @ac_ioctl._entry.52, section ".printk_index", align 4
@ac_ioctl._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.21, ptr @.str.3, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014APPLICOM driver IOCTL, bad board number %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ac_ioctl._entry_ptr.57 = internal global ptr @ac_ioctl._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ac_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ac_mutex\00", [23 x i8] zeroinitializer }, align 32
@applicom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016Applicom driver: $Id: ac.c,v 1.30 2000/03/22 16:03:57 dwmw2 Exp $\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"applicom_init\00", [18 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr = internal global ptr @applicom_init._entry, section ".printk_index", align 4
@applicom_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5001, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5001, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5001, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@applicom_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016ac.o: Failed to ioremap PCI memory space at 0x%llx\0A\00", [42 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.64 = internal global ptr @applicom_init._entry.62, section ".printk_index", align 4
@applicom_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016Applicom %s found at mem 0x%llx, irq %d\0A\00", [53 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.67 = internal global ptr @applicom_init._entry.65, section ".printk_index", align 4
@applicom_pci_devnames = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.105, ptr @.str.106, ptr @.str.107], [20 x i8] zeroinitializer }, align 32
@applicom_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.3, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016ac.o: PCI Applicom device doesn't have correct signature.\0A\00", [35 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.70 = internal global ptr @applicom_init._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Applicom PCI\00", [19 x i8] zeroinitializer }, align 32
@applicom_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.61, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016Could not allocate IRQ %d for PCI Applicom device.\0A\00", [42 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.74 = internal global ptr @applicom_init._entry.72, section ".printk_index", align 4
@applicom_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.61, ptr @.str.3, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ac.o: No PCI boards found.\0A\00", [34 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.77 = internal global ptr @applicom_init._entry.75, section ".printk_index", align 4
@applicom_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.61, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016ac.o: For an ISA board you must supply memory and irq parameters.\0A\00", [59 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.80 = internal global ptr @applicom_init._entry.78, section ".printk_index", align 4
@applicom_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.61, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ac.o: Failed to ioremap the ISA card's memory space (slot #%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.83 = internal global ptr @applicom_init._entry.81, section ".printk_index", align 4
@applicom_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.61, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015Applicom ISA card found at mem 0x%lx, irq %d\0A\00", [48 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.86 = internal global ptr @applicom_init._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Applicom ISA\00", [19 x i8] zeroinitializer }, align 32
@applicom_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.61, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014Could not allocate IRQ %d for ISA Applicom device.\0A\00", [42 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.90 = internal global ptr @applicom_init._entry.88, section ".printk_index", align 4
@applicom_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.61, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014ac.o: No valid ISA Applicom boards found at mem 0x%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.93 = internal global ptr @applicom_init._entry.91, section ".printk_index", align 4
@applicom_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&FlagSleepRec\00", [18 x i8] zeroinitializer }, align 32
@applicom_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.61, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014ac.o: Unable to register misc device\0A\00", [56 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.97 = internal global ptr @applicom_init._entry.95, section ".printk_index", align 4
@applicom_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.61, ptr @.str.3, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016Applicom board %d: %s, PROM V%d.%d\00", [59 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.100 = internal global ptr @applicom_init._entry.98, section ".printk_index", align 4
@applicom_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.61, ptr @.str.3, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.102 = internal global ptr @applicom_init._entry.101, section ".printk_index", align 4
@applicom_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.61, ptr @.str.3, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@applicom_init._entry_ptr.104 = internal global ptr @applicom_init._entry.103, section ".printk_index", align 4
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCI board\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI2000IBS / PCI2000CAN\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCI2000PFB\00", [21 x i8] zeroinitializer }, align 32
@ac_register_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014Board #%d (at 0x%lx) is out of range (1 <= x <= %d).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ac_register_board\00", [46 x i8] zeroinitializer }, align 32
@ac_register_board._entry_ptr = internal global ptr @ac_register_board._entry, section ".printk_index", align 4
@ac_register_board._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014Board #%d (at 0x%lx) conflicts with previous board #%d (at 0x%lx)\0A\00", [59 x i8] zeroinitializer }, align 32
@ac_register_board._entry_ptr.112 = internal global ptr @ac_register_board._entry.110, section ".printk_index", align 4
@ac_register_board.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&apbs[boardno].FlagSleepSend\00", [35 x i8] zeroinitializer }, align 32
@ac_register_board.__key.114 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&apbs[boardno].mutex\00", [43 x i8] zeroinitializer }, align 32
@ac_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014APPLICOM driver interrupt err board %d, DataToPcReady = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ac_interrupt\00", [19 x i8] zeroinitializer }, align 32
@ac_interrupt._entry_ptr = internal global ptr @ac_interrupt._entry, section ".printk_index", align 4
@ac_interrupt._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.3, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014APPLICOM driver interrupt err board %d, DataFromPcReady = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ac_interrupt._entry_ptr.120 = internal global ptr @ac_interrupt._entry.118, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.121 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 92, i32 21 }
@___asan_gen_.124 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 93, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"ac_miscdev\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 120, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"apbs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 90, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 126, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 122, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [8 x i8] c"ac_fops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 112, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 547, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"FlagSleepRec\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"Dummy\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 101, i32 31 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 591, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"DeviceErrorCount\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 105, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 102, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 174, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 367, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 369, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 426, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [10 x i8] c"warncount\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 702, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant [9 x i8] c"ac_mutex\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 788, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 789, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [10 x i8] c"numboards\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 100, i32 21 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 790, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 791, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 803, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 815, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 817, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 820, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 822, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 824, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 826, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 829, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 843, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 64, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 191, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"applicom_pci_tbl\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 71, i32 35 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 206, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 213, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [22 x i8] c"applicom_pci_devnames\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 65, i32 14 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 221, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 227, i32 57 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 228, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 249, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 250, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 261, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 271, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 274, i32 53 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 275, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 289, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 293, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 302, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 318, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 328, i32 5 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 330, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 66, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 67, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 68, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 143, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 149, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 158, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 159, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 651, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.443 = private constant [27 x i8] c"../drivers/char/applicom.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 659, i32 5 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_irq242, ptr @__UNIQUE_ID_irqtype241, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_mem244, ptr @__UNIQUE_ID_memtype243, ptr @__exitcall_applicom_exit, ptr @__initcall__kmod_applicom__245_349_applicom_init6, ptr @__param_irq, ptr @__param_mem, ptr @ac_interrupt._entry, ptr @ac_interrupt._entry.118, ptr @ac_interrupt._entry_ptr, ptr @ac_interrupt._entry_ptr.120, ptr @ac_ioctl._entry, ptr @ac_ioctl._entry.22, ptr @ac_ioctl._entry.25, ptr @ac_ioctl._entry.28, ptr @ac_ioctl._entry.31, ptr @ac_ioctl._entry.34, ptr @ac_ioctl._entry.37, ptr @ac_ioctl._entry.40, ptr @ac_ioctl._entry.43, ptr @ac_ioctl._entry.46, ptr @ac_ioctl._entry.49, ptr @ac_ioctl._entry.52, ptr @ac_ioctl._entry.55, ptr @ac_ioctl._entry_ptr, ptr @ac_ioctl._entry_ptr.24, ptr @ac_ioctl._entry_ptr.27, ptr @ac_ioctl._entry_ptr.30, ptr @ac_ioctl._entry_ptr.33, ptr @ac_ioctl._entry_ptr.36, ptr @ac_ioctl._entry_ptr.39, ptr @ac_ioctl._entry_ptr.42, ptr @ac_ioctl._entry_ptr.45, ptr @ac_ioctl._entry_ptr.48, ptr @ac_ioctl._entry_ptr.51, ptr @ac_ioctl._entry_ptr.54, ptr @ac_ioctl._entry_ptr.57, ptr @ac_read._entry, ptr @ac_read._entry.6, ptr @ac_read._entry_ptr, ptr @ac_read._entry_ptr.8, ptr @ac_register_board._entry, ptr @ac_register_board._entry.110, ptr @ac_register_board._entry_ptr, ptr @ac_register_board._entry_ptr.112, ptr @ac_write._entry, ptr @ac_write._entry.15, ptr @ac_write._entry_ptr, ptr @ac_write._entry_ptr.17, ptr @applicom_exit, ptr @applicom_init._entry, ptr @applicom_init._entry.101, ptr @applicom_init._entry.103, ptr @applicom_init._entry.62, ptr @applicom_init._entry.65, ptr @applicom_init._entry.68, ptr @applicom_init._entry.72, ptr @applicom_init._entry.75, ptr @applicom_init._entry.78, ptr @applicom_init._entry.81, ptr @applicom_init._entry.84, ptr @applicom_init._entry.88, ptr @applicom_init._entry.91, ptr @applicom_init._entry.95, ptr @applicom_init._entry.98, ptr @applicom_init._entry_ptr, ptr @applicom_init._entry_ptr.100, ptr @applicom_init._entry_ptr.102, ptr @applicom_init._entry_ptr.104, ptr @applicom_init._entry_ptr.64, ptr @applicom_init._entry_ptr.67, ptr @applicom_init._entry_ptr.70, ptr @applicom_init._entry_ptr.74, ptr @applicom_init._entry_ptr.77, ptr @applicom_init._entry_ptr.80, ptr @applicom_init._entry_ptr.83, ptr @applicom_init._entry_ptr.86, ptr @applicom_init._entry_ptr.90, ptr @applicom_init._entry_ptr.93, ptr @applicom_init._entry_ptr.97, ptr @irq, ptr @mem, ptr @ac_miscdev, ptr @apbs, ptr @dummy, ptr @.str, ptr @ac_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @FlagSleepRec, ptr @Dummy, ptr @.str.7, ptr @DeviceErrorCount, ptr @.str.9, ptr @.str.12, ptr @ac_write.warncount, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @ac_ioctl.warncount, ptr @ac_mutex, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @numboards, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @applicom_pci_tbl, ptr @.str.63, ptr @.str.66, ptr @applicom_pci_devnames, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @applicom_init.__key, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @ac_register_board.__key, ptr @.str.113, ptr @ac_register_board.__key.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apbs to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FlagSleepRec to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Dummy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_read._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DeviceErrorCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_write.warncount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_write._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl.warncount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numboards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_ioctl._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_pci_devnames to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applicom_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_register_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_register_board._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_register_board.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_register_board.__key.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_interrupt._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @applicom_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @misc_deregister(ptr noundef nonnull @ac_miscdev) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %RamIO = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.014, i32 1
  %0 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %RamIO, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %irq = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.014, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef nonnull @dummy) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %4 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %RamIO, align 4
  tail call void @iounmap(ptr noundef %5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @applicom_init() #0 section ".init.text" align 64 {
entry:
  %boardname = alloca [27 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #9
  %call1347 = tail call ptr @pci_get_class(i32 noundef 16711680, ptr noundef null) #6
  %tobool.not348 = icmp eq ptr %call1347, null
  br i1 %tobool.not348, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call1349 = phi ptr [ %call1, %while.cond.backedge.while.body_crit_edge ], [ %call1347, %entry.while.body_crit_edge ]
  %call2 = tail call ptr @pci_match_id(ptr noundef nonnull @applicom_pci_tbl, ptr noundef nonnull %call1349) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %call4 = tail call i32 @pci_enable_device(ptr noundef nonnull %call1349) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup278_crit_edge

if.end.cleanup278_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup278

if.end7:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call1349, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %call8 = tail call ptr @ioremap(i32 noundef %1, i32 noundef 2048) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %do.end22

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %conv = zext i32 %3 to i64
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i64 noundef %conv) #9
  tail call void @pci_disable_device(ptr noundef nonnull %call1349) #6
  br label %cleanup278

do.end22:                                         ; preds = %if.end7
  %device = getelementptr inbounds %struct.pci_dev, ptr %call1349, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv24 = zext i16 %5 to i32
  %sub = add nsw i32 %conv24, -1
  %arrayidx25 = getelementptr [3 x ptr], ptr @applicom_pci_devnames, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx25, align 4
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %conv29 = zext i32 %9 to i64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call1349, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %7, i64 noundef %conv29, i32 noundef %11) #9
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %call34 = tail call fastcc i32 @ac_register_board(i32 noundef %13, ptr noundef nonnull %call8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end39, label %if.end42

do.end39:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #9
  tail call void @iounmap(ptr noundef nonnull %call8) #6
  tail call void @pci_disable_device(ptr noundef nonnull %call1349) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body57, %do.end49, %do.end39, %while.body.while.cond.backedge_crit_edge
  %call1 = tail call ptr @pci_get_class(i32 noundef 16711680, ptr noundef nonnull %call1349) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end42:                                         ; preds = %do.end22
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @ac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.71, ptr noundef nonnull @dummy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not = icmp eq i32 %call.i, 0
  br i1 %tobool45.not, label %do.body57, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %17) #9
  tail call void @iounmap(ptr noundef nonnull %call8) #6
  tail call void @pci_disable_device(ptr noundef nonnull %call1349) #6
  %sub53 = add i32 %call34, -1
  %RamIO55 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub53, i32 1
  %18 = ptrtoint ptr %RamIO55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %RamIO55, align 4
  br label %while.cond.backedge

do.body57:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  tail call void @arm_heavy_mb() #6
  %sub60 = add i32 %call34, -1
  %RamIO62 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub60, i32 1
  %19 = ptrtoint ptr %RamIO62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %RamIO62, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 1022
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 64) #6, !srcloc !262
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %irq66 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub60, i32 3
  %23 = ptrtoint ptr %irq66 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %irq66, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %24 = load i32, ptr @mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool67.not = icmp eq i32 %24, 0
  br i1 %tobool67.not, label %while.end.if.then69_crit_edge, label %lor.lhs.false

while.end.if.then69_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

lor.lhs.false:                                    ; preds = %while.end
  %25 = load i32, ptr @irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool68.not = icmp eq i32 %25, 0
  br i1 %tobool68.not, label %lor.lhs.false.if.then69_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false.if.then69_crit_edge, %while.end.if.then69_crit_edge
  %26 = load i32, ptr @numboards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool70.not = icmp eq i32 %26, 0
  br i1 %tobool70.not, label %do.end74, label %if.then69.do.body141_crit_edge

if.then69.do.body141_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body141

do.end74:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #9
  br label %cleanup278

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.0351 = phi i32 [ %inc132, %for.inc.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %numisa.0350 = phi i32 [ %numisa.1, %for.inc.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %27 = load i32, ptr @mem, align 4
  %mul = shl i32 %i.0351, 11
  %add = add i32 %27, %mul
  %call84 = tail call ptr @ioremap(i32 noundef %add, i32 noundef 2048) #6
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %do.end89, label %if.end93

do.end89:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add91 = add nuw nsw i32 %i.0351, 1
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %add91) #9
  br label %for.inc

if.end93:                                         ; preds = %for.body
  %28 = load i32, ptr @mem, align 4
  %add95 = add i32 %28, %mul
  %29 = trunc i32 %i.0351 to i8
  %conv97 = add i8 %29, 1
  %call98 = tail call fastcc i32 @ac_register_board(i32 noundef %add95, ptr noundef nonnull %call84, i8 noundef zeroext %conv97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %do.end104

if.then100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %call84) #6
  br label %for.inc

do.end104:                                        ; preds = %if.end93
  %30 = load i32, ptr @mem, align 4
  %add107 = add i32 %30, %mul
  %31 = load i32, ptr @irq, align 4
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %add107, i32 noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numisa.0350)
  %tobool109.not = icmp eq i32 %numisa.0350, 0
  br i1 %tobool109.not, label %if.then110, label %if.else127

if.then110:                                       ; preds = %do.end104
  %32 = load i32, ptr @irq, align 4
  %call.i342 = tail call i32 @request_threaded_irq(i32 noundef %32, ptr noundef nonnull @ac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.87, ptr noundef nonnull @dummy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool112.not = icmp eq i32 %call.i342, 0
  %33 = load i32, ptr @irq, align 4
  br i1 %tobool112.not, label %if.else122, label %do.end116

do.end116:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %33) #9
  tail call void @iounmap(ptr noundef nonnull %call84) #6
  %sub119 = add i32 %call98, -1
  %RamIO121 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub119, i32 1
  %34 = ptrtoint ptr %RamIO121 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %RamIO121, align 4
  br label %if.end131

if.else122:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  %sub123 = add i32 %call98, -1
  %irq125 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub123, i32 3
  %35 = ptrtoint ptr %irq125 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %irq125, align 4
  br label %if.end131

if.else127:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #8
  %sub128 = add i32 %call98, -1
  %irq130 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub128, i32 3
  %36 = ptrtoint ptr %irq130 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %irq130, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else127, %if.else122, %do.end116
  %inc = add i32 %numisa.0350, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end131, %if.then100, %do.end89
  %numisa.1 = phi i32 [ %inc, %if.end131 ], [ %numisa.0350, %if.then100 ], [ %numisa.0350, %do.end89 ]
  %inc132 = add nuw nsw i32 %i.0351, 1
  %exitcond.not = icmp eq i32 %inc132, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numisa.1)
  %tobool133.not = icmp eq i32 %numisa.1, 0
  br i1 %tobool133.not, label %do.end137, label %for.end.do.body141_crit_edge

for.end.do.body141_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body141

do.end137:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = load i32, ptr @mem, align 4
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %37) #9
  br label %do.body141

do.body141:                                       ; preds = %do.end137, %for.end.do.body141_crit_edge, %if.then69.do.body141_crit_edge
  tail call void @__init_waitqueue_head(ptr noundef nonnull @FlagSleepRec, ptr noundef nonnull @.str.94, ptr noundef nonnull @applicom_init.__key) #6
  store i32 0, ptr @DeviceErrorCount, align 4
  %38 = load i32, ptr @numboards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool144.not = icmp eq i32 %38, 0
  br i1 %tobool144.not, label %do.body141.cleanup278_crit_edge, label %if.then145

do.body141.cleanup278_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup278

if.then145:                                       ; preds = %do.body141
  %call146 = tail call i32 @misc_register(ptr noundef nonnull @ac_miscdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.cond155.preheader, label %do.end151

for.cond155.preheader:                            ; preds = %if.then145
  %39 = getelementptr inbounds [27 x i8], ptr %boardname, i32 0, i32 26
  br label %for.body158

do.end151:                                        ; preds = %if.then145
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #9
  br label %for.body259

for.body158:                                      ; preds = %cleanup.for.body158_crit_edge, %for.cond155.preheader
  %i.1356 = phi i32 [ 0, %for.cond155.preheader ], [ %inc253.pre-phi, %cleanup.for.body158_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %boardname) #6
  %RamIO160 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.1356, i32 1
  %40 = call ptr @memset(ptr %boardname, i32 255, i32 27)
  %41 = ptrtoint ptr %RamIO160 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %RamIO160, align 4
  %tobool161.not = icmp eq ptr %42, null
  br i1 %tobool161.not, label %for.body158.cleanup_crit_edge, label %for.body158.for.body167_crit_edge

for.body158.for.body167_crit_edge:                ; preds = %for.body158
  br label %for.body167

for.body158.cleanup_crit_edge:                    ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = add nuw nsw i32 %i.1356, 1
  br label %cleanup

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %for.body158.for.body167_crit_edge
  %serial.0355 = phi i32 [ %inc177, %for.body167.for.body167_crit_edge ], [ 0, %for.body158.for.body167_crit_edge ]
  %43 = ptrtoint ptr %RamIO160 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %RamIO160, align 4
  %add.ptr170 = getelementptr i8, ptr %44, i32 960
  %add.ptr171 = getelementptr i8, ptr %add.ptr170, i32 %serial.0355
  %45 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr171) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  %arrayidx175 = getelementptr [27 x i8], ptr %boardname, i32 0, i32 %serial.0355
  %46 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx175, align 1
  %inc177 = add nuw nsw i32 %serial.0355, 1
  %exitcond363.not = icmp eq i32 %inc177, 26
  br i1 %exitcond363.not, label %for.end178, label %for.body167.for.body167_crit_edge

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body167

for.end178:                                       ; preds = %for.body167
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %39, align 1
  %add184 = add nuw nsw i32 %i.1356, 1
  %48 = ptrtoint ptr %RamIO160 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %RamIO160, align 4
  %add.ptr189 = getelementptr i8, ptr %49, i32 30
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr189) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  %51 = lshr i8 %50, 4
  %52 = zext i8 %51 to i32
  %53 = ptrtoint ptr %RamIO160 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %RamIO160, align 4
  %add.ptr198 = getelementptr i8, ptr %54, i32 30
  %55 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr198) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  %56 = and i8 %55, 15
  %and = zext i8 %56 to i32
  %call203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %add184, ptr noundef nonnull %boardname, i32 noundef %52, i32 noundef %and) #9
  %57 = ptrtoint ptr %RamIO160 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %RamIO160, align 4
  %add.ptr208 = getelementptr i8, ptr %58, i32 986
  %59 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr208) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !267
  %conv212 = zext i8 %59 to i32
  %shl = shl nuw nsw i32 %conv212, 16
  %60 = ptrtoint ptr %RamIO160 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %RamIO160, align 4
  %add.ptr218 = getelementptr i8, ptr %61, i32 987
  %62 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr218) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  %conv222 = zext i8 %62 to i32
  %shl223 = shl nuw nsw i32 %conv222, 8
  %add224 = or i32 %shl223, %shl
  %63 = ptrtoint ptr %RamIO160 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %RamIO160, align 4
  %add.ptr230 = getelementptr i8, ptr %64, i32 988
  %65 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr230) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !269
  %conv234 = zext i8 %65 to i32
  %add235 = or i32 %add224, %conv234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add235)
  %cmp236.not = icmp eq i32 %add235, 0
  br i1 %cmp236.not, label %do.end247, label %do.end241

do.end241:                                        ; preds = %for.end178
  call void @__sanitizer_cov_trace_pc() #8
  %call243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %add235) #9
  br label %cleanup

do.end247:                                        ; preds = %for.end178
  call void @__sanitizer_cov_trace_pc() #8
  %call249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end247, %do.end241, %for.body158.cleanup_crit_edge
  %inc253.pre-phi = phi i32 [ %.pre, %for.body158.cleanup_crit_edge ], [ %add184, %do.end241 ], [ %add184, %do.end247 ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %boardname) #6
  %exitcond364.not = icmp eq i32 %inc253.pre-phi, 8
  br i1 %exitcond364.not, label %cleanup.cleanup278_crit_edge, label %cleanup.for.body158_crit_edge

cleanup.for.body158_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body158

cleanup.cleanup278_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup278

for.body259:                                      ; preds = %for.inc275.for.body259_crit_edge, %do.end151
  %i.2353 = phi i32 [ 0, %do.end151 ], [ %inc276, %for.inc275.for.body259_crit_edge ]
  %RamIO261 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.2353, i32 1
  %66 = ptrtoint ptr %RamIO261 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %RamIO261, align 4
  %tobool262.not = icmp eq ptr %67, null
  br i1 %tobool262.not, label %for.body259.for.inc275_crit_edge, label %if.end264

for.body259.for.inc275_crit_edge:                 ; preds = %for.body259
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc275

if.end264:                                        ; preds = %for.body259
  %irq266 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.2353, i32 3
  %68 = ptrtoint ptr %irq266 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq266, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool267.not = icmp eq i32 %69, 0
  br i1 %tobool267.not, label %if.end264.if.end272_crit_edge, label %if.then268

if.end264.if.end272_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end272

if.then268:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  %call271 = tail call ptr @free_irq(i32 noundef %69, ptr noundef nonnull @dummy) #6
  br label %if.end272

if.end272:                                        ; preds = %if.then268, %if.end264.if.end272_crit_edge
  %70 = ptrtoint ptr %RamIO261 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %RamIO261, align 4
  tail call void @iounmap(ptr noundef %71) #6
  br label %for.inc275

for.inc275:                                       ; preds = %if.end272, %for.body259.for.inc275_crit_edge
  %inc276 = add nuw nsw i32 %i.2353, 1
  %exitcond362.not = icmp eq i32 %inc276, 8
  br i1 %exitcond362.not, label %for.inc275.cleanup278_crit_edge, label %for.inc275.for.body259_crit_edge

for.inc275.for.body259_crit_edge:                 ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body259

for.inc275.cleanup278_crit_edge:                  ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup278

cleanup278:                                       ; preds = %for.inc275.cleanup278_crit_edge, %cleanup.cleanup278_crit_edge, %do.body141.cleanup278_crit_edge, %do.end74, %do.end13, %if.end.cleanup278_crit_edge
  %retval.0 = phi i32 [ -5, %do.end13 ], [ -6, %do.end74 ], [ -6, %do.body141.cleanup278_crit_edge ], [ 0, %cleanup.cleanup278_crit_edge ], [ %call146, %for.inc275.cleanup278_crit_edge ], [ -5, %if.end.cleanup278_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac_read(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ptr) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %st_loc = alloca %struct.st_ram_io, align 1
  %mailbox = alloca %struct.mailbox, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !251) #6
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %count)
  %cmp.not = icmp eq i32 %count, 368
  br i1 %cmp.not, label %entry.__here_crit_edge, label %do.end

entry.__here_crit_edge:                           ; preds = %entry
  br label %__here

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %count, i32 noundef 368) #9
  br label %cleanup319

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %entry.__here_crit_edge
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@ac_read, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !270
  call void @add_wait_queue(ptr noundef nonnull @FlagSleepRec, ptr noundef nonnull %wait) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %__here
  %i.0373 = phi i32 [ 0, %__here ], [ %inc312, %for.inc.for.body_crit_edge ]
  %RamIO = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.0373, i32 1
  %18 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %RamIO, align 4
  %tobool73.not = icmp eq ptr %19, null
  br i1 %tobool73.not, label %for.body.for.inc_crit_edge, label %do.body77

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body77:                                        ; preds = %for.body
  %mutex = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.0373, i32 4
  %call82 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mutex) #6
  %20 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %RamIO, align 4
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp93 = icmp eq i8 %22, 2
  br i1 %cmp93, label %if.then95, label %if.end191

if.then95:                                        ; preds = %do.body77
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %st_loc) #6
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %mailbox) #6
  %23 = call ptr @memset(ptr %mailbox, i32 255, i32 304)
  %24 = call ptr @memset(ptr %st_loc, i32 0, i32 64)
  %25 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %RamIO, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 64
  %add.ptr3.i = getelementptr i8, ptr %26, i32 1
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !272
  %tic_owner_to_pc.i = getelementptr inbounds %struct.st_ram_io, ptr %st_loc, i32 0, i32 1
  %28 = ptrtoint ptr %tic_owner_to_pc.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %tic_owner_to_pc.i, align 1
  %29 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %RamIO, align 4
  %add.ptr9.i = getelementptr i8, ptr %30, i32 2
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  %numcard_owner_to_pc.i = getelementptr inbounds %struct.st_ram_io, ptr %st_loc, i32 0, i32 2
  %32 = ptrtoint ptr %numcard_owner_to_pc.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %numcard_owner_to_pc.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then95
  %from.03.i = phi ptr [ %add.ptr.i, %if.then95 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %to.02.i = phi ptr [ %mailbox, %if.then95 ], [ %incdec.ptr18.i, %for.body.i.for.body.i_crit_edge ]
  %c.01.i = phi i32 [ 0, %if.then95 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %from.03.i, i32 1
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %from.03.i) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  %incdec.ptr18.i = getelementptr i8, ptr %to.02.i, i32 1
  %34 = ptrtoint ptr %to.02.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %to.02.i, align 1
  %inc.i = add nuw nsw i32 %c.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 304
  br i1 %exitcond.not.i, label %do_ac_read.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do_ac_read.exit:                                  ; preds = %for.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %RamIO, align 4
  %add.ptr21.i = getelementptr i8, ptr %36, i32 14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 1) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !276
  call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %RamIO, align 4
  %add.ptr27.i = getelementptr i8, ptr %38, i32 17
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27.i, i8 1) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !277
  call void @arm_heavy_mb() #6
  %39 = trunc i32 %i.0373 to i8
  %conv.i = add i8 %39, 1
  %40 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %RamIO, align 4
  %add.ptr33.i = getelementptr i8, ptr %41, i32 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 %conv.i) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %RamIO, align 4
  %add.ptr41.i = getelementptr i8, ptr %43, i32 1
  %44 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41.i) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  %45 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %RamIO, align 4
  %add.ptr47.i = getelementptr i8, ptr %46, i32 15
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47.i, i8 %44) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %RamIO, align 4
  %add.ptr53.i = getelementptr i8, ptr %48, i32 14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53.i, i8 2) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !281
  call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %RamIO, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 0) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !282
  call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %RamIO, align 4
  %add.ptr65.i = getelementptr i8, ptr %52, i32 1022
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65.i, i8 2) #6, !srcloc !262
  %53 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %RamIO, align 4
  %add.ptr70.i = getelementptr i8, ptr %54, i32 30
  %55 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr70.i) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  store volatile i8 %55, ptr @Dummy, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mutex, i32 noundef %call82) #6
  br label %__here150

__here150:                                        ; preds = %do_ac_read.exit
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %task_state_change154 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 212
  %58 = ptrtoint ptr %task_state_change154 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 ptrtoint (ptr blockaddress(@ac_read, %__here150) to i32), ptr %task_state_change154, align 4
  %59 = load ptr, ptr %task, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %59, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !284
  call void @remove_wait_queue(ptr noundef nonnull @FlagSleepRec, ptr noundef nonnull %wait) #6
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %__here150.cleanup_crit_edge, label %if.end.i.i

__here150.cleanup_crit_edge:                      ; preds = %__here150
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %__here150
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 64, i32 -1226833920) #10, !srcloc !285
  %asmresult.i.i = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %st_loc, i32 noundef 64) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %st_loc, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool181.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool181.not, label %if.end183, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end183:                                        ; preds = %copy_to_user.exit
  %add.ptr184 = getelementptr i8, ptr %buf, i32 64
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #6
  %call.i.i353 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i353, label %if.end183.cleanup_crit_edge, label %if.end.i.i356

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i356:                                    ; preds = %if.end183
  %62 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr184, i32 304, i32 -1226833920) #10, !srcloc !285
  %asmresult.i.i354 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i354)
  %cmp.i6.i355 = icmp eq i32 %asmresult.i.i354, 0
  br i1 %cmp.i6.i355, label %copy_to_user.exit361, label %if.end.i.i356.cleanup_crit_edge

if.end.i.i356.cleanup_crit_edge:                  ; preds = %if.end.i.i356
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit361:                             ; preds = %if.end.i.i356
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i357 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mailbox, i32 noundef 304) #6
  %call.i12.i.i358 = call i32 @arm_copy_to_user(ptr noundef %add.ptr184, ptr noundef nonnull %mailbox, i32 noundef 304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i358)
  %tobool186.not = icmp eq i32 %call.i12.i.i358, 0
  %spec.select = select i1 %tobool186.not, i32 2, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit361, %if.end.i.i356.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %__here150.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %__here150.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end183.cleanup_crit_edge ], [ -14, %if.end.i.i356.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit361 ]
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %mailbox) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %st_loc) #6
  br label %cleanup319

if.end191:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp193 = icmp ugt i8 %22, 2
  %63 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %RamIO, align 4
  %add.ptr200 = getelementptr i8, ptr %64, i32 30
  %65 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr200) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  store volatile i8 %65, ptr @Dummy, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mutex, i32 noundef %call82) #6
  br i1 %cmp193, label %__here257, label %if.end191.for.inc_crit_edge

if.end191.for.inc_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

__here257:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 8
  %task_state_change261 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 212
  %68 = ptrtoint ptr %task_state_change261 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 ptrtoint (ptr blockaddress(@ac_read, %__here257) to i32), ptr %task_state_change261, align 4
  %69 = load ptr, ptr %task, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %69, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !286
  call void @remove_wait_queue(ptr noundef nonnull @FlagSleepRec, ptr noundef nonnull %wait) #6
  %71 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %RamIO, align 4
  %73 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %72) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !287
  %conv299 = zext i8 %73 to i32
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %i.0373, i32 noundef %conv299) #9
  %74 = load i32, ptr @DeviceErrorCount, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr @DeviceErrorCount, align 4
  br label %cleanup319

for.inc:                                          ; preds = %if.end191.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc312 = add nuw nsw i32 %i.0373, 1
  %exitcond.not = icmp eq i32 %inc312, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @schedule() #6
  call void @remove_wait_queue(ptr noundef nonnull @FlagSleepRec, ptr noundef nonnull %wait) #6
  %75 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stack.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %81 = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %for.end.cleanup319_crit_edge, !prof !288

for.end.cleanup319_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup319

signal_pending.exit:                              ; preds = %for.end
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %78, align 4
  %and1.i.i.i.i.i = and i32 %83, 1
  %tobool316.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool316.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.cleanup319_crit_edge

signal_pending.exit.cleanup319_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup319

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

cleanup319:                                       ; preds = %signal_pending.exit.cleanup319_crit_edge, %for.end.cleanup319_crit_edge, %__here257, %cleanup, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ %retval.0, %cleanup ], [ -5, %__here257 ], [ -4, %signal_pending.exit.cleanup319_crit_edge ], [ -4, %for.end.cleanup319_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #3 align 64 {
entry:
  %st_loc = alloca %struct.st_ram_io, align 1
  %tmpmailbox = alloca %struct.mailbox, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %st_loc) #6
  %0 = call ptr @memset(ptr %st_loc, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %tmpmailbox) #6
  %1 = call ptr @memset(ptr %tmpmailbox, i32 255, i32 304)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !251) #6
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %count)
  %cmp.not = icmp eq i32 %count, 368
  br i1 %cmp.not, label %if.end59.i.i, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, ptr @ac_write.warncount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %count, i32 noundef 368) #9
  %16 = load i32, ptr @ac_write.warncount, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr @ac_write.warncount, align 4
  br label %cleanup

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 64, i32 -1226833920) #10, !srcloc !289
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !288

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %st_loc, i32 noundef 64) #6
  %18 = call i32 @llvm.read_register.i32(metadata !251) #6
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !290
  %and.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !292
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %st_loc, ptr noundef %buf, i32 noundef 64) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #6, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !288

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i486 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i486
  %add.ptr.i.i = getelementptr i8, ptr %st_loc, i32 %sub.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i486)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr i8, ptr %buf, i32 64
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #6
  %call.i.i465 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i465, label %if.end9.if.then11.i.i481_crit_edge, label %land.lhs.true.i.i468

if.end9.if.then11.i.i481_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i481

land.lhs.true.i.i468:                             ; preds = %if.end9
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 304, i32 -1226833920) #10, !srcloc !289
  %asmresult.i.i466 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i466)
  %cmp.i6.i467 = icmp eq i32 %asmresult.i.i466, 0
  br i1 %cmp.i6.i467, label %if.end.i.i478, label %land.lhs.true.i.i468.if.then11.i.i481_crit_edge, !prof !288

land.lhs.true.i.i468.if.then11.i.i481_crit_edge:  ; preds = %land.lhs.true.i.i468
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i481

if.end.i.i478:                                    ; preds = %land.lhs.true.i.i468
  %call.i.i.i469 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmpmailbox, i32 noundef 304) #6
  %23 = call i32 @llvm.read_register.i32(metadata !251) #6
  %and.i.i.i.i.i.i470 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i470 to ptr
  %cpu_domain.i.i.i.i.i471 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i471) #5, !srcloc !290
  %and.i.i.i.i472 = and i32 %25, -13
  %or.i.i.i.i473 = or i32 %and.i.i.i.i472, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i473) #6, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !292
  %call1.i.i.i474 = call i32 @arm_copy_from_user(ptr noundef nonnull %tmpmailbox, ptr noundef %arrayidx, i32 noundef 304) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #6, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i474)
  %tobool4.not.i.i477 = icmp eq i32 %call1.i.i.i474, 0
  br i1 %tobool4.not.i.i477, label %if.end13, label %if.end.i.i478.if.then11.i.i481_crit_edge, !prof !288

if.end.i.i478.if.then11.i.i481_crit_edge:         ; preds = %if.end.i.i478
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i481

if.then11.i.i481:                                 ; preds = %if.end.i.i478.if.then11.i.i481_crit_edge, %land.lhs.true.i.i468.if.then11.i.i481_crit_edge, %if.end9.if.then11.i.i481_crit_edge
  %res.0.i.i476491 = phi i32 [ %call1.i.i.i474, %if.end.i.i478.if.then11.i.i481_crit_edge ], [ 304, %if.end9.if.then11.i.i481_crit_edge ], [ 304, %land.lhs.true.i.i468.if.then11.i.i481_crit_edge ]
  %sub.i.i479 = sub i32 304, %res.0.i.i476491
  %add.ptr.i.i480 = getelementptr i8, ptr %tmpmailbox, i32 %sub.i.i479
  %26 = call ptr @memset(ptr %add.ptr.i.i480, i32 0, i32 %res.0.i.i476491)
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i478
  %num_card = getelementptr inbounds %struct.st_ram_io, ptr %st_loc, i32 0, i32 24
  %27 = ptrtoint ptr %num_card to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_card, align 1
  %conv = zext i8 %28 to i32
  %tic_des_from_pc = getelementptr inbounds %struct.st_ram_io, ptr %st_loc, i32 0, i32 8
  %29 = ptrtoint ptr %tic_des_from_pc to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tic_des_from_pc, align 1
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub)
  %cmp14 = icmp ugt i32 %sub, 7
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %31 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub, i32 8) #6, !srcloc !293
  %and = and i32 %31, %sub
  %RamIO = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %and, i32 1
  %32 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %RamIO, align 4
  %tobool27.not = icmp eq ptr %33, null
  br i1 %tobool27.not, label %if.end17.cleanup_crit_edge, label %do.body31

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body31:                                        ; preds = %if.end17
  %mutex = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %and, i32 4
  %call37 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mutex) #6
  %34 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %RamIO, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 5
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp48 = icmp ugt i8 %36, 2
  br i1 %cmp48, label %if.then50, label %__here

if.then50:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %RamIO, align 4
  %add.ptr55 = getelementptr i8, ptr %38, i32 30
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr55) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !295
  store volatile i8 %39, ptr @Dummy, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mutex, i32 noundef %call37) #6
  %40 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %RamIO, align 4
  %add.ptr69 = getelementptr i8, ptr %41, i32 5
  %42 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !296
  %conv73 = zext i8 %42 to i32
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %and, i32 noundef %conv73) #9
  %43 = load i32, ptr @DeviceErrorCount, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr @DeviceErrorCount, align 4
  br label %cleanup

__here:                                           ; preds = %do.body31
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 212
  %46 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 ptrtoint (ptr blockaddress(@ac_write, %__here) to i32), ptr %task_state_change, align 4
  %47 = load ptr, ptr %task, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %47, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !297
  %FlagSleepSend = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %and, i32 2
  call void @add_wait_queue(ptr noundef %FlagSleepSend, ptr noundef nonnull %wait) #6
  %49 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %RamIO, align 4
  %add.ptr150497 = getelementptr i8, ptr %50, i32 5
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr150497) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp155.not498 = icmp eq i8 %51, 0
  br i1 %cmp155.not498, label %__here.__here322_crit_edge, label %__here.while.body_crit_edge

__here.while.body_crit_edge:                      ; preds = %__here
  br label %while.body

__here.__here322_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here322

while.body:                                       ; preds = %__here241.while.body_crit_edge, %__here.while.body_crit_edge
  %flags.0499 = phi i32 [ %call185, %__here241.while.body_crit_edge ], [ %call37, %__here.while.body_crit_edge ]
  %52 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %RamIO, align 4
  %add.ptr161 = getelementptr i8, ptr %53, i32 30
  %54 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr161) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !299
  store volatile i8 %54, ptr @Dummy, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mutex, i32 noundef %flags.0499) #6
  call void @schedule() #6
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stack.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %61 = and i32 %60, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.if.then171_crit_edge, !prof !288

while.body.if.then171_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

signal_pending.exit:                              ; preds = %while.body
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %58, align 4
  %and1.i.i.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool170.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool170.not, label %do.body176, label %signal_pending.exit.if.then171_crit_edge

signal_pending.exit.if.then171_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

if.then171:                                       ; preds = %signal_pending.exit.if.then171_crit_edge, %while.body.if.then171_crit_edge
  call void @remove_wait_queue(ptr noundef %FlagSleepSend, ptr noundef nonnull %wait) #6
  br label %cleanup

do.body176:                                       ; preds = %signal_pending.exit
  %call185 = call i32 @_raw_spin_lock_irqsave(ptr noundef %mutex) #6
  br label %__here241

__here241:                                        ; preds = %do.body176
  %64 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task, align 8
  %task_state_change245 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 212
  %66 = ptrtoint ptr %task_state_change245 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 ptrtoint (ptr blockaddress(@ac_write, %__here241) to i32), ptr %task_state_change245, align 4
  %67 = load ptr, ptr %task, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 1, ptr %67, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !300
  %69 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %RamIO, align 4
  %add.ptr150 = getelementptr i8, ptr %70, i32 5
  %71 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr150) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  %cmp155.not = icmp eq i8 %71, 0
  br i1 %cmp155.not, label %__here241.__here322_crit_edge, label %__here241.while.body_crit_edge

__here241.while.body_crit_edge:                   ; preds = %__here241
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

__here241.__here322_crit_edge:                    ; preds = %__here241
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here322

__here322:                                        ; preds = %__here241.__here322_crit_edge, %__here.__here322_crit_edge
  %flags.0.lcssa = phi i32 [ %call37, %__here.__here322_crit_edge ], [ %call185, %__here241.__here322_crit_edge ]
  %72 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task, align 8
  %task_state_change326 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 212
  %74 = ptrtoint ptr %task_state_change326 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 ptrtoint (ptr blockaddress(@ac_write, %__here322) to i32), ptr %task_state_change326, align 4
  %75 = load ptr, ptr %task, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %75, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !301
  call void @remove_wait_queue(ptr noundef %FlagSleepSend, ptr noundef nonnull %wait) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !302
  call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %RamIO, align 4
  %add.ptr359 = getelementptr i8, ptr %78, i32 5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr359, i8 1) #6, !srcloc !262
  %79 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %RamIO, align 4
  %add.ptr362 = getelementptr i8, ptr %80, i32 368
  %uglygep = getelementptr inbounds i8, ptr %tmpmailbox, i32 303
  br label %do.body365

do.body365:                                       ; preds = %do.body365.do.body365_crit_edge, %__here322
  %to.0501 = phi ptr [ %add.ptr362, %__here322 ], [ %incdec.ptr368, %do.body365.do.body365_crit_edge ]
  %from.0500 = phi ptr [ %tmpmailbox, %__here322 ], [ %incdec.ptr, %do.body365.do.body365_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !303
  call void @arm_heavy_mb() #6
  %incdec.ptr = getelementptr i8, ptr %from.0500, i32 1
  %81 = ptrtoint ptr %from.0500 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %from.0500, align 1
  %incdec.ptr368 = getelementptr i8, ptr %to.0501, i32 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %to.0501, i8 %82) #6, !srcloc !262
  %exitcond.not = icmp eq ptr %from.0500, %uglygep
  br i1 %exitcond.not, label %for.end, label %do.body365.do.body365_crit_edge

do.body365.do.body365_crit_edge:                  ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body365

for.end:                                          ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !304
  call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %RamIO, align 4
  %add.ptr375 = getelementptr i8, ptr %84, i32 6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr375, i8 32) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !305
  call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %RamIO, align 4
  %add.ptr381 = getelementptr i8, ptr %86, i32 7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr381, i8 -1) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !306
  call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %RamIO, align 4
  %add.ptr387 = getelementptr i8, ptr %88, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr387, i8 %30) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !307
  call void @arm_heavy_mb() #6
  %89 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %RamIO, align 4
  %add.ptr394 = getelementptr i8, ptr %90, i32 9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr394, i8 %28) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !308
  call void @arm_heavy_mb() #6
  %91 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %RamIO, align 4
  %add.ptr400 = getelementptr i8, ptr %92, i32 5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr400, i8 2) #6, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !309
  call void @arm_heavy_mb() #6
  %93 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %RamIO, align 4
  %add.ptr406 = getelementptr i8, ptr %94, i32 1022
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr406, i8 1) #6, !srcloc !262
  %95 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %RamIO, align 4
  %add.ptr411 = getelementptr i8, ptr %96, i32 30
  %97 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr411) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !310
  store volatile i8 %97, ptr @Dummy, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mutex, i32 noundef %flags.0.lcssa) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then171, %if.then50, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11.i.i481, %if.then11.i.i, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then50 ], [ -4, %if.then171 ], [ 0, %for.end ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i481 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %tmpmailbox) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %st_loc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %byte_reset_it = alloca i8, align 1
  %boardname = alloca [27 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte_reset_it)
  %0 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 -1, ptr %byte_reset_it, align 1
  %1 = inttoptr i32 %arg to ptr
  %call = tail call ptr @memdup_user(ptr noundef %1, i32 noundef 64) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup466

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ac_mutex, i32 noundef 0) #6
  %num_card = getelementptr inbounds %struct.st_ram_io, ptr %call, i32 0, i32 24
  %3 = ptrtoint ptr %num_card to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_card, align 1
  %sub = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 6
  %cmp.not.not = xor i1 %cmp.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %sub)
  %cmp6 = icmp ugt i8 %sub, 7
  %or.cond = select i1 %cmp.not.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end.err_crit_edge, label %if.end9

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end9:                                          ; preds = %if.end
  %conv10 = zext i8 %sub to i32
  %5 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv10, i32 8) #6, !srcloc !293
  %6 = trunc i32 %5 to i8
  %conv16 = and i8 %sub, %6
  br i1 %cmp.not, label %do.end268, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end9
  %idxprom = zext i8 %conv16 to i32
  %RamIO = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %RamIO, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.lhs.true19.err_crit_edge, label %if.end21

land.lhs.true19.err_crit_edge:                    ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end21:                                         ; preds = %land.lhs.true19
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end21.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb35
    i32 2, label %sw.bb148
    i32 3, label %sw.bb198
    i32 4, label %sw.bb206
    i32 5, label %do.body227
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  %10 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %RamIO, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb
  %i.0626 = phi i32 [ 0, %sw.bb ], [ %inc, %for.body.for.body_crit_edge ]
  %pmem.0625 = phi ptr [ %11, %sw.bb ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %pmem.0625, i32 1
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %pmem.0625) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !311
  %arrayidx30 = getelementptr i8, ptr %call, i32 %i.0626
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx30, align 1
  %inc = add nuw nsw i32 %i.0626, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %if.end59.i.i, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end59.i.i:                                     ; preds = %for.body
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end59.i.i.sw.epilog_crit_edge, label %if.end.i.i

if.end59.i.i.sw.epilog_crit_edge:                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end59.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 64, i32 -1226833920) #10, !srcloc !285
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef 64) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %call, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool32.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool32.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end21
  %15 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %RamIO, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 18
  %incdec.ptr45 = getelementptr i8, ptr %16, i32 19
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  %arrayidx49 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 18, i32 0
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx49, align 1
  %incdec.ptr45.1 = getelementptr i8, ptr %16, i32 20
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr45) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  %arrayidx49.1 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx49.1, align 1
  %incdec.ptr45.2 = getelementptr i8, ptr %16, i32 21
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr45.1) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  %arrayidx49.2 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 18, i32 2
  %22 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx49.2, align 1
  %incdec.ptr45.3 = getelementptr i8, ptr %16, i32 22
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr45.2) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  %arrayidx49.3 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 18, i32 3
  %24 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx49.3, align 1
  %incdec.ptr59 = getelementptr i8, ptr %16, i32 23
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr45.3) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %arrayidx63 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 19, i32 0
  %26 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx63, align 1
  %incdec.ptr59.1 = getelementptr i8, ptr %16, i32 24
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr59) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %arrayidx63.1 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx63.1, align 1
  %incdec.ptr73 = getelementptr i8, ptr %16, i32 25
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr59.1) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  %arrayidx77 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 20, i32 0
  %30 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx77, align 1
  %incdec.ptr73.1 = getelementptr i8, ptr %16, i32 26
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr73) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  %arrayidx77.1 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 20, i32 1
  %32 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx77.1, align 1
  %incdec.ptr73.2 = getelementptr i8, ptr %16, i32 27
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr73.1) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  %arrayidx77.2 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 20, i32 2
  %34 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx77.2, align 1
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr73.2) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  %arrayidx77.3 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 20, i32 3
  %36 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx77.3, align 1
  %37 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %RamIO, align 4
  %add.ptr84 = getelementptr i8, ptr %38, i32 30
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr84) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  %vers = getelementptr inbounds %struct.st_ram_io, ptr %call, i32 0, i32 23
  %40 = ptrtoint ptr %vers to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %vers, align 1
  %41 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %RamIO, align 4
  %add.ptr93 = getelementptr i8, ptr %42, i32 960
  %incdec.ptr100 = getelementptr i8, ptr %42, i32 961
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr93) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 0
  %44 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx104, align 1
  %incdec.ptr100.1 = getelementptr i8, ptr %42, i32 962
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.1 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 1
  %46 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx104.1, align 1
  %incdec.ptr100.2 = getelementptr i8, ptr %42, i32 963
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.1) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.2 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 2
  %48 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx104.2, align 1
  %incdec.ptr100.3 = getelementptr i8, ptr %42, i32 964
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.2) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.3 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 3
  %50 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx104.3, align 1
  %incdec.ptr100.4 = getelementptr i8, ptr %42, i32 965
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.3) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.4 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 4
  %52 = ptrtoint ptr %arrayidx104.4 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx104.4, align 1
  %incdec.ptr100.5 = getelementptr i8, ptr %42, i32 966
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.4) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.5 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 5
  %54 = ptrtoint ptr %arrayidx104.5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx104.5, align 1
  %incdec.ptr100.6 = getelementptr i8, ptr %42, i32 967
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.5) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.6 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 6
  %56 = ptrtoint ptr %arrayidx104.6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx104.6, align 1
  %incdec.ptr100.7 = getelementptr i8, ptr %42, i32 968
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.6) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.7 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 7
  %58 = ptrtoint ptr %arrayidx104.7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx104.7, align 1
  %incdec.ptr100.8 = getelementptr i8, ptr %42, i32 969
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.7) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.8 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 8
  %60 = ptrtoint ptr %arrayidx104.8 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx104.8, align 1
  %incdec.ptr100.9 = getelementptr i8, ptr %42, i32 970
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.8) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.9 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 9
  %62 = ptrtoint ptr %arrayidx104.9 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx104.9, align 1
  %incdec.ptr100.10 = getelementptr i8, ptr %42, i32 971
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.9) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.10 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 10
  %64 = ptrtoint ptr %arrayidx104.10 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx104.10, align 1
  %incdec.ptr100.11 = getelementptr i8, ptr %42, i32 972
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.10) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.11 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 11
  %66 = ptrtoint ptr %arrayidx104.11 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx104.11, align 1
  %incdec.ptr100.12 = getelementptr i8, ptr %42, i32 973
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.11) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.12 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 12
  %68 = ptrtoint ptr %arrayidx104.12 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx104.12, align 1
  %incdec.ptr100.13 = getelementptr i8, ptr %42, i32 974
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.12) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.13 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 13
  %70 = ptrtoint ptr %arrayidx104.13 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx104.13, align 1
  %incdec.ptr100.14 = getelementptr i8, ptr %42, i32 975
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.13) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.14 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 14
  %72 = ptrtoint ptr %arrayidx104.14 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx104.14, align 1
  %incdec.ptr100.15 = getelementptr i8, ptr %42, i32 976
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.14) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.15 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 15
  %74 = ptrtoint ptr %arrayidx104.15 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx104.15, align 1
  %incdec.ptr100.16 = getelementptr i8, ptr %42, i32 977
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.15) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.16 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 16
  %76 = ptrtoint ptr %arrayidx104.16 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx104.16, align 1
  %incdec.ptr100.17 = getelementptr i8, ptr %42, i32 978
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.16) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.17 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 17
  %78 = ptrtoint ptr %arrayidx104.17 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx104.17, align 1
  %incdec.ptr100.18 = getelementptr i8, ptr %42, i32 979
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.17) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.18 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 18
  %80 = ptrtoint ptr %arrayidx104.18 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx104.18, align 1
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr100.18) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  %arrayidx104.19 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 19
  %82 = ptrtoint ptr %arrayidx104.19 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx104.19, align 1
  %83 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %RamIO, align 4
  %add.ptr113 = getelementptr i8, ptr %84, i32 986
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr113) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !317
  %conv117 = zext i8 %85 to i32
  %shl = shl nuw nsw i32 %conv117, 16
  %86 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %RamIO, align 4
  %add.ptr124 = getelementptr i8, ptr %87, i32 987
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr124) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !318
  %conv128 = zext i8 %88 to i32
  %shl129 = shl nuw nsw i32 %conv128, 8
  %add = or i32 %shl129, %shl
  %89 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %RamIO, align 4
  %add.ptr136 = getelementptr i8, ptr %90, i32 988
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr136) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !319
  %conv140 = zext i8 %91 to i32
  %add141 = or i32 %add, %conv140
  %arrayidx143 = getelementptr %struct.st_ram_io, ptr %call, i32 0, i32 25, i32 20
  %92 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %add141, ptr %arrayidx143, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #6
  %call.i.i580 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i580, label %sw.bb35.sw.epilog_crit_edge, label %if.end.i.i583

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i583:                                    ; preds = %sw.bb35
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 64, i32 -1226833920) #10, !srcloc !285
  %asmresult.i.i581 = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i581)
  %cmp.i6.i582 = icmp eq i32 %asmresult.i.i581, 0
  br i1 %cmp.i6.i582, label %copy_to_user.exit588, label %if.end.i.i583.sw.epilog_crit_edge

if.end.i.i583.sw.epilog_crit_edge:                ; preds = %if.end.i.i583
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

copy_to_user.exit588:                             ; preds = %if.end.i.i583
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i584 = tail call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef 64) #6
  %call.i12.i.i585 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %call, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i585)
  %tobool145.not = icmp eq i32 %call.i12.i.i585, 0
  %spec.select611 = select i1 %tobool145.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb148:                                         ; preds = %if.end21
  %94 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %RamIO, align 4
  %add.ptr152 = getelementptr i8, ptr %95, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160 = getelementptr i8, ptr %95, i32 19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr152, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.1 = getelementptr i8, ptr %95, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.2 = getelementptr i8, ptr %95, i32 21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.1, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.3 = getelementptr i8, ptr %95, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.2, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.4 = getelementptr i8, ptr %95, i32 23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.3, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.5 = getelementptr i8, ptr %95, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.4, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.6 = getelementptr i8, ptr %95, i32 25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.5, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.7 = getelementptr i8, ptr %95, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.6, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  %incdec.ptr160.8 = getelementptr i8, ptr %95, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.7, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr160.8, i8 -1) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  tail call void @arm_heavy_mb() #6
  %data_from_pc_ready = getelementptr inbounds %struct.st_ram_io, ptr %call, i32 0, i32 5
  %96 = ptrtoint ptr %data_from_pc_ready to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %data_from_pc_ready, align 1
  %98 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %RamIO, align 4
  %add.ptr170 = getelementptr i8, ptr %99, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr170, i8 %97) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %RamIO, align 4
  %add.ptr177 = getelementptr i8, ptr %101, i32 1022
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr177, i8 1) #6, !srcloc !262
  %102 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 0, i32 1), align 4
  %tobool184.not = icmp eq ptr %102, null
  br i1 %tobool184.not, label %sw.bb148.for.inc195_crit_edge, label %if.then185

sw.bb148.for.inc195_crit_edge:                    ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195

if.then185:                                       ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190 = getelementptr i8, ptr %102, i32 1023
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %104 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %104)
  store volatile i8 %103, ptr %byte_reset_it, align 1
  br label %for.inc195

for.inc195:                                       ; preds = %if.then185, %sw.bb148.for.inc195_crit_edge
  %105 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 1, i32 1), align 4
  %tobool184.not.1 = icmp eq ptr %105, null
  br i1 %tobool184.not.1, label %for.inc195.for.inc195.1_crit_edge, label %if.then185.1

for.inc195.for.inc195.1_crit_edge:                ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.1

if.then185.1:                                     ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190.1 = getelementptr i8, ptr %105, i32 1023
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190.1) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %107 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %107)
  store volatile i8 %106, ptr %byte_reset_it, align 1
  br label %for.inc195.1

for.inc195.1:                                     ; preds = %if.then185.1, %for.inc195.for.inc195.1_crit_edge
  %108 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 2, i32 1), align 4
  %tobool184.not.2 = icmp eq ptr %108, null
  br i1 %tobool184.not.2, label %for.inc195.1.for.inc195.2_crit_edge, label %if.then185.2

for.inc195.1.for.inc195.2_crit_edge:              ; preds = %for.inc195.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.2

if.then185.2:                                     ; preds = %for.inc195.1
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190.2 = getelementptr i8, ptr %108, i32 1023
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190.2) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %110 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %110)
  store volatile i8 %109, ptr %byte_reset_it, align 1
  br label %for.inc195.2

for.inc195.2:                                     ; preds = %if.then185.2, %for.inc195.1.for.inc195.2_crit_edge
  %111 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 3, i32 1), align 4
  %tobool184.not.3 = icmp eq ptr %111, null
  br i1 %tobool184.not.3, label %for.inc195.2.for.inc195.3_crit_edge, label %if.then185.3

for.inc195.2.for.inc195.3_crit_edge:              ; preds = %for.inc195.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.3

if.then185.3:                                     ; preds = %for.inc195.2
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190.3 = getelementptr i8, ptr %111, i32 1023
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190.3) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %113 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %113)
  store volatile i8 %112, ptr %byte_reset_it, align 1
  br label %for.inc195.3

for.inc195.3:                                     ; preds = %if.then185.3, %for.inc195.2.for.inc195.3_crit_edge
  %114 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 4, i32 1), align 4
  %tobool184.not.4 = icmp eq ptr %114, null
  br i1 %tobool184.not.4, label %for.inc195.3.for.inc195.4_crit_edge, label %if.then185.4

for.inc195.3.for.inc195.4_crit_edge:              ; preds = %for.inc195.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.4

if.then185.4:                                     ; preds = %for.inc195.3
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190.4 = getelementptr i8, ptr %114, i32 1023
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190.4) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %116 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %116)
  store volatile i8 %115, ptr %byte_reset_it, align 1
  br label %for.inc195.4

for.inc195.4:                                     ; preds = %if.then185.4, %for.inc195.3.for.inc195.4_crit_edge
  %117 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 5, i32 1), align 4
  %tobool184.not.5 = icmp eq ptr %117, null
  br i1 %tobool184.not.5, label %for.inc195.4.for.inc195.5_crit_edge, label %if.then185.5

for.inc195.4.for.inc195.5_crit_edge:              ; preds = %for.inc195.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.5

if.then185.5:                                     ; preds = %for.inc195.4
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190.5 = getelementptr i8, ptr %117, i32 1023
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190.5) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %119 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %119)
  store volatile i8 %118, ptr %byte_reset_it, align 1
  br label %for.inc195.5

for.inc195.5:                                     ; preds = %if.then185.5, %for.inc195.4.for.inc195.5_crit_edge
  %120 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 6, i32 1), align 4
  %tobool184.not.6 = icmp eq ptr %120, null
  br i1 %tobool184.not.6, label %for.inc195.5.for.inc195.6_crit_edge, label %if.then185.6

for.inc195.5.for.inc195.6_crit_edge:              ; preds = %for.inc195.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc195.6

if.then185.6:                                     ; preds = %for.inc195.5
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190.6 = getelementptr i8, ptr %120, i32 1023
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190.6) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %122 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %122)
  store volatile i8 %121, ptr %byte_reset_it, align 1
  br label %for.inc195.6

for.inc195.6:                                     ; preds = %if.then185.6, %for.inc195.5.for.inc195.6_crit_edge
  %123 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 7, i32 1), align 4
  %tobool184.not.7 = icmp eq ptr %123, null
  br i1 %tobool184.not.7, label %for.inc195.6.sw.epilog_crit_edge, label %if.then185.7

for.inc195.6.sw.epilog_crit_edge:                 ; preds = %for.inc195.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then185.7:                                     ; preds = %for.inc195.6
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr190.7 = getelementptr i8, ptr %123, i32 1023
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr190.7) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  %125 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %125)
  store volatile i8 %124, ptr %byte_reset_it, align 1
  br label %sw.epilog

sw.bb198:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %RamIO, align 4
  %add.ptr202 = getelementptr i8, ptr %127, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !324
  tail call void @arm_heavy_mb() #6
  %tic_des_from_pc = getelementptr inbounds %struct.st_ram_io, ptr %call, i32 0, i32 8
  %128 = ptrtoint ptr %tic_des_from_pc to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %tic_des_from_pc, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr202, i8 %129) #6, !srcloc !262
  br label %sw.epilog

sw.bb206:                                         ; preds = %if.end21
  %130 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %RamIO, align 4
  %add.ptr210 = getelementptr i8, ptr %131, i32 1
  %incdec.ptr213 = getelementptr i8, ptr %131, i32 2
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr210) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !325
  %tic_owner_to_pc = getelementptr inbounds %struct.st_ram_io, ptr %call, i32 0, i32 1
  %133 = ptrtoint ptr %tic_owner_to_pc to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %tic_owner_to_pc, align 1
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr213) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !326
  %numcard_owner_to_pc = getelementptr inbounds %struct.st_ram_io, ptr %call, i32 0, i32 2
  %135 = ptrtoint ptr %numcard_owner_to_pc to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %numcard_owner_to_pc, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #6
  %call.i.i593 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i593, label %sw.bb206.sw.epilog_crit_edge, label %if.end.i.i596

sw.bb206.sw.epilog_crit_edge:                     ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i596:                                    ; preds = %sw.bb206
  %136 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 64, i32 -1226833920) #10, !srcloc !285
  %asmresult.i.i594 = extractvalue { i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i594)
  %cmp.i6.i595 = icmp eq i32 %asmresult.i.i594, 0
  br i1 %cmp.i6.i595, label %copy_to_user.exit601, label %if.end.i.i596.sw.epilog_crit_edge

if.end.i.i596.sw.epilog_crit_edge:                ; preds = %if.end.i.i596
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

copy_to_user.exit601:                             ; preds = %if.end.i.i596
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i597 = tail call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef 64) #6
  %call.i12.i.i598 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %call, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i598)
  %tobool223.not = icmp eq i32 %call.i12.i.i598, 0
  %spec.select612 = select i1 %tobool223.not, i32 0, i32 -14
  br label %sw.epilog

do.body227:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !327
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %num_card to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %num_card, align 1
  %139 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %RamIO, align 4
  %add.ptr234 = getelementptr i8, ptr %140, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr234, i8 %138) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !328
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %num_card to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %num_card, align 1
  %143 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %RamIO, align 4
  %add.ptr242 = getelementptr i8, ptr %144, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr242, i8 %142) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !329
  tail call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %num_card to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %num_card, align 1
  %147 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %RamIO, align 4
  %add.ptr250 = getelementptr i8, ptr %148, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr250, i8 %146) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !330
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %RamIO, align 4
  %add.ptr257 = getelementptr i8, ptr %150, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr257, i8 4) #6, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %RamIO, align 4
  %add.ptr264 = getelementptr i8, ptr %152, i32 1022
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr264, i8 1) #6, !srcloc !262
  br label %sw.epilog

do.end268:                                        ; preds = %if.end9
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #9
  %153 = load i32, ptr @numboards, align 4
  %call275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %153) #9
  %154 = load i32, ptr @mem, align 4
  %call280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %154) #9
  %155 = load i32, ptr @irq, align 4
  %call285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %155) #9
  %156 = getelementptr inbounds [27 x i8], ptr %boardname, i32 0, i32 26
  br label %for.body289

for.body289:                                      ; preds = %cleanup.for.body289_crit_edge, %do.end268
  %i.7628 = phi i32 [ 0, %do.end268 ], [ %inc387.pre-phi, %cleanup.for.body289_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %boardname) #6
  %RamIO291 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.7628, i32 1
  %157 = call ptr @memset(ptr %boardname, i32 255, i32 27)
  %158 = ptrtoint ptr %RamIO291 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %RamIO291, align 4
  %tobool292.not = icmp eq ptr %159, null
  br i1 %tobool292.not, label %for.body289.cleanup_crit_edge, label %for.body289.for.body298_crit_edge

for.body289.for.body298_crit_edge:                ; preds = %for.body289
  br label %for.body298

for.body289.cleanup_crit_edge:                    ; preds = %for.body289
  call void @__sanitizer_cov_trace_pc() #8
  %.pre636 = add nuw nsw i32 %i.7628, 1
  br label %cleanup

for.body298:                                      ; preds = %for.body298.for.body298_crit_edge, %for.body289.for.body298_crit_edge
  %serial.0627 = phi i32 [ %inc310, %for.body298.for.body298_crit_edge ], [ 0, %for.body289.for.body298_crit_edge ]
  %160 = ptrtoint ptr %RamIO291 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %RamIO291, align 4
  %add.ptr303 = getelementptr i8, ptr %161, i32 960
  %add.ptr304 = getelementptr i8, ptr %add.ptr303, i32 %serial.0627
  %162 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr304) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  %arrayidx308 = getelementptr [27 x i8], ptr %boardname, i32 0, i32 %serial.0627
  %163 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %arrayidx308, align 1
  %inc310 = add nuw nsw i32 %serial.0627, 1
  %exitcond633.not = icmp eq i32 %inc310, 26
  br i1 %exitcond633.not, label %for.end311, label %for.body298.for.body298_crit_edge

for.body298.for.body298_crit_edge:                ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body298

for.end311:                                       ; preds = %for.body298
  %164 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %156, align 1
  %add317 = add nuw nsw i32 %i.7628, 1
  %165 = ptrtoint ptr %RamIO291 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %RamIO291, align 4
  %add.ptr322 = getelementptr i8, ptr %166, i32 30
  %167 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr322) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !333
  %168 = lshr i8 %167, 4
  %169 = zext i8 %168 to i32
  %170 = ptrtoint ptr %RamIO291 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %RamIO291, align 4
  %add.ptr331 = getelementptr i8, ptr %171, i32 30
  %172 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr331) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !334
  %173 = and i8 %172, 15
  %and336 = zext i8 %173 to i32
  %call337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %add317, i32 noundef %169, i32 noundef %and336, ptr noundef nonnull %boardname) #9
  %174 = ptrtoint ptr %RamIO291 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %RamIO291, align 4
  %add.ptr342 = getelementptr i8, ptr %175, i32 986
  %176 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr342) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !335
  %conv346 = zext i8 %176 to i32
  %shl347 = shl nuw nsw i32 %conv346, 16
  %177 = ptrtoint ptr %RamIO291 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %RamIO291, align 4
  %add.ptr353 = getelementptr i8, ptr %178, i32 987
  %179 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr353) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !336
  %conv357 = zext i8 %179 to i32
  %shl358 = shl nuw nsw i32 %conv357, 8
  %add359 = or i32 %shl358, %shl347
  %180 = ptrtoint ptr %RamIO291 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %RamIO291, align 4
  %add.ptr365 = getelementptr i8, ptr %181, i32 988
  %182 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr365) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !337
  %conv369 = zext i8 %182 to i32
  %add370 = or i32 %add359, %conv369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add370)
  %cmp371.not = icmp eq i32 %add370, 0
  br i1 %cmp371.not, label %do.end381, label %do.end376

do.end376:                                        ; preds = %for.end311
  call void @__sanitizer_cov_trace_pc() #8
  %call378 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %add370) #9
  br label %cleanup

do.end381:                                        ; preds = %for.end311
  call void @__sanitizer_cov_trace_pc() #8
  %call383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end381, %do.end376, %for.body289.cleanup_crit_edge
  %inc387.pre-phi = phi i32 [ %.pre636, %for.body289.cleanup_crit_edge ], [ %add317, %do.end376 ], [ %add317, %do.end381 ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %boardname) #6
  %exitcond634.not = icmp eq i32 %inc387.pre-phi, 8
  br i1 %exitcond634.not, label %for.end388, label %cleanup.for.body289_crit_edge

cleanup.for.body289_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body289

for.end388:                                       ; preds = %cleanup
  %183 = load i32, ptr @DeviceErrorCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp389.not = icmp eq i32 %183, 0
  br i1 %cmp389.not, label %for.end388.if.end415_crit_edge, label %do.end394

for.end388.if.end415_crit_edge:                   ; preds = %for.end388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end415

do.end394:                                        ; preds = %for.end388
  call void @__sanitizer_cov_trace_pc() #8
  %call396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %183) #9
  br label %if.end415

if.end415:                                        ; preds = %do.end394, %for.end388.if.end415_crit_edge
  %184 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @FlagSleepRec, i32 0, i32 1), align 4
  %cmp.i.i602.not = icmp eq ptr %184, getelementptr inbounds (%struct.wait_queue_head, ptr @FlagSleepRec, i32 0, i32 1)
  br i1 %cmp.i.i602.not, label %if.end415.if.end424_crit_edge, label %do.end421

if.end415.if.end424_crit_edge:                    ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end424

do.end421:                                        ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #8
  %call423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #9
  br label %if.end424

if.end424:                                        ; preds = %do.end421, %if.end415.if.end424_crit_edge
  %185 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 0, i32 1), align 4
  %tobool431.not = icmp eq ptr %185, null
  br i1 %tobool431.not, label %if.end424.for.inc444_crit_edge, label %land.lhs.true432

if.end424.for.inc444_crit_edge:                   ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444

land.lhs.true432:                                 ; preds = %if.end424
  %186 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 0, i32 2, i32 1), align 4
  %cmp.i.i603.not = icmp eq ptr %186, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 0, i32 2, i32 1)
  br i1 %cmp.i.i603.not, label %land.lhs.true432.for.inc444_crit_edge, label %do.end439

land.lhs.true432.for.inc444_crit_edge:            ; preds = %land.lhs.true432
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444

do.end439:                                        ; preds = %land.lhs.true432
  call void @__sanitizer_cov_trace_pc() #8
  %call442 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 1) #9
  br label %for.inc444

for.inc444:                                       ; preds = %do.end439, %land.lhs.true432.for.inc444_crit_edge, %if.end424.for.inc444_crit_edge
  %187 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 1, i32 1), align 4
  %tobool431.not.1 = icmp eq ptr %187, null
  br i1 %tobool431.not.1, label %for.inc444.for.inc444.1_crit_edge, label %land.lhs.true432.1

for.inc444.for.inc444.1_crit_edge:                ; preds = %for.inc444
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.1

land.lhs.true432.1:                               ; preds = %for.inc444
  %188 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 1, i32 2, i32 1), align 4
  %cmp.i.i603.not.1 = icmp eq ptr %188, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 1, i32 2, i32 1)
  br i1 %cmp.i.i603.not.1, label %land.lhs.true432.1.for.inc444.1_crit_edge, label %do.end439.1

land.lhs.true432.1.for.inc444.1_crit_edge:        ; preds = %land.lhs.true432.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.1

do.end439.1:                                      ; preds = %land.lhs.true432.1
  call void @__sanitizer_cov_trace_pc() #8
  %call442.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 2) #9
  br label %for.inc444.1

for.inc444.1:                                     ; preds = %do.end439.1, %land.lhs.true432.1.for.inc444.1_crit_edge, %for.inc444.for.inc444.1_crit_edge
  %189 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 2, i32 1), align 4
  %tobool431.not.2 = icmp eq ptr %189, null
  br i1 %tobool431.not.2, label %for.inc444.1.for.inc444.2_crit_edge, label %land.lhs.true432.2

for.inc444.1.for.inc444.2_crit_edge:              ; preds = %for.inc444.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.2

land.lhs.true432.2:                               ; preds = %for.inc444.1
  %190 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 2, i32 2, i32 1), align 4
  %cmp.i.i603.not.2 = icmp eq ptr %190, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 2, i32 2, i32 1)
  br i1 %cmp.i.i603.not.2, label %land.lhs.true432.2.for.inc444.2_crit_edge, label %do.end439.2

land.lhs.true432.2.for.inc444.2_crit_edge:        ; preds = %land.lhs.true432.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.2

do.end439.2:                                      ; preds = %land.lhs.true432.2
  call void @__sanitizer_cov_trace_pc() #8
  %call442.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 3) #9
  br label %for.inc444.2

for.inc444.2:                                     ; preds = %do.end439.2, %land.lhs.true432.2.for.inc444.2_crit_edge, %for.inc444.1.for.inc444.2_crit_edge
  %191 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 3, i32 1), align 4
  %tobool431.not.3 = icmp eq ptr %191, null
  br i1 %tobool431.not.3, label %for.inc444.2.for.inc444.3_crit_edge, label %land.lhs.true432.3

for.inc444.2.for.inc444.3_crit_edge:              ; preds = %for.inc444.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.3

land.lhs.true432.3:                               ; preds = %for.inc444.2
  %192 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 3, i32 2, i32 1), align 4
  %cmp.i.i603.not.3 = icmp eq ptr %192, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 3, i32 2, i32 1)
  br i1 %cmp.i.i603.not.3, label %land.lhs.true432.3.for.inc444.3_crit_edge, label %do.end439.3

land.lhs.true432.3.for.inc444.3_crit_edge:        ; preds = %land.lhs.true432.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.3

do.end439.3:                                      ; preds = %land.lhs.true432.3
  call void @__sanitizer_cov_trace_pc() #8
  %call442.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 4) #9
  br label %for.inc444.3

for.inc444.3:                                     ; preds = %do.end439.3, %land.lhs.true432.3.for.inc444.3_crit_edge, %for.inc444.2.for.inc444.3_crit_edge
  %193 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 4, i32 1), align 4
  %tobool431.not.4 = icmp eq ptr %193, null
  br i1 %tobool431.not.4, label %for.inc444.3.for.inc444.4_crit_edge, label %land.lhs.true432.4

for.inc444.3.for.inc444.4_crit_edge:              ; preds = %for.inc444.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.4

land.lhs.true432.4:                               ; preds = %for.inc444.3
  %194 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 4, i32 2, i32 1), align 4
  %cmp.i.i603.not.4 = icmp eq ptr %194, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 4, i32 2, i32 1)
  br i1 %cmp.i.i603.not.4, label %land.lhs.true432.4.for.inc444.4_crit_edge, label %do.end439.4

land.lhs.true432.4.for.inc444.4_crit_edge:        ; preds = %land.lhs.true432.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.4

do.end439.4:                                      ; preds = %land.lhs.true432.4
  call void @__sanitizer_cov_trace_pc() #8
  %call442.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 5) #9
  br label %for.inc444.4

for.inc444.4:                                     ; preds = %do.end439.4, %land.lhs.true432.4.for.inc444.4_crit_edge, %for.inc444.3.for.inc444.4_crit_edge
  %195 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 5, i32 1), align 4
  %tobool431.not.5 = icmp eq ptr %195, null
  br i1 %tobool431.not.5, label %for.inc444.4.for.inc444.5_crit_edge, label %land.lhs.true432.5

for.inc444.4.for.inc444.5_crit_edge:              ; preds = %for.inc444.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.5

land.lhs.true432.5:                               ; preds = %for.inc444.4
  %196 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 5, i32 2, i32 1), align 4
  %cmp.i.i603.not.5 = icmp eq ptr %196, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 5, i32 2, i32 1)
  br i1 %cmp.i.i603.not.5, label %land.lhs.true432.5.for.inc444.5_crit_edge, label %do.end439.5

land.lhs.true432.5.for.inc444.5_crit_edge:        ; preds = %land.lhs.true432.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.5

do.end439.5:                                      ; preds = %land.lhs.true432.5
  call void @__sanitizer_cov_trace_pc() #8
  %call442.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 6) #9
  br label %for.inc444.5

for.inc444.5:                                     ; preds = %do.end439.5, %land.lhs.true432.5.for.inc444.5_crit_edge, %for.inc444.4.for.inc444.5_crit_edge
  %197 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 6, i32 1), align 4
  %tobool431.not.6 = icmp eq ptr %197, null
  br i1 %tobool431.not.6, label %for.inc444.5.for.inc444.6_crit_edge, label %land.lhs.true432.6

for.inc444.5.for.inc444.6_crit_edge:              ; preds = %for.inc444.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.6

land.lhs.true432.6:                               ; preds = %for.inc444.5
  %198 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 6, i32 2, i32 1), align 4
  %cmp.i.i603.not.6 = icmp eq ptr %198, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 6, i32 2, i32 1)
  br i1 %cmp.i.i603.not.6, label %land.lhs.true432.6.for.inc444.6_crit_edge, label %do.end439.6

land.lhs.true432.6.for.inc444.6_crit_edge:        ; preds = %land.lhs.true432.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.6

do.end439.6:                                      ; preds = %land.lhs.true432.6
  call void @__sanitizer_cov_trace_pc() #8
  %call442.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 7) #9
  br label %for.inc444.6

for.inc444.6:                                     ; preds = %do.end439.6, %land.lhs.true432.6.for.inc444.6_crit_edge, %for.inc444.5.for.inc444.6_crit_edge
  %199 = load ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 7, i32 1), align 4
  %tobool431.not.7 = icmp eq ptr %199, null
  br i1 %tobool431.not.7, label %for.inc444.6.for.inc444.7_crit_edge, label %land.lhs.true432.7

for.inc444.6.for.inc444.7_crit_edge:              ; preds = %for.inc444.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.7

land.lhs.true432.7:                               ; preds = %for.inc444.6
  %200 = load volatile ptr, ptr getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 7, i32 2, i32 1), align 4
  %cmp.i.i603.not.7 = icmp eq ptr %200, getelementptr inbounds ([8 x %struct.applicom_board], ptr @apbs, i32 0, i32 7, i32 2, i32 1)
  br i1 %cmp.i.i603.not.7, label %land.lhs.true432.7.for.inc444.7_crit_edge, label %do.end439.7

land.lhs.true432.7.for.inc444.7_crit_edge:        ; preds = %land.lhs.true432.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc444.7

do.end439.7:                                      ; preds = %land.lhs.true432.7
  call void @__sanitizer_cov_trace_pc() #8
  %call442.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 8) #9
  br label %for.inc444.7

for.inc444.7:                                     ; preds = %do.end439.7, %land.lhs.true432.7.for.inc444.7_crit_edge, %for.inc444.6.for.inc444.7_crit_edge
  %.pre = zext i8 %conv16 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc444.7, %do.body227, %copy_to_user.exit601, %if.end.i.i596.sw.epilog_crit_edge, %sw.bb206.sw.epilog_crit_edge, %sw.bb198, %if.then185.7, %for.inc195.6.sw.epilog_crit_edge, %copy_to_user.exit588, %if.end.i.i583.sw.epilog_crit_edge, %sw.bb35.sw.epilog_crit_edge, %copy_to_user.exit, %if.end.i.i.sw.epilog_crit_edge, %if.end59.i.i.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge
  %idxprom449.pre-phi = phi i32 [ %.pre, %for.inc444.7 ], [ %idxprom, %copy_to_user.exit601 ], [ %idxprom, %copy_to_user.exit588 ], [ %idxprom, %copy_to_user.exit ], [ %idxprom, %if.end.i.i596.sw.epilog_crit_edge ], [ %idxprom, %sw.bb206.sw.epilog_crit_edge ], [ %idxprom, %if.end.i.i583.sw.epilog_crit_edge ], [ %idxprom, %sw.bb35.sw.epilog_crit_edge ], [ %idxprom, %if.end.i.i.sw.epilog_crit_edge ], [ %idxprom, %if.end59.i.i.sw.epilog_crit_edge ], [ %idxprom, %if.end21.sw.epilog_crit_edge ], [ %idxprom, %do.body227 ], [ %idxprom, %sw.bb198 ], [ %idxprom, %if.then185.7 ], [ %idxprom, %for.inc195.6.sw.epilog_crit_edge ]
  %ret.0 = phi i32 [ 0, %for.inc444.7 ], [ %spec.select612, %copy_to_user.exit601 ], [ %spec.select611, %copy_to_user.exit588 ], [ %spec.select, %copy_to_user.exit ], [ -14, %if.end.i.i596.sw.epilog_crit_edge ], [ -14, %sw.bb206.sw.epilog_crit_edge ], [ -14, %if.end.i.i583.sw.epilog_crit_edge ], [ -14, %sw.bb35.sw.epilog_crit_edge ], [ -14, %if.end.i.i.sw.epilog_crit_edge ], [ -14, %if.end59.i.i.sw.epilog_crit_edge ], [ -25, %if.end21.sw.epilog_crit_edge ], [ 0, %do.body227 ], [ 0, %sw.bb198 ], [ 0, %if.then185.7 ], [ 0, %for.inc195.6.sw.epilog_crit_edge ]
  %RamIO451 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %idxprom449.pre-phi, i32 1
  %201 = ptrtoint ptr %RamIO451 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %RamIO451, align 4
  %add.ptr452 = getelementptr i8, ptr %202, i32 30
  %203 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr452) #6, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !338
  store volatile i8 %203, ptr @Dummy, align 1
  call void @kfree(ptr noundef %call) #6
  call void @mutex_unlock(ptr noundef nonnull @ac_mutex) #6
  br label %cleanup466

err:                                              ; preds = %land.lhs.true19.err_crit_edge, %if.end.err_crit_edge
  %IndexCard.0 = phi i8 [ %conv16, %land.lhs.true19.err_crit_edge ], [ %sub, %if.end.err_crit_edge ]
  %204 = load i32, ptr @ac_ioctl.warncount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool456.not = icmp eq i32 %204, 0
  br i1 %tobool456.not, label %err.if.end465_crit_edge, label %do.end460

err.if.end465_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end465

do.end460:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %conv462 = zext i8 %IndexCard.0 to i32
  %add463 = add nuw nsw i32 %conv462, 1
  %call464 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %add463) #9
  %205 = load i32, ptr @ac_ioctl.warncount, align 4
  %dec = add i32 %205, -1
  store i32 %dec, ptr @ac_ioctl.warncount, align 4
  br label %if.end465

if.end465:                                        ; preds = %do.end460, %err.if.end465_crit_edge
  tail call void @kfree(ptr noundef %call) #6
  tail call void @mutex_unlock(ptr noundef nonnull @ac_mutex) #6
  br label %cleanup466

cleanup466:                                       ; preds = %if.end465, %sw.epilog, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ -22, %if.end465 ], [ %ret.0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte_reset_it)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_class(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ac_register_board(i32 noundef %physloc, ptr noundef %loc, i8 noundef zeroext %boardno) unnamed_addr #3 align 64 {
entry:
  %byte_reset_it = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte_reset_it)
  %0 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 -1, ptr %byte_reset_it, align 1
  %add.ptr = getelementptr i8, ptr %loc, i32 18
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr6 = getelementptr i8, ptr %loc, i32 19
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %2)
  %cmp11.not = icmp eq i8 %2, 85
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %add.ptr17 = getelementptr i8, ptr %loc, i32 20
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !341
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %3)
  %cmp22.not = icmp eq i8 %3, -86
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false13
  %add.ptr28 = getelementptr i8, ptr %loc, i32 21
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp33.not = icmp eq i8 %4, -1
  br i1 %cmp33.not, label %if.end, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %boardno)
  %tobool.not = icmp eq i8 %boardno, 0
  br i1 %tobool.not, label %if.end42, label %if.end.lor.lhs.false44_crit_edge

if.end.lor.lhs.false44_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false44

if.end42:                                         ; preds = %if.end
  %add.ptr38 = getelementptr i8, ptr %loc, i32 2
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool43.not = icmp eq i8 %5, 0
  br i1 %tobool43.not, label %if.end42.do.end_crit_edge, label %if.end42.lor.lhs.false44_crit_edge

if.end42.lor.lhs.false44_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false44

if.end42.do.end_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false44:                                  ; preds = %if.end42.lor.lhs.false44_crit_edge, %if.end.lor.lhs.false44_crit_edge
  %boardno.addr.0113 = phi i8 [ %5, %if.end42.lor.lhs.false44_crit_edge ], [ %boardno, %if.end.lor.lhs.false44_crit_edge ]
  %conv45 = zext i8 %boardno.addr.0113 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %boardno.addr.0113)
  %cmp46 = icmp ugt i8 %boardno.addr.0113, 8
  br i1 %cmp46, label %lor.lhs.false44.do.end_crit_edge, label %if.end52

lor.lhs.false44.do.end_crit_edge:                 ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false44.do.end_crit_edge, %if.end42.do.end_crit_edge
  %boardno.addr.0114 = phi i8 [ %boardno.addr.0113, %lor.lhs.false44.do.end_crit_edge ], [ 0, %if.end42.do.end_crit_edge ]
  %conv50 = zext i8 %boardno.addr.0114 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv50, i32 noundef %physloc, i32 noundef 8) #9
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false44
  %sub = add nsw i32 %conv45, -1
  %RamIO = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub, i32 1
  %6 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %RamIO, align 4
  %tobool54.not = icmp eq ptr %7, null
  br i1 %tobool54.not, label %if.end66, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %conv45, i32 noundef %physloc, i32 noundef %conv45, i32 noundef %9) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add nsw i8 %boardno.addr.0113, -1
  %idxprom = zext i8 %dec to i32
  %arrayidx67 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %physloc, ptr %arrayidx67, align 4
  %RamIO71 = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %RamIO71 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %loc, ptr %RamIO71, align 4
  %FlagSleepSend = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %idxprom, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %FlagSleepSend, ptr noundef nonnull @.str.113, ptr noundef nonnull @ac_register_board.__key) #6
  %mutex = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %idxprom, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %mutex, ptr noundef nonnull @.str.115, ptr noundef nonnull @ac_register_board.__key.114, i16 noundef signext 3) #6
  %add.ptr85 = getelementptr i8, ptr %loc, i32 1023
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr85) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !344
  %13 = ptrtoint ptr %byte_reset_it to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 %12, ptr %byte_reset_it, align 1
  %14 = load i32, ptr @numboards, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @numboards, align 4
  %add = add nuw nsw i32 %idxprom, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end58, %do.end, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end58 ], [ %add, %if.end66 ], [ 0, %lor.lhs.false24.cleanup_crit_edge ], [ 0, %lor.lhs.false13.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte_reset_it)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac_interrupt(i32 noundef %vec, ptr nocapture noundef readnone %dev_instance) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %handled.0 = phi i32 [ 0, %entry ], [ %handled.2, %for.end.do.body_crit_edge ]
  %LoopCount.0 = phi i32 [ 0, %entry ], [ %LoopCount.1, %for.end.do.body_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %i.0180 = phi i32 [ 0, %do.body ], [ %inc142, %for.inc.for.body_crit_edge ]
  %FlagInt.0179 = phi i32 [ 0, %do.body ], [ %FlagInt.1, %for.inc.for.body_crit_edge ]
  %handled.1178 = phi i32 [ %handled.0, %do.body ], [ %handled.2, %for.inc.for.body_crit_edge ]
  %RamIO = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.0180, i32 1
  %0 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %RamIO, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %mutex = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.0180, i32 4
  tail call void @_raw_spin_lock(ptr noundef %mutex) #6
  %2 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %RamIO, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1023
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5 = icmp eq i8 %4, 0
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %mutex) #6
  br label %for.inc

if.end10:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !346
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %RamIO, align 4
  %add.ptr14 = getelementptr i8, ptr %6, i32 1023
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 0) #6, !srcloc !262
  %7 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %RamIO, align 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp24 = icmp ugt i8 %9, 2
  br i1 %cmp24, label %do.end29, label %if.end10.if.end41_crit_edge

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end29:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %i.0180, 1
  %10 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %RamIO, align 4
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !348
  %conv39 = zext i8 %12 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %add, i32 noundef %conv39) #9
  %13 = load i32, ptr @DeviceErrorCount, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @DeviceErrorCount, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end29, %if.end10.if.end41_crit_edge
  %14 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %RamIO, align 4
  %add.ptr46 = getelementptr i8, ptr %15, i32 5
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr46) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !349
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp51 = icmp ugt i8 %16, 2
  br i1 %cmp51, label %land.lhs.true, label %if.end41.if.end81_crit_edge

if.end41.if.end81_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end41
  %17 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %RamIO, align 4
  %add.ptr57 = getelementptr i8, ptr %18, i32 5
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp62.not = icmp eq i8 %19, 6
  br i1 %cmp62.not, label %land.lhs.true.if.end81_crit_edge, label %do.end67

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.end67:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add69 = add nuw nsw i32 %i.0180, 1
  %20 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %RamIO, align 4
  %add.ptr74 = getelementptr i8, ptr %21, i32 5
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !351
  %conv78 = zext i8 %22 to i32
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %add69, i32 noundef %conv78) #9
  %23 = load i32, ptr @DeviceErrorCount, align 4
  %inc80 = add i32 %23, 1
  store i32 %inc80, ptr @DeviceErrorCount, align 4
  br label %if.end81

if.end81:                                         ; preds = %do.end67, %land.lhs.true.if.end81_crit_edge, %if.end41.if.end81_crit_edge
  %24 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %RamIO, align 4
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp91 = icmp eq i8 %26, 2
  br i1 %cmp91, label %if.then93, label %if.end81.if.end98_crit_edge

if.end81.if.end98_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then93:                                        ; preds = %if.end81
  %27 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @FlagSleepRec, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %27, getelementptr inbounds (%struct.wait_queue_head, ptr @FlagSleepRec, i32 0, i32 1)
  br i1 %cmp.i.i.not, label %if.then93.if.end98_crit_edge, label %if.then96

if.then93.if.end98_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @FlagSleepRec, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.then93.if.end98_crit_edge, %if.end81.if.end98_crit_edge
  %28 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %RamIO, align 4
  %add.ptr103 = getelementptr i8, ptr %29, i32 5
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr103) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp108 = icmp eq i8 %30, 0
  br i1 %cmp108, label %if.then110, label %if.end98.if.end118_crit_edge

if.end98.if.end118_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then110:                                       ; preds = %if.end98
  %head.i = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.0180, i32 2, i32 1
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i176.not = icmp eq ptr %32, %head.i
  br i1 %cmp.i.i176.not, label %if.then110.if.end118_crit_edge, label %if.then114

if.then110.if.end118_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then114:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  %FlagSleepSend = getelementptr [8 x %struct.applicom_board], ptr @apbs, i32 0, i32 %i.0180, i32 2
  tail call void @__wake_up(ptr noundef %FlagSleepSend, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.then110.if.end118_crit_edge, %if.end98.if.end118_crit_edge
  %33 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %RamIO, align 4
  %add.ptr123 = getelementptr i8, ptr %34, i32 30
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr123) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !354
  store volatile i8 %35, ptr @Dummy, align 1
  %36 = ptrtoint ptr %RamIO to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %RamIO, align 4
  %add.ptr131 = getelementptr i8, ptr %37, i32 1023
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr131) #6, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool135.not = icmp ne i8 %38, 0
  tail call void @_raw_spin_unlock(ptr noundef %mutex) #6
  %dec = sext i1 %tobool135.not to i32
  %spec.select = add nsw i32 %i.0180, %dec
  br label %for.inc

for.inc:                                          ; preds = %if.end118, %if.then7, %for.body.for.inc_crit_edge
  %handled.2 = phi i32 [ %handled.1178, %if.then7 ], [ %handled.1178, %for.body.for.inc_crit_edge ], [ 1, %if.end118 ]
  %FlagInt.1 = phi i32 [ %FlagInt.0179, %if.then7 ], [ %FlagInt.0179, %for.body.for.inc_crit_edge ], [ 1, %if.end118 ]
  %i.1 = phi i32 [ %i.0180, %if.then7 ], [ %i.0180, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end118 ]
  %inc142 = add nsw i32 %i.1, 1
  %cmp = icmp ult i32 %inc142, 8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %FlagInt.1)
  %tobool143.not = icmp eq i32 %FlagInt.1, 0
  %inc146 = add i32 %LoopCount.0, 1
  %LoopCount.1 = select i1 %tobool143.not, i32 %inc146, i32 0
  %cmp149 = icmp ult i32 %LoopCount.1, 2
  br i1 %cmp149, label %for.end.do.body_crit_edge, label %do.end151

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end151:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool152.not = icmp ne i32 %handled.2, 0
  %cond = zext i1 %tobool152.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !49, !51, !53, !54, !55, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !194, !195, !196, !198, !199, !200, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !217, !219, !221, !223, !225, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !241, !242, !244, !245, !246, !247, !249, !250}
!llvm.named.register.sp = !{!251}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/char/applicom.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/char/applicom.c", i32 80, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/char/applicom.c", i32 81, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias240, !8, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!8 = !{!"../drivers/char/applicom.c", i32 82, i32 1}
!9 = !{ptr @__param_irq, !10, !"__param_irq", i1 false, i1 false}
!10 = !{!"../drivers/char/applicom.c", i32 95, i32 1}
!11 = !{ptr @__UNIQUE_ID_irqtype241, !10, !"__UNIQUE_ID_irqtype241", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_irq242, !13, !"__UNIQUE_ID_irq242", i1 false, i1 false}
!13 = !{!"../drivers/char/applicom.c", i32 96, i32 1}
!14 = !{ptr @__param_mem, !15, !"__param_mem", i1 false, i1 false}
!15 = !{!"../drivers/char/applicom.c", i32 97, i32 1}
!16 = !{ptr @__UNIQUE_ID_memtype243, !15, !"__UNIQUE_ID_memtype243", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_mem244, !18, !"__UNIQUE_ID_mem244", i1 false, i1 false}
!18 = !{!"../drivers/char/applicom.c", i32 98, i32 1}
!19 = !{ptr @__initcall__kmod_applicom__245_349_applicom_init6, !20, !"__initcall__kmod_applicom__245_349_applicom_init6", i1 false, i1 false}
!20 = !{!"../drivers/char/applicom.c", i32 349, i32 1}
!21 = !{ptr @__exitcall_applicom_exit, !22, !"__exitcall_applicom_exit", i1 false, i1 false}
!22 = !{!"../drivers/char/applicom.c", i32 350, i32 1}
!23 = !{ptr @apbs, !24, !"apbs", i1 false, i1 false}
!24 = !{!"../drivers/char/applicom.c", i32 90, i32 3}
!25 = !{ptr @irq, !26, !"irq", i1 false, i1 false}
!26 = !{!"../drivers/char/applicom.c", i32 92, i32 21}
!27 = !{ptr @mem, !28, !"mem", i1 false, i1 false}
!28 = !{!"../drivers/char/applicom.c", i32 93, i32 22}
!29 = !{ptr @dummy, !30, !"dummy", i1 false, i1 false}
!30 = !{!"../drivers/char/applicom.c", i32 126, i32 12}
!31 = !{ptr @__param_str_irq, !10, !"__param_str_irq", i1 false, i1 false}
!32 = !{ptr @__param_str_mem, !15, !"__param_str_mem", i1 false, i1 false}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/char/applicom.c", i32 122, i32 2}
!35 = !{ptr @ac_miscdev, !36, !"ac_miscdev", i1 false, i1 false}
!36 = !{!"../drivers/char/applicom.c", i32 120, i32 26}
!37 = !{ptr @ac_fops, !38, !"ac_fops", i1 false, i1 false}
!38 = !{!"../drivers/char/applicom.c", i32 112, i32 37}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/char/applicom.c", i32 547, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ac_read._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @ac_read._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/char/applicom.c", i32 554, i32 3}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/char/applicom.c", i32 573, i32 5}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/char/applicom.c", i32 588, i32 5}
!51 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/char/applicom.c", i32 591, i32 5}
!53 = !{ptr @ac_read._entry.6, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ac_read._entry_ptr.8, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/char/applicom.c", i32 102, i32 8}
!57 = !{ptr @FlagSleepRec, !56, !"FlagSleepRec", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!65 = !{ptr @Dummy, !66, !"Dummy", i1 false, i1 false}
!66 = !{!"../drivers/char/applicom.c", i32 101, i32 31}
!67 = !{ptr @DeviceErrorCount, !68, !"DeviceErrorCount", i1 false, i1 false}
!68 = !{!"../drivers/char/applicom.c", i32 105, i32 21}
!69 = !{ptr @ac_write.warncount, !70, !"warncount", i1 false, i1 false}
!70 = !{!"../drivers/char/applicom.c", i32 367, i32 14}
!71 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/char/applicom.c", i32 369, i32 4}
!73 = !{ptr @.str.14, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ac_write._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ac_write._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/applicom.c", i32 426, i32 3}
!78 = !{ptr @ac_write._entry.15, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ac_write._entry_ptr.17, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/char/applicom.c", i32 433, i32 2}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/char/applicom.c", i32 449, i32 3}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/char/applicom.c", i32 453, i32 2}
!86 = !{ptr @ac_ioctl.warncount, !87, !"warncount", i1 false, i1 false}
!87 = !{!"../drivers/char/applicom.c", i32 702, i32 13}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/char/applicom.c", i32 788, i32 3}
!90 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ac_ioctl._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ac_ioctl._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/char/applicom.c", i32 789, i32 3}
!95 = !{ptr @ac_ioctl._entry.22, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ac_ioctl._entry_ptr.24, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/char/applicom.c", i32 790, i32 3}
!99 = !{ptr @ac_ioctl._entry.25, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ac_ioctl._entry_ptr.27, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/applicom.c", i32 791, i32 3}
!103 = !{ptr @ac_ioctl._entry.28, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ac_ioctl._entry_ptr.30, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/char/applicom.c", i32 803, i32 4}
!107 = !{ptr @ac_ioctl._entry.31, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ac_ioctl._entry_ptr.33, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/char/applicom.c", i32 815, i32 5}
!111 = !{ptr @ac_ioctl._entry.34, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ac_ioctl._entry_ptr.36, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/char/applicom.c", i32 817, i32 5}
!115 = !{ptr @ac_ioctl._entry.37, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ac_ioctl._entry_ptr.39, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/char/applicom.c", i32 820, i32 4}
!119 = !{ptr @ac_ioctl._entry.40, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ac_ioctl._entry_ptr.42, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/char/applicom.c", i32 822, i32 4}
!123 = !{ptr @ac_ioctl._entry.43, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ac_ioctl._entry_ptr.45, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/char/applicom.c", i32 824, i32 4}
!127 = !{ptr @ac_ioctl._entry.46, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ac_ioctl._entry_ptr.48, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/char/applicom.c", i32 826, i32 4}
!131 = !{ptr @ac_ioctl._entry.49, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ac_ioctl._entry_ptr.51, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/char/applicom.c", i32 829, i32 5}
!135 = !{ptr @ac_ioctl._entry.52, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ac_ioctl._entry_ptr.54, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/char/applicom.c", i32 843, i32 3}
!139 = !{ptr @ac_ioctl._entry.55, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ac_ioctl._entry_ptr.57, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/char/applicom.c", i32 64, i32 8}
!143 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ac_mutex, !142, !"ac_mutex", i1 false, i1 false}
!145 = !{ptr @numboards, !146, !"numboards", i1 false, i1 false}
!146 = !{!"../drivers/char/applicom.c", i32 100, i32 21}
!147 = distinct !{null, !148, !"ReadErrorCount", i1 false, i1 false}
!148 = !{!"../drivers/char/applicom.c", i32 104, i32 21}
!149 = distinct !{null, !150, !"WriteErrorCount", i1 false, i1 false}
!150 = !{!"../drivers/char/applicom.c", i32 103, i32 21}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/char/applicom.c", i32 191, i32 2}
!153 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @applicom_init._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @applicom_init._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/char/applicom.c", i32 206, i32 4}
!158 = !{ptr @applicom_init._entry.62, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @applicom_init._entry_ptr.64, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/char/applicom.c", i32 213, i32 3}
!162 = !{ptr @applicom_init._entry.65, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @applicom_init._entry_ptr.67, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/char/applicom.c", i32 221, i32 4}
!166 = !{ptr @applicom_init._entry.68, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @applicom_init._entry_ptr.70, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/char/applicom.c", i32 227, i32 57}
!170 = !{ptr @.str.73, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/char/applicom.c", i32 228, i32 4}
!172 = !{ptr @applicom_init._entry.72, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @applicom_init._entry_ptr.74, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/char/applicom.c", i32 249, i32 4}
!176 = !{ptr @applicom_init._entry.75, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @applicom_init._entry_ptr.77, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/char/applicom.c", i32 250, i32 4}
!180 = !{ptr @applicom_init._entry.78, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @applicom_init._entry_ptr.80, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/char/applicom.c", i32 261, i32 4}
!184 = !{ptr @applicom_init._entry.81, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @applicom_init._entry_ptr.83, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/char/applicom.c", i32 271, i32 3}
!188 = !{ptr @applicom_init._entry.84, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @applicom_init._entry_ptr.86, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/char/applicom.c", i32 274, i32 53}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/char/applicom.c", i32 275, i32 5}
!194 = !{ptr @applicom_init._entry.88, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @applicom_init._entry_ptr.90, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/char/applicom.c", i32 289, i32 3}
!198 = !{ptr @applicom_init._entry.91, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @applicom_init._entry_ptr.93, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @applicom_init.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../drivers/char/applicom.c", i32 293, i32 2}
!202 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/char/applicom.c", i32 302, i32 4}
!205 = !{ptr @applicom_init._entry.95, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @applicom_init._entry_ptr.97, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/char/applicom.c", i32 318, i32 4}
!209 = !{ptr @applicom_init._entry.98, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @applicom_init._entry_ptr.100, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @applicom_init._entry.101, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/char/applicom.c", i32 328, i32 5}
!213 = !{ptr @applicom_init._entry_ptr.102, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @applicom_init._entry.103, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/char/applicom.c", i32 330, i32 5}
!216 = !{ptr @applicom_init._entry_ptr.104, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @applicom_pci_tbl, !218, !"applicom_pci_tbl", i1 false, i1 false}
!218 = !{!"../drivers/char/applicom.c", i32 71, i32 35}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/char/applicom.c", i32 66, i32 2}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/char/applicom.c", i32 67, i32 2}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/char/applicom.c", i32 68, i32 2}
!225 = !{ptr @applicom_pci_devnames, !226, !"applicom_pci_devnames", i1 false, i1 false}
!226 = !{!"../drivers/char/applicom.c", i32 65, i32 14}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/char/applicom.c", i32 143, i32 3}
!229 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @ac_register_board._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @ac_register_board._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/char/applicom.c", i32 149, i32 3}
!234 = !{ptr @ac_register_board._entry.110, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ac_register_board._entry_ptr.112, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @ac_register_board.__key, !237, !"__key", i1 false, i1 false}
!237 = !{!"../drivers/char/applicom.c", i32 158, i32 2}
!238 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @ac_register_board.__key.114, !240, !"__key", i1 false, i1 false}
!240 = !{!"../drivers/char/applicom.c", i32 159, i32 2}
!241 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/char/applicom.c", i32 651, i32 5}
!244 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ac_interrupt._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @ac_interrupt._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/char/applicom.c", i32 659, i32 5}
!249 = !{ptr @ac_interrupt._entry.118, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @ac_interrupt._entry_ptr.120, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{!"sp"}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{i64 2154478167}
!262 = !{i64 4638437}
!263 = !{i64 4638832}
!264 = !{i64 2154489848}
!265 = !{i64 2154491798}
!266 = !{i64 2154492044}
!267 = !{i64 2154492293}
!268 = !{i64 2154492550}
!269 = !{i64 2154492807}
!270 = !{i64 2154533630}
!271 = !{i64 2154534235}
!272 = !{i64 2154523464}
!273 = !{i64 2154523723}
!274 = !{i64 2154523933}
!275 = !{i64 2154524161}
!276 = !{i64 2154524453}
!277 = !{i64 2154524756}
!278 = !{i64 2154525491}
!279 = !{i64 2154525676}
!280 = !{i64 2154525956}
!281 = !{i64 2154526246}
!282 = !{i64 2154526540}
!283 = !{i64 2154526866}
!284 = !{i64 2154538963}
!285 = !{i64 2152854213, i64 2152854238}
!286 = !{i64 2154543943}
!287 = !{i64 2154545886}
!288 = !{!"branch_weights", i32 2000, i32 1}
!289 = !{i64 2152853532, i64 2152853557}
!290 = !{i64 5349087}
!291 = !{i64 5349284}
!292 = !{i64 2152834517}
!293 = !{i64 680447, i64 680464}
!294 = !{i64 2154503201}
!295 = !{i64 2154503463}
!296 = !{i64 2154505476}
!297 = !{i64 2154510206}
!298 = !{i64 2154510465}
!299 = !{i64 2154510727}
!300 = !{i64 2154515877}
!301 = !{i64 2154520605}
!302 = !{i64 2154520833}
!303 = !{i64 2154521109}
!304 = !{i64 2154521386}
!305 = !{i64 2154521682}
!306 = !{i64 2154521981}
!307 = !{i64 2154522283}
!308 = !{i64 2154522579}
!309 = !{i64 2154522873}
!310 = !{i64 2154523199}
!311 = !{i64 2154559634}
!312 = !{i64 2154559853}
!313 = !{i64 2154560063}
!314 = !{i64 2154560273}
!315 = !{i64 2154560485}
!316 = !{i64 2154560702}
!317 = !{i64 2154560967}
!318 = !{i64 2154561240}
!319 = !{i64 2154561513}
!320 = !{i64 2154561726}
!321 = !{i64 2154562020}
!322 = !{i64 2154562337}
!323 = !{i64 2154562652}
!324 = !{i64 2154562876}
!325 = !{i64 2154563149}
!326 = !{i64 2154563355}
!327 = !{i64 2154563599}
!328 = !{i64 2154563915}
!329 = !{i64 2154564233}
!330 = !{i64 2154564537}
!331 = !{i64 2154564831}
!332 = !{i64 2154571256}
!333 = !{i64 2154573256}
!334 = !{i64 2154573502}
!335 = !{i64 2154573751}
!336 = !{i64 2154574008}
!337 = !{i64 2154574265}
!338 = !{i64 2154584346}
!339 = !{i64 2154464002}
!340 = !{i64 2154464236}
!341 = !{i64 2154464470}
!342 = !{i64 2154464704}
!343 = !{i64 2154464927}
!344 = !{i64 2154468982}
!345 = !{i64 2154546431}
!346 = !{i64 2154546655}
!347 = !{i64 2154546954}
!348 = !{i64 2154548919}
!349 = !{i64 2154549162}
!350 = !{i64 2154549405}
!351 = !{i64 2154555447}
!352 = !{i64 2154555690}
!353 = !{i64 2154556008}
!354 = !{i64 2154556338}
!355 = !{i64 2154556587}
