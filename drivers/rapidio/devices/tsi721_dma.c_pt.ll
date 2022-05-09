; ModuleID = '/llk/IR_all_yes/drivers/rapidio/devices/tsi721_dma.c_pt.bc'
source_filename = "../drivers/rapidio/devices/tsi721_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.tsi721_bdma_chan = type { i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.dma_chan, ptr, %struct.spinlock, ptr, %struct.list_head, %struct.list_head, %struct.tasklet_struct, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.tsi721_device = type { ptr, %struct.rio_mport, i32, ptr, [34 x %struct.msix_irq], ptr, ptr, i32, %struct.work_struct, i32, %struct.work_struct, %struct.kfifo, %struct.spinlock, i32, %struct.tsi721_bdma_maint, [8 x %struct.tsi721_bdma_chan], [8 x i32], [8 x %struct.tsi721_imsg_ring], [4 x i32], [4 x %struct.tsi721_omsg_ring], [8 x %struct.tsi721_ib_win], i32, [2 x %struct.tsi721_obw_bar], [8 x %struct.tsi721_ob_win], i32 }
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_msg = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msix_irq = type { i16, [64 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kfifo = type { %union.anon.77, [0 x i8] }
%union.anon.77 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.tsi721_bdma_maint = type { i32, i32, ptr, i32, ptr, i32, i32 }
%struct.tsi721_imsg_ring = type { i32, ptr, i32, ptr, i32, ptr, i32, [512 x ptr], i32, ptr, i32, i32, %struct.spinlock }
%struct.tsi721_omsg_ring = type { i32, ptr, i32, [512 x ptr], [512 x i32], ptr, i32, i32, i32, i32, ptr, i32, %struct.spinlock }
%struct.tsi721_ib_win = type { i64, i32, i32, i8, i8, %struct.list_head }
%struct.tsi721_obw_bar = type { i64, i64, i64 }
%struct.tsi721_ob_win = type { i64, i32, i16, i64, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.tsi721_tx_desc = type { %struct.dma_async_tx_descriptor, i16, i64, i8, i32, %struct.list_head, ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.rio_dma_ext = type { i16, i64, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tsi721_dma_desc = type { i32, i32, %union.anon.79, %union.anon.80, %union.anon.81 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i32 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32, i32, i32 }
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

@__param_str_dma_desc_per_channel = internal constant [34 x i8] c"tsi721_mport.dma_desc_per_channel\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dma_desc_per_channel = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_dma_desc_per_channel = internal constant %struct.kernel_param { ptr @__param_str_dma_desc_per_channel, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @dma_desc_per_channel } }, section "__param", align 4
@__UNIQUE_ID_dma_desc_per_channeltype238 = internal constant [48 x i8] c"tsi721_mport.parmtype=dma_desc_per_channel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_desc_per_channel239 = internal constant [92 x i8] c"tsi721_mport.parm=dma_desc_per_channel:Number of DMA descriptors per channel (default: 128)\00", section ".modinfo", align 1
@__param_str_dma_txqueue_sz = internal constant [28 x i8] c"tsi721_mport.dma_txqueue_sz\00", align 1
@dma_txqueue_sz = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_dma_txqueue_sz = internal constant %struct.kernel_param { ptr @__param_str_dma_txqueue_sz, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @dma_txqueue_sz } }, section "__param", align 4
@__UNIQUE_ID_dma_txqueue_sztype240 = internal constant [42 x i8] c"tsi721_mport.parmtype=dma_txqueue_sz:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_txqueue_sz241 = internal constant [75 x i8] c"tsi721_mport.parm=dma_txqueue_sz:DMA Transactions Queue Size (default: 16)\00", section ".modinfo", align 1
@__param_str_dma_sel = internal constant [21 x i8] c"tsi721_mport.dma_sel\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@dma_sel = internal global { i8, [31 x i8] } { i8 127, [31 x i8] zeroinitializer }, align 32
@__param_dma_sel = internal constant %struct.kernel_param { ptr @__param_str_dma_sel, ptr null, ptr @param_ops_byte, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @dma_sel } }, section "__param", align 4
@__UNIQUE_ID_dma_seltype242 = internal constant [35 x i8] c"tsi721_mport.parmtype=dma_sel:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_sel243 = internal constant [75 x i8] c"tsi721_mport.parm=dma_sel:DMA Channel Selection Mask (default: 0x7f = all)\00", section ".modinfo", align 1
@tsi721_register_dma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bdma_chan->lock\00", [47 x i8] zeroinitializer }, align 32
@tsi721_register_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1013, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ERROR Failed to register DMA device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi721_register_dma\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/rapidio/devices/tsi721_dma.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsi721_register_dma._entry_ptr = internal global ptr @tsi721_register_dma._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tsi_dbg_level = external dso_local local_unnamed_addr global i32, align 4
@tsi721_dma_tasklet.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsi721_mport\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsi721_dma_tasklet\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: DMAC%d_INT = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@tsi721_dma_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: ERROR DMAC%d_STS = 0x%x did=%d raddr=0x%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@tsi721_dma_tasklet._entry_ptr = internal global ptr @tsi721_dma_tasklet._entry, section ".printk_index", align 4
@tsi721_dma_tasklet._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: ERROR Failed to re-initiate DMAC%d\0A\00", [56 x i8] zeroinitializer }, align 32
@tsi721_dma_tasklet._entry_ptr.12 = internal global ptr @tsi721_dma_tasklet._entry.10, section ".printk_index", align 4
@tsi721_dma_tasklet._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: ERROR DMAC%d descriptor status FIFO is full\0A\00", [47 x i8] zeroinitializer }, align 32
@tsi721_dma_tasklet._entry_ptr.15 = internal global ptr @tsi721_dma_tasklet._entry.13, section ".printk_index", align 4
@tsi721_advance_work.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 -122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi721_advance_work\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: DMAC%d\0A\00", [20 x i8] zeroinitializer }, align 32
@tsi721_advance_work.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: DMAC%d ERR: tsi721_submit_sg failed with err=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@tsi721_advance_work.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.3, ptr @.str.19, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: DMAC%d Exit\0A\00", [47 x i8] zeroinitializer }, align 32
@tsi721_submit_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: ERROR DMAC%d ERR: Attempt to use non-idle channel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsi721_submit_sg\00", [47 x i8] zeroinitializer }, align 32
@tsi721_submit_sg._entry_ptr = internal global ptr @tsi721_submit_sg._entry, section ".printk_index", align 4
@tsi721_submit_sg.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: DMAC%d BD ring status: rdi=%d wri=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@tsi721_submit_sg.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: DMAC%d sg%d/%d addr: 0x%llx len: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tsi721_submit_sg._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERROR DMAC%d SG entry %d is too large\0A\00", [53 x i8] zeroinitializer }, align 32
@tsi721_submit_sg._entry_ptr.26 = internal global ptr @tsi721_submit_sg._entry.24, section ".printk_index", align 4
@tsi721_submit_sg.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.27, i8 0, i8 119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: DMAC%d prev desc final len: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tsi721_submit_sg.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.28, i8 0, i8 121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: DMAC%d HW descriptor ring is full @ %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tsi721_submit_sg._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: ERROR Failed to build desc: err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@tsi721_submit_sg._entry_ptr.31 = internal global ptr @tsi721_submit_sg._entry.29, section ".printk_index", align 4
@tsi721_submit_sg.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.32, i8 0, i8 125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: DMAC%d bd_ptr = %p did=%d raddr=0x%llx\0A\00", [52 x i8] zeroinitializer }, align 32
@tsi721_submit_sg.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.33, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: DMAC%d last desc final len: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tsi721_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: ERROR DMAC%d Attempt to start non-idle channel\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsi721_start_dma\00", [47 x i8] zeroinitializer }, align 32
@tsi721_start_dma._entry_ptr = internal global ptr @tsi721_start_dma._entry, section ".printk_index", align 4
@tsi721_start_dma._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: ERROR DMAC%d Attempt to start DMA with no BDs ready %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tsi721_start_dma._entry_ptr.38 = internal global ptr @tsi721_start_dma._entry.36, section ".printk_index", align 4
@tsi721_start_dma.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.35, ptr @.str.3, ptr @.str.39, i8 0, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DMAC%d (wrc=%d) %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tsi721_alloc_chan_resources.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.40, ptr @.str.3, ptr @.str.17, i8 0, i8 -75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tsi721_alloc_chan_resources\00", [36 x i8] zeroinitializer }, align 32
@tsi721_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.40, ptr @.str.3, i32 735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ERROR Unable to initialize DMAC%d\0A\00", [57 x i8] zeroinitializer }, align 32
@tsi721_alloc_chan_resources._entry_ptr = internal global ptr @tsi721_alloc_chan_resources._entry, section ".printk_index", align 4
@tsi721_bdma_ch_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.42, ptr @.str.3, ptr @.str.17, i8 0, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi721_bdma_ch_init\00", [44 x i8] zeroinitializer }, align 32
@tsi721_bdma_ch_init.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: DMAC%d descriptors @ %p (phys = %pad)\0A\00", [53 x i8] zeroinitializer }, align 32
@tsi721_bdma_ch_init.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.42, ptr @.str.3, ptr @.str.44, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: DMAC%d desc status FIFO @ %p (phys = %pad) size=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@tsi721_bdma_ch_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.42, ptr @.str.3, ptr @.str.45, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to get MSI-X for DMAC%d-DONE\0A\00", [55 x i8] zeroinitializer }, align 32
@tsi721_bdma_ch_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.42, ptr @.str.3, ptr @.str.46, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Unable to get MSI-X for DMAC%d-INT\0A\00", [56 x i8] zeroinitializer }, align 32
@tsi721_tx_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: ERROR DMAC%d wrong state of descriptor %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsi721_tx_submit\00", [47 x i8] zeroinitializer }, align 32
@tsi721_tx_submit._entry_ptr = internal global ptr @tsi721_tx_submit._entry, section ".printk_index", align 4
@tsi721_free_chan_resources.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.49, ptr @.str.3, ptr @.str.17, i8 0, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tsi721_free_chan_resources\00", [37 x i8] zeroinitializer }, align 32
@tsi721_issue_pending.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.50, ptr @.str.3, ptr @.str.17, i8 0, i8 -53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721_issue_pending\00", [43 x i8] zeroinitializer }, align 32
@tsi721_prep_rio_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 837, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ERROR DMAC%d No SG list\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsi721_prep_rio_sg\00", [45 x i8] zeroinitializer }, align 32
@tsi721_prep_rio_sg._entry_ptr = internal global ptr @tsi721_prep_rio_sg._entry, section ".printk_index", align 4
@tsi721_prep_rio_sg.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: DMAC%d %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@tsi721_prep_rio_sg._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: ERROR DMAC%d Unsupported DMA direction option\0A\00", [45 x i8] zeroinitializer }, align 32
@tsi721_prep_rio_sg._entry_ptr.58 = internal global ptr @tsi721_prep_rio_sg._entry.56, section ".printk_index", align 4
@tsi721_prep_rio_sg.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.52, ptr @.str.3, ptr @.str.59, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: DMAC%d free TXD is not available\0A\00", [58 x i8] zeroinitializer }, align 32
@tsi721_terminate_all.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.60, ptr @.str.3, ptr @.str.17, i8 0, i8 -32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi721_terminate_all\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"dma_desc_per_channel\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 32, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"dma_txqueue_sz\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 37, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant [8 x i8] c"dma_sel\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 42, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 985, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1013, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 575, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 586, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 609, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 650, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 537, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 559, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 565, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 426, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 450, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 455, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 460, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 478, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 485, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 496, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 500, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 516, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 306, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 313, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 319, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 727, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 734, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 75, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 91, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 115, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 156, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 168, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 699, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 783, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 814, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 836, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 841, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 860, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 885, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [40 x i8] c"../drivers/rapidio/devices/tsi721_dma.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 899, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_dma_desc_per_channel239, ptr @__UNIQUE_ID_dma_desc_per_channeltype238, ptr @__UNIQUE_ID_dma_sel243, ptr @__UNIQUE_ID_dma_seltype242, ptr @__UNIQUE_ID_dma_txqueue_sz241, ptr @__UNIQUE_ID_dma_txqueue_sztype240, ptr @__param_dma_desc_per_channel, ptr @__param_dma_sel, ptr @__param_dma_txqueue_sz, ptr @tsi721_alloc_chan_resources._entry, ptr @tsi721_alloc_chan_resources._entry_ptr, ptr @tsi721_dma_tasklet._entry, ptr @tsi721_dma_tasklet._entry.10, ptr @tsi721_dma_tasklet._entry.13, ptr @tsi721_dma_tasklet._entry_ptr, ptr @tsi721_dma_tasklet._entry_ptr.12, ptr @tsi721_dma_tasklet._entry_ptr.15, ptr @tsi721_prep_rio_sg._entry, ptr @tsi721_prep_rio_sg._entry.56, ptr @tsi721_prep_rio_sg._entry_ptr, ptr @tsi721_prep_rio_sg._entry_ptr.58, ptr @tsi721_register_dma._entry, ptr @tsi721_register_dma._entry_ptr, ptr @tsi721_start_dma._entry, ptr @tsi721_start_dma._entry.36, ptr @tsi721_start_dma._entry_ptr, ptr @tsi721_start_dma._entry_ptr.38, ptr @tsi721_submit_sg._entry, ptr @tsi721_submit_sg._entry.24, ptr @tsi721_submit_sg._entry.29, ptr @tsi721_submit_sg._entry_ptr, ptr @tsi721_submit_sg._entry_ptr.26, ptr @tsi721_submit_sg._entry_ptr.31, ptr @tsi721_tx_submit._entry, ptr @tsi721_tx_submit._entry_ptr, ptr @dma_desc_per_channel, ptr @dma_txqueue_sz, ptr @dma_sel, ptr @tsi721_register_dma.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_desc_per_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_txqueue_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_sel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_register_dma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_register_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_dma_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_dma_tasklet._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_dma_tasklet._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_submit_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_submit_sg._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_submit_sg._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_start_dma._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_tx_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_prep_rio_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi721_prep_rio_sg._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsi721_bdma_handler(ptr noundef %bdma_chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !169
  %active = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 18
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 17, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 17
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsi721_dma_stop_all(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.06)
  %cmp1.not = icmp eq i32 %i.06, 7
  br i1 %cmp1.not, label %for.body.for.end_crit_edge, label %land.lhs.true

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.body
  %0 = load i8, ptr @dma_sel, align 1
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 1, %i.06
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %active.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.06, i32 18
  %1 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %active.i, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %if.end.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  %lock.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.06, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  %regs.i.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.06, i32 1
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %if.end.i.if.end4.i_crit_edge, label %if.then1.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !169
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i1214.i = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1214.i) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i1315.i = icmp eq i32 %12, 0
  br i1 %cmp.i1315.i, label %if.then1.i.if.end4.i_crit_edge, label %if.then1.i.land.rhs.i_crit_edge

if.then1.i.land.rhs.i_crit_edge:                  ; preds = %if.then1.i
  br label %land.rhs.i

if.then1.i.if.end4.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then1.i.land.rhs.i_crit_edge
  %timeout.016.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 100000, %if.then1.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.016.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i.if.end4.i_crit_edge, label %while.body.i

land.rhs.i.if.end4.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %17 = and i32 %16, 8192
  %cmp.i13.i = icmp eq i32 %17, 0
  br i1 %cmp.i13.i, label %while.body.i.if.end4.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.body.i.if.end4.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %while.body.i.if.end4.i_crit_edge, %land.rhs.i.if.end4.i_crit_edge, %if.then1.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end4.i, %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tsi721_register_dma(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20
  %channels = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %channels, ptr %prev.i, align 4
  %regs = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 3
  %arrayidx90 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 0
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.lor.lhs.false_crit_edge, %entry
  %arrayidx93 = phi ptr [ %arrayidx90, %entry ], [ %arrayidx, %cleanup.lor.lhs.false_crit_edge ]
  %i.08292 = phi i32 [ 0, %entry ], [ %inc12, %cleanup.lor.lhs.false_crit_edge ]
  %nr_channels.08591 = phi i32 [ 0, %entry ], [ %nr_channels.1, %cleanup.lor.lhs.false_crit_edge ]
  %2 = load i8, ptr @dma_sel, align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 1, %i.08292
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %mul = shl i32 %i.08292, 12
  %add = add nuw nsw i32 %mul, 331776
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %regs5 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 1
  %5 = ptrtoint ptr %regs5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %regs5, align 4
  %dchan = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 11
  %6 = ptrtoint ptr %dchan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dma, ptr %dchan, align 4
  %cookie = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 11, i32 2
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %cookie, align 4
  %chan_id = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 11, i32 4
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.08292, ptr %chan_id, align 4
  %9 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.08292, ptr %arrayidx93, align 4
  %active = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 18
  %10 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %active, align 4
  %lock = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @tsi721_register_dma.__key, i16 noundef signext 3) #7
  %active_tx = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 14
  %11 = ptrtoint ptr %active_tx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %active_tx, align 4
  %queue = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 15
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i79 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 15, i32 1
  %13 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %queue, ptr %prev.i79, align 4
  %free_list = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 16
  %14 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i80 = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 16, i32 1
  %15 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %free_list, ptr %prev.i80, align 4
  %tasklet = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 17
  %16 = ptrtoint ptr %arrayidx93 to i32
  tail call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @tsi721_dma_tasklet, i32 noundef %16) #7
  %device_node = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 11, i32 8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %18, ptr noundef %channels) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %device_node, ptr %prev.i, align 4
  %20 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %i.08292, i32 11, i32 8, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %device_node, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %inc = add i32 %nr_channels.08591, 1
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %lor.lhs.false.cleanup_crit_edge
  %nr_channels.1 = phi i32 [ %inc, %list_add_tail.exit ], [ %nr_channels.08591, %lor.lhs.false.cleanup_crit_edge ]
  %inc12 = add nuw nsw i32 %i.08292, 1
  %arrayidx = getelementptr %struct.tsi721_device, ptr %priv, i32 0, i32 15, i32 %inc12
  %cmp2 = icmp eq i32 %inc12, 7
  br i1 %cmp2, label %for.end, label %cleanup.lor.lhs.false_crit_edge

cleanup.lor.lhs.false_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %cleanup
  %chancnt = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 1
  %23 = ptrtoint ptr %chancnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %nr_channels.1, ptr %chancnt, align 4
  %cap_mask = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 6
  %24 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #7
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %dev20 = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 15
  %27 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dev20, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 27
  %28 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tsi721_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 29
  %29 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tsi721_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 49
  %30 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @tsi721_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 50
  %31 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tsi721_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 39
  %32 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @tsi721_prep_rio_sg, ptr %device_prep_slave_sg, align 4
  %device_terminate_all = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 47
  %33 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tsi721_terminate_all, ptr %device_terminate_all, align 4
  %call28 = tail call i32 @dma_async_device_register(ptr noundef %dma) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %for.end.if.end35_crit_edge, label %do.end32

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %for.end.if.end35_crit_edge
  ret i32 %call28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_dma_tasklet(i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %regs = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !171
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %5 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_dma_tasklet.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_dma_tasklet, %do.end10)) #7
          to label %if.then7 [label %do.end10], !srcloc !173

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 11, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_dma_tasklet.__UNIQUE_ID_ddebug259, ptr noundef %device, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %9, i32 noundef %4) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #7, !srcloc !169
  %and13 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end10.if.end89_crit_edge, label %if.then15

