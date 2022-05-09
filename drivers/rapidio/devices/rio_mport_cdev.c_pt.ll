; ModuleID = '/llk/IR_all_yes/drivers/rapidio/devices/rio_mport_cdev.c_pt.bc'
source_filename = "../drivers/rapidio/devices/rio_mport_cdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rio_mport_attr = type { i32, i32, i32, i32, i32, i32 }
%struct.mport_dev = type { %struct.atomic_t, %struct.list_head, %struct.cdev, %struct.device, ptr, %struct.mutex, %struct.mutex, %struct.list_head, %struct.rio_mport_properties, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, ptr, %struct.kref, %struct.completion }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rio_mport_properties = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_msg = type { ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.mport_cdev_priv = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kfifo, %struct.wait_queue_head, %struct.spinlock, i32, ptr, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.kref, %struct.completion }
%struct.kfifo = type { %union.anon.76, [0 x i8] }
%union.anon.76 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.rio_event = type { i32, %union.anon.77, i32 }
%union.anon.77 = type { %struct.rio_portwrite }
%struct.rio_portwrite = type { [16 x i32] }
%struct.rio_doorbell = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rio_transaction = type { i64, i32, i32, i16, i16, i32 }
%struct.rio_async_tx_wait = type { i32, i32 }
%struct.rio_dma_mem = type { i64, i64, i64 }
%struct.rio_pw_filter = type { i32, i32, i32, i32 }
%struct.rio_doorbell_filter = type { i16, i16, i16, i16 }
%struct.rio_mport_db_filter = type { %struct.list_head, %struct.list_head, ptr, %struct.rio_doorbell_filter }
%struct.rio_mport_pw_filter = type { %struct.list_head, %struct.list_head, ptr, %struct.rio_pw_filter }
%struct.rio_mport_mapping = type { %struct.list_head, ptr, i32, i16, i64, i32, ptr, i64, %struct.kref, ptr }
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
%struct.rio_transfer_io = type { i64, i64, i64, i64, i64, i16, i16, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.73 = type { ptr }
%struct.rio_mport_maint_io = type { i16, i8, [5 x i8], i32, i32, i64 }
%struct.rio_mmap = type { i16, [3 x i16], i64, i64, i64, i64 }
%struct.rio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rio_rdev_info = type { i16, i8, i8, i32, [21 x i8] }
%struct.rio_net = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8, %struct.device, ptr, ptr }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }
%struct.mport_dma_req = type { %struct.kref, %struct.list_head, ptr, ptr, i32, %struct.sg_table, ptr, i32, ptr, ptr, i32, i32, i32, %struct.completion }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rio_dma_data = type { ptr, i32, i64, i8, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author234 = internal constant [76 x i8] c"rio_mport_cdev.author=Jerry Jacobs <jerry.jacobs@prodrive-technologies.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [60 x i8] c"rio_mport_cdev.author=Aurelien Jacquiot <a-jacquiot@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [68 x i8] c"rio_mport_cdev.author=Alexandre Bounine <alexandre.bounine@idt.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [80 x i8] c"rio_mport_cdev.author=Andre van Herk <andre.van.herk@prodrive-technologies.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [65 x i8] c"rio_mport_cdev.description=RapidIO mport character device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [59 x i8] c"rio_mport_cdev.file=drivers/rapidio/devices/rio_mport_cdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"rio_mport_cdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version241 = internal constant [29 x i8] c"rio_mport_cdev.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rio_mport_cdev\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_dma_timeout = internal constant [27 x i8] c"rio_mport_cdev.dma_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dma_timeout = internal global { i32, [28 x i8] } { i32 3000, [28 x i8] zeroinitializer }, align 32
@__param_dma_timeout = internal constant %struct.kernel_param { ptr @__param_str_dma_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @dma_timeout } }, section "__param", align 4
@__UNIQUE_ID_dma_timeouttype242 = internal constant [40 x i8] c"rio_mport_cdev.parmtype=dma_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_timeout243 = internal constant [77 x i8] c"rio_mport_cdev.parm=dma_timeout:DMA Transfer Timeout in msec (default: 3000)\00", section ".modinfo", align 1
@__param_str_dbg_level = internal constant [25 x i8] c"rio_mport_cdev.dbg_level\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dbg_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dbg_level = internal constant %struct.kernel_param { ptr @__param_str_dbg_level, ptr null, ptr @param_ops_uint, i16 436, i8 -1, i8 0, %union.anon.68 { ptr @dbg_level } }, section "__param", align 4
@__UNIQUE_ID_dbg_leveltype244 = internal constant [39 x i8] c"rio_mport_cdev.parmtype=dbg_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg_level245 = internal constant [72 x i8] c"rio_mport_cdev.parm=dbg_level:Debugging output level (default 0 = none)\00", section ".modinfo", align 1
@rio_mport_interface = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr @rio_mport_class, ptr @mport_add_mport, ptr @mport_remove_mport }, section ".ref.data", align 4
@dev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dev_number = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_rio_mport_cdev__291_2641_mport_init6 = internal global ptr @mport_init, section ".initcall6.init", align 4
@__exitcall_mport_exit = internal global ptr @mport_exit, section ".exitcall.exit", align 4
@rio_mport_class = external dso_local global %struct.class, align 4
@mport_cdev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rio_mport: %s ERROR Unable allocate a device object\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mport_cdev_add\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/rapidio/devices/rio_mport_cdev.c\00", [55 x i8] zeroinitializer }, align 32
@mport_cdev_add._entry_ptr = internal global ptr @mport_cdev_add._entry, section ".printk_index", align 4
@mport_cdev_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&md->buf_mutex\00", [17 x i8] zeroinitializer }, align 32
@mport_cdev_add.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&md->file_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rio_mport%d\00", [20 x i8] zeroinitializer }, align 32
@mport_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @mport_read, ptr @mport_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mport_cdev_poll, ptr @mport_cdev_ioctl, ptr null, ptr @mport_cdev_mmap, i32 0, ptr @mport_cdev_open, ptr null, ptr @mport_cdev_release, ptr null, ptr @mport_cdev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mport_cdev_add.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&md->db_lock\00", [19 x i8] zeroinitializer }, align 32
@mport_cdev_add.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&md->pw_lock\00", [19 x i8] zeroinitializer }, align 32
@mport_cdev_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 2411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rio_mport: %s ERROR Failed to register mport %d (err=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@mport_cdev_add._entry_ptr.16 = internal global ptr @mport_cdev_add._entry.14, section ".printk_index", align 4
@mport_cdev_add._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 2427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016rio_mport: Failed to obtain info for %s cdev(%d:%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@mport_cdev_add._entry_ptr.19 = internal global ptr @mport_cdev_add._entry.17, section ".printk_index", align 4
@mport_devs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.160, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mport_devs_lock, i64 52), ptr getelementptr (i8, ptr @mport_devs_lock, i64 52) }, ptr @mport_devs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.161, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mport_devs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mport_devs, ptr @mport_devs }, [24 x i8] zeroinitializer }, align 32
@mport_cdev_add._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 2434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016rio_mport: Added %s cdev(%d:%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mport_cdev_add._entry_ptr.22 = internal global ptr @mport_cdev_add._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mport_device_release.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 2, i8 75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mport_device_release\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rio_mport: %s: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@maint_hdid_set.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"maint_hdid_set\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rio_mport: %s: Set host device Id to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@maint_comptag_set.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 -125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"maint_comptag_set\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rio_mport: %s: Set host Component Tag to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@maint_port_idx_get.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 1, i8 85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maint_port_idx_get\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rio_mport: %s: port_index=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@rio_mport_add_db_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013rio_mport: %s ERROR %s failed to register IBDB, err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rio_mport_add_db_filter\00", [40 x i8] zeroinitializer }, align 32
@rio_mport_add_db_filter._entry_ptr = internal global ptr @rio_mport_add_db_filter._entry, section ".printk_index", align 4
@rio_mport_doorbell_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 1427, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: spurious DB received from 0x%x, info=0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rio_mport_doorbell_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rio_mport_doorbell_handler._entry_ptr = internal global ptr @rio_mport_doorbell_handler._entry, section ".printk_index", align 4
@rio_mport_add_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 1390, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rio_mport: event fifo overflow\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rio_mport_add_event\00", [44 x i8] zeroinitializer }, align 32
@rio_mport_add_event._entry_ptr = internal global ptr @rio_mport_add_event._entry, section ".printk_index", align 4
@rio_mport_add_pw_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 1582, ptr @.str.44, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to add IB_PW handler, err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rio_mport_add_pw_filter\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rio_mport_add_pw_filter._entry_ptr = internal global ptr @rio_mport_add_pw_filter._entry, section ".printk_index", align 4
@rio_mport_pw_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rio_mport_pw_handler = private unnamed_addr constant [21 x i8] c"rio_mport_pw_handler\00", align 1
@rio_mport_pw_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.rio_mport_pw_handler, ptr @.str.5, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014rio_mport: mport%d received spurious PW from 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@rio_mport_pw_handler._entry_ptr = internal global ptr @rio_mport_pw_handler._entry, section ".printk_index", align 4
@rio_mport_obw_map.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.5, ptr @.str.48, i8 0, i8 109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rio_mport_obw_map\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rio_mport: %s: did=%d ra=0x%llx sz=0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@rio_mport_obw_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.5, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013rio_mport: %s ERROR Failed to set OBW err= %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rio_mport_obw_map._entry_ptr = internal global ptr @rio_mport_obw_map._entry, section ".printk_index", align 4
@rio_mport_create_outbound_mapping.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.5, ptr @.str.51, i8 0, i8 91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rio_mport_create_outbound_mapping\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rio_mport: %s: did=%d ra=0x%llx sz=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@rio_mport_map_inbound.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.5, ptr @.str.53, i8 1, i8 68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rio_mport_map_inbound\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rio_mport: %s: %s filp=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@mport_release_mapping.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.5, ptr @.str.55, i8 2, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mport_release_mapping\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"rio_mport: %s: type %d mapping @ %p (phys = %pad) for %s\0A\00", [38 x i8] zeroinitializer }, align 32
@rio_mport_obw_free.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.5, ptr @.str.57, i8 0, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rio_mport_obw_free\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rio_mport: %s: h=0x%llx\0A\00", [39 x i8] zeroinitializer }, align 32
@rio_mport_obw_free.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.5, ptr @.str.58, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rio_mport: %s: kref_put h=0x%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@rio_mport_inbound_free.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.5, ptr @.str.53, i8 1, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rio_mport_inbound_free\00", [41 x i8] zeroinitializer }, align 32
@rio_mport_free_dma.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.5, ptr @.str.61, i8 1, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rio_mport_free_dma\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rio_mport: %s: filp=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@rio_mport_free_dma.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.5, ptr @.str.62, i8 1, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rio_mport: %s: ERR no matching mapping\0A\00", [56 x i8] zeroinitializer }, align 32
@rio_mport_wait_for_async_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013rio_mport: %s ERROR %s(%d) timed out waiting for ASYNC DMA_%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rio_mport_wait_for_async_dma\00", [35 x i8] zeroinitializer }, align 32
@rio_mport_wait_for_async_dma._entry_ptr = internal global ptr @rio_mport_wait_for_async_dma._entry, section ".printk_index", align 4
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@rio_mport_wait_for_async_dma._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.5, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013rio_mport: %s ERROR %s(%d) wait for ASYNC DMA_%s was interrupted\0A\00", [60 x i8] zeroinitializer }, align 32
@rio_mport_wait_for_async_dma._entry_ptr.69 = internal global ptr @rio_mport_wait_for_async_dma._entry.67, section ".printk_index", align 4
@rio_mport_wait_for_async_dma._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.64, ptr @.str.5, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013rio_mport: %s ERROR %s(%d) ASYNC DMA_%s completion with status %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rio_mport_wait_for_async_dma._entry_ptr.72 = internal global ptr @rio_mport_wait_for_async_dma._entry.70, section ".printk_index", align 4
@mport_release_dma.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.5, ptr @.str.74, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mport_release_dma\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rio_mport: %s: DMA_%d\0A\00", [41 x i8] zeroinitializer }, align 32
@rio_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.5, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rio_mport: %s ERROR pin_user_pages_fast err=%ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rio_dma_transfer\00", [47 x i8] zeroinitializer }, align 32
@rio_dma_transfer._entry_ptr = internal global ptr @rio_dma_transfer._entry, section ".printk_index", align 4
@rio_dma_transfer._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.5, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rio_mport: %s ERROR pinned %ld out of %ld pages\0A\00", [45 x i8] zeroinitializer }, align 32
@rio_dma_transfer._entry_ptr.79 = internal global ptr @rio_dma_transfer._entry.77, section ".printk_index", align 4
@rio_dma_transfer._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.5, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013rio_mport: %s ERROR sg_alloc_table failed with err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@rio_dma_transfer._entry_ptr.82 = internal global ptr @rio_dma_transfer._entry.80, section ".printk_index", align 4
@rio_dma_transfer._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.5, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rio_mport: %s ERROR sg_alloc_table failed for internal buf\0A\00", [34 x i8] zeroinitializer }, align 32
@rio_dma_transfer._entry_ptr.85 = internal global ptr @rio_dma_transfer._entry.83, section ".printk_index", align 4
@rio_dma_transfer._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.76, ptr @.str.5, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rio_mport: %s ERROR Failed to map SG list\0A\00", [51 x i8] zeroinitializer }, align 32
@rio_dma_transfer._entry_ptr.88 = internal global ptr @rio_dma_transfer._entry.86, section ".printk_index", align 4
@rio_dma_transfer.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.5, ptr @.str.89, i8 0, i8 -19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rio_mport: %s: do_dma_request failed with err=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@get_dma_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013rio_mport: %s ERROR Failed to get DMA channel\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_dma_channel\00", [16 x i8] zeroinitializer }, align 32
@get_dma_channel._entry_ptr = internal global ptr @get_dma_channel._entry, section ".printk_index", align 4
@get_dma_channel.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.5, ptr @.str.92, i8 0, i8 -89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rio_mport: %s: Register DMA_chan %d as default\0A\00", [48 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@do_dma_request.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.5, ptr @.str.95, i8 0, i8 -78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_dma_request\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rio_mport: %s: %s(%d) uses %s for DMA_%s\0A\00", [54 x i8] zeroinitializer }, align 32
@do_dma_request.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.5, ptr @.str.96, i8 0, i8 -76, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rio_mport: %s: prep error for %s A:0x%llx L:0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@do_dma_request.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.5, ptr @.str.97, i8 0, i8 -74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rio_mport: %s: prep error %d for %s A:0x%llx L:0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@do_dma_request.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.5, ptr @.str.98, i8 0, i8 -70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rio_mport: %s: pid=%d DMA_%s tx_cookie = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@do_dma_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.5, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rio_mport: %s ERROR submit err=%d (addr:0x%llx len:0x%llx)\0A\00", [34 x i8] zeroinitializer }, align 32
@do_dma_request._entry_ptr = internal global ptr @do_dma_request._entry, section ".printk_index", align 4
@do_dma_request._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.94, ptr @.str.5, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rio_mport: %s ERROR %s(%d) timed out waiting for DMA_%s %d\0A\00", [34 x i8] zeroinitializer }, align 32
@do_dma_request._entry_ptr.102 = internal global ptr @do_dma_request._entry.100, section ".printk_index", align 4
@do_dma_request._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.94, ptr @.str.5, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013rio_mport: %s ERROR %s(%d) wait for DMA_%s %d was interrupted\0A\00", [63 x i8] zeroinitializer }, align 32
@do_dma_request._entry_ptr.105 = internal global ptr @do_dma_request._entry.103, section ".printk_index", align 4
@do_dma_request._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.94, ptr @.str.5, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013rio_mport: %s ERROR %s(%d) DMA_%s %d completed with status %d (ret=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@do_dma_request._entry_ptr.108 = internal global ptr @do_dma_request._entry.106, section ".printk_index", align 4
@rio_mport_add_riodev.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.5, ptr @.str.110, i8 1, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rio_mport_add_riodev\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rio_mport: %s: name:%s ct:0x%x did:0x%x hc:0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@rio_bus_type = external dso_local global %struct.bus_type, align 4
@rio_mport_add_riodev.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.5, ptr @.str.111, i8 1, i8 -87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rio_mport: %s: device %s already exists\0A\00", [55 x i8] zeroinitializer }, align 32
@rio_mport_add_riodev.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.5, ptr @.str.112, i8 1, i8 -80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rio_mport: %s: failed to allocate net object\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rnet_%d\00", [24 x i8] zeroinitializer }, align 32
@rio_mport_add_riodev.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.5, ptr @.str.114, i8 1, i8 -77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rio_mport: %s: failed to register net, err=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x:s:%04x\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x:e:%04x\00", [20 x i8] zeroinitializer }, align 32
@rio_release_net.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.118, ptr @.str.5, ptr @.str.119, i8 1, i8 -97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rio_release_net\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rio_mport: %s: net_%d\0A\00", [41 x i8] zeroinitializer }, align 32
@rio_release_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.5, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016rio_mport: %s: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rio_release_dev\00", [16 x i8] zeroinitializer }, align 32
@rio_release_dev._entry_ptr = internal global ptr @rio_release_dev._entry, section ".printk_index", align 4
@rio_mport_del_riodev.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.122, ptr @.str.5, ptr @.str.123, i8 1, i8 -50, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rio_mport_del_riodev\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"rio_mport: %s: device name:%s ct:0x%x did:0x%x hc:0x%x not found\0A\00", [62 x i8] zeroinitializer }, align 32
@mport_cdev_mmap.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.124, ptr @.str.5, ptr @.str.125, i8 2, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mport_cdev_mmap\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rio_mport: %s: 0x%x bytes at offset 0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@mport_cdev_mmap.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.124, ptr @.str.5, ptr @.str.126, i8 2, i8 45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rio_mport: %s: MMAP adjusted offset = 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@mport_cdev_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.124, ptr @.str.5, i32 2237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013rio_mport: %s ERROR Attempt to mmap unsupported mapping type\0A\00", [32 x i8] zeroinitializer }, align 32
@mport_cdev_mmap._entry_ptr = internal global ptr @mport_cdev_mmap._entry, section ".printk_index", align 4
@vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @mport_mm_open, ptr @mport_mm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mport_cdev_mmap._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.5, i32 2246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rio_mport: %s ERROR MMAP exit with err=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mport_cdev_mmap._entry_ptr.130 = internal global ptr @mport_cdev_mmap._entry.128, section ".printk_index", align 4
@mport_mm_close.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.131, ptr @.str.5, ptr @.str.132, i8 2, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mport_mm_close\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rio_mport: %s: %pad\0A\00", [43 x i8] zeroinitializer }, align 32
@mport_mm_open.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.133, ptr @.str.5, ptr @.str.132, i8 2, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mport_mm_open\00", [18 x i8] zeroinitializer }, align 32
@mport_cdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.5, i32 1883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rio_mport: %s ERROR Invalid minor device number\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mport_cdev_open\00", [16 x i8] zeroinitializer }, align 32
@mport_cdev_open._entry_ptr = internal global ptr @mport_cdev_open._entry, section ".printk_index", align 4
@mport_cdev_open.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.135, ptr @.str.5, ptr @.str.53, i8 1, i8 -40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@mport_cdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->fifo_lock\00", [47 x i8] zeroinitializer }, align 32
@mport_cdev_open.__key.137 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->event_rx_wait\00", [43 x i8] zeroinitializer }, align 32
@mport_cdev_open._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.5, i32 1916, ptr @.str.44, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rio_mport: kfifo_alloc failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mport_cdev_open._entry_ptr.141 = internal global ptr @mport_cdev_open._entry.139, section ".printk_index", align 4
@mport_cdev_open.__key.142 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->req_lock\00", [16 x i8] zeroinitializer }, align 32
@mport_cdev_open.__key.144 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->dma_lock\00", [16 x i8] zeroinitializer }, align 32
@mport_cdev_release.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.5, ptr @.str.53, i8 1, i8 -8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mport_cdev_release\00", [45 x i8] zeroinitializer }, align 32
@mport_cdev_release.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.5, ptr @.str.147, i8 1, i8 -1, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rio_mport: %s: release mapping %p filp=%p\0A\00", [53 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.5, ptr @.str.149, i8 1, i8 -24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mport_cdev_release_dma\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rio_mport: %s: from filp=%p %s(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.5, ptr @.str.150, i8 1, i8 -23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rio_mport: %s: No DMA channel for filp=%p\0A\00", [53 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.5, ptr @.str.151, i8 1, i8 -21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rio_mport: %s: async list not empty filp=%p %s(%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.5, ptr @.str.152, i8 1, i8 -20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rio_mport: %s: temp list not empty\0A\00", [60 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.5, ptr @.str.153, i8 1, i8 -19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rio_mport: %s: free req->filp=%p cookie=%d compl=%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.5, i32 1986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013rio_mport: %s ERROR %s(%d) failed waiting for DMA release err=%ld\0A\00", [59 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma._entry_ptr = internal global ptr @mport_cdev_release_dma._entry, section ".printk_index", align 4
@mport_cdev_release_dma.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.5, ptr @.str.157, i8 1, i8 -15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rio_mport: %s: Release DMA channel for filp=%p %s(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@mport_cdev_release_dma.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.5, ptr @.str.158, i8 1, i8 -14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rio_mport: %s: Adjust default DMA channel refcount\0A\00", [44 x i8] zeroinitializer }, align 32
@mport_release_def_dma.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.159, ptr @.str.5, ptr @.str.74, i8 0, i8 -117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mport_release_def_dma\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mport_devs_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mport_devs_lock\00", [16 x i8] zeroinitializer }, align 32
@mport_remove_mport.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.162, ptr @.str.5, ptr @.str.163, i8 2, i8 -127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mport_remove_mport\00", [45 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rio_mport: %s: Remove %s\0A\00", [38 x i8] zeroinitializer }, align 32
@mport_cdev_remove.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.164, ptr @.str.5, ptr @.str.165, i8 2, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mport_cdev_remove\00", [46 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rio_mport: %s: Remove %s cdev\0A\00", [33 x i8] zeroinitializer }, align 32
@mport_cdev_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.5, i32 2522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014rio_mport: %s WARNING WARNING: %s pending mappings on removal\0A\00", [63 x i8] zeroinitializer }, align 32
@mport_cdev_remove._entry_ptr = internal global ptr @mport_cdev_remove._entry, section ".printk_index", align 4
@mport_cdev_terminate_dma.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.167, ptr @.str.5, ptr @.str.24, i8 2, i8 101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mport_cdev_terminate_dma\00", [39 x i8] zeroinitializer }, align 32
@mport_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rio_mport\00", [22 x i8] zeroinitializer }, align 32
@mport_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.5, i32 2605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013rio_mport: %s ERROR Unable to create rio_mport class\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mport_init\00", [21 x i8] zeroinitializer }, align 32
@mport_init._entry_ptr = internal global ptr @mport_init._entry, section ".printk_index", align 4
@mport_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.170, ptr @.str.5, ptr @.str.171, i8 2, i8 -115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rio_mport: %s: Registered class with major=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@mport_init._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.170, ptr @.str.5, i32 2618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013rio_mport: %s ERROR class_interface_register() failed, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@mport_init._entry_ptr.174 = internal global ptr @mport_init._entry.172, section ".printk_index", align 4
@switch.table.do_dma_request = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 1, i32 3, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [26 x i64] [i64 24, i64 32, i64 1073900801, i64 1074031874, i64 1074031885, i64 1074294025, i64 1074294026, i64 1074294034, i64 1074294036, i64 1074294038, i64 1074818315, i64 1074818316, i64 1075342598, i64 1075342600, i64 1075866903, i64 1075866904, i64 1076391184, i64 2147773699, i64 2147773710, i64 2149084421, i64 2149084423, i64 2150657284, i64 3222826259, i64 3222826261, i64 3223874831, i64 3223874833]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 88, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"dma_timeout\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 90, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant [10 x i8] c"dbg_level\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 95, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"dev_class\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 253, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"dev_number\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 254, i32 14 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2368, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2373, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2374, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2382, i32 25 }
@___asan_gen_.228 = private unnamed_addr constant [11 x i8] c"mport_fops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2331, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2389, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2391, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2410, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2426, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [16 x i8] c"mport_devs_lock\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"mport_devs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 246, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2433, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2351, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 230, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 214, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 156, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 507, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 527, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1365, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1448, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1425, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1390, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1580, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1541, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 436, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 442, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 367, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1296, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2149, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 472, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 478, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1332, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1152, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1166, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1047, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1056, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1065, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 566, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 871, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 875, i32 5 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 890, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 925, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 937, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 948, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 662, i32 5 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 670, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 87, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 711, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 721, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 728, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 743, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 747, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 768, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 776, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 784, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1696, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1701, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1731, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1737, i32 27 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1742, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1790, i32 28 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1792, i32 28 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1795, i32 28 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1663, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1653, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1848, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2203, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2228, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2237, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant [7 x i8] c"vm_ops\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2188, i32 42 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2246, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2182, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2174, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1883, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1910, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1911, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1916, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1923, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1924, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2016, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2043, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1952, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1956, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1964, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1971, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1973, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1985, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1990, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 1994, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 556, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 247, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2567, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2499, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2521, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2452, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2603, i32 14 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2605, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2613, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.748 = private constant [44 x i8] c"../drivers/rapidio/devices/rio_mport_cdev.c\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 2618, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant [28 x i8] c"switch.table.do_dma_request\00", align 1
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_dbg_level245, ptr @__UNIQUE_ID_dbg_leveltype244, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_dma_timeout243, ptr @__UNIQUE_ID_dma_timeouttype242, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__UNIQUE_ID_version241, ptr @__exitcall_mport_exit, ptr @__initcall__kmod_rio_mport_cdev__291_2641_mport_init6, ptr @__modver_attr, ptr @__param_dbg_level, ptr @__param_dma_timeout, ptr @do_dma_request._entry, ptr @do_dma_request._entry.100, ptr @do_dma_request._entry.103, ptr @do_dma_request._entry.106, ptr @do_dma_request._entry_ptr, ptr @do_dma_request._entry_ptr.102, ptr @do_dma_request._entry_ptr.105, ptr @do_dma_request._entry_ptr.108, ptr @get_dma_channel._entry, ptr @get_dma_channel._entry_ptr, ptr @mport_cdev_add._entry, ptr @mport_cdev_add._entry.14, ptr @mport_cdev_add._entry.17, ptr @mport_cdev_add._entry.20, ptr @mport_cdev_add._entry_ptr, ptr @mport_cdev_add._entry_ptr.16, ptr @mport_cdev_add._entry_ptr.19, ptr @mport_cdev_add._entry_ptr.22, ptr @mport_cdev_mmap._entry, ptr @mport_cdev_mmap._entry.128, ptr @mport_cdev_mmap._entry_ptr, ptr @mport_cdev_mmap._entry_ptr.130, ptr @mport_cdev_open._entry, ptr @mport_cdev_open._entry.139, ptr @mport_cdev_open._entry_ptr, ptr @mport_cdev_open._entry_ptr.141, ptr @mport_cdev_release_dma._entry, ptr @mport_cdev_release_dma._entry_ptr, ptr @mport_cdev_remove._entry, ptr @mport_cdev_remove._entry_ptr, ptr @mport_exit, ptr @mport_init._entry, ptr @mport_init._entry.172, ptr @mport_init._entry_ptr, ptr @mport_init._entry_ptr.174, ptr @rio_dma_transfer._entry, ptr @rio_dma_transfer._entry.77, ptr @rio_dma_transfer._entry.80, ptr @rio_dma_transfer._entry.83, ptr @rio_dma_transfer._entry.86, ptr @rio_dma_transfer._entry_ptr, ptr @rio_dma_transfer._entry_ptr.79, ptr @rio_dma_transfer._entry_ptr.82, ptr @rio_dma_transfer._entry_ptr.85, ptr @rio_dma_transfer._entry_ptr.88, ptr @rio_mport_add_db_filter._entry, ptr @rio_mport_add_db_filter._entry_ptr, ptr @rio_mport_add_event._entry, ptr @rio_mport_add_event._entry_ptr, ptr @rio_mport_add_pw_filter._entry, ptr @rio_mport_add_pw_filter._entry_ptr, ptr @rio_mport_doorbell_handler._entry, ptr @rio_mport_doorbell_handler._entry_ptr, ptr @rio_mport_obw_map._entry, ptr @rio_mport_obw_map._entry_ptr, ptr @rio_mport_pw_handler._entry, ptr @rio_mport_pw_handler._entry_ptr, ptr @rio_mport_wait_for_async_dma._entry, ptr @rio_mport_wait_for_async_dma._entry.67, ptr @rio_mport_wait_for_async_dma._entry.70, ptr @rio_mport_wait_for_async_dma._entry_ptr, ptr @rio_mport_wait_for_async_dma._entry_ptr.69, ptr @rio_mport_wait_for_async_dma._entry_ptr.72, ptr @rio_release_dev._entry, ptr @rio_release_dev._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dma_timeout, ptr @dbg_level, ptr @dev_class, ptr @dev_number, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mport_cdev_add.__key, ptr @.str.6, ptr @mport_cdev_add.__key.7, ptr @.str.8, ptr @.str.9, ptr @mport_fops, ptr @mport_cdev_add.__key.10, ptr @.str.11, ptr @mport_cdev_add.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @mport_devs_lock, ptr @mport_devs, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @rio_mport_pw_handler._rs, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @init_completion.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @vm_ops, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @mport_cdev_open.__key, ptr @.str.136, ptr @mport_cdev_open.__key.137, ptr @.str.138, ptr @.str.140, ptr @mport_cdev_open.__key.142, ptr @.str.143, ptr @mport_cdev_open.__key.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @mport_init.__key, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @switch.table.do_dma_request], section "llvm.metadata"
@0 = internal global [191 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_number to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_devs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_devs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_add._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_add_db_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_doorbell_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_add_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_add_pw_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_pw_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_pw_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_obw_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_wait_for_async_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_wait_for_async_dma._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_wait_for_async_dma._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dma_transfer._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dma_transfer._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dma_transfer._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dma_transfer._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dma_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dma_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dma_request._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dma_request._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dma_request._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_release_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_mmap._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_open.__key.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_open._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_open.__key.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_open.__key.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_release_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_cdev_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mport_init._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_dma_request to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mport_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @class_interface_unregister(ptr noundef nonnull @rio_mport_interface) #11
  %0 = load ptr, ptr @dev_class, align 4
  tail call void @class_destroy(ptr noundef %0) #11
  %1 = load i32, ptr @dev_number, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 8) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @mport_init.__key) #11
  store ptr %call, ptr @dev_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170) #14
  %0 = load ptr, ptr @dev_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @dev_number, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str.168) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.err_chr_crit_edge, label %do.body8

if.end.err_chr_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_chr

do.body8:                                         ; preds = %if.end
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body8.do.end23_crit_edge, label %do.body10

do.body8.do.end23_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.body10:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_init, %do.end23)) #11
          to label %if.then17 [label %do.end23], !srcloc !416

if.then17:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load i32, ptr @dev_number, align 4
  %shr = lshr i32 %3, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_init.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.170, i32 noundef %shr) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body10, %do.body8.do.end23_crit_edge
  %call24 = tail call i32 @class_interface_register(ptr noundef nonnull @rio_mport_interface) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end23.cleanup_crit_edge, label %do.end29

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.170, i32 noundef %call24) #14
  %4 = load i32, ptr @dev_number, align 4
  tail call void @unregister_chrdev_region(i32 noundef %4, i32 noundef 8) #11
  br label %err_chr

err_chr:                                          ; preds = %do.end29, %if.end.err_chr_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end.err_chr_crit_edge ], [ %call24, %do.end29 ]
  %5 = load ptr, ptr @dev_class, align 4
  tail call void @class_destroy(ptr noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %err_chr, %do.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %ret.0, %err_chr ], [ 0, %do.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_add_mport(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #2 align 64 {
entry:
  %attr.i = alloca %struct.rio_mport_attr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -800
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attr.i) #11
  %0 = getelementptr inbounds %struct.rio_mport_attr, ptr %attr.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rio_mport_attr, ptr %attr.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rio_mport_attr, ptr %attr.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rio_mport_attr, ptr %attr.i, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rio_mport_attr, ptr %attr.i, i32 0, i32 5
  %5 = call ptr @memset(ptr %attr.i, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1528) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #14
  br label %mport_cdev_add.exit

if.end.i:                                         ; preds = %if.end
  %mport2.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %mport2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %mport2.i, align 8
  %buf_mutex.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %buf_mutex.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @mport_cdev_add.__key) #11
  %file_mutex.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %file_mutex.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @mport_cdev_add.__key.7) #11
  %file_list.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %file_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %file_list.i, ptr %file_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %file_list.i, ptr %prev.i.i, align 8
  %dev.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %dev.i) #11
  %10 = load i32, ptr @dev_number, align 4
  %shr.i = and i32 %10, -1048576
  %id.i = getelementptr i8, ptr %dev, i32 -56
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id.i, align 8
  %conv.i = zext i8 %12 to i32
  %or.i = or i32 %shr.i, %conv.i
  %devt.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 3, i32 29
  %13 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %devt.i, align 8
  %14 = load ptr, ptr @dev_class, align 4
  %class.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 3, i32 33
  %15 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %class.i, align 4
  %parent.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 3, i32 35
  %17 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mport_device_release, ptr %release.i, align 4
  %call17.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %cdev.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %cdev.i, ptr noundef nonnull @mport_fops) #11
  %owner.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner.i, align 4
  %doorbells.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %doorbells.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %doorbells.i, ptr %doorbells.i, align 4
  %prev.i144.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %prev.i144.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %doorbells.i, ptr %prev.i144.i, align 8
  %db_lock.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %db_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @mport_cdev_add.__key.10, i16 noundef signext 3) #11
  %portwrites.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 11
  %22 = ptrtoint ptr %portwrites.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %portwrites.i, ptr %portwrites.i, align 8
  %prev.i145.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %prev.i145.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %portwrites.i, ptr %prev.i145.i, align 4
  %pw_lock.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %pw_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @mport_cdev_add.__key.12, i16 noundef signext 3) #11
  %mappings.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 13
  %24 = ptrtoint ptr %mappings.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %mappings.i, ptr %mappings.i, align 4
  %prev.i146.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %25 = ptrtoint ptr %prev.i146.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mappings.i, ptr %prev.i146.i, align 8
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id.i, align 8
  %properties.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8
  %id28.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %id28.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %id28.i, align 2
  %sys_size.i = getelementptr i8, ptr %dev, i32 -52
  %29 = ptrtoint ptr %sys_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sys_size.i, align 4
  %sys_size30.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 4
  %31 = ptrtoint ptr %sys_size30.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sys_size30.i, align 4
  %host_deviceid.i = getelementptr i8, ptr %dev, i32 -64
  %32 = ptrtoint ptr %host_deviceid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_deviceid.i, align 8
  %conv31.i = trunc i32 %33 to i16
  %34 = ptrtoint ptr %properties.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv31.i, ptr %properties.i, align 4
  %index.i = getelementptr i8, ptr %dev, i32 -55
  %35 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %index.i, align 1
  %index34.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %index34.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %index34.i, align 1
  %transfer_mode.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 12
  %38 = ptrtoint ptr %transfer_mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %transfer_mode.i, align 8
  %or36.i = or i32 %39, 2
  store i32 %or36.i, ptr %transfer_mode.i, align 8
  %call39.i = tail call i32 @cdev_device_add(ptr noundef %cdev.i, ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end49.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %id.i, align 8
  %conv47.i = zext i8 %41 to i32
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef %conv47.i, i32 noundef %call39.i) #14
  tail call void @put_device(ptr noundef %dev.i) #11
  br label %mport_cdev_add.exit

if.end49.i:                                       ; preds = %if.end.i
  %call50.i = call i32 @rio_query_mport(ptr noundef nonnull %add.ptr, ptr noundef nonnull %attr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %do.end72.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attr.i, align 4
  %flags54.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 3
  %44 = ptrtoint ptr %flags54.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flags54.i, align 8
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  %conv55.i = trunc i32 %46 to i8
  %link_speed57.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 6
  %47 = ptrtoint ptr %link_speed57.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv55.i, ptr %link_speed57.i, align 1
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  %conv58.i = trunc i32 %49 to i8
  %link_width60.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 7
  %50 = ptrtoint ptr %link_width60.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv58.i, ptr %link_width60.i, align 2
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %dma_max_sge62.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 9
  %53 = ptrtoint ptr %dma_max_sge62.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dma_max_sge62.i, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %3, align 4
  %dma_max_size64.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 10
  %56 = ptrtoint ptr %dma_max_size64.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dma_max_size64.i, align 8
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %4, align 4
  %dma_align66.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 11
  %59 = ptrtoint ptr %dma_align66.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %dma_align66.i, align 4
  %cap_sys_size.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 13
  %60 = ptrtoint ptr %cap_sys_size.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cap_sys_size.i, align 4
  %cap_transfer_mode.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 15
  %61 = ptrtoint ptr %cap_transfer_mode.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %cap_transfer_mode.i, align 4
  %cap_addr_size.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 8, i32 14
  %62 = ptrtoint ptr %cap_addr_size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %cap_addr_size.i, align 8
  br label %if.end78.i

do.end72.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr i8, ptr %dev, i32 -40
  %63 = load i32, ptr @dev_number, align 4
  %shr74.i = lshr i32 %63, 20
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %id.i, align 8
  %conv76.i = zext i8 %65 to i32
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %shr74.i, i32 noundef %conv76.i) #14
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end72.i, %if.then52.i
  call void @mutex_lock_nested(ptr noundef nonnull @mport_devs_lock, i32 noundef 0) #11
  %node.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 1
  %66 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mport_devs, i32 0, i32 1), align 4
  %call.i.i147.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %66, ptr noundef nonnull @mport_devs) #11
  br i1 %call.i.i147.i, label %if.end.i.i.i, label %if.end78.i.list_add_tail.exit.i_crit_edge

if.end78.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %node.i, ptr getelementptr inbounds (%struct.list_head, ptr @mport_devs, i32 0, i32 1), align 4
  %67 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mport_devs, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mport_dev, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %prev3.i.i.i, align 8
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %node.i, ptr %66, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end78.i.list_add_tail.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @mport_devs_lock) #11
  %name83.i = getelementptr i8, ptr %dev, i32 -40
  %70 = load i32, ptr @dev_number, align 4
  %shr85.i = lshr i32 %70, 20
  %71 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %id.i, align 8
  %conv87.i = zext i8 %72 to i32
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name83.i, i32 noundef %shr85.i, i32 noundef %conv87.i) #14
  br label %mport_cdev_add.exit

mport_cdev_add.exit:                              ; preds = %list_add_tail.exit.i, %do.end44.i, %do.end.i
  %retval.0.i = phi i32 [ -19, %do.end44.i ], [ 0, %list_add_tail.exit.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %mport_cdev_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %retval.0.i, %mport_cdev_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mport_remove_mport(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_remove_mport.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_remove_mport, %do.end10)) #11
          to label %if.then7 [label %do.end10], !srcloc !416

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %dev, i32 -40
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_remove_mport.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.162, ptr noundef %name) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @mport_devs_lock, i32 noundef 0) #11
  %id17 = getelementptr i8, ptr %dev, i32 -56
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end10
  %.pn.in = phi ptr [ @mport_devs, %do.end10 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @mport_devs
  br i1 %cmp.not, label %if.end30.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %mport16 = getelementptr i8, ptr %.pn, i32 1100
  %2 = ptrtoint ptr %mport16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mport16, align 8
  %id = getelementptr inbounds %struct.rio_mport, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 8
  %6 = ptrtoint ptr %id17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id17, align 8
  %cmp19 = icmp eq i8 %5, %7
  br i1 %cmp19, label %if.then21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then21:                                        ; preds = %for.body
  %chdev.0.le = getelementptr i8, ptr %.pn, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %chdev.0.le, i32 noundef 4) #11
  %8 = ptrtoint ptr %chdev.0.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %chdev.0.le, align 4
  %call.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #11
  br i1 %call.i.i37, label %if.end.i.i, label %if.then21.list_del.exit_crit_edge

if.then21.list_del.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then21.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mport_devs_lock) #11
  tail call fastcc void @mport_cdev_remove(ptr noundef %chdev.0.le)
  br label %if.end30

if.end30.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @mport_devs_lock) #11
  br label %if.end30

if.end30:                                         ; preds = %if.end30.critedge, %list_del.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mport_device_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_device_release.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_device_release, %do.end10)) #11
          to label %if.then6 [label %do.end10], !srcloc !416

if.then6:                                         ; preds = %do.body1
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i13 = phi ptr [ %4, %if.end.i ], [ %2, %if.then6.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_device_release.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i13) #11
  br label %do.end10

do.end10:                                         ; preds = %dev_name.exit, %do.body1, %entry.do.end10_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -176
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_query_mport(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %copied = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #11
  %2 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %copied, align 4, !annotation !417
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end:                                           ; preds = %entry
  %event_fifo = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_fifo, align 4
  %out = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup48_crit_edge

land.lhs.true.cleanup48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %rem = urem i32 %count, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup48_crit_edge

if.end4.cleanup48_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end7:                                          ; preds = %if.end4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2281) #11
  %9 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_fifo, align 4
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15.not = icmp eq i32 %10, %12
  br i1 %cmp15.not, label %if.then17, label %if.end7.while.body.preheader_crit_edge

if.end7.while.body.preheader_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

if.then17:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %event_rx_wait = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 6
  %call77 = call i32 @prepare_to_wait_event(ptr noundef %event_rx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %14 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event_fifo, align 4
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp25.not78 = icmp eq i32 %15, %17
  br i1 %cmp25.not78, label %if.then17.if.end28_crit_edge, label %if.then17.if.end34.thread88_crit_edge

if.then17.if.end34.thread88_crit_edge:            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.thread88

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  br label %if.end28

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %if.then17.if.end28_crit_edge
  %call79 = phi i32 [ %call, %cleanup.if.end28_crit_edge ], [ %call77, %if.then17.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool29.not = icmp eq i32 %call79, 0
  br i1 %tobool29.not, label %cleanup, label %if.end34

cleanup:                                          ; preds = %if.end28
  call void @schedule() #11
  %call = call i32 @prepare_to_wait_event(ptr noundef %event_rx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %18 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %event_fifo, align 4
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  %cmp25.not = icmp eq i32 %19, %21
  br i1 %cmp25.not, label %cleanup.if.end28_crit_edge, label %cleanup.if.end34.thread88_crit_edge

cleanup.if.end34.thread88_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.thread88

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end34.thread88:                                ; preds = %cleanup.if.end34.thread88_crit_edge, %if.then17.if.end34.thread88_crit_edge
  call void @finish_wait(ptr noundef %event_rx_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.end34.thread88, %if.end7.while.body.preheader_crit_edge
  br label %while.body

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup48

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.preheader
  %buf.addr.082 = phi ptr [ %add.ptr, %if.end47.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %ret.081 = phi i32 [ %add, %if.end47.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %call43 = call i32 @__kfifo_to_user(ptr noundef %event_fifo, ptr noundef %buf.addr.082, i32 noundef 72, ptr noundef nonnull %copied) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool45.not = icmp eq i32 %call43, 0
  br i1 %tobool45.not, label %if.end47, label %while.body.cleanup48_crit_edge

while.body.cleanup48_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end47:                                         ; preds = %while.body
  %22 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %copied, align 4
  %add = add i32 %23, %ret.081
  %add.ptr = getelementptr i8, ptr %buf.addr.082, i32 %23
  %cmp39 = icmp ult i32 %add, %count
  br i1 %cmp39, label %if.end47.while.body_crit_edge, label %if.end47.cleanup48_crit_edge

if.end47.cleanup48_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup48:                                        ; preds = %if.end47.cleanup48_crit_edge, %while.body.cleanup48_crit_edge, %if.end34, %if.end4.cleanup48_crit_edge, %land.lhs.true.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup48_crit_edge ], [ -11, %land.lhs.true.cleanup48_crit_edge ], [ -22, %if.end4.cleanup48_crit_edge ], [ %call79, %if.end34 ], [ -14, %while.body.cleanup48_crit_edge ], [ %add, %if.end47.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %event = alloca %struct.rio_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mport1 = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mport1, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %event) #11
  %6 = call ptr @memset(ptr %event, i32 255, i32 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = urem i32 %count, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %count)
  %cmp31 = icmp ugt i32 %count, 71
  br i1 %cmp31, label %if.end8.i.i.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i.lr.ph:                                ; preds = %while.cond.preheader
  %u = getelementptr inbounds %struct.rio_event, ptr %event, i32 0, i32 1
  %payload = getelementptr inbounds %struct.rio_doorbell, ptr %u, i32 0, i32 1
  %7 = add i32 %count, -72
  %8 = urem i32 %7, 72
  %9 = sub i32 %7, %8
  %10 = add i32 %9, 72
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end15.if.end8.i.i_crit_edge, %if.end8.i.i.lr.ph
  %len.033 = phi i32 [ 0, %if.end8.i.i.lr.ph ], [ %add, %if.end15.if.end8.i.i_crit_edge ]
  %buf.addr.032 = phi ptr [ %buf, %if.end8.i.i.lr.ph ], [ %add.ptr, %if.end15.if.end8.i.i_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.032, i32 72, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %event, i32 noundef 72) #11
  %12 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %event, ptr noundef %buf.addr.032, i32 noundef 72) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i28 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 72, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 72, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 72, %res.0.i.i28
  %add.ptr.i.i = getelementptr i8, ptr %event, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i28)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %16 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp8.not = icmp eq i32 %17, 1
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %u, align 4
  %20 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %payload, align 2
  %call12 = call i32 @rio_mport_send_doorbell(ptr noundef %5, i16 noundef zeroext %19, i16 noundef zeroext %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %add = add i32 %len.033, 72
  %add.ptr = getelementptr i8, ptr %buf.addr.032, i32 72
  %sub = sub i32 %count, %add
  %cmp = icmp ugt i32 %sub, 71
  br i1 %cmp, label %if.end15.if.end8.i.i_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.if.end8.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then11.i.i, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %10, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %event) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_cdev_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %event_rx_wait = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %event_rx_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %event_rx_wait, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %event_fifo = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_fifo, align 4
  %out = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool.not = icmp eq i32 %5, %7
  %. = select i1 %tobool.not, i32 0, i32 65
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_cdev_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %transaction.i = alloca %struct.rio_transaction, align 8
  %w_param.i = alloca %struct.rio_async_tx_wait, align 4
  %map.i = alloca %struct.rio_dma_mem, align 8
  %filter.i171 = alloca %struct.rio_pw_filter, align 4
  %filter.i145 = alloca %struct.rio_pw_filter, align 4
  %filter.i123 = alloca %struct.rio_doorbell_filter, align 8
  %filter.i = alloca %struct.rio_doorbell_filter, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 -2145882875, label %sw.bb
    i32 1075342598, label %sw.bb3
    i32 -2145882873, label %sw.bb5
    i32 1075342600, label %sw.bb7
    i32 1073900801, label %sw.bb9
    i32 1074031874, label %sw.bb11
    i32 -2147193597, label %sw.bb13
    i32 -2144310012, label %sw.bb15
    i32 1074294025, label %sw.bb20
    i32 1074294026, label %sw.bb22
    i32 1074818315, label %sw.bb24
    i32 1074818316, label %sw.bb26
    i32 1074031885, label %sw.bb28
    i32 -2147193586, label %sw.bb29
    i32 -1071092465, label %sw.bb35
    i32 -1071092463, label %sw.bb37
    i32 1076391184, label %sw.bb39
    i32 1074294034, label %sw.bb41
    i32 -1072141037, label %sw.bb43
    i32 1074294036, label %sw.bb45
    i32 1074294038, label %sw.bb47
    i32 -1072141035, label %sw.bb49
    i32 1075866903, label %sw.bb51
    i32 1075866904, label %sw.bb53
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = inttoptr i32 %arg to ptr
  %call2 = tail call fastcc i32 @rio_mport_maint_rd(ptr noundef %1, ptr noundef %7, i32 noundef 1)
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = inttoptr i32 %arg to ptr
  %call4 = tail call fastcc i32 @rio_mport_maint_wr(ptr noundef %1, ptr noundef %8, i32 noundef 1)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = inttoptr i32 %arg to ptr
  %call6 = tail call fastcc i32 @rio_mport_maint_rd(ptr noundef %1, ptr noundef %9, i32 noundef 0)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = inttoptr i32 %arg to ptr
  %call8 = tail call fastcc i32 @rio_mport_maint_wr(ptr noundef %1, ptr noundef %10, i32 noundef 0)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = inttoptr i32 %arg to ptr
  %call10 = tail call fastcc i32 @maint_hdid_set(ptr noundef %1, ptr noundef %11)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = inttoptr i32 %arg to ptr
  %call12 = tail call fastcc i32 @maint_comptag_set(ptr noundef %1, ptr noundef %12)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = inttoptr i32 %arg to ptr
  %call14 = tail call fastcc i32 @maint_port_idx_get(ptr noundef %1, ptr noundef %13)
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %mport = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mport, align 8
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_deviceid, align 8
  %conv = trunc i32 %17 to i16
  %properties = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %properties to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %properties, align 4
  %19 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i107 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i107, label %sw.bb15.cleanup_crit_edge, label %if.end.i.i

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb15
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 48, i32 -1226833920) #16, !srcloc !423
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %properties, i32 noundef 48) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %19, ptr noundef %properties, i32 noundef 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %21 = inttoptr i32 %arg to ptr
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter.i) #11
  %24 = getelementptr inbounds %struct.rio_doorbell_filter, ptr %filter.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.rio_doorbell_filter, ptr %filter.i, i32 0, i32 2
  %26 = ptrtoint ptr %filter.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %filter.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i.i121 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i121, label %sw.bb20.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb20.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb20
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 8, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !419

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %filter.i, i32 noundef 8) #11
  %28 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i.i = and i32 %30, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %filter.i, ptr noundef %21, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !419

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb20.if.then11.i.i.i_crit_edge
  %res.0.i.i66.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %sw.bb20.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i66.i
  %add.ptr.i.i.i = getelementptr i8, ptr %filter.i, i32 %sub.i.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i66.i)
  br label %rio_mport_add_db_filter.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %24, align 2
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp.i = icmp ugt i16 %33, %35
  br i1 %cmp.i, label %if.end.i.rio_mport_add_db_filter.exit_crit_edge, label %if.end5.i

if.end.i.rio_mport_add_db_filter.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_add_db_filter.exit

if.end5.i:                                        ; preds = %if.end.i
  %mport.i = getelementptr inbounds %struct.mport_dev, ptr %23, i32 0, i32 4
  %36 = ptrtoint ptr %mport.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mport.i, align 8
  %call8.i = call i32 @rio_request_inb_dbell(ptr noundef %37, ptr noundef %23, i16 noundef zeroext %33, i16 noundef zeroext %35, ptr noundef nonnull @rio_mport_doorbell_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end13.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  %init_name.i.i = getelementptr inbounds %struct.mport_dev, ptr %23, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.i122, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i122:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.mport_dev, ptr %23, i32 0, i32 3
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i122, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %41, %if.end.i.i122 ], [ %39, %do.end.i.dev_name.exit.i_crit_edge ]
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i, i32 noundef %call8.i) #14
  br label %rio_mport_add_db_filter.exit

if.end13.i:                                       ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 28) #15
  %cmp15.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp15.i, label %if.then17.i, label %if.end22.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %mport.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mport.i, align 8
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %24, align 2
  %47 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %25, align 4
  %call21.i = call i32 @rio_release_inb_dbell(ptr noundef %44, i16 noundef zeroext %46, i16 noundef zeroext %48) #11
  br label %rio_mport_add_db_filter.exit

if.end22.i:                                       ; preds = %if.end13.i
  %filter23.i = getelementptr inbounds %struct.rio_mport_db_filter, ptr %call7.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %filter.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %filter.i, align 8
  %51 = ptrtoint ptr %filter23.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %filter23.i, align 4
  %priv24.i = getelementptr inbounds %struct.rio_mport_db_filter, ptr %call7.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %priv24.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %1, ptr %priv24.i, align 8
  %db_lock.i = getelementptr inbounds %struct.mport_dev, ptr %23, i32 0, i32 10
  %call31.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock.i) #11
  %priv_node.i = getelementptr inbounds %struct.rio_mport_db_filter, ptr %call7.i.i.i, i32 0, i32 1
  %db_filters.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %call.i.i57.i = call zeroext i1 @__list_add_valid(ptr noundef %priv_node.i, ptr noundef %54, ptr noundef %db_filters.i) #11
  br i1 %call.i.i57.i, label %if.end.i.i58.i, label %if.end22.i.list_add_tail.exit.i_crit_edge

if.end22.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i58.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %priv_node.i, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %priv_node.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %db_filters.i, ptr %priv_node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.rio_mport_db_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %priv_node.i, ptr %54, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i58.i, %if.end22.i.list_add_tail.exit.i_crit_edge
  %doorbells.i = getelementptr inbounds %struct.mport_dev, ptr %23, i32 0, i32 9
  %prev.i59.i = getelementptr inbounds %struct.mport_dev, ptr %23, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %prev.i59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i59.i, align 4
  %call.i.i60.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %60, ptr noundef %doorbells.i) #11
  br i1 %call.i.i60.i, label %if.end.i.i62.i, label %list_add_tail.exit.i.list_add_tail.exit63.i_crit_edge

list_add_tail.exit.i.list_add_tail.exit63.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit63.i

if.end.i.i62.i:                                   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %prev.i59.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %prev.i59.i, align 4
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %doorbells.i, ptr %call7.i.i.i, align 8
  %prev3.i.i61.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i61.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %call7.i.i.i, ptr %60, align 4
  br label %list_add_tail.exit63.i

list_add_tail.exit63.i:                           ; preds = %if.end.i.i62.i, %list_add_tail.exit.i.list_add_tail.exit63.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock.i, i32 noundef %call31.i) #11
  br label %rio_mport_add_db_filter.exit

rio_mport_add_db_filter.exit:                     ; preds = %list_add_tail.exit63.i, %if.then17.i, %dev_name.exit.i, %if.end.i.rio_mport_add_db_filter.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call8.i, %dev_name.exit.i ], [ -12, %if.then17.i ], [ 0, %list_add_tail.exit63.i ], [ -22, %if.end.i.rio_mport_add_db_filter.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter.i) #11
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  %65 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter.i123) #11
  %66 = getelementptr inbounds %struct.rio_doorbell_filter, ptr %filter.i123, i32 0, i32 1
  %67 = getelementptr inbounds %struct.rio_doorbell_filter, ptr %filter.i123, i32 0, i32 2
  %68 = ptrtoint ptr %filter.i123 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 -1, ptr %filter.i123, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i.i124 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i124, label %sw.bb22.if.then11.i.i.i138_crit_edge, label %land.lhs.true.i.i.i127

sw.bb22.if.then11.i.i.i138_crit_edge:             ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i138

land.lhs.true.i.i.i127:                           ; preds = %sw.bb22
  %69 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %65, i32 8, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i.i125 = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i125)
  %cmp.i6.i.i126 = icmp eq i32 %asmresult.i.i.i125, 0
  br i1 %cmp.i6.i.i126, label %if.end.i.i.i135, label %land.lhs.true.i.i.i127.if.then11.i.i.i138_crit_edge, !prof !419

land.lhs.true.i.i.i127.if.then11.i.i.i138_crit_edge: ; preds = %land.lhs.true.i.i.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i138

if.end.i.i.i135:                                  ; preds = %land.lhs.true.i.i.i127
  %call.i.i.i.i128 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %filter.i123, i32 noundef 8) #11
  %70 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i.i129 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i.i129 to ptr
  %cpu_domain.i.i.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 4
  %72 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i130) #7, !srcloc !420
  %and.i.i.i.i.i131 = and i32 %72, -13
  %or.i.i.i.i.i132 = or i32 %and.i.i.i.i.i131, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i132) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i.i133 = call i32 @arm_copy_from_user(ptr noundef nonnull %filter.i123, ptr noundef %65, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i133)
  %tobool4.not.i.i.i134 = icmp eq i32 %call1.i.i.i.i133, 0
  br i1 %tobool4.not.i.i.i134, label %if.end.i140, label %if.end.i.i.i135.if.then11.i.i.i138_crit_edge, !prof !419

if.end.i.i.i135.if.then11.i.i.i138_crit_edge:     ; preds = %if.end.i.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i138

if.then11.i.i.i138:                               ; preds = %if.end.i.i.i135.if.then11.i.i.i138_crit_edge, %land.lhs.true.i.i.i127.if.then11.i.i.i138_crit_edge, %sw.bb22.if.then11.i.i.i138_crit_edge
  %res.0.i.i69.i = phi i32 [ %call1.i.i.i.i133, %if.end.i.i.i135.if.then11.i.i.i138_crit_edge ], [ 8, %sw.bb22.if.then11.i.i.i138_crit_edge ], [ 8, %land.lhs.true.i.i.i127.if.then11.i.i.i138_crit_edge ]
  %sub.i.i.i136 = sub i32 8, %res.0.i.i69.i
  %add.ptr.i.i.i137 = getelementptr i8, ptr %filter.i123, i32 %sub.i.i.i136
  %73 = call ptr @memset(ptr %add.ptr.i.i.i137, i32 0, i32 %res.0.i.i69.i)
  br label %rio_mport_remove_db_filter.exit

if.end.i140:                                      ; preds = %if.end.i.i.i135
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %66, align 2
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %67, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp.i139 = icmp ugt i16 %75, %77
  br i1 %cmp.i139, label %if.end.i140.rio_mport_remove_db_filter.exit_crit_edge, label %do.body5.i

if.end.i140.rio_mport_remove_db_filter.exit_crit_edge: ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_remove_db_filter.exit

do.body5.i:                                       ; preds = %if.end.i140
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %db_lock.i141 = getelementptr inbounds %struct.mport_dev, ptr %79, i32 0, i32 10
  %call9.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock.i141) #11
  %db_filters.i142 = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %db_filters.i142 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn79.i = load ptr, ptr %db_filters.i142, align 4
  %cmp14.not80.i = icmp eq ptr %.pn79.i, %db_filters.i142
  br i1 %cmp14.not80.i, label %do.body5.i.for.end.thread.i_crit_edge, label %for.body.lr.ph.i

do.body5.i.for.end.thread.i_crit_edge:            ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

for.body.lr.ph.i:                                 ; preds = %do.body5.i
  %81 = ptrtoint ptr %filter.i123 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %filter.i123, align 8
  br label %for.body.i

for.end.thread.i:                                 ; preds = %for.inc.i.for.end.thread.i_crit_edge, %do.body5.i.for.end.thread.i_crit_edge
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %db_lock4573.i = getelementptr inbounds %struct.mport_dev, ptr %84, i32 0, i32 10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock4573.i, i32 noundef %call9.i) #11
  br label %rio_mport_remove_db_filter.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn81.i = phi ptr [ %.pn79.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %filter16.i = getelementptr i8, ptr %.pn81.i, i32 12
  %85 = ptrtoint ptr %filter16.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %filter16.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %82)
  %cmp20.i = icmp eq i16 %86, %82
  br i1 %cmp20.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %low23.i = getelementptr i8, ptr %.pn81.i, i32 14
  %87 = ptrtoint ptr %low23.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %low23.i, align 2
  %89 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %66, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %90)
  %cmp27.i = icmp eq i16 %88, %90
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true29.i:                                ; preds = %land.lhs.true.i
  %high31.i = getelementptr i8, ptr %.pn81.i, i32 16
  %91 = ptrtoint ptr %high31.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %high31.i, align 4
  %93 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %67, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %94)
  %cmp35.i = icmp eq i16 %92, %94
  br i1 %cmp35.i, label %if.then37.i, label %land.lhs.true29.i.for.inc.i_crit_edge

land.lhs.true29.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then37.i:                                      ; preds = %land.lhs.true29.i
  %db_filter.0.le.i = getelementptr i8, ptr %.pn81.i, i32 -8
  %call.i.i.i66.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %db_filter.0.le.i) #11
  br i1 %call.i.i.i66.i, label %if.end.i.i.i.i, label %if.then37.i.list_del.exit.i.i_crit_edge

if.then37.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr i8, ptr %.pn81.i, i32 -4
  %95 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i.i.i, align 4
  %97 = ptrtoint ptr %db_filter.0.le.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %db_filter.0.le.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then37.i.list_del.exit.i.i_crit_edge
  %101 = ptrtoint ptr %db_filter.0.le.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 256 to ptr), ptr %db_filter.0.le.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn81.i, i32 -4
  %102 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %call.i.i3.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn81.i) #11
  br i1 %call.i.i3.i.i, label %if.end.i.i6.i.i, label %list_del.exit.i.i.if.then47.i_crit_edge

list_del.exit.i.i.if.then47.i_crit_edge:          ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47.i

if.end.i.i6.i.i:                                  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i4.i.i = getelementptr i8, ptr %.pn81.i, i32 4
  %103 = ptrtoint ptr %prev.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i4.i.i, align 4
  %105 = ptrtoint ptr %.pn81.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %.pn81.i, align 4
  %prev1.i.i.i5.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i5.i.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %if.then47.i

for.inc.i:                                        ; preds = %land.lhs.true29.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %109 = ptrtoint ptr %.pn81.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pn.i = load ptr, ptr %.pn81.i, align 4
  %cmp14.not.i = icmp eq ptr %.pn.i, %db_filters.i142
  br i1 %cmp14.not.i, label %for.inc.i.for.end.thread.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

if.then47.i:                                      ; preds = %if.end.i.i6.i.i, %list_del.exit.i.i.if.then47.i_crit_edge
  %110 = ptrtoint ptr %.pn81.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn81.i, align 4
  %prev.i7.i.i = getelementptr i8, ptr %.pn81.i, i32 4
  %111 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i.i, align 4
  call void @kfree(ptr noundef %db_filter.0.le.i) #11
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %db_lock45.i = getelementptr inbounds %struct.mport_dev, ptr %113, i32 0, i32 10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock45.i, i32 noundef %call9.i) #11
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %mport.i143 = getelementptr inbounds %struct.mport_dev, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %mport.i143 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mport.i143, align 8
  %118 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %66, align 2
  %120 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %67, align 4
  %call51.i = call i32 @rio_release_inb_dbell(ptr noundef %117, i16 noundef zeroext %119, i16 noundef zeroext %121) #11
  br label %rio_mport_remove_db_filter.exit

rio_mport_remove_db_filter.exit:                  ; preds = %if.then47.i, %for.end.thread.i, %if.end.i140.rio_mport_remove_db_filter.exit_crit_edge, %if.then11.i.i.i138
  %retval.0.i144 = phi i32 [ -22, %if.end.i140.rio_mport_remove_db_filter.exit_crit_edge ], [ 0, %if.then47.i ], [ -22, %for.end.thread.i ], [ -14, %if.then11.i.i.i138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter.i123) #11
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %122 = inttoptr i32 %arg to ptr
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter.i145) #11
  %125 = call ptr @memset(ptr %filter.i145, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i.i146 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i146, label %sw.bb24.if.then11.i.i.i160_crit_edge, label %land.lhs.true.i.i.i149

sw.bb24.if.then11.i.i.i160_crit_edge:             ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i160

land.lhs.true.i.i.i149:                           ; preds = %sw.bb24
  %126 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %122, i32 16, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i.i147 = extractvalue { i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i147)
  %cmp.i6.i.i148 = icmp eq i32 %asmresult.i.i.i147, 0
  br i1 %cmp.i6.i.i148, label %if.end.i.i.i157, label %land.lhs.true.i.i.i149.if.then11.i.i.i160_crit_edge, !prof !419

land.lhs.true.i.i.i149.if.then11.i.i.i160_crit_edge: ; preds = %land.lhs.true.i.i.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i160

if.end.i.i.i157:                                  ; preds = %land.lhs.true.i.i.i149
  %call.i.i.i.i150 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %filter.i145, i32 noundef 16) #11
  %127 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i.i151 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i.i.i151 to ptr
  %cpu_domain.i.i.i.i.i.i152 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 4
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i152) #7, !srcloc !420
  %and.i.i.i.i.i153 = and i32 %129, -13
  %or.i.i.i.i.i154 = or i32 %and.i.i.i.i.i153, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i154) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i.i155 = call i32 @arm_copy_from_user(ptr noundef nonnull %filter.i145, ptr noundef %122, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i155)
  %tobool4.not.i.i.i156 = icmp eq i32 %call1.i.i.i.i155, 0
  br i1 %tobool4.not.i.i.i156, label %if.end.i163, label %if.end.i.i.i157.if.then11.i.i.i160_crit_edge, !prof !419

if.end.i.i.i157.if.then11.i.i.i160_crit_edge:     ; preds = %if.end.i.i.i157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i160

if.then11.i.i.i160:                               ; preds = %if.end.i.i.i157.if.then11.i.i.i160_crit_edge, %land.lhs.true.i.i.i149.if.then11.i.i.i160_crit_edge, %sw.bb24.if.then11.i.i.i160_crit_edge
  %res.0.i.i61.i = phi i32 [ %call1.i.i.i.i155, %if.end.i.i.i157.if.then11.i.i.i160_crit_edge ], [ 16, %sw.bb24.if.then11.i.i.i160_crit_edge ], [ 16, %land.lhs.true.i.i.i149.if.then11.i.i.i160_crit_edge ]
  %sub.i.i.i158 = sub i32 16, %res.0.i.i61.i
  %add.ptr.i.i.i159 = getelementptr i8, ptr %filter.i145, i32 %sub.i.i.i158
  %130 = call ptr @memset(ptr %add.ptr.i.i.i159, i32 0, i32 %res.0.i.i61.i)
  br label %rio_mport_add_pw_filter.exit

if.end.i163:                                      ; preds = %if.end.i.i.i157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %131 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i161 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %131, i32 noundef 3520, i32 noundef 36) #15
  %cmp.i162 = icmp eq ptr %call7.i.i.i161, null
  br i1 %cmp.i162, label %if.end.i163.rio_mport_add_pw_filter.exit_crit_edge, label %if.end4.i

if.end.i163.rio_mport_add_pw_filter.exit_crit_edge: ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_add_pw_filter.exit

if.end4.i:                                        ; preds = %if.end.i163
  %filter5.i = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %call7.i.i.i161, i32 0, i32 3
  %132 = call ptr @memcpy(ptr %filter5.i, ptr %filter.i145, i32 16)
  %priv6.i = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %call7.i.i.i161, i32 0, i32 2
  %133 = ptrtoint ptr %priv6.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %1, ptr %priv6.i, align 8
  %pw_lock.i = getelementptr inbounds %struct.mport_dev, ptr %124, i32 0, i32 12
  %call10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pw_lock.i) #11
  %portwrites.i = getelementptr inbounds %struct.mport_dev, ptr %124, i32 0, i32 11
  %134 = ptrtoint ptr %portwrites.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile ptr, ptr %portwrites.i, align 4
  %cmp.i.not.i = icmp eq ptr %135, %portwrites.i
  %priv_node.i164 = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %call7.i.i.i161, i32 0, i32 1
  %pw_filters.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 4
  %prev.i.i165 = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 4, i32 1
  %136 = ptrtoint ptr %prev.i.i165 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i.i165, align 4
  %call.i.i52.i = call zeroext i1 @__list_add_valid(ptr noundef %priv_node.i164, ptr noundef %137, ptr noundef %pw_filters.i) #11
  br i1 %call.i.i52.i, label %if.end.i.i53.i, label %if.end4.i.list_add_tail.exit.i167_crit_edge

if.end4.i.list_add_tail.exit.i167_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i167

if.end.i.i53.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %prev.i.i165 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %priv_node.i164, ptr %prev.i.i165, align 4
  %139 = ptrtoint ptr %priv_node.i164 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %pw_filters.i, ptr %priv_node.i164, align 8
  %prev3.i.i.i166 = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %call7.i.i.i161, i32 0, i32 1, i32 1
  %140 = ptrtoint ptr %prev3.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev3.i.i.i166, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %priv_node.i164, ptr %137, align 4
  br label %list_add_tail.exit.i167

list_add_tail.exit.i167:                          ; preds = %if.end.i.i53.i, %if.end4.i.list_add_tail.exit.i167_crit_edge
  %prev.i54.i = getelementptr inbounds %struct.mport_dev, ptr %124, i32 0, i32 11, i32 1
  %142 = ptrtoint ptr %prev.i54.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i54.i, align 4
  %call.i.i55.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i161, ptr noundef %143, ptr noundef %portwrites.i) #11
  br i1 %call.i.i55.i, label %if.end.i.i57.i, label %list_add_tail.exit.i167.list_add_tail.exit58.i_crit_edge

list_add_tail.exit.i167.list_add_tail.exit58.i_crit_edge: ; preds = %list_add_tail.exit.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit58.i

if.end.i.i57.i:                                   ; preds = %list_add_tail.exit.i167
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %prev.i54.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call7.i.i.i161, ptr %prev.i54.i, align 4
  %145 = ptrtoint ptr %call7.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %portwrites.i, ptr %call7.i.i.i161, align 8
  %prev3.i.i56.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i161, i32 0, i32 1
  %146 = ptrtoint ptr %prev3.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev3.i.i56.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %call7.i.i.i161, ptr %143, align 4
  br label %list_add_tail.exit58.i

list_add_tail.exit58.i:                           ; preds = %if.end.i.i57.i, %list_add_tail.exit.i167.list_add_tail.exit58.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pw_lock.i, i32 noundef %call10.i) #11
  br i1 %cmp.i.not.i, label %if.then20.i, label %list_add_tail.exit58.i.rio_mport_add_pw_filter.exit_crit_edge

list_add_tail.exit58.i.rio_mport_add_pw_filter.exit_crit_edge: ; preds = %list_add_tail.exit58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_add_pw_filter.exit

if.then20.i:                                      ; preds = %list_add_tail.exit58.i
  %mport.i168 = getelementptr inbounds %struct.mport_dev, ptr %124, i32 0, i32 4
  %148 = ptrtoint ptr %mport.i168 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mport.i168, align 8
  %call21.i169 = call i32 @rio_add_mport_pw_handler(ptr noundef %149, ptr noundef %124, ptr noundef nonnull @rio_mport_pw_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i169)
  %tobool22.not.i = icmp eq i32 %call21.i169, 0
  br i1 %tobool22.not.i, label %if.end27.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i170 = getelementptr inbounds %struct.mport_dev, ptr %124, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i170, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %call21.i169) #14
  br label %rio_mport_add_pw_filter.exit