do.end10.if.end89_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then15:                                        ; preds = %do.end10
  %active_tx = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 14
  %12 = ptrtoint ptr %active_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_tx, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !171
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %dev23 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 11, i32 5
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 4
  %device24 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %destid = getelementptr inbounds %struct.tsi721_tx_desc, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %destid, align 4
  %conv = zext i16 %23 to i32
  %rio_addr = getelementptr inbounds %struct.tsi721_tx_desc, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %rio_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rio_addr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device24, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %17, i32 noundef %conv, i64 noundef %25) #10
  %and26 = and i32 %17, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp = icmp eq i32 %and26, 0
  br i1 %cmp, label %if.then15.err_out_crit_edge, label %if.end29

if.then15.err_out_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end29:                                         ; preds = %if.then15
  tail call fastcc void @tsi721_clr_stat(ptr noundef %0)
  %lock = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr31 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 16777216) #7, !srcloc !169
  br label %do.body32

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %if.end29
  %i.0 = phi i32 [ 10000, %if.end29 ], [ %dec, %do.body32.do.body32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #7
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr34 = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %32 = and i32 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool38.not = icmp eq i32 %32, 0
  %dec = add nsw i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool39.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool38.not, i1 true, i1 %tobool39.not
  br i1 %or.cond, label %do.end40, label %do.body32.do.body32_crit_edge

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

do.end40:                                         ; preds = %do.body32
  br i1 %tobool38.not, label %if.end52, label %do.end46

do.end46:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev23, align 4
  %device49 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device49, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, i32 noundef %36) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %err_out

if.end52:                                         ; preds = %do.end40
  %bd_phys = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 4
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr56 = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #7, !srcloc !169
  %39 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bd_phys, align 4
  %41 = and i32 %40, -32
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr62 = getelementptr i8, ptr %43, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %44) #7, !srcloc !169
  %sts_phys = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 6
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr67 = getelementptr i8, ptr %46, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #7, !srcloc !169
  %47 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sts_phys, align 4
  %49 = and i32 %48, -64
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr73 = getelementptr i8, ptr %51, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %52) #7, !srcloc !169
  %sts_size = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 7
  %53 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sts_size, align 4
  %55 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 false) #7, !range !174
  %sub = sub nsw i32 27, %55
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr76 = getelementptr i8, ptr %57, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %58) #7, !srcloc !169
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr78 = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 520093696) #7, !srcloc !169
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr80 = getelementptr i8, ptr %62, i32 12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %wr_count_next = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 10
  %64 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %wr_count_next, align 4
  %wr_count = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 9
  %65 = ptrtoint ptr %wr_count to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %wr_count, align 4
  %sts_rdptr = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 8
  %66 = ptrtoint ptr %sts_rdptr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %sts_rdptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #7
  %68 = ptrtoint ptr %active_tx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %active_tx, align 4
  %status = getelementptr inbounds %struct.tsi721_tx_desc, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %status, align 8
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i = icmp slt i32 %72, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !175

do.body2.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/rapidio/devices/../../dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !176
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end52
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %69, i32 0, i32 3
  %73 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %completed_cookie.i, align 4
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %69, align 4
  %desc_node = getelementptr inbounds %struct.tsi721_tx_desc, ptr %69, i32 0, i32 5
  %free_list = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 16
  %77 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %free_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %free_list, ptr noundef %78) #7
  br i1 %call.i.i, label %if.end.i.i, label %dma_cookie_complete.exit.list_add.exit_crit_edge

dma_cookie_complete.exit.list_add.exit_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %desc_node, ptr %prev1.i.i, align 4
  %80 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %69, i32 0, i32 5, i32 1
  %81 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %free_list, ptr %prev3.i.i, align 4
  %82 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %desc_node, ptr %free_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %dma_cookie_complete.exit.list_add.exit_crit_edge
  %83 = ptrtoint ptr %active_tx to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %active_tx, align 4
  %active = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 18
  %84 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %active, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool84.not = icmp eq i8 %85, 0
  br i1 %tobool84.not, label %list_add.exit.cleanup_crit_edge, label %if.then85

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then85:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tsi721_advance_work(ptr noundef %0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %list_add.exit.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %if.end89

if.end89:                                         ; preds = %cleanup, %do.end10.if.end89_crit_edge
  %and90 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end100_crit_edge, label %do.end95

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %dev97 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 11, i32 5
  %86 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev97, align 4
  %device98 = getelementptr inbounds %struct.dma_chan_dev, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device98, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef %89) #10
  br label %if.end100

if.end100:                                        ; preds = %do.end95, %if.end89.if.end100_crit_edge
  %and101 = and i32 %4, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.err_out_crit_edge, label %if.then103

if.end100.err_out_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.then103:                                       ; preds = %if.end100
  tail call fastcc void @tsi721_clr_stat(ptr noundef %0)
  %lock105 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %lock105) #7
  %active_tx106 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 14
  %90 = ptrtoint ptr %active_tx106 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %active_tx106, align 4
  %sg_len = getelementptr inbounds %struct.tsi721_tx_desc, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp107 = icmp eq i32 %93, 0
  br i1 %cmp107, label %if.then109, label %if.else

if.then109:                                       ; preds = %if.then103
  %status110 = getelementptr inbounds %struct.tsi721_tx_desc, ptr %91, i32 0, i32 8
  %94 = ptrtoint ptr %status110 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %status110, align 8
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp.i210 = icmp slt i32 %96, 1
  br i1 %cmp.i210, label %do.body2.i211, label %dma_cookie_complete.exit214, !prof !175

do.body2.i211:                                    ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/rapidio/devices/../../dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !176
  unreachable

dma_cookie_complete.exit214:                      ; preds = %if.then109
  %chan.i212 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 3
  %97 = ptrtoint ptr %chan.i212 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chan.i212, align 4
  %completed_cookie.i213 = getelementptr inbounds %struct.dma_chan, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %completed_cookie.i213 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %completed_cookie.i213, align 4
  %100 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %91, align 4
  %flags = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 1
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 4
  %and113 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %dma_cookie_complete.exit214.if.end119_crit_edge, label %if.then115

dma_cookie_complete.exit214.if.end119_crit_edge:  ; preds = %dma_cookie_complete.exit214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then115:                                       ; preds = %dma_cookie_complete.exit214
  call void @__sanitizer_cov_trace_pc() #9
  %callback117 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 6
  %103 = ptrtoint ptr %callback117 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %callback117, align 8
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 8
  %105 = ptrtoint ptr %callback_param to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %callback_param, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %dma_cookie_complete.exit214.if.end119_crit_edge
  %callback.0 = phi ptr [ %104, %if.then115 ], [ null, %dma_cookie_complete.exit214.if.end119_crit_edge ]
  %param.0 = phi ptr [ %106, %if.then115 ], [ null, %dma_cookie_complete.exit214.if.end119_crit_edge ]
  %desc_node120 = getelementptr inbounds %struct.tsi721_tx_desc, ptr %91, i32 0, i32 5
  %free_list121 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 16
  %107 = ptrtoint ptr %free_list121 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %free_list121, align 4
  %call.i.i215 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node120, ptr noundef %free_list121, ptr noundef %108) #7
  br i1 %call.i.i215, label %if.end.i.i218, label %if.end119.list_add.exit219_crit_edge

if.end119.list_add.exit219_crit_edge:             ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit219

if.end.i.i218:                                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i216 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i216 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %desc_node120, ptr %prev1.i.i216, align 4
  %110 = ptrtoint ptr %desc_node120 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %108, ptr %desc_node120, align 4
  %prev3.i.i217 = getelementptr inbounds %struct.tsi721_tx_desc, ptr %91, i32 0, i32 5, i32 1
  %111 = ptrtoint ptr %prev3.i.i217 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %free_list121, ptr %prev3.i.i217, align 4
  %112 = ptrtoint ptr %free_list121 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %desc_node120, ptr %free_list121, align 4
  br label %list_add.exit219

list_add.exit219:                                 ; preds = %if.end.i.i218, %if.end119.list_add.exit219_crit_edge
  %113 = ptrtoint ptr %active_tx106 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %active_tx106, align 4
  %active123 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 18
  %114 = ptrtoint ptr %active123 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %active123, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool124.not = icmp eq i8 %115, 0
  br i1 %tobool124.not, label %list_add.exit219.if.end126_crit_edge, label %if.then125

list_add.exit219.if.end126_crit_edge:             ; preds = %list_add.exit219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then125:                                       ; preds = %list_add.exit219
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tsi721_advance_work(ptr noundef %0, ptr noundef null)
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %list_add.exit219.if.end126_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock105) #7
  %tobool128.not = icmp eq ptr %callback.0, null
  br i1 %tobool128.not, label %if.end126.err_out_crit_edge, label %if.then129

if.end126.err_out_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %callback.0(ptr noundef %param.0) #7
  br label %err_out

if.else:                                          ; preds = %if.then103
  %active131 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %0, i32 0, i32 18
  %116 = ptrtoint ptr %active131 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %active131, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool132.not = icmp eq i8 %117, 0
  br i1 %tobool132.not, label %if.else.if.end135_crit_edge, label %if.then133

if.else.if.end135_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then133:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tsi721_advance_work(ptr noundef %0, ptr noundef %91)
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.else.if.end135_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock105) #7
  br label %err_out

err_out:                                          ; preds = %if.end135, %if.then129, %if.end126.err_out_crit_edge, %if.end100.err_out_crit_edge, %do.end46, %if.then15.err_out_crit_edge
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  %add.ptr140 = getelementptr i8, ptr %119, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 520093696) #7, !srcloc !169
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_alloc_chan_resources(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dchan, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %0 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_alloc_chan_resources.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_alloc_chan_resources, %do.end10)) #7
          to label %if.then7 [label %do.end10], !srcloc !173

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_alloc_chan_resources.__UNIQUE_ID_ddebug260, ptr noundef %device, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.40, i32 noundef %4) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %bd_base = getelementptr i8, ptr %dchan, i32 -32
  %5 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_base, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @dma_txqueue_sz, align 4
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %8 = load i32, ptr @dma_desc_per_channel, align 4
  %call14 = tail call fastcc i32 @tsi721_bdma_ch_init(ptr noundef %add.ptr.i, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %9 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev20, align 4
  %device21 = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device21, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %12) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %13 = load i32, ptr @dma_txqueue_sz, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 144) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end23.if.then26_crit_edge, label %if.end7.i.i, !prof !175

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end7.i.i:                                      ; preds = %if.end23
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 2848) #11
  %tobool25.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool25.not, label %if.end7.i.i.if.then26_crit_edge, label %if.end28

if.end7.i.i.if.then26_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %if.end7.i.i.if.then26_crit_edge, %if.end23.if.then26_crit_edge
  tail call fastcc void @tsi721_bdma_ch_free(ptr noundef %add.ptr.i)
  br label %cleanup

if.end28:                                         ; preds = %if.end7.i.i
  %tx_desc = getelementptr i8, ptr %dchan, i32 64
  %17 = ptrtoint ptr %tx_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %tx_desc, align 4
  %18 = load i32, ptr @dma_txqueue_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp67.not = icmp eq i32 %18, 0
  br i1 %cmp67.not, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %free_list = getelementptr i8, ptr %dchan, i32 124
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tsi721_tx_desc, ptr %call8.i.i, i32 %i.068
  tail call void @dma_async_tx_descriptor_init(ptr noundef %arrayidx, ptr noundef %dchan) #7
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %arrayidx, i32 0, i32 4
  %19 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tsi721_tx_submit, ptr %tx_submit, align 16
  %flags = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %arrayidx, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %flags, align 4
  %desc_node = getelementptr %struct.tsi721_tx_desc, ptr %call8.i.i, i32 %i.068, i32 5
  %21 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %free_list, ptr noundef %22) #7
  br i1 %call.i.i, label %if.end.i.i58, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i58:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %desc_node, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %desc_node, align 8
  %prev3.i.i = getelementptr %struct.tsi721_tx_desc, ptr %call8.i.i, i32 %i.068, i32 5, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %free_list, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %desc_node, ptr %free_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i58, %for.body.list_add.exit_crit_edge
  %inc = add nuw i32 %i.068, 1
  %27 = load i32, ptr @dma_txqueue_sz, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %list_add.exit.for.body_crit_edge, label %list_add.exit.for.end_crit_edge

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %if.end28.for.end_crit_edge
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %28 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %29 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %completed_cookie.i, align 4
  %active = getelementptr i8, ptr %dchan, i32 156
  %30 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %active, align 4
  %regs5.i = getelementptr i8, ptr %dchan, i32 -40
  %31 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs5.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 520093696) #7, !srcloc !169
  %33 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs5.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %34, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %36 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs5.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 520093696) #7, !srcloc !169
  %38 = load i32, ptr @dma_txqueue_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then26, %do.end19, %if.then12
  %retval.0 = phi i32 [ %7, %if.then12 ], [ -19, %do.end19 ], [ %38, %for.end ], [ -12, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_free_chan_resources(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dchan, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %0 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_free_chan_resources.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_free_chan_resources, %do.end10)) #7
          to label %if.then7 [label %do.end10], !srcloc !173

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_free_chan_resources.__UNIQUE_ID_ddebug261, ptr noundef %device, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.49, i32 noundef %4) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %bd_base = getelementptr i8, ptr %dchan, i32 -32
  %5 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_base, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.end10.cleanup_crit_edge, label %if.end13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %regs5.i = getelementptr i8, ptr %dchan, i32 -40
  %7 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #7, !srcloc !169
  %9 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs5.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 520093696) #7, !srcloc !169
  %active = getelementptr i8, ptr %dchan, i32 156
  %11 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %active, align 4
  %12 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dchan, align 4
  %priv.i.i = getelementptr i8, ptr %13, i32 -4
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 8
  %flags.i = getelementptr inbounds %struct.tsi721_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %add.i = add i32 %19, 18
  %arrayidx.i = getelementptr %struct.tsi721_device, ptr %15, i32 0, i32 4, i32 %add.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %21 to i32
  tail call void @synchronize_irq(i32 noundef %conv.i) #7
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %add3.i = add i32 %23, 26
  %arrayidx4.i = getelementptr %struct.tsi721_device, ptr %15, i32 0, i32 4, i32 %add3.i
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx4.i, align 2
  %conv6.i = zext i16 %25 to i32
  br label %tsi721_sync_dma_irq.exit

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %15, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  br label %tsi721_sync_dma_irq.exit

tsi721_sync_dma_irq.exit:                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %29, %if.else.i ], [ %conv6.i, %if.then.i ]
  tail call void @synchronize_irq(i32 noundef %.sink.i) #7
  %tasklet = getelementptr i8, ptr %dchan, i32 132
  tail call void @tasklet_kill(ptr noundef %tasklet) #7
  %free_list = getelementptr i8, ptr %dchan, i32 124
  %30 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr i8, ptr %dchan, i32 128
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free_list, ptr %prev.i, align 4
  %tx_desc = getelementptr i8, ptr %dchan, i32 64
  %32 = ptrtoint ptr %tx_desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_desc, align 4
  tail call void @kfree(ptr noundef %33) #7
  tail call fastcc void @tsi721_bdma_ch_free(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %tsi721_sync_dma_irq.exit, %do.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_tx_status(ptr noundef %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dchan, i32 68
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !177
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi721_issue_pending(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dchan, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %0 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_issue_pending.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_issue_pending, %do.end10)) #7
          to label %if.then7 [label %do.end10], !srcloc !173

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_issue_pending.__UNIQUE_ID_ddebug262, ptr noundef %device, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.50, i32 noundef %4) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %lock = getelementptr i8, ptr %dchan, i32 68
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %regs.i = getelementptr i8, ptr %dchan, i32 -40
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %land.lhs.true, label %do.end10.if.end14_crit_edge