if.end27.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %mport.i168 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mport.i168, align 8
  call void @rio_pw_enable(ptr noundef %151, i32 noundef 1) #11
  br label %rio_mport_add_pw_filter.exit

rio_mport_add_pw_filter.exit:                     ; preds = %if.end27.i, %do.end26.i, %list_add_tail.exit58.i.rio_mport_add_pw_filter.exit_crit_edge, %if.end.i163.rio_mport_add_pw_filter.exit_crit_edge, %if.then11.i.i.i160
  %retval.1.i = phi i32 [ -12, %if.end.i163.rio_mport_add_pw_filter.exit_crit_edge ], [ %call21.i169, %do.end26.i ], [ 0, %if.end27.i ], [ 0, %list_add_tail.exit58.i.rio_mport_add_pw_filter.exit_crit_edge ], [ -14, %if.then11.i.i.i160 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter.i145) #11
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  %152 = inttoptr i32 %arg to ptr
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter.i171) #11
  %155 = getelementptr inbounds %struct.rio_pw_filter, ptr %filter.i171, i32 0, i32 1
  %156 = getelementptr inbounds %struct.rio_pw_filter, ptr %filter.i171, i32 0, i32 2
  %157 = call ptr @memset(ptr %filter.i171, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i.i172 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i172, label %sw.bb26.if.then11.i.i.i186_crit_edge, label %land.lhs.true.i.i.i175

sw.bb26.if.then11.i.i.i186_crit_edge:             ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i186

land.lhs.true.i.i.i175:                           ; preds = %sw.bb26
  %158 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %152, i32 16, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i.i173 = extractvalue { i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i173)
  %cmp.i6.i.i174 = icmp eq i32 %asmresult.i.i.i173, 0
  br i1 %cmp.i6.i.i174, label %if.end.i.i.i183, label %land.lhs.true.i.i.i175.if.then11.i.i.i186_crit_edge, !prof !419

land.lhs.true.i.i.i175.if.then11.i.i.i186_crit_edge: ; preds = %land.lhs.true.i.i.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i186

if.end.i.i.i183:                                  ; preds = %land.lhs.true.i.i.i175
  %call.i.i.i.i176 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %filter.i171, i32 noundef 16) #11
  %159 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i.i177 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i.i.i.i.i177 to ptr
  %cpu_domain.i.i.i.i.i.i178 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 4
  %161 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i178) #7, !srcloc !420
  %and.i.i.i.i.i179 = and i32 %161, -13
  %or.i.i.i.i.i180 = or i32 %and.i.i.i.i.i179, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i180) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i.i181 = call i32 @arm_copy_from_user(ptr noundef nonnull %filter.i171, ptr noundef %152, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %161) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i181)
  %tobool4.not.i.i.i182 = icmp eq i32 %call1.i.i.i.i181, 0
  br i1 %tobool4.not.i.i.i182, label %do.body2.i, label %if.end.i.i.i183.if.then11.i.i.i186_crit_edge, !prof !419

if.end.i.i.i183.if.then11.i.i.i186_crit_edge:     ; preds = %if.end.i.i.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i186

if.then11.i.i.i186:                               ; preds = %if.end.i.i.i183.if.then11.i.i.i186_crit_edge, %land.lhs.true.i.i.i175.if.then11.i.i.i186_crit_edge, %sw.bb26.if.then11.i.i.i186_crit_edge
  %res.0.i.i51.i = phi i32 [ %call1.i.i.i.i181, %if.end.i.i.i183.if.then11.i.i.i186_crit_edge ], [ 16, %sw.bb26.if.then11.i.i.i186_crit_edge ], [ 16, %land.lhs.true.i.i.i175.if.then11.i.i.i186_crit_edge ]
  %sub.i.i.i184 = sub i32 16, %res.0.i.i51.i
  %add.ptr.i.i.i185 = getelementptr i8, ptr %filter.i171, i32 %sub.i.i.i184
  %162 = call ptr @memset(ptr %add.ptr.i.i.i185, i32 0, i32 %res.0.i.i51.i)
  br label %rio_mport_remove_pw_filter.exit

do.body2.i:                                       ; preds = %if.end.i.i.i183
  %pw_lock.i187 = getelementptr inbounds %struct.mport_dev, ptr %154, i32 0, i32 12
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %pw_lock.i187) #11
  %pw_filters.i188 = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 4
  %163 = ptrtoint ptr %pw_filters.i188 to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pn61.i = load ptr, ptr %pw_filters.i188, align 4
  %cmp9.not62.i = icmp eq ptr %.pn61.i, %pw_filters.i188
  br i1 %cmp9.not62.i, label %do.body2.i.for.end.i_crit_edge, label %for.body.lr.ph.i189

do.body2.i.for.end.i_crit_edge:                   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i189:                              ; preds = %do.body2.i
  %164 = ptrtoint ptr %filter.i171 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %filter.i171, align 4
  br label %for.body.i191

for.body.i191:                                    ; preds = %rio_mport_match_pw_filter.exit.i.for.body.i191_crit_edge, %for.body.lr.ph.i189
  %.pn63.i = phi ptr [ %.pn61.i, %for.body.lr.ph.i189 ], [ %.pn.i192, %rio_mport_match_pw_filter.exit.i.for.body.i191_crit_edge ]
  %filter11.i = getelementptr i8, ptr %.pn63.i, i32 12
  %166 = ptrtoint ptr %filter11.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %filter11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %165)
  %cmp.i.i190 = icmp eq i32 %167, %165
  br i1 %cmp.i.i190, label %land.lhs.true.i.i, label %for.body.i191.rio_mport_match_pw_filter.exit.i_crit_edge

for.body.i191.rio_mport_match_pw_filter.exit.i_crit_edge: ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_match_pw_filter.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i191
  %low.i.i = getelementptr i8, ptr %.pn63.i, i32 16
  %168 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %low.i.i, align 4
  %170 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp3.i.i = icmp eq i32 %169, %171
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.rio_mport_match_pw_filter.exit.i_crit_edge

land.lhs.true.i.i.rio_mport_match_pw_filter.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_match_pw_filter.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %high.i.i = getelementptr i8, ptr %.pn63.i, i32 20
  %172 = ptrtoint ptr %high.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %high.i.i, align 4
  %174 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %156, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %175)
  %cmp6.i.i = icmp eq i32 %173, %175
  br i1 %cmp6.i.i, label %if.then14.i, label %land.lhs.true4.i.i.rio_mport_match_pw_filter.exit.i_crit_edge

land.lhs.true4.i.i.rio_mport_match_pw_filter.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_match_pw_filter.exit.i

rio_mport_match_pw_filter.exit.i:                 ; preds = %land.lhs.true4.i.i.rio_mport_match_pw_filter.exit.i_crit_edge, %land.lhs.true.i.i.rio_mport_match_pw_filter.exit.i_crit_edge, %for.body.i191.rio_mport_match_pw_filter.exit.i_crit_edge
  %176 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pn.i192 = load ptr, ptr %.pn63.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn.i192, %pw_filters.i188
  br i1 %cmp9.not.i, label %rio_mport_match_pw_filter.exit.i.for.end.i_crit_edge, label %rio_mport_match_pw_filter.exit.i.for.body.i191_crit_edge

rio_mport_match_pw_filter.exit.i.for.body.i191_crit_edge: ; preds = %rio_mport_match_pw_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i191

rio_mport_match_pw_filter.exit.i.for.end.i_crit_edge: ; preds = %rio_mport_match_pw_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then14.i:                                      ; preds = %land.lhs.true4.i.i
  %pw_filter.0.le.i = getelementptr i8, ptr %.pn63.i, i32 -8
  %call.i.i.i47.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pw_filter.0.le.i) #11
  br i1 %call.i.i.i47.i, label %if.end.i.i.i.i195, label %if.then14.i.list_del.exit.i.i198_crit_edge

if.then14.i.list_del.exit.i.i198_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i198

if.end.i.i.i.i195:                                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i193 = getelementptr i8, ptr %.pn63.i, i32 -4
  %177 = ptrtoint ptr %prev.i.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %prev.i.i.i.i193, align 4
  %179 = ptrtoint ptr %pw_filter.0.le.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pw_filter.0.le.i, align 4
  %prev1.i.i.i.i.i194 = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %prev1.i.i.i.i.i194 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %prev1.i.i.i.i.i194, align 4
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %180, ptr %178, align 4
  br label %list_del.exit.i.i198

list_del.exit.i.i198:                             ; preds = %if.end.i.i.i.i195, %if.then14.i.list_del.exit.i.i198_crit_edge
  %183 = ptrtoint ptr %pw_filter.0.le.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr inttoptr (i32 256 to ptr), ptr %pw_filter.0.le.i, align 4
  %prev.i.i.i196 = getelementptr i8, ptr %.pn63.i, i32 -4
  %184 = ptrtoint ptr %prev.i.i.i196 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i196, align 4
  %call.i.i3.i.i197 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn63.i) #11
  br i1 %call.i.i3.i.i197, label %if.end.i.i6.i.i201, label %list_del.exit.i.i198.rio_mport_delete_pw_filter.exit.i_crit_edge

list_del.exit.i.i198.rio_mport_delete_pw_filter.exit.i_crit_edge: ; preds = %list_del.exit.i.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_delete_pw_filter.exit.i

if.end.i.i6.i.i201:                               ; preds = %list_del.exit.i.i198
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i4.i.i199 = getelementptr i8, ptr %.pn63.i, i32 4
  %185 = ptrtoint ptr %prev.i.i4.i.i199 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %prev.i.i4.i.i199, align 4
  %187 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %.pn63.i, align 4
  %prev1.i.i.i5.i.i200 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %prev1.i.i.i5.i.i200 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %186, ptr %prev1.i.i.i5.i.i200, align 4
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %188, ptr %186, align 4
  br label %rio_mport_delete_pw_filter.exit.i

rio_mport_delete_pw_filter.exit.i:                ; preds = %if.end.i.i6.i.i201, %list_del.exit.i.i198.rio_mport_delete_pw_filter.exit.i_crit_edge
  %191 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn63.i, align 4
  %prev.i7.i.i202 = getelementptr i8, ptr %.pn63.i, i32 4
  %192 = ptrtoint ptr %prev.i7.i.i202 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i.i202, align 4
  call void @kfree(ptr noundef %pw_filter.0.le.i) #11
  br label %for.end.i

for.end.i:                                        ; preds = %rio_mport_delete_pw_filter.exit.i, %rio_mport_match_pw_filter.exit.i.for.end.i_crit_edge, %do.body2.i.for.end.i_crit_edge
  %ret.0.i = phi i32 [ 0, %rio_mport_delete_pw_filter.exit.i ], [ -22, %do.body2.i.for.end.i_crit_edge ], [ -22, %rio_mport_match_pw_filter.exit.i.for.end.i_crit_edge ]
  %portwrites.i203 = getelementptr inbounds %struct.mport_dev, ptr %154, i32 0, i32 11
  %193 = ptrtoint ptr %portwrites.i203 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile ptr, ptr %portwrites.i203, align 4
  %cmp.i48.not.i = icmp eq ptr %194, %portwrites.i203
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pw_lock.i187, i32 noundef %call4.i) #11
  br i1 %cmp.i48.not.i, label %if.then27.i, label %for.end.i.rio_mport_remove_pw_filter.exit_crit_edge

for.end.i.rio_mport_remove_pw_filter.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_remove_pw_filter.exit

if.then27.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mport.i204 = getelementptr inbounds %struct.mport_dev, ptr %154, i32 0, i32 4
  %195 = ptrtoint ptr %mport.i204 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mport.i204, align 8
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 4
  %call29.i = call i32 @rio_del_mport_pw_handler(ptr noundef %196, ptr noundef %198, ptr noundef nonnull @rio_mport_pw_handler) #11
  %199 = ptrtoint ptr %mport.i204 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mport.i204, align 8
  call void @rio_pw_enable(ptr noundef %200, i32 noundef 0) #11
  br label %rio_mport_remove_pw_filter.exit

rio_mport_remove_pw_filter.exit:                  ; preds = %if.then27.i, %for.end.i.rio_mport_remove_pw_filter.exit_crit_edge, %if.then11.i.i.i186
  %retval.0.i205 = phi i32 [ %ret.0.i, %if.then27.i ], [ %ret.0.i, %for.end.i.rio_mport_remove_pw_filter.exit_crit_edge ], [ -14, %if.then11.i.i.i186 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter.i171) #11
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %event_mask = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 8
  %201 = ptrtoint ptr %event_mask to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %arg, ptr %event_mask, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %202 = inttoptr i32 %arg to ptr
  %event_mask30 = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 8
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i112 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i112, label %sw.bb29.cleanup_crit_edge, label %if.end.i.i115

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i115:                                    ; preds = %sw.bb29
  %203 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %202, i32 4, i32 -1226833920) #16, !srcloc !423
  %asmresult.i.i113 = extractvalue { i32, i32 } %203, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i113)
  %cmp.i6.i114 = icmp eq i32 %asmresult.i.i113, 0
  br i1 %cmp.i6.i114, label %copy_to_user.exit120, label %if.end.i.i115.cleanup_crit_edge

if.end.i.i115.cleanup_crit_edge:                  ; preds = %if.end.i.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit120:                             ; preds = %if.end.i.i115
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_mask30, i32 noundef 4) #11
  %call.i12.i.i117 = tail call i32 @arm_copy_to_user(ptr noundef %202, ptr noundef %event_mask30, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i117)
  %tobool32.not = icmp eq i32 %call.i12.i.i117, 0
  %spec.select290 = select i1 %tobool32.not, i32 0, i32 -14
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %204 = inttoptr i32 %arg to ptr
  %call36 = tail call fastcc i32 @rio_mport_obw_map(ptr noundef %filp, ptr noundef %204)
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %205 = inttoptr i32 %arg to ptr
  %call38 = tail call fastcc i32 @rio_mport_map_inbound(ptr noundef %filp, ptr noundef %205)
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %206 = inttoptr i32 %arg to ptr
  %call40 = tail call fastcc i32 @rio_mport_obw_free(ptr noundef %filp, ptr noundef %206)
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %207 = inttoptr i32 %arg to ptr
  %call42 = tail call fastcc i32 @rio_mport_inbound_free(ptr noundef %filp, ptr noundef %207)
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  %208 = inttoptr i32 %arg to ptr
  %209 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %private_data, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map.i) #11
  %213 = getelementptr inbounds %struct.rio_dma_mem, ptr %map.i, i32 0, i32 1
  %214 = call ptr @memset(ptr %map.i, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i.i206 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i206, label %sw.bb43.if.then11.i.i.i220_crit_edge, label %land.lhs.true.i.i.i209

sw.bb43.if.then11.i.i.i220_crit_edge:             ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i220

land.lhs.true.i.i.i209:                           ; preds = %sw.bb43
  %215 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %208, i32 24, i32 -1226833920) #16
  %asmresult.i.i.i207 = extractvalue { i32, i32 } %215, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i207)
  %cmp.i6.i.i208 = icmp eq i32 %asmresult.i.i.i207, 0
  br i1 %cmp.i6.i.i208, label %if.end.i.i.i217, label %land.lhs.true.i.i.i209.if.then11.i.i.i220_crit_edge, !prof !419

land.lhs.true.i.i.i209.if.then11.i.i.i220_crit_edge: ; preds = %land.lhs.true.i.i.i209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i220

if.end.i.i.i217:                                  ; preds = %land.lhs.true.i.i.i209
  %call.i.i.i.i210 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map.i, i32 noundef 24) #11
  %216 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i.i211 = and i32 %216, -16384
  %217 = inttoptr i32 %and.i.i.i.i.i.i.i211 to ptr
  %cpu_domain.i.i.i.i.i.i212 = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 4
  %218 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i212) #7, !srcloc !420
  %and.i.i.i.i.i213 = and i32 %218, -13
  %or.i.i.i.i.i214 = or i32 %and.i.i.i.i.i213, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i214) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i.i215 = call i32 @arm_copy_from_user(ptr noundef nonnull %map.i, ptr noundef %208, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %218) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i215)
  %tobool4.not.i.i.i216 = icmp eq i32 %call1.i.i.i.i215, 0
  br i1 %tobool4.not.i.i.i216, label %if.end.i222, label %if.end.i.i.i217.if.then11.i.i.i220_crit_edge, !prof !419

if.end.i.i.i217.if.then11.i.i.i220_crit_edge:     ; preds = %if.end.i.i.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i220

if.then11.i.i.i220:                               ; preds = %if.end.i.i.i217.if.then11.i.i.i220_crit_edge, %land.lhs.true.i.i.i209.if.then11.i.i.i220_crit_edge, %sw.bb43.if.then11.i.i.i220_crit_edge
  %res.0.i.i44.i = phi i32 [ %call1.i.i.i.i215, %if.end.i.i.i217.if.then11.i.i.i220_crit_edge ], [ 24, %sw.bb43.if.then11.i.i.i220_crit_edge ], [ 24, %land.lhs.true.i.i.i209.if.then11.i.i.i220_crit_edge ]
  %sub.i.i.i218 = sub i32 24, %res.0.i.i44.i
  %add.ptr.i.i.i219 = getelementptr i8, ptr %map.i, i32 %sub.i.i.i218
  %219 = call ptr @memset(ptr %add.ptr.i.i.i219, i32 0, i32 %res.0.i.i44.i)
  br label %rio_mport_alloc_dma.exit

if.end.i222:                                      ; preds = %if.end.i.i.i217
  %220 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %map.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %222 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %222, i32 noundef 3520, i32 noundef 56) #15
  %cmp.i.i221 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i221, label %if.end.i222.rio_mport_alloc_dma.exit_crit_edge, label %if.end.i.i224

if.end.i222.rio_mport_alloc_dma.exit_crit_edge:   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_alloc_dma.exit

if.end.i.i224:                                    ; preds = %if.end.i222
  %mport.i.i = getelementptr inbounds %struct.mport_dev, ptr %212, i32 0, i32 4
  %223 = ptrtoint ptr %mport.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mport.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.rio_mport, ptr %224, i32 0, i32 18, i32 1
  %225 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %parent.i.i, align 8
  %conv.i.i = trunc i64 %221 to i32
  %phys_addr.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 5
  %call.i.i39.i = call ptr @dma_alloc_attrs(ptr noundef %226, i32 noundef %conv.i.i, ptr noundef %phys_addr.i.i, i32 noundef 3264, i32 noundef 0) #11
  %virt_addr.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 6
  %227 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call.i.i39.i, ptr %virt_addr.i.i, align 4
  %cmp3.i.i223 = icmp eq ptr %call.i.i39.i, null
  br i1 %cmp3.i.i223, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i224
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %rio_mport_alloc_dma.exit

if.end6.i.i:                                      ; preds = %if.end.i.i224
  %dir.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 2
  %228 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 2, ptr %dir.i.i, align 4
  %size7.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 7
  %229 = ptrtoint ptr %size7.i.i to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %221, ptr %size7.i.i, align 8
  %filp8.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 9
  %230 = ptrtoint ptr %filp8.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %filp, ptr %filp8.i.i, align 4
  %md9.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 1
  %231 = ptrtoint ptr %md9.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %212, ptr %md9.i.i, align 8
  %ref.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  %232 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile i32 1, ptr %ref.i.i, align 8
  %buf_mutex.i.i = getelementptr inbounds %struct.mport_dev, ptr %212, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex.i.i, i32 noundef 0) #11
  %mappings.i.i = getelementptr inbounds %struct.mport_dev, ptr %212, i32 0, i32 13
  %prev.i.i.i225 = getelementptr inbounds %struct.mport_dev, ptr %212, i32 0, i32 13, i32 1
  %233 = ptrtoint ptr %prev.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %prev.i.i.i225, align 4
  %call.i.i.i40.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %234, ptr noundef %mappings.i.i) #11
  br i1 %call.i.i.i40.i, label %if.end.i.i.i.i226, label %if.end6.i.i.if.end8.i.i32.i_crit_edge

if.end6.i.i.if.end8.i.i32.i_crit_edge:            ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i32.i

if.end.i.i.i.i226:                                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %235 = ptrtoint ptr %prev.i.i.i225 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i225, align 4
  %236 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %mappings.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %234, ptr %prev3.i.i.i.i, align 4
  %238 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile ptr %call7.i.i.i.i, ptr %234, align 4
  br label %if.end8.i.i32.i

if.end8.i.i32.i:                                  ; preds = %if.end.i.i.i.i226, %if.end6.i.i.if.end8.i.i32.i_crit_edge
  call void @mutex_unlock(ptr noundef %buf_mutex.i.i) #11
  %239 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %phys_addr.i.i, align 8
  %conv.i = zext i32 %240 to i64
  %241 = ptrtoint ptr %213 to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %conv.i, ptr %213, align 8
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i33.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i33.i, label %if.end8.i.i32.i.if.then16.i_crit_edge, label %copy_to_user.exit.i

if.end8.i.i32.i.if.then16.i_crit_edge:            ; preds = %if.end8.i.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

copy_to_user.exit.i:                              ; preds = %if.end8.i.i32.i
  %call.i.i.i37.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %map.i, i32 noundef 24) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %208, ptr noundef nonnull %map.i, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool9.not.i227 = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool9.not.i227, label %copy_to_user.exit.i.rio_mport_alloc_dma.exit_crit_edge, label %copy_to_user.exit.i.if.then16.i_crit_edge, !prof !419

copy_to_user.exit.i.if.then16.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

copy_to_user.exit.i.rio_mport_alloc_dma.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_alloc_dma.exit

if.then16.i:                                      ; preds = %copy_to_user.exit.i.if.then16.i_crit_edge, %if.end8.i.i32.i.if.then16.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %buf_mutex.i.i, i32 noundef 0) #11
  call fastcc void @kref_put(ptr noundef %ref.i.i, ptr noundef nonnull @mport_release_mapping) #11
  call void @mutex_unlock(ptr noundef %buf_mutex.i.i) #11
  br label %rio_mport_alloc_dma.exit

rio_mport_alloc_dma.exit:                         ; preds = %if.then16.i, %copy_to_user.exit.i.rio_mport_alloc_dma.exit_crit_edge, %if.then5.i.i, %if.end.i222.rio_mport_alloc_dma.exit_crit_edge, %if.then11.i.i.i220
  %retval.0.i228 = phi i32 [ -14, %if.then16.i ], [ 0, %copy_to_user.exit.i.rio_mport_alloc_dma.exit_crit_edge ], [ -14, %if.then11.i.i.i220 ], [ -12, %if.then5.i.i ], [ -12, %if.end.i222.rio_mport_alloc_dma.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i) #11
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %242 = inttoptr i32 %arg to ptr
  %call46 = tail call fastcc i32 @rio_mport_free_dma(ptr noundef %filp, ptr noundef %242)
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  %243 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %w_param.i) #11
  %244 = ptrtoint ptr %w_param.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1, ptr %w_param.i, align 4, !annotation !417
  %245 = getelementptr inbounds %struct.rio_async_tx_wait, ptr %w_param.i, i32 0, i32 1
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 -1, ptr %245, align 4, !annotation !417
  %247 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %private_data, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i.i230 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i230, label %sw.bb47.if.then11.i.i.i244_crit_edge, label %land.lhs.true.i.i.i233

sw.bb47.if.then11.i.i.i244_crit_edge:             ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i244

land.lhs.true.i.i.i233:                           ; preds = %sw.bb47
  %249 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %243, i32 8, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i.i231 = extractvalue { i32, i32 } %249, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i231)
  %cmp.i6.i.i232 = icmp eq i32 %asmresult.i.i.i231, 0
  br i1 %cmp.i6.i.i232, label %if.end.i.i.i241, label %land.lhs.true.i.i.i233.if.then11.i.i.i244_crit_edge, !prof !419

land.lhs.true.i.i.i233.if.then11.i.i.i244_crit_edge: ; preds = %land.lhs.true.i.i.i233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i244

if.end.i.i.i241:                                  ; preds = %land.lhs.true.i.i.i233
  %call.i.i.i.i234 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %w_param.i, i32 noundef 8) #11
  %250 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i.i235 = and i32 %250, -16384
  %251 = inttoptr i32 %and.i.i.i.i.i.i.i235 to ptr
  %cpu_domain.i.i.i.i.i.i236 = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 4
  %252 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i236) #7, !srcloc !420
  %and.i.i.i.i.i237 = and i32 %252, -13
  %or.i.i.i.i.i238 = or i32 %and.i.i.i.i.i237, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i238) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i.i239 = call i32 @arm_copy_from_user(ptr noundef nonnull %w_param.i, ptr noundef %243, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %252) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i239)
  %tobool4.not.i.i.i240 = icmp eq i32 %call1.i.i.i.i239, 0
  br i1 %tobool4.not.i.i.i240, label %if.end.i245, label %if.end.i.i.i241.if.then11.i.i.i244_crit_edge, !prof !419

if.end.i.i.i241.if.then11.i.i.i244_crit_edge:     ; preds = %if.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i244

if.then11.i.i.i244:                               ; preds = %if.end.i.i.i241.if.then11.i.i.i244_crit_edge, %land.lhs.true.i.i.i233.if.then11.i.i.i244_crit_edge, %sw.bb47.if.then11.i.i.i244_crit_edge
  %res.0.i.i138.i = phi i32 [ %call1.i.i.i.i239, %if.end.i.i.i241.if.then11.i.i.i244_crit_edge ], [ 8, %sw.bb47.if.then11.i.i.i244_crit_edge ], [ 8, %land.lhs.true.i.i.i233.if.then11.i.i.i244_crit_edge ]
  %sub.i.i.i242 = sub i32 8, %res.0.i.i138.i
  %add.ptr.i.i.i243 = getelementptr i8, ptr %w_param.i, i32 %sub.i.i.i242
  %253 = call ptr @memset(ptr %add.ptr.i.i.i243, i32 0, i32 %res.0.i.i138.i)
  br label %rio_mport_wait_for_async_dma.exit

if.end.i245:                                      ; preds = %if.end.i.i.i241
  %254 = ptrtoint ptr %w_param.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %w_param.i, align 4
  %256 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool3.not.i = icmp eq i32 %257, 0
  br i1 %tobool3.not.i, label %if.else.i123.i, label %if.end.i245.if.end8.i_crit_edge

if.end.i245.if.end8.i_crit_edge:                  ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else.i123.i:                                   ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #13
  %258 = load i32, ptr @dma_timeout, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i123.i, %if.end.i245.if.end8.i_crit_edge
  %.sink = phi i32 [ %258, %if.else.i123.i ], [ %257, %if.end.i245.if.end8.i_crit_edge ]
  %call2.i122.i = call i32 @__msecs_to_jiffies(i32 noundef %.sink) #11
  %req_lock.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %248, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %req_lock.i) #11
  %async_list.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %248, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i250.for.cond.i_crit_edge, %if.end8.i
  %.pn.in.i = phi ptr [ %async_list.i, %if.end8.i ], [ %.pn.i249, %for.body.i250.for.cond.i_crit_edge ]
  %259 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pn.i249 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i249, %async_list.i
  br i1 %cmp.not.i, label %if.then24.critedge.i, label %for.body.i250

for.body.i250:                                    ; preds = %for.cond.i
  %cookie12.i = getelementptr i8, ptr %.pn.i249, i32 52
  %260 = ptrtoint ptr %cookie12.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %cookie12.i, align 4
  %cmp13.i = icmp eq i32 %261, %255
  br i1 %cmp13.i, label %if.then14.i251, label %for.body.i250.for.cond.i_crit_edge

for.body.i250.for.cond.i_crit_edge:               ; preds = %for.body.i250
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then14.i251:                                   ; preds = %for.body.i250
  %req.0.le.i = getelementptr i8, ptr %.pn.i249, i32 -4
  %call.i.i126.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i249) #11
  br i1 %call.i.i126.i, label %if.end.i.i127.i, label %if.then14.i251.list_del.exit.i_crit_edge

if.then14.i251.list_del.exit.i_crit_edge:         ; preds = %if.then14.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i127.i:                                  ; preds = %if.then14.i251
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i252 = getelementptr inbounds %struct.list_head, ptr %.pn.i249, i32 0, i32 1
  %262 = ptrtoint ptr %prev.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %prev.i.i.i252, align 4
  %264 = ptrtoint ptr %.pn.i249 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %.pn.i249, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %263, ptr %prev1.i.i.i.i, align 4
  %267 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %267)
  store volatile ptr %265, ptr %263, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i127.i, %if.then14.i251.list_del.exit.i_crit_edge
  %268 = ptrtoint ptr %.pn.i249 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i249, align 4
  %prev.i.i253 = getelementptr inbounds %struct.list_head, ptr %.pn.i249, i32 0, i32 1
  %269 = ptrtoint ptr %prev.i.i253 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i253, align 4
  call void @_raw_spin_unlock(ptr noundef %req_lock.i) #11
  %req_comp.i = getelementptr i8, ptr %.pn.i249, i32 60
  %call26.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %req_comp.i, i32 noundef %call2.i122.i) #11
  %270 = zext i32 %call26.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %270, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call26.i, label %if.end55.i [
    i32 0, label %list_del.exit.i.err_tmo.i_crit_edge
    i32 -512, label %do.end41.i
  ]

list_del.exit.i.err_tmo.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tmo.i

if.then24.critedge.i:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %req_lock.i) #11
  br label %rio_mport_wait_for_async_dma.exit

do.end41.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tmo.i

if.end55.i:                                       ; preds = %list_del.exit.i
  %status.i = getelementptr i8, ptr %.pn.i249, i32 56
  %271 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp56.not.i = icmp eq i32 %272, 0
  br i1 %cmp56.not.i, label %if.end55.i.if.end75.i_crit_edge, label %do.end60.i

if.end55.i.if.end75.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

do.end60.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %273 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i130.i = and i32 %273, -16384
  %274 = inttoptr i32 %and.i130.i to ptr
  %task63.i = getelementptr inbounds %struct.thread_info, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %task63.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %task63.i, align 8
  %comm64.i = getelementptr inbounds %struct.task_struct, ptr %276, i32 0, i32 101
  %pid.i131.i = getelementptr inbounds %struct.task_struct, ptr %276, i32 0, i32 68
  %277 = ptrtoint ptr %pid.i131.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %pid.i131.i, align 8
  %dir69.i = getelementptr i8, ptr %.pn.i249, i32 48
  %279 = ptrtoint ptr %dir69.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %dir69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %280)
  %cmp70.i = icmp eq i32 %280, 2
  %cond71.i = select i1 %cmp70.i, ptr @.str.65, ptr @.str.66
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.64, ptr noundef %comm64.i, i32 noundef %278, ptr noundef nonnull %cond71.i, i32 noundef %272) #14
  br label %if.end75.i

if.end75.i:                                       ; preds = %do.end60.i, %if.end55.i.if.end75.i_crit_edge
  %ret.0.i254 = phi i32 [ -5, %do.end60.i ], [ 0, %if.end55.i.if.end75.i_crit_edge ]
  %281 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %status.i, align 4
  %.off.i = add i32 %282, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end75.i.rio_mport_wait_for_async_dma.exit_crit_edge, label %if.then80.i

if.end75.i.rio_mport_wait_for_async_dma.exit_crit_edge: ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_wait_for_async_dma.exit

if.then80.i:                                      ; preds = %if.end75.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %req.0.le.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @llvm.prefetch.p0(ptr %req.0.le.i, i32 1, i32 3, i32 1) #11
  %283 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req.0.le.i, ptr %req.0.le.i, i32 1, ptr elementtype(i32) %req.0.le.i) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %283, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i132.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rio_mport_wait_for_async_dma.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !419

if.end5.i.i.i.i.i.rio_mport_wait_for_async_dma.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_wait_for_async_dma.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %req.0.le.i, i32 noundef 3) #11
  br label %rio_mport_wait_for_async_dma.exit

if.then.i132.i:                                   ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  call void @dma_req_free(ptr noundef %req.0.le.i) #11, !callees !427
  br label %rio_mport_wait_for_async_dma.exit

err_tmo.i:                                        ; preds = %do.end41.i, %list_del.exit.i.err_tmo.i_crit_edge
  %.str.68.sink.i = phi ptr [ @.str.68, %do.end41.i ], [ @.str.63, %list_del.exit.i.err_tmo.i_crit_edge ]
  %ret.1.i = phi i32 [ -4, %do.end41.i ], [ -110, %list_del.exit.i.err_tmo.i_crit_edge ]
  %284 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i128.i = and i32 %284, -16384
  %285 = inttoptr i32 %and.i128.i to ptr
  %task44.i = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 2
  %286 = ptrtoint ptr %task44.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %task44.i, align 8
  %comm45.i = getelementptr inbounds %struct.task_struct, ptr %287, i32 0, i32 101
  %pid.i129.i = getelementptr inbounds %struct.task_struct, ptr %287, i32 0, i32 68
  %288 = ptrtoint ptr %pid.i129.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %pid.i129.i, align 8
  %dir50.i = getelementptr i8, ptr %.pn.i249, i32 48
  %290 = ptrtoint ptr %dir50.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %dir50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %291)
  %cmp51.i = icmp eq i32 %291, 2
  %cond52.i = select i1 %cmp51.i, ptr @.str.65, ptr @.str.66
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.68.sink.i, ptr noundef nonnull @.str.64, ptr noundef %comm45.i, i32 noundef %289, ptr noundef nonnull %cond52.i) #14
  call void @_raw_spin_lock(ptr noundef %req_lock.i) #11
  %prev.i133.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %248, i32 0, i32 10, i32 1
  %292 = ptrtoint ptr %prev.i133.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %prev.i133.i, align 4
  %call.i.i134.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.i249, ptr noundef %293, ptr noundef %async_list.i) #11
  br i1 %call.i.i134.i, label %if.end.i.i135.i, label %err_tmo.i.list_add_tail.exit.i255_crit_edge

err_tmo.i.list_add_tail.exit.i255_crit_edge:      ; preds = %err_tmo.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i255

if.end.i.i135.i:                                  ; preds = %err_tmo.i
  call void @__sanitizer_cov_trace_pc() #13
  %294 = ptrtoint ptr %prev.i133.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %.pn.i249, ptr %prev.i133.i, align 4
  %295 = ptrtoint ptr %.pn.i249 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %async_list.i, ptr %.pn.i249, align 4
  %296 = ptrtoint ptr %prev.i.i253 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %293, ptr %prev.i.i253, align 4
  %297 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile ptr %.pn.i249, ptr %293, align 4
  br label %list_add_tail.exit.i255

list_add_tail.exit.i255:                          ; preds = %if.end.i.i135.i, %err_tmo.i.list_add_tail.exit.i255_crit_edge
  call void @_raw_spin_unlock(ptr noundef %req_lock.i) #11
  br label %rio_mport_wait_for_async_dma.exit