do.end10.if.end14_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end10
  %active = getelementptr i8, ptr %dchan, i32 156
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %active, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %if.then13

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tsi721_advance_work(ptr noundef %add.ptr.i, ptr noundef null)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true.if.end14_crit_edge, %do.end10.if.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tsi721_prep_rio_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readonly %tinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dchan, i32 -44
  %tobool.not = icmp eq ptr %sgl, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool1.not = icmp eq i32 %sg_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %3) #10
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %4 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body3.do.end21_crit_edge, label %do.body6

do.body3.do.end21_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.body6:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_prep_rio_sg.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_prep_rio_sg, %do.end21)) #7
          to label %if.then12 [label %do.end21], !srcloc !173

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev13, align 4
  %device14 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %cond = select i1 %cmp, ptr @.str.54, ptr @.str.55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_prep_rio_sg.__UNIQUE_ID_ddebug263, ptr noundef %device14, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %8, ptr noundef nonnull %cond) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then12, %do.body6, %do.body3.do.end21_crit_edge
  %9 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %do.end31 [
    i32 2, label %do.end21.if.end37_crit_edge
    i32 1, label %if.then25
  ]

do.end21.if.end37_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %wr_type = getelementptr inbounds %struct.rio_dma_ext, ptr %tinfo, i32 0, i32 3
  %10 = ptrtoint ptr %wr_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch.selectcmp = icmp eq i32 %11, 2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.selectcmp113 = icmp eq i32 %11, 1
  %switch.select114 = select i1 %switch.selectcmp113, i32 2, i32 %switch.select
  br label %if.end37

do.end31:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %12 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev32, align 4
  %device33 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device33, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.52, i32 noundef %15) #10
  br label %cleanup

if.end37:                                         ; preds = %if.then25, %do.end21.if.end37_crit_edge
  %rtype.0 = phi i32 [ 0, %do.end21.if.end37_crit_edge ], [ %switch.select114, %if.then25 ]
  %lock = getelementptr i8, ptr %dchan, i32 68
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %free_list = getelementptr i8, ptr %dchan, i32 124
  %16 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %17, %free_list
  br i1 %cmp.i.not, label %if.end49.thread, label %if.then40

if.end49.thread:                                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %do.body53

if.then40:                                        ; preds = %if.end37
  %add.ptr = getelementptr i8, ptr %17, i32 -120
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.if.end49_crit_edge

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end.i.i, %if.then40.if.end49_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %17, ptr %17, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %17, ptr %prev.i3.i, align 4
  %26 = ptrtoint ptr %tinfo to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tinfo, align 8
  %destid43 = getelementptr i8, ptr %17, i32 -20
  %28 = ptrtoint ptr %destid43 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %destid43, align 4
  %rio_addr = getelementptr inbounds %struct.rio_dma_ext, ptr %tinfo, i32 0, i32 1
  %29 = ptrtoint ptr %rio_addr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rio_addr, align 8
  %rio_addr44 = getelementptr i8, ptr %17, i32 -16
  %31 = ptrtoint ptr %rio_addr44 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rio_addr44, align 8
  %rio_addr_u = getelementptr i8, ptr %17, i32 -8
  %32 = ptrtoint ptr %rio_addr_u to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %rio_addr_u, align 8
  %rtype45 = getelementptr i8, ptr %17, i32 -4
  %33 = ptrtoint ptr %rtype45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rtype.0, ptr %rtype45, align 4
  %sg_len46 = getelementptr i8, ptr %17, i32 12
  %34 = ptrtoint ptr %sg_len46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sg_len, ptr %sg_len46, align 4
  %sg = getelementptr i8, ptr %17, i32 8
  %35 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sgl, ptr %sg, align 8
  %flags48 = getelementptr i8, ptr %17, i32 -116
  %36 = ptrtoint ptr %flags48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %flags, ptr %flags48, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %tobool51.not = icmp eq ptr %add.ptr, null
  br i1 %tobool51.not, label %if.end49.do.body53_crit_edge, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49.do.body53_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53

do.body53:                                        ; preds = %if.end49.do.body53_crit_edge, %if.end49.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %37 = load i32, ptr @tsi_dbg_level, align 4
  %and54 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.cleanup_crit_edge, label %do.body57

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_prep_rio_sg.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_prep_rio_sg, %cleanup)) #7
          to label %if.then71 [label %cleanup], !srcloc !173

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %dev72 = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %38 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev72, align 4
  %device73 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_prep_rio_sg.__UNIQUE_ID_ddebug264, ptr noundef %device73, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.52, i32 noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.body57, %do.body53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %do.end31, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end31 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %add.ptr, %if.end49.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then71 ], [ inttoptr (i32 -16 to ptr), %do.body53.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.body57 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_terminate_all(ptr noundef %dchan) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dchan, i32 -44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %3 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_terminate_all.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_terminate_all, %do.end10)) #7
          to label %if.then7 [label %do.end10], !srcloc !173

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_terminate_all.__UNIQUE_ID_ddebug265, ptr noundef %device, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.60, i32 noundef %7) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %lock = getelementptr i8, ptr %dchan, i32 68
  call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %active = getelementptr i8, ptr %dchan, i32 156
  %8 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %active, align 4
  %regs.i = getelementptr i8, ptr %dchan, i32 -40
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4751 = getelementptr i8, ptr %10, i32 20
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4751) #7, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i52 = icmp eq i32 %12, 0
  br i1 %cmp.i52, label %do.end10.while.end_crit_edge, label %do.end10.while.body_crit_edge

do.end10.while.body_crit_edge:                    ; preds = %do.end10
  br label %while.body

do.end10.while.end_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end10.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 1073740) #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %15, i32 20
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %17 = and i32 %16, 8192
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end10.while.end_crit_edge
  %active_tx = getelementptr i8, ptr %dchan, i32 112
  %18 = ptrtoint ptr %active_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_tx, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %while.end.if.end17_crit_edge, label %if.then15

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %while.end
  %desc_node = getelementptr inbounds %struct.tsi721_tx_desc, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef nonnull %list, ptr noundef %21) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.if.end17_crit_edge

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %desc_node, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %19, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %desc_node, ptr %list, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end.i.i, %if.then15.if.end17_crit_edge, %while.end.if.end17_crit_edge
  %queue = getelementptr i8, ptr %dchan, i32 116
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %27, %queue
  br i1 %cmp.i.not.i, label %if.end17.list_splice_init.exit_crit_edge, label %if.then.i

if.end17.list_splice_init.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %dchan, i32 120
  %30 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i48 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list, ptr %prev3.i.i48, align 4
  store ptr %27, ptr %list, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %31, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev6.i.i, align 4
  %35 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end17.list_splice_init.exit_crit_edge
  %36 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %list, align 4
  %cmp.not53 = icmp eq ptr %37, %list
  br i1 %cmp.not53, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %free_list.i = getelementptr i8, ptr %dchan, i32 124
  br label %for.body

for.body:                                         ; preds = %tsi721_dma_tx_err.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in54 = phi ptr [ %37, %for.body.lr.ph ], [ %.pn, %tsi721_dma_tx_err.exit.for.body_crit_edge ]
  %38 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn.in54, align 8
  %callback2.i = getelementptr i8, ptr %.pn.in54, i32 -96
  %39 = ptrtoint ptr %callback2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %callback2.i, align 4
  %callback_param.i = getelementptr i8, ptr %.pn.in54, i32 -88
  %41 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %callback_param.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in54) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.__list_del_entry.exit.i.i_crit_edge

for.body.__list_del_entry.exit.i.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %.pn.in54, i32 4
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn.in54, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.__list_del_entry.exit.i.i_crit_edge
  %49 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in54, ptr noundef %free_list.i, ptr noundef %50) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.pn.in54, ptr %prev1.i.i2.i.i, align 4
  %52 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %.pn.in54, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in54, i32 4
  %53 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %free_list.i, ptr %prev3.i.i.i.i, align 4
  %54 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %.pn.in54, ptr %free_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %list_move.exit.i.tsi721_dma_tx_err.exit_crit_edge, label %if.then.i49

list_move.exit.i.tsi721_dma_tx_err.exit_crit_edge: ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsi721_dma_tx_err.exit

if.then.i49:                                      ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %40(ptr noundef %42) #7
  br label %tsi721_dma_tx_err.exit

tsi721_dma_tx_err.exit:                           ; preds = %if.then.i49, %list_move.exit.i.tsi721_dma_tx_err.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %tsi721_dma_tx_err.exit.for.end_crit_edge, label %tsi721_dma_tx_err.exit.for.body_crit_edge

tsi721_dma_tx_err.exit.for.body_crit_edge:        ; preds = %tsi721_dma_tx_err.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

tsi721_dma_tx_err.exit.for.end_crit_edge:         ; preds = %tsi721_dma_tx_err.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %tsi721_dma_tx_err.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsi721_unregister_dma(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tsi721_dma_stop_all(ptr noundef %priv)
  %dma = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20
  tail call void @dma_async_device_unregister(ptr noundef %dma) #7
  %channels = getelementptr inbounds %struct.tsi721_device, ptr %priv, i32 0, i32 1, i32 20, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %cmp.not35 = icmp eq ptr %1, %channels
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn39, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn39 = load ptr, ptr %.pn.in36, align 4
  %add.ptr.i = getelementptr i8, ptr %.pn.in36, i32 -76
  %active = getelementptr i8, ptr %.pn.in36, i32 124
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %active, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  %regs5.i = getelementptr i8, ptr %.pn.in36, i32 -72
  %5 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #7, !srcloc !169
  %7 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs5.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 520093696) #7, !srcloc !169
  %9 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %active, align 4
  %dchan.i = getelementptr i8, ptr %.pn.in36, i32 -32
  %10 = ptrtoint ptr %dchan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dchan.i, align 4
  %priv.i.i = getelementptr i8, ptr %11, i32 -4
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 8
  %flags.i = getelementptr inbounds %struct.tsi721_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %add.i = add i32 %17, 18
  %arrayidx.i = getelementptr %struct.tsi721_device, ptr %13, i32 0, i32 4, i32 %add.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %19 to i32
  tail call void @synchronize_irq(i32 noundef %conv.i) #7
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %add3.i = add i32 %21, 26
  %arrayidx4.i = getelementptr %struct.tsi721_device, ptr %13, i32 0, i32 4, i32 %add3.i
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx4.i, align 2
  %conv6.i = zext i16 %23 to i32
  br label %tsi721_sync_dma_irq.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %13, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 46
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  br label %tsi721_sync_dma_irq.exit

tsi721_sync_dma_irq.exit:                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %27, %if.else.i ], [ %conv6.i, %if.then.i ]
  tail call void @synchronize_irq(i32 noundef %.sink.i) #7
  %tasklet = getelementptr i8, ptr %.pn.in36, i32 100
  tail call void @tasklet_kill(ptr noundef %tasklet) #7
  %free_list = getelementptr i8, ptr %.pn.in36, i32 92
  %28 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr i8, ptr %.pn.in36, i32 96
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_list, ptr %prev.i, align 4
  %tx_desc = getelementptr i8, ptr %.pn.in36, i32 32
  %30 = ptrtoint ptr %tx_desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_desc, align 4
  tail call void @kfree(ptr noundef %31) #7
  tail call fastcc void @tsi721_bdma_ch_free(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %tsi721_sync_dma_irq.exit, %for.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36, align 4
  %prev.i33 = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i33, align 4
  %cmp.not = icmp eq ptr %.pn39, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_bdma_ch_free(ptr noundef %bdma_chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dchan = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  %priv.i = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %bd_base = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 3
  %4 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_base, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #7, !srcloc !169
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and7 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.if.end18_crit_edge, label %if.then9

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bdma_chan, align 4
  %add = add i32 %15, 18
  %arrayidx = getelementptr %struct.tsi721_device, ptr %3, i32 0, i32 4, i32 %add
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %17 to i32
  %call10 = tail call ptr @free_irq(i32 noundef %conv, ptr noundef %bdma_chan) #7
  %18 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bdma_chan, align 4
  %add13 = add i32 %19, 26
  %arrayidx14 = getelementptr %struct.tsi721_device, ptr %3, i32 0, i32 4, i32 %add13
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx14, align 2
  %conv16 = zext i16 %21 to i32
  %call17 = tail call ptr @free_irq(i32 noundef %conv16, ptr noundef %bdma_chan) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end4.if.end18_crit_edge
  %22 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dchan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %bd_num = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 2
  %26 = ptrtoint ptr %bd_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bd_num, align 4
  %add21 = shl i32 %27, 5
  %mul = add i32 %add21, 32
  %28 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_base, align 4
  %bd_phys = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 4
  %30 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bd_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %mul, ptr noundef %29, i32 noundef %31, i32 noundef 0) #7
  %32 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %bd_base, align 4
  %33 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dchan, align 4
  %dev26 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev26, align 4
  %sts_size = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 7
  %37 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sts_size, align 4
  %mul27 = shl i32 %38, 6
  %sts_base = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 5
  %39 = ptrtoint ptr %sts_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sts_base, align 4
  %sts_phys = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 6
  %41 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sts_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef %mul27, ptr noundef %40, i32 noundef %42, i32 noundef 0) #7
  %43 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sts_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_clr_stat(ptr nocapture noundef %bdma_chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sts_rdptr = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 8
  %0 = ptrtoint ptr %sts_rdptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sts_rdptr, align 4
  %sts_base = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 5
  %2 = ptrtoint ptr %sts_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sts_base, align 4
  %j.025 = shl i32 %1, 3
  %arrayidx26 = getelementptr i64, ptr %3, i32 %j.025
  %4 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not27 = icmp eq i64 %5, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %for.cond.preheader.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %sts_size = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %j.029 = phi i32 [ %j.025, %for.cond.preheader.lr.ph ], [ %j.0, %for.end.for.cond.preheader_crit_edge ]
  %srd_ptr.028 = phi i32 [ %1, %for.cond.preheader.lr.ph ], [ %rem, %for.end.for.cond.preheader_crit_edge ]
  %arrayidx1 = getelementptr i64, ptr %3, i32 %j.029
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %for.cond.preheader.for.end_crit_edge, label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %arrayidx1, align 8
  %inc4 = or i32 %j.029, 1
  %arrayidx1.1 = getelementptr i64, ptr %3, i32 %inc4
  %9 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool2.not.1 = icmp eq i64 %10, 0
  br i1 %tobool2.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %arrayidx1.1, align 8
  %inc4.1 = or i32 %j.029, 2
  %arrayidx1.2 = getelementptr i64, ptr %3, i32 %inc4.1
  %12 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool2.not.2 = icmp eq i64 %13, 0
  br i1 %tobool2.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %14 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %arrayidx1.2, align 8
  %inc4.2 = or i32 %j.029, 3
  %arrayidx1.3 = getelementptr i64, ptr %3, i32 %inc4.2
  %15 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx1.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool2.not.3 = icmp eq i64 %16, 0
  br i1 %tobool2.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %17 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %arrayidx1.3, align 8
  %inc4.3 = or i32 %j.029, 4
  %arrayidx1.4 = getelementptr i64, ptr %3, i32 %inc4.3
  %18 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx1.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool2.not.4 = icmp eq i64 %19, 0
  br i1 %tobool2.not.4, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %20 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %arrayidx1.4, align 8
  %inc4.4 = or i32 %j.029, 5
  %arrayidx1.5 = getelementptr i64, ptr %3, i32 %inc4.4
  %21 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx1.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool2.not.5 = icmp eq i64 %22, 0
  br i1 %tobool2.not.5, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %23 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %arrayidx1.5, align 8
  %inc4.5 = or i32 %j.029, 6
  %arrayidx1.6 = getelementptr i64, ptr %3, i32 %inc4.5
  %24 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx1.6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool2.not.6 = icmp eq i64 %25, 0
  br i1 %tobool2.not.6, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  %26 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %arrayidx1.6, align 8
  %inc4.6 = or i32 %j.029, 7
  %arrayidx1.7 = getelementptr i64, ptr %3, i32 %inc4.6
  %27 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx1.7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool2.not.7 = icmp eq i64 %28, 0
  br i1 %tobool2.not.7, label %for.body.6.for.end_crit_edge, label %for.body.7

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %arrayidx1.7, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.7, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %inc5 = add i32 %srd_ptr.028, 1
  %30 = ptrtoint ptr %sts_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sts_size, align 4
  %rem = urem i32 %inc5, %31
  %j.0 = shl i32 %rem, 3
  %arrayidx = getelementptr i64, ptr %3, i32 %j.0
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx, align 8
  %tobool.not = icmp eq i64 %33, 0
  br i1 %tobool.not, label %for.end.while.end_crit_edge, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  %srd_ptr.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %rem, %for.end.while.end_crit_edge ]
  %regs = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 1
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %srd_ptr.0.lcssa) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #7, !srcloc !169
  %37 = ptrtoint ptr %sts_rdptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %srd_ptr.0.lcssa, ptr %sts_rdptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_advance_work(ptr noundef %bdma_chan, ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %0 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_advance_work.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_advance_work, %do.end9)) #7
          to label %if.then6 [label %do.end9], !srcloc !173

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bdma_chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_advance_work.__UNIQUE_ID_ddebug256, ptr noundef %device, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %4) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %regs.i = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %tobool13.not = icmp eq ptr %desc, null
  br i1 %tobool13.not, label %land.lhs.true, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

land.lhs.true:                                    ; preds = %if.end12
  %active_tx = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 14
  %9 = ptrtoint ptr %active_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active_tx, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %land.lhs.true15, label %land.lhs.true.do.body59_crit_edge

land.lhs.true.do.body59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

land.lhs.true15:                                  ; preds = %land.lhs.true
  %queue = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 15
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 4
  %cmp.i112.not = icmp eq ptr %12, %queue
  br i1 %cmp.i112.not, label %land.lhs.true15.do.body59_crit_edge, label %if.then18

land.lhs.true15.do.body59_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

if.then18:                                        ; preds = %land.lhs.true15
  %add.ptr = getelementptr i8, ptr %12, i32 -120
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.if.end22_crit_edge

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end.i.i, %if.then18.if.end22_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %12, ptr %12, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %12, ptr %prev.i3.i, align 4
  %21 = ptrtoint ptr %active_tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %active_tx, align 4
  %tobool23.not = icmp eq ptr %add.ptr, null
  br i1 %tobool23.not, label %if.end22.do.body59_crit_edge, label %if.end22.if.then24_crit_edge

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.end22.do.body59_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %desc.addr.0119 = phi ptr [ %add.ptr, %if.end22.if.then24_crit_edge ], [ %desc, %if.end12.if.then24_crit_edge ]
  %call25 = tail call fastcc i32 @tsi721_submit_sg(ptr noundef nonnull %desc.addr.0119)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tsi721_start_dma(ptr noundef %bdma_chan)
  br label %do.body59

if.else:                                          ; preds = %if.then24
  %callback2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.addr.0119, i32 0, i32 6
  %22 = ptrtoint ptr %callback2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %callback2.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.addr.0119, i32 0, i32 8
  %24 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %callback_param.i, align 4
  %desc_node.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc.addr.0119, i32 0, i32 5
  %free_list.i = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc_node.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.__list_del_entry.exit.i.i_crit_edge

if.else.__list_del_entry.exit.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc.addr.0119, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %desc_node.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.else.__list_del_entry.exit.i.i_crit_edge
  %32 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node.i, ptr noundef %free_list.i, ptr noundef %33) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %desc_node.i, ptr %prev1.i.i2.i.i, align 4
  %35 = ptrtoint ptr %desc_node.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %desc_node.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc.addr.0119, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_list.i, ptr %prev3.i.i.i.i, align 4
  %37 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %desc_node.i, ptr %free_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %list_move.exit.i.tsi721_dma_tx_err.exit_crit_edge, label %if.then.i

list_move.exit.i.tsi721_dma_tx_err.exit_crit_edge: ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsi721_dma_tx_err.exit

if.then.i:                                        ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23(ptr noundef %25) #7
  br label %tsi721_dma_tx_err.exit

tsi721_dma_tx_err.exit:                           ; preds = %if.then.i, %list_move.exit.i.tsi721_dma_tx_err.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %38 = load i32, ptr @tsi_dbg_level, align 4
  %and29 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %tsi721_dma_tx_err.exit.do.body59_crit_edge, label %do.body32

tsi721_dma_tx_err.exit.do.body59_crit_edge:       ; preds = %tsi721_dma_tx_err.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

do.body32:                                        ; preds = %tsi721_dma_tx_err.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_advance_work.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_advance_work, %do.body59)) #7
          to label %if.then46 [label %do.body59], !srcloc !173

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %dev48 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %39 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev48, align 4
  %device49 = getelementptr inbounds %struct.dma_chan_dev, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bdma_chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_advance_work.__UNIQUE_ID_ddebug257, ptr noundef %device49, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %42, i32 noundef %call25) #7
  br label %do.body59

do.body59:                                        ; preds = %if.then46, %do.body32, %tsi721_dma_tx_err.exit.do.body59_crit_edge, %if.then27, %if.end22.do.body59_crit_edge, %land.lhs.true15.do.body59_crit_edge, %land.lhs.true.do.body59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %43 = load i32, ptr @tsi_dbg_level, align 4
  %and60 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.cleanup_crit_edge, label %do.body63

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_advance_work.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_advance_work, %cleanup)) #7
          to label %if.then77 [label %cleanup], !srcloc !173

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %dev79 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %44 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev79, align 4
  %device80 = getelementptr inbounds %struct.dma_chan_dev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bdma_chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_advance_work.__UNIQUE_ID_ddebug258, ptr noundef %device80, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, i32 noundef %47) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body63, %do.body59.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsi721_submit_sg(ptr nocapture noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -44
  %dev = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %regs.i = getelementptr i8, ptr %1, i32 -40
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i344 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i344) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rio_addr2 = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc, i32 0, i32 2
  %10 = ptrtoint ptr %rio_addr2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rio_addr2, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %sys_size5 = getelementptr i8, ptr %13, i32 -984
  %14 = ptrtoint ptr %sys_size5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sys_size5, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !171
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %bd_num = getelementptr i8, ptr %1, i32 -36
  %20 = ptrtoint ptr %bd_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bd_num, align 4
  %add = add i32 %21, 1
  %rem = urem i32 %19, %add
  %wr_count_next = getelementptr i8, ptr %1, i32 -4
  %22 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wr_count_next, align 4
  %rem9 = urem i32 %23, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %rem9, i32 %21)
  %cmp = icmp eq i32 %rem9, %21
  %spec.select = zext i1 %cmp to i32
  %spec.select325 = select i1 %cmp, i32 0, i32 %rem9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %24 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end28_crit_edge, label %do.body15

if.end.do.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_submit_sg, %do.end28)) #7
          to label %if.then21 [label %do.end28], !srcloc !173

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_submit_sg.__UNIQUE_ID_ddebug250, ptr noundef %device, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %26, i32 noundef %rem, i32 noundef %spec.select325) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then21, %do.body15, %if.end.do.end28_crit_edge
  %sg29 = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc, i32 0, i32 6
  %sg_len = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc, i32 0, i32 7
  %27 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp30380.not = icmp eq i32 %28, 0
  br i1 %cmp30380.not, label %do.end28.if.then229_crit_edge, label %do.body31.lr.ph

do.end28.if.then229_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then229