rio_mport_wait_for_async_dma.exit:                ; preds = %list_add_tail.exit.i255, %if.then.i132.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rio_mport_wait_for_async_dma.exit_crit_edge, %if.end75.i.rio_mport_wait_for_async_dma.exit_crit_edge, %if.then24.critedge.i, %if.then11.i.i.i244
  %retval.0.i256 = phi i32 [ %ret.1.i, %list_add_tail.exit.i255 ], [ -11, %if.then24.critedge.i ], [ %ret.0.i254, %if.end75.i.rio_mport_wait_for_async_dma.exit_crit_edge ], [ %ret.0.i254, %if.end5.i.i.i.i.i.rio_mport_wait_for_async_dma.exit_crit_edge ], [ %ret.0.i254, %if.then10.i.i.i.i.i ], [ %ret.0.i254, %if.then.i132.i ], [ -14, %if.then11.i.i.i244 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %w_param.i) #11
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  %298 = inttoptr i32 %arg to ptr
  %299 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %transaction.i) #11
  %301 = getelementptr inbounds %struct.rio_transaction, ptr %transaction.i, i32 0, i32 1
  %302 = getelementptr inbounds %struct.rio_transaction, ptr %transaction.i, i32 0, i32 2
  %303 = getelementptr inbounds %struct.rio_transaction, ptr %transaction.i, i32 0, i32 3
  %304 = getelementptr inbounds %struct.rio_transaction, ptr %transaction.i, i32 0, i32 4
  %305 = call ptr @memset(ptr %transaction.i, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i.i258 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i258, label %sw.bb49.if.then11.i.i.i272_crit_edge, label %land.lhs.true.i.i.i261

sw.bb49.if.then11.i.i.i272_crit_edge:             ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i272

land.lhs.true.i.i.i261:                           ; preds = %sw.bb49
  %306 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %298, i32 24, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i.i259 = extractvalue { i32, i32 } %306, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i259)
  %cmp.i6.i.i260 = icmp eq i32 %asmresult.i.i.i259, 0
  br i1 %cmp.i6.i.i260, label %if.end.i.i.i269, label %land.lhs.true.i.i.i261.if.then11.i.i.i272_crit_edge, !prof !419

land.lhs.true.i.i.i261.if.then11.i.i.i272_crit_edge: ; preds = %land.lhs.true.i.i.i261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i272

if.end.i.i.i269:                                  ; preds = %land.lhs.true.i.i.i261
  %call.i.i.i.i262 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %transaction.i, i32 noundef 24) #11
  %307 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i.i263 = and i32 %307, -16384
  %308 = inttoptr i32 %and.i.i.i.i.i.i.i263 to ptr
  %cpu_domain.i.i.i.i.i.i264 = getelementptr inbounds %struct.thread_info, ptr %308, i32 0, i32 4
  %309 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i264) #7, !srcloc !420
  %and.i.i.i.i.i265 = and i32 %309, -13
  %or.i.i.i.i.i266 = or i32 %and.i.i.i.i.i265, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i266) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i.i267 = call i32 @arm_copy_from_user(ptr noundef nonnull %transaction.i, ptr noundef %298, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %309) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i267)
  %tobool4.not.i.i.i268 = icmp eq i32 %call1.i.i.i.i267, 0
  br i1 %tobool4.not.i.i.i268, label %if.end.i274, label %if.end.i.i.i269.if.then11.i.i.i272_crit_edge, !prof !419

if.end.i.i.i269.if.then11.i.i.i272_crit_edge:     ; preds = %if.end.i.i.i269
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i272

if.then11.i.i.i272:                               ; preds = %if.end.i.i.i269.if.then11.i.i.i272_crit_edge, %land.lhs.true.i.i.i261.if.then11.i.i.i272_crit_edge, %sw.bb49.if.then11.i.i.i272_crit_edge
  %res.0.i.i110.i = phi i32 [ %call1.i.i.i.i267, %if.end.i.i.i269.if.then11.i.i.i272_crit_edge ], [ 24, %sw.bb49.if.then11.i.i.i272_crit_edge ], [ 24, %land.lhs.true.i.i.i261.if.then11.i.i.i272_crit_edge ]
  %sub.i.i.i270 = sub i32 24, %res.0.i.i110.i
  %add.ptr.i.i.i271 = getelementptr i8, ptr %transaction.i, i32 %sub.i.i.i270
  %310 = call ptr @memset(ptr %add.ptr.i.i.i271, i32 0, i32 %res.0.i.i110.i)
  br label %rio_mport_transfer_ioctl.exit

if.end.i274:                                      ; preds = %if.end.i.i.i269
  %311 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %301, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %312)
  %cmp.not.i273 = icmp eq i32 %312, 1
  br i1 %cmp.not.i273, label %if.end4.i275, label %if.end.i274.rio_mport_transfer_ioctl.exit_crit_edge

if.end.i274.rio_mport_transfer_ioctl.exit_crit_edge: ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_transfer_ioctl.exit

if.end4.i275:                                     ; preds = %if.end.i274
  %313 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %302, align 4
  %315 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %300, align 4
  %transfer_mode5.i = getelementptr inbounds %struct.mport_dev, ptr %316, i32 0, i32 8, i32 12
  %317 = ptrtoint ptr %transfer_mode5.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %transfer_mode5.i, align 4
  %and.i = and i32 %318, %314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.i = icmp eq i32 %and.i, 0
  br i1 %cmp6.i, label %if.end4.i275.rio_mport_transfer_ioctl.exit_crit_edge, label %if.end8.i276

if.end4.i275.rio_mport_transfer_ioctl.exit_crit_edge: ; preds = %if.end4.i275
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_transfer_ioctl.exit

if.end8.i276:                                     ; preds = %if.end4.i275
  %call11.i = call noalias ptr @vmalloc(i32 noundef 48) #17
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end8.i276.rio_mport_transfer_ioctl.exit_crit_edge, label %if.end14.i

if.end8.i276.rio_mport_transfer_ioctl.exit_crit_edge: ; preds = %if.end8.i276
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_transfer_ioctl.exit

if.end14.i:                                       ; preds = %if.end8.i276
  %319 = ptrtoint ptr %transaction.i to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %transaction.i, align 8
  %conv.i277 = trunc i64 %320 to i32
  %321 = inttoptr i32 %conv.i277 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i69.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i69.i, label %if.end14.i.if.then11.i.i85.i_crit_edge, label %land.lhs.true.i.i72.i

if.end14.i.if.then11.i.i85.i_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i85.i

land.lhs.true.i.i72.i:                            ; preds = %if.end14.i
  %322 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %321, i32 48, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i70.i = extractvalue { i32, i32 } %322, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i70.i)
  %cmp.i6.i71.i = icmp eq i32 %asmresult.i.i70.i, 0
  br i1 %cmp.i6.i71.i, label %if.end.i.i82.i, label %land.lhs.true.i.i72.i.if.then11.i.i85.i_crit_edge, !prof !419

land.lhs.true.i.i72.i.if.then11.i.i85.i_crit_edge: ; preds = %land.lhs.true.i.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i85.i

if.end.i.i82.i:                                   ; preds = %land.lhs.true.i.i72.i
  %call.i.i.i73.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call11.i, i32 noundef 48) #11
  %323 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i74.i = and i32 %323, -16384
  %324 = inttoptr i32 %and.i.i.i.i.i.i74.i to ptr
  %cpu_domain.i.i.i.i.i75.i = getelementptr inbounds %struct.thread_info, ptr %324, i32 0, i32 4
  %325 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i75.i) #7, !srcloc !420
  %and.i.i.i.i76.i = and i32 %325, -13
  %or.i.i.i.i77.i = or i32 %and.i.i.i.i76.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i77.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i78.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call11.i, ptr noundef %321, i32 noundef 48) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %325) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i78.i)
  %tobool4.not.i.i81.i = icmp eq i32 %call1.i.i.i78.i, 0
  br i1 %tobool4.not.i.i81.i, label %if.end24.i, label %if.end.i.i82.i.if.then11.i.i85.i_crit_edge, !prof !419

if.end.i.i82.i.if.then11.i.i85.i_crit_edge:       ; preds = %if.end.i.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i85.i

if.then11.i.i85.i:                                ; preds = %if.end.i.i82.i.if.then11.i.i85.i_crit_edge, %land.lhs.true.i.i72.i.if.then11.i.i85.i_crit_edge, %if.end14.i.if.then11.i.i85.i_crit_edge
  %res.0.i.i80115.i = phi i32 [ %call1.i.i.i78.i, %if.end.i.i82.i.if.then11.i.i85.i_crit_edge ], [ 48, %if.end14.i.if.then11.i.i85.i_crit_edge ], [ 48, %land.lhs.true.i.i72.i.if.then11.i.i85.i_crit_edge ]
  %sub.i.i83.i = sub i32 48, %res.0.i.i80115.i
  %add.ptr.i.i84.i = getelementptr i8, ptr %call11.i, i32 %sub.i.i83.i
  %326 = call ptr @memset(ptr %add.ptr.i.i84.i, i32 0, i32 %res.0.i.i80115.i)
  br label %out_free.i

if.end24.i:                                       ; preds = %if.end.i.i82.i
  %327 = ptrtoint ptr %304 to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %304, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %328)
  %cmp27.i278 = icmp eq i16 %328, 0
  %cond.i = select i1 %cmp27.i278, i32 2, i32 1
  %329 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %301, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %cmp30120.not.i = icmp eq i32 %330, 0
  br i1 %cmp30120.not.i, label %if.end24.i.for.end.i280_crit_edge, label %if.end24.i.for.body.i279_crit_edge

if.end24.i.for.body.i279_crit_edge:               ; preds = %if.end24.i
  br label %for.body.i279

if.end24.i.for.end.i280_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i280

for.body.i279:                                    ; preds = %for.body.i279.for.body.i279_crit_edge, %if.end24.i.for.body.i279_crit_edge
  %i.0121.i = phi i32 [ %inc.i, %for.body.i279.for.body.i279_crit_edge ], [ 0, %if.end24.i.for.body.i279_crit_edge ]
  %331 = ptrtoint ptr %303 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %303, align 8
  %conv35.i = zext i16 %332 to i32
  %arrayidx.i = getelementptr %struct.rio_transfer_io, ptr %call11.i, i32 %i.0121.i
  %call36.i = call fastcc i32 @rio_dma_transfer(ptr noundef %filp, i32 noundef %conv35.i, i32 noundef %cond.i, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw i32 %i.0121.i, 1
  %333 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %301, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %334)
  %cmp30.i = icmp ult i32 %inc.i, %334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp32.i = icmp eq i32 %call36.i, 0
  %or.cond.i = select i1 %cmp30.i, i1 %cmp32.i, i1 false
  br i1 %or.cond.i, label %for.body.i279.for.body.i279_crit_edge, label %for.body.i279.for.end.i280_crit_edge

for.body.i279.for.end.i280_crit_edge:             ; preds = %for.body.i279
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i280

for.body.i279.for.body.i279_crit_edge:            ; preds = %for.body.i279
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i279

for.end.i280:                                     ; preds = %for.body.i279.for.end.i280_crit_edge, %if.end24.i.for.end.i280_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end24.i.for.end.i280_crit_edge ], [ %call36.i, %for.body.i279.for.end.i280_crit_edge ]
  %335 = ptrtoint ptr %transaction.i to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %transaction.i, align 8
  %conv38.i = trunc i64 %336 to i32
  %337 = inttoptr i32 %conv38.i to ptr
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i101.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i101.i, label %for.end.i280.if.then47.i283_crit_edge, label %if.end.i.i105.i

for.end.i280.if.then47.i283_crit_edge:            ; preds = %for.end.i280
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47.i283

if.end.i.i105.i:                                  ; preds = %for.end.i280
  %338 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %337, i32 48, i32 -1226833920) #16, !srcloc !423
  %asmresult.i.i103.i = extractvalue { i32, i32 } %338, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i103.i)
  %cmp.i6.i104.i = icmp eq i32 %asmresult.i.i103.i, 0
  br i1 %cmp.i6.i104.i, label %copy_to_user.exit.i282, label %if.end.i.i105.i.if.then47.i283_crit_edge

if.end.i.i105.i.if.then47.i283_crit_edge:         ; preds = %if.end.i.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47.i283

copy_to_user.exit.i282:                           ; preds = %if.end.i.i105.i
  %call.i.i.i106.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call11.i, i32 noundef 48) #11
  %call.i12.i.i.i281 = call i32 @arm_copy_to_user(ptr noundef %337, ptr noundef nonnull %call11.i, i32 noundef 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i281)
  %tobool40.not.i = icmp eq i32 %call.i12.i.i.i281, 0
  br i1 %tobool40.not.i, label %copy_to_user.exit.i282.out_free.i_crit_edge, label %copy_to_user.exit.i282.if.then47.i283_crit_edge, !prof !419

copy_to_user.exit.i282.if.then47.i283_crit_edge:  ; preds = %copy_to_user.exit.i282
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47.i283

copy_to_user.exit.i282.out_free.i_crit_edge:      ; preds = %copy_to_user.exit.i282
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free.i

if.then47.i283:                                   ; preds = %copy_to_user.exit.i282.if.then47.i283_crit_edge, %if.end.i.i105.i.if.then47.i283_crit_edge, %for.end.i280.if.then47.i283_crit_edge
  br label %out_free.i

out_free.i:                                       ; preds = %if.then47.i283, %copy_to_user.exit.i282.out_free.i_crit_edge, %if.then11.i.i85.i
  %ret.1.i284 = phi i32 [ -14, %if.then47.i283 ], [ %ret.0.lcssa.i, %copy_to_user.exit.i282.out_free.i_crit_edge ], [ -14, %if.then11.i.i85.i ]
  call void @vfree(ptr noundef nonnull %call11.i) #11
  br label %rio_mport_transfer_ioctl.exit

rio_mport_transfer_ioctl.exit:                    ; preds = %out_free.i, %if.end8.i276.rio_mport_transfer_ioctl.exit_crit_edge, %if.end4.i275.rio_mport_transfer_ioctl.exit_crit_edge, %if.end.i274.rio_mport_transfer_ioctl.exit_crit_edge, %if.then11.i.i.i272
  %retval.0.i285 = phi i32 [ %ret.1.i284, %out_free.i ], [ -22, %if.end.i274.rio_mport_transfer_ioctl.exit_crit_edge ], [ -19, %if.end4.i275.rio_mport_transfer_ioctl.exit_crit_edge ], [ -12, %if.end8.i276.rio_mport_transfer_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i272 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %transaction.i) #11
  br label %cleanup

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %339 = inttoptr i32 %arg to ptr
  %call52 = tail call fastcc i32 @rio_mport_add_riodev(ptr noundef %1, ptr noundef %339)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %340 = inttoptr i32 %arg to ptr
  %call54 = tail call fastcc i32 @rio_mport_del_riodev(ptr noundef %1, ptr noundef %340)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb53, %sw.bb51, %rio_mport_transfer_ioctl.exit, %rio_mport_wait_for_async_dma.exit, %sw.bb45, %rio_mport_alloc_dma.exit, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %copy_to_user.exit120, %if.end.i.i115.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %sw.bb28, %rio_mport_remove_pw_filter.exit, %rio_mport_add_pw_filter.exit, %rio_mport_remove_db_filter.exit, %rio_mport_add_db_filter.exit, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %sw.bb53 ], [ %call52, %sw.bb51 ], [ %retval.0.i285, %rio_mport_transfer_ioctl.exit ], [ %retval.0.i256, %rio_mport_wait_for_async_dma.exit ], [ %call46, %sw.bb45 ], [ %retval.0.i228, %rio_mport_alloc_dma.exit ], [ %call42, %sw.bb41 ], [ %call40, %sw.bb39 ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ 0, %sw.bb28 ], [ %retval.0.i205, %rio_mport_remove_pw_filter.exit ], [ %retval.1.i, %rio_mport_add_pw_filter.exit ], [ %retval.0.i144, %rio_mport_remove_db_filter.exit ], [ %retval.0.i, %rio_mport_add_db_filter.exit ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %sw.bb15.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %sw.bb29.cleanup_crit_edge ], [ -14, %if.end.i.i115.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select290, %copy_to_user.exit120 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_cdev_mmap(ptr nocapture noundef readonly %filp, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub = sub i32 %3, %5
  %6 = load i32, ptr @dbg_level, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_mmap.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_mmap, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !416

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %7 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_pgoff, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_mmap.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.124, i32 noundef %sub, i32 noundef %8) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %vm_pgoff11 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %11 = ptrtoint ptr %vm_pgoff11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_pgoff11, align 4
  %shl = shl i32 %12, 12
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 13
  %13 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %13)
  %map.0160 = load ptr, ptr %mappings, align 4
  %cmp.not161 = icmp eq ptr %map.0160, %mappings
  br i1 %cmp.not161, label %do.end9.if.then31.critedge_crit_edge, label %for.body.lr.ph

do.end9.if.then31.critedge_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.critedge

for.body.lr.ph:                                   ; preds = %do.end9
  %conv = zext i32 %shl to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %map.0162 = phi ptr [ %map.0160, %for.body.lr.ph ], [ %map.0, %for.inc.for.body_crit_edge ]
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0162, i32 0, i32 5
  %14 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phys_addr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %15)
  %cmp16.not = icmp ult i32 %shl, %15
  br i1 %cmp16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %conv18 = zext i32 %15 to i64
  %size19 = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0162, i32 0, i32 7
  %16 = ptrtoint ptr %size19 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size19, align 8
  %add = add i64 %17, %conv18
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp20 = icmp ugt i64 %add, %conv
  br i1 %cmp20, label %if.end32.critedge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %map.0162 to i32
  call void @__asan_load4_noabort(i32 %18)
  %map.0 = load ptr, ptr %map.0162, align 4
  %cmp.not = icmp eq ptr %map.0, %mappings
  br i1 %cmp.not, label %for.inc.if.then31.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.then31.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.critedge

if.then31.critedge:                               ; preds = %for.inc.if.then31.critedge_crit_edge, %do.end9.if.then31.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #11
  br label %cleanup

if.end32.critedge:                                ; preds = %land.lhs.true
  %phys_addr.le = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0162, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #11
  %19 = ptrtoint ptr %phys_addr.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys_addr.le, align 8
  %sub34 = sub i32 %shl, %20
  %add35 = add i32 %sub34, %sub
  %conv36 = zext i32 %add35 to i64
  %21 = ptrtoint ptr %size19 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv36)
  %cmp38 = icmp ult i64 %22, %conv36
  br i1 %cmp38, label %if.end32.critedge.cleanup_crit_edge, label %if.end41

if.end32.critedge.cleanup_crit_edge:              ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.end32.critedge
  %shr = lshr i32 %sub34, 12
  %23 = ptrtoint ptr %vm_pgoff11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr, ptr %vm_pgoff11, align 4
  %24 = load i32, ptr @dbg_level, align 4
  %and44 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end41.do.end68_crit_edge, label %do.body47

if.end41.do.end68_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

do.body47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_mmap.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_mmap, %do.end68)) #11
          to label %if.then61 [label %do.end68], !srcloc !416

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %vm_pgoff11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_pgoff11, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_mmap.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.124, i32 noundef %26) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then61, %do.body47, %if.end41.do.end68_crit_edge
  %dir = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0162, i32 0, i32 2
  %27 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dir, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %28, label %if.end96.thread [
    i32 0, label %do.end68.if.then74_crit_edge
    i32 2, label %do.end68.if.then74_crit_edge171
    i32 1, label %if.then82
  ]

do.end68.if.then74_crit_edge171:                  ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then74

do.end68.if.then74_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then74

if.then74:                                        ; preds = %do.end68.if.then74_crit_edge, %do.end68.if.then74_crit_edge171
  %mport = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 4
  %30 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mport, align 8
  %parent = getelementptr inbounds %struct.rio_mport, ptr %31, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  %virt_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0162, i32 0, i32 6
  %34 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_addr, align 4
  %36 = ptrtoint ptr %phys_addr.le to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_addr.le, align 8
  %38 = ptrtoint ptr %size19 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %size19, align 8
  %conv77 = trunc i64 %39 to i32
  %call78 = tail call i32 @dma_mmap_attrs(ptr noundef %33, ptr noundef %vma, ptr noundef %35, i32 noundef %37, i32 noundef %conv77, i32 noundef 0) #11
  br label %if.end96

if.then82:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %40 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_page_prot, align 4
  %and83 = and i32 %41, -61
  store i32 %and83, ptr %vm_page_prot, align 4
  %42 = ptrtoint ptr %phys_addr.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phys_addr.le, align 8
  %44 = ptrtoint ptr %size19 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size19, align 8
  %conv87 = trunc i64 %45 to i32
  %call88 = tail call i32 @vm_iomap_memory(ptr noundef %vma, i32 noundef %43, i32 noundef %conv87) #11
  br label %if.end96

if.end96.thread:                                  ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.124) #14
  br label %do.end102

if.end96:                                         ; preds = %if.then82, %if.then74
  %ret.0 = phi i32 [ %call78, %if.then74 ], [ %call88, %if.then82 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool97.not = icmp eq i32 %ret.0, 0
  br i1 %tobool97.not, label %if.then98, label %if.end96.do.end102_crit_edge

if.end96.do.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end102

if.then98:                                        ; preds = %if.end96
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %46 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %map.0162, ptr %vm_private_data, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %47 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @vm_ops, ptr %vm_ops, align 4
  %48 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then98.do.end9.i_crit_edge, label %do.body1.i

if.then98.do.end9.i_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

do.body1.i:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_mm_open.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_mmap, %do.end9.i)) #11
          to label %if.then6.i [label %do.end9.i], !srcloc !416

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_mm_open.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef %phys_addr.le) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %do.body1.i, %if.then98.do.end9.i_crit_edge
  %ref.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0162, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !428
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end9.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !429

do.end9.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end9.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %50 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i.i = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !419

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end9.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end9.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %cleanup

do.end102:                                        ; preds = %if.end96.do.end102_crit_edge, %if.end96.thread
  %ret.0158 = phi i32 [ -5, %if.end96.thread ], [ %ret.0, %if.end96.do.end102_crit_edge ]
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.124, i32 noundef %ret.0158) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.end32.critedge.cleanup_crit_edge, %if.then31.critedge
  %retval.0 = phi i32 [ -12, %if.then31.critedge ], [ -22, %if.end32.critedge.cleanup_crit_edge ], [ %ret.0158, %do.end102 ], [ 0, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_cdev_open(ptr nocapture noundef readonly %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -12
  %5 = load i32, ptr @dbg_level, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end19_crit_edge, label %do.body5

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_open.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_open, %do.end19)) #11
          to label %if.then12 [label %do.end19], !srcloc !416

if.then12:                                        ; preds = %do.body5
  %init_name.i = getelementptr i8, ptr %4, i32 308
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.dev_name.exit_crit_edge

if.then12.dev_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %4, i32 164
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then12.dev_name.exit_crit_edge
  %retval.0.i82 = phi ptr [ %9, %if.end.i ], [ %7, %if.then12.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_open.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.135, ptr noundef %retval.0.i82, ptr noundef %filp) #11
  br label %do.end19

do.end19:                                         ; preds = %dev_name.exit, %do.body5, %if.end.do.end19_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #11
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp eq i32 %11, 0
  br i1 %cmp21, label %do.end19.cleanup_crit_edge, label %if.end23

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %do.end19
  %dev24 = getelementptr i8, ptr %4, i32 164
  %call25 = tail call ptr @get_device(ptr noundef %dev24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 360) #15
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_device(ptr noundef %dev24) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %file_mutex = getelementptr i8, ptr %4, i32 1188
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #11
  %list = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 2
  %file_list = getelementptr i8, ptr %4, i32 1280
  %prev.i = getelementptr i8, ptr %4, i32 1284
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %15, ptr noundef %file_list) #11
  br i1 %call.i.i83, label %if.end.i.i, label %if.end30.list_add_tail.exit_crit_edge

if.end30.list_add_tail.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %file_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end30.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %file_mutex) #11
  %db_filters = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %db_filters to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %db_filters, ptr %db_filters, align 8
  %prev.i84 = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %db_filters, ptr %prev.i84, align 4
  %pw_filters = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %pw_filters to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pw_filters, ptr %pw_filters, align 8
  %prev.i85 = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pw_filters, ptr %prev.i85, align 4
  %fifo_lock = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %fifo_lock, ptr noundef nonnull @.str.136, ptr noundef nonnull @mport_cdev_open.__key, i16 noundef signext 3) #11
  %event_rx_wait = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %event_rx_wait, ptr noundef nonnull @.str.138, ptr noundef nonnull @mport_cdev_open.__key.137) #11
  %event_fifo = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 5
  %call40 = tail call i32 @__kfifo_alloc(ptr noundef %event_fifo, i32 noundef 720, i32 noundef 1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp42 = icmp slt i32 %call40, 0
  br i1 %cmp42, label %do.end46, label %if.end48

do.end46:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.140) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end48:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %async_list = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %async_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %async_list, ptr %async_list, align 4
  %prev.i86 = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %async_list, ptr %prev.i86, align 8
  %req_lock = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %req_lock, ptr noundef nonnull @.str.143, ptr noundef nonnull @mport_cdev_open.__key.142, i16 noundef signext 3) #11
  %dma_lock = getelementptr inbounds %struct.mport_cdev_priv, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %dma_lock, ptr noundef nonnull @.str.145, ptr noundef nonnull @mport_cdev_open.__key.144) #11
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %26 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end46, %if.then28, %do.end19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then28 ], [ -19, %do.end19.cleanup_crit_edge ], [ -12, %do.end46 ], [ %call40, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_cdev_release(ptr nocapture noundef readnone %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release, %do.end10)) #11
          to label %if.then6 [label %do.end10], !srcloc !416

if.then6:                                         ; preds = %do.body1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.mport_dev, ptr %4, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mport_dev, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i184 = phi ptr [ %8, %if.end.i ], [ %6, %if.then6.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.146, ptr noundef %retval.0.i184, ptr noundef %filp) #11
  br label %do.end10

do.end10:                                         ; preds = %dev_name.exit, %do.body1, %entry.do.end10_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call fastcc void @mport_cdev_release_dma(ptr noundef %filp)
  %event_mask = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %event_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %event_mask, align 4
  %pw_lock = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 12
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pw_lock) #11
  %pw_filters = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pw_filters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pw_filters, align 4
  %cmp.i.not = icmp eq ptr %13, %pw_filters
  br i1 %cmp.i.not, label %do.end10.if.end41_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.if.end41_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

for.body:                                         ; preds = %rio_mport_delete_pw_filter.exit.for.body_crit_edge, %do.end10.for.body_crit_edge
  %.pn.in201 = phi ptr [ %.pn, %rio_mport_delete_pw_filter.exit.for.body_crit_edge ], [ %13, %do.end10.for.body_crit_edge ]
  %pw_filter.0 = getelementptr i8, ptr %.pn.in201, i32 -8
  %14 = ptrtoint ptr %.pn.in201 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in201, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pw_filter.0) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in201, i32 -4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %pw_filter.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pw_filter.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %pw_filter.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %pw_filter.0, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in201, i32 -4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in201) #11
  br i1 %call.i.i3.i, label %if.end.i.i6.i, label %list_del.exit.i.rio_mport_delete_pw_filter.exit_crit_edge

list_del.exit.i.rio_mport_delete_pw_filter.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_delete_pw_filter.exit

if.end.i.i6.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i4.i = getelementptr i8, ptr %.pn.in201, i32 4
  %23 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i4.i, align 4
  %25 = ptrtoint ptr %.pn.in201 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in201, align 4
  %prev1.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i5.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %rio_mport_delete_pw_filter.exit

rio_mport_delete_pw_filter.exit:                  ; preds = %if.end.i.i6.i, %list_del.exit.i.rio_mport_delete_pw_filter.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in201 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in201, align 4
  %prev.i7.i = getelementptr i8, ptr %.pn.in201, i32 4
  %30 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i, align 4
  tail call void @kfree(ptr noundef %pw_filter.0) #11
  %cmp32.not = icmp eq ptr %.pn, %pw_filters
  br i1 %cmp32.not, label %rio_mport_delete_pw_filter.exit.if.end41_crit_edge, label %rio_mport_delete_pw_filter.exit.for.body_crit_edge

rio_mport_delete_pw_filter.exit.for.body_crit_edge: ; preds = %rio_mport_delete_pw_filter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

rio_mport_delete_pw_filter.exit.if.end41_crit_edge: ; preds = %rio_mport_delete_pw_filter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %rio_mport_delete_pw_filter.exit.if.end41_crit_edge, %do.end10.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pw_lock, i32 noundef %call16) #11
  %db_lock = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 10
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %db_lock) #11
  %db_filters = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %db_filters to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %db_filters, align 4
  %cmp68.not204 = icmp eq ptr %32, %db_filters
  br i1 %cmp68.not204, label %if.end41.for.end79_crit_edge, label %if.end41.for.body72_crit_edge

if.end41.for.body72_crit_edge:                    ; preds = %if.end41
  br label %for.body72

if.end41.for.end79_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end79

for.body72:                                       ; preds = %rio_mport_delete_db_filter.exit.for.body72_crit_edge, %if.end41.for.body72_crit_edge
  %.pn178.in205 = phi ptr [ %.pn178, %rio_mport_delete_db_filter.exit.for.body72_crit_edge ], [ %32, %if.end41.for.body72_crit_edge ]
  %db_filter.0 = getelementptr i8, ptr %.pn178.in205, i32 -8
  %33 = ptrtoint ptr %.pn178.in205 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn178 = load ptr, ptr %.pn178.in205, align 4
  %call.i.i.i185 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %db_filter.0) #11
  br i1 %call.i.i.i185, label %if.end.i.i.i188, label %for.body72.list_del.exit.i192_crit_edge

for.body72.list_del.exit.i192_crit_edge:          ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i192

if.end.i.i.i188:                                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i186 = getelementptr i8, ptr %.pn178.in205, i32 -4
  %34 = ptrtoint ptr %prev.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i186, align 4
  %36 = ptrtoint ptr %db_filter.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %db_filter.0, align 4
  %prev1.i.i.i.i187 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i187, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i192

list_del.exit.i192:                               ; preds = %if.end.i.i.i188, %for.body72.list_del.exit.i192_crit_edge
  %40 = ptrtoint ptr %db_filter.0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %db_filter.0, align 4
  %prev.i.i189 = getelementptr i8, ptr %.pn178.in205, i32 -4
  %41 = ptrtoint ptr %prev.i.i189 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i189, align 4
  %call.i.i3.i191 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn178.in205) #11
  br i1 %call.i.i3.i191, label %if.end.i.i6.i195, label %list_del.exit.i192.rio_mport_delete_db_filter.exit_crit_edge

list_del.exit.i192.rio_mport_delete_db_filter.exit_crit_edge: ; preds = %list_del.exit.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_delete_db_filter.exit

if.end.i.i6.i195:                                 ; preds = %list_del.exit.i192
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i4.i193 = getelementptr i8, ptr %.pn178.in205, i32 4
  %42 = ptrtoint ptr %prev.i.i4.i193 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i4.i193, align 4
  %44 = ptrtoint ptr %.pn178.in205 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.pn178.in205, align 4
  %prev1.i.i.i5.i194 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i5.i194 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i5.i194, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %rio_mport_delete_db_filter.exit

rio_mport_delete_db_filter.exit:                  ; preds = %if.end.i.i6.i195, %list_del.exit.i192.rio_mport_delete_db_filter.exit_crit_edge
  %48 = ptrtoint ptr %.pn178.in205 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn178.in205, align 4
  %prev.i7.i196 = getelementptr i8, ptr %.pn178.in205, i32 4
  %49 = ptrtoint ptr %prev.i7.i196 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i196, align 4
  tail call void @kfree(ptr noundef %db_filter.0) #11
  %cmp68.not = icmp eq ptr %.pn178, %db_filters
  br i1 %cmp68.not, label %rio_mport_delete_db_filter.exit.for.end79_crit_edge, label %rio_mport_delete_db_filter.exit.for.body72_crit_edge

rio_mport_delete_db_filter.exit.for.body72_crit_edge: ; preds = %rio_mport_delete_db_filter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body72

rio_mport_delete_db_filter.exit.for.end79_crit_edge: ; preds = %rio_mport_delete_db_filter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end79

for.end79:                                        ; preds = %rio_mport_delete_db_filter.exit.for.end79_crit_edge, %if.end41.for.end79_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %db_lock, i32 noundef %call51) #11
  %event_fifo = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 5
  tail call void @__kfifo_free(ptr noundef %event_fifo) #11
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 13
  %50 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mappings, align 4
  %cmp92.not209 = icmp eq ptr %51, %mappings
  br i1 %cmp92.not209, label %for.end79.for.end134_crit_edge, label %for.end79.for.body96_crit_edge

for.end79.for.body96_crit_edge:                   ; preds = %for.end79
  br label %for.body96

for.end79.for.end134_crit_edge:                   ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end134

for.body96:                                       ; preds = %for.inc128.for.body96_crit_edge, %for.end79.for.body96_crit_edge
  %map.0210 = phi ptr [ %_map.0211, %for.inc128.for.body96_crit_edge ], [ %51, %for.end79.for.body96_crit_edge ]
  %52 = ptrtoint ptr %map.0210 to i32
  call void @__asan_load4_noabort(i32 %52)
  %_map.0211 = load ptr, ptr %map.0210, align 8
  %filp97 = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0210, i32 0, i32 9
  %53 = ptrtoint ptr %filp97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %filp97, align 4
  %cmp98 = icmp eq ptr %54, %filp
  br i1 %cmp98, label %do.body101, label %for.body96.for.inc128_crit_edge

for.body96.for.inc128_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc128

do.body101:                                       ; preds = %for.body96
  %55 = load i32, ptr @dbg_level, align 4
  %and102 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.body101.do.end125_crit_edge, label %do.body105

do.body101.do.end125_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

do.body105:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release, %do.end125)) #11
          to label %if.then119 [label %do.end125], !srcloc !416

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  %virt_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0210, i32 0, i32 6
  %56 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %virt_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, ptr noundef %57, ptr noundef %filp) #11
  br label %do.end125

do.end125:                                        ; preds = %if.then119, %do.body105, %do.body101.do.end125_crit_edge
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.0210, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc128_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.for.inc128_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc128

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %for.inc128

if.then.i:                                        ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void @mport_release_mapping(ptr noundef %ref) #11, !callees !427
  br label %for.inc128

for.inc128:                                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc128_crit_edge, %for.body96.for.inc128_crit_edge
  %cmp92.not = icmp eq ptr %_map.0211, %mappings
  br i1 %cmp92.not, label %for.inc128.for.end134_crit_edge, label %for.inc128.for.body96_crit_edge

for.inc128.for.body96_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body96

for.inc128.for.end134_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end134

for.end134:                                       ; preds = %for.inc128.for.end134_crit_edge, %for.end79.for.end134_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #11
  %59 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %private_data, align 4
  %async_queue.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %60, i32 0, i32 1
  %call.i = tail call i32 @fasync_helper(i32 noundef -1, ptr noundef %filp, i32 noundef 0, ptr noundef %async_queue.i) #11
  %61 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %private_data, align 4
  %file_mutex = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #11
  %list = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.end134.list_del.exit_crit_edge