do.body31.lr.ph:                                  ; preds = %do.end28
  %29 = ptrtoint ptr %sg29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg29, align 8
  %bd_base = getelementptr i8, ptr %1, i32 -32
  %rtype.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc, i32 0, i32 4
  %destid.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc, i32 0, i32 1
  %shl4.i = shl i32 %15, 26
  %rio_addr_u.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %desc, i32 0, i32 3
  br label %do.body31

do.body31:                                        ; preds = %for.inc.do.body31_crit_edge, %do.body31.lr.ph
  %rio_addr.0391 = phi i64 [ %11, %do.body31.lr.ph ], [ %rio_addr.1, %for.inc.do.body31_crit_edge ]
  %next_addr.0390 = phi i32 [ -1, %do.body31.lr.ph ], [ %next_addr.2, %for.inc.do.body31_crit_edge ]
  %bcount.0388 = phi i32 [ 0, %do.body31.lr.ph ], [ %bcount.1, %for.inc.do.body31_crit_edge ]
  %sg.0386 = phi ptr [ %30, %do.body31.lr.ph ], [ %call227, %for.inc.do.body31_crit_edge ]
  %i.0384 = phi i32 [ 0, %do.body31.lr.ph ], [ %inc226, %for.inc.do.body31_crit_edge ]
  %bd_ptr.0383 = phi ptr [ null, %do.body31.lr.ph ], [ %bd_ptr.1, %for.inc.do.body31_crit_edge ]
  %idx.1382 = phi i32 [ %spec.select325, %do.body31.lr.ph ], [ %idx.2, %for.inc.do.body31_crit_edge ]
  %add_count.1381 = phi i32 [ %spec.select, %do.body31.lr.ph ], [ %add_count.2, %for.inc.do.body31_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %31 = load i32, ptr @tsi_dbg_level, align 4
  %and32 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end57_crit_edge, label %do.body35

do.body31.do.end57_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

do.body35:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_submit_sg, %do.end57)) #7
          to label %if.then49 [label %do.end57], !srcloc !173

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  %34 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg_len, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0386, i32 0, i32 3
  %36 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %37 to i64
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0386, i32 0, i32 4
  %38 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_submit_sg.__UNIQUE_ID_ddebug251, ptr noundef %device, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %33, i32 noundef %i.0384, i32 noundef %35, i64 noundef %conv, i32 noundef %39) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then49, %do.body35, %do.body31.do.end57_crit_edge
  %dma_length58 = getelementptr inbounds %struct.scatterlist, ptr %sg.0386, i32 0, i32 4
  %40 = ptrtoint ptr %dma_length58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_length58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %41)
  %cmp59 = icmp ugt i32 %41, 67108864
  br i1 %cmp59, label %do.end64, label %if.end66

do.end64:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef %43, i32 noundef %i.0384) #10
  br label %cleanup

if.end66:                                         ; preds = %do.end57
  %dma_address67 = getelementptr inbounds %struct.scatterlist, ptr %sg.0386, i32 0, i32 3
  %44 = ptrtoint ptr %dma_address67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %next_addr.0390, i32 %45)
  %cmp68 = icmp eq i32 %next_addr.0390, %45
  %add71 = add i32 %41, %bcount.0388
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108865, i32 %add71)
  %cmp72 = icmp ult i32 %add71, 67108865
  %or.cond328 = select i1 %cmp68, i1 %cmp72, i1 false
  br i1 %or.cond328, label %if.end66.entry_done_crit_edge, label %if.else

if.end66.entry_done_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %entry_done

if.else:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %next_addr.0390)
  %cmp77.not = icmp eq i32 %next_addr.0390, -1
  br i1 %cmp77.not, label %if.else.if.end108_crit_edge, label %if.then79

if.else.if.end108_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then79:                                        ; preds = %if.else
  %tobool.not.i = icmp eq ptr %bd_ptr.0383, null
  br i1 %tobool.not.i, label %if.then79.tsi721_desc_fill_end.exit_crit_edge, label %if.end3.i

if.then79.tsi721_desc_fill_end.exit_crit_edge:    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsi721_desc_fill_end.exit

if.end3.i:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %bcount.0388, 67108863
  %46 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %bcount4.i = getelementptr inbounds %struct.tsi721_dma_desc, ptr %bd_ptr.0383, i32 0, i32 1
  %47 = ptrtoint ptr %bcount4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bcount4.i, align 4
  %or5.i = or i32 %48, %46
  store i32 %or5.i, ptr %bcount4.i, align 4
  br label %tsi721_desc_fill_end.exit

tsi721_desc_fill_end.exit:                        ; preds = %if.end3.i, %if.then79.tsi721_desc_fill_end.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %49 = load i32, ptr @tsi_dbg_level, align 4
  %and82 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %tsi721_desc_fill_end.exit.if.end108_crit_edge, label %do.body85

tsi721_desc_fill_end.exit.if.end108_crit_edge:    ; preds = %tsi721_desc_fill_end.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

do.body85:                                        ; preds = %tsi721_desc_fill_end.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_submit_sg, %if.end108)) #7
          to label %if.then99 [label %if.end108], !srcloc !173

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_submit_sg.__UNIQUE_ID_ddebug252, ptr noundef %device, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, i32 noundef %51, i32 noundef %bcount.0388) #7
  br label %if.end108

if.end108:                                        ; preds = %if.then99, %do.body85, %tsi721_desc_fill_end.exit.if.end108_crit_edge, %if.else.if.end108_crit_edge
  %52 = ptrtoint ptr %rio_addr2 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %rio_addr.0391, ptr %rio_addr2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0384)
  %tobool110.not = icmp ne i32 %i.0384, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1382, i32 %rem)
  %cmp112 = icmp eq i32 %idx.1382, %rem
  %or.cond = select i1 %tobool110.not, i1 %cmp112, i1 false
  br i1 %or.cond, label %do.body115, label %if.end143

do.body115:                                       ; preds = %if.end108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %53 = load i32, ptr @tsi_dbg_level, align 4
  %and116 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body115.do.end140_crit_edge, label %do.body119

do.body115.do.end140_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

do.body119:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_submit_sg, %do.end140)) #7
          to label %if.then133 [label %do.end140], !srcloc !173

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_submit_sg.__UNIQUE_ID_ddebug253, ptr noundef %device, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, i32 noundef %55, i32 noundef %i.0384) #7
  br label %do.end140

do.end140:                                        ; preds = %if.then133, %do.body119, %do.body115.do.end140_crit_edge
  %56 = ptrtoint ptr %sg29 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %sg.0386, ptr %sg29, align 8
  %57 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sg_len, align 4
  %sub = sub i32 %58, %i.0384
  store i32 %sub, ptr %sg_len, align 4
  br label %if.then229

if.end143:                                        ; preds = %if.end108
  %59 = ptrtoint ptr %bd_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bd_base, align 4
  %arrayidx = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382
  %tobool.not.i346 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i346, label %do.end149, label %do.body151

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.21, i32 noundef -22) #10
  br label %cleanup

do.body151:                                       ; preds = %if.end143
  %61 = ptrtoint ptr %rtype.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rtype.i, align 4
  %shl.i = shl i32 %62, 19
  %63 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %destid.i, align 4
  %conv.i = zext i16 %64 to i32
  %or.i = or i32 %shl.i, %conv.i
  %or1.i = or i32 %or.i, 536870912
  %65 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #7
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx, align 32
  %67 = ptrtoint ptr %rio_addr2 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rio_addr2, align 8
  %.tr.i = trunc i64 %68 to i32
  %69 = shl i32 %.tr.i, 30
  %conv7.i = or i32 %69, %shl4.i
  %70 = lshr exact i32 %conv7.i, 24
  %bcount.i = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382, i32 1
  %71 = ptrtoint ptr %bcount.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %bcount.i, align 4
  %72 = load i64, ptr %rio_addr2, align 8
  %73 = ptrtoint ptr %rio_addr_u.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rio_addr_u.i, align 8
  %75 = zext i8 %74 to i64
  %or13.i = tail call i64 @llvm.fshl.i64(i64 %75, i64 %72, i64 62) #7
  %conv15.i = trunc i64 %or13.i to i32
  %76 = tail call i32 @llvm.bswap.i32(i32 %conv15.i) #7
  %77 = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382, i32 2
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %76, ptr %77, align 8
  %shr16.i = lshr i64 %or13.i, 32
  %conv17.i = trunc i64 %shr16.i to i32
  %79 = tail call i32 @llvm.bswap.i32(i32 %conv17.i) #7
  %80 = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382, i32 3
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %80, align 4
  %82 = ptrtoint ptr %dma_address67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_address67, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  %85 = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %84, ptr %85, align 16
  %bufptr_hi.i = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382, i32 4, i32 0, i32 1
  %87 = ptrtoint ptr %bufptr_hi.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %bufptr_hi.i, align 4
  %s_dist.i = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382, i32 4, i32 0, i32 2
  %88 = ptrtoint ptr %s_dist.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %s_dist.i, align 8
  %s_size.i = getelementptr %struct.tsi721_dma_desc, ptr %60, i32 %idx.1382, i32 4, i32 0, i32 3
  %89 = ptrtoint ptr %s_size.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %s_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %90 = load i32, ptr @tsi_dbg_level, align 4
  %and152 = and i32 %90, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.body151.do.end178_crit_edge, label %do.body155

do.body151.do.end178_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end178

do.body155:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_submit_sg, %do.end178)) #7
          to label %if.then169 [label %do.end178], !srcloc !173

if.then169:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i, align 4
  %93 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %destid.i, align 4
  %conv171 = zext i16 %94 to i32
  %95 = ptrtoint ptr %rio_addr2 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %rio_addr2, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_submit_sg.__UNIQUE_ID_ddebug254, ptr noundef %device, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21, i32 noundef %92, ptr noundef nonnull %arrayidx, i32 noundef %conv171, i64 noundef %96) #7
  br label %do.end178

do.end178:                                        ; preds = %if.then169, %do.body155, %do.body151.do.end178_crit_edge
  %97 = ptrtoint ptr %dma_address67 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_address67, align 4
  %99 = ptrtoint ptr %dma_length58 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_length58, align 4
  %inc182 = add i32 %idx.1382, 1
  %101 = ptrtoint ptr %bd_num to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bd_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc182, i32 %102)
  %cmp184 = icmp eq i32 %inc182, %102
  %spec.select326.v = select i1 %cmp184, i32 2, i32 1
  %spec.select326 = add i32 %spec.select326.v, %add_count.1381
  %spec.select327 = select i1 %cmp184, i32 0, i32 %inc182
  br label %entry_done

entry_done:                                       ; preds = %do.end178, %if.end66.entry_done_crit_edge
  %add_count.2 = phi i32 [ %spec.select326, %do.end178 ], [ %add_count.1381, %if.end66.entry_done_crit_edge ]
  %idx.2 = phi i32 [ %spec.select327, %do.end178 ], [ %idx.1382, %if.end66.entry_done_crit_edge ]
  %bd_ptr.1 = phi ptr [ %arrayidx, %do.end178 ], [ %bd_ptr.0383, %if.end66.entry_done_crit_edge ]
  %bcount.1 = phi i32 [ %100, %do.end178 ], [ %add71, %if.end66.entry_done_crit_edge ]
  %next_addr.1 = phi i32 [ %98, %do.end178 ], [ %next_addr.0390, %if.end66.entry_done_crit_edge ]
  %103 = ptrtoint ptr %sg.0386 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sg.0386, align 4
  %and.i348 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348)
  %tobool.i.not = icmp eq i32 %and.i348, 0
  br i1 %tobool.i.not, label %if.else219, label %if.then190

if.then190:                                       ; preds = %entry_done
  %tobool.not.i349 = icmp eq ptr %bd_ptr.1, null
  br i1 %tobool.not.i349, label %if.then190.tsi721_desc_fill_end.exit354_crit_edge, label %if.end3.i353

if.then190.tsi721_desc_fill_end.exit354_crit_edge: ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsi721_desc_fill_end.exit354

if.end3.i353:                                     ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  %and.i350 = and i32 %bcount.1, 67108863
  %105 = tail call i32 @llvm.bswap.i32(i32 %and.i350) #7
  %bcount4.i351 = getelementptr inbounds %struct.tsi721_dma_desc, ptr %bd_ptr.1, i32 0, i32 1
  %106 = ptrtoint ptr %bcount4.i351 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bcount4.i351, align 4
  %or5.i352 = or i32 %107, %105
  store i32 %or5.i352, ptr %bcount4.i351, align 4
  br label %tsi721_desc_fill_end.exit354

tsi721_desc_fill_end.exit354:                     ; preds = %if.end3.i353, %if.then190.tsi721_desc_fill_end.exit354_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %108 = load i32, ptr @tsi_dbg_level, align 4
  %and193 = and i32 %108, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %tsi721_desc_fill_end.exit354.do.end217_crit_edge, label %do.body196

tsi721_desc_fill_end.exit354.do.end217_crit_edge: ; preds = %tsi721_desc_fill_end.exit354
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end217

do.body196:                                       ; preds = %tsi721_desc_fill_end.exit354
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_submit_sg, %do.end217)) #7
          to label %if.then210 [label %do.end217], !srcloc !173

if.then210:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_submit_sg.__UNIQUE_ID_ddebug255, ptr noundef %device, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.21, i32 noundef %110, i32 noundef %bcount.1) #7
  br label %do.end217

do.end217:                                        ; preds = %if.then210, %do.body196, %tsi721_desc_fill_end.exit354.do.end217_crit_edge
  %111 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %sg_len, align 4
  br label %for.inc

if.else219:                                       ; preds = %entry_done
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %dma_length58 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma_length58, align 4
  %conv221 = zext i32 %113 to i64
  %add222 = add i64 %rio_addr.0391, %conv221
  %add224 = add i32 %113, %next_addr.1
  br label %for.inc

for.inc:                                          ; preds = %if.else219, %do.end217
  %next_addr.2 = phi i32 [ %next_addr.1, %do.end217 ], [ %add224, %if.else219 ]
  %rio_addr.1 = phi i64 [ %rio_addr.0391, %do.end217 ], [ %add222, %if.else219 ]
  %inc226 = add nuw i32 %i.0384, 1
  %call227 = tail call ptr @sg_next(ptr noundef %sg.0386) #7
  %114 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sg_len, align 4
  %cmp30 = icmp ult i32 %inc226, %115
  br i1 %cmp30, label %for.inc.do.body31_crit_edge, label %for.inc.if.then229_crit_edge

for.inc.if.then229_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then229

for.inc.do.body31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then229:                                       ; preds = %for.inc.if.then229_crit_edge, %do.end140, %do.end28.if.then229_crit_edge
  %add_count.1379 = phi i32 [ %add_count.1381, %do.end140 ], [ %spec.select, %do.end28.if.then229_crit_edge ], [ %add_count.2, %for.inc.if.then229_crit_edge ]
  %116 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %wr_count_next, align 4
  %add231 = add i32 %117, %add_count.1379
  store i32 %add231, ptr %wr_count_next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then229, %do.end149, %do.end64, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then229 ], [ -22, %do.end64 ], [ -22, %do.end149 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi721_start_dma(ptr nocapture noundef %bdma_chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %3 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bdma_chan, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %7) #10
  br label %return

if.end:                                           ; preds = %entry
  %wr_count = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 9
  %8 = ptrtoint ptr %wr_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wr_count, align 4
  %wr_count_next = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 10
  %10 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wr_count_next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %do.end3, label %do.body11

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  %device6 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bdma_chan, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !158) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device6, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %15, i32 noundef %21) #10
  br label %return

do.body11:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %22 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body11.do.end31_crit_edge, label %do.body13

do.body11.do.end31_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.body13:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_start_dma.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_start_dma, %do.end31)) #7
          to label %if.then19 [label %do.end31], !srcloc !173

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %23 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev21, align 4
  %device22 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bdma_chan, align 4
  %27 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wr_count_next, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !158) #7
  %and.i52 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i52 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task26, align 8
  %pid.i53 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %pid.i53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid.i53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_start_dma.__UNIQUE_ID_ddebug249, ptr noundef %device22, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef %26, i32 noundef %28, i32 noundef %34) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then19, %do.body13, %do.body11.do.end31_crit_edge
  %35 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wr_count_next, align 4
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %39) #7, !srcloc !169
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %43 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wr_count_next, align 4
  %45 = ptrtoint ptr %wr_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %wr_count, align 4
  br label %return

return:                                           ; preds = %do.end31, %do.end3, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsi721_bdma_ch_init(ptr noundef %bdma_chan, i32 noundef %bd_num) unnamed_addr #0 align 64 {
entry:
  %bd_phys = alloca i32, align 4
  %sts_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dchan = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11
  %0 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dchan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bd_phys) #7
  %4 = ptrtoint ptr %bd_phys to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bd_phys, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts_phys) #7
  %5 = ptrtoint ptr %sts_phys to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sts_phys, align 4, !annotation !178
  %priv.i = getelementptr i8, ptr %1, i32 -4
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %8 = load i32, ptr @tsi_dbg_level, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.body4

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_ch_init, %do.end16)) #7
          to label %if.then10 [label %do.end16], !srcloc !173

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  %device13 = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bdma_chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug244, ptr noundef %device13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.42, i32 noundef %12) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %do.body4, %entry.do.end16_crit_edge
  %add = add i32 %bd_num, 1
  %mul = shl i32 %add, 5
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %bd_phys, i32 noundef 2592, i32 noundef 0) #7
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %do.end16.cleanup259_crit_edge, label %if.end20

do.end16.cleanup259_crit_edge:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup259

if.end20:                                         ; preds = %do.end16
  %bd_num21 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 2
  %13 = ptrtoint ptr %bd_num21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bd_num, ptr %bd_num21, align 4
  %14 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_phys, align 4
  %bd_phys22 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 4
  %16 = ptrtoint ptr %bd_phys22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bd_phys22, align 4
  %bd_base = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 3
  %17 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %bd_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %18 = load i32, ptr @tsi_dbg_level, align 4
  %and24 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end20.do.end51_crit_edge, label %do.body27

if.end20.do.end51_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

do.body27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_ch_init, %do.end51)) #7
          to label %if.then41 [label %do.end51], !srcloc !173

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %dev43 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev43, align 4
  %device44 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bdma_chan, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug245, ptr noundef %device44, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %22, ptr noundef nonnull %call.i, ptr noundef nonnull %bd_phys) #7
  br label %do.end51

do.end51:                                         ; preds = %if.then41, %do.body27, %if.end20.do.end51_crit_edge
  %23 = call i32 @llvm.smax.i32(i32 %add, i32 32)
  %sub = add nsw i32 %23, -1
  %24 = call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #7, !range !174
  %sub.i.i.i.pn = sub nuw nsw i32 32, %24
  %cond78 = shl nuw i32 1, %sub.i.i.i.pn
  %mul79 = shl i32 %cond78, 6
  %call.i362 = call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul79, ptr noundef nonnull %sts_phys, i32 noundef 2592, i32 noundef 0) #7
  %tobool81.not = icmp eq ptr %call.i362, null
  br i1 %tobool81.not, label %if.then82, label %if.end86

if.then82:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bd_phys, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %call.i, i32 noundef %26, i32 noundef 0) #7
  %27 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bd_base, align 4
  br label %cleanup259

if.end86:                                         ; preds = %do.end51
  %28 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sts_phys, align 4
  %sts_phys87 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 6
  %30 = ptrtoint ptr %sts_phys87 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sts_phys87, align 4
  %sts_base = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 5
  %31 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i362, ptr %sts_base, align 4
  %sts_size88 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 7
  %32 = ptrtoint ptr %sts_size88 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond78, ptr %sts_size88, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %33 = load i32, ptr @tsi_dbg_level, align 4
  %and90 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end86.do.end117_crit_edge, label %do.body93

if.end86.do.end117_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end117

do.body93:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_ch_init, %do.end117)) #7
          to label %if.then107 [label %do.end117], !srcloc !173

if.then107:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  %dev109 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %34 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev109, align 4
  %device110 = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bdma_chan, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug246, ptr noundef %device110, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %37, ptr noundef nonnull %call.i362, ptr noundef nonnull %sts_phys, i32 noundef %cond78) #7
  br label %do.end117

do.end117:                                        ; preds = %if.then107, %do.body93, %if.end86.do.end117_crit_edge
  %arrayidx = getelementptr %struct.tsi721_dma_desc, ptr %call.i, i32 %bd_num
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 96, ptr %arrayidx, align 32
  %39 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bd_phys, align 4
  %41 = and i32 %40, -32
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = getelementptr %struct.tsi721_dma_desc, ptr %call.i, i32 %bd_num, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %43, align 8
  %45 = getelementptr %struct.tsi721_dma_desc, ptr %call.i, i32 %bd_num, i32 3
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %45, align 4
  %regs = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 1
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !169
  %49 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bd_phys, align 4
  %51 = and i32 %50, -32
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr132 = getelementptr i8, ptr %53, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  %54 = call i32 @llvm.bswap.i32(i32 %51) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %54) #7, !srcloc !169
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr137 = getelementptr i8, ptr %56, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 0) #7, !srcloc !169
  %57 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sts_phys, align 4
  %59 = and i32 %58, -64
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr142 = getelementptr i8, ptr %61, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  %62 = call i32 @llvm.bswap.i32(i32 %59) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %62) #7, !srcloc !169
  %63 = call i32 @llvm.ctlz.i32(i32 %cond78, i1 true) #7, !range !174
  %sub144 = sub nsw i32 27, %63
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr146 = getelementptr i8, ptr %65, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  %66 = call i32 @llvm.bswap.i32(i32 %sub144) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %66) #7, !srcloc !169
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %add.ptr148 = getelementptr i8, ptr %68, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 520093696) #7, !srcloc !169
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %add.ptr150 = getelementptr i8, ptr %70, i32 12
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #7, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %flags = getelementptr inbounds %struct.tsi721_device, ptr %7, i32 0, i32 2
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 8
  %and152 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.end117.if.end253_crit_edge, label %if.then154

do.end117.if.end253_crit_edge:                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253

if.then154:                                       ; preds = %do.end117
  %74 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bdma_chan, align 4
  %add156 = add i32 %75, 18
  %arrayidx157 = getelementptr %struct.tsi721_device, ptr %7, i32 0, i32 4, i32 %add156
  %76 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx157, align 2
  %conv158 = zext i16 %77 to i32
  %irq_name = getelementptr %struct.tsi721_device, ptr %7, i32 0, i32 4, i32 %add156, i32 1
  %call.i363 = call i32 @request_threaded_irq(i32 noundef %conv158, ptr noundef nonnull @tsi721_bdma_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name, ptr noundef %bdma_chan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i363)
  %tobool162.not = icmp eq i32 %call.i363, 0
  br i1 %tobool162.not, label %if.end193, label %do.body164

do.body164:                                       ; preds = %if.then154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %78 = load i32, ptr @tsi_dbg_level, align 4
  %and165 = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %do.body164.if.then245_crit_edge, label %do.body168

do.body164.if.then245_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then245

do.body168:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_ch_init, %if.then245)) #7
          to label %if.then182 [label %if.then245], !srcloc !173

if.then182:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  %dev184 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %79 = ptrtoint ptr %dev184 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev184, align 4
  %device185 = getelementptr inbounds %struct.dma_chan_dev, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bdma_chan, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug247, ptr noundef %device185, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42, i32 noundef %82) #7
  br label %if.then245