for.end134.list_del.exit_crit_edge:               ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i197 = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev.i.i197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i197, align 4
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end134.list_del.exit_crit_edge
  %68 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %file_mutex) #11
  %dev139 = getelementptr inbounds %struct.mport_dev, ptr %10, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev139) #11
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mport_cdev_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 1
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %mode, ptr noundef %async_queue) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_send_doorbell(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_maint_rd(ptr nocapture noundef readonly %priv, ptr noundef %arg, i32 noundef %local) unnamed_addr #2 align 64 {
entry:
  %maint_io = alloca %struct.rio_mport_maint_io, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mport1 = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mport1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %maint_io) #11
  %4 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 4
  %7 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 5
  %8 = call ptr @memset(ptr %maint_io, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %maint_io, i32 noundef 24) #11
  %10 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %maint_io, ptr noundef %arg, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i78 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i78
  %add.ptr.i.i = getelementptr i8, ptr %maint_io, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i78)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 8
  %rem = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %rem9 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9)
  %tobool10.not = icmp ne i32 %rem9, 0
  %or.cond.not = or i1 %cmp, %tobool10.not
  %add = add i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add)
  %cmp14 = icmp ugt i32 %add, 16777216
  %or.cond65 = select i1 %or.cond.not, i1 true, i1 %cmp14
  br i1 %or.cond65, label %lor.lhs.false.cleanup_crit_edge, label %if.end16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %call18 = call noalias ptr @vmalloc(i32 noundef %17) #17
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp2484.not = icmp ult i32 %19, 4
  br i1 %cmp2484.not, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %div64 = lshr i32 %19, 2
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool25.not = icmp eq i32 %local, 0
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end33.for.body_crit_edge ]
  %offset.085 = phi i32 [ %21, %for.body.lr.ph ], [ %add34, %if.end33.for.body_crit_edge ]
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %call18, i32 %i.087
  %call27 = call i32 @__rio_local_read_config_32(ptr noundef %3, i32 noundef %offset.085, ptr noundef %arrayidx) #11
  br label %if.end30

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %maint_io to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %maint_io, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 2
  %arrayidx28 = getelementptr i32, ptr %call18, i32 %i.087
  %call29 = call i32 @rio_mport_read_config_32(ptr noundef %3, i16 noundef zeroext %23, i8 noundef zeroext %25, i32 noundef %offset.085, ptr noundef %arrayidx28) #11
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %ret.1 = phi i32 [ %call27, %if.then26 ], [ %call29, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool31.not = icmp eq i32 %ret.1, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end33:                                         ; preds = %if.end30
  %add34 = add i32 %offset.085, 4
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %div64
  br i1 %exitcond.not, label %for.endthread-pre-split, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.endthread-pre-split:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %6, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end21.for.end_crit_edge
  %27 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %19, %if.end21.for.end_crit_edge ]
  %ret.0.lcssa = phi i32 [ 0, %for.endthread-pre-split ], [ -1, %if.end21.for.end_crit_edge ]
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %7, align 8
  %conv = trunc i64 %29 to i32
  %30 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9.i.i = icmp slt i32 %27, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then45_crit_edge, label %if.then27.i.i, !prof !419

land.rhs16.i.i.if.then45_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then45

if.then.i.i.i:                                    ; preds = %for.end
  call void @__check_object_size(ptr noundef nonnull %call18, i32 noundef %27, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i70 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i70, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i73

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i73:                                     ; preds = %if.then.i.i.i
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %27, i32 -1226833920) #16, !srcloc !423
  %asmresult.i.i71 = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71)
  %cmp.i6.i72 = icmp eq i32 %asmresult.i.i71, 0
  br i1 %cmp.i6.i72, label %if.then2.i.i, label %if.end.i.i73.copy_to_user.exit_crit_edge

if.end.i.i73.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i74 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call18, i32 noundef %27) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef nonnull %call18, i32 noundef %27) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i73.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i75 = phi i32 [ %27, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %27, %if.end.i.i73.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i75)
  %tobool38.not = icmp eq i32 %n.addr.0.i75, 0
  br i1 %tobool38.not, label %copy_to_user.exit.out_crit_edge, label %copy_to_user.exit.if.then45_crit_edge, !prof !419

copy_to_user.exit.if.then45_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then45:                                        ; preds = %copy_to_user.exit.if.then45_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then45_crit_edge
  br label %out

out:                                              ; preds = %if.then45, %copy_to_user.exit.out_crit_edge, %if.end30.out_crit_edge
  %ret.2 = phi i32 [ -14, %if.then45 ], [ %ret.0.lcssa, %copy_to_user.exit.out_crit_edge ], [ %ret.1, %if.end30.out_crit_edge ]
  call void @vfree(ptr noundef nonnull %call18) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %maint_io) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_maint_wr(ptr nocapture noundef readonly %priv, ptr noundef %arg, i32 noundef %local) unnamed_addr #2 align 64 {
entry:
  %maint_io = alloca %struct.rio_mport_maint_io, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mport1 = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mport1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %maint_io) #11
  %4 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 4
  %7 = getelementptr inbounds %struct.rio_mport_maint_io, ptr %maint_io, i32 0, i32 5
  %8 = call ptr @memset(ptr %maint_io, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %maint_io, i32 noundef 24) #11
  %10 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %maint_io, ptr noundef %arg, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i93 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i93
  %add.ptr.i.i = getelementptr i8, ptr %maint_io, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i93)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 8
  %rem = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool5.not = icmp eq i32 %rem, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %rem9 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9)
  %tobool10.not = icmp ne i32 %rem9, 0
  %or.cond.not = or i1 %cmp, %tobool10.not
  %add = add i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add)
  %cmp14 = icmp ugt i32 %add, 16777216
  %or.cond67 = select i1 %or.cond.not, i1 true, i1 %cmp14
  br i1 %or.cond67, label %lor.lhs.false.cleanup_crit_edge, label %if.end16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %call18 = call noalias ptr @vmalloc(i32 noundef %17) #17
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %7, align 8
  %conv = trunc i64 %21 to i32
  %22 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.i.i = icmp slt i32 %19, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end21
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !419

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %out

if.then.i.i.i:                                    ; preds = %if.end21
  call void @__check_object_size(ptr noundef nonnull %call18, i32 noundef %19, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i72 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i72, label %if.then.i.i.i.if.end.i.i85_crit_edge, label %land.lhs.true.i.i75

if.then.i.i.i.if.end.i.i85_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i85

land.lhs.true.i.i75:                              ; preds = %if.then.i.i.i
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 %19, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i73 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i73)
  %cmp.i6.i74 = icmp eq i32 %asmresult.i.i73, 0
  br i1 %cmp.i6.i74, label %if.then.i7.i82, label %land.lhs.true.i.i75.if.end.i.i85_crit_edge, !prof !419

land.lhs.true.i.i75.if.end.i.i85_crit_edge:       ; preds = %land.lhs.true.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i85

if.then.i7.i82:                                   ; preds = %land.lhs.true.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call18, i32 noundef %19) #11
  %24 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i77 to ptr
  %cpu_domain.i.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i78) #7, !srcloc !420
  %and.i.i.i.i79 = and i32 %26, -13
  %or.i.i.i.i80 = or i32 %and.i.i.i.i79, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i80) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i81 = call i32 @arm_copy_from_user(ptr noundef nonnull %call18, ptr noundef %22, i32 noundef %19) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  br label %if.end.i.i85

if.end.i.i85:                                     ; preds = %if.then.i7.i82, %land.lhs.true.i.i75.if.end.i.i85_crit_edge, %if.then.i.i.i.if.end.i.i85_crit_edge
  %res.0.i.i83 = phi i32 [ %19, %if.then.i.i.i.if.end.i.i85_crit_edge ], [ %call1.i.i.i81, %if.then.i7.i82 ], [ %19, %land.lhs.true.i.i75.if.end.i.i85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i83)
  %tobool4.not.i.i84 = icmp eq i32 %res.0.i.i83, 0
  br i1 %tobool4.not.i.i84, label %if.end33, label %if.then11.i.i88, !prof !419

if.then11.i.i88:                                  ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i86 = sub i32 %19, %res.0.i.i83
  %add.ptr.i.i87 = getelementptr i8, ptr %call18, i32 %sub.i.i86
  %27 = call ptr @memset(ptr %add.ptr.i.i87, i32 0, i32 %res.0.i.i83)
  br label %out

if.end33:                                         ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp3598.not = icmp ult i32 %19, 4
  br i1 %cmp3598.not, label %if.end33.out_crit_edge, label %for.body.lr.ph

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.lr.ph:                                   ; preds = %if.end33
  %div66 = lshr i32 %19, 2
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool37.not = icmp eq i32 %local, 0
  br label %for.body

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end45.for.body_crit_edge ]
  %offset.099 = phi i32 [ %29, %for.body.lr.ph ], [ %add46, %if.end45.for.body_crit_edge ]
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %call18, i32 %i.0101
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %call39 = call i32 @__rio_local_write_config_32(ptr noundef %3, i32 noundef %offset.099, i32 noundef %31) #11
  br label %if.end42

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %maint_io to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %maint_io, align 8
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 2
  %arrayidx40 = getelementptr i32, ptr %call18, i32 %i.0101
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx40, align 4
  %call41 = call i32 @rio_mport_write_config_32(ptr noundef %3, i16 noundef zeroext %33, i8 noundef zeroext %35, i32 noundef %offset.099, i32 noundef %37) #11
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then38
  %ret.1 = phi i32 [ %call39, %if.then38 ], [ %call41, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool43.not = icmp eq i32 %ret.1, 0
  br i1 %tobool43.not, label %if.end45, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end45:                                         ; preds = %if.end42
  %add46 = add i32 %offset.099, 4
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %div66
  br i1 %exitcond.not, label %if.end45.out_crit_edge, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end45.out_crit_edge, %if.end42.out_crit_edge, %if.end33.out_crit_edge, %if.then11.i.i88, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %ret.2 = phi i32 [ -14, %if.then11.i.i88 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ -22, %if.end33.out_crit_edge ], [ %ret.1, %if.end42.out_crit_edge ], [ 0, %if.end45.out_crit_edge ]
  call void @vfree(ptr noundef nonnull %call18) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %maint_io) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @maint_hdid_set(ptr nocapture noundef readonly %priv, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %hdid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdid) #11
  %2 = ptrtoint ptr %hdid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %hdid, align 2, !annotation !417
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 2, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdid, i32 noundef 2) #11
  %4 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdid, ptr noundef %arg, i32 noundef 2) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i23 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 2, %entry.if.then11.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2, %res.0.i.i23
  %add.ptr.i.i = getelementptr i8, ptr %hdid, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i23)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %hdid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdid, align 2
  %conv = zext i16 %9 to i32
  %mport = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mport, align 8
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %host_deviceid, align 8
  %properties = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %properties to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %9, ptr %properties, align 4
  %14 = load ptr, ptr %mport, align 8
  call void @rio_local_set_device_id(ptr noundef %14, i16 noundef zeroext %9) #11
  %15 = load i32, ptr @dbg_level, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @maint_hdid_set.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@maint_hdid_set, %cleanup)) #11
          to label %if.then12 [label %cleanup], !srcloc !416

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %hdid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hdid, align 2
  %conv13 = zext i16 %17 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @maint_hdid_set.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body6, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %do.body6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdid) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @maint_comptag_set(ptr nocapture noundef readonly %priv, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %comptag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comptag) #11
  %2 = ptrtoint ptr %comptag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %comptag, align 4, !annotation !417
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 4, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %comptag, i32 noundef 4) #11
  %4 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %comptag, ptr noundef %arg, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i19 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i19
  %add.ptr.i.i = getelementptr i8, ptr %comptag, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i19)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %mport = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mport, align 8
  %10 = ptrtoint ptr %comptag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %comptag, align 4
  %call.i = call i32 @__rio_local_write_config_32(ptr noundef %9, i32 noundef 108, i32 noundef %11) #11
  %12 = load i32, ptr @dbg_level, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @maint_comptag_set.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@maint_comptag_set, %cleanup)) #11
          to label %if.then11 [label %cleanup], !srcloc !416

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %comptag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %comptag, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @maint_comptag_set.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %do.body5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comptag) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @maint_port_idx_get(ptr nocapture noundef readonly %priv, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %port_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_idx) #11
  %mport = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mport, align 8
  %index = getelementptr inbounds %struct.rio_mport, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %port_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %port_idx, align 4
  %7 = load i32, ptr @dbg_level, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %do.body2

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @maint_port_idx_get.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@maint_port_idx_get, %if.end8.i.i)) #11
          to label %if.then7 [label %if.end8.i.i], !srcloc !416

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %port_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @maint_port_idx_get.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %9) #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7, %do.body2, %entry.if.end8.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end8.i.i.copy_to_user.exit.thread_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end8.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 4, i32 -1226833920) #16, !srcloc !423
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %port_idx, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %port_idx, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool12.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool12.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end8.i.i.copy_to_user.exit.thread_crit_edge
  %11 = phi i32 [ -14, %if.end8.i.i.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_idx) #11
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_obw_map(ptr noundef %filp, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %map = alloca %struct.rio_mmap, align 8
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %map) #11
  %4 = call ptr @memset(ptr %map, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #11
  %5 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %paddr, align 4, !annotation !417
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 40, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map, i32 noundef 40) #11
  %7 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %map, ptr noundef %arg, i32 noundef 40) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i65 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %entry.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.0.i.i65
  %add.ptr.i.i = getelementptr i8, ptr %map, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i65)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  %11 = load i32, ptr @dbg_level, align 4
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.end20_crit_edge, label %do.body5

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_obw_map.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_obw_map, %do.end20)) #11
          to label %if.then16 [label %do.end20], !srcloc !416

if.then16:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %map, align 8
  %conv = zext i16 %13 to i32
  %rio_addr = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 2
  %14 = ptrtoint ptr %rio_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rio_addr, align 8
  %length = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 3
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %length, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_obw_map.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %conv, i64 noundef %15, i64 noundef %17) #11
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body5, %do.body.do.end20_crit_edge
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %map, align 8
  %rio_addr22 = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 2
  %20 = ptrtoint ptr %rio_addr22 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rio_addr22, align 8
  %length23 = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 3
  %22 = ptrtoint ptr %length23 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length23, align 8
  %conv24 = trunc i64 %23 to i32
  %buf_mutex.i = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #11
  %mappings.i = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %mappings.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %map.070.i = load ptr, ptr %mappings.i, align 4
  %cmp.not71.i = icmp eq ptr %map.070.i, %mappings.i
  br i1 %cmp.not71.i, label %do.end20.rio_mport_get_outbound_mapping.exit_crit_edge, label %for.body.lr.ph.i

do.end20.rio_mport_get_outbound_mapping.exit_crit_edge: ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_get_outbound_mapping.exit

for.body.lr.ph.i:                                 ; preds = %do.end20
  %conv10.i = and i64 %23, 4294967295
  %add27.i = add i64 %conv10.i, %21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %map.072.i = phi ptr [ %map.070.i, %for.body.lr.ph.i ], [ %map.0.i, %for.inc.i.for.body.i_crit_edge ]
  %dir.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.072.i, i32 0, i32 2
  %25 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp2.not.i = icmp eq i32 %26, 1
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %rioid3.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.072.i, i32 0, i32 3
  %27 = ptrtoint ptr %rioid3.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rioid3.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %19)
  %cmp5.i = icmp eq i16 %28, %19
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %rio_addr.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.072.i, i32 0, i32 4
  %29 = ptrtoint ptr %rio_addr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rio_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %21)
  %cmp7.i = icmp eq i64 %30, %21
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.land.lhs.true20.i_crit_edge

land.lhs.true.i.land.lhs.true20.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true20.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %size11.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.072.i, i32 0, i32 7
  %31 = ptrtoint ptr %size11.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %size11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv10.i)
  %cmp12.i = icmp eq i64 %32, %conv10.i
  br i1 %cmp12.i, label %rio_mport_get_outbound_mapping.exit.thread72, label %land.lhs.true9.i.land.lhs.true20.i_crit_edge

land.lhs.true9.i.land.lhs.true20.i_crit_edge:     ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true20.i

rio_mport_get_outbound_mapping.exit.thread72:     ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  %phys_addr.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.072.i, i32 0, i32 5
  %33 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys_addr.i, align 8
  %35 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %paddr, align 4
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #11
  br label %if.end33

land.lhs.true20.i:                                ; preds = %land.lhs.true9.i.land.lhs.true20.i_crit_edge, %land.lhs.true.i.land.lhs.true20.i_crit_edge
  %size22.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.072.i, i32 0, i32 7
  %36 = ptrtoint ptr %size22.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size22.i, align 8
  %add.i = add i64 %30, -1
  %sub.i = add i64 %add.i, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %21)
  %cmp23.i = icmp ugt i64 %sub.i, %21
  call void @__sanitizer_cov_trace_cmp8(i64 %add27.i, i64 %30)
  %cmp29.i = icmp ugt i64 %add27.i, %30
  %or.cond.i = select i1 %cmp23.i, i1 %cmp29.i, i1 false
  br i1 %or.cond.i, label %rio_mport_get_outbound_mapping.exit.thread, label %land.lhs.true20.i.for.inc.i_crit_edge

land.lhs.true20.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

rio_mport_get_outbound_mapping.exit.thread:       ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #11
  br label %do.end30

for.inc.i:                                        ; preds = %land.lhs.true20.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %map.072.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %map.0.i = load ptr, ptr %map.072.i, align 4
  %cmp.not.i = icmp eq ptr %map.0.i, %mappings.i
  br i1 %cmp.not.i, label %for.inc.i.rio_mport_get_outbound_mapping.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.rio_mport_get_outbound_mapping.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_mport_get_outbound_mapping.exit

rio_mport_get_outbound_mapping.exit:              ; preds = %for.inc.i.rio_mport_get_outbound_mapping.exit_crit_edge, %do.end20.rio_mport_get_outbound_mapping.exit_crit_edge
  %call.i = call fastcc i32 @rio_mport_create_outbound_mapping(ptr noundef %3, ptr noundef %filp, i16 noundef zeroext %19, i64 noundef %21, i32 noundef %conv24, ptr noundef nonnull %paddr) #11
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %rio_mport_get_outbound_mapping.exit.do.end30_crit_edge, label %rio_mport_get_outbound_mapping.exit.if.end33_crit_edge

rio_mport_get_outbound_mapping.exit.if.end33_crit_edge: ; preds = %rio_mport_get_outbound_mapping.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

rio_mport_get_outbound_mapping.exit.do.end30_crit_edge: ; preds = %rio_mport_get_outbound_mapping.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

do.end30:                                         ; preds = %rio_mport_get_outbound_mapping.exit.do.end30_crit_edge, %rio_mport_get_outbound_mapping.exit.thread
  %err.1.i71 = phi i32 [ -16, %rio_mport_get_outbound_mapping.exit.thread ], [ %call.i, %rio_mport_get_outbound_mapping.exit.do.end30_crit_edge ]
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %err.1.i71) #14
  br label %cleanup

if.end33:                                         ; preds = %rio_mport_get_outbound_mapping.exit.if.end33_crit_edge, %rio_mport_get_outbound_mapping.exit.thread72
  %39 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %paddr, align 4
  %conv34 = zext i32 %40 to i64
  %handle = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 4
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv34, ptr %handle, align 8
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i57 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i57, label %if.end33.cleanup_crit_edge, label %copy_to_user.exit

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i61 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %map, i32 noundef 40) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %map, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool36.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool36.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end33.cleanup_crit_edge, %do.end30, %if.then11.i.i
  %retval.0 = phi i32 [ %err.1.i71, %do.end30 ], [ -14, %if.then11.i.i ], [ -14, %if.end33.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %map) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_map_inbound(ptr noundef %filp, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %map = alloca %struct.rio_mmap, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %map) #11
  %4 = call ptr @memset(ptr %map, i32 255, i32 40)
  %mport = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mport, align 8
  %ops = getelementptr inbounds %struct.rio_mport, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %map_inb = getelementptr inbounds %struct.rio_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %map_inb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_inb, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 40, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map, i32 noundef 40) #11
  %12 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %map, ptr noundef %arg, i32 noundef 40) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i85 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.0.i.i85
  %add.ptr.i.i = getelementptr i8, ptr %map, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i85)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  %16 = load i32, ptr @dbg_level, align 4
  %and = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end26_crit_edge, label %do.body9

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_map_inbound.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_map_inbound, %do.end26)) #11
          to label %if.then20 [label %do.end26], !srcloc !416

if.then20:                                        ; preds = %do.body9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.mport_dev, ptr %18, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.dev_name.exit_crit_edge

if.then20.dev_name.exit_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mport_dev, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then20.dev_name.exit_crit_edge
  %retval.0.i75 = phi ptr [ %22, %if.end.i ], [ %20, %if.then20.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_map_inbound.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i75, ptr noundef %filp) #11
  br label %do.end26

do.end26:                                         ; preds = %dev_name.exit, %do.body9, %do.body.do.end26_crit_edge
  %rio_addr = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 2
  %23 = ptrtoint ptr %rio_addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rio_addr, align 8
  %length = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 3
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %24)
  %cmp.i = icmp eq i64 %24, -1
  br i1 %cmp.i, label %do.end26.get_new.i_crit_edge, label %if.end.i76

do.end26.get_new.i_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_new.i

if.end.i76:                                       ; preds = %do.end26
  %buf_mutex.i = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #11
  %mappings.i = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13
  %27 = ptrtoint ptr %mappings.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %map.053.i = load ptr, ptr %mappings.i, align 4
  %cmp2.not54.i = icmp eq ptr %map.053.i, %mappings.i
  br i1 %cmp2.not54.i, label %if.end.i76.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i76.for.end.i_crit_edge:                   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i76
  %add14.i = add i64 %26, %24
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %map.055.i = phi ptr [ %map.053.i, %for.body.lr.ph.i ], [ %map.0.i, %for.inc.i.for.body.i_crit_edge ]
  %dir.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.055.i, i32 0, i32 2
  %28 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.not.i = icmp eq i32 %29, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %rio_addr.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.055.i, i32 0, i32 4
  %30 = ptrtoint ptr %rio_addr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rio_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %24)
  %cmp6.i = icmp eq i64 %31, %24
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %size7.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.055.i, i32 0, i32 7
  %32 = ptrtoint ptr %size7.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %size7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %26)
  %cmp8.i = icmp eq i64 %33, %26
  br i1 %cmp8.i, label %land.lhs.true.i.if.end30_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.if.end30_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %size11.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.055.i, i32 0, i32 7
  %34 = ptrtoint ptr %size11.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size11.i, align 8
  %add.i = add i64 %31, -1
  %sub.i = add i64 %add.i, %35
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %24)
  %cmp12.i = icmp ugt i64 %sub.i, %24
  call void @__sanitizer_cov_trace_cmp8(i64 %add14.i, i64 %31)
  %cmp16.i = icmp ugt i64 %add14.i, %31
  %or.cond.i = select i1 %cmp12.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %rio_mport_get_inbound_mapping.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %36 = ptrtoint ptr %map.055.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %map.0.i = load ptr, ptr %map.055.i, align 4
  %cmp2.not.i = icmp eq ptr %map.0.i, %mappings.i
  br i1 %cmp2.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i76.for.end.i_crit_edge
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #11
  br label %get_new.i

get_new.i:                                        ; preds = %for.end.i, %do.end26.get_new.i_crit_edge
  %37 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mport, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %26)
  %cmp.i.i77 = icmp ugt i64 %26, 4294967295
  br i1 %cmp.i.i77, label %get_new.i.cleanup_crit_edge, label %if.end.i.i78

get_new.i.cleanup_crit_edge:                      ; preds = %get_new.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i78:                                     ; preds = %get_new.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 56) #15
  %cmp2.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp2.i.i, label %if.end.i.i78.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i78.cleanup_crit_edge:                   ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i78
  %parent.i.i = getelementptr inbounds %struct.rio_mport, ptr %38, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent.i.i, align 8
  %conv.i.i = trunc i64 %26 to i32
  %phys_addr.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 5
  %call.i.i.i79 = call ptr @dma_alloc_attrs(ptr noundef %41, i32 noundef %conv.i.i, ptr noundef %phys_addr.i.i, i32 noundef 3264, i32 noundef 0) #11
  %virt_addr.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i.i79, ptr %virt_addr.i.i, align 4
  %cmp7.i.i = icmp eq ptr %call.i.i.i79, null
  br i1 %cmp7.i.i, label %if.end4.i.i.err_dma_alloc.i.i_crit_edge, label %if.end10.i.i

if.end4.i.i.err_dma_alloc.i.i_crit_edge:          ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dma_alloc.i.i

if.end10.i.i:                                     ; preds = %if.end4.i.i
  br i1 %cmp.i, label %if.then13.i.i, label %if.end10.i.i.if.end16.i.i_crit_edge

if.end10.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phys_addr.i.i, align 8
  %conv15.i.i = zext i32 %44 to i64
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then13.i.i, %if.end10.i.i.if.end16.i.i_crit_edge
  %raddr.addr.0.i.i = phi i64 [ %conv15.i.i, %if.then13.i.i ], [ %24, %if.end10.i.i.if.end16.i.i_crit_edge ]
  %45 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_addr.i.i, align 8
  %call19.i.i = call i32 @rio_map_inb_region(ptr noundef %38, i32 noundef %46, i64 noundef %raddr.addr.0.i.i, i32 noundef %conv.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %cmp20.i.i = icmp slt i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %err_map_inb.i.i, label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end16.i.i
  %dir.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %dir.i.i, align 4
  %rio_addr.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %rio_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %raddr.addr.0.i.i, ptr %rio_addr.i.i, align 8
  %size24.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %size24.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %26, ptr %size24.i.i, align 8
  %filp25.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %filp25.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %filp, ptr %filp25.i.i, align 4
  %md26.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %md26.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %3, ptr %md26.i.i, align 8
  %ref.i.i = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  %52 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1, ptr %ref.i.i, align 8
  %buf_mutex.i.i = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex.i.i, i32 noundef 0) #11
  %mappings.i.i = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13
  %prev.i.i.i = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %54, ptr noundef %mappings.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end23.i.i.if.end30_crit_edge

if.end23.i.i.if.end30_crit_edge:                  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end.i.i.i.i:                                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %56 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %mappings.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i.i.i.i, ptr %54, align 4
  br label %if.end30

err_map_inb.i.i:                                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i.i, align 8
  %61 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %virt_addr.i.i, align 4
  %63 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phys_addr.i.i, align 8
  call void @dma_free_attrs(ptr noundef %60, i32 noundef %conv.i.i, ptr noundef %62, i32 noundef %64, i32 noundef 0) #11
  br label %err_dma_alloc.i.i

err_dma_alloc.i.i:                                ; preds = %err_map_inb.i.i, %if.end4.i.i.err_dma_alloc.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call19.i.i, %err_map_inb.i.i ], [ -12, %if.end4.i.i.err_dma_alloc.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %cleanup

rio_mport_get_inbound_mapping.exit:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end.i.i.i.i, %if.end23.i.i.if.end30_crit_edge, %land.lhs.true.i.if.end30_crit_edge
  %buf_mutex.i.sink = phi ptr [ %buf_mutex.i.i, %if.end23.i.i.if.end30_crit_edge ], [ %buf_mutex.i.i, %if.end.i.i.i.i ], [ %buf_mutex.i, %land.lhs.true.i.if.end30_crit_edge ]
  %mapping.196 = phi ptr [ %call7.i.i.i.i, %if.end23.i.i.if.end30_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ], [ %map.055.i, %land.lhs.true.i.if.end30_crit_edge ]
  call void @mutex_unlock(ptr noundef %buf_mutex.i.sink) #11
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %mapping.196, i32 0, i32 5
  %65 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %phys_addr, align 8
  %conv = zext i32 %66 to i64
  %handle = getelementptr inbounds %struct.rio_mmap, ptr %map, i32 0, i32 4
  %67 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv, ptr %handle, align 8
  %rio_addr31 = getelementptr inbounds %struct.rio_mport_mapping, ptr %mapping.196, i32 0, i32 4
  %68 = ptrtoint ptr %rio_addr31 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rio_addr31, align 8
  %70 = ptrtoint ptr %rio_addr to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %rio_addr, align 8
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i69 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i69, label %if.end30.land.lhs.true_crit_edge, label %copy_to_user.exit

if.end30.land.lhs.true_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

copy_to_user.exit:                                ; preds = %if.end30
  %call.i.i.i73 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %map, i32 noundef 40) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %map, i32 noundef 40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool34.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool34.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.land.lhs.true_crit_edge, !prof !419

copy_to_user.exit.land.lhs.true_crit_edge:        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %copy_to_user.exit.land.lhs.true_crit_edge, %if.end30.land.lhs.true_crit_edge
  %filp43 = getelementptr inbounds %struct.rio_mport_mapping, ptr %mapping.196, i32 0, i32 9
  %71 = ptrtoint ptr %filp43 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %filp43, align 4
  %cmp44 = icmp eq ptr %72, %filp
  br i1 %cmp44, label %if.then46, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %mapping.196, i32 0, i32 8
  call fastcc void @kref_put(ptr noundef %ref, ptr noundef nonnull @mport_release_mapping)
  call void @mutex_unlock(ptr noundef %buf_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %land.lhs.true.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %rio_mport_get_inbound_mapping.exit, %err_dma_alloc.i.i, %if.end.i.i78.cleanup_crit_edge, %get_new.i.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -93, %entry.cleanup_crit_edge ], [ -16, %rio_mport_get_inbound_mapping.exit ], [ -14, %if.then46 ], [ -14, %land.lhs.true.cleanup_crit_edge ], [ 0, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -12, %if.end.i.i78.cleanup_crit_edge ], [ -22, %get_new.i.cleanup_crit_edge ], [ %ret.0.i.i, %err_dma_alloc.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %map) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_obw_free(ptr noundef readonly %filp, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %handle = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #11
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %handle, align 8, !annotation !417
  %mport = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mport, align 8
  %ops = getelementptr inbounds %struct.rio_mport, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %unmap_outb = getelementptr inbounds %struct.rio_ops, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %unmap_outb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unmap_outb, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %handle, i32 noundef 8) #11
  %12 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %handle, ptr noundef %arg, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i91 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i91
  %add.ptr.i.i = getelementptr i8, ptr %handle, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i91)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  %16 = load i32, ptr @dbg_level, align 4
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end17_crit_edge, label %do.body7

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_obw_free.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_obw_free, %do.end17)) #11
          to label %if.then13 [label %do.end17], !srcloc !416

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %handle, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_obw_free.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i64 noundef %18) #11
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body7, %do.body.do.end17_crit_edge
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mappings, align 4
  %cmp.not98 = icmp eq ptr %20, %mappings
  br i1 %cmp.not98, label %do.end17.for.end_crit_edge, label %do.end17.for.body_crit_edge

do.end17.for.body_crit_edge:                      ; preds = %do.end17
  br label %for.body

do.end17.for.end_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end17.for.body_crit_edge
  %map.099 = phi ptr [ %_map.0100, %for.inc.for.body_crit_edge ], [ %20, %do.end17.for.body_crit_edge ]
  %21 = ptrtoint ptr %map.099 to i32
  call void @__asan_load4_noabort(i32 %21)
  %_map.0100 = load ptr, ptr %map.099, align 8
  %dir = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 2
  %22 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp27 = icmp eq i32 %23, 1
  br i1 %cmp27, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 5
  %24 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys_addr, align 8
  %conv = zext i32 %25 to i64
  %26 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %handle, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv)
  %cmp28 = icmp eq i64 %27, %conv
  br i1 %cmp28, label %if.then30, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then30:                                        ; preds = %land.lhs.true
  %filp31 = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 9
  %28 = ptrtoint ptr %filp31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %filp31, align 4
  %cmp32 = icmp eq ptr %29, %filp
  br i1 %cmp32, label %do.body35, label %if.then30.for.end_crit_edge

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body35:                                        ; preds = %if.then30
  %30 = load i32, ptr @dbg_level, align 4
  %and36 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.end59_crit_edge, label %do.body39

do.body35.do.end59_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

do.body39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_obw_free.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_obw_free, %do.end59)) #11
          to label %if.then53 [label %do.end59], !srcloc !416

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %handle, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_obw_free.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i64 noundef %32) #11
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body39, %do.body35.do.end59_crit_edge
  %33 = ptrtoint ptr %filp31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %filp31, align 4
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.end_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.for.end_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %for.end

if.then.i:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  call void @mport_release_mapping(ptr noundef %ref) #11, !callees !427
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %_map.0100, %mappings
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.end_crit_edge, %if.then30.for.end_crit_edge, %do.end17.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %buf_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -93, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_inbound_free(ptr noundef %filp, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %handle = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #11
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %handle, align 8, !annotation !417
  %5 = load i32, ptr @dbg_level, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body2

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_inbound_free.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_inbound_free, %do.end12)) #11
          to label %if.then7 [label %do.end12], !srcloc !416

if.then7:                                         ; preds = %do.body2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.mport_dev, ptr %7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.dev_name.exit_crit_edge

if.then7.dev_name.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mport_dev, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then7.dev_name.exit_crit_edge
  %retval.0.i65 = phi ptr [ %11, %if.end.i ], [ %9, %if.then7.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_inbound_free.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.59, ptr noundef %retval.0.i65, ptr noundef %filp) #11
  br label %do.end12

do.end12:                                         ; preds = %dev_name.exit, %do.body2, %entry.do.end12_crit_edge
  %mport = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mport, align 8
  %ops = getelementptr inbounds %struct.rio_mport, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %unmap_inb = getelementptr inbounds %struct.rio_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %unmap_inb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unmap_inb, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %do.end12.cleanup_crit_edge, label %if.end8.i.i

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %do.end12
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %handle, i32 noundef 8) #11
  %19 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %handle, ptr noundef %arg, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end19, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i69 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i69
  %add.ptr.i.i = getelementptr i8, ptr %handle, i32 %sub.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i69)
  br label %cleanup

if.end19:                                         ; preds = %if.end.i.i
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mappings, align 4
  %cmp.not74 = icmp eq ptr %24, %mappings
  br i1 %cmp.not74, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19.for.body_crit_edge
  %map.075 = phi ptr [ %_map.076, %for.inc.for.body_crit_edge ], [ %24, %if.end19.for.body_crit_edge ]
  %25 = ptrtoint ptr %map.075 to i32
  call void @__asan_load4_noabort(i32 %25)
  %_map.076 = load ptr, ptr %map.075, align 8
  %dir = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.075, i32 0, i32 2
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp29 = icmp eq i32 %27, 0
  br i1 %cmp29, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.075, i32 0, i32 5
  %28 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phys_addr, align 8
  %conv = zext i32 %29 to i64
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %handle, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv)
  %cmp30 = icmp eq i64 %31, %conv
  br i1 %cmp30, label %if.then32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then32:                                        ; preds = %land.lhs.true
  %filp33 = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.075, i32 0, i32 9
  %32 = ptrtoint ptr %filp33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %filp33, align 4
  %cmp34 = icmp eq ptr %33, %filp
  br i1 %cmp34, label %if.then36, label %if.then32.for.end_crit_edge

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then36:                                        ; preds = %if.then32
  %34 = ptrtoint ptr %filp33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %filp33, align 4
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.075, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.end_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.for.end_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %for.end

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  call void @mport_release_mapping(ptr noundef %ref) #11, !callees !427
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %_map.076, %mappings
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.end_crit_edge, %if.then32.for.end_crit_edge, %if.end19.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %buf_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11.i.i, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -93, %do.end12.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_free_dma(ptr noundef %filp, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %handle = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #11
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %handle, align 8, !annotation !417
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %handle, i32 noundef 8) #11
  %6 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %handle, ptr noundef %arg, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i91 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i91
  %add.ptr.i.i = getelementptr i8, ptr %handle, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i91)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  %10 = load i32, ptr @dbg_level, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end14_crit_edge, label %do.body4

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_free_dma.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_free_dma, %do.end14)) #11
          to label %if.then10 [label %do.end14], !srcloc !416

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_free_dma.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, ptr noundef %filp) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body4, %do.body.do.end14_crit_edge
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mappings, align 4
  %cmp.not98 = icmp eq ptr %12, %mappings
  br i1 %cmp.not98, label %do.end14.do.body43.critedge_crit_edge, label %do.end14.for.body_crit_edge