if.end193:                                        ; preds = %if.then154
  %83 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bdma_chan, align 4
  %add195 = add i32 %84, 26
  %arrayidx197 = getelementptr %struct.tsi721_device, ptr %7, i32 0, i32 4, i32 %add195
  %85 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx197, align 2
  %conv199 = zext i16 %86 to i32
  %irq_name202 = getelementptr %struct.tsi721_device, ptr %7, i32 0, i32 4, i32 %add195, i32 1
  %call.i364 = call i32 @request_threaded_irq(i32 noundef %conv199, ptr noundef nonnull @tsi721_bdma_msix, ptr noundef null, i32 noundef 0, ptr noundef %irq_name202, ptr noundef %bdma_chan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %tobool205.not = icmp eq i32 %call.i364, 0
  br i1 %tobool205.not, label %if.end193.if.end253_crit_edge, label %do.body207

if.end193.if.end253_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253

do.body207:                                       ; preds = %if.end193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tsi_dbg_level to i32))
  %87 = load i32, ptr @tsi_dbg_level, align 4
  %and208 = and i32 %87, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %do.body207.do.end235_crit_edge, label %do.body211

do.body207.do.end235_crit_edge:                   ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end235

do.body211:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tsi721_bdma_ch_init, %do.end235)) #7
          to label %if.then225 [label %do.end235], !srcloc !173

if.then225:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #9
  %dev227 = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 11, i32 5
  %88 = ptrtoint ptr %dev227 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev227, align 4
  %device228 = getelementptr inbounds %struct.dma_chan_dev, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bdma_chan, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug248, ptr noundef %device228, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.42, i32 noundef %91) #7
  br label %do.end235

do.end235:                                        ; preds = %if.then225, %do.body211, %do.body207.do.end235_crit_edge
  %92 = ptrtoint ptr %bdma_chan to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bdma_chan, align 4
  %add238 = add i32 %93, 18
  %arrayidx239 = getelementptr %struct.tsi721_device, ptr %7, i32 0, i32 4, i32 %add238
  %94 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx239, align 2
  %conv241 = zext i16 %95 to i32
  %call242 = call ptr @free_irq(i32 noundef %conv241, ptr noundef %bdma_chan) #7
  br label %if.then245

if.then245:                                       ; preds = %do.end235, %if.then182, %do.body168, %do.body164.if.then245_crit_edge
  %96 = ptrtoint ptr %bd_phys to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bd_phys, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %call.i, i32 noundef %97, i32 noundef 0) #7
  %98 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %bd_base, align 4
  %99 = ptrtoint ptr %sts_phys to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sts_phys, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef %mul79, ptr noundef nonnull %call.i362, i32 noundef %100, i32 noundef 0) #7
  %101 = ptrtoint ptr %sts_base to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %sts_base, align 4
  br label %cleanup259

if.end253:                                        ; preds = %if.end193.if.end253_crit_edge, %do.end117.if.end253_crit_edge
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 4
  %add.ptr255 = getelementptr i8, ptr %103, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255, i32 16777216) #7, !srcloc !169
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %add.ptr257 = getelementptr i8, ptr %105, i32 8
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr257) #7, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %wr_count_next = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 10
  %107 = ptrtoint ptr %wr_count_next to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %wr_count_next, align 4
  %wr_count = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 9
  %108 = ptrtoint ptr %wr_count to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %wr_count, align 4
  %sts_rdptr = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %bdma_chan, i32 0, i32 8
  %109 = ptrtoint ptr %sts_rdptr to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %sts_rdptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %110(i32 noundef 2147480) #7
  br label %cleanup259

cleanup259:                                       ; preds = %if.end253, %if.then245, %if.then82, %do.end16.cleanup259_crit_edge
  %retval.1 = phi i32 [ 0, %if.end253 ], [ -12, %if.then82 ], [ -12, %do.end16.cleanup259_crit_edge ], [ -5, %if.then245 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts_phys) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bd_phys) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_tx_submit(ptr noundef %txd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -44
  %desc_node = getelementptr inbounds %struct.tsi721_tx_desc, ptr %txd, i32 0, i32 5
  %2 = ptrtoint ptr %desc_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_node, align 4
  %cmp.i.not = icmp eq ptr %3, %desc_node
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %1, i32 20
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %7, ptr noundef %txd) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %1, i32 68
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %active = getelementptr i8, ptr %1, i32 156
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %13, 1
  %14 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #7
  %15 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cookie2.i, align 4
  %16 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %txd, align 4
  %status = getelementptr inbounds %struct.tsi721_tx_desc, ptr %txd, i32 0, i32 8
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %status, align 8
  %queue = getelementptr i8, ptr %1, i32 116
  %prev.i = getelementptr i8, ptr %1, i32 120
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %19, ptr noundef %queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add_tail.exit_crit_edge

if.end6.list_add_tail.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %desc_node, ptr %prev.i, align 4
  %21 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %queue, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.tsi721_tx_desc, ptr %txd, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %desc_node, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end6.list_add_tail.exit_crit_edge
  tail call fastcc void @tsi721_advance_work(ptr noundef %add.ptr.i, ptr noundef null)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then4, %do.end
  %retval.0 = phi i32 [ %14, %list_add_tail.exit ], [ -19, %if.then4 ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi721_bdma_msix(i32 noundef %irq, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %ptr, i32 0, i32 18
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %ptr, i32 0, i32 17, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet = getelementptr inbounds %struct.tsi721_bdma_chan, ptr %ptr, i32 0, i32 17
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !157}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_dma_desc_per_channel, !1, !"__param_dma_desc_per_channel", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_dma_desc_per_channeltype238, !1, !"__UNIQUE_ID_dma_desc_per_channeltype238", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dma_desc_per_channel239, !4, !"__UNIQUE_ID_dma_desc_per_channel239", i1 false, i1 false}
!4 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 34, i32 1}
!5 = !{ptr @__param_dma_txqueue_sz, !6, !"__param_dma_txqueue_sz", i1 false, i1 false}
!6 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_dma_txqueue_sztype240, !6, !"__UNIQUE_ID_dma_txqueue_sztype240", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_dma_txqueue_sz241, !9, !"__UNIQUE_ID_dma_txqueue_sz241", i1 false, i1 false}
!9 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 39, i32 1}
!10 = !{ptr @__param_dma_sel, !11, !"__param_dma_sel", i1 false, i1 false}
!11 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 43, i32 1}
!12 = !{ptr @__UNIQUE_ID_dma_seltype242, !11, !"__UNIQUE_ID_dma_seltype242", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dma_sel243, !14, !"__UNIQUE_ID_dma_sel243", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 44, i32 1}
!15 = !{ptr @tsi721_register_dma.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 985, i32 3}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 1013, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tsi721_register_dma._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tsi721_register_dma._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__param_str_dma_desc_per_channel, !1, !"__param_str_dma_desc_per_channel", i1 false, i1 false}
!27 = !{ptr @dma_desc_per_channel, !28, !"dma_desc_per_channel", i1 false, i1 false}
!28 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 32, i32 21}
!29 = !{ptr @__param_str_dma_txqueue_sz, !6, !"__param_str_dma_txqueue_sz", i1 false, i1 false}
!30 = !{ptr @dma_txqueue_sz, !31, !"dma_txqueue_sz", i1 false, i1 false}
!31 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 37, i32 21}
!32 = !{ptr @__param_str_dma_sel, !11, !"__param_str_dma_sel", i1 false, i1 false}
!33 = !{ptr @dma_sel, !34, !"dma_sel", i1 false, i1 false}
!34 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 42, i32 11}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 575, i32 2}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tsi721_dma_tasklet.__UNIQUE_ID_ddebug259, !36, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 586, i32 3}
!42 = !{ptr @tsi721_dma_tasklet._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tsi721_dma_tasklet._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 609, i32 4}
!46 = !{ptr @tsi721_dma_tasklet._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tsi721_dma_tasklet._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 650, i32 3}
!50 = !{ptr @tsi721_dma_tasklet._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tsi721_dma_tasklet._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 537, i32 2}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tsi721_advance_work.__UNIQUE_ID_ddebug256, !53, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 559, i32 4}
!58 = !{ptr @tsi721_advance_work.__UNIQUE_ID_ddebug257, !57, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 565, i32 2}
!61 = !{ptr @tsi721_advance_work.__UNIQUE_ID_ddebug258, !60, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 426, i32 3}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tsi721_submit_sg._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @tsi721_submit_sg._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 450, i32 2}
!69 = !{ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug250, !68, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 455, i32 3}
!72 = !{ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug251, !71, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 460, i32 4}
!75 = !{ptr @tsi721_submit_sg._entry.24, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tsi721_submit_sg._entry_ptr.26, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 478, i32 4}
!79 = !{ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug252, !78, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 485, i32 4}
!82 = !{ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug253, !81, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 496, i32 4}
!85 = !{ptr @tsi721_submit_sg._entry.29, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tsi721_submit_sg._entry_ptr.31, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 500, i32 3}
!89 = !{ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug254, !88, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 516, i32 4}
!92 = !{ptr @tsi721_submit_sg.__UNIQUE_ID_ddebug255, !91, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 306, i32 3}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tsi721_start_dma._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @tsi721_start_dma._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 313, i32 3}
!100 = !{ptr @tsi721_start_dma._entry.36, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @tsi721_start_dma._entry_ptr.38, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 319, i32 2}
!104 = !{ptr @tsi721_start_dma.__UNIQUE_ID_ddebug249, !103, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 727, i32 2}
!107 = !{ptr @tsi721_alloc_chan_resources.__UNIQUE_ID_ddebug260, !106, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 734, i32 3}
!110 = !{ptr @tsi721_alloc_chan_resources._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tsi721_alloc_chan_resources._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 75, i32 2}
!114 = !{ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug244, !113, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 91, i32 2}
!117 = !{ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug245, !116, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 115, i32 2}
!120 = !{ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug246, !119, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 156, i32 4}
!123 = !{ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug247, !122, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 168, i32 4}
!126 = !{ptr @tsi721_bdma_ch_init.__UNIQUE_ID_ddebug248, !125, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 699, i32 3}
!129 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @tsi721_tx_submit._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @tsi721_tx_submit._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 783, i32 2}
!134 = !{ptr @tsi721_free_chan_resources.__UNIQUE_ID_ddebug261, !133, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 814, i32 2}
!137 = !{ptr @tsi721_issue_pending.__UNIQUE_ID_ddebug262, !136, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 836, i32 3}
!140 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @tsi721_prep_rio_sg._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @tsi721_prep_rio_sg._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 841, i32 2}
!145 = !{ptr @tsi721_prep_rio_sg.__UNIQUE_ID_ddebug263, !144, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!146 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 860, i32 3}
!150 = !{ptr @tsi721_prep_rio_sg._entry.56, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tsi721_prep_rio_sg._entry_ptr.58, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 885, i32 3}
!154 = !{ptr @tsi721_prep_rio_sg.__UNIQUE_ID_ddebug264, !153, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!155 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/rapidio/devices/tsi721_dma.c", i32 899, i32 2}
!157 = !{ptr @tsi721_terminate_all.__UNIQUE_ID_ddebug265, !156, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2148898045}
!169 = !{i64 711099}
!170 = !{i8 0, i8 2}
!171 = !{i64 711517}
!172 = !{i64 2148896690}
!173 = !{i64 2148178256, i64 2148178261, i64 2148178274, i64 2148178318, i64 2148178352, i64 2148178373}
!174 = !{i32 0, i32 33}
!175 = !{!"branch_weights", i32 1, i32 2000}
!176 = !{i64 2154626732, i64 2154627241, i64 2154626769, i64 2154626825, i64 2154626859, i64 2154626883, i64 2154626924, i64 2154626945, i64 2154626973, i64 2154627007}
!177 = !{i64 2154628254}
!178 = !{!"auto-init"}