do.end14.for.body_crit_edge:                      ; preds = %do.end14
  br label %for.body

do.end14.do.body43.critedge_crit_edge:            ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end14.for.body_crit_edge
  %map.099 = phi ptr [ %_map.0100, %for.inc.for.body_crit_edge ], [ %12, %do.end14.for.body_crit_edge ]
  %13 = ptrtoint ptr %map.099 to i32
  call void @__asan_load4_noabort(i32 %13)
  %_map.0100 = load ptr, ptr %map.099, align 8
  %dir = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp24 = icmp eq i32 %15, 2
  br i1 %cmp24, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 5
  %16 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_addr, align 8
  %conv = zext i32 %17 to i64
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %handle, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv)
  %cmp25 = icmp eq i64 %19, %conv
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true27:                                  ; preds = %land.lhs.true
  %filp28 = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 9
  %20 = ptrtoint ptr %filp28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %filp28, align 4
  %cmp29 = icmp eq ptr %21, %filp
  br i1 %cmp29, label %if.then31, label %land.lhs.true27.for.inc_crit_edge

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then31:                                        ; preds = %land.lhs.true27
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.099, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  call void @mport_release_mapping(ptr noundef %ref) #11, !callees !427
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void @mutex_unlock(ptr noundef %buf_mutex) #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true27.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %_map.0100, %mappings
  br i1 %cmp.not, label %for.inc.do.body43.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body43.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43.critedge

do.body43.critedge:                               ; preds = %for.inc.do.body43.critedge_crit_edge, %do.end14.do.body43.critedge_crit_edge
  call void @mutex_unlock(ptr noundef %buf_mutex) #11
  %23 = load i32, ptr @dbg_level, align 4
  %and44 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.critedge.cleanup_crit_edge, label %do.body47

do.body43.critedge.cleanup_crit_edge:             ; preds = %do.body43.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body47:                                        ; preds = %do.body43.critedge
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_free_dma.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_free_dma, %cleanup)) #11
          to label %if.then61 [label %cleanup], !srcloc !416

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_free_dma.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body47, %do.body43.critedge.cleanup_crit_edge, %kref_put.exit, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %kref_put.exit ], [ -14, %if.then61 ], [ -14, %do.body43.critedge.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %do.body47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_add_riodev(ptr nocapture noundef readonly %priv, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %dev_info = alloca %struct.rio_rdev_info, align 4
  %rval = alloca i32, align 4
  %swpinfo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dev_info) #11
  %2 = call ptr @memset(ptr %dev_info, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #11
  %3 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rval, align 4, !annotation !417
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %swpinfo) #11
  %4 = ptrtoint ptr %swpinfo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %swpinfo, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dev_info, i32 noundef 32) #11
  %6 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %dev_info, ptr noundef %arg, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i341 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i341
  %add.ptr.i.i = getelementptr i8, ptr %dev_info, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i341)
  br label %cleanup225

if.end:                                           ; preds = %if.end.i.i
  %name = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 4
  %arrayidx = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 4, i32 20
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 4
  %11 = load i32, ptr @dbg_level, align 4
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.do.end18_crit_edge, label %do.body4

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_add_riodev, %do.end18)) #11
          to label %if.then10 [label %do.end18], !srcloc !416

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %comptag = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 3
  %12 = ptrtoint ptr %comptag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %comptag, align 4
  %14 = ptrtoint ptr %dev_info to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dev_info, align 4
  %conv = zext i16 %15 to i32
  %hopcount13 = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 1
  %16 = ptrtoint ptr %hopcount13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hopcount13, align 2
  %conv14 = zext i8 %17 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_add_riodev.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, ptr noundef %name, i32 noundef %13, i32 noundef %conv, i32 noundef %conv14) #11
  br label %do.end18

do.end18:                                         ; preds = %if.then10, %do.body4, %if.end.do.end18_crit_edge
  %call.i = call ptr @bus_find_device(ptr noundef nonnull @rio_bus_type, ptr noundef null, ptr noundef %name, ptr noundef nonnull @device_match_name) #11
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end51, label %do.body24

do.body24:                                        ; preds = %do.end18
  %18 = load i32, ptr @dbg_level, align 4
  %and25 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end50_crit_edge, label %do.body28

do.body24.do.end50_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_add_riodev, %do.end50)) #11
          to label %if.then42 [label %do.end50], !srcloc !416

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_add_riodev.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109, ptr noundef %name) #11
  br label %do.end50

do.end50:                                         ; preds = %if.then42, %do.body28, %do.body24.do.end50_crit_edge
  call void @put_device(ptr noundef nonnull %call.i) #11
  br label %cleanup225

if.end51:                                         ; preds = %do.end18
  %mport52 = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %mport52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mport52, align 8
  %21 = ptrtoint ptr %dev_info to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dev_info, align 4
  %hopcount54 = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 1
  %23 = ptrtoint ptr %hopcount54 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hopcount54, align 2
  %call55 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 16, ptr noundef nonnull %rval) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end51.cleanup225_crit_edge

if.end51.cleanup225_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup225

if.end58:                                         ; preds = %if.end51
  %25 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rval, align 4
  %and59 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end8.i.i338_crit_edge, label %if.then61

if.end58.if.end8.i.i338_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i338

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 20, ptr noundef nonnull %swpinfo) #11
  %27 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swpinfo, align 4
  %29 = lshr i32 %28, 6
  %30 = and i32 %29, 1020
  %add = add nuw nsw i32 %30, 1608
  br label %if.end8.i.i338

if.end8.i.i338:                                   ; preds = %if.then61, %if.end58.if.end8.i.i338_crit_edge
  %size.0 = phi i32 [ %add, %if.then61 ], [ 1544, %if.end58.if.end8.i.i338_crit_edge ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3520) #17
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %if.end8.i.i338.cleanup225_crit_edge, label %if.end69

if.end8.i.i338.cleanup225_crit_edge:              ; preds = %if.end8.i.i338
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup225

if.end69:                                         ; preds = %if.end8.i.i338
  %net = getelementptr inbounds %struct.rio_mport, ptr %20, i32 0, i32 4
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 8
  %cmp70 = icmp eq ptr %32, null
  br i1 %cmp70, label %if.then72, label %if.end69.if.end140_crit_edge

if.end69.if.end140_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then72:                                        ; preds = %if.end69
  %call74 = call ptr @rio_alloc_net(ptr noundef %20) #11
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then76, label %if.end102

if.then76:                                        ; preds = %if.then72
  %33 = load i32, ptr @dbg_level, align 4
  %and78 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then76.cleanup224_crit_edge, label %do.body81

if.then76.cleanup224_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup224

do.body81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_add_riodev, %cleanup224)) #11
          to label %if.then95 [label %cleanup224], !srcloc !416

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_add_riodev.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.109) #11
  br label %cleanup224

if.end102:                                        ; preds = %if.then72
  %id = getelementptr inbounds %struct.rio_mport, ptr %20, i32 0, i32 12
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id, align 8
  %id103 = getelementptr inbounds %struct.rio_net, ptr %call74, i32 0, i32 5
  %36 = ptrtoint ptr %id103 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %id103, align 4
  %hport = getelementptr inbounds %struct.rio_net, ptr %call74, i32 0, i32 4
  %37 = ptrtoint ptr %hport to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %20, ptr %hport, align 8
  %dev104 = getelementptr inbounds %struct.rio_net, ptr %call74, i32 0, i32 6
  %conv106 = zext i8 %35 to i32
  %call107 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev104, ptr noundef nonnull @.str.113, i32 noundef %conv106) #11
  %dev108 = getelementptr inbounds %struct.rio_mport, ptr %20, i32 0, i32 18
  %parent = getelementptr inbounds %struct.rio_net, ptr %call74, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev108, ptr %parent, align 8
  %release = getelementptr inbounds %struct.rio_net, ptr %call74, i32 0, i32 6, i32 35
  %39 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rio_release_net, ptr %release, align 4
  %call111 = call i32 @rio_add_net(ptr noundef nonnull %call74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end102.if.end140_crit_edge, label %do.body114

if.end102.if.end140_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

do.body114:                                       ; preds = %if.end102
  %40 = load i32, ptr @dbg_level, align 4
  %and115 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body114.do.end138_crit_edge, label %do.body118

do.body114.do.end138_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138

do.body118:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_add_riodev, %do.end138)) #11
          to label %if.then132 [label %do.end138], !srcloc !416

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_add_riodev.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109, i32 noundef %call111) #11
  br label %do.end138

do.end138:                                        ; preds = %if.then132, %do.body118, %do.body114.do.end138_crit_edge
  call void @kfree(ptr noundef nonnull %call74) #11
  br label %cleanup224

if.end140:                                        ; preds = %if.end102.if.end140_crit_edge, %if.end69.if.end140_crit_edge
  %41 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net, align 8
  %net142 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %net142 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %net142, align 16
  %44 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rval, align 4
  %pef = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 11
  %46 = ptrtoint ptr %pef to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %pef, align 8
  %47 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %swpinfo, align 4
  %swpinfo143 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 12
  %49 = ptrtoint ptr %swpinfo143 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %swpinfo143, align 4
  %call144 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 0, ptr noundef nonnull %rval) #11
  %50 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rval, align 4
  %shr145 = lshr i32 %51, 16
  %conv146 = trunc i32 %shr145 to i16
  %did = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %did to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv146, ptr %did, align 2
  %conv148 = trunc i32 %51 to i16
  %vid = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv148, ptr %vid, align 8
  %device_rev = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 6
  %call149 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 4, ptr noundef %device_rev) #11
  %call150 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 8, ptr noundef nonnull %rval) #11
  %54 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rval, align 4
  %shr151 = lshr i32 %55, 16
  %conv152 = trunc i32 %shr151 to i16
  %asm_did = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %asm_did to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv152, ptr %asm_did, align 32
  %conv154 = trunc i32 %55 to i16
  %asm_vid = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 8
  %57 = ptrtoint ptr %asm_vid to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv154, ptr %asm_vid, align 2
  %call155 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 12, ptr noundef nonnull %rval) #11
  %58 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rval, align 4
  %shr156 = lshr i32 %59, 16
  %conv157 = trunc i32 %shr156 to i16
  %asm_rev = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 9
  %60 = ptrtoint ptr %asm_rev to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv157, ptr %asm_rev, align 4
  %61 = ptrtoint ptr %pef to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pef, align 8
  %and159 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end140.if.end166_crit_edge, label %if.then161

if.end140.if.end166_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

if.then161:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  %conv163 = trunc i32 %59 to i16
  %efptr = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 10
  %63 = ptrtoint ptr %efptr to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv163, ptr %efptr, align 2
  %phys_rmap = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 17
  %call164 = call i32 @rio_mport_get_physefb(ptr noundef %20, i32 noundef 0, i16 noundef zeroext %22, i8 noundef zeroext %24, ptr noundef %phys_rmap) #11
  %phys_efptr = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 16
  %64 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call164, ptr %phys_efptr, align 4
  %call165 = call i32 @rio_mport_get_feature(ptr noundef %20, i32 noundef 0, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 7) #11
  %em_efptr = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 18
  %65 = ptrtoint ptr %em_efptr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call165, ptr %em_efptr, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end140.if.end166_crit_edge
  %src_ops = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 13
  %call167 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 24, ptr noundef %src_ops) #11
  %dst_ops = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 14
  %call168 = call i32 @rio_mport_read_config_32(ptr noundef %20, i16 noundef zeroext %22, i8 noundef zeroext %24, i32 noundef 28, ptr noundef %dst_ops) #11
  %comptag169 = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 3
  %66 = ptrtoint ptr %comptag169 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %comptag169, align 4
  %comp_tag = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 15
  %68 = ptrtoint ptr %comp_tag to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %comp_tag, align 8
  %destid170 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 24
  %69 = ptrtoint ptr %destid170 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %22, ptr %destid170, align 4
  %hopcount171 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 25
  %70 = ptrtoint ptr %hopcount171 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %24, ptr %hopcount171, align 2
  %71 = ptrtoint ptr %pef to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pef, align 8
  %and173 = and i32 %72, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end166.if.end178_crit_edge, label %if.then175

if.end166.if.end178_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.then175:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  %route_table = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 1, i32 1
  %73 = ptrtoint ptr %route_table to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %route_table, align 16
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end166.if.end178_crit_edge
  %74 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %74)
  %char0 = load i8, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool182.not = icmp eq i8 %char0, 0
  br i1 %tobool182.not, label %if.else, label %if.then183

if.then183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %dev184 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21
  %call187 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev184, ptr noundef nonnull @.str.115, ptr noundef %name) #11
  br label %if.end206

if.else:                                          ; preds = %if.end178
  %75 = ptrtoint ptr %pef to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pef, align 8
  %and189 = and i32 %76, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  %dev199 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21
  %id200 = getelementptr inbounds %struct.rio_mport, ptr %20, i32 0, i32 12
  %77 = ptrtoint ptr %id200 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %id200, align 8
  %conv201 = zext i8 %78 to i32
  %79 = ptrtoint ptr %comp_tag to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %comp_tag, align 8
  %and203 = and i32 %80, 131071
  br i1 %tobool190.not, label %if.else198, label %if.then191

if.then191:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call197 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev199, ptr noundef nonnull @.str.116, i32 noundef %conv201, i32 noundef %and203) #11
  br label %if.end206

if.else198:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call204 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev199, ptr noundef nonnull @.str.117, i32 noundef %conv201, i32 noundef %and203) #11
  br label %if.end206

if.end206:                                        ; preds = %if.else198, %if.then191, %if.then183
  %net_list = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %net_list to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %net_list, ptr %net_list, align 8
  %prev.i = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %net_list, ptr %prev.i, align 4
  %83 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net, align 8
  %dev208 = getelementptr inbounds %struct.rio_net, ptr %84, i32 0, i32 6
  %parent210 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21, i32 1
  %85 = ptrtoint ptr %parent210 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev208, ptr %parent210, align 32
  call void @rio_attach_device(ptr noundef nonnull %call9.i.i) #11
  %release212 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21, i32 35
  %86 = ptrtoint ptr %release212 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @rio_release_dev, ptr %release212, align 4
  %87 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dst_ops, align 4
  %and214 = and i32 %88, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.end206.if.end218_crit_edge, label %if.then216

if.end206.if.end218_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end218

if.then216:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #13
  %riores = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 22
  %end3.i = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 22, i32 0, i32 1
  %89 = call ptr @memset(ptr %riores, i32 0, i32 32)
  %90 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 65535, ptr %end3.i, align 4
  %flags.i = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 22, i32 0, i32 3
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 512, ptr %flags.i, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.end206.if.end218_crit_edge
  %call219 = call i32 @rio_add_device(ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end218.cleanup224_crit_edge

if.end218.cleanup224_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup224

if.end222:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  %call223 = call ptr @rio_dev_get(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup225

cleanup224:                                       ; preds = %if.end218.cleanup224_crit_edge, %do.end138, %if.then95, %do.body81, %if.then76.cleanup224_crit_edge
  %err.1 = phi i32 [ %call219, %if.end218.cleanup224_crit_edge ], [ -12, %if.then76.cleanup224_crit_edge ], [ -12, %if.then95 ], [ %call111, %do.end138 ], [ -12, %do.body81 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup225

cleanup225:                                       ; preds = %cleanup224, %if.end222, %if.end8.i.i338.cleanup225_crit_edge, %if.end51.cleanup225_crit_edge, %do.end50, %if.then11.i.i
  %retval.0 = phi i32 [ -17, %do.end50 ], [ %err.1, %cleanup224 ], [ 0, %if.end222 ], [ -5, %if.end51.cleanup225_crit_edge ], [ -12, %if.end8.i.i338.cleanup225_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %swpinfo) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dev_info) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_del_riodev(ptr nocapture noundef readonly %priv, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %dev_info = alloca %struct.rio_rdev_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dev_info) #11
  %0 = call ptr @memset(ptr %dev_info, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #16, !srcloc !418
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !419

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dev_info, i32 noundef 32) #11
  %2 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !420
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %dev_info, ptr noundef %arg, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !421
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !419

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i85 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i85
  %add.ptr.i.i = getelementptr i8, ptr %dev_info, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i85)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %name = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 4
  %arrayidx = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 4, i32 20
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %mport1 = getelementptr inbounds %struct.mport_dev, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mport1, align 8
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %11)
  %char0 = load i8, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool4.not = icmp eq i8 %char0, 0
  br i1 %tobool4.not, label %do.body.preheader, label %if.then5

do.body.preheader:                                ; preds = %if.end
  %comptag = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 3
  %12 = ptrtoint ptr %comptag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %comptag, align 4
  %call1296 = call ptr @rio_get_comptag(i32 noundef %13, ptr noundef null) #11
  %tobool13.not97 = icmp eq ptr %call1296, null
  br i1 %tobool13.not97, label %do.body.preheader.do.body34_crit_edge, label %land.lhs.true.lr.ph

do.body.preheader.do.body34_crit_edge:            ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

land.lhs.true.lr.ph:                              ; preds = %do.body.preheader
  %net15 = getelementptr inbounds %struct.rio_mport, ptr %10, i32 0, i32 4
  %hopcount24 = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 1
  br label %land.lhs.true

if.then5:                                         ; preds = %if.end
  %call.i = call ptr @bus_find_device(ptr noundef nonnull @rio_bus_type, ptr noundef null, ptr noundef %name, ptr noundef nonnull @device_match_name) #11
  %tobool9.not = icmp eq ptr %call.i, null
  %add.ptr = getelementptr i8, ptr %call.i, i32 -88
  %tobool32.not = icmp eq ptr %add.ptr, null
  %or.cond = or i1 %tobool9.not, %tobool32.not
  br i1 %or.cond, label %if.then5.do.body34_crit_edge, label %if.then5.if.end58_crit_edge

if.then5.if.end58_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then5.do.body34_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

land.lhs.true:                                    ; preds = %do.body.backedge.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %call1298 = phi ptr [ %call1296, %land.lhs.true.lr.ph ], [ %call12, %do.body.backedge.land.lhs.true_crit_edge ]
  %parent = getelementptr inbounds %struct.rio_dev, ptr %call1298, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %16 = ptrtoint ptr %net15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net15, align 8
  %dev16 = getelementptr inbounds %struct.rio_net, ptr %17, i32 0, i32 6
  %cmp = icmp eq ptr %15, %dev16
  br i1 %cmp, label %land.lhs.true17, label %land.lhs.true.do.body.backedge_crit_edge

land.lhs.true.do.body.backedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %land.lhs.true22.do.body.backedge_crit_edge, %land.lhs.true17.do.body.backedge_crit_edge, %land.lhs.true.do.body.backedge_crit_edge
  %18 = ptrtoint ptr %comptag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %comptag, align 4
  %call12 = call ptr @rio_get_comptag(i32 noundef %19, ptr noundef nonnull %call1298) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.body.backedge.do.body34_crit_edge, label %do.body.backedge.land.lhs.true_crit_edge

do.body.backedge.land.lhs.true_crit_edge:         ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.body.backedge.do.body34_crit_edge:             ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

land.lhs.true17:                                  ; preds = %land.lhs.true
  %destid = getelementptr inbounds %struct.rio_dev, ptr %call1298, i32 0, i32 24
  %20 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %destid, align 4
  %22 = ptrtoint ptr %dev_info to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dev_info, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp20 = icmp eq i16 %21, %23
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true17.do.body.backedge_crit_edge

land.lhs.true17.do.body.backedge_crit_edge:       ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %hopcount = getelementptr inbounds %struct.rio_dev, ptr %call1298, i32 0, i32 25
  %24 = ptrtoint ptr %hopcount to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hopcount, align 2
  %26 = ptrtoint ptr %hopcount24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hopcount24, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp26 = icmp eq i8 %25, %27
  br i1 %cmp26, label %land.lhs.true22.if.end58_crit_edge, label %land.lhs.true22.do.body.backedge_crit_edge

land.lhs.true22.do.body.backedge_crit_edge:       ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

land.lhs.true22.if.end58_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.body34:                                        ; preds = %do.body.backedge.do.body34_crit_edge, %if.then5.do.body34_crit_edge, %do.body.preheader.do.body34_crit_edge
  %28 = load i32, ptr @dbg_level, align 4
  %and = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %do.body34.cleanup_crit_edge, label %do.body37

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body37:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_del_riodev.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_del_riodev, %cleanup)) #11
          to label %if.then44 [label %cleanup], !srcloc !416

if.then44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %comptag47 = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 3
  %29 = ptrtoint ptr %comptag47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %comptag47, align 4
  %31 = ptrtoint ptr %dev_info to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dev_info, align 4
  %conv49 = zext i16 %32 to i32
  %hopcount50 = getelementptr inbounds %struct.rio_rdev_info, ptr %dev_info, i32 0, i32 1
  %33 = ptrtoint ptr %hopcount50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hopcount50, align 2
  %conv51 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_del_riodev.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.122, ptr noundef %name, i32 noundef %30, i32 noundef %conv49, i32 noundef %conv51) #11
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true22.if.end58_crit_edge, %if.then5.if.end58_crit_edge
  %rdev.193 = phi ptr [ %add.ptr, %if.then5.if.end58_crit_edge ], [ %call1298, %land.lhs.true22.if.end58_crit_edge ]
  %net59 = getelementptr inbounds %struct.rio_dev, ptr %rdev.193, i32 0, i32 2
  %35 = ptrtoint ptr %net59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net59, align 8
  call void @rio_dev_put(ptr noundef nonnull %rdev.193) #11
  call void @rio_del_device(ptr noundef nonnull %rdev.193, i32 noundef 3) #11
  %devices = getelementptr inbounds %struct.rio_net, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not = icmp eq ptr %38, %devices
  br i1 %cmp.i.not, label %if.then62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  call void @rio_free_net(ptr noundef %36) #11
  %net63 = getelementptr inbounds %struct.rio_mport, ptr %10, i32 0, i32 4
  %39 = ptrtoint ptr %net63 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %net63, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end58.cleanup_crit_edge, %if.then44, %do.body37, %do.body34.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -19, %if.then44 ], [ -19, %do.body34.cleanup_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end58.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -19, %do.body37 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dev_info) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rio_local_read_config_32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rio_local_write_config_32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_local_set_device_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_request_inb_dbell(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_mport_doorbell_handler(ptr nocapture noundef readnone %mport, ptr noundef %dev_id, i16 noundef zeroext %src, i16 noundef zeroext %dst, i16 noundef zeroext %info) #2 align 64 {
entry:
  %event = alloca %struct.rio_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %event) #11
  %0 = getelementptr inbounds i8, ptr %event, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %event, align 4
  %u = getelementptr inbounds %struct.rio_event, ptr %event, i32 0, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %src, ptr %u, align 4
  %payload = getelementptr inbounds %struct.rio_doorbell, ptr %u, i32 0, i32 1
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %info, ptr %payload, align 2
  %db_lock = getelementptr inbounds %struct.mport_dev, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %db_lock) #11
  %doorbells = getelementptr inbounds %struct.mport_dev, ptr %dev_id, i32 0, i32 9
  %5 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %5)
  %db_filter.049 = load ptr, ptr %doorbells, align 4
  %cmp.not50 = icmp eq ptr %db_filter.049, %doorbells
  br i1 %cmp.not50, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %db_lock) #11
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %db_filter.052 = phi ptr [ %db_filter.0, %for.inc.for.body_crit_edge ], [ %db_filter.049, %entry.for.body_crit_edge ]
  %handled.051 = phi i32 [ %handled.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %filter = getelementptr inbounds %struct.rio_mport_db_filter, ptr %db_filter.052, i32 0, i32 3
  %6 = ptrtoint ptr %filter to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp4 = icmp eq i16 %7, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %src)
  %cmp10 = icmp eq i16 %7, %src
  %or.cond = or i1 %cmp4, %cmp10
  br i1 %or.cond, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %low = getelementptr inbounds %struct.rio_mport_db_filter, ptr %db_filter.052, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %low to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %low, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %info)
  %cmp15.not = icmp ugt i16 %9, %info
  br i1 %cmp15.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %high = getelementptr inbounds %struct.rio_mport_db_filter, ptr %db_filter.052, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %high to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %high, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %info)
  %cmp21.not = icmp ult i16 %11, %info
  br i1 %cmp21.not, label %land.lhs.true17.for.inc_crit_edge, label %if.then

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  %priv23 = getelementptr inbounds %struct.rio_mport_db_filter, ptr %db_filter.052, i32 0, i32 2
  %12 = ptrtoint ptr %priv23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv23, align 4
  call fastcc void @rio_mport_add_event(ptr noundef %13, ptr noundef nonnull %event)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ 1, %if.then ], [ %handled.051, %land.lhs.true17.for.inc_crit_edge ], [ %handled.051, %land.lhs.true.for.inc_crit_edge ], [ %handled.051, %for.body.for.inc_crit_edge ]
  %14 = ptrtoint ptr %db_filter.052 to i32
  call void @__asan_load4_noabort(i32 %14)
  %db_filter.0 = load ptr, ptr %db_filter.052, align 4
  %cmp.not = icmp eq ptr %db_filter.0, %doorbells
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock(ptr noundef %db_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool.not = icmp eq i32 %handled.1, 0
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  %dev = getelementptr inbounds %struct.mport_dev, ptr %dev_id, i32 0, i32 3
  %conv31 = zext i16 %src to i32
  %conv32 = zext i16 %info to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv31, i32 noundef %conv32) #14
  br label %if.end33

if.end33:                                         ; preds = %do.end, %for.end.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %event) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_release_inb_dbell(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rio_mport_add_event(ptr noundef %priv, ptr noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %event_mask = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_mask, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %and = and i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo_lock = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %fifo_lock) #11
  %event_fifo = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 5
  %mask = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 5, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %6 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_fifo, align 4
  %out = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 5, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %sub.neg = add i32 %5, 1
  %add = sub i32 %sub.neg, %7
  %sub1 = add i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %sub1)
  %cmp = icmp ult i32 %sub1, 72
  br i1 %cmp, label %do.end.critedge, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %call6 = tail call i32 @__kfifo_in(ptr noundef %event_fifo, ptr noundef %event, i32 noundef 72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 72
  tail call void @_raw_spin_unlock(ptr noundef %fifo_lock) #11
  %event_rx_wait = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %event_rx_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br i1 %cmp7.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.end_crit_edge

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.critedge:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %fifo_lock) #11
  %event_rx_wait.c = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %event_rx_wait.c, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %do.end

do.end:                                           ; preds = %do.end.critedge, %lor.rhs.do.end_crit_edge
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.mport_dev, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.40) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_add_mport_pw_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_mport_pw_handler(ptr nocapture noundef readonly %mport, ptr noundef %context, ptr nocapture noundef readonly %msg, i32 noundef %step) #2 align 64 {
entry:
  %event = alloca %struct.rio_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %event) #11
  %0 = getelementptr inbounds i8, ptr %event, i32 68
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !417
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %event, align 4
  %u = getelementptr inbounds %struct.rio_event, ptr %event, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %u, ptr %msg, i32 64)
  %pw_lock = getelementptr inbounds %struct.mport_dev, ptr %context, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %pw_lock) #11
  %portwrites = getelementptr inbounds %struct.mport_dev, ptr %context, i32 0, i32 11
  %4 = ptrtoint ptr %portwrites to i32
  call void @__asan_load4_noabort(i32 %4)
  %pw_filter.030 = load ptr, ptr %portwrites, align 4
  %cmp.not31 = icmp eq ptr %pw_filter.030, %portwrites
  br i1 %cmp.not31, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %pw_lock) #11
  br label %if.then12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pw_filter.033 = phi ptr [ %pw_filter.0, %for.inc.for.body_crit_edge ], [ %pw_filter.030, %entry.for.body_crit_edge ]
  %handled.032 = phi i32 [ %handled.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %filter = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %pw_filter.033, i32 0, i32 3
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg, align 4
  %7 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filter, align 4
  %and.i = and i32 %8, %6
  %low.i = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %pw_filter.033, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %10)
  %cmp.i = icmp ult i32 %and.i, %10
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %rio_mport_match_pw.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

rio_mport_match_pw.exit:                          ; preds = %for.body
  %high.i = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %pw_filter.033, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %high.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %12)
  %cmp4.i.not = icmp ugt i32 %and.i, %12
  br i1 %cmp4.i.not, label %rio_mport_match_pw.exit.for.inc_crit_edge, label %if.then

rio_mport_match_pw.exit.for.inc_crit_edge:        ; preds = %rio_mport_match_pw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %rio_mport_match_pw.exit
  call void @__sanitizer_cov_trace_pc() #13
  %priv3 = getelementptr inbounds %struct.rio_mport_pw_filter, ptr %pw_filter.033, i32 0, i32 2
  %13 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv3, align 4
  call fastcc void @rio_mport_add_event(ptr noundef %14, ptr noundef nonnull %event)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %rio_mport_match_pw.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ 1, %if.then ], [ %handled.032, %rio_mport_match_pw.exit.for.inc_crit_edge ], [ %handled.032, %for.body.for.inc_crit_edge ]
  %15 = ptrtoint ptr %pw_filter.033 to i32
  call void @__asan_load4_noabort(i32 %15)
  %pw_filter.0 = load ptr, ptr %pw_filter.033, align 4
  %cmp.not = icmp eq ptr %pw_filter.0, %portwrites
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock(ptr noundef %pw_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool11.not = icmp eq i32 %handled.1, 0
  br i1 %tobool11.not, label %for.end.if.then12_crit_edge, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %for.end.if.then12_crit_edge, %for.end.thread
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @rio_mport_pw_handler._rs, ptr noundef nonnull @__func__.rio_mport_pw_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end19_crit_edge, label %do.end

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 12
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 8
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg, align 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %19) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then12.if.end19_crit_edge, %for.end.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %event) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_pw_enable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_del_mport_pw_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_mport_create_outbound_mapping(ptr noundef %md, ptr noundef %filp, i16 noundef zeroext %rioid, i64 noundef %raddr, i32 noundef %size, ptr noundef %paddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mport1 = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mport1, align 8
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_mport_create_outbound_mapping.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_mport_create_outbound_mapping, %do.end10)) #11
          to label %if.then7 [label %do.end10], !srcloc !416

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %rioid to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_mport_create_outbound_mapping.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %conv, i64 noundef %raddr, i32 noundef %size) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 56) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %call15 = tail call i32 @rio_map_outb_region(ptr noundef %1, i16 noundef zeroext %rioid, i64 noundef %raddr, i32 noundef %size, i32 noundef 0, ptr noundef %paddr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %err_map_outb, label %if.end19

if.end19:                                         ; preds = %if.end14
  %dir = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %dir, align 4
  %rioid20 = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %rioid20 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %rioid, ptr %rioid20, align 8
  %rio_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %rio_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %raddr, ptr %rio_addr, align 8
  %conv21 = zext i32 %size to i64
  %size22 = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %size22 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv21, ptr %size22, align 8
  %8 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paddr, align 4
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %phys_addr, align 8
  %filp23 = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %filp23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %filp, ptr %filp23, align 4
  %md24 = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %md24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %md, ptr %md24, align 8
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  %13 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %ref, align 8
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %15, ptr noundef %mappings) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mappings, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %15, align 4
  br label %cleanup

err_map_outb:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_map_outb, %if.end.i.i, %if.end19.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %err_map_outb ], [ -12, %do.end10.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_map_outb_region(ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref, ptr nocapture noundef readonly %release) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !419

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void %release(ptr noundef %kref) #11, !callees !427
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mport_release_mapping(ptr noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -48
  %md = getelementptr i8, ptr %ref, i32 -40
  %0 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md, align 8
  %mport1 = getelementptr inbounds %struct.mport_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mport1, align 8
  %4 = load i32, ptr @dbg_level, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_release_mapping.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_release_mapping, %do.end11)) #11
          to label %if.then8 [label %do.end11], !srcloc !416

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %dir = getelementptr i8, ptr %ref, i32 -36
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dir, align 4
  %virt_addr = getelementptr i8, ptr %ref, i32 -12
  %7 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt_addr, align 4
  %phys_addr = getelementptr i8, ptr %ref, i32 -16
  %name = getelementptr inbounds %struct.rio_mport, ptr %3, i32 0, i32 17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_release_mapping.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %6, ptr noundef %8, ptr noundef %phys_addr, ptr noundef %name) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2, %entry.do.end11_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end11.list_del.exit_crit_edge

do.end11.list_del.exit_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %ref, i32 -44
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end11.list_del.exit_crit_edge
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %ref, i32 -44
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dir12 = getelementptr i8, ptr %ref, i32 -36
  %17 = ptrtoint ptr %dir12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dir12, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %18, label %list_del.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %list_del.exit.sw.bb14_crit_edge
    i32 1, label %sw.bb17
  ]

list_del.exit.sw.bb14_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14

list_del.exit.sw.epilog_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phys_addr13 = getelementptr i8, ptr %ref, i32 -16
  %20 = ptrtoint ptr %phys_addr13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys_addr13, align 8
  tail call void @rio_unmap_inb_region(ptr noundef %3, i32 noundef %21) #11
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb, %list_del.exit.sw.bb14_crit_edge
  %parent = getelementptr inbounds %struct.rio_mport, ptr %3, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %size = getelementptr i8, ptr %ref, i32 -8
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size, align 8
  %conv = trunc i64 %25 to i32
  %virt_addr15 = getelementptr i8, ptr %ref, i32 -12
  %26 = ptrtoint ptr %virt_addr15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virt_addr15, align 4
  %phys_addr16 = getelementptr i8, ptr %ref, i32 -16
  %28 = ptrtoint ptr %phys_addr16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phys_addr16, align 8
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %conv, ptr noundef %27, i32 noundef %29, i32 noundef 0) #11
  br label %sw.epilog

sw.bb17:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rioid = getelementptr i8, ptr %ref, i32 -32
  %30 = ptrtoint ptr %rioid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rioid, align 8
  %rio_addr = getelementptr i8, ptr %ref, i32 -24
  %32 = ptrtoint ptr %rio_addr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rio_addr, align 8
  tail call void @rio_unmap_outb_region(ptr noundef %3, i16 noundef zeroext %31, i64 noundef %33) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb14, %list_del.exit.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_map_inb_region(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_unmap_inb_region(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_unmap_outb_region(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_req_free(ptr noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dmach = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 9
  %2 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmach, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %sgt = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 5
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 4
  %dir = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 10
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #11
  tail call void @sg_free_table(ptr noundef %sgt) #11
  %page_list = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 6
  %14 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page_list, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nr_pages = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 7
  %16 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages, align 4
  tail call void @unpin_user_pages(ptr noundef nonnull %15, i32 noundef %17) #11
  %18 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page_list, align 4
  tail call void @kfree(ptr noundef %19) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %map = getelementptr inbounds %struct.mport_dma_req, ptr %ref, i32 0, i32 8
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %md = getelementptr inbounds %struct.rio_mport_mapping, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %md, align 8
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %23, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %ref10 = getelementptr inbounds %struct.rio_mport_mapping, ptr %25, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref10, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %ref10, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref10, ptr %ref10, i32 1, ptr elementtype(i32) %ref10) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref10, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void @mport_release_mapping(ptr noundef %ref10) #11, !callees !427
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 4
  %md12 = getelementptr inbounds %struct.rio_mport_mapping, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %md12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %md12, align 8
  %buf_mutex13 = getelementptr inbounds %struct.mport_dev, ptr %30, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %buf_mutex13) #11
  br label %if.end14

if.end14:                                         ; preds = %kref_put.exit, %if.end.if.end14_crit_edge
  %dma_ref = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %dma_ref, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_ref, ptr %dma_ref, i32 1, ptr elementtype(i32) %dma_ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i33, label %if.then.i37, label %if.end5.i.i.i.i35

if.end5.i.i.i.i35:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i34, label %if.end5.i.i.i.i35.kref_put.exit38_crit_edge, label %if.then10.i.i.i.i36, !prof !419

if.end5.i.i.i.i35.kref_put.exit38_crit_edge:      ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit38

if.then10.i.i.i.i36:                              ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %dma_ref, i32 noundef 3) #11
  br label %kref_put.exit38

if.then.i37:                                      ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  %32 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i37.mport_release_dma.exit_crit_edge, label %do.body1.i

if.then.i37.mport_release_dma.exit_crit_edge:     ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %mport_release_dma.exit

do.body1.i:                                       ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_release_dma.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_req_free, %mport_release_dma.exit)) #11
          to label %if.then7.i [label %mport_release_dma.exit], !srcloc !416

if.then7.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %dmach.i = getelementptr %struct.mport_cdev_priv, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dmach.i, align 4
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_release_dma.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i32 noundef %36) #11
  br label %mport_release_dma.exit

mport_release_dma.exit:                           ; preds = %if.then7.i, %do.body1.i, %if.then.i37.mport_release_dma.exit_crit_edge
  %comp.i = getelementptr %struct.mport_cdev_priv, ptr %1, i32 0, i32 14
  tail call void @complete(ptr noundef %comp.i) #11
  br label %kref_put.exit38

kref_put.exit38:                                  ; preds = %mport_release_dma.exit, %if.then10.i.i.i.i36, %if.end5.i.i.i.i35.kref_put.exit38_crit_edge
  tail call void @kfree(ptr noundef %ref) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_dma_transfer(ptr noundef %filp, i32 noundef %sync, i32 noundef %dir, ptr nocapture noundef readonly %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %length = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 4
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %entry.cleanup175_crit_edge, label %if.end

entry.cleanup175_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup175

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup175_crit_edge, label %if.end3

if.end.cleanup175_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup175

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @get_dma_channel(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup175

if.end7:                                          ; preds = %if.end3
  %dmach = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmach, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %call7.i.i, align 8
  %req_comp = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %req_comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %req_comp, align 8
  %wait.i = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #11
  %dir8 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %dir8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dir, ptr %dir8, align 4
  %filp9 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %filp9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %filp, ptr %filp9, align 4
  %priv10 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %priv10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %priv10, align 8
  %dmach11 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %dmach11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %dmach11, align 8
  %sync12 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %sync12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sync, ptr %sync12, align 4
  %loc_addr = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 1
  %16 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %loc_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool13.not = icmp eq i64 %17, 0
  br i1 %tobool13.not, label %if.else61, label %if.then14

if.then14:                                        ; preds = %if.end7
  %conv = trunc i64 %17 to i32
  %and = and i32 %conv, 4095
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %length, align 8
  %narrow = add nuw nsw i32 %and, 4095
  %add = zext i32 %narrow to i64
  %add19 = add i64 %19, %add
  %shr = lshr i64 %add19, 12
  %conv21 = trunc i64 %shr to i32
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv21, i32 4) #11
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.then14.err_req_crit_edge, label %if.end7.i, !prof !429

if.then14.err_req_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_req

if.end7.i:                                        ; preds = %if.then14
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #17
  %cmp23 = icmp eq ptr %call8.i, null
  br i1 %cmp23, label %if.end7.i.err_req_crit_edge, label %if.end26

if.end7.i.err_req_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_req

if.end26:                                         ; preds = %if.end7.i
  %23 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %loc_addr, align 8
  %conv28 = trunc i64 %24 to i32
  %and29 = and i32 %conv28, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp30 = icmp eq i32 %dir, 2
  %cond = zext i1 %cmp30 to i32
  %call32 = tail call i32 @pin_user_pages_fast(i32 noundef %and29, i32 noundef %conv21, i32 noundef %cond, ptr noundef nonnull %call8.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %conv21)
  %cmp33.not = icmp eq i32 %call32, %conv21
  br i1 %cmp33.not, label %if.end46, label %if.then35

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp36 = icmp slt i32 %call32, 0
  br i1 %cmp36, label %do.end, label %do.end42

do.end:                                           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %call32) #14
  br label %err_pg

do.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, i32 noundef %call32, i32 noundef %conv21) #14
  br label %err_pg

if.end46:                                         ; preds = %if.end26
  %sgt = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %length, align 8
  %conv48 = trunc i64 %26 to i32
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %sgt, ptr noundef nonnull %call8.i, i32 noundef %conv21, i32 noundef %and, i32 noundef %conv48, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not = icmp eq i32 %call.i, 0
  br i1 %tobool50.not, label %cleanup, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.76, i32 noundef %call.i) #14
  br label %err_pg

cleanup:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %page_list58 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %page_list58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i, ptr %page_list58, align 4
  %nr_pages59 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %nr_pages59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv21, ptr %nr_pages59, align 8
  br label %if.end121

if.else61:                                        ; preds = %if.end7
  %handle = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 2
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %handle, align 8
  %conv62 = trunc i64 %30 to i32
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 13
  %31 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %31)
  %map.027 = load ptr, ptr %mappings, align 4
  %cmp65.not28 = icmp eq ptr %map.027, %mappings
  br i1 %cmp65.not28, label %if.else61.for.end_crit_edge, label %for.body.lr.ph

if.else61.for.end_crit_edge:                      ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else61
  %conv69 = and i64 %30, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %map.029 = phi ptr [ %map.027, %for.body.lr.ph ], [ %map.0, %for.inc.for.body_crit_edge ]
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.029, i32 0, i32 5
  %32 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys_addr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv62)
  %cmp67.not = icmp ugt i32 %33, %conv62
  br i1 %cmp67.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %conv71 = zext i32 %33 to i64
  %size = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.029, i32 0, i32 7
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size, align 8
  %add72 = add i64 %35, %conv71
  call void @__sanitizer_cov_trace_cmp8(i64 %conv69, i64 %add72)
  %cmp73 = icmp ult i64 %conv69, %add72
  br i1 %cmp73, label %if.then75, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.029, i32 0, i32 8
  tail call fastcc void @kref_get(ptr noundef %ref)
  %map76 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %map76 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %map.029, ptr %map76, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %map.029 to i32
  call void @__asan_load4_noabort(i32 %37)
  %map.0 = load ptr, ptr %map.029, align 4
  %cmp65.not = icmp eq ptr %map.0, %mappings
  br i1 %cmp65.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then75, %if.else61.for.end_crit_edge
  %map.026 = phi ptr [ %map.029, %if.then75 ], [ %mappings, %if.else61.for.end_crit_edge ], [ %mappings, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #11
  %map84 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %map84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map84, align 4
  %cmp85 = icmp eq ptr %39, null
  br i1 %cmp85, label %for.end.err_req_crit_edge, label %if.end88

for.end.err_req_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_req

if.end88:                                         ; preds = %for.end
  %40 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %length, align 8
  %offset90 = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 3
  %42 = ptrtoint ptr %offset90 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %offset90, align 8
  %add91 = add i64 %43, %41
  %size92 = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.026, i32 0, i32 7
  %44 = ptrtoint ptr %size92 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size92, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add91, i64 %45)
  %cmp93 = icmp ugt i64 %add91, %45
  br i1 %cmp93, label %if.end88.err_req_crit_edge, label %if.end96

if.end88.err_req_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_req

if.end96:                                         ; preds = %if.end88
  %sgt97 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 5
  %call98 = tail call i32 @sg_alloc_table(ptr noundef %sgt97, i32 noundef 1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %cleanup117, label %do.end106, !prof !419

do.end106:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.76) #14
  br label %err_req

cleanup117:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %sgt97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sgt97, align 8
  %virt_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.026, i32 0, i32 6
  %48 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virt_addr, align 4
  %phys_addr111 = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.026, i32 0, i32 5
  %50 = ptrtoint ptr %phys_addr111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phys_addr111, align 8
  %sub = sub i32 %conv62, %51
  %add.ptr112 = getelementptr i8, ptr %49, i32 %sub
  %52 = ptrtoint ptr %offset90 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %offset90, align 8
  %idx.ext = trunc i64 %53 to i32
  %add.ptr114 = getelementptr i8, ptr %add.ptr112, i32 %idx.ext
  %54 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %length, align 8
  %conv116 = trunc i64 %55 to i32
  tail call fastcc void @sg_set_buf(ptr noundef %47, ptr noundef %add.ptr114, i32 noundef %conv116)
  br label %if.end121

if.end121:                                        ; preds = %cleanup117, %cleanup
  %page_list.0 = phi ptr [ %call8.i, %cleanup ], [ null, %cleanup117 ]
  %nr_pages.2 = phi i32 [ %conv21, %cleanup ], [ 0, %cleanup117 ]
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %8, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %sgt122 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %sgt122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sgt122, align 8
  %nents125 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %nents125 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nents125, align 4
  %call126 = tail call i32 @dma_map_sg_attrs(ptr noundef %59, ptr noundef %61, i32 noundef %63, i32 noundef %dir, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %do.end132, label %if.end135

do.end132:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.76) #14
  br label %err_pg

if.end135:                                        ; preds = %if.end121
  %call136 = tail call fastcc i32 @do_dma_request(ptr noundef nonnull %call7.i.i, ptr noundef %xfer, i32 noundef %sync, i32 noundef %call126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call136)
  %cmp137 = icmp sgt i32 %call136, -1
  br i1 %cmp137, label %if.then139, label %do.body145

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sync)
  %cmp140 = icmp eq i32 %sync, 1
  br i1 %cmp140, label %if.then139.cleanup175_crit_edge, label %if.then139.err_pg_crit_edge

if.then139.err_pg_crit_edge:                      ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pg

if.then139.cleanup175_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup175

do.body145:                                       ; preds = %if.end135
  %64 = load i32, ptr @dbg_level, align 4
  %and146 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %do.body145.err_pg_crit_edge, label %do.body149

do.body145.err_pg_crit_edge:                      ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pg

do.body149:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_dma_transfer.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_dma_transfer, %err_pg)) #11
          to label %if.then161 [label %err_pg], !srcloc !416

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_dma_transfer.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.76, i32 noundef %call136) #11
  br label %err_pg

err_pg:                                           ; preds = %if.then161, %do.body149, %do.body145.err_pg_crit_edge, %if.then139.err_pg_crit_edge, %do.end132, %do.end54, %do.end42, %do.end
  %ret.2 = phi i32 [ -14, %do.end132 ], [ %call136, %if.then139.err_pg_crit_edge ], [ %call136, %if.then161 ], [ %call136, %do.body145.err_pg_crit_edge ], [ -14, %do.end ], [ -14, %do.end42 ], [ %call.i, %do.end54 ], [ %call136, %do.body149 ]
  %page_list.1 = phi ptr [ %page_list.0, %do.end132 ], [ %page_list.0, %if.then139.err_pg_crit_edge ], [ %page_list.0, %if.then161 ], [ %page_list.0, %do.body145.err_pg_crit_edge ], [ %call8.i, %do.end ], [ %call8.i, %do.end42 ], [ %call8.i, %do.end54 ], [ %page_list.0, %do.body149 ]
  %nr_pages.3 = phi i32 [ %nr_pages.2, %do.end132 ], [ %nr_pages.2, %if.then139.err_pg_crit_edge ], [ %nr_pages.2, %if.then161 ], [ %nr_pages.2, %do.body145.err_pg_crit_edge ], [ 0, %do.end ], [ %call32, %do.end42 ], [ %conv21, %do.end54 ], [ %nr_pages.2, %do.body149 ]
  %page_list169 = getelementptr inbounds %struct.mport_dma_req, ptr %call7.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %page_list169 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %page_list169, align 4
  %tobool170.not = icmp eq ptr %66, null
  br i1 %tobool170.not, label %if.then171, label %err_pg.err_req_crit_edge

err_pg.err_req_crit_edge:                         ; preds = %err_pg
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_req

if.then171:                                       ; preds = %err_pg
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unpin_user_pages(ptr noundef %page_list.1, i32 noundef %nr_pages.3) #11
  tail call void @kfree(ptr noundef %page_list.1) #11
  br label %err_req

err_req:                                          ; preds = %if.then171, %err_pg.err_req_crit_edge, %do.end106, %if.end88.err_req_crit_edge, %for.end.err_req_crit_edge, %if.end7.i.err_req_crit_edge, %if.then14.err_req_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_pg.err_req_crit_edge ], [ %ret.2, %if.then171 ], [ -12, %if.end7.i.err_req_crit_edge ], [ -12, %if.then14.err_req_crit_edge ], [ -22, %if.end88.err_req_crit_edge ], [ -12, %for.end.err_req_crit_edge ], [ %call98, %do.end106 ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %call7.i.i, i32 1, i32 3, i32 1) #11
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call7.i.i, ptr %call7.i.i, i32 1, ptr elementtype(i32) %call7.i.i) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_req
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup175_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.cleanup175_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup175

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %call7.i.i, i32 noundef 3) #11
  br label %cleanup175

if.then.i:                                        ; preds = %err_req
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void @dma_req_free(ptr noundef %call7.i.i) #11, !callees !427
  br label %cleanup175

cleanup175:                                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup175_crit_edge, %if.then139.cleanup175_crit_edge, %if.then6, %if.end.cleanup175_crit_edge, %entry.cleanup175_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ -22, %entry.cleanup175_crit_edge ], [ -12, %if.end.cleanup175_crit_edge ], [ %call136, %if.then139.cleanup175_crit_edge ], [ %ret.3, %if.end5.i.i.i.i.cleanup175_crit_edge ], [ %ret.3, %if.then10.i.i.i.i ], [ %ret.3, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_dma_channel(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_lock = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %dma_lock, i32 noundef 0) #11
  %dmach = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmach, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %mport = getelementptr inbounds %struct.mport_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mport, align 8
  %call = tail call ptr @rio_request_mport_dma(ptr noundef %5) #11
  %6 = ptrtoint ptr %dmach to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %dmach, align 4
  %tobool3.not = icmp eq ptr %call, null
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %dma_chan = getelementptr inbounds %struct.mport_dev, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_chan, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.then4, label %if.else14

if.then4:                                         ; preds = %if.then
  br i1 %tobool6.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %if.then4
  %11 = ptrtoint ptr %dmach to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dmach, align 4
  %dma_ref = getelementptr inbounds %struct.mport_dev, ptr %8, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_ref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %dma_ref, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_ref, ptr %dma_ref, i32 1, ptr elementtype(i32) %dma_ref) #11, !srcloc !428
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !429

if.then7.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end41_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !419

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end41_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dma_ref, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end41

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #14
  br label %return

if.else14:                                        ; preds = %if.then
  br i1 %tobool6.not, label %if.then18, label %if.else14.if.end41_crit_edge

if.else14.if.end41_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then18:                                        ; preds = %if.else14
  %14 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %dma_chan, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %dma_ref23 = getelementptr inbounds %struct.mport_dev, ptr %16, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_ref23, i32 noundef 4) #11
  %17 = ptrtoint ptr %dma_ref23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %dma_ref23, align 4
  %18 = load i32, ptr @dbg_level, align 4
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.then18.if.end41_crit_edge, label %do.body27

if.then18.if.end41_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.body27:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dma_channel.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@get_dma_channel, %if.end41)) #11
          to label %if.then34 [label %if.end41], !srcloc !416

if.then34:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmach, align 4
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_dma_channel.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %22) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %do.body27, %if.then18.if.end41_crit_edge, %if.else14.if.end41_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end41_crit_edge
  %dma_ref42 = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 13
  %call.i.i.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_ref42, i32 noundef 4) #11
  %23 = ptrtoint ptr %dma_ref42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %dma_ref42, align 4
  %comp = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 14
  %24 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #11
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %entry.if.end43_crit_edge
  %dma_ref44 = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 13
  %call.i.i.i.i.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_ref44, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %dma_ref44, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_ref44, ptr %dma_ref44, i32 1, ptr elementtype(i32) %dma_ref44) #11, !srcloc !428
  %asmresult.i.i.i.i.i.i66 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i66)
  %tobool1.not.i.i.i.i67 = icmp eq i32 %asmresult.i.i.i.i.i.i66, 0
  br i1 %tobool1.not.i.i.i.i67, label %if.end43.if.end15.sink.split.i.i.i.i72_crit_edge, label %if.else.i.i.i.i70, !prof !429

if.end43.if.end15.sink.split.i.i.i.i72_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i72

if.else.i.i.i.i70:                                ; preds = %if.end43
  %add.i.i.i.i68 = add i32 %asmresult.i.i.i.i.i.i66, 1
  %26 = or i32 %add.i.i.i.i68, %asmresult.i.i.i.i.i.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i69 = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i69, label %if.else.i.i.i.i70.return_crit_edge, label %if.else.i.i.i.i70.if.end15.sink.split.i.i.i.i72_crit_edge, !prof !419

if.else.i.i.i.i70.if.end15.sink.split.i.i.i.i72_crit_edge: ; preds = %if.else.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i72

if.else.i.i.i.i70.return_crit_edge:               ; preds = %if.else.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end15.sink.split.i.i.i.i72:                    ; preds = %if.else.i.i.i.i70.if.end15.sink.split.i.i.i.i72_crit_edge, %if.end43.if.end15.sink.split.i.i.i.i72_crit_edge
  %.sink.i.i.i.i71 = phi i32 [ 2, %if.end43.if.end15.sink.split.i.i.i.i72_crit_edge ], [ 1, %if.else.i.i.i.i70.if.end15.sink.split.i.i.i.i72_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dma_ref44, i32 noundef %.sink.i.i.i.i71) #11
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i72, %if.else.i.i.i.i70.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.else.i.i.i.i70.return_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i72 ]
  tail call void @mutex_unlock(ptr noundef %dma_lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !428
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !429

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !419

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_set_buf(ptr nocapture noundef %sg, ptr noundef %buf, i32 noundef %buflen) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.do.body5_crit_edge, !prof !419

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %buf
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.do.body5_crit_edge, !prof !419

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

land.rhs:                                         ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %land.rhs.do.body5_crit_edge, label %do.end8, !prof !429

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %land.lhs.true.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #11, !srcloc !430
  unreachable

do.end8:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %add.ptr = getelementptr %struct.page, ptr %3, i32 %shr
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !419

do.body5.i.i:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !431
  unreachable

do.body11.i.i:                                    ; preds = %do.end8
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !419

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !432
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %0, 4095
  %and.i.i = and i32 %5, 3
  %or.i.i = or i32 %and.i.i, %6
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %sg, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buflen, ptr %length.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_dma_request(ptr noundef %req, ptr nocapture noundef readonly %xfer, i32 noundef %sync, i32 noundef %nents) unnamed_addr #2 align 64 {
entry:
  %tx_data.i = alloca %struct.rio_dma_data, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dma_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %0) #11
  %priv1 = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %sgt2 = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 5
  %dmach = getelementptr inbounds %struct.mport_cdev_priv, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmach, align 4
  %dir3 = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 10
  %5 = ptrtoint ptr %dir3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dir3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  %cond = select i1 %cmp, i32 2, i32 1
  %7 = load i32, ptr @dbg_level, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end20_crit_edge, label %do.body4

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_dma_request.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_dma_request, %do.end20)) #11
          to label %if.then10 [label %do.end20], !srcloc !416

if.then10:                                        ; preds = %do.body4
  %8 = tail call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  %dev = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i256, label %if.then10.dev_name.exit_crit_edge

if.then10.dev_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i256:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i256, %if.then10.dev_name.exit_crit_edge
  %retval.0.i257 = phi ptr [ %19, %if.end.i256 ], [ %17, %if.then10.dev_name.exit_crit_edge ]
  %cond17 = select i1 %cmp, ptr @.str.65, ptr @.str.66
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_dma_request.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, ptr noundef %comm, i32 noundef %13, ptr noundef %retval.0.i257, ptr noundef nonnull %cond17) #11
  br label %do.end20

do.end20:                                         ; preds = %dev_name.exit, %do.body4, %entry.do.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tx_data.i) #11
  %20 = getelementptr inbounds i8, ptr %tx_data.i, i32 16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 72057594037927935, ptr %20, align 8
  %22 = ptrtoint ptr %sgt2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgt2, align 4
  %24 = ptrtoint ptr %tx_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tx_data.i, align 8
  %sg_len.i = getelementptr inbounds %struct.rio_dma_data, ptr %tx_data.i, i32 0, i32 1
  %25 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %nents, ptr %sg_len.i, align 4
  %26 = ptrtoint ptr %xfer to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %xfer, align 8
  %rio_addr1.i = getelementptr inbounds %struct.rio_dma_data, ptr %tx_data.i, i32 0, i32 2
  %28 = ptrtoint ptr %rio_addr1.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %rio_addr1.i, align 8
  br i1 %cmp, label %do.end20.prep_dma_xfer.exit_crit_edge, label %if.then.i259

do.end20.prep_dma_xfer.exit_crit_edge:            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %prep_dma_xfer.exit

if.then.i259:                                     ; preds = %do.end20
  %method.i = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 6
  %29 = ptrtoint ptr %method.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %method.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %30)
  %31 = icmp ult i16 %30, 6
  br i1 %31, label %switch.hole_check, label %if.then.i259.if.else.thread_crit_edge

if.then.i259.if.else.thread_crit_edge:            ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread

if.else.thread:                                   ; preds = %switch.hole_check.if.else.thread_crit_edge, %if.then.i259.if.else.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tx_data.i) #11
  br label %if.then52

switch.hole_check:                                ; preds = %if.then.i259
  %switch.maskindex = trunc i16 %30 to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %32 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %switch.lobit.not = icmp eq i8 %32, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else.thread_crit_edge, label %switch.lookup

switch.hole_check.if.else.thread_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %33 = sext i16 %30 to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.do_dma_request, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  %wr_type.i = getelementptr inbounds %struct.rio_dma_data, ptr %tx_data.i, i32 0, i32 4
  %35 = ptrtoint ptr %wr_type.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.load, ptr %wr_type.i, align 4
  br label %prep_dma_xfer.exit

prep_dma_xfer.exit:                               ; preds = %switch.lookup, %do.end20.prep_dma_xfer.exit_crit_edge
  %rioid.i = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 5
  %36 = ptrtoint ptr %rioid.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rioid.i, align 8
  %call8.i = call ptr @rio_dma_prep_xfer(ptr noundef %4, i16 noundef zeroext %37, ptr noundef nonnull %tx_data.i, i32 noundef %cond, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tx_data.i) #11
  %tobool22.not = icmp eq ptr %call8.i, null
  br i1 %tobool22.not, label %do.body24, label %if.else

do.body24:                                        ; preds = %prep_dma_xfer.exit
  %38 = load i32, ptr @dbg_level, align 4
  %and25 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.cleanup_crit_edge, label %do.body28

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_dma_request.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_dma_request, %cleanup)) #11
          to label %if.then42 [label %cleanup], !srcloc !416

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %cond44 = select i1 %cmp, ptr @.str.65, ptr @.str.66
  %39 = ptrtoint ptr %xfer to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %xfer, align 8
  %length = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 4
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %length, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_dma_request.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, ptr noundef nonnull %cond44, i64 noundef %40, i64 noundef %42) #11
  br label %cleanup

if.else:                                          ; preds = %prep_dma_xfer.exit
  %cmp.i262 = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i262, label %if.else.if.then52_crit_edge, label %if.end84

if.else.if.then52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52

if.then52:                                        ; preds = %if.else.if.then52_crit_edge, %if.else.thread
  %retval.0.i261274278 = phi ptr [ inttoptr (i32 -22 to ptr), %if.else.thread ], [ %call8.i, %if.else.if.then52_crit_edge ]
  %43 = ptrtoint ptr %retval.0.i261274278 to i32
  %44 = load i32, ptr @dbg_level, align 4
  %and55 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then52.cleanup_crit_edge, label %do.body58

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body58:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_dma_request.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_dma_request, %cleanup)) #11
          to label %if.then72 [label %cleanup], !srcloc !416

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  %cond74 = select i1 %cmp, ptr @.str.65, ptr @.str.66
  %45 = ptrtoint ptr %xfer to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %xfer, align 8
  %length76 = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 4
  %47 = ptrtoint ptr %length76 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %length76, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_dma_request.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.94, i32 noundef %43, ptr noundef nonnull %cond74, i64 noundef %46, i64 noundef %48) #11
  br label %cleanup

if.end84:                                         ; preds = %if.else
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8.i, i32 0, i32 6
  %49 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @dma_xfer_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8.i, i32 0, i32 8
  %50 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %req, ptr %callback_param, align 4
  %status = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 12
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %status, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %req, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %req, i32 1, i32 3, i32 1) #11
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req, ptr %req, i32 1, ptr elementtype(i32) %req) #11, !srcloc !428
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end84.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !429

if.end84.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end84
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !419

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end84.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end84.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %req, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8.i, i32 0, i32 4
  %54 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_submit.i, align 4
  %call.i = call i32 %55(ptr noundef nonnull %call8.i) #11
  %cookie86 = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 11
  %56 = ptrtoint ptr %cookie86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i, ptr %cookie86, align 4
  %57 = load i32, ptr @dbg_level, align 4
  %and88 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %kref_get.exit.do.end116_crit_edge, label %do.body91

kref_get.exit.do.end116_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

do.body91:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_dma_request.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_dma_request, %do.end116)) #11
          to label %if.then105 [label %do.end116], !srcloc !416

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  %58 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i263 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i263 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task107, align 8
  %pid.i264 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 68
  %62 = ptrtoint ptr %pid.i264 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid.i264, align 8
  %cond110 = select i1 %cmp, ptr @.str.65, ptr @.str.66
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_dma_request.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.94, i32 noundef %63, ptr noundef nonnull %cond110, i32 noundef %call.i) #11
  br label %do.end116

do.end116:                                        ; preds = %if.then105, %do.body91, %kref_get.exit.do.end116_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool118.not = icmp sgt i32 %call.i, -1
  br i1 %tobool118.not, label %if.end129, label %do.end122

do.end122:                                        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %xfer to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %xfer, align 8
  %length125 = getelementptr inbounds %struct.rio_transfer_io, ptr %xfer, i32 0, i32 4
  %66 = ptrtoint ptr %length125 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %length125, align 8
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94, i32 noundef %call.i, i64 noundef %65, i64 noundef %67) #14
  call fastcc void @kref_put(ptr noundef %req, ptr noundef nonnull @dma_req_free)
  br label %cleanup

if.end129:                                        ; preds = %do.end116
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %4, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %69, i32 0, i32 50
  %70 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device_issue_pending.i, align 4
  call void %71(ptr noundef %4) #11
  %72 = zext i32 %sync to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %sync, label %if.end137 [
    i32 1, label %if.then131
    i32 2, label %if.end129.cleanup_crit_edge
  ]

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then131:                                       ; preds = %if.end129
  %req_lock = getelementptr inbounds %struct.mport_cdev_priv, ptr %2, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %req_lock) #11
  %node = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 1
  %async_list = getelementptr inbounds %struct.mport_cdev_priv, ptr %2, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %2, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %74, ptr noundef %async_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then131.list_add_tail.exit_crit_edge

if.then131.list_add_tail.exit_crit_edge:          ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %node, ptr %prev.i, align 4
  %76 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %async_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %node, ptr %74, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then131.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %req_lock) #11
  br label %cleanup

if.end137:                                        ; preds = %if.end129
  %req_comp = getelementptr inbounds %struct.mport_dma_req, ptr %req, i32 0, i32 13
  %call138 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %req_comp, i32 noundef %call2.i) #11
  %79 = zext i32 %call138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %call138, label %if.end173 [
    i32 0, label %do.end143
    i32 -512, label %do.end160
  ]

do.end143:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  %80 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i265 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i265 to ptr
  %task146 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task146 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task146, align 8
  %comm147 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 101
  %pid.i266 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 68
  %84 = ptrtoint ptr %pid.i266 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pid.i266, align 8
  %cond153 = select i1 %cmp, ptr @.str.65, ptr @.str.66
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.94, ptr noundef %comm147, i32 noundef %85, ptr noundef nonnull %cond153, i32 noundef %call.i) #14
  br label %cleanup

do.end160:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  %86 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i267 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i267 to ptr
  %task163 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task163 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task163, align 8
  %comm164 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 101
  %pid.i268 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 68
  %90 = ptrtoint ptr %pid.i268 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pid.i268, align 8
  %cond170 = select i1 %cmp, ptr @.str.65, ptr @.str.66
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.94, ptr noundef %comm164, i32 noundef %91, ptr noundef nonnull %cond170, i32 noundef %call.i) #14
  br label %cleanup

if.end173:                                        ; preds = %if.end137
  %92 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp175.not = icmp eq i32 %93, 0
  br i1 %cmp175.not, label %if.end173.cleanup_crit_edge, label %do.end179

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end179:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %94 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i269 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i269 to ptr
  %task182 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task182 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task182, align 8
  %comm183 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 101
  %pid.i270 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %pid.i270 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid.i270, align 8
  %cond189 = select i1 %cmp, ptr @.str.65, ptr @.str.66
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.94, ptr noundef %comm183, i32 noundef %99, ptr noundef nonnull %cond189, i32 noundef %call.i, i32 noundef %93, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end179, %if.end173.cleanup_crit_edge, %do.end160, %do.end143, %list_add_tail.exit, %if.end129.cleanup_crit_edge, %do.end122, %if.then72, %do.body58, %if.then52.cleanup_crit_edge, %if.then42, %do.body28, %do.body24.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %list_add_tail.exit ], [ -110, %do.end143 ], [ -4, %do.end160 ], [ 0, %if.end129.cleanup_crit_edge ], [ %43, %if.then72 ], [ %43, %if.then52.cleanup_crit_edge ], [ -5, %do.end122 ], [ -5, %do.end179 ], [ 0, %if.end173.cleanup_crit_edge ], [ -5, %if.then42 ], [ -5, %do.body24.cleanup_crit_edge ], [ -5, %do.body28 ], [ %43, %do.body58 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_request_mport_dma(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_xfer_callback(ptr noundef %param) #2 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mport_dma_req, ptr %param, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dmach = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmach, align 4
  %cookie = getelementptr inbounds %struct.mport_dma_req, ptr %param, i32 0, i32 11
  %4 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #11
  %6 = call ptr @memset(ptr %state.i, i32 255, i32 16)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %10(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %state.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #11
  %status = getelementptr inbounds %struct.mport_dma_req, ptr %param, i32 0, i32 12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %status, align 4
  %req_comp = getelementptr inbounds %struct.mport_dma_req, ptr %param, i32 0, i32 13
  call void @complete(ptr noundef %req_comp) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %param, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @llvm.prefetch.p0(ptr %param, i32 1, i32 3, i32 1) #11
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %param, ptr %param, i32 1, ptr elementtype(i32) %param) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %param, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  call void @dma_req_free(ptr noundef %param) #11, !callees !427
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_dma_prep_xfer(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_alloc_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_release_net(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_release_net.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_release_net, %do.end10)) #11
          to label %if.then7 [label %do.end10], !srcloc !416

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr i8, ptr %dev, i32 -4
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id, align 4
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_release_net.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.118, i32 noundef %conv) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_add_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_get_physefb(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_get_feature(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_attach_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_release_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.rio_name.exit_crit_edge

entry.rio_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %entry.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %entry.rio_name.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %dev, i32 -88
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef %retval.0.i.i) #14
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_add_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_dev_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_get_comptag(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_dev_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_del_device(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_free_net(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_iomap_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mport_mm_open(ptr nocapture noundef readonly %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_mm_open.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_mm_open, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !416

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %1, i32 0, i32 5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_mm_open.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef %phys_addr) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !428
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !429

do.end9.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !419

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mport_mm_close(ptr nocapture noundef readonly %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %2 = load i32, ptr @dbg_level, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_mm_close.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_mm_close, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !416

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %phys_addr = getelementptr inbounds %struct.rio_mport_mapping, ptr %1, i32 0, i32 5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_mm_close.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, ptr noundef %phys_addr) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %md = getelementptr inbounds %struct.rio_mport_mapping, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %md, align 8
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %4, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void @mport_release_mapping(ptr noundef %ref) #11, !callees !427
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %6 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %md, align 8
  %buf_mutex12 = getelementptr inbounds %struct.mport_dev, ptr %7, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %buf_mutex12) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mport_cdev_release_dma(ptr noundef %filp) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = load i32, ptr @dma_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %list, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %3, align 4
  %6 = load i32, ptr @dbg_level, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body1

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %do.end14)) #11
          to label %if.then7 [label %do.end14], !srcloc !416

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release_dma.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148, ptr noundef %filp, ptr noundef %comm, i32 noundef %12) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then7, %do.body1, %entry.do.end14_crit_edge
  %dmach = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmach, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %do.body17, label %if.end42

do.body17:                                        ; preds = %do.end14
  %15 = load i32, ptr @dbg_level, align 4
  %and18 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.cleanup_crit_edge, label %do.body21

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %cleanup)) #11
          to label %if.then35 [label %cleanup], !srcloc !416

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release_dma.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.148, ptr noundef %filp) #11
  br label %cleanup

if.end42:                                         ; preds = %do.end14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %req_lock = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %req_lock) #11
  %async_list = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %async_list, align 4
  %cmp.i284.not = icmp eq ptr %19, %async_list
  br i1 %cmp.i284.not, label %if.end42.if.end80_crit_edge, label %do.body47

if.end42.if.end80_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

do.body47:                                        ; preds = %if.end42
  %20 = load i32, ptr @dbg_level, align 4
  %and48 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.do.end78_crit_edge, label %do.body51

do.body47.do.end78_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

do.body51:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %do.end78)) #11
          to label %if.then65 [label %do.end78], !srcloc !416

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %21 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i285 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i285 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task67, align 8
  %comm68 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 101
  %pid.i286 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid.i286 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid.i286, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release_dma.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.148, ptr noundef %filp, ptr noundef %comm68, i32 noundef %26) #11
  br label %do.end78

do.end78:                                         ; preds = %if.then65, %do.body51, %do.body47.do.end78_crit_edge
  %27 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %async_list, align 4
  %cmp.i.not.i = icmp eq ptr %28, %async_list
  br i1 %cmp.i.not.i, label %do.end78.if.end80_crit_edge, label %if.then.i287

do.end78.if.end80_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then.i287:                                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %28, ptr %list, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %30, ptr %32, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev6.i.i, align 4
  %36 = ptrtoint ptr %async_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %async_list, ptr %async_list, align 4
  store ptr %async_list, ptr %prev2.i.i, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then.i287, %do.end78.if.end80_crit_edge, %if.end42.if.end80_crit_edge
  call void @_raw_spin_unlock(ptr noundef %req_lock) #11
  %37 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %list, align 4
  %cmp.i289.not = icmp eq ptr %38, %list
  br i1 %cmp.i289.not, label %if.end80.if.end153_crit_edge, label %do.body85

if.end80.if.end153_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

do.body85:                                        ; preds = %if.end80
  %39 = load i32, ptr @dbg_level, align 4
  %and86 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.do.end109_crit_edge, label %do.body89

do.body85.do.end109_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end109

do.body89:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %do.end109)) #11
          to label %if.then103 [label %do.end109], !srcloc !416

if.then103:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release_dma.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.148) #11
  br label %do.end109

do.end109:                                        ; preds = %if.then103, %do.body89, %do.body85.do.end109_crit_edge
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %cmp.not314 = icmp eq ptr %41, %list
  br i1 %cmp.not314, label %do.end109.if.end153_crit_edge, label %do.end109.do.body119_crit_edge

do.end109.do.body119_crit_edge:                   ; preds = %do.end109
  br label %do.body119

do.end109.if.end153_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

do.body119:                                       ; preds = %kref_put.exit.do.body119_crit_edge, %do.end109.do.body119_crit_edge
  %.pn.in315 = phi ptr [ %.pn318, %kref_put.exit.do.body119_crit_edge ], [ %41, %do.end109.do.body119_crit_edge ]
  %req.0317 = getelementptr i8, ptr %.pn.in315, i32 -4
  %42 = ptrtoint ptr %.pn.in315 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn318 = load ptr, ptr %.pn.in315, align 4
  %43 = load i32, ptr @dbg_level, align 4
  %and120 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body119.do.end145_crit_edge, label %do.body123

do.body119.do.end145_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end145

do.body123:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %do.end145)) #11
          to label %if.then137 [label %do.end145], !srcloc !416

if.then137:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #13
  %filp138 = getelementptr i8, ptr %.pn.in315, i32 8
  %44 = ptrtoint ptr %filp138 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %filp138, align 4
  %cookie = getelementptr i8, ptr %.pn.in315, i32 52
  %46 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cookie, align 4
  %req_comp = getelementptr i8, ptr %.pn.in315, i32 60
  %call139 = call zeroext i1 @completion_done(ptr noundef %req_comp) #11
  %cond = select i1 %call139, ptr @.str.154, ptr @.str.155
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release_dma.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.148, ptr noundef %45, i32 noundef %47, ptr noundef nonnull %cond) #11
  br label %do.end145

do.end145:                                        ; preds = %if.then137, %do.body123, %do.body119.do.end145_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in315) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end145.list_del.exit_crit_edge

do.end145.list_del.exit_crit_edge:                ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in315, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %.pn.in315 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in315, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end145.list_del.exit_crit_edge
  %54 = ptrtoint ptr %.pn.in315 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in315, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in315, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %req.0317, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @llvm.prefetch.p0(ptr %req.0317, i32 1, i32 3, i32 1) #11
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req.0317, ptr %req.0317, i32 1, ptr elementtype(i32) %req.0317) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i291, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %req.0317, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i291:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  call void @dma_req_free(ptr noundef %req.0317) #11, !callees !427
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i291, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn318, %list
  br i1 %cmp.not, label %kref_put.exit.if.end153_crit_edge, label %kref_put.exit.do.body119_crit_edge

kref_put.exit.do.body119_crit_edge:               ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body119

kref_put.exit.if.end153_crit_edge:                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.end153:                                        ; preds = %kref_put.exit.if.end153_crit_edge, %do.end109.if.end153_crit_edge, %if.end80.if.end153_crit_edge
  call fastcc void @put_dma_channel(ptr noundef %1)
  %comp = getelementptr inbounds %struct.mport_cdev_priv, ptr %1, i32 0, i32 14
  %call154 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %comp, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 1
  br i1 %cmp155, label %do.end159, label %if.end153.if.end169_crit_edge

if.end153.if.end169_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

do.end159:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  %57 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i292 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i292 to ptr
  %task162 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task162 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task162, align 8
  %comm163 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 101
  %pid.i293 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid.i293 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid.i293, align 8
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.148, ptr noundef %comm163, i32 noundef %62, i32 noundef %call154) #14
  br label %if.end169

if.end169:                                        ; preds = %do.end159, %if.end153.if.end169_crit_edge
  %63 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dmach, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %dma_chan = getelementptr inbounds %struct.mport_dev, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_chan, align 4
  %cmp172.not = icmp eq ptr %64, %68
  %69 = load i32, ptr @dbg_level, align 4
  %and208 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %cmp172.not, label %do.body207, label %do.body174

do.body174:                                       ; preds = %if.end169
  br i1 %tobool209.not, label %do.body174.do.end205_crit_edge, label %do.body178

do.body174.do.end205_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end205

do.body178:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %do.end205)) #11
          to label %if.then192 [label %do.end205], !srcloc !416

if.then192:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #13
  %70 = call i32 @llvm.read_register.i32(metadata !406) #11
  %and.i294 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i294 to ptr
  %task194 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task194 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task194, align 8
  %comm195 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 101
  %pid.i295 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 68
  %74 = ptrtoint ptr %pid.i295 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pid.i295, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release_dma.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.148, ptr noundef %filp, ptr noundef %comm195, i32 noundef %75) #11
  br label %do.end205

do.end205:                                        ; preds = %if.then192, %do.body178, %do.body174.do.end205_crit_edge
  %76 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dmach, align 4
  call void @rio_release_dma(ptr noundef %77) #11
  br label %if.end233

do.body207:                                       ; preds = %if.end169
  br i1 %tobool209.not, label %do.body207.do.end231_crit_edge, label %do.body211

do.body207.do.end231_crit_edge:                   ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end231

do.body211:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %do.end231)) #11
          to label %if.then225 [label %do.end231], !srcloc !416

if.then225:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_release_dma.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.148) #11
  br label %do.end231

do.end231:                                        ; preds = %if.then225, %do.body211, %do.body207.do.end231_crit_edge
  %dma_ref = getelementptr inbounds %struct.mport_dev, ptr %17, i32 0, i32 15
  %call.i.i.i.i.i.i296 = call zeroext i1 @__kasan_check_write(ptr noundef %dma_ref, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @llvm.prefetch.p0(ptr %dma_ref, i32 1, i32 3, i32 1) #11
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_ref, ptr %dma_ref, i32 1, ptr elementtype(i32) %dma_ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i297 = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i297)
  %cmp.i.i.i.i298 = icmp eq i32 %asmresult.i.i.i.i.i.i.i297, 1
  br i1 %cmp.i.i.i.i298, label %if.then.i302, label %if.end5.i.i.i.i300

if.end5.i.i.i.i300:                               ; preds = %do.end231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i297)
  %.not.i.i.i.i299 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i297, 0
  br i1 %.not.i.i.i.i299, label %if.end5.i.i.i.i300.if.end233_crit_edge, label %if.then10.i.i.i.i301, !prof !419

if.end5.i.i.i.i300.if.end233_crit_edge:           ; preds = %if.end5.i.i.i.i300
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

if.then10.i.i.i.i301:                             ; preds = %if.end5.i.i.i.i300
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %dma_ref, i32 noundef 3) #11
  br label %if.end233

if.then.i302:                                     ; preds = %do.end231
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  %79 = load i32, ptr @dbg_level, align 4
  %and.i304 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i304)
  %tobool.not.i = icmp eq i32 %and.i304, 0
  br i1 %tobool.not.i, label %if.then.i302.mport_release_def_dma.exit_crit_edge, label %do.body1.i

if.then.i302.mport_release_def_dma.exit_crit_edge: ; preds = %if.then.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %mport_release_def_dma.exit

do.body1.i:                                       ; preds = %if.then.i302
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_release_def_dma.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_release_dma, %mport_release_def_dma.exit)) #11
          to label %if.then7.i [label %mport_release_def_dma.exit], !srcloc !416

if.then7.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %dma_chan.i = getelementptr %struct.mport_dev, ptr %17, i32 0, i32 14
  %80 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_chan.i, align 4
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %chan_id.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_release_def_dma.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.159, i32 noundef %83) #11
  br label %mport_release_def_dma.exit

mport_release_def_dma.exit:                       ; preds = %if.then7.i, %do.body1.i, %if.then.i302.mport_release_def_dma.exit_crit_edge
  %dma_chan11.i = getelementptr %struct.mport_dev, ptr %17, i32 0, i32 14
  %84 = ptrtoint ptr %dma_chan11.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dma_chan11.i, align 4
  call void @rio_release_dma(ptr noundef %85) #11
  %86 = ptrtoint ptr %dma_chan11.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %dma_chan11.i, align 4
  br label %if.end233

if.end233:                                        ; preds = %mport_release_def_dma.exit, %if.then10.i.i.i.i301, %if.end5.i.i.i.i300.if.end233_crit_edge, %do.end205
  %87 = ptrtoint ptr %dmach to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %dmach, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end233, %if.then35, %do.body21, %do.body17.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_dma_channel(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ref = getelementptr inbounds %struct.mport_cdev_priv, ptr %priv, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %dma_ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_ref, ptr %dma_ref, i32 1, ptr elementtype(i32) %dma_ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %dma_ref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  %1 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.mport_release_dma.exit_crit_edge, label %do.body1.i

if.then.i.mport_release_dma.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mport_release_dma.exit

do.body1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_release_dma.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@put_dma_channel, %mport_release_dma.exit)) #11
          to label %if.then7.i [label %mport_release_dma.exit], !srcloc !416

if.then7.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %dmach.i = getelementptr %struct.mport_cdev_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmach.i, align 4
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_release_dma.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i32 noundef %5) #11
  br label %mport_release_dma.exit

mport_release_dma.exit:                           ; preds = %if.then7.i, %do.body1.i, %if.then.i.mport_release_dma.exit_crit_edge
  %comp.i = getelementptr %struct.mport_cdev_priv, ptr %priv, i32 0, i32 14
  tail call void @complete(ptr noundef %comp.i) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %mport_release_dma.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_release_dma(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mport_cdev_remove(ptr noundef %md) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_remove.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_remove, %do.end9)) #11
          to label %if.then6 [label %do.end9], !srcloc !416

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %mport = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 4
  %1 = ptrtoint ptr %mport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mport, align 8
  %name = getelementptr inbounds %struct.rio_mport, ptr %2, i32 0, i32 17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_remove.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.164, ptr noundef %name) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %md, i32 noundef 4) #11
  %3 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %md, align 4
  tail call fastcc void @mport_cdev_terminate_dma(ptr noundef %md)
  %mport10 = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 4
  %4 = ptrtoint ptr %mport10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mport10, align 8
  %call11 = tail call i32 @rio_del_mport_pw_handler(ptr noundef %5, ptr noundef %md, ptr noundef nonnull @rio_mport_pw_handler) #11
  %cdev = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 2
  %dev = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 3
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #11
  %file_mutex.i = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %file_mutex.i, i32 noundef 0) #11
  %file_list.i = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 7
  %6 = ptrtoint ptr %file_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn1.i = load ptr, ptr %file_list.i, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, %file_list.i
  br i1 %cmp.not2.i, label %do.end9.mport_cdev_kill_fasync.exit_crit_edge, label %do.end9.for.body.i_crit_edge

do.end9.for.body.i_crit_edge:                     ; preds = %do.end9
  br label %for.body.i

do.end9.mport_cdev_kill_fasync.exit_crit_edge:    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %mport_cdev_kill_fasync.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end9.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %if.end.i.for.body.i_crit_edge ], [ %.pn1.i, %do.end9.for.body.i_crit_edge ]
  %async_queue.i = getelementptr i8, ptr %.pn3.i, i32 -4
  %7 = ptrtoint ptr %async_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async_queue.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 6) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %file_list.i
  br i1 %cmp.not.i, label %if.end.i.mport_cdev_kill_fasync.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.mport_cdev_kill_fasync.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mport_cdev_kill_fasync.exit

mport_cdev_kill_fasync.exit:                      ; preds = %if.end.i.mport_cdev_kill_fasync.exit_crit_edge, %do.end9.mport_cdev_kill_fasync.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %file_mutex.i) #11
  %buf_mutex = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #11
  %mappings = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 13
  %10 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mappings, align 4
  %cmp.not65 = icmp eq ptr %11, %mappings
  br i1 %cmp.not65, label %mport_cdev_kill_fasync.exit.for.end_crit_edge, label %mport_cdev_kill_fasync.exit.for.body_crit_edge

mport_cdev_kill_fasync.exit.for.body_crit_edge:   ; preds = %mport_cdev_kill_fasync.exit
  br label %for.body

mport_cdev_kill_fasync.exit.for.end_crit_edge:    ; preds = %mport_cdev_kill_fasync.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %kref_put.exit.for.body_crit_edge, %mport_cdev_kill_fasync.exit.for.body_crit_edge
  %map.066 = phi ptr [ %_map.0, %kref_put.exit.for.body_crit_edge ], [ %11, %mport_cdev_kill_fasync.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %map.066 to i32
  call void @__asan_load4_noabort(i32 %12)
  %_map.0 = load ptr, ptr %map.066, align 8
  %ref = getelementptr inbounds %struct.rio_mport_mapping, ptr %map.066, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i63, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !419

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i63:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void @mport_release_mapping(ptr noundef %ref) #11, !callees !427
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i63, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %cmp.not = icmp eq ptr %_map.0, %mappings
  br i1 %cmp.not, label %kref_put.exit.for.end_crit_edge, label %kref_put.exit.for.body_crit_edge

kref_put.exit.for.body_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

kref_put.exit.for.end_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %kref_put.exit.for.end_crit_edge, %mport_cdev_kill_fasync.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #11
  %14 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %mappings, align 4
  %cmp.i.not = icmp eq ptr %15, %mappings
  br i1 %cmp.i.not, label %for.end.if.end41_crit_edge, label %do.end35

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %mport10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mport10, align 8
  %name38 = getelementptr inbounds %struct.rio_mport, ptr %17, i32 0, i32 17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.164, ptr noundef %name38) #14
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %for.end.if.end41_crit_edge
  %18 = ptrtoint ptr %mport10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mport10, align 8
  %call43 = tail call i32 @rio_release_inb_dbell(ptr noundef %19, i16 noundef zeroext 0, i16 noundef zeroext 4095) #11
  tail call void @put_device(ptr noundef %dev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mport_cdev_terminate_dma(ptr noundef %md) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mport_cdev_terminate_dma.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mport_cdev_terminate_dma, %do.end10)) #11
          to label %if.then6 [label %do.end10], !srcloc !416

if.then6:                                         ; preds = %do.body1
  %init_name.i = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i47 = phi ptr [ %4, %if.end.i ], [ %2, %if.then6.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mport_cdev_terminate_dma.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.167, ptr noundef %retval.0.i47) #11
  br label %do.end10

do.end10:                                         ; preds = %dev_name.exit, %do.body1, %entry.do.end10_crit_edge
  %file_mutex = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #11
  %file_list = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 7
  %5 = ptrtoint ptr %file_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn55 = load ptr, ptr %file_list, align 4
  %cmp.not56 = icmp eq ptr %.pn55, %file_list
  br i1 %cmp.not56, label %do.end10.for.end_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end10.for.body_crit_edge
  %.pn57 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn55, %do.end10.for.body_crit_edge ]
  %dmach = getelementptr i8, ptr %.pn57, i32 144
  %6 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmach, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i48 = icmp eq ptr %11, null
  br i1 %tobool.not.i48, label %if.then16.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then16.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %11(ptr noundef nonnull %7) #11
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then16.dmaengine_terminate_all.exit_crit_edge
  %12 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmach, align 4
  tail call void @rio_release_dma(ptr noundef %13) #11
  br label %for.inc

for.inc:                                          ; preds = %dmaengine_terminate_all.exit, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn57, align 4
  %cmp.not = icmp eq ptr %.pn, %file_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end10.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %file_mutex) #11
  %dma_chan = getelementptr inbounds %struct.mport_dev, ptr %md, i32 0, i32 14
  %15 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_chan, align 4
  %tobool27.not = icmp eq ptr %16, null
  br i1 %tobool27.not, label %for.end.if.end33_crit_edge, label %if.then28

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %for.end
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i49 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i49, align 4
  %tobool.not.i50 = icmp eq ptr %20, null
  br i1 %tobool.not.i50, label %if.then28.dmaengine_terminate_all.exit53_crit_edge, label %if.then.i52

if.then28.dmaengine_terminate_all.exit53_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_all.exit53

if.then.i52:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %call.i51 = tail call i32 %20(ptr noundef nonnull %16) #11
  br label %dmaengine_terminate_all.exit53

dmaengine_terminate_all.exit53:                   ; preds = %if.then.i52, %if.then28.dmaengine_terminate_all.exit53_crit_edge
  %21 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_chan, align 4
  tail call void @rio_release_dma(ptr noundef %22) #11
  %23 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dma_chan, align 4
  br label %if.end33

if.end33:                                         ; preds = %dmaengine_terminate_all.exit53, %for.end.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !88, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !125, !127, !128, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !261, !262, !264, !266, !267, !269, !271, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !295, !296, !297, !299, !300, !301, !303, !305, !306, !307, !309, !310, !312, !313, !314, !315, !317, !319, !320, !322, !323, !325, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !343, !345, !346, !348, !349, !351, !352, !354, !355, !356, !357, !359, !360, !361, !363, !364, !366, !367, !369, !370, !372, !373, !374, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !393, !394, !396, !397, !398, !399, !401, !402, !404, !405}
!llvm.named.register.sp = !{!406}
!llvm.module.flags = !{!407, !408, !409, !410, !411, !412, !413, !414}
!llvm.ident = !{!415}

!0 = !{ptr @__UNIQUE_ID_author234, !1, !"__UNIQUE_ID_author234", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 82, i32 1}
!2 = !{ptr @__UNIQUE_ID_author235, !3, !"__UNIQUE_ID_author235", i1 false, i1 false}
!3 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 83, i32 1}
!4 = !{ptr @__UNIQUE_ID_author236, !5, !"__UNIQUE_ID_author236", i1 false, i1 false}
!5 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 84, i32 1}
!6 = !{ptr @__UNIQUE_ID_author237, !7, !"__UNIQUE_ID_author237", i1 false, i1 false}
!7 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 85, i32 1}
!8 = !{ptr @__UNIQUE_ID_description238, !9, !"__UNIQUE_ID_description238", i1 false, i1 false}
!9 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 86, i32 1}
!10 = !{ptr @__UNIQUE_ID_file239, !11, !"__UNIQUE_ID_file239", i1 false, i1 false}
!11 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 87, i32 1}
!12 = !{ptr @__UNIQUE_ID_license240, !11, !"__UNIQUE_ID_license240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_version241, !14, !"__UNIQUE_ID_version241", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 88, i32 1}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__modver_attr, !14, !"__modver_attr", i1 false, i1 false}
!19 = !{ptr @__param_dma_timeout, !20, !"__param_dma_timeout", i1 false, i1 false}
!20 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 91, i32 1}
!21 = !{ptr @__UNIQUE_ID_dma_timeouttype242, !20, !"__UNIQUE_ID_dma_timeouttype242", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_dma_timeout243, !23, !"__UNIQUE_ID_dma_timeout243", i1 false, i1 false}
!23 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 92, i32 1}
!24 = !{ptr @__param_dbg_level, !25, !"__param_dbg_level", i1 false, i1 false}
!25 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 96, i32 1}
!26 = !{ptr @__UNIQUE_ID_dbg_leveltype244, !25, !"__UNIQUE_ID_dbg_leveltype244", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_dbg_level245, !28, !"__UNIQUE_ID_dbg_level245", i1 false, i1 false}
!28 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 97, i32 1}
!29 = !{ptr @__initcall__kmod_rio_mport_cdev__291_2641_mport_init6, !30, !"__initcall__kmod_rio_mport_cdev__291_2641_mport_init6", i1 false, i1 false}
!30 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2641, i32 1}
!31 = !{ptr @__exitcall_mport_exit, !32, !"__exitcall_mport_exit", i1 false, i1 false}
!32 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2642, i32 1}
!33 = !{ptr @dev_class, !34, !"dev_class", i1 false, i1 false}
!34 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 253, i32 22}
!35 = !{ptr @dev_number, !36, !"dev_number", i1 false, i1 false}
!36 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 254, i32 14}
!37 = !{ptr @__param_str_dma_timeout, !20, !"__param_str_dma_timeout", i1 false, i1 false}
!38 = !{ptr @dma_timeout, !39, !"dma_timeout", i1 false, i1 false}
!39 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 90, i32 12}
!40 = !{ptr @__param_str_dbg_level, !25, !"__param_str_dbg_level", i1 false, i1 false}
!41 = !{ptr @dbg_level, !42, !"dbg_level", i1 false, i1 false}
!42 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 95, i32 12}
!43 = !{ptr @rio_mport_interface, !44, !"rio_mport_interface", i1 false, i1 false}
!44 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2585, i32 31}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2368, i32 3}
!47 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mport_cdev_add._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @mport_cdev_add._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mport_cdev_add.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2373, i32 2}
!53 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mport_cdev_add.__key.7, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2374, i32 2}
!56 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2382, i32 25}
!59 = !{ptr @mport_cdev_add.__key.10, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2389, i32 2}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mport_cdev_add.__key.12, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2391, i32 2}
!64 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2410, i32 3}
!67 = !{ptr @mport_cdev_add._entry.14, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mport_cdev_add._entry_ptr.16, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2426, i32 3}
!71 = !{ptr @mport_cdev_add._entry.17, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mport_cdev_add._entry_ptr.19, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2433, i32 2}
!75 = !{ptr @mport_cdev_add._entry.20, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mport_cdev_add._entry_ptr.22, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2351, i32 2}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mport_device_release.__UNIQUE_ID_ddebug286, !78, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!81 = !{ptr @mport_fops, !82, !"mport_fops", i1 false, i1 false}
!82 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2331, i32 37}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!85 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 507, i32 2}
!92 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @maint_hdid_set.__UNIQUE_ID_ddebug250, !91, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 527, i32 2}
!96 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @maint_comptag_set.__UNIQUE_ID_ddebug251, !95, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1365, i32 2}
!100 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @maint_port_idx_get.__UNIQUE_ID_ddebug264, !99, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1448, i32 3}
!104 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rio_mport_add_db_filter._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @rio_mport_add_db_filter._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1425, i32 3}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rio_mport_doorbell_handler._entry, !108, !"_entry", i1 false, i1 false}
!113 = !{ptr @rio_mport_doorbell_handler._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1390, i32 3}
!116 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rio_mport_add_event._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @rio_mport_add_event._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1580, i32 4}
!121 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @rio_mport_add_pw_filter._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @rio_mport_add_pw_filter._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1541, i32 3}
!127 = !{ptr @rio_mport_pw_handler._rs, !126, !"_rs", i1 false, i1 false}
!128 = !{ptr @__func__.rio_mport_pw_handler, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @rio_mport_pw_handler._entry, !126, !"_entry", i1 false, i1 false}
!131 = !{ptr @rio_mport_pw_handler._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 436, i32 2}
!134 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @rio_mport_obw_map.__UNIQUE_ID_ddebug247, !133, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 442, i32 3}
!138 = !{ptr @rio_mport_obw_map._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @rio_mport_obw_map._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 367, i32 2}
!142 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @rio_mport_create_outbound_mapping.__UNIQUE_ID_ddebug246, !141, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1296, i32 2}
!146 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @rio_mport_map_inbound.__UNIQUE_ID_ddebug262, !145, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2149, i32 2}
!150 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @mport_release_mapping.__UNIQUE_ID_ddebug281, !149, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 472, i32 2}
!154 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @rio_mport_obw_free.__UNIQUE_ID_ddebug248, !153, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!156 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 478, i32 5}
!158 = !{ptr @rio_mport_obw_free.__UNIQUE_ID_ddebug249, !157, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1332, i32 2}
!161 = !{ptr @rio_mport_inbound_free.__UNIQUE_ID_ddebug263, !160, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1152, i32 2}
!164 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @rio_mport_free_dma.__UNIQUE_ID_ddebug260, !163, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1166, i32 3}
!168 = !{ptr @rio_mport_free_dma.__UNIQUE_ID_ddebug261, !167, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1047, i32 3}
!171 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rio_mport_wait_for_async_dma._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @rio_mport_wait_for_async_dma._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1056, i32 3}
!178 = !{ptr @rio_mport_wait_for_async_dma._entry.67, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @rio_mport_wait_for_async_dma._entry_ptr.69, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1065, i32 3}
!182 = !{ptr @rio_mport_wait_for_async_dma._entry.70, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @rio_mport_wait_for_async_dma._entry_ptr.72, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.73, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 566, i32 2}
!186 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @mport_release_dma.__UNIQUE_ID_ddebug253, !185, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!188 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 871, i32 5}
!190 = !{ptr @.str.76, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @rio_dma_transfer._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @rio_dma_transfer._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.78, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 875, i32 5}
!195 = !{ptr @rio_dma_transfer._entry.77, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @rio_dma_transfer._entry_ptr.79, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 890, i32 4}
!199 = !{ptr @rio_dma_transfer._entry.80, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @rio_dma_transfer._entry_ptr.82, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.84, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 925, i32 4}
!203 = !{ptr @rio_dma_transfer._entry.83, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @rio_dma_transfer._entry_ptr.85, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 937, i32 3}
!207 = !{ptr @rio_dma_transfer._entry.86, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @rio_dma_transfer._entry_ptr.88, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 948, i32 3}
!211 = !{ptr @rio_dma_transfer.__UNIQUE_ID_ddebug259, !210, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 662, i32 5}
!214 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @get_dma_channel._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @get_dma_channel._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 670, i32 4}
!219 = !{ptr @get_dma_channel.__UNIQUE_ID_ddebug254, !218, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!220 = !{ptr @init_completion.__key, !221, !"__key", i1 false, i1 false}
!221 = !{!"../include/linux/completion.h", i32 87, i32 2}
!222 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 711, i32 2}
!225 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @do_dma_request.__UNIQUE_ID_ddebug255, !224, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 721, i32 3}
!229 = !{ptr @do_dma_request.__UNIQUE_ID_ddebug256, !228, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 728, i32 3}
!232 = !{ptr @do_dma_request.__UNIQUE_ID_ddebug257, !231, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!233 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 743, i32 2}
!235 = !{ptr @do_dma_request.__UNIQUE_ID_ddebug258, !234, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 747, i32 3}
!238 = !{ptr @do_dma_request._entry, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @do_dma_request._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 768, i32 3}
!242 = !{ptr @do_dma_request._entry.100, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @do_dma_request._entry_ptr.102, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 776, i32 3}
!246 = !{ptr @do_dma_request._entry.103, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @do_dma_request._entry_ptr.105, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 784, i32 3}
!250 = !{ptr @do_dma_request._entry.106, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @do_dma_request._entry_ptr.108, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.109, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1696, i32 2}
!254 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug266, !253, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!256 = !{ptr @.str.111, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1701, i32 3}
!258 = !{ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug267, !257, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!259 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1731, i32 4}
!261 = !{ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug268, !260, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!262 = !{ptr @.str.113, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1737, i32 27}
!264 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1742, i32 4}
!266 = !{ptr @rio_mport_add_riodev.__UNIQUE_ID_ddebug269, !265, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!267 = !{ptr @.str.115, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1790, i32 28}
!269 = !{ptr @.str.116, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1792, i32 28}
!271 = !{ptr @.str.117, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1795, i32 28}
!273 = !{ptr @.str.118, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1663, i32 2}
!275 = !{ptr @.str.119, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @rio_release_net.__UNIQUE_ID_ddebug265, !274, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!277 = !{ptr @.str.120, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1653, i32 2}
!279 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @rio_release_dev._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @rio_release_dev._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.122, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1848, i32 3}
!284 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @rio_mport_del_riodev.__UNIQUE_ID_ddebug270, !283, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!286 = !{ptr @.str.124, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2203, i32 2}
!288 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mport_cdev_mmap.__UNIQUE_ID_ddebug284, !287, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!290 = !{ptr @.str.126, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2228, i32 2}
!292 = !{ptr @mport_cdev_mmap.__UNIQUE_ID_ddebug285, !291, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!293 = !{ptr @.str.127, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2237, i32 3}
!295 = !{ptr @mport_cdev_mmap._entry, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @mport_cdev_mmap._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2246, i32 3}
!299 = !{ptr @mport_cdev_mmap._entry.128, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @mport_cdev_mmap._entry_ptr.130, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @vm_ops, !302, !"vm_ops", i1 false, i1 false}
!302 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2188, i32 42}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2182, i32 2}
!305 = !{ptr @.str.132, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @mport_mm_close.__UNIQUE_ID_ddebug283, !304, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!307 = !{ptr @.str.133, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2174, i32 2}
!309 = !{ptr @mport_mm_open.__UNIQUE_ID_ddebug282, !308, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!310 = !{ptr @.str.134, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1883, i32 3}
!312 = !{ptr @.str.135, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @mport_cdev_open._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @mport_cdev_open._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @mport_cdev_open.__UNIQUE_ID_ddebug271, !316, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!316 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1889, i32 2}
!317 = !{ptr @mport_cdev_open.__key, !318, !"__key", i1 false, i1 false}
!318 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1910, i32 2}
!319 = !{ptr @.str.136, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @mport_cdev_open.__key.137, !321, !"__key", i1 false, i1 false}
!321 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1911, i32 2}
!322 = !{ptr @.str.138, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.140, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1916, i32 3}
!325 = !{ptr @mport_cdev_open._entry.139, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @mport_cdev_open._entry_ptr.141, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @mport_cdev_open.__key.142, !328, !"__key", i1 false, i1 false}
!328 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1923, i32 2}
!329 = !{ptr @.str.143, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @mport_cdev_open.__key.144, !331, !"__key", i1 false, i1 false}
!331 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1924, i32 2}
!332 = !{ptr @.str.145, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2016, i32 2}
!335 = !{ptr @mport_cdev_release.__UNIQUE_ID_ddebug279, !334, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!336 = !{ptr @.str.147, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2043, i32 4}
!338 = !{ptr @mport_cdev_release.__UNIQUE_ID_ddebug280, !337, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!339 = !{ptr @.str.148, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1952, i32 2}
!341 = !{ptr @.str.149, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug272, !340, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!343 = !{ptr @.str.150, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1956, i32 3}
!345 = !{ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug273, !344, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!346 = !{ptr @.str.151, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1964, i32 3}
!348 = !{ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug274, !347, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!349 = !{ptr @.str.152, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1971, i32 3}
!351 = !{ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug275, !350, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!352 = !{ptr @.str.153, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1973, i32 4}
!354 = !{ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug276, !353, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!355 = !{ptr @.str.154, !353, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.155, !353, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.156, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1985, i32 3}
!359 = !{ptr @mport_cdev_release_dma._entry, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @mport_cdev_release_dma._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.157, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1990, i32 3}
!363 = !{ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug277, !362, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!364 = !{ptr @.str.158, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 1994, i32 3}
!366 = !{ptr @mport_cdev_release_dma.__UNIQUE_ID_ddebug278, !365, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!367 = !{ptr @.str.159, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 556, i32 2}
!369 = !{ptr @mport_release_def_dma.__UNIQUE_ID_ddebug252, !368, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!370 = !{ptr @.str.160, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 247, i32 8}
!372 = !{ptr @.str.161, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @mport_devs_lock, !371, !"mport_devs_lock", i1 false, i1 false}
!374 = !{ptr @mport_devs, !375, !"mport_devs", i1 false, i1 false}
!375 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 246, i32 8}
!376 = !{ptr @.str.162, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2567, i32 2}
!378 = !{ptr @.str.163, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @mport_remove_mport.__UNIQUE_ID_ddebug289, !377, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!380 = !{ptr @.str.164, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2499, i32 2}
!382 = !{ptr @.str.165, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @mport_cdev_remove.__UNIQUE_ID_ddebug288, !381, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!384 = !{ptr @.str.166, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2521, i32 3}
!386 = !{ptr @mport_cdev_remove._entry, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @mport_cdev_remove._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.167, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2452, i32 2}
!390 = !{ptr @mport_cdev_terminate_dma.__UNIQUE_ID_ddebug287, !389, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!391 = !{ptr @mport_init.__key, !392, !"__key", i1 false, i1 false}
!392 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2603, i32 14}
!393 = !{ptr @.str.168, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.169, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2605, i32 3}
!396 = !{ptr @.str.170, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @mport_init._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @mport_init._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.171, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2613, i32 2}
!401 = !{ptr @mport_init.__UNIQUE_ID_ddebug290, !400, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!402 = !{ptr @.str.173, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/rapidio/devices/rio_mport_cdev.c", i32 2618, i32 3}
!404 = !{ptr @mport_init._entry.172, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @mport_init._entry_ptr.174, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{!"sp"}
!407 = !{i32 1, !"wchar_size", i32 2}
!408 = !{i32 1, !"min_enum_size", i32 4}
!409 = !{i32 8, !"branch-target-enforcement", i32 0}
!410 = !{i32 8, !"sign-return-address", i32 0}
!411 = !{i32 8, !"sign-return-address-all", i32 0}
!412 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!413 = !{i32 7, !"uwtable", i32 1}
!414 = !{i32 7, !"frame-pointer", i32 2}
!415 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!416 = !{i64 2149017907, i64 2149017912, i64 2149017925, i64 2149017969, i64 2149018003, i64 2149018024}
!417 = !{!"auto-init"}
!418 = !{i64 2152375332, i64 2152375357}
!419 = !{!"branch_weights", i32 2000, i32 1}
!420 = !{i64 4870887}
!421 = !{i64 4871084}
!422 = !{i64 2152356317}
!423 = !{i64 2152376013, i64 2152376038}
!424 = !{i64 2148494085}
!425 = !{i64 2148408525, i64 2148408557, i64 2148408586, i64 2148408620, i64 2148408651, i64 2148408674}
!426 = !{i64 2149370199}
!427 = distinct !{ptr @dma_req_free, null, null, ptr @mport_release_mapping}
!428 = !{i64 2148406060, i64 2148406092, i64 2148406121, i64 2148406155, i64 2148406186, i64 2148406209}
!429 = !{!"branch_weights", i32 1, i32 2000}
!430 = !{i64 2154011730, i64 2154012222, i64 2154011767, i64 2154011823, i64 2154011857, i64 2154011881, i64 2154011922, i64 2154011943, i64 2154011971, i64 2154012005}
!431 = !{i64 2154001350, i64 2154001842, i64 2154001387, i64 2154001443, i64 2154001477, i64 2154001501, i64 2154001542, i64 2154001563, i64 2154001591, i64 2154001625}
!432 = !{i64 2154002960, i64 2154003452, i64 2154002997, i64 2154003053, i64 2154003087, i64 2154003111, i64 2154003152, i64 2154003173, i64 2154003201, i64 2154003235}
