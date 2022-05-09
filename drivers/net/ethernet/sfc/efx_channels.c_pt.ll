; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/efx_channels.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/efx_channels.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.162 }
%union.anon.162 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.efx_channel_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.191, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.191 = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@efx_interrupt_mode = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_irq_adapt_low_thresh = internal constant [25 x i8] c"sfc.irq_adapt_low_thresh\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@irq_adapt_low_thresh = internal global { i32, [28 x i8] } { i32 8000, [28 x i8] zeroinitializer }, align 32
@__param_irq_adapt_low_thresh = internal constant %struct.kernel_param { ptr @__param_str_irq_adapt_low_thresh, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.162 { ptr @irq_adapt_low_thresh } }, section "__param", align 4
@__UNIQUE_ID_irq_adapt_low_threshtype574 = internal constant [39 x i8] c"sfc.parmtype=irq_adapt_low_thresh:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_adapt_low_thresh575 = internal constant [74 x i8] c"sfc.parm=irq_adapt_low_thresh:Threshold score for reducing IRQ moderation\00", section ".modinfo", align 1
@__param_str_irq_adapt_high_thresh = internal constant [26 x i8] c"sfc.irq_adapt_high_thresh\00", align 1
@irq_adapt_high_thresh = internal global { i32, [28 x i8] } { i32 16000, [28 x i8] zeroinitializer }, align 32
@__param_irq_adapt_high_thresh = internal constant %struct.kernel_param { ptr @__param_str_irq_adapt_high_thresh, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.162 { ptr @irq_adapt_high_thresh } }, section "__param", align 4
@__UNIQUE_ID_irq_adapt_high_threshtype576 = internal constant [40 x i8] c"sfc.parmtype=irq_adapt_high_thresh:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_adapt_high_thresh577 = internal constant [77 x i8] c"sfc.parm=irq_adapt_high_thresh:Threshold score for increasing IRQ moderation\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not enable MSI-X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"WARNING: Insufficient MSI-X vectors available (%d < %u).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WARNING: Performance may be reduced.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not enable MSI\0A\00", [42 x i8] zeroinitializer }, align 32
@efx_separate_tx_channels = external dso_local local_unnamed_addr global i8, align 1
@efx_probe_eventq.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_probe_eventq\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/sfc/efx_channels.c\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"chan %d create event queue\0A\00", [36 x i8] zeroinitializer }, align 32
@efx_init_eventq.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efx_init_eventq\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chan %d init event queue\0A\00", [38 x i8] zeroinitializer }, align 32
@efx_start_eventq.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_start_eventq\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chan %d start event queue\0A\00", [37 x i8] zeroinitializer }, align 32
@efx_fini_eventq.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efx_fini_eventq\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chan %d fini event queue\0A\00", [38 x i8] zeroinitializer }, align 32
@efx_remove_eventq.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.14, ptr @.str.6, ptr @.str.15, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_remove_eventq\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"chan %d remove event queue\0A\00", [36 x i8] zeroinitializer }, align 32
@efx_copy_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&rx_queue->slow_fill)\00", [41 x i8] zeroinitializer }, align 32
@efx_copy_channel.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&channel->filter_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@efx_copy_channel.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&channel->filter_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@efx_get_channel_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-xdp\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-rx\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-tx\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@efx_remove_channel.__UNIQUE_ID_ddebug611 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_remove_channel\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"destroy chan %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unable to restart interrupts on channel reallocation\0A\00", [42 x i8] zeroinitializer }, align 32
@efx_set_channels.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_set_channels\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Channel %u TXQ %u is HW %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to flush queues\0A\00", [40 x i8] zeroinitializer }, align 32
@efx_stop_channels.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 1, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_stop_channels\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"successfully flushed all queues\0A\00", [63 x i8] zeroinitializer }, align 32
@rss_cpus = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RSS disabled due to allocation failure\0A\00", [56 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@efx_wanted_parallelism.__UNIQUE_ID_ddebug578 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.36, ptr @.str.6, ptr @.str.37, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efx_wanted_parallelism\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Reducing number of rx queues from %u to %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"Reducing number of RSS channels from %u to %u for VF support. Increase vf-msix-limit to use more channels on the PF.\0A\00", [42 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.40 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Insufficient resources for %d XDP event queues (%d other channels, max %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"XDP_TX and XDP_REDIRECT might decrease device's performance\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Insufficient resources for %d XDP TX queues (%d other channels, max VIs %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"XDP_TX and XDP_REDIRECT will work with reduced performance (%d cpus/tx_queue)\0A\00", [49 x i8] zeroinitializer }, align 32
@efx_allocate_msix_channels.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.44, ptr @.str.6, ptr @.str.45, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efx_allocate_msix_channels\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Allocating %d TX and %d event queues for XDP\0A\00", [50 x i8] zeroinitializer }, align 32
@efx_allocate_msix_channels.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.44, ptr @.str.6, ptr @.str.46, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Allocating %u RX channels\0A\00", [37 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@efx_default_channel_type = internal constant { %struct.efx_channel_type, [32 x i8] } { %struct.efx_channel_type { ptr null, ptr @efx_channel_dummy_op_int, ptr @efx_channel_dummy_op_void, ptr @efx_get_channel_name, ptr @efx_copy_channel, ptr null, ptr @efx_default_channel_want_txqs, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@efx_alloc_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@efx_alloc_channel.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@efx_alloc_channel.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@efx_probe_channel.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_probe_channel\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"creating channel %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device is disabled due to earlier errors\0A\00", [54 x i8] zeroinitializer }, align 32
@efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.52, ptr @.str.6, ptr @.str.53, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efx_set_xdp_tx_queue\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Channel %u TXQ %u is XDP %u, HW %u\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"efx_interrupt_mode\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 28, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"irq_adapt_low_thresh\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 39, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"irq_adapt_high_thresh\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 44, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 285, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 292, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 295, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 318, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 429, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 450, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 465, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 491, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 500, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 631, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 633, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 687, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 690, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 692, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 694, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 697, i32 21 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 726, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 746, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 852, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 929, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1153, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1155, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"rss_cpus\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 37, i32 14 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 91, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 109, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 122, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 172, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 175, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 179, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 191, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 203, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 248, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"efx_default_channel_type\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 67, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 554, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 559, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 645, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [41 x i8] c"../drivers/net/ethernet/sfc/efx_common.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 68, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [43 x i8] c"../drivers/net/ethernet/sfc/efx_channels.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 877, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_irq_adapt_high_thresh577, ptr @__UNIQUE_ID_irq_adapt_high_threshtype576, ptr @__UNIQUE_ID_irq_adapt_low_thresh575, ptr @__UNIQUE_ID_irq_adapt_low_threshtype574, ptr @__param_irq_adapt_high_thresh, ptr @__param_irq_adapt_low_thresh, ptr @efx_interrupt_mode, ptr @irq_adapt_low_thresh, ptr @irq_adapt_high_thresh, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @efx_copy_channel.__key, ptr @.str.16, ptr @efx_copy_channel.__key.17, ptr @.str.18, ptr @efx_copy_channel.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @rss_cpus, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @efx_default_channel_type, ptr @efx_alloc_channel.__key, ptr @efx_alloc_channel.__key.47, ptr @efx_alloc_channel.__key.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_interrupt_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_adapt_low_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_adapt_high_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_copy_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_copy_channel.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_copy_channel.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rss_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_default_channel_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_alloc_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_alloc_channel.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_alloc_channel.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_channel_dummy_op_int(ptr nocapture readnone %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_channel_dummy_op_void(ptr nocapture %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_probe_interrupts(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  %xentries = alloca [32 x %struct.msix_entry], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 27, i32 0
  %arrayidx.1 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 27, i32 1
  %interrupt_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interrupt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then3:                                         ; preds = %entry
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp ne ptr %3, null
  %inc = zext i1 %tobool.not to i32
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp ne ptr %5, null
  %inc.1 = zext i1 %tobool.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %call = tail call fastcc i32 @efx_wanted_parallelism(ptr noundef %efx)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %xentries) #13
  %6 = call ptr @memset(ptr %xentries, i32 255, i32 256)
  %max_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 39
  %7 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_channels, align 4
  %call4 = tail call fastcc i32 @efx_allocate_msix_channels(ptr noundef %efx, i32 noundef %8, i32 noundef %spec.select.1, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %for.cond7.preheader, label %if.then3.do.body_crit_edge

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond7.preheader:                              ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp8275.not = icmp eq i32 %call4, 0
  br i1 %cmp8275.not, label %for.cond7.preheader.if.end16_crit_edge, label %for.cond7.preheader.for.body9_crit_edge

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.cond7.preheader.if.end16_crit_edge:           ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %i.1276 = phi i32 [ %inc13, %for.body9.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %conv = trunc i32 %i.1276 to i16
  %entry11 = getelementptr [32 x %struct.msix_entry], ptr %xentries, i32 0, i32 %i.1276, i32 1
  %9 = ptrtoint ptr %entry11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %entry11, align 4
  %inc13 = add nuw i32 %i.1276, 1
  %exitcond.not = icmp eq i32 %inc13, %call4
  br i1 %exitcond.not, label %for.body9.if.end16_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9

for.body9.if.end16_crit_edge:                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end16:                                         ; preds = %for.body9.if.end16_crit_edge, %for.cond7.preheader.if.end16_crit_edge
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 4
  %call15 = call i32 @pci_enable_msix_range(ptr noundef %11, ptr noundef nonnull %xentries, i32 noundef 1, i32 noundef %call4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.end16.do.body_crit_edge, label %if.else28

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %if.end16.do.body_crit_edge, %if.then3.do.body_crit_edge
  %rc.0268 = phi i32 [ %call15, %if.end16.do.body_crit_edge ], [ %call4, %if.then3.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body.do.end_crit_edge, label %if.then21

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str) #16
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body.do.end_crit_edge
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %min_interrupt_mode = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 132
  %18 = ptrtoint ptr %min_interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_interrupt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23.not = icmp eq i32 %19, 0
  br i1 %cmp23.not, label %cleanup165.critedge, label %if.end51.thread

if.end51.thread:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %interrupt_mode, align 4
  br label %cleanup

if.else28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %call4)
  %cmp29 = icmp ult i32 %call15, %call4
  br i1 %cmp29, label %do.body32, label %if.else28.if.end51_crit_edge

if.else28.if.end51_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

do.body32:                                        ; preds = %if.else28
  %msg_enable33 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %21 = ptrtoint ptr %msg_enable33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable33, align 4
  %and34 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body32.do.body41_crit_edge, label %if.then36

do.body32.do.body41_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body41

if.then36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev37 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %23 = ptrtoint ptr %net_dev37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev37, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %call15, i32 noundef %call4) #16
  br label %do.body41

do.body41:                                        ; preds = %if.then36, %do.body32.do.body41_crit_edge
  %25 = ptrtoint ptr %msg_enable33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable33, align 4
  %and43 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body41.if.end51_crit_edge, label %if.then45

do.body41.if.end51_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then45:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev46 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %27 = ptrtoint ptr %net_dev46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev46, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #16
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %do.body41.if.end51_crit_edge, %if.else28.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp52.not = icmp eq i32 %call15, 0
  br i1 %cmp52.not, label %if.end51.cleanup_crit_edge, label %for.cond55.preheader

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond55.preheader:                             ; preds = %if.end51
  %n_channels56 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %29 = ptrtoint ptr %n_channels56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_channels56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp57277.not = icmp eq i32 %30, 0
  br i1 %cmp57277.not, label %for.cond55.preheader.cleanup_crit_edge, label %for.cond55.preheader.for.body59_crit_edge

for.cond55.preheader.for.body59_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body59

for.cond55.preheader.cleanup_crit_edge:           ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.cond55.preheader.for.body59_crit_edge
  %i.2278 = phi i32 [ %inc63, %for.body59.for.body59_crit_edge ], [ 0, %for.cond55.preheader.for.body59_crit_edge ]
  %arrayidx60 = getelementptr [32 x %struct.msix_entry], ptr %xentries, i32 0, i32 %i.2278
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx60, align 4
  %arrayidx.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.2278
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %irq = getelementptr inbounds %struct.efx_channel, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %irq, align 16
  %inc63 = add nuw i32 %i.2278, 1
  %36 = ptrtoint ptr %n_channels56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_channels56, align 8
  %cmp57 = icmp ult i32 %inc63, %37
  br i1 %cmp57, label %for.body59.for.body59_crit_edge, label %for.body59.cleanup_crit_edge

for.body59.cleanup_crit_edge:                     ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body59

cleanup:                                          ; preds = %for.body59.cleanup_crit_edge, %for.cond55.preheader.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end51.thread
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %xentries) #13
  %38 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %interrupt_mode, align 4
  br label %if.end68

if.end68:                                         ; preds = %cleanup, %entry.if.end68_crit_edge
  %39 = phi i32 [ %.pr, %cleanup ], [ %1, %entry.if.end68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp70 = icmp eq i32 %39, 1
  br i1 %cmp70, label %if.then72, label %if.end68.if.end103_crit_edge

if.end68.if.end103_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then72:                                        ; preds = %if.end68
  %n_channels73 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %40 = ptrtoint ptr %n_channels73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %n_channels73, align 8
  %n_rx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %41 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %n_rx_channels, align 4
  %n_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %42 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %n_tx_channels, align 8
  %n_xdp_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 49
  %43 = ptrtoint ptr %n_xdp_channels to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %n_xdp_channels, align 4
  %xdp_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 50
  %44 = ptrtoint ptr %xdp_channel_offset to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %xdp_channel_offset, align 8
  %pci_dev75 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %45 = ptrtoint ptr %pci_dev75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci_dev75, align 4
  %call76 = call i32 @pci_enable_msi(ptr noundef %46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %do.body85

if.then79:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %pci_dev75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev75, align 4
  %irq81 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %irq81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq81, align 4
  %arrayidx.i261 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 0
  %51 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i261, align 4
  %irq83 = getelementptr inbounds %struct.efx_channel, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %irq83 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %irq83, align 16
  br label %if.end103

do.body85:                                        ; preds = %if.then72
  %msg_enable86 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %54 = ptrtoint ptr %msg_enable86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_enable86, align 4
  %and87 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body85.do.end93_crit_edge, label %if.then89

do.body85.do.end93_crit_edge:                     ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end93

if.then89:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev90 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %56 = ptrtoint ptr %net_dev90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev90, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.3) #16
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %do.body85.do.end93_crit_edge
  %type94 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %58 = ptrtoint ptr %type94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %type94, align 4
  %min_interrupt_mode95 = getelementptr inbounds %struct.efx_nic_type, ptr %59, i32 0, i32 132
  %60 = ptrtoint ptr %min_interrupt_mode95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %min_interrupt_mode95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp96 = icmp ugt i32 %61, 1
  br i1 %cmp96, label %if.end103.thread, label %do.end93.cleanup165_crit_edge

do.end93.cleanup165_crit_edge:                    ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

if.end103.thread:                                 ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %interrupt_mode, align 4
  br label %if.then107

if.end103:                                        ; preds = %if.then79, %if.end68.if.end103_crit_edge
  %63 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr271 = load i32, ptr %interrupt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr271)
  %cmp105 = icmp eq i32 %.pr271, 2
  br i1 %cmp105, label %if.end103.if.then107_crit_edge, label %if.end103.if.end118_crit_edge

if.end103.if.end118_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

if.end103.if.then107_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

if.then107:                                       ; preds = %if.end103.if.then107_crit_edge, %if.end103.thread
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @efx_separate_tx_channels to i32))
  %64 = load i8, ptr @efx_separate_tx_channels, align 1, !range !142
  %narrow = add nuw nsw i8 %64, 1
  %add = zext i8 %narrow to i32
  %n_channels110 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %65 = ptrtoint ptr %n_channels110 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add, ptr %n_channels110, align 8
  %n_rx_channels111 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %66 = ptrtoint ptr %n_rx_channels111 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %n_rx_channels111, align 4
  %n_tx_channels112 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %67 = ptrtoint ptr %n_tx_channels112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %n_tx_channels112, align 8
  %n_xdp_channels113 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 49
  %68 = ptrtoint ptr %n_xdp_channels113 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %n_xdp_channels113, align 4
  %xdp_channel_offset115 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 50
  %69 = ptrtoint ptr %xdp_channel_offset115 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add, ptr %xdp_channel_offset115, align 8
  %pci_dev116 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %70 = ptrtoint ptr %pci_dev116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci_dev116, align 4
  %irq117 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 46
  %72 = ptrtoint ptr %irq117 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq117, align 4
  %legacy_irq = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 7
  %74 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %legacy_irq, align 16
  br label %if.end118

if.end118:                                        ; preds = %if.then107, %if.end103.if.end118_crit_edge
  %n_extra_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 47
  %75 = ptrtoint ptr %n_extra_tx_channels to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %n_extra_tx_channels, align 4
  %xdp_channel_offset119 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 50
  %76 = ptrtoint ptr %xdp_channel_offset119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %xdp_channel_offset119, align 8
  %tx_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 45
  %n_tx_channels129 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  %tobool126.not = icmp eq ptr %79, null
  br i1 %tobool126.not, label %if.end118.for.inc148_crit_edge, label %if.end128

if.end118.for.inc148_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc148

if.end128:                                        ; preds = %if.end118
  %80 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_channel_offset, align 4
  %82 = ptrtoint ptr %n_tx_channels129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_tx_channels129, align 8
  %add130 = add i32 %83, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add130)
  %cmp131.not = icmp ugt i32 %77, %add130
  br i1 %cmp131.not, label %if.else136, label %if.then133

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %79, align 4
  call void %85(ptr noundef %efx) #13
  br label %for.inc148

if.else136:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %77, -1
  %arrayidx.i262 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %dec
  %86 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i262, align 4
  %type140 = getelementptr inbounds %struct.efx_channel, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %type140 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %79, ptr %type140, align 8
  %89 = ptrtoint ptr %n_extra_tx_channels to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %n_extra_tx_channels, align 4
  %inc145 = add i32 %90, 1
  store i32 %inc145, ptr %n_extra_tx_channels, align 4
  br label %for.inc148

for.inc148:                                       ; preds = %if.else136, %if.then133, %if.end118.for.inc148_crit_edge
  %j.1 = phi i32 [ %77, %if.then133 ], [ %dec, %if.else136 ], [ %77, %if.end118.for.inc148_crit_edge ]
  %91 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.1, align 4
  %tobool126.not.1 = icmp eq ptr %92, null
  br i1 %tobool126.not.1, label %for.inc148.for.inc148.1_crit_edge, label %if.end128.1

for.inc148.for.inc148.1_crit_edge:                ; preds = %for.inc148
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc148.1

if.end128.1:                                      ; preds = %for.inc148
  %93 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_channel_offset, align 4
  %95 = ptrtoint ptr %n_tx_channels129 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_tx_channels129, align 8
  %add130.1 = add i32 %96, %94
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %add130.1)
  %cmp131.not.1 = icmp ugt i32 %j.1, %add130.1
  br i1 %cmp131.not.1, label %if.else136.1, label %if.then133.1

if.then133.1:                                     ; preds = %if.end128.1
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %92, align 4
  call void %98(ptr noundef %efx) #13
  br label %for.inc148.1

if.else136.1:                                     ; preds = %if.end128.1
  call void @__sanitizer_cov_trace_pc() #15
  %dec.1 = add i32 %j.1, -1
  %arrayidx.i262.1 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %dec.1
  %99 = ptrtoint ptr %arrayidx.i262.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i262.1, align 4
  %type140.1 = getelementptr inbounds %struct.efx_channel, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %type140.1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %92, ptr %type140.1, align 8
  %102 = ptrtoint ptr %n_extra_tx_channels to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n_extra_tx_channels, align 4
  %inc145.1 = add i32 %103, 1
  store i32 %inc145.1, ptr %n_extra_tx_channels, align 4
  br label %for.inc148.1

for.inc148.1:                                     ; preds = %if.else136.1, %if.then133.1, %for.inc148.for.inc148.1_crit_edge
  %n_rx_channels151 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %104 = ptrtoint ptr %n_rx_channels151 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %n_rx_channels151, align 4
  %type152 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %106 = ptrtoint ptr %type152 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %type152, align 4
  %sriov_wanted = getelementptr inbounds %struct.efx_nic_type, ptr %107, i32 0, i32 100
  %108 = ptrtoint ptr %sriov_wanted to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sriov_wanted, align 8
  %tobool153.not = icmp eq ptr %109, null
  br i1 %tobool153.not, label %if.end163, label %if.then154

if.then154:                                       ; preds = %for.inc148.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp155 = icmp ugt i32 %105, 1
  br i1 %cmp155, label %if.then154.cond.end_crit_edge, label %lor.lhs.false

if.then154.cond.end_crit_edge:                    ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.then154
  %call159 = call zeroext i1 %109(ptr noundef %efx) #13
  br i1 %call159, label %cond.false, label %lor.lhs.false.cond.end_crit_edge

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %vi_scale.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  %110 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vi_scale.i, align 8
  %shl.i = shl nuw i32 1, %111
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.lhs.false.cond.end_crit_edge, %if.then154.cond.end_crit_edge
  %cond161 = phi i32 [ %shl.i, %cond.false ], [ %105, %lor.lhs.false.cond.end_crit_edge ], [ %105, %if.then154.cond.end_crit_edge ]
  %rss_spread162 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %112 = ptrtoint ptr %rss_spread162 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %cond161, ptr %rss_spread162, align 16
  br label %cleanup165

if.end163:                                        ; preds = %for.inc148.1
  call void @__sanitizer_cov_trace_pc() #15
  %rss_spread164 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %113 = ptrtoint ptr %rss_spread164 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %105, ptr %rss_spread164, align 16
  br label %cleanup165

cleanup165.critedge:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %xentries) #13
  br label %cleanup165

cleanup165:                                       ; preds = %cleanup165.critedge, %if.end163, %cond.end, %do.end93.cleanup165_crit_edge
  %retval.1 = phi i32 [ 0, %cond.end ], [ 0, %if.end163 ], [ %rc.0268, %cleanup165.critedge ], [ %call76, %do.end93.cleanup165_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_wanted_parallelism(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  %thread_mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thread_mask) #13
  %0 = ptrtoint ptr %thread_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %thread_mask, align 4, !annotation !143
  %1 = load i32, ptr @rss_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.else:                                          ; preds = %entry
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %thread_mask, i32 noundef 3264) #13
  br i1 %call, label %for.cond.preheader, label %do.body, !prof !144

for.cond.preheader:                               ; preds = %if.else
  %call8112 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8112, i32 %2)
  %cmp113 = icmp ult i32 %call8112, %2
  br i1 %cmp113, label %for.cond.preheader.cpumask_test_cpu.exit_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.cpumask_test_cpu.exit_crit_edge: ; preds = %for.cond.preheader
  br label %cpumask_test_cpu.exit

do.body:                                          ; preds = %if.else
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %5 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.35) #16
  br label %cleanup

cpumask_test_cpu.exit:                            ; preds = %if.end12.cpumask_test_cpu.exit_crit_edge, %for.cond.preheader.cpumask_test_cpu.exit_crit_edge
  %call8115 = phi i32 [ %call8, %if.end12.cpumask_test_cpu.exit_crit_edge ], [ %call8112, %for.cond.preheader.cpumask_test_cpu.exit_crit_edge ]
  %count.0114 = phi i32 [ %count.1, %if.end12.cpumask_test_cpu.exit_crit_edge ], [ 0, %for.cond.preheader.cpumask_test_cpu.exit_crit_edge ]
  %7 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %thread_mask, align 4
  %div3.i.i = lshr i32 %call8115, 5
  %arrayidx.i.i = getelementptr i32, ptr %8, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %call8115, 31
  %11 = shl nuw i32 1, %and.i.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.else.i.i, label %cpumask_test_cpu.exit.if.end12_crit_edge

cpumask_test_cpu.exit.if.end12_crit_edge:         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.else.i.i:                                      ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %thread_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call8115, i32 5
  %14 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thread_mask, align 4
  %inc = add i32 %count.0114, 1
  call void @__bitmap_or(ptr noundef %15, ptr noundef %15, ptr noundef %thread_sibling, i32 noundef %13) #13
  br label %if.end12

if.end12:                                         ; preds = %if.else.i.i, %cpumask_test_cpu.exit.if.end12_crit_edge
  %count.1 = phi i32 [ %count.0114, %cpumask_test_cpu.exit.if.end12_crit_edge ], [ %inc, %if.else.i.i ]
  %call8 = call i32 @cpumask_next(i32 noundef %call8115, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %16
  br i1 %cmp, label %if.end12.cpumask_test_cpu.exit_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end12.cpumask_test_cpu.exit_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %count.1, %if.end12.for.end_crit_edge ]
  %17 = ptrtoint ptr %thread_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %thread_mask, align 4
  call void @free_cpumask_var(ptr noundef %18) #13
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry.if.end13_crit_edge
  %count.2 = phi i32 [ %count.0.lcssa, %for.end ], [ %1, %entry.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.2)
  %cmp14 = icmp ugt i32 %count.2, 32
  br i1 %cmp14, label %do.body16, label %if.end13.if.end54_crit_edge

if.end13.if.end54_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.body16:                                        ; preds = %if.end13
  %19 = load i32, ptr @rss_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  %msg_enable20 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable20, align 4
  %and21 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool17.not, label %do.body19, label %do.body42

do.body19:                                        ; preds = %do.body16
  br i1 %tobool22.not, label %do.body19.if.end54_crit_edge, label %do.body24

do.body19.if.end54_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

do.body24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_wanted_parallelism.__UNIQUE_ID_ddebug578, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_wanted_parallelism, %if.then33)) #13
          to label %if.end54 [label %if.then33], !srcloc !145

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev34 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_wanted_parallelism.__UNIQUE_ID_ddebug578, ptr noundef %23, ptr noundef nonnull @.str.37, i32 noundef %count.2, i32 noundef 32) #13
  br label %if.end54

do.body42:                                        ; preds = %do.body16
  br i1 %tobool22.not, label %do.body42.if.end54_crit_edge, label %if.then46

do.body42.if.end54_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev47 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %24 = ptrtoint ptr %net_dev47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev47, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.37, i32 noundef %count.2, i32 noundef 32) #16
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %do.body42.if.end54_crit_edge, %if.then33, %do.body24, %do.body19.if.end54_crit_edge, %if.end13.if.end54_crit_edge
  %count.3 = phi i32 [ %count.2, %if.end13.if.end54_crit_edge ], [ 32, %do.body42.if.end54_crit_edge ], [ 32, %if.then46 ], [ 32, %do.body19.if.end54_crit_edge ], [ 32, %if.then33 ], [ 32, %do.body24 ]
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %sriov_wanted = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 100
  %28 = ptrtoint ptr %sriov_wanted to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sriov_wanted, align 8
  %tobool55.not = icmp eq ptr %29, null
  br i1 %tobool55.not, label %if.end54.cleanup_crit_edge, label %if.then56

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %if.end54
  %call59 = call zeroext i1 %29(ptr noundef %efx) #13
  br i1 %call59, label %land.lhs.true, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then56
  %vi_scale.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  %30 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vi_scale.i, align 8
  %shl.i = shl nuw i32 1, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp61 = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %count.3, i32 %shl.i)
  %cmp64 = icmp ugt i32 %count.3, %shl.i
  %or.cond = select i1 %cmp61, i1 %cmp64, i1 false
  br i1 %or.cond, label %do.body66, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body66:                                        ; preds = %land.lhs.true
  %msg_enable67 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %32 = ptrtoint ptr %msg_enable67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable67, align 4
  %and68 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body66.do.end75_crit_edge, label %if.then70

do.body66.do.end75_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

if.then70:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev71 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %34 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev71, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.38, i32 noundef %count.3, i32 noundef %shl.i) #16
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %do.body66.do.end75_crit_edge
  %36 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vi_scale.i, align 8
  %shl.i110 = shl nuw i32 1, %37
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %land.lhs.true.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %do.body.cleanup_crit_edge ], [ %shl.i110, %do.end75 ], [ %count.3, %land.lhs.true.cleanup_crit_edge ], [ %count.3, %if.then56.cleanup_crit_edge ], [ %count.3, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thread_mask) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_allocate_msix_channels(ptr noundef %efx, i32 noundef %max_channels, i32 noundef %extra_channels, i32 noundef %parallelism) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @efx_separate_tx_channels to i32))
  %0 = load i8, ptr @efx_separate_tx_channels, align 1, !range !142
  %1 = zext i8 %0 to i32
  %spec.select = shl i32 %parallelism, %1
  %add = add i32 %spec.select, %extra_channels
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %2) #13
  %sub = add i32 %call4.i.i, 3
  %div5 = sdiv i32 %sub, 4
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %call6 = tail call i32 @pci_msix_vec_count(ptr noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %entry
  %5 = tail call i32 @llvm.umin.i32(i32 %call6, i32 %max_channels)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp16.not = icmp ugt i32 %5, %add
  br i1 %cmp16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end9
  %xdp_txq_queues_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 30
  %6 = ptrtoint ptr %xdp_txq_queues_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %xdp_txq_queues_mode, align 8
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then17.do.body21_crit_edge, label %if.then19

if.then17.do.body21_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.40, i32 noundef %div5, i32 noundef %add, i32 noundef %5) #16
  br label %do.body21

do.body21:                                        ; preds = %if.then19, %if.then17.do.body21_crit_edge
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and23 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body21.if.end86_crit_edge, label %if.then25

do.body21.if.end86_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev26 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %13 = ptrtoint ptr %net_dev26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev26, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.41) #16
  br label %if.end86

if.else:                                          ; preds = %if.end9
  %add30 = add i32 %call4.i.i, %add
  %max_vis = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 40
  %15 = ptrtoint ptr %max_vis to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_vis, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %16)
  %cmp31 = icmp ugt i32 %add30, %16
  br i1 %cmp31, label %if.then32, label %if.else53

if.then32:                                        ; preds = %if.else
  %xdp_txq_queues_mode33 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 30
  %17 = ptrtoint ptr %xdp_txq_queues_mode33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %xdp_txq_queues_mode33, align 8
  %msg_enable35 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %18 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable35, align 4
  %and36 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then32.do.body44_crit_edge, label %if.then38

if.then32.do.body44_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body44

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev39 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %20 = ptrtoint ptr %net_dev39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev39, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.42, i32 noundef %call4.i.i, i32 noundef %add, i32 noundef %16) #16
  br label %do.body44

do.body44:                                        ; preds = %if.then38, %if.then32.do.body44_crit_edge
  %22 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable35, align 4
  %and46 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body44.if.end86_crit_edge, label %if.then48

do.body44.if.end86_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then48:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev49 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %24 = ptrtoint ptr %net_dev49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev49, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.41) #16
  br label %if.end86

if.else53:                                        ; preds = %if.else
  %add54 = add i32 %div5, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %5)
  %cmp55 = icmp ugt i32 %add54, %5
  %xdp_txq_queues_mode57 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 30
  br i1 %cmp55, label %if.then56, label %if.else82

if.then56:                                        ; preds = %if.else53
  %26 = ptrtoint ptr %xdp_txq_queues_mode57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %xdp_txq_queues_mode57, align 8
  %msg_enable59 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %27 = ptrtoint ptr %msg_enable59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable59, align 4
  %and60 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then56.do.end66_crit_edge, label %if.then62

if.then56.do.end66_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end66

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev63 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %29 = ptrtoint ptr %net_dev63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev63, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.40, i32 noundef %div5, i32 noundef %add, i32 noundef %5) #16
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %if.then56.do.end66_crit_edge
  %sub67 = sub i32 %5, %add
  %31 = ptrtoint ptr %msg_enable59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable59, align 4
  %and70 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.end66.if.end86_crit_edge, label %if.then72

do.end66.if.end86_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then72:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev73 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %33 = ptrtoint ptr %net_dev73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev73, align 4
  %mul74 = shl i32 %sub67, 2
  %add75 = add i32 %call4.i.i, -1
  %sub76 = add i32 %add75, %mul74
  %div78 = sdiv i32 %sub76, %mul74
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.43, i32 noundef %div78) #16
  br label %if.end86

if.else82:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %xdp_txq_queues_mode57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %xdp_txq_queues_mode57, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else82, %if.then72, %do.end66.if.end86_crit_edge, %if.then48, %do.body44.if.end86_crit_edge, %if.then25, %do.body21.if.end86_crit_edge
  %n_xdp_ev.0 = phi i32 [ %div5, %if.then25 ], [ %div5, %do.body21.if.end86_crit_edge ], [ %div5, %if.then48 ], [ %div5, %do.body44.if.end86_crit_edge ], [ %sub67, %if.then72 ], [ %sub67, %do.end66.if.end86_crit_edge ], [ %div5, %if.else82 ]
  %xdp_txq_queues_mode87 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 30
  %36 = ptrtoint ptr %xdp_txq_queues_mode87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xdp_txq_queues_mode87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp88.not = icmp eq i32 %37, 2
  %n_xdp_channels112 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 49
  br i1 %cmp88.not, label %if.else111, label %if.then89

if.then89:                                        ; preds = %if.end86
  %38 = ptrtoint ptr %n_xdp_channels112 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %n_xdp_ev.0, ptr %n_xdp_channels112, align 4
  %xdp_tx_per_channel = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 51
  %39 = ptrtoint ptr %xdp_tx_per_channel to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %xdp_tx_per_channel, align 4
  %xdp_tx_queue_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 28
  %40 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call4.i.i, ptr %xdp_tx_queue_count, align 16
  %add90 = add i32 %n_xdp_ev.0, %add
  %msg_enable92 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %41 = ptrtoint ptr %msg_enable92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable92, align 4
  %and93 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.then89.if.end115_crit_edge, label %do.body96

if.then89.if.end115_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

do.body96:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_allocate_msix_channels.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_allocate_msix_channels, %if.then102)) #13
          to label %if.end115 [label %if.then102], !srcloc !145

if.then102:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev103 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %43 = ptrtoint ptr %net_dev103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_dev103, align 4
  %mul104 = shl i32 %n_xdp_ev.0, 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_allocate_msix_channels.__UNIQUE_ID_ddebug583, ptr noundef %44, ptr noundef nonnull @.str.45, i32 noundef %mul104, i32 noundef %n_xdp_ev.0) #13
  br label %if.end115

if.else111:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %n_xdp_channels112 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %n_xdp_channels112, align 4
  %xdp_tx_per_channel113 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 51
  %46 = ptrtoint ptr %xdp_tx_per_channel113 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %xdp_tx_per_channel113, align 4
  %xdp_tx_queue_count114 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 28
  %47 = ptrtoint ptr %xdp_tx_queue_count114 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call4.i.i, ptr %xdp_tx_queue_count114, align 16
  br label %if.end115

if.end115:                                        ; preds = %if.else111, %if.then102, %do.body96, %if.then89.if.end115_crit_edge
  %n_channels.1 = phi i32 [ %add90, %if.then102 ], [ %add90, %if.then89.if.end115_crit_edge ], [ %add, %if.else111 ], [ %add90, %do.body96 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %n_channels.1)
  %cmp116 = icmp ult i32 %call6, %n_channels.1
  br i1 %cmp116, label %do.body118, label %if.end115.if.end136_crit_edge

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

do.body118:                                       ; preds = %if.end115
  %msg_enable119 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %48 = ptrtoint ptr %msg_enable119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable119, align 4
  %and120 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body118.do.body127_crit_edge, label %if.then122

do.body118.do.body127_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body127

if.then122:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev123 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %50 = ptrtoint ptr %net_dev123 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev123, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.1, i32 noundef %call6, i32 noundef %n_channels.1) #16
  br label %do.body127

do.body127:                                       ; preds = %if.then122, %do.body118.do.body127_crit_edge
  %52 = ptrtoint ptr %msg_enable119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable119, align 4
  %and129 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body127.if.end136_crit_edge, label %if.then131

do.body127.if.end136_crit_edge:                   ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

if.then131:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev132 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %54 = ptrtoint ptr %net_dev132 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net_dev132, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.2) #16
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %do.body127.if.end136_crit_edge, %if.end115.if.end136_crit_edge
  %n_channels.2 = phi i32 [ %n_channels.1, %if.end115.if.end136_crit_edge ], [ %call6, %if.then131 ], [ %call6, %do.body127.if.end136_crit_edge ]
  %56 = tail call i32 @llvm.umin.i32(i32 %n_channels.2, i32 %5)
  %n_channels143 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %57 = ptrtoint ptr %n_channels143 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %n_channels143, align 8
  %n_xdp_channels144 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 49
  %58 = ptrtoint ptr %n_xdp_channels144 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_xdp_channels144, align 4
  %sub145 = sub i32 %56, %59
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @efx_separate_tx_channels to i32))
  %60 = load i8, ptr @efx_separate_tx_channels, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool146.not = icmp eq i8 %60, 0
  br i1 %tobool146.not, label %if.else171, label %if.then147

if.then147:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub145)
  %cmp150 = icmp ugt i32 %sub145, 3
  %div148356 = lshr i32 %sub145, 1
  %cond154 = select i1 %cmp150, i32 %div148356, i32 1
  %max_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 41
  %61 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_tx_channels, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %cond154, i32 %62)
  %sub162 = sub i32 %sub145, %63
  %64 = tail call i32 @llvm.umax.i32(i32 %sub162, i32 1)
  br label %if.end182

if.else171:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  %max_tx_channels172 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 41
  %65 = ptrtoint ptr %max_tx_channels172 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_tx_channels172, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %sub145, i32 %66)
  br label %if.end182

if.end182:                                        ; preds = %if.else171, %if.then147
  %.sink362 = phi i32 [ %67, %if.else171 ], [ %63, %if.then147 ]
  %sub162.sink = phi i32 [ 0, %if.else171 ], [ %sub162, %if.then147 ]
  %.sink = phi i32 [ %sub145, %if.else171 ], [ %64, %if.then147 ]
  %68 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %69 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 45
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub162.sink, ptr %69, align 4
  %71 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %72 = tail call i32 @llvm.umin.i32(i32 %.sink, i32 %parallelism)
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %71, align 4
  %74 = tail call i32 @llvm.umin.i32(i32 %.sink362, i32 %parallelism)
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %68, align 8
  %xdp_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 50
  %76 = ptrtoint ptr %xdp_channel_offset to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub145, ptr %xdp_channel_offset, align 8
  %msg_enable200 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %77 = ptrtoint ptr %msg_enable200 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable200, align 4
  %and201 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end182.do.end224_crit_edge, label %do.body204

if.end182.do.end224_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end224

do.body204:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_allocate_msix_channels.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_allocate_msix_channels, %if.then216)) #13
          to label %do.end224 [label %if.then216], !srcloc !145

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev217 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %79 = ptrtoint ptr %net_dev217 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev217, align 4
  %81 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %71, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_allocate_msix_channels.__UNIQUE_ID_ddebug598, ptr noundef %80, ptr noundef nonnull @.str.46, i32 noundef %82) #13
  br label %do.end224

do.end224:                                        ; preds = %if.then216, %do.body204, %if.end182.do.end224_crit_edge
  %83 = ptrtoint ptr %n_channels143 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_channels143, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end224, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %84, %do.end224 ], [ %call6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_set_interrupt_affinity(ptr nocapture noundef readonly %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not17 = icmp eq ptr %1, null
  br i1 %tobool.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.018 = phi ptr [ %1, %for.body.lr.ph ], [ %11, %cond.end.for.body_crit_edge ]
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel.018, i32 0, i32 1
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %call = tail call i32 @cpumask_local_spread(i32 noundef %3, i32 noundef -1) #13
  %irq = getelementptr inbounds %struct.efx_channel, ptr %channel.018, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 16
  %rem.i = and i32 %call, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %5, ptr noundef %add.ptr.i, i1 noundef zeroext true) #13
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  %add = add i32 %7, 1
  %8 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx9 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_clear_interrupt_affinity(ptr nocapture noundef readonly %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.013 = phi ptr [ %1, %for.body.lr.ph ], [ %9, %cond.end.for.body_crit_edge ]
  %irq = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 16
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %3, ptr noundef null, i1 noundef zeroext true) #13
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 1
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  %add = add i32 %5, 1
  %6 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp = icmp ult i32 %add, %7
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_remove_interrupts(ptr nocapture noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not16 = icmp eq ptr %1, null
  br i1 %tobool.not16, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.017 = phi ptr [ %1, %for.body.lr.ph ], [ %8, %cond.end.for.body_crit_edge ]
  %irq = getelementptr inbounds %struct.efx_channel, ptr %channel.017, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %irq, align 16
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel.017, i32 0, i32 1
  %3 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel2, align 4
  %add = add i32 %4, 1
  %5 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp ult i32 %add, %6
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_disable_msi(ptr noundef %10) #13
  %11 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_disable_msix(ptr noundef %12) #13
  %legacy_irq = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 7
  %13 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %legacy_irq, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_probe_eventq(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false48_crit_edge, label %do.body2

entry.cond.false48_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false48

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_probe_eventq.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_eventq, %if.then6)) #13
          to label %cond.false48 [label %if.then6], !srcloc !145

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_probe_eventq.__UNIQUE_ID_ddebug599, ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %7) #13
  br label %cond.false48

cond.false48:                                     ; preds = %if.then6, %do.body2, %entry.cond.false48_crit_edge
  %txq_entries = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txq_entries, align 64
  %rxq_entries = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %rxq_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxq_entries, align 4
  %add = add i32 %9, %11
  %sub.i88 = add i32 %add, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i88)
  %tobool.not.i.i.i = icmp eq i32 %sub.i88, 0
  br i1 %tobool.not.i.i.i, label %cond.false48.cond.end54.thread_crit_edge, label %cond.end54

cond.false48.cond.end54.thread_crit_edge:         ; preds = %cond.false48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end54.thread

cond.end54:                                       ; preds = %cond.false48
  call void @__sanitizer_cov_trace_pc() #15
  %12 = tail call i32 @llvm.ctlz.i32(i32 %sub.i88, i1 true) #13, !range !146
  %sub.i.i.i = sub nuw nsw i32 32, %12
  %cond55 = shl nuw i32 1, %sub.i.i.i
  %13 = tail call i32 @llvm.umax.i32(i32 %cond55, i32 512)
  %phi.bo = add i32 %13, -1
  br label %cond.end54.thread

cond.end54.thread:                                ; preds = %cond.end54, %cond.false48.cond.end54.thread_crit_edge
  %14 = phi i32 [ 511, %cond.false48.cond.end54.thread_crit_edge ], [ %phi.bo, %cond.end54 ]
  %eventq_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %15 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %eventq_mask, align 8
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type.i, align 4
  %ev_probe.i = getelementptr inbounds %struct.efx_nic_type, ptr %19, i32 0, i32 66
  %20 = ptrtoint ptr %ev_probe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ev_probe.i, align 8
  %call.i = tail call i32 %21(ptr noundef %channel) #13
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_init_eventq(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body3

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_eventq.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_init_eventq, %if.then7)) #13
          to label %do.end13 [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %channel8 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_eventq.__UNIQUE_ID_ddebug602, ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %7) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %do.body3, %entry.do.end13_crit_edge
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type.i, align 4
  %ev_init.i = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 67
  %12 = ptrtoint ptr %ev_init.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ev_init.i, align 4
  %call.i = tail call i32 %13(ptr noundef %channel) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then15, label %do.end13.if.end16_crit_edge

do.end13.if.end16_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %push_irq_moderation = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %push_irq_moderation to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %push_irq_moderation, align 8
  tail call void %17(ptr noundef %channel) #13
  %eventq_read_ptr = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 12
  %18 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %eventq_read_ptr, align 4
  %eventq_init = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 3
  %19 = ptrtoint ptr %eventq_init to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %eventq_init, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end13.if.end16_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_start_eventq(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_start_eventq.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_start_eventq, %if.then5)) #13
          to label %do.end9 [label %if.then5], !srcloc !145

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_start_eventq.__UNIQUE_ID_ddebug603, ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %9) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %enabled = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 4
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !147
  %napi_str = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %napi_str) #13
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i, align 4
  %ev_read_ack.i = getelementptr inbounds %struct.efx_nic_type, ptr %14, i32 0, i32 71
  %15 = ptrtoint ptr %ev_read_ack.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ev_read_ack.i, align 4
  tail call void %16(ptr noundef %channel) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_stop_eventq(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %napi_str = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str) #13
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_eventq(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %eventq_init = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 3
  %0 = ptrtoint ptr %eventq_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eventq_init, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end12_crit_edge, label %do.body3

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_eventq.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_fini_eventq, %if.then7)) #13
          to label %do.end12 [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %channel9 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %10 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_eventq.__UNIQUE_ID_ddebug604, ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %11) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3, %do.body.do.end12_crit_edge
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %ev_fini.i = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %ev_fini.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ev_fini.i, align 8
  tail call void %17(ptr noundef %channel) #13
  %18 = ptrtoint ptr %eventq_init to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %eventq_init, align 4
  br label %return

return:                                           ; preds = %do.end12, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_remove_eventq(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_eventq.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_remove_eventq, %if.then5)) #13
          to label %do.end9 [label %if.then5], !srcloc !145

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_eventq.__UNIQUE_ID_ddebug605, ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %9) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i, align 4
  %ev_remove.i = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 69
  %14 = ptrtoint ptr %ev_remove.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ev_remove.i, align 4
  tail call void %15(ptr noundef %channel) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_init_channels(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3200) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %efx_alloc_channel.exit.thread, label %if.end

efx_alloc_channel.exit.thread:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx27 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.029
  %1 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx27, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %efx, ptr %call7.i.i.i, align 128
  %channel2.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %channel2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.029, ptr %channel2.i, align 4
  %type.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @efx_default_channel_type, ptr %type.i, align 8
  %arrayidx.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %efx, ptr %arrayidx.i, align 128
  %queue.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 0, i32 1
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %queue.i, align 4
  %label.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 0, i32 2
  %7 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %label.i, align 8
  %channel5.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 0, i32 6
  %8 = ptrtoint ptr %channel5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %channel5.i, align 8
  %arrayidx.1.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %efx, ptr %arrayidx.1.i, align 128
  %queue.1.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 1, i32 1
  %10 = ptrtoint ptr %queue.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %queue.1.i, align 4
  %label.1.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 1, i32 2
  %11 = ptrtoint ptr %label.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %label.1.i, align 8
  %channel5.1.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 1, i32 6
  %12 = ptrtoint ptr %channel5.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %channel5.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %efx, ptr %arrayidx.2.i, align 128
  %queue.2.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 2, i32 1
  %14 = ptrtoint ptr %queue.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %queue.2.i, align 4
  %label.2.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 2, i32 2
  %15 = ptrtoint ptr %label.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %label.2.i, align 8
  %channel5.2.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 2, i32 6
  %16 = ptrtoint ptr %channel5.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %channel5.2.i, align 8
  %arrayidx.3.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %efx, ptr %arrayidx.3.i, align 128
  %queue.3.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 3, i32 1
  %18 = ptrtoint ptr %queue.3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %queue.3.i, align 4
  %label.3.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 3, i32 2
  %19 = ptrtoint ptr %label.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %label.3.i, align 8
  %channel5.3.i = getelementptr %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 46, i32 3, i32 6
  %20 = ptrtoint ptr %channel5.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %channel5.3.i, align 8
  %filter_work.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %filter_work.i, i32 noundef 0) #13
  %21 = ptrtoint ptr %filter_work.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %filter_work.i, align 64
  %lockdep_map.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 21, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @efx_alloc_channel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry13.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 21, i32 0, i32 1
  %22 = ptrtoint ptr %entry13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry13.i, ptr %entry13.i, align 4
  %prev.i.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry13.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 21, i32 0, i32 2
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @efx_filter_rfs_expire, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @efx_alloc_channel.__key.47) #13
  %rx_queue22.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 45
  %25 = ptrtoint ptr %rx_queue22.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %efx, ptr %rx_queue22.i, align 128
  %slow_fill.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i.i.i, i32 0, i32 45, i32 24
  tail call void @init_timer_key(ptr noundef %slow_fill.i, ptr noundef nonnull @efx_rx_slow_fill, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @efx_alloc_channel.__key.48) #13
  %arrayidx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.029
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 26, i32 %i.029
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %efx, ptr %arrayidx3, align 8
  %index = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 26, i32 %i.029, i32 1
  %28 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.029, ptr %index, align 4
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type, align 4
  %min_interrupt_mode = getelementptr inbounds %struct.efx_nic_type, ptr %30, i32 0, i32 132
  %31 = ptrtoint ptr %min_interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_interrupt_mode, align 4
  %33 = load i32, ptr @efx_interrupt_mode, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %32, i32 %33)
  %interrupt_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 15
  %35 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %interrupt_mode, align 4
  %max_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 39
  %36 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32, ptr %max_channels, align 4
  %max_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 41
  %37 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32, ptr %max_tx_channels, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %efx_alloc_channel.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %efx_alloc_channel.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_channels(ptr nocapture noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %1) #13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_copy_channel(ptr nocapture noundef readonly %old_channel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 3200) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i, ptr %old_channel, i32 3200)
  %napi_dev = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 7
  %2 = ptrtoint ptr %napi_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %napi_dev, align 8
  %napi_hash_node = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 8, i32 14
  %3 = ptrtoint ptr %napi_hash_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %napi_hash_node, align 8
  %pprev.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 8, i32 14, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i, align 4
  %napi_id = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %napi_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %napi_id, align 8
  %state = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 8
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 10
  %7 = call ptr @memset(ptr %eventq, i32 0, i32 20)
  %channel4 = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 0, i32 6
  %8 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel4, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %channel4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %channel4, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %buffer = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 0, i32 8
  %channel4.1 = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 1, i32 6
  %11 = call ptr @memset(ptr %buffer, i32 0, i32 28)
  %12 = ptrtoint ptr %channel4.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel4.1, align 8
  %tobool5.not.1 = icmp eq ptr %13, null
  br i1 %tobool5.not.1, label %if.end8.if.end8.1_crit_edge, label %if.then6.1

if.end8.if.end8.1_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.1

if.then6.1:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %channel4.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %channel4.1, align 8
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.then6.1, %if.end8.if.end8.1_crit_edge
  %buffer.1 = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 1, i32 8
  %channel4.2 = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 2, i32 6
  %15 = call ptr @memset(ptr %buffer.1, i32 0, i32 28)
  %16 = ptrtoint ptr %channel4.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel4.2, align 8
  %tobool5.not.2 = icmp eq ptr %17, null
  br i1 %tobool5.not.2, label %if.end8.1.if.end8.2_crit_edge, label %if.then6.2

if.end8.1.if.end8.2_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.2

if.then6.2:                                       ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %channel4.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %channel4.2, align 8
  br label %if.end8.2

if.end8.2:                                        ; preds = %if.then6.2, %if.end8.1.if.end8.2_crit_edge
  %buffer.2 = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 2, i32 8
  %channel4.3 = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 3, i32 6
  %19 = call ptr @memset(ptr %buffer.2, i32 0, i32 28)
  %20 = ptrtoint ptr %channel4.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channel4.3, align 8
  %tobool5.not.3 = icmp eq ptr %21, null
  br i1 %tobool5.not.3, label %if.end8.2.if.end8.3_crit_edge, label %if.then6.3

if.end8.2.if.end8.3_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.3

if.then6.3:                                       ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %channel4.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %channel4.3, align 8
  br label %if.end8.3

if.end8.3:                                        ; preds = %if.then6.3, %if.end8.2.if.end8.3_crit_edge
  %buffer.3 = getelementptr %struct.efx_channel, ptr %call7.i, i32 0, i32 46, i32 3, i32 8
  %buffer10 = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 45, i32 2
  %slow_fill = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 45, i32 24
  %23 = call ptr @memset(ptr %buffer10, i32 0, i32 24)
  %24 = call ptr @memset(ptr %buffer.3, i32 0, i32 28)
  tail call void @init_timer_key(ptr noundef %slow_fill, ptr noundef nonnull @efx_rx_slow_fill, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @efx_copy_channel.__key) #13
  %filter_work = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %filter_work, i32 noundef 0) #13
  %25 = ptrtoint ptr %filter_work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %filter_work, align 64
  %lockdep_map = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 21, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @efx_copy_channel.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry19 = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 21, i32 0, i32 1
  %26 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry19, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 21, i32 0, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @efx_filter_rfs_expire, ptr %func, align 4
  %timer = getelementptr inbounds %struct.efx_channel, ptr %call7.i, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @efx_copy_channel.__key.19) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8.3, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rx_slow_fill(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_filter_rfs_expire(ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %rfs_last_expiry = getelementptr i8, ptr %data, i32 -16
  %1 = ptrtoint ptr %rfs_last_expiry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rfs_last_expiry, align 16
  %sub = sub i32 %0, %2
  %rfs_filter_count = getelementptr i8, ptr %data, i32 -20
  %3 = ptrtoint ptr %rfs_filter_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfs_filter_count, align 4
  %mul = mul i32 %4, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 59999, i32 %mul)
  %cmp = icmp ugt i32 %mul, 59999
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %div = udiv i32 %mul, 3000
  %add.ptr = getelementptr i8, ptr %data, i32 -320
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 %div)
  %call4 = tail call zeroext i1 @__efx_filter_rfs_expire(ptr noundef %add.ptr, i32 noundef %5) #13
  br i1 %call4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %rfs_last_expiry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfs_last_expiry, align 16
  %add = add i32 %7, %sub
  store i32 %add, ptr %rfs_last_expiry, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %data, i32 noundef 3000) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_get_channel_name(ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %xdp_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %xdp_channel_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xdp_channel_offset, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %n_xdp_channels = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %n_xdp_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_xdp_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.rhs, label %if.then40.critedge

land.rhs:                                         ; preds = %land.lhs.true
  %.b68 = load i1, ptr @efx_get_channel_name.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.else_crit_edge, label %if.then, !prof !144

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @efx_get_channel_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 686, i32 noundef 9, ptr noundef null) #13
  br label %if.else

if.then40.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %3, %5
  br label %if.end53

if.else:                                          ; preds = %if.then, %land.rhs.if.else_crit_edge, %entry.if.else_crit_edge
  %tx_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 45
  %8 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_channel_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp42 = icmp eq i32 %9, 0
  br i1 %cmp42, label %if.else.if.end53_crit_edge, label %if.else44

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp46 = icmp ult i32 %3, %9
  %sub50 = select i1 %cmp46, i32 0, i32 %9
  %spec.select = sub i32 %3, %sub50
  %spec.select70 = select i1 %cmp46, ptr @.str.23, ptr @.str.24
  br label %if.end53

if.end53:                                         ; preds = %if.else44, %if.else.if.end53_crit_edge, %if.then40.critedge
  %number.0 = phi i32 [ %sub, %if.then40.critedge ], [ %3, %if.else.if.end53_crit_edge ], [ %spec.select, %if.else44 ]
  %type.0 = phi ptr [ @.str.21, %if.then40.critedge ], [ @.str.22, %if.else.if.end53_crit_edge ], [ %spec.select70, %if.else44 ]
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.25, ptr noundef %1, ptr noundef nonnull %type.0, i32 noundef %number.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_set_channel_names(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not17 = icmp eq ptr %1, null
  br i1 %tobool.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.018 = phi ptr [ %1, %for.body.lr.ph ], [ %13, %cond.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel.018, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %get_name = getelementptr inbounds %struct.efx_channel_type, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %get_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_name, align 4
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel.018, i32 0, i32 1
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  %name = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 26, i32 %7, i32 2
  tail call void %5(ptr noundef nonnull %channel.018, ptr noundef %name, i32 noundef 22) #13
  %8 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel2, align 4
  %add = add i32 %9, 1
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp = icmp ult i32 %add, %11
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx8 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_probe_channels(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %next_buffer_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 38
  %0 = ptrtoint ptr %next_buffer_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %next_buffer_table, align 8
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %1 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_channels, align 8
  %sub = add i32 %2, -1
  %arrayidx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not36 = icmp eq ptr %4, null
  br i1 %tobool.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry.for.body_crit_edge
  %channel.037 = phi ptr [ %14, %cond.end.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @efx_probe_channel(ptr noundef nonnull %channel.037)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.fail_crit_edge, label %if.then4

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  %channel5 = getelementptr inbounds %struct.efx_channel, ptr %channel.037, i32 0, i32 1
  %9 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel5, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.26, i32 noundef %10) #16
  br label %fail

for.inc:                                          ; preds = %for.body
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel.037, i32 0, i32 1
  %11 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %for.inc.for.end_crit_edge, label %cond.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %sub11 = add i32 %12, -1
  %arrayidx12 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %sub11
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %channel1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %15 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %channel1.i, align 8
  %tobool.not17.i = icmp eq ptr %16, null
  br i1 %tobool.not17.i, label %for.end.cleanup_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %channel.018.i = phi ptr [ %28, %cond.end.i.for.body.i_crit_edge ], [ %16, %for.end.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.efx_channel, ptr %channel.018.i, i32 0, i32 2
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type.i, align 8
  %get_name.i = getelementptr inbounds %struct.efx_channel_type, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %get_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_name.i, align 4
  %channel2.i = getelementptr inbounds %struct.efx_channel, ptr %channel.018.i, i32 0, i32 1
  %21 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel2.i, align 4
  %name.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 26, i32 %22, i32 2
  tail call void %20(ptr noundef nonnull %channel.018.i, ptr noundef %name.i, i32 noundef 22) #13
  %23 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel2.i, align 4
  %add.i = add i32 %24, 1
  %25 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp.i = icmp ult i32 %add.i, %26
  br i1 %cmp.i, label %cond.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end.i:                                       ; preds = %for.body.i
  %arrayidx8.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add.i
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx8.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %cond.end.i.cleanup_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fail:                                             ; preds = %if.then4, %do.body.fail_crit_edge
  %channel1.i26 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %29 = ptrtoint ptr %channel1.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel1.i26, align 8
  %tobool.not13.i = icmp eq ptr %30, null
  br i1 %tobool.not13.i, label %fail.efx_remove_channels.exit_crit_edge, label %fail.for.body.i32_crit_edge

fail.for.body.i32_crit_edge:                      ; preds = %fail
  br label %for.body.i32

fail.efx_remove_channels.exit_crit_edge:          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_remove_channels.exit

for.body.i32:                                     ; preds = %cond.end.i34.for.body.i32_crit_edge, %fail.for.body.i32_crit_edge
  %channel.014.i = phi ptr [ %36, %cond.end.i34.for.body.i32_crit_edge ], [ %30, %fail.for.body.i32_crit_edge ]
  tail call void @efx_remove_channel(ptr noundef nonnull %channel.014.i) #13
  %channel2.i29 = getelementptr inbounds %struct.efx_channel, ptr %channel.014.i, i32 0, i32 1
  %31 = ptrtoint ptr %channel2.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel2.i29, align 4
  %add.i30 = add i32 %32, 1
  %33 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i30, i32 %34)
  %cmp.i31 = icmp ult i32 %add.i30, %34
  br i1 %cmp.i31, label %cond.end.i34, label %for.body.i32.efx_remove_channels.exit_crit_edge

for.body.i32.efx_remove_channels.exit_crit_edge:  ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_remove_channels.exit

cond.end.i34:                                     ; preds = %for.body.i32
  %arrayidx6.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add.i30
  %35 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i33 = icmp eq ptr %36, null
  br i1 %tobool.not.i33, label %cond.end.i34.efx_remove_channels.exit_crit_edge, label %cond.end.i34.for.body.i32_crit_edge

cond.end.i34.for.body.i32_crit_edge:              ; preds = %cond.end.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i32

cond.end.i34.efx_remove_channels.exit_crit_edge:  ; preds = %cond.end.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_remove_channels.exit

efx_remove_channels.exit:                         ; preds = %cond.end.i34.efx_remove_channels.exit_crit_edge, %for.body.i32.efx_remove_channels.exit_crit_edge, %fail.efx_remove_channels.exit_crit_edge
  %xdp_tx_queues.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %37 = ptrtoint ptr %xdp_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xdp_tx_queues.i, align 4
  tail call void @kfree(ptr noundef %38) #13
  br label %cleanup

cleanup:                                          ; preds = %efx_remove_channels.exit, %cond.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %efx_remove_channels.exit ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ], [ 0, %cond.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_probe_channel(ptr noundef %channel) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_probe_channel.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_channel, %if.then5)) #13
          to label %do.end10 [label %if.then5], !srcloc !145

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_probe_channel.__UNIQUE_ID_ddebug610, ptr noundef %7, ptr noundef nonnull @.str.50, i32 noundef %9) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 8
  %pre_probe = getelementptr inbounds %struct.efx_channel_type, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pre_probe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pre_probe, align 4
  %call11 = tail call i32 %13(ptr noundef %channel) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.fail_crit_edge

do.end10.fail_crit_edge:                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end14:                                         ; preds = %do.end10
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel, align 128
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.cond.false48.i_crit_edge, label %do.body2.i

if.end14.cond.false48.i_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false48.i

do.body2.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_probe_eventq.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_channel, %if.then6.i)) #13
          to label %cond.false48.i [label %if.then6.i], !srcloc !145

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i, align 4
  %channel7.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %20 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_probe_eventq.__UNIQUE_ID_ddebug599, ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %21) #13
  br label %cond.false48.i

cond.false48.i:                                   ; preds = %if.then6.i, %do.body2.i, %if.end14.cond.false48.i_crit_edge
  %txq_entries.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 32
  %22 = ptrtoint ptr %txq_entries.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txq_entries.i, align 64
  %rxq_entries.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 31
  %24 = ptrtoint ptr %rxq_entries.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxq_entries.i, align 4
  %add.i = add i32 %23, %25
  %sub.i88.i = add i32 %add.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i88.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i88.i, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false48.i.efx_probe_eventq.exit_crit_edge, label %cond.end54.i

cond.false48.i.efx_probe_eventq.exit_crit_edge:   ; preds = %cond.false48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_probe_eventq.exit

cond.end54.i:                                     ; preds = %cond.false48.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = tail call i32 @llvm.ctlz.i32(i32 %sub.i88.i, i1 true) #13, !range !146
  %sub.i.i.i.i = sub nuw nsw i32 32, %26
  %cond55.i = shl nuw i32 1, %sub.i.i.i.i
  %27 = tail call i32 @llvm.umax.i32(i32 %cond55.i, i32 512) #13
  %phi.bo.i = add i32 %27, -1
  br label %efx_probe_eventq.exit

efx_probe_eventq.exit:                            ; preds = %cond.end54.i, %cond.false48.i.efx_probe_eventq.exit_crit_edge
  %28 = phi i32 [ 511, %cond.false48.i.efx_probe_eventq.exit_crit_edge ], [ %phi.bo.i, %cond.end54.i ]
  %eventq_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %29 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %eventq_mask.i, align 8
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %type.i.i, align 4
  %ev_probe.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %33, i32 0, i32 66
  %34 = ptrtoint ptr %ev_probe.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ev_probe.i.i, align 8
  %call.i.i = tail call i32 %35(ptr noundef %channel) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not, label %if.end18, label %efx_probe_eventq.exit.fail_crit_edge

efx_probe_eventq.exit.fail_crit_edge:             ; preds = %efx_probe_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end18:                                         ; preds = %efx_probe_eventq.exit
  %tx_queue21 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %36 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel1.i.i, align 4
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i70 = getelementptr inbounds %struct.efx_nic, ptr %39, i32 0, i32 50
  %40 = ptrtoint ptr %xdp_channel_offset.i.i70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xdp_channel_offset.i.i70, align 8
  %sub.i.i71 = sub i32 %37, %41
  %n_xdp_channels.i.i72 = getelementptr inbounds %struct.efx_nic, ptr %39, i32 0, i32 49
  %42 = ptrtoint ptr %n_xdp_channels.i.i72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_xdp_channels.i.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i71, i32 %43)
  %cmp.i.i73 = icmp ult i32 %sub.i.i71, %43
  %xdp_tx_per_channel.i74 = getelementptr inbounds %struct.efx_nic, ptr %39, i32 0, i32 51
  %tx_queues_per_channel.i75 = getelementptr inbounds %struct.efx_nic, ptr %39, i32 0, i32 48
  %retval.0.in.i76 = select i1 %cmp.i.i73, ptr %xdp_tx_per_channel.i74, ptr %tx_queues_per_channel.i75
  %44 = ptrtoint ptr %retval.0.in.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %retval.0.i6677 = load i32, ptr %retval.0.in.i76, align 4
  %add.ptr78 = getelementptr %struct.efx_tx_queue, ptr %tx_queue21, i32 %retval.0.i6677
  %cmp79 = icmp ult ptr %tx_queue21, %add.ptr78
  br i1 %cmp79, label %if.end18.for.body_crit_edge, label %if.end18.if.end29_crit_edge

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.080, i32 1
  %45 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel1.i.i, align 4
  %47 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %46, %50
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 49
  %51 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %52)
  %cmp.i.i = icmp ult i32 %sub.i.i, %52
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %48, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %53 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.0.i66 = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue21, i32 %retval.0.i66
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.end29_crit_edge

for.cond.if.end29_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end18.for.body_crit_edge
  %tx_queue.080 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %tx_queue21, %if.end18.for.body_crit_edge ]
  %call25 = tail call i32 @efx_probe_tx_queue(ptr noundef %tx_queue.080) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end29:                                         ; preds = %for.cond.if.end29_crit_edge, %if.end18.if.end29_crit_edge
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 1
  %54 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i67 = icmp sgt i32 %55, -1
  br i1 %cmp.i67, label %if.else32, label %if.end29.if.end43_crit_edge

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.else32:                                        ; preds = %if.end29
  %rx_queue33 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  br label %for.cond34

for.cond34:                                       ; preds = %for.body36.for.cond34_crit_edge, %if.else32
  %rx_queue.0 = phi ptr [ %rx_queue33, %if.else32 ], [ null, %for.body36.for.cond34_crit_edge ]
  %tobool35.not = icmp eq ptr %rx_queue.0, null
  br i1 %tobool35.not, label %for.cond34.if.end43_crit_edge, label %for.body36

for.cond34.if.end43_crit_edge:                    ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

for.body36:                                       ; preds = %for.cond34
  %call37 = tail call i32 @efx_probe_rx_queue(ptr noundef nonnull %rx_queue.0) #13
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.body36.for.cond34_crit_edge, label %for.body36.fail_crit_edge

for.body36.fail_crit_edge:                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

for.body36.for.cond34_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond34

if.end43:                                         ; preds = %for.cond34.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  %rx_list = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 44
  %56 = ptrtoint ptr %rx_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %rx_list, align 4
  br label %cleanup

fail:                                             ; preds = %for.body36.fail_crit_edge, %for.body.fail_crit_edge, %efx_probe_eventq.exit.fail_crit_edge, %do.end10.fail_crit_edge
  %rc.0 = phi i32 [ %call11, %do.end10.fail_crit_edge ], [ %call.i.i, %efx_probe_eventq.exit.fail_crit_edge ], [ %call37, %for.body36.fail_crit_edge ], [ %call25, %for.body.fail_crit_edge ]
  tail call void @efx_remove_channel(ptr noundef %channel)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end43
  %retval.0 = phi i32 [ %rc.0, %fail ], [ 0, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_remove_channels(ptr nocapture noundef readonly %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not13 = icmp eq ptr %1, null
  br i1 %tobool.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.014 = phi ptr [ %1, %for.body.lr.ph ], [ %7, %cond.end.for.body_crit_edge ]
  tail call void @efx_remove_channel(ptr noundef nonnull %channel.014)
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel.014, i32 0, i32 1
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %add = add i32 %3, 1
  %4 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ult i32 %add, %5
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %xdp_tx_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %8 = ptrtoint ptr %xdp_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xdp_tx_queues, align 4
  tail call void @kfree(ptr noundef %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_remove_channel(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_channel.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_remove_channel, %if.then5)) #13
          to label %do.end10 [label %if.then5], !srcloc !145

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_channel.__UNIQUE_ID_ddebug611, ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %9) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 1
  %10 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i = icmp sgt i32 %11, -1
  br i1 %cmp.i, label %if.else, label %do.end10.if.end15_crit_edge

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else:                                          ; preds = %do.end10
  %rx_queue13 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %tobool14.not44 = icmp eq ptr %rx_queue13, null
  br i1 %tobool14.not44, label %if.else.if.end15_crit_edge, label %for.body

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.body:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @efx_remove_rx_queue(ptr noundef nonnull %rx_queue13) #13
  br label %if.end15

if.end15:                                         ; preds = %for.body, %if.else.if.end15_crit_edge, %do.end10.if.end15_crit_edge
  %tx_queue19 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %12 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel1.i.i, align 4
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i46 = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %xdp_channel_offset.i.i46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xdp_channel_offset.i.i46, align 8
  %sub.i.i47 = sub i32 %13, %17
  %n_xdp_channels.i.i48 = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 49
  %18 = ptrtoint ptr %n_xdp_channels.i.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_xdp_channels.i.i48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i47, i32 %19)
  %cmp.i.i49 = icmp ult i32 %sub.i.i47, %19
  %xdp_tx_per_channel.i50 = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 51
  %tx_queues_per_channel.i51 = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 48
  %retval.0.in.i52 = select i1 %cmp.i.i49, ptr %xdp_tx_per_channel.i50, ptr %tx_queues_per_channel.i51
  %20 = ptrtoint ptr %retval.0.in.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0.i4253 = load i32, ptr %retval.0.in.i52, align 4
  %add.ptr54 = getelementptr %struct.efx_tx_queue, ptr %tx_queue19, i32 %retval.0.i4253
  %cmp55 = icmp ult ptr %tx_queue19, %add.ptr54
  br i1 %cmp55, label %if.end15.for.body24_crit_edge, label %if.end15.if.end27_crit_edge

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end15.for.body24_crit_edge:                    ; preds = %if.end15
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %if.end15.for.body24_crit_edge
  %tx_queue.056 = phi ptr [ %incdec.ptr, %for.body24.for.body24_crit_edge ], [ %tx_queue19, %if.end15.for.body24_crit_edge ]
  tail call void @efx_remove_tx_queue(ptr noundef %tx_queue.056) #13
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.056, i32 1
  %21 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel1.i.i, align 4
  %23 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 50
  %25 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %22, %26
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 49
  %27 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %28)
  %cmp.i.i = icmp ult i32 %sub.i.i, %28
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %29 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.0.i42 = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue19, i32 %retval.0.i42
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body24.for.body24_crit_edge, label %for.body24.if.end27_crit_edge

for.body24.if.end27_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

if.end27:                                         ; preds = %for.body24.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %.lcssa = phi ptr [ %15, %if.end15.if.end27_crit_edge ], [ %24, %for.body24.if.end27_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %.lcssa, i32 0, i32 22
  %30 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end27.efx_remove_eventq.exit_crit_edge, label %do.body1.i

if.end27.efx_remove_eventq.exit_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_remove_eventq.exit

do.body1.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_eventq.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_remove_channel, %if.then5.i)) #13
          to label %efx_remove_eventq.exit [label %if.then5.i], !srcloc !145

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel, align 128
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %33, i32 0, i32 83
  %34 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net_dev.i, align 4
  %36 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel1.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_eventq.__UNIQUE_ID_ddebug605, ptr noundef %35, ptr noundef nonnull @.str.15, i32 noundef %37) #13
  br label %efx_remove_eventq.exit

efx_remove_eventq.exit:                           ; preds = %if.then5.i, %do.body1.i, %if.end27.efx_remove_eventq.exit_crit_edge
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %type.i.i, align 4
  %ev_remove.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %41, i32 0, i32 69
  %42 = ptrtoint ptr %ev_remove.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ev_remove.i.i, align 4
  tail call void %43(ptr noundef %channel) #13
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 2
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %type, align 8
  %post_remove = getelementptr inbounds %struct.efx_channel_type, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %post_remove to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %post_remove, align 4
  tail call void %47(ptr noundef %channel) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_rx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_tx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_realloc_channels(ptr noundef %efx, i32 noundef %rxq_entries, i32 noundef %txq_entries) local_unnamed_addr #1 align 64 {
entry:
  %other_channel = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %other_channel) #13
  %0 = call ptr @memset(ptr %other_channel, i32 255, i32 128)
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 32
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i = icmp eq i32 %3, 2
  br i1 %switch.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup169_crit_edge, label %if.then3.i

do.body.i.cleanup169_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup169

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.51) #16
  br label %cleanup169

if.end:                                           ; preds = %entry
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %8 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel1, align 8
  %tobool2.not297 = icmp eq ptr %9, null
  br i1 %tobool2.not297, label %if.end.for.end60_crit_edge, label %for.body.lr.ph

if.end.for.end60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end60

for.body.lr.ph:                                   ; preds = %if.end
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 8
  br label %for.body

for.body:                                         ; preds = %cond.end58.for.body_crit_edge, %for.body.lr.ph
  %channel.0299 = phi ptr [ %9, %for.body.lr.ph ], [ %45, %cond.end58.for.body_crit_edge ]
  %next_buffer_table.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %next_buffer_table.5, %cond.end58.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 8
  %copy = getelementptr inbounds %struct.efx_channel_type, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %index = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entries, align 4
  %add = add i32 %19, %17
  %20 = tail call i32 @llvm.umax.i32(i32 %next_buffer_table.0298, i32 %add)
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 45, i32 1
  %21 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp slt i32 %22, 0
  %rx_queue9 = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 45
  %tobool11.not290 = icmp eq ptr %rx_queue9, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool11.not290
  br i1 %or.cond, label %if.end5.if.end23_crit_edge, label %for.body12

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body12:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %index13 = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 45, i32 3, i32 1
  %23 = ptrtoint ptr %index13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index13, align 4
  %entries15 = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 45, i32 3, i32 2
  %25 = ptrtoint ptr %entries15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entries15, align 4
  %add16 = add i32 %26, %24
  %27 = tail call i32 @llvm.umax.i32(i32 %20, i32 %add16)
  br label %if.end23

if.end23:                                         ; preds = %for.body12, %if.end5.if.end23_crit_edge
  %next_buffer_table.2 = phi i32 [ %20, %if.end5.if.end23_crit_edge ], [ %27, %for.body12 ]
  %tx_queue27 = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 1
  %28 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel1.i.i, align 4
  %30 = ptrtoint ptr %channel.0299 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel.0299, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %31, i32 0, i32 50
  %32 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %29, %33
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %31, i32 0, i32 49
  %34 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %35)
  %cmp.i.i = icmp ult i32 %sub.i.i, %35
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %31, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %31, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %36 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %retval.0.i274 = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue27, i32 %retval.0.i274
  %cmp32293 = icmp ult ptr %tx_queue27, %add.ptr
  br i1 %cmp32293, label %if.end23.for.body33_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23.for.body33_crit_edge:                    ; preds = %if.end23
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end23.for.body33_crit_edge
  %next_buffer_table.3295 = phi i32 [ %41, %for.body33.for.body33_crit_edge ], [ %next_buffer_table.2, %if.end23.for.body33_crit_edge ]
  %tx_queue.0294 = phi ptr [ %incdec.ptr, %for.body33.for.body33_crit_edge ], [ %tx_queue27, %if.end23.for.body33_crit_edge ]
  %index34 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0294, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %index34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index34, align 4
  %entries36 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0294, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %entries36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %entries36, align 8
  %add37 = add i32 %40, %38
  %41 = tail call i32 @llvm.umax.i32(i32 %next_buffer_table.3295, i32 %add37)
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0294, i32 1
  %cmp32 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp32, label %for.body33.for.body33_crit_edge, label %for.body33.cleanup_crit_edge

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body33

cleanup:                                          ; preds = %for.body33.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %next_buffer_table.5 = phi i32 [ %next_buffer_table.0298, %for.body.cleanup_crit_edge ], [ %next_buffer_table.2, %if.end23.cleanup_crit_edge ], [ %41, %for.body33.cleanup_crit_edge ]
  %channel49 = getelementptr inbounds %struct.efx_channel, ptr %channel.0299, i32 0, i32 1
  %42 = ptrtoint ptr %channel49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel49, align 4
  %add50 = add i32 %43, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %11)
  %cmp51 = icmp ult i32 %add50, %11
  br i1 %cmp51, label %cond.end58, label %cleanup.for.end60_crit_edge

cleanup.for.end60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end60

cond.end58:                                       ; preds = %cleanup
  %arrayidx56 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add50
  %44 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx56, align 4
  %tobool2.not = icmp eq ptr %45, null
  br i1 %tobool2.not, label %cond.end58.for.end60_crit_edge, label %cond.end58.for.body_crit_edge

cond.end58.for.body_crit_edge:                    ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end58.for.end60_crit_edge:                   ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end60

for.end60:                                        ; preds = %cond.end58.for.end60_crit_edge, %cleanup.for.end60_crit_edge, %if.end.for.end60_crit_edge
  %next_buffer_table.0.lcssa = phi i32 [ 0, %if.end.for.end60_crit_edge ], [ %next_buffer_table.5, %cond.end58.for.end60_crit_edge ], [ %next_buffer_table.5, %cleanup.for.end60_crit_edge ]
  %net_dev.i275 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %46 = ptrtoint ptr %net_dev.i275 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev.i275, align 4
  tail call fastcc void @local_bh_disable() #13
  tail call void @netif_tx_lock(ptr noundef %47) #13
  tail call void @netif_device_detach(ptr noundef %47) #13
  tail call void @netif_tx_unlock(ptr noundef %47) #13
  tail call fastcc void @local_bh_enable() #13
  tail call void @efx_stop_all(ptr noundef %efx) #13
  tail call void @efx_soft_disable_interrupts(ptr noundef %efx)
  %48 = call ptr @memset(ptr %other_channel, i32 0, i32 128)
  %n_channels63 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %49 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_channels63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp64303.not = icmp eq i32 %50, 0
  br i1 %cmp64303.not, label %for.end81.thread, label %for.end60.for.body65_crit_edge

for.end60.for.body65_crit_edge:                   ; preds = %for.end60
  br label %for.body65

for.end81.thread:                                 ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #15
  %rxq_entries82316 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 31
  %51 = ptrtoint ptr %rxq_entries82316 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rxq_entries82316, align 4
  %txq_entries83317 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 32
  %53 = ptrtoint ptr %txq_entries83317 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txq_entries83317, align 64
  store i32 %rxq_entries, ptr %rxq_entries82316, align 4
  store i32 %txq_entries, ptr %txq_entries83317, align 64
  br label %for.end98thread-pre-split

for.body65:                                       ; preds = %if.end78.for.body65_crit_edge, %for.end60.for.body65_crit_edge
  %i.0304 = phi i32 [ %inc, %if.end78.for.body65_crit_edge ], [ 0, %for.end60.for.body65_crit_edge ]
  %arrayidx67 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.0304
  %55 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx67, align 4
  %type68 = getelementptr inbounds %struct.efx_channel, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %type68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type68, align 8
  %copy69 = getelementptr inbounds %struct.efx_channel_type, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %copy69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %copy69, align 4
  %tobool70.not = icmp eq ptr %60, null
  br i1 %tobool70.not, label %for.body65.if.end75_crit_edge, label %if.then71

for.body65.if.end75_crit_edge:                    ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then71:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #15
  %call74 = tail call ptr %60(ptr noundef %56) #13
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %for.body65.if.end75_crit_edge
  %channel.1 = phi ptr [ %call74, %if.then71 ], [ %56, %for.body65.if.end75_crit_edge ]
  %tobool76.not = icmp eq ptr %channel.1, null
  br i1 %tobool76.not, label %if.end75.outthread-pre-split_crit_edge, label %if.end78

if.end75.outthread-pre-split_crit_edge:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %outthread-pre-split

if.end78:                                         ; preds = %if.end75
  %arrayidx79 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.0304
  %61 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %channel.1, ptr %arrayidx79, align 4
  %inc = add nuw i32 %i.0304, 1
  %62 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_channels63, align 8
  %cmp64 = icmp ult i32 %inc, %63
  br i1 %cmp64, label %if.end78.for.body65_crit_edge, label %for.end81

if.end78.for.body65_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body65

for.end81:                                        ; preds = %if.end78
  %rxq_entries82 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 31
  %64 = ptrtoint ptr %rxq_entries82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rxq_entries82, align 4
  %txq_entries83 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 32
  %66 = ptrtoint ptr %txq_entries83 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %txq_entries83, align 64
  store i32 %rxq_entries, ptr %rxq_entries82, align 4
  store i32 %txq_entries, ptr %txq_entries83, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp88305.not = icmp eq i32 %63, 0
  br i1 %cmp88305.not, label %for.end81.for.end98thread-pre-split_crit_edge, label %for.end81.do.body_crit_edge

for.end81.do.body_crit_edge:                      ; preds = %for.end81
  br label %do.body

for.end81.for.end98thread-pre-split_crit_edge:    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end98thread-pre-split

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.end81.do.body_crit_edge
  %i.1306 = phi i32 [ %inc97, %do.body.do.body_crit_edge ], [ 0, %for.end81.do.body_crit_edge ]
  %arrayidx91 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.1306
  %68 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx91, align 4
  %arrayidx92 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.1306
  %70 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx92, align 4
  store ptr %71, ptr %arrayidx91, align 4
  store ptr %69, ptr %arrayidx92, align 4
  %inc97 = add nuw i32 %i.1306, 1
  %72 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_channels63, align 8
  %cmp88 = icmp ult i32 %inc97, %73
  br i1 %cmp88, label %do.body.do.body_crit_edge, label %do.body.for.end98_crit_edge

do.body.for.end98_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end98

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end98thread-pre-split:                        ; preds = %for.end81.for.end98thread-pre-split_crit_edge, %for.end81.thread
  %.ph = phi i32 [ %67, %for.end81.for.end98thread-pre-split_crit_edge ], [ %54, %for.end81.thread ]
  %txq_entries83320.ph = phi ptr [ %txq_entries83, %for.end81.for.end98thread-pre-split_crit_edge ], [ %txq_entries83317, %for.end81.thread ]
  %.ph321 = phi i32 [ %65, %for.end81.for.end98thread-pre-split_crit_edge ], [ %52, %for.end81.thread ]
  %rxq_entries82319.ph = phi ptr [ %rxq_entries82, %for.end81.for.end98thread-pre-split_crit_edge ], [ %rxq_entries82316, %for.end81.thread ]
  %74 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr = load i32, ptr %n_channels63, align 8
  br label %for.end98

for.end98:                                        ; preds = %for.end98thread-pre-split, %do.body.for.end98_crit_edge
  %75 = phi i32 [ %.pr, %for.end98thread-pre-split ], [ %73, %do.body.for.end98_crit_edge ]
  %76 = phi i32 [ %.ph, %for.end98thread-pre-split ], [ %67, %do.body.for.end98_crit_edge ]
  %txq_entries83320 = phi ptr [ %txq_entries83320.ph, %for.end98thread-pre-split ], [ %txq_entries83, %do.body.for.end98_crit_edge ]
  %77 = phi i32 [ %.ph321, %for.end98thread-pre-split ], [ %65, %do.body.for.end98_crit_edge ]
  %rxq_entries82319 = phi ptr [ %rxq_entries82319.ph, %for.end98thread-pre-split ], [ %rxq_entries82, %do.body.for.end98_crit_edge ]
  %next_buffer_table99 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 38
  %78 = ptrtoint ptr %next_buffer_table99 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %next_buffer_table.0.lcssa, ptr %next_buffer_table99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp102307.not = icmp eq i32 %75, 0
  br i1 %cmp102307.not, label %for.end98.outthread-pre-split_crit_edge, label %for.end98.for.body103_crit_edge

for.end98.for.body103_crit_edge:                  ; preds = %for.end98
  br label %for.body103

for.end98.outthread-pre-split_crit_edge:          ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %outthread-pre-split

for.body103:                                      ; preds = %for.inc117.for.body103_crit_edge, %for.end98.for.body103_crit_edge
  %i.2308 = phi i32 [ %inc118, %for.inc117.for.body103_crit_edge ], [ 0, %for.end98.for.body103_crit_edge ]
  %arrayidx105 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.2308
  %79 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx105, align 4
  %type106 = getelementptr inbounds %struct.efx_channel, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %type106 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %type106, align 8
  %copy107 = getelementptr inbounds %struct.efx_channel_type, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %copy107 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %copy107, align 4
  %tobool108.not = icmp eq ptr %84, null
  br i1 %tobool108.not, label %for.body103.for.inc117_crit_edge, label %if.end110

for.body103.for.inc117_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc117

if.end110:                                        ; preds = %for.body103
  %call111 = tail call fastcc i32 @efx_probe_channel(ptr noundef %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %rollback

if.end114:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx105, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 128
  %net_dev.i276 = getelementptr inbounds %struct.efx_nic, ptr %88, i32 0, i32 83
  %89 = ptrtoint ptr %net_dev.i276 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_dev.i276, align 4
  %napi_dev.i = getelementptr inbounds %struct.efx_channel, ptr %86, i32 0, i32 7
  %91 = ptrtoint ptr %napi_dev.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %napi_dev.i, align 8
  %napi_str.i = getelementptr inbounds %struct.efx_channel, ptr %86, i32 0, i32 8
  tail call void @netif_napi_add(ptr noundef %90, ptr noundef %napi_str.i, ptr noundef nonnull @efx_poll, i32 noundef 64) #13
  br label %for.inc117

for.inc117:                                       ; preds = %if.end114, %for.body103.for.inc117_crit_edge
  %inc118 = add nuw i32 %i.2308, 1
  %92 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %n_channels63, align 8
  %cmp102 = icmp ult i32 %inc118, %93
  br i1 %cmp102, label %for.inc117.for.body103_crit_edge, label %for.inc117.out_crit_edge

for.inc117.out_crit_edge:                         ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc117.for.body103_crit_edge:                 ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body103

outthread-pre-split:                              ; preds = %for.end98.outthread-pre-split_crit_edge, %if.end75.outthread-pre-split_crit_edge
  %rc.2.ph = phi i32 [ 0, %for.end98.outthread-pre-split_crit_edge ], [ -12, %if.end75.outthread-pre-split_crit_edge ]
  %94 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr322 = load i32, ptr %n_channels63, align 8
  br label %out

out:                                              ; preds = %do.body156.out_crit_edge, %outthread-pre-split, %for.inc117.out_crit_edge
  %95 = phi i32 [ %.pr322, %outthread-pre-split ], [ %126, %do.body156.out_crit_edge ], [ %93, %for.inc117.out_crit_edge ]
  %rc.2 = phi i32 [ %rc.2.ph, %outthread-pre-split ], [ %call111, %do.body156.out_crit_edge ], [ 0, %for.inc117.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp122311.not = icmp eq i32 %95, 0
  br i1 %cmp122311.not, label %out.for.end133_crit_edge, label %out.for.body123_crit_edge

out.for.body123_crit_edge:                        ; preds = %out
  br label %for.body123

out.for.end133_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end133

for.body123:                                      ; preds = %for.inc131.for.body123_crit_edge, %out.for.body123_crit_edge
  %i.3312 = phi i32 [ %inc132, %for.inc131.for.body123_crit_edge ], [ 0, %out.for.body123_crit_edge ]
  %arrayidx124 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.3312
  %96 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx124, align 4
  %tobool125.not = icmp eq ptr %97, null
  br i1 %tobool125.not, label %for.body123.for.inc131_crit_edge, label %land.lhs.true

for.body123.for.inc131_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc131

land.lhs.true:                                    ; preds = %for.body123
  %type126 = getelementptr inbounds %struct.efx_channel, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %type126 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %type126, align 8
  %copy127 = getelementptr inbounds %struct.efx_channel_type, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %copy127 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %copy127, align 4
  %tobool128.not = icmp eq ptr %101, null
  br i1 %tobool128.not, label %land.lhs.true.for.inc131_crit_edge, label %if.then129

land.lhs.true.for.inc131_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc131

if.then129:                                       ; preds = %land.lhs.true
  %napi_dev.i277 = getelementptr inbounds %struct.efx_channel, ptr %97, i32 0, i32 7
  %102 = ptrtoint ptr %napi_dev.i277 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %napi_dev.i277, align 8
  %tobool.not.i278 = icmp eq ptr %103, null
  br i1 %tobool.not.i278, label %if.then129.efx_fini_napi_channel.exit_crit_edge, label %if.then.i

if.then129.efx_fini_napi_channel.exit_crit_edge:  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_fini_napi_channel.exit

if.then.i:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  %napi_str.i279 = getelementptr inbounds %struct.efx_channel, ptr %97, i32 0, i32 8
  tail call void @__netif_napi_del(ptr noundef %napi_str.i279) #13
  tail call void @synchronize_net() #13
  br label %efx_fini_napi_channel.exit

efx_fini_napi_channel.exit:                       ; preds = %if.then.i, %if.then129.efx_fini_napi_channel.exit_crit_edge
  %104 = ptrtoint ptr %napi_dev.i277 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %napi_dev.i277, align 8
  tail call void @efx_remove_channel(ptr noundef nonnull %97)
  tail call void @kfree(ptr noundef nonnull %97) #13
  br label %for.inc131

for.inc131:                                       ; preds = %efx_fini_napi_channel.exit, %land.lhs.true.for.inc131_crit_edge, %for.body123.for.inc131_crit_edge
  %inc132 = add nuw i32 %i.3312, 1
  %105 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %n_channels63, align 8
  %cmp122 = icmp ult i32 %inc132, %106
  br i1 %cmp122, label %for.inc131.for.body123_crit_edge, label %for.inc131.for.end133_crit_edge

for.inc131.for.end133_crit_edge:                  ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end133

for.inc131.for.body123_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body123

for.end133:                                       ; preds = %rollback.for.end133_crit_edge, %for.inc131.for.end133_crit_edge, %out.for.end133_crit_edge
  %rc.2325 = phi i32 [ %rc.2, %out.for.end133_crit_edge ], [ %call111, %rollback.for.end133_crit_edge ], [ %rc.2, %for.inc131.for.end133_crit_edge ]
  %call134 = tail call i32 @efx_soft_enable_interrupts(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.else148, label %if.then136

if.then136:                                       ; preds = %for.end133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2325)
  %tobool137.not = icmp eq i32 %rc.2325, 0
  %call134.rc.2 = select i1 %tobool137.not, i32 %call134, i32 %rc.2325
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %107 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %msg_enable, align 4
  %and = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool143.not = icmp eq i32 %and, 0
  br i1 %tobool143.not, label %if.then136.do.end147_crit_edge, label %if.then144

if.then136.do.end147_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147

if.then144:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %net_dev.i275 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %net_dev.i275, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %110, ptr noundef nonnull @.str.29) #16
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %if.then136.do.end147_crit_edge
  tail call void @efx_schedule_reset(ptr noundef %efx, i32 noundef 7) #13
  br label %cleanup169

if.else148:                                       ; preds = %for.end133
  tail call void @efx_start_all(ptr noundef %efx) #13
  %111 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp.not.i = icmp eq i32 %112, 2
  br i1 %cmp.not.i, label %if.else148.cleanup169_crit_edge, label %land.lhs.true.i

if.else148.cleanup169_crit_edge:                  ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup169

land.lhs.true.i:                                  ; preds = %if.else148
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %113 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i281 = icmp eq i32 %114, 0
  br i1 %tobool.not.i281, label %if.then.i283, label %land.lhs.true.i.cleanup169_crit_edge

land.lhs.true.i.cleanup169_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup169

if.then.i283:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %net_dev.i275 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %net_dev.i275, align 4
  tail call void @netif_device_attach(ptr noundef %116) #13
  br label %cleanup169

rollback:                                         ; preds = %if.end110
  %117 = ptrtoint ptr %rxq_entries82319 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %77, ptr %rxq_entries82319, align 4
  %118 = ptrtoint ptr %txq_entries83320 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %76, ptr %txq_entries83320, align 64
  %119 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %n_channels63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp154309.not = icmp eq i32 %120, 0
  br i1 %cmp154309.not, label %rollback.for.end133_crit_edge, label %rollback.do.body156_crit_edge

rollback.do.body156_crit_edge:                    ; preds = %rollback
  br label %do.body156

rollback.for.end133_crit_edge:                    ; preds = %rollback
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end133

do.body156:                                       ; preds = %do.body156.do.body156_crit_edge, %rollback.do.body156_crit_edge
  %i.4310 = phi i32 [ %inc167, %do.body156.do.body156_crit_edge ], [ 0, %rollback.do.body156_crit_edge ]
  %arrayidx159 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %i.4310
  %121 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx159, align 4
  %arrayidx160 = getelementptr [32 x ptr], ptr %other_channel, i32 0, i32 %i.4310
  %123 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx160, align 4
  store ptr %124, ptr %arrayidx159, align 4
  store ptr %122, ptr %arrayidx160, align 4
  %inc167 = add nuw i32 %i.4310, 1
  %125 = ptrtoint ptr %n_channels63 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %n_channels63, align 8
  %cmp154 = icmp ult i32 %inc167, %126
  br i1 %cmp154, label %do.body156.do.body156_crit_edge, label %do.body156.out_crit_edge

do.body156.out_crit_edge:                         ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body156.do.body156_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body156

cleanup169:                                       ; preds = %if.then.i283, %land.lhs.true.i.cleanup169_crit_edge, %if.else148.cleanup169_crit_edge, %do.end147, %if.then3.i, %do.body.i.cleanup169_crit_edge
  %retval.0 = phi i32 [ %call134.rc.2, %do.end147 ], [ %rc.2325, %if.else148.cleanup169_crit_edge ], [ %rc.2325, %land.lhs.true.i.cleanup169_crit_edge ], [ %rc.2325, %if.then.i283 ], [ -5, %do.body.i.cleanup169_crit_edge ], [ -5, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %other_channel) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_stop_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_soft_disable_interrupts(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @efx_mcdi_mode_poll(ptr noundef %efx) #13
  %irq_soft_enabled = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 70
  %2 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %irq_soft_enabled, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %legacy_irq = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 7
  %3 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %legacy_irq, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @synchronize_irq(i32 noundef %4) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %channel7 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %5 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel7, align 8
  %tobool8.not39 = icmp eq ptr %6, null
  br i1 %tobool8.not39, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.040 = phi ptr [ %6, %for.body.lr.ph ], [ %40, %cond.end.for.body_crit_edge ]
  %irq = getelementptr inbounds %struct.efx_channel, ptr %channel.040, i32 0, i32 5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %for.body.if.end12_crit_edge, label %if.then10

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @synchronize_irq(i32 noundef %8) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body.if.end12_crit_edge
  %enabled.i = getelementptr inbounds %struct.efx_channel, ptr %channel.040, i32 0, i32 4
  %9 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled.i, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end12.efx_stop_eventq.exit_crit_edge, label %if.end.i

if.end12.efx_stop_eventq.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_stop_eventq.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %napi_str.i = getelementptr inbounds %struct.efx_channel, ptr %channel.040, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str.i) #13
  %11 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enabled.i, align 1
  br label %efx_stop_eventq.exit

efx_stop_eventq.exit:                             ; preds = %if.end.i, %if.end12.efx_stop_eventq.exit_crit_edge
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel.040, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 8
  %keep_eventq = getelementptr inbounds %struct.efx_channel_type, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %keep_eventq, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.then14, label %efx_stop_eventq.exit.for.inc_crit_edge

efx_stop_eventq.exit.for.inc_crit_edge:           ; preds = %efx_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then14:                                        ; preds = %efx_stop_eventq.exit
  %eventq_init.i = getelementptr inbounds %struct.efx_channel, ptr %channel.040, i32 0, i32 3
  %16 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %eventq_init.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i38 = icmp eq i8 %17, 0
  br i1 %tobool.not.i38, label %if.then14.for.inc_crit_edge, label %do.body.i

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body.i:                                        ; preds = %if.then14
  %18 = ptrtoint ptr %channel.040 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel.040, align 128
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_eventq.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_soft_disable_interrupts, %if.then7.i)) #13
          to label %do.end12.i [label %if.then7.i], !srcloc !145

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %channel.040 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel.040, align 128
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %23, i32 0, i32 83
  %24 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev.i, align 4
  %channel9.i = getelementptr inbounds %struct.efx_channel, ptr %channel.040, i32 0, i32 1
  %26 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_eventq.__UNIQUE_ID_ddebug604, ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef %27) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end12.i_crit_edge
  %28 = ptrtoint ptr %channel.040 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel.040, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i.i, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ev_fini.i.i, align 8
  tail call void %33(ptr noundef nonnull %channel.040) #13
  %34 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %eventq_init.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end12.i, %if.then14.for.inc_crit_edge, %efx_stop_eventq.exit.for.inc_crit_edge
  %channel16 = getelementptr inbounds %struct.efx_channel, ptr %channel.040, i32 0, i32 1
  %35 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel16, align 4
  %add = add i32 %36, 1
  %37 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %38)
  %cmp17 = icmp ult i32 %add, %38
  br i1 %cmp17, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx21 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx21, align 4
  %tobool8.not = icmp eq ptr %40, null
  br i1 %tobool8.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @efx_mcdi_flush_async(ptr noundef %efx) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_init_napi_channel(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %napi_dev = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 7
  %4 = ptrtoint ptr %napi_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %napi_dev, align 8
  %napi_str = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 8
  tail call void @netif_napi_add(ptr noundef %3, ptr noundef %napi_str, ptr noundef nonnull @efx_poll, i32 noundef 64) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_napi_channel(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_dev = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 7
  %0 = ptrtoint ptr %napi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %napi_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %napi_str = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 8
  tail call void @__netif_napi_del(ptr noundef %napi_str) #13
  tail call void @synchronize_net() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %napi_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %napi_dev, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_soft_enable_interrupts(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.body2, label %do.end7, !prof !149

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx_channels.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 984, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end7:                                          ; preds = %entry
  %irq_soft_enabled = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 70
  %2 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %irq_soft_enabled, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !151
  %channel14 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %3 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel14, align 8
  %tobool15.not96 = icmp eq ptr %4, null
  br i1 %tobool15.not96, label %do.end7.for.end_crit_edge, label %for.body.lr.ph

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end7
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.097 = phi ptr [ %4, %for.body.lr.ph ], [ %51, %cond.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type, align 8
  %keep_eventq = getelementptr inbounds %struct.efx_channel_type, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %keep_eventq, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.then17, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then17:                                        ; preds = %for.body
  %9 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channel.097, align 128
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then17.do.end13.i_crit_edge, label %do.body3.i

if.then17.do.end13.i_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13.i

do.body3.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_eventq.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_soft_enable_interrupts, %if.then7.i)) #13
          to label %do.end13.i [label %if.then7.i], !srcloc !145

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %10, i32 0, i32 83
  %13 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev.i, align 4
  %channel8.i = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 1
  %15 = ptrtoint ptr %channel8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_eventq.__UNIQUE_ID_ddebug602, ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef %16) #13
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then7.i, %do.body3.i, %if.then17.do.end13.i_crit_edge
  %17 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel.097, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type.i.i, align 4
  %ev_init.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %20, i32 0, i32 67
  %21 = ptrtoint ptr %ev_init.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ev_init.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef nonnull %channel.097) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %efx_init_eventq.exit.thread, label %fail

efx_init_eventq.exit.thread:                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %10, i32 0, i32 6
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type.i, align 4
  %push_irq_moderation.i = getelementptr inbounds %struct.efx_nic_type, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %push_irq_moderation.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %push_irq_moderation.i, align 8
  tail call void %26(ptr noundef nonnull %channel.097) #13
  %eventq_read_ptr.i = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 12
  %27 = ptrtoint ptr %eventq_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %eventq_read_ptr.i, align 4
  %eventq_init.i = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 3
  %28 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %eventq_init.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %efx_init_eventq.exit.thread, %for.body.if.end21_crit_edge
  %29 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel.097, align 128
  %msg_enable.i79 = getelementptr inbounds %struct.efx_nic, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %msg_enable.i79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i79, align 4
  %and.i80 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %if.end21.efx_start_eventq.exit_crit_edge, label %do.body1.i

if.end21.efx_start_eventq.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_start_eventq.exit

do.body1.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_start_eventq.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_soft_enable_interrupts, %if.then5.i)) #13
          to label %efx_start_eventq.exit [label %if.then5.i], !srcloc !145

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel.097, align 128
  %net_dev.i82 = getelementptr inbounds %struct.efx_nic, ptr %34, i32 0, i32 83
  %35 = ptrtoint ptr %net_dev.i82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev.i82, align 4
  %channel7.i = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 1
  %37 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_start_eventq.__UNIQUE_ID_ddebug603, ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %38) #13
  br label %efx_start_eventq.exit

efx_start_eventq.exit:                            ; preds = %if.then5.i, %do.body1.i, %if.end21.efx_start_eventq.exit_crit_edge
  %enabled.i = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 4
  %39 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %enabled.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !147
  %napi_str.i = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %napi_str.i) #13
  %40 = ptrtoint ptr %channel.097 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channel.097, align 128
  %type.i.i83 = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %type.i.i83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type.i.i83, align 4
  %ev_read_ack.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %43, i32 0, i32 71
  %44 = ptrtoint ptr %ev_read_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ev_read_ack.i.i, align 4
  tail call void %45(ptr noundef nonnull %channel.097) #13
  %channel22 = getelementptr inbounds %struct.efx_channel, ptr %channel.097, i32 0, i32 1
  %46 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel22, align 4
  %add = add i32 %47, 1
  %48 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %49)
  %cmp23 = icmp ult i32 %add, %49
  br i1 %cmp23, label %cond.end, label %efx_start_eventq.exit.for.end_crit_edge

efx_start_eventq.exit.for.end_crit_edge:          ; preds = %efx_start_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %efx_start_eventq.exit
  %arrayidx27 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %50 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx27, align 4
  %tobool15.not = icmp eq ptr %51, null
  br i1 %tobool15.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %efx_start_eventq.exit.for.end_crit_edge, %do.end7.for.end_crit_edge
  tail call void @efx_mcdi_mode_event(ptr noundef %efx) #13
  br label %cleanup

fail:                                             ; preds = %do.end13.i
  %52 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channel14, align 8
  %tobool31.not99 = icmp eq ptr %53, null
  %cmp33100 = icmp eq ptr %53, %channel.097
  %or.cond101 = select i1 %tobool31.not99, i1 true, i1 %cmp33100
  br i1 %or.cond101, label %fail.cleanup_crit_edge, label %fail.if.end35_crit_edge

fail.if.end35_crit_edge:                          ; preds = %fail
  br label %if.end35

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %cond.end52.if.end35_crit_edge, %fail.if.end35_crit_edge
  %channel.1102 = phi ptr [ %85, %cond.end52.if.end35_crit_edge ], [ %53, %fail.if.end35_crit_edge ]
  %enabled.i84 = getelementptr inbounds %struct.efx_channel, ptr %channel.1102, i32 0, i32 4
  %54 = ptrtoint ptr %enabled.i84 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enabled.i84, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i85 = icmp eq i8 %55, 0
  br i1 %tobool.not.i85, label %if.end35.efx_stop_eventq.exit_crit_edge, label %if.end.i

if.end35.efx_stop_eventq.exit_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_stop_eventq.exit

if.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %napi_str.i86 = getelementptr inbounds %struct.efx_channel, ptr %channel.1102, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str.i86) #13
  %56 = ptrtoint ptr %enabled.i84 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %enabled.i84, align 1
  br label %efx_stop_eventq.exit

efx_stop_eventq.exit:                             ; preds = %if.end.i, %if.end35.efx_stop_eventq.exit_crit_edge
  %type36 = getelementptr inbounds %struct.efx_channel, ptr %channel.1102, i32 0, i32 2
  %57 = ptrtoint ptr %type36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type36, align 8
  %keep_eventq37 = getelementptr inbounds %struct.efx_channel_type, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %keep_eventq37 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %keep_eventq37, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool38.not = icmp eq i8 %60, 0
  br i1 %tobool38.not, label %if.then39, label %efx_stop_eventq.exit.for.inc41_crit_edge

efx_stop_eventq.exit.for.inc41_crit_edge:         ; preds = %efx_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc41

if.then39:                                        ; preds = %efx_stop_eventq.exit
  %eventq_init.i87 = getelementptr inbounds %struct.efx_channel, ptr %channel.1102, i32 0, i32 3
  %61 = ptrtoint ptr %eventq_init.i87 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %eventq_init.i87, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i88 = icmp eq i8 %62, 0
  br i1 %tobool.not.i88, label %if.then39.for.inc41_crit_edge, label %do.body.i

if.then39.for.inc41_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc41

do.body.i:                                        ; preds = %if.then39
  %63 = ptrtoint ptr %channel.1102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %channel.1102, align 128
  %msg_enable.i89 = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 22
  %65 = ptrtoint ptr %msg_enable.i89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable.i89, align 4
  %and.i90 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool1.not.i = icmp eq i32 %and.i90, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i91

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

do.body3.i91:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_eventq.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_soft_enable_interrupts, %if.then7.i93)) #13
          to label %do.end12.i [label %if.then7.i93], !srcloc !145

if.then7.i93:                                     ; preds = %do.body3.i91
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %channel.1102 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %channel.1102, align 128
  %net_dev.i92 = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 83
  %69 = ptrtoint ptr %net_dev.i92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_dev.i92, align 4
  %channel9.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1102, i32 0, i32 1
  %71 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_eventq.__UNIQUE_ID_ddebug604, ptr noundef %70, ptr noundef nonnull @.str.13, i32 noundef %72) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i93, %do.body3.i91, %do.body.i.do.end12.i_crit_edge
  %73 = ptrtoint ptr %channel.1102 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %channel.1102, align 128
  %type.i.i94 = getelementptr inbounds %struct.efx_nic, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %type.i.i94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %type.i.i94, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ev_fini.i.i, align 8
  tail call void %78(ptr noundef nonnull %channel.1102) #13
  %79 = ptrtoint ptr %eventq_init.i87 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %eventq_init.i87, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %do.end12.i, %if.then39.for.inc41_crit_edge, %efx_stop_eventq.exit.for.inc41_crit_edge
  %channel42 = getelementptr inbounds %struct.efx_channel, ptr %channel.1102, i32 0, i32 1
  %80 = ptrtoint ptr %channel42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %channel42, align 4
  %add43 = add i32 %81, 1
  %82 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %83)
  %cmp45 = icmp ult i32 %add43, %83
  br i1 %cmp45, label %cond.end52, label %for.inc41.cleanup_crit_edge

for.inc41.cleanup_crit_edge:                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end52:                                       ; preds = %for.inc41
  %arrayidx50 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add43
  %84 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx50, align 4
  %tobool31.not = icmp eq ptr %85, null
  %cmp33 = icmp eq ptr %85, %channel.097
  %or.cond = select i1 %tobool31.not, i1 true, i1 %cmp33
  br i1 %or.cond, label %cond.end52.cleanup_crit_edge, label %cond.end52.if.end35_crit_edge

cond.end52.if.end35_crit_edge:                    ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

cond.end52.cleanup_crit_edge:                     ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end52.cleanup_crit_edge, %for.inc41.cleanup_crit_edge, %fail.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i.i, %fail.cleanup_crit_edge ], [ %call.i.i, %cond.end52.cleanup_crit_edge ], [ %call.i.i, %for.inc41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_start_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_set_channels(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @efx_separate_tx_channels to i32))
  %0 = load i8, ptr @efx_separate_tx_channels, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %1 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_channels, align 8
  %n_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %3 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_tx_channels, align 8
  %sub = sub i32 %2, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %tx_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 45
  %5 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %tx_channel_offset, align 4
  %xdp_tx_queue_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 28
  %6 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %cond.end.if.end6_crit_edge, label %do.end

cond.end.if.end6_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.end:                                           ; preds = %cond.end
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #13
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !149

kcalloc.exit.thread:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_tx_queues312 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %10 = ptrtoint ptr %xdp_tx_queues312 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xdp_tx_queues312, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #19
  %xdp_tx_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %12 = ptrtoint ptr %xdp_tx_queues to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %xdp_tx_queues, align 4
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i.if.end6_crit_edge

if.end7.i.i.if.end6_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.i.if.end6_crit_edge, %cond.end.if.end6_crit_edge
  %channel7 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %13 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel7, align 8
  %tobool8.not359 = icmp eq ptr %14, null
  br i1 %tobool8.not359, label %if.end6.for.end97_crit_edge, label %for.body.lr.ph

if.end6.for.end97_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end97

for.body.lr.ph:                                   ; preds = %if.end6
  %n_rx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %xdp_txq_queues_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 30
  %xdp_tx_queues.i288 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %n_channels87 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end95.for.body_crit_edge, %for.body.lr.ph
  %channel.0362 = phi ptr [ %14, %for.body.lr.ph ], [ %112, %cond.end95.for.body_crit_edge ]
  %next_queue.0361 = phi i32 [ 0, %for.body.lr.ph ], [ %next_queue.4, %cond.end95.for.body_crit_edge ]
  %xdp_queue_number.0360 = phi i32 [ 0, %for.body.lr.ph ], [ %xdp_queue_number.3, %cond.end95.for.body_crit_edge ]
  %channel9 = getelementptr inbounds %struct.efx_channel, ptr %channel.0362, i32 0, i32 1
  %15 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel9, align 4
  %17 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_rx_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp ult i32 %16, %18
  %spec.select = select i1 %cmp, i32 %16, i32 -1
  %19 = getelementptr inbounds %struct.efx_channel, ptr %channel.0362, i32 0, i32 45, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 4
  %21 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_channel_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %22)
  %cmp17.not = icmp ult i32 %16, %22
  br i1 %cmp17.not, label %for.body.for.inc85_crit_edge, label %if.then18

for.body.for.inc85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc85

if.then18:                                        ; preds = %for.body
  %23 = ptrtoint ptr %channel.0362 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel.0362, align 128
  %xdp_channel_offset.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 50
  %25 = ptrtoint ptr %xdp_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xdp_channel_offset.i, align 8
  %sub.i = sub i32 %16, %26
  %n_xdp_channels.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 49
  %27 = ptrtoint ptr %n_xdp_channels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_xdp_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %28)
  %cmp.i = icmp ult i32 %sub.i, %28
  %tx_queue24 = getelementptr inbounds %struct.efx_channel, ptr %channel.0362, i32 0, i32 46
  %29 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel9, align 4
  %31 = ptrtoint ptr %channel.0362 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %channel.0362, align 128
  %xdp_channel_offset.i.i343 = getelementptr inbounds %struct.efx_nic, ptr %32, i32 0, i32 50
  %33 = ptrtoint ptr %xdp_channel_offset.i.i343 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xdp_channel_offset.i.i343, align 8
  %sub.i.i344 = sub i32 %30, %34
  %n_xdp_channels.i.i345 = getelementptr inbounds %struct.efx_nic, ptr %32, i32 0, i32 49
  %35 = ptrtoint ptr %n_xdp_channels.i.i345 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_xdp_channels.i.i345, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i344, i32 %36)
  %cmp.i.i346 = icmp ult i32 %sub.i.i344, %36
  %xdp_tx_per_channel.i347 = getelementptr inbounds %struct.efx_nic, ptr %32, i32 0, i32 51
  %tx_queues_per_channel.i348 = getelementptr inbounds %struct.efx_nic, ptr %32, i32 0, i32 48
  %retval.0.in.i349 = select i1 %cmp.i.i346, ptr %xdp_tx_per_channel.i347, ptr %tx_queues_per_channel.i348
  %37 = ptrtoint ptr %retval.0.in.i349 to i32
  call void @__asan_load4_noabort(i32 %37)
  %retval.0.i264350 = load i32, ptr %retval.0.in.i349, align 4
  %add.ptr351 = getelementptr %struct.efx_tx_queue, ptr %tx_queue24, i32 %retval.0.i264350
  %cmp29352 = icmp ult ptr %tx_queue24, %add.ptr351
  br i1 %cmp.i, label %if.then20, label %if.else37

if.then20:                                        ; preds = %if.then18
  br i1 %cmp29352, label %if.then20.for.body30_crit_edge, label %if.then20.for.inc85_crit_edge

if.then20.for.inc85_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc85

if.then20.for.body30_crit_edge:                   ; preds = %if.then20
  br label %for.body30

for.body30:                                       ; preds = %efx_set_xdp_tx_queue.exit.for.body30_crit_edge, %if.then20.for.body30_crit_edge
  %tx_queue.0355 = phi ptr [ %incdec.ptr, %efx_set_xdp_tx_queue.exit.for.body30_crit_edge ], [ %tx_queue24, %if.then20.for.body30_crit_edge ]
  %next_queue.1354 = phi i32 [ %inc, %efx_set_xdp_tx_queue.exit.for.body30_crit_edge ], [ %next_queue.0361, %if.then20.for.body30_crit_edge ]
  %xdp_queue_number.1353 = phi i32 [ %57, %efx_set_xdp_tx_queue.exit.for.body30_crit_edge ], [ %xdp_queue_number.0360, %if.then20.for.body30_crit_edge ]
  %inc = add i32 %next_queue.1354, 1
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0355, i32 0, i32 1
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %next_queue.1354, ptr %queue, align 4
  %39 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %xdp_queue_number.1353)
  %cmp.not.i = icmp ugt i32 %40, %xdp_queue_number.1353
  br i1 %cmp.not.i, label %do.body.i, label %for.body30.efx_set_xdp_tx_queue.exit_crit_edge

for.body30.efx_set_xdp_tx_queue.exit_crit_edge:   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_set_xdp_tx_queue.exit

do.body.i:                                        ; preds = %for.body30
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i._crit_edge, label %do.body2.i

do.body.i._crit_edge:                             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %53

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_set_channels, %if.then6.i)) #13
          to label %53 [label %if.then6.i], !srcloc !145

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0355, i32 0, i32 6
  %45 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %channel.i, align 8
  %channel7.i = getelementptr inbounds %struct.efx_channel, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel7.i, align 4
  %label.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0355, i32 0, i32 2
  %49 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %label.i, align 8
  %51 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618, ptr noundef %44, ptr noundef nonnull @.str.53, i32 noundef %48, i32 noundef %50, i32 noundef %xdp_queue_number.1353, i32 noundef %52) #13
  br label %53

53:                                               ; preds = %if.then6.i, %do.body2.i, %do.body.i._crit_edge
  %54 = ptrtoint ptr %xdp_tx_queues.i288 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xdp_tx_queues.i288, align 4
  %arrayidx.i = getelementptr ptr, ptr %55, i32 %xdp_queue_number.1353
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tx_queue.0355, ptr %arrayidx.i, align 4
  %inc34320 = add nuw i32 %xdp_queue_number.1353, 1
  br label %efx_set_xdp_tx_queue.exit

efx_set_xdp_tx_queue.exit:                        ; preds = %53, %for.body30.efx_set_xdp_tx_queue.exit_crit_edge
  %57 = phi i32 [ %inc34320, %53 ], [ %xdp_queue_number.1353, %for.body30.efx_set_xdp_tx_queue.exit_crit_edge ]
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0355, i32 1
  %58 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %channel9, align 4
  %60 = ptrtoint ptr %channel.0362 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %channel.0362, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %61, i32 0, i32 50
  %62 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %59, %63
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %61, i32 0, i32 49
  %64 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %65)
  %cmp.i.i = icmp ult i32 %sub.i.i, %65
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %61, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %61, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %66 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %retval.0.i264 = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue24, i32 %retval.0.i264
  %cmp29 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp29, label %efx_set_xdp_tx_queue.exit.for.body30_crit_edge, label %efx_set_xdp_tx_queue.exit.for.inc85_crit_edge

efx_set_xdp_tx_queue.exit.for.inc85_crit_edge:    ; preds = %efx_set_xdp_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc85

efx_set_xdp_tx_queue.exit.for.body30_crit_edge:   ; preds = %efx_set_xdp_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

if.else37:                                        ; preds = %if.then18
  br i1 %cmp29352, label %if.else37.for.body49_crit_edge, label %if.else37.if.end72_crit_edge

if.else37.if.end72_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.else37.for.body49_crit_edge:                   ; preds = %if.else37
  br label %for.body49

for.body49:                                       ; preds = %for.inc69.for.body49_crit_edge, %if.else37.for.body49_crit_edge
  %tx_queue.1341 = phi ptr [ %incdec.ptr70, %for.inc69.for.body49_crit_edge ], [ %tx_queue24, %if.else37.for.body49_crit_edge ]
  %next_queue.2340 = phi i32 [ %inc50, %for.inc69.for.body49_crit_edge ], [ %next_queue.0361, %if.else37.for.body49_crit_edge ]
  %inc50 = add i32 %next_queue.2340, 1
  %queue51 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.1341, i32 0, i32 1
  %67 = ptrtoint ptr %queue51 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %next_queue.2340, ptr %queue51, align 4
  %68 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_enable, align 4
  %and = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %for.body49.for.inc69_crit_edge, label %do.body55

for.body49.for.inc69_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69

do.body55:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_set_channels.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_set_channels, %if.then60)) #13
          to label %for.inc69 [label %if.then60], !srcloc !145

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net_dev, align 4
  %72 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %channel9, align 4
  %label = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.1341, i32 0, i32 2
  %74 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %label, align 8
  %76 = ptrtoint ptr %queue51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %queue51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_set_channels.__UNIQUE_ID_ddebug619, ptr noundef %71, ptr noundef nonnull @.str.31, i32 noundef %73, i32 noundef %75, i32 noundef %77) #13
  br label %for.inc69

for.inc69:                                        ; preds = %if.then60, %do.body55, %for.body49.for.inc69_crit_edge
  %incdec.ptr70 = getelementptr %struct.efx_tx_queue, ptr %tx_queue.1341, i32 1
  %78 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channel9, align 4
  %80 = ptrtoint ptr %channel.0362 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %channel.0362, align 128
  %xdp_channel_offset.i.i267 = getelementptr inbounds %struct.efx_nic, ptr %81, i32 0, i32 50
  %82 = ptrtoint ptr %xdp_channel_offset.i.i267 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %xdp_channel_offset.i.i267, align 8
  %sub.i.i268 = sub i32 %79, %83
  %n_xdp_channels.i.i269 = getelementptr inbounds %struct.efx_nic, ptr %81, i32 0, i32 49
  %84 = ptrtoint ptr %n_xdp_channels.i.i269 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_xdp_channels.i.i269, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i268, i32 %85)
  %cmp.i.i270 = icmp ult i32 %sub.i.i268, %85
  %xdp_tx_per_channel.i271 = getelementptr inbounds %struct.efx_nic, ptr %81, i32 0, i32 51
  %tx_queues_per_channel.i272 = getelementptr inbounds %struct.efx_nic, ptr %81, i32 0, i32 48
  %retval.0.in.i273 = select i1 %cmp.i.i270, ptr %xdp_tx_per_channel.i271, ptr %tx_queues_per_channel.i272
  %86 = ptrtoint ptr %retval.0.in.i273 to i32
  call void @__asan_load4_noabort(i32 %86)
  %retval.0.i274 = load i32, ptr %retval.0.in.i273, align 4
  %add.ptr47 = getelementptr %struct.efx_tx_queue, ptr %tx_queue24, i32 %retval.0.i274
  %cmp48 = icmp ult ptr %incdec.ptr70, %add.ptr47
  br i1 %cmp48, label %for.inc69.for.body49_crit_edge, label %for.inc69.if.end72_crit_edge

for.inc69.if.end72_crit_edge:                     ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

for.inc69.for.body49_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49

if.end72:                                         ; preds = %for.inc69.if.end72_crit_edge, %if.else37.if.end72_crit_edge
  %next_queue.2.lcssa = phi i32 [ %next_queue.0361, %if.else37.if.end72_crit_edge ], [ %inc50, %for.inc69.if.end72_crit_edge ]
  %87 = ptrtoint ptr %xdp_txq_queues_mode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %xdp_txq_queues_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp73 = icmp eq i32 %88, 2
  br i1 %cmp73, label %if.then74, label %if.end72.for.inc85_crit_edge

if.end72.for.inc85_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc85

if.then74:                                        ; preds = %if.end72
  %89 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %xdp_queue_number.0360)
  %cmp.not.i276 = icmp ugt i32 %90, %xdp_queue_number.0360
  br i1 %cmp.not.i276, label %do.body.i280, label %if.then74.for.inc85_crit_edge

if.then74.for.inc85_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc85

do.body.i280:                                     ; preds = %if.then74
  %91 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable, align 4
  %and.i278 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278)
  %tobool.not.i279 = icmp eq i32 %and.i278, 0
  br i1 %tobool.not.i279, label %do.body.i280._crit_edge, label %do.body2.i281

do.body.i280._crit_edge:                          ; preds = %do.body.i280
  call void @__sanitizer_cov_trace_pc() #15
  br label %103

do.body2.i281:                                    ; preds = %do.body.i280
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_set_channels, %if.then6.i287)) #13
          to label %103 [label %if.then6.i287], !srcloc !145

if.then6.i287:                                    ; preds = %do.body2.i281
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net_dev, align 4
  %channel.i283 = getelementptr inbounds %struct.efx_channel, ptr %channel.0362, i32 0, i32 46, i32 0, i32 6
  %95 = ptrtoint ptr %channel.i283 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %channel.i283, align 8
  %channel7.i284 = getelementptr inbounds %struct.efx_channel, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %channel7.i284 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %channel7.i284, align 4
  %label.i285 = getelementptr inbounds %struct.efx_channel, ptr %channel.0362, i32 0, i32 46, i32 0, i32 2
  %99 = ptrtoint ptr %label.i285 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %label.i285, align 8
  %queue.i286 = getelementptr inbounds %struct.efx_channel, ptr %channel.0362, i32 0, i32 46, i32 0, i32 1
  %101 = ptrtoint ptr %queue.i286 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %queue.i286, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618, ptr noundef %94, ptr noundef nonnull @.str.53, i32 noundef %98, i32 noundef %100, i32 noundef %xdp_queue_number.0360, i32 noundef %102) #13
  br label %103

103:                                              ; preds = %if.then6.i287, %do.body2.i281, %do.body.i280._crit_edge
  %104 = ptrtoint ptr %xdp_tx_queues.i288 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xdp_tx_queues.i288, align 4
  %arrayidx.i289 = getelementptr ptr, ptr %105, i32 %xdp_queue_number.0360
  %106 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %tx_queue24, ptr %arrayidx.i289, align 4
  %inc80325 = add nuw i32 %xdp_queue_number.0360, 1
  br label %for.inc85

for.inc85:                                        ; preds = %103, %if.then74.for.inc85_crit_edge, %if.end72.for.inc85_crit_edge, %efx_set_xdp_tx_queue.exit.for.inc85_crit_edge, %if.then20.for.inc85_crit_edge, %for.body.for.inc85_crit_edge
  %xdp_queue_number.3 = phi i32 [ %xdp_queue_number.0360, %if.end72.for.inc85_crit_edge ], [ %xdp_queue_number.0360, %for.body.for.inc85_crit_edge ], [ %inc80325, %103 ], [ %xdp_queue_number.0360, %if.then74.for.inc85_crit_edge ], [ %xdp_queue_number.0360, %if.then20.for.inc85_crit_edge ], [ %57, %efx_set_xdp_tx_queue.exit.for.inc85_crit_edge ]
  %next_queue.4 = phi i32 [ %next_queue.2.lcssa, %if.end72.for.inc85_crit_edge ], [ %next_queue.0361, %for.body.for.inc85_crit_edge ], [ %next_queue.2.lcssa, %103 ], [ %next_queue.2.lcssa, %if.then74.for.inc85_crit_edge ], [ %next_queue.0361, %if.then20.for.inc85_crit_edge ], [ %inc, %efx_set_xdp_tx_queue.exit.for.inc85_crit_edge ]
  %107 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %channel9, align 4
  %add = add i32 %108, 1
  %109 = ptrtoint ptr %n_channels87 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_channels87, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %110)
  %cmp88 = icmp ult i32 %add, %110
  br i1 %cmp88, label %cond.end95, label %for.inc85.for.end97_crit_edge

for.inc85.for.end97_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end97

cond.end95:                                       ; preds = %for.inc85
  %arrayidx93 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %111 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx93, align 4
  %tobool8.not = icmp eq ptr %112, null
  br i1 %tobool8.not, label %cond.end95.for.end97_crit_edge, label %cond.end95.for.body_crit_edge

cond.end95.for.body_crit_edge:                    ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end95.for.end97_crit_edge:                   ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end97

for.end97:                                        ; preds = %cond.end95.for.end97_crit_edge, %for.inc85.for.end97_crit_edge, %if.end6.for.end97_crit_edge
  %xdp_queue_number.0.lcssa = phi i32 [ 0, %if.end6.for.end97_crit_edge ], [ %xdp_queue_number.3, %cond.end95.for.end97_crit_edge ], [ %xdp_queue_number.3, %for.inc85.for.end97_crit_edge ]
  %xdp_txq_queues_mode98 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 30
  %113 = ptrtoint ptr %xdp_txq_queues_mode98 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %xdp_txq_queues_mode98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp99 = icmp eq i32 %114, 0
  br i1 %cmp99, label %land.rhs, label %for.end97.land.rhs134_crit_edge

for.end97.land.rhs134_crit_edge:                  ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs134

land.rhs:                                         ; preds = %for.end97
  %115 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %xdp_queue_number.0.lcssa, i32 %116)
  %cmp101.not = icmp eq i32 %xdp_queue_number.0.lcssa, %116
  br i1 %cmp101.not, label %land.rhs.if.end159_crit_edge, label %if.end123, !prof !144

land.rhs.if.end159_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159

if.end123:                                        ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 948, i32 noundef 9, ptr noundef null) #13
  %117 = ptrtoint ptr %xdp_txq_queues_mode98 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr = load i32, ptr %xdp_txq_queues_mode98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp133.not = icmp eq i32 %.pr, 0
  br i1 %cmp133.not, label %if.end123.if.end159_crit_edge, label %if.end123.land.rhs134_crit_edge

if.end123.land.rhs134_crit_edge:                  ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs134

if.end123.if.end159_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159

land.rhs134:                                      ; preds = %if.end123.land.rhs134_crit_edge, %for.end97.land.rhs134_crit_edge
  %118 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %xdp_queue_number.0.lcssa, i32 %119)
  %cmp136 = icmp ugt i32 %xdp_queue_number.0.lcssa, %119
  br i1 %cmp136, label %do.end153, label %land.rhs134.if.end159_crit_edge, !prof !149

land.rhs134.if.end159_crit_edge:                  ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159

do.end153:                                        ; preds = %land.rhs134
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 950, i32 noundef 9, ptr noundef null) #13
  br label %if.end159

if.end159:                                        ; preds = %do.end153, %land.rhs134.if.end159_crit_edge, %if.end123.if.end159_crit_edge, %land.rhs.if.end159_crit_edge
  %120 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %xdp_tx_queue_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %xdp_queue_number.0.lcssa, i32 %121)
  %cmp168364 = icmp ult i32 %xdp_queue_number.0.lcssa, %121
  br i1 %cmp168364, label %do.body.i298.lr.ph, label %if.end159.while.end_crit_edge

if.end159.while.end_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body.i298.lr.ph:                               ; preds = %if.end159
  %xdp_tx_queues169 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 29
  %msg_enable.i295 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev.i300 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  br label %do.body.i298

do.body.i298:                                     ; preds = %efx_set_xdp_tx_queue.exit310.do.body.i298_crit_edge, %do.body.i298.lr.ph
  %next_queue.5366 = phi i32 [ 0, %do.body.i298.lr.ph ], [ %inc170, %efx_set_xdp_tx_queue.exit310.do.body.i298_crit_edge ]
  %xdp_queue_number.4365 = phi i32 [ %xdp_queue_number.0.lcssa, %do.body.i298.lr.ph ], [ %inc175, %efx_set_xdp_tx_queue.exit310.do.body.i298_crit_edge ]
  %122 = ptrtoint ptr %xdp_tx_queues169 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %xdp_tx_queues169, align 4
  %inc170 = add i32 %next_queue.5366, 1
  %arrayidx171 = getelementptr ptr, ptr %123, i32 %next_queue.5366
  %124 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx171, align 4
  %126 = ptrtoint ptr %msg_enable.i295 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_enable.i295, align 4
  %and.i296 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i296)
  %tobool.not.i297 = icmp eq i32 %and.i296, 0
  br i1 %tobool.not.i297, label %do.body.i298.efx_set_xdp_tx_queue.exit310_crit_edge, label %do.body2.i299

do.body.i298.efx_set_xdp_tx_queue.exit310_crit_edge: ; preds = %do.body.i298
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_set_xdp_tx_queue.exit310

do.body2.i299:                                    ; preds = %do.body.i298
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_set_channels, %if.then6.i305)) #13
          to label %efx_set_xdp_tx_queue.exit310 [label %if.then6.i305], !srcloc !145

if.then6.i305:                                    ; preds = %do.body2.i299
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %net_dev.i300 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %net_dev.i300, align 4
  %channel.i301 = getelementptr inbounds %struct.efx_tx_queue, ptr %125, i32 0, i32 6
  %130 = ptrtoint ptr %channel.i301 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %channel.i301, align 8
  %channel7.i302 = getelementptr inbounds %struct.efx_channel, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %channel7.i302 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %channel7.i302, align 4
  %label.i303 = getelementptr inbounds %struct.efx_tx_queue, ptr %125, i32 0, i32 2
  %134 = ptrtoint ptr %label.i303 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %label.i303, align 8
  %queue.i304 = getelementptr inbounds %struct.efx_tx_queue, ptr %125, i32 0, i32 1
  %136 = ptrtoint ptr %queue.i304 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %queue.i304, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618, ptr noundef %129, ptr noundef nonnull @.str.53, i32 noundef %133, i32 noundef %135, i32 noundef %xdp_queue_number.4365, i32 noundef %137) #13
  br label %efx_set_xdp_tx_queue.exit310

efx_set_xdp_tx_queue.exit310:                     ; preds = %if.then6.i305, %do.body2.i299, %do.body.i298.efx_set_xdp_tx_queue.exit310_crit_edge
  %138 = ptrtoint ptr %xdp_tx_queues169 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %xdp_tx_queues169, align 4
  %arrayidx.i307 = getelementptr ptr, ptr %139, i32 %xdp_queue_number.4365
  %140 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %125, ptr %arrayidx.i307, align 4
  %inc175 = add nuw i32 %xdp_queue_number.4365, 1
  %141 = ptrtoint ptr %xdp_tx_queue_count to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %xdp_tx_queue_count, align 16
  %cmp168 = icmp ult i32 %inc175, %142
  br i1 %cmp168, label %efx_set_xdp_tx_queue.exit310.do.body.i298_crit_edge, label %efx_set_xdp_tx_queue.exit310.while.end_crit_edge

efx_set_xdp_tx_queue.exit310.while.end_crit_edge: ; preds = %efx_set_xdp_tx_queue.exit310
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

efx_set_xdp_tx_queue.exit310.do.body.i298_crit_edge: ; preds = %efx_set_xdp_tx_queue.exit310
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i298

while.end:                                        ; preds = %efx_set_xdp_tx_queue.exit310.while.end_crit_edge, %if.end159.while.end_crit_edge
  %net_dev177 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %143 = ptrtoint ptr %net_dev177 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %net_dev177, align 4
  %n_tx_channels178 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %145 = ptrtoint ptr %n_tx_channels178 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %n_tx_channels178, align 8
  %call179 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %144, i32 noundef %146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end182, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end182:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %147 = ptrtoint ptr %net_dev177 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %net_dev177, align 4
  %n_rx_channels184 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %149 = ptrtoint ptr %n_rx_channels184 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %n_rx_channels184, align 4
  %call185 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %148, i32 noundef %150) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end182, %while.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %call185, %if.end182 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call179, %while.end.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @efx_default_channel_want_txqs(ptr nocapture noundef readonly %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel1, align 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 128
  %tx_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_channel_offset, align 4
  %sub = sub i32 %1, %5
  %n_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_tx_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp = icmp ult i32 %sub, %7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mode_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_mode_poll(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_flush_async(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_enable_interrupts(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.body2, label %do.end7, !prof !149

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx_channels.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1048, 0\0A.popsection", ""() #13, !srcloc !152
  unreachable

do.end7:                                          ; preds = %entry
  %eeh_disabled_legacy_irq = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 8
  %2 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eeh_disabled_legacy_irq, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %do.end7.if.end11_crit_edge, label %if.then9

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %legacy_irq = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 7
  %4 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %legacy_irq, align 16
  tail call void @enable_irq(i32 noundef %5) #13
  %6 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %eeh_disabled_legacy_irq, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end7.if.end11_crit_edge
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %irq_enable_master = getelementptr inbounds %struct.efx_nic_type, ptr %8, i32 0, i32 43
  %9 = ptrtoint ptr %irq_enable_master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_enable_master, align 4
  tail call void %10(ptr noundef %efx) #13
  %channel12 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %11 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel12, align 8
  %tobool13.not98 = icmp eq ptr %12, null
  br i1 %tobool13.not98, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.099 = phi ptr [ %12, %for.body.lr.ph ], [ %42, %cond.end.for.body_crit_edge ]
  %type14 = getelementptr inbounds %struct.efx_channel, ptr %channel.099, i32 0, i32 2
  %13 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type14, align 8
  %keep_eventq = getelementptr inbounds %struct.efx_channel_type, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %keep_eventq, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %17 = ptrtoint ptr %channel.099 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel.099, align 128
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.do.end13.i_crit_edge, label %do.body3.i

if.then16.do.end13.i_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13.i

do.body3.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_eventq.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_enable_interrupts, %if.then7.i)) #13
          to label %do.end13.i [label %if.then7.i], !srcloc !145

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %18, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i, align 4
  %channel8.i = getelementptr inbounds %struct.efx_channel, ptr %channel.099, i32 0, i32 1
  %23 = ptrtoint ptr %channel8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_eventq.__UNIQUE_ID_ddebug602, ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef %24) #13
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then7.i, %do.body3.i, %if.then16.do.end13.i_crit_edge
  %25 = ptrtoint ptr %channel.099 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel.099, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type.i.i, align 4
  %ev_init.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %28, i32 0, i32 67
  %29 = ptrtoint ptr %ev_init.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ev_init.i.i, align 4
  %call.i.i = tail call i32 %30(ptr noundef nonnull %channel.099) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %efx_init_eventq.exit.thread, label %do.end13.i.fail_crit_edge

do.end13.i.fail_crit_edge:                        ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

efx_init_eventq.exit.thread:                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %18, i32 0, i32 6
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type.i, align 4
  %push_irq_moderation.i = getelementptr inbounds %struct.efx_nic_type, ptr %32, i32 0, i32 26
  %33 = ptrtoint ptr %push_irq_moderation.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %push_irq_moderation.i, align 8
  tail call void %34(ptr noundef nonnull %channel.099) #13
  %eventq_read_ptr.i = getelementptr inbounds %struct.efx_channel, ptr %channel.099, i32 0, i32 12
  %35 = ptrtoint ptr %eventq_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %eventq_read_ptr.i, align 4
  %eventq_init.i = getelementptr inbounds %struct.efx_channel, ptr %channel.099, i32 0, i32 3
  %36 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %eventq_init.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %efx_init_eventq.exit.thread, %for.body.for.inc_crit_edge
  %channel21 = getelementptr inbounds %struct.efx_channel, ptr %channel.099, i32 0, i32 1
  %37 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel21, align 4
  %add = add i32 %38, 1
  %39 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %40)
  %cmp22 = icmp ult i32 %add, %40
  br i1 %cmp22, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx26 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %41 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx26, align 4
  %tobool13.not = icmp eq ptr %42, null
  br i1 %tobool13.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %call27 = tail call i32 @efx_soft_enable_interrupts(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.end.cleanup_crit_edge, label %for.end.fail_crit_edge

for.end.fail_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fail:                                             ; preds = %for.end.fail_crit_edge, %do.end13.i.fail_crit_edge
  %channel.097 = phi ptr [ null, %for.end.fail_crit_edge ], [ %channel.099, %do.end13.i.fail_crit_edge ]
  %rc.0 = phi i32 [ %call27, %for.end.fail_crit_edge ], [ %call.i.i, %do.end13.i.fail_crit_edge ]
  %43 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channel12, align 8
  %tobool34.not101 = icmp eq ptr %44, null
  %cmp36102 = icmp eq ptr %44, %channel.097
  %or.cond103 = select i1 %tobool34.not101, i1 true, i1 %cmp36102
  br i1 %or.cond103, label %fail.for.end57_crit_edge, label %if.end38.lr.ph

fail.for.end57_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57

if.end38.lr.ph:                                   ; preds = %fail
  %n_channels47 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %if.end38

if.end38:                                         ; preds = %cond.end55.if.end38_crit_edge, %if.end38.lr.ph
  %channel.1104 = phi ptr [ %44, %if.end38.lr.ph ], [ %73, %cond.end55.if.end38_crit_edge ]
  %type39 = getelementptr inbounds %struct.efx_channel, ptr %channel.1104, i32 0, i32 2
  %45 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %type39, align 8
  %keep_eventq40 = getelementptr inbounds %struct.efx_channel_type, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %keep_eventq40 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %keep_eventq40, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool41.not = icmp eq i8 %48, 0
  br i1 %tobool41.not, label %if.end38.for.inc44_crit_edge, label %if.then42

if.end38.for.inc44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc44

if.then42:                                        ; preds = %if.end38
  %eventq_init.i88 = getelementptr inbounds %struct.efx_channel, ptr %channel.1104, i32 0, i32 3
  %49 = ptrtoint ptr %eventq_init.i88 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %eventq_init.i88, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i89 = icmp eq i8 %50, 0
  br i1 %tobool.not.i89, label %if.then42.for.inc44_crit_edge, label %do.body.i

if.then42.for.inc44_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc44

do.body.i:                                        ; preds = %if.then42
  %51 = ptrtoint ptr %channel.1104 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %channel.1104, align 128
  %msg_enable.i90 = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 22
  %53 = ptrtoint ptr %msg_enable.i90 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable.i90, align 4
  %and.i91 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool1.not.i = icmp eq i32 %and.i91, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i92

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

do.body3.i92:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_eventq.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_enable_interrupts, %if.then7.i94)) #13
          to label %do.end12.i [label %if.then7.i94], !srcloc !145

if.then7.i94:                                     ; preds = %do.body3.i92
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %channel.1104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %channel.1104, align 128
  %net_dev.i93 = getelementptr inbounds %struct.efx_nic, ptr %56, i32 0, i32 83
  %57 = ptrtoint ptr %net_dev.i93 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev.i93, align 4
  %channel9.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1104, i32 0, i32 1
  %59 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_eventq.__UNIQUE_ID_ddebug604, ptr noundef %58, ptr noundef nonnull @.str.13, i32 noundef %60) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i94, %do.body3.i92, %do.body.i.do.end12.i_crit_edge
  %61 = ptrtoint ptr %channel.1104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %channel.1104, align 128
  %type.i.i95 = getelementptr inbounds %struct.efx_nic, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %type.i.i95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %type.i.i95, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ev_fini.i.i, align 8
  tail call void %66(ptr noundef nonnull %channel.1104) #13
  %67 = ptrtoint ptr %eventq_init.i88 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %eventq_init.i88, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %do.end12.i, %if.then42.for.inc44_crit_edge, %if.end38.for.inc44_crit_edge
  %channel45 = getelementptr inbounds %struct.efx_channel, ptr %channel.1104, i32 0, i32 1
  %68 = ptrtoint ptr %channel45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel45, align 4
  %add46 = add i32 %69, 1
  %70 = ptrtoint ptr %n_channels47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_channels47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %71)
  %cmp48 = icmp ult i32 %add46, %71
  br i1 %cmp48, label %cond.end55, label %for.inc44.for.end57_crit_edge

for.inc44.for.end57_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57

cond.end55:                                       ; preds = %for.inc44
  %arrayidx53 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add46
  %72 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx53, align 4
  %tobool34.not = icmp eq ptr %73, null
  %cmp36 = icmp eq ptr %73, %channel.097
  %or.cond = select i1 %tobool34.not, i1 true, i1 %cmp36
  br i1 %or.cond, label %cond.end55.for.end57_crit_edge, label %cond.end55.if.end38_crit_edge

cond.end55.if.end38_crit_edge:                    ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

cond.end55.for.end57_crit_edge:                   ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57

for.end57:                                        ; preds = %cond.end55.for.end57_crit_edge, %for.inc44.for.end57_crit_edge, %fail.for.end57_crit_edge
  %74 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %type, align 4
  %irq_disable_non_ev = getelementptr inbounds %struct.efx_nic_type, ptr %75, i32 0, i32 45
  %76 = ptrtoint ptr %irq_disable_non_ev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %irq_disable_non_ev, align 4
  tail call void %77(ptr noundef %efx) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end57, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %for.end57 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_disable_interrupts(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efx_soft_disable_interrupts(ptr noundef %efx)
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not18 = icmp eq ptr %1, null
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.019 = phi ptr [ %1, %for.body.lr.ph ], [ %30, %cond.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.efx_channel, ptr %channel.019, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %keep_eventq = getelementptr inbounds %struct.efx_channel_type, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %keep_eventq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keep_eventq, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %eventq_init.i = getelementptr inbounds %struct.efx_channel, ptr %channel.019, i32 0, i32 3
  %6 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eventq_init.i, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %do.body.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body.i:                                        ; preds = %if.then
  %8 = ptrtoint ptr %channel.019 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel.019, align 128
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.body3.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_eventq.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_disable_interrupts, %if.then7.i)) #13
          to label %do.end12.i [label %if.then7.i], !srcloc !145

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %channel.019 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel.019, align 128
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %13, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev.i, align 4
  %channel9.i = getelementptr inbounds %struct.efx_channel, ptr %channel.019, i32 0, i32 1
  %16 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_eventq.__UNIQUE_ID_ddebug604, ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %17) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end12.i_crit_edge
  %18 = ptrtoint ptr %channel.019 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel.019, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i.i, align 4
  %ev_fini.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %ev_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ev_fini.i.i, align 8
  tail call void %23(ptr noundef nonnull %channel.019) #13
  %24 = ptrtoint ptr %eventq_init.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %eventq_init.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end12.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %channel3 = getelementptr inbounds %struct.efx_channel, ptr %channel.019, i32 0, i32 1
  %25 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel3, align 4
  %add = add i32 %26, 1
  %27 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp = icmp ult i32 %add, %28
  br i1 %cmp, label %cond.end, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.inc
  %arrayidx7 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %type8 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %31 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type8, align 4
  %irq_disable_non_ev = getelementptr inbounds %struct.efx_nic_type, ptr %32, i32 0, i32 45
  %33 = ptrtoint ptr %irq_disable_non_ev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_disable_non_ev, align 4
  tail call void %34(ptr noundef %efx) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_start_channels(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not86 = icmp eq ptr %1, null
  br i1 %tobool.not86, label %entry.for.end48_crit_edge, label %for.body.lr.ph

entry.for.end48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %active_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.087 = phi ptr [ %1, %for.body.lr.ph ], [ %51, %cond.end.for.body_crit_edge ]
  %tx_queue2 = getelementptr inbounds %struct.efx_channel, ptr %channel.087, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.087, i32 0, i32 1
  %2 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel1.i.i, align 4
  %4 = ptrtoint ptr %channel.087 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel.087, align 128
  %xdp_channel_offset.i.i73 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %xdp_channel_offset.i.i73 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xdp_channel_offset.i.i73, align 8
  %sub.i.i74 = sub i32 %3, %7
  %n_xdp_channels.i.i75 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 49
  %8 = ptrtoint ptr %n_xdp_channels.i.i75 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_xdp_channels.i.i75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i74, i32 %9)
  %cmp.i.i76 = icmp ult i32 %sub.i.i74, %9
  %xdp_tx_per_channel.i77 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 51
  %tx_queues_per_channel.i78 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 48
  %retval.0.in.i79 = select i1 %cmp.i.i76, ptr %xdp_tx_per_channel.i77, ptr %tx_queues_per_channel.i78
  %10 = ptrtoint ptr %retval.0.in.i79 to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i80 = load i32, ptr %retval.0.in.i79, align 4
  %add.ptr81 = getelementptr %struct.efx_tx_queue, ptr %tx_queue2, i32 %retval.0.i80
  %cmp82 = icmp ult ptr %tx_queue2, %add.ptr81
  br i1 %cmp82, label %for.body.for.body7_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %tx_queue.083 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %tx_queue2, %for.body.for.body7_crit_edge ]
  tail call void @efx_init_tx_queue(ptr noundef %tx_queue.083) #13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #13, !srcloc !153
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.083, i32 1
  %12 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel1.i.i, align 4
  %14 = ptrtoint ptr %channel.087 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel.087, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %13, %17
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 49
  %18 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %19)
  %cmp.i.i = icmp ult i32 %sub.i.i, %19
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %20 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue2, i32 %retval.0.i
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body7.for.body7_crit_edge, label %for.body7.if.end_crit_edge

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

if.end:                                           ; preds = %for.body7.if.end_crit_edge, %for.body.if.end_crit_edge
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.087, i32 0, i32 45, i32 1
  %21 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i = icmp sgt i32 %22, -1
  br i1 %cmp.i, label %if.else10, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.else10:                                        ; preds = %if.end
  %rx_queue11 = getelementptr inbounds %struct.efx_channel, ptr %channel.087, i32 0, i32 45
  %tobool13.not84 = icmp eq ptr %rx_queue11, null
  br i1 %tobool13.not84, label %if.else10.if.end18_crit_edge, label %for.body14.lr.ph

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

for.body14.lr.ph:                                 ; preds = %if.else10
  %enabled.i = getelementptr inbounds %struct.efx_channel, ptr %channel.087, i32 0, i32 4
  %napi_str.i72 = getelementptr inbounds %struct.efx_channel, ptr %channel.087, i32 0, i32 8
  tail call void @efx_init_rx_queue(ptr noundef nonnull %rx_queue11) #13
  %call.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #13, !srcloc !153
  %24 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled.i, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %for.body14.lr.ph.efx_stop_eventq.exit_crit_edge, label %if.end.i

for.body14.lr.ph.efx_stop_eventq.exit_crit_edge:  ; preds = %for.body14.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_stop_eventq.exit

if.end.i:                                         ; preds = %for.body14.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @napi_disable(ptr noundef %napi_str.i72) #13
  %26 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %enabled.i, align 1
  br label %efx_stop_eventq.exit

efx_stop_eventq.exit:                             ; preds = %if.end.i, %for.body14.lr.ph.efx_stop_eventq.exit_crit_edge
  tail call void @efx_fast_push_rx_descriptors(ptr noundef nonnull %rx_queue11, i1 noundef zeroext false) #13
  %27 = ptrtoint ptr %channel.087 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channel.087, align 128
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i70 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i70, label %efx_stop_eventq.exit.efx_start_eventq.exit_crit_edge, label %do.body1.i

efx_stop_eventq.exit.efx_start_eventq.exit_crit_edge: ; preds = %efx_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_start_eventq.exit

do.body1.i:                                       ; preds = %efx_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_start_eventq.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_start_channels, %if.then5.i)) #13
          to label %efx_start_eventq.exit [label %if.then5.i], !srcloc !145

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %channel.087 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %channel.087, align 128
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %32, i32 0, i32 83
  %33 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev.i, align 4
  %35 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel1.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_start_eventq.__UNIQUE_ID_ddebug603, ptr noundef %34, ptr noundef nonnull @.str.11, i32 noundef %36) #13
  br label %efx_start_eventq.exit

efx_start_eventq.exit:                            ; preds = %if.then5.i, %do.body1.i, %efx_stop_eventq.exit.efx_start_eventq.exit_crit_edge
  %37 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %enabled.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !147
  tail call void @napi_enable(ptr noundef %napi_str.i72) #13
  %38 = ptrtoint ptr %channel.087 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel.087, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %type.i.i, align 4
  %ev_read_ack.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %41, i32 0, i32 71
  %42 = ptrtoint ptr %ev_read_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ev_read_ack.i.i, align 4
  tail call void %43(ptr noundef nonnull %channel.087) #13
  br label %if.end18

if.end18:                                         ; preds = %efx_start_eventq.exit, %if.else10.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %rx_pkt_n_frags = getelementptr inbounds %struct.efx_channel, ptr %channel.087, i32 0, i32 42
  %44 = ptrtoint ptr %rx_pkt_n_frags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_pkt_n_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool19.not = icmp eq i32 %45, 0
  br i1 %tobool19.not, label %if.end18.if.end34_crit_edge, label %do.end, !prof !144

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1119, i32 noundef 9, ptr noundef null) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end18.if.end34_crit_edge
  %46 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel1.i.i, align 4
  %add = add i32 %47, 1
  %48 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %49)
  %cmp43 = icmp ult i32 %add, %49
  br i1 %cmp43, label %cond.end, label %if.end34.for.end48_crit_edge

if.end34.for.end48_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end48

cond.end:                                         ; preds = %if.end34
  %arrayidx47 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %50 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx47, align 4
  %tobool.not = icmp eq ptr %51, null
  br i1 %tobool.not, label %cond.end.for.end48_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end48_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end48

for.end48:                                        ; preds = %cond.end.for.end48_crit_edge, %if.end34.for.end48_crit_edge, %entry.for.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_init_tx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_init_rx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fast_push_rx_descriptors(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_stop_channels(ptr noundef %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not158 = icmp eq ptr %1, null
  br i1 %tobool.not158, label %entry.for.end34_crit_edge, label %for.body.lr.ph

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.0159 = phi ptr [ %1, %for.body.lr.ph ], [ %10, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0159, i32 0, i32 45, i32 1
  %2 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  %rx_queue2 = getelementptr inbounds %struct.efx_channel, ptr %channel.0159, i32 0, i32 45
  %tobool4.not156 = icmp eq ptr %rx_queue2, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool4.not156
  br i1 %or.cond, label %for.body.for.inc6_crit_edge, label %for.body5

for.body.for.inc6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6

for.body5:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %refill_enabled = getelementptr inbounds %struct.efx_channel, ptr %channel.0159, i32 0, i32 45, i32 5
  %4 = ptrtoint ptr %refill_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %refill_enabled, align 4
  br label %for.inc6

for.inc6:                                         ; preds = %for.body5, %for.body.for.inc6_crit_edge
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel.0159, i32 0, i32 1
  %5 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel7, align 4
  %add = add i32 %6, 1
  %7 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp = icmp ult i32 %add, %8
  br i1 %cmp, label %cond.end, label %for.inc6.for.end12_crit_edge

for.inc6.for.end12_crit_edge:                     ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end12

cond.end:                                         ; preds = %for.inc6
  %arrayidx11 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %cond.end.for.end12_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end12_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end12

for.end12:                                        ; preds = %cond.end.for.end12_crit_edge, %for.inc6.for.end12_crit_edge
  %11 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %channel1, align 8
  %tobool16.not161 = icmp eq ptr %.pr, null
  br i1 %tobool16.not161, label %for.end12.for.end34_crit_edge, label %for.body17.lr.ph

for.end12.for.end34_crit_edge:                    ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.body17.lr.ph:                                 ; preds = %for.end12
  %n_channels24 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body17

for.body17:                                       ; preds = %cond.end32.for.body17_crit_edge, %for.body17.lr.ph
  %channel.1162 = phi ptr [ %.pr, %for.body17.lr.ph ], [ %39, %cond.end32.for.body17_crit_edge ]
  %core_index.i147 = getelementptr inbounds %struct.efx_channel, ptr %channel.1162, i32 0, i32 45, i32 1
  %12 = ptrtoint ptr %core_index.i147 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_index.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i148 = icmp sgt i32 %13, -1
  br i1 %cmp.i148, label %if.then19, label %for.body17.for.inc21_crit_edge

for.body17.for.inc21_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc21

if.then19:                                        ; preds = %for.body17
  %enabled.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1162, i32 0, i32 4
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then19.efx_stop_eventq.exit_crit_edge, label %if.end.i

if.then19.efx_stop_eventq.exit_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_stop_eventq.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %napi_str.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1162, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi_str.i) #13
  %16 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enabled.i, align 1
  br label %efx_stop_eventq.exit

efx_stop_eventq.exit:                             ; preds = %if.end.i, %if.then19.efx_stop_eventq.exit_crit_edge
  %17 = ptrtoint ptr %channel.1162 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel.1162, align 128
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i149 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i149, label %efx_stop_eventq.exit.efx_start_eventq.exit_crit_edge, label %do.body1.i

efx_stop_eventq.exit.efx_start_eventq.exit_crit_edge: ; preds = %efx_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_start_eventq.exit

do.body1.i:                                       ; preds = %efx_stop_eventq.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_start_eventq.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_stop_channels, %if.then5.i)) #13
          to label %efx_start_eventq.exit [label %if.then5.i], !srcloc !145

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %channel.1162 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel.1162, align 128
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 83
  %23 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev.i, align 4
  %channel7.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1162, i32 0, i32 1
  %25 = ptrtoint ptr %channel7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_start_eventq.__UNIQUE_ID_ddebug603, ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %26) #13
  br label %efx_start_eventq.exit

efx_start_eventq.exit:                            ; preds = %if.then5.i, %do.body1.i, %efx_stop_eventq.exit.efx_start_eventq.exit_crit_edge
  %27 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %enabled.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !147
  %napi_str.i151 = getelementptr inbounds %struct.efx_channel, ptr %channel.1162, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %napi_str.i151) #13
  %28 = ptrtoint ptr %channel.1162 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel.1162, align 128
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i.i, align 4
  %ev_read_ack.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %31, i32 0, i32 71
  %32 = ptrtoint ptr %ev_read_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ev_read_ack.i.i, align 4
  tail call void %33(ptr noundef nonnull %channel.1162) #13
  br label %for.inc21

for.inc21:                                        ; preds = %efx_start_eventq.exit, %for.body17.for.inc21_crit_edge
  %channel22 = getelementptr inbounds %struct.efx_channel, ptr %channel.1162, i32 0, i32 1
  %34 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel22, align 4
  %add23 = add i32 %35, 1
  %36 = ptrtoint ptr %n_channels24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_channels24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %37)
  %cmp25 = icmp ult i32 %add23, %37
  br i1 %cmp25, label %cond.end32, label %for.inc21.for.end34_crit_edge

for.inc21.for.end34_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

cond.end32:                                       ; preds = %for.inc21
  %arrayidx30 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add23
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx30, align 4
  %tobool16.not = icmp eq ptr %39, null
  br i1 %tobool16.not, label %cond.end32.for.end34_crit_edge, label %cond.end32.for.body17_crit_edge

cond.end32.for.body17_crit_edge:                  ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

cond.end32.for.end34_crit_edge:                   ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end34

for.end34:                                        ; preds = %cond.end32.for.end34_crit_edge, %for.inc21.for.end34_crit_edge, %for.end12.for.end34_crit_edge, %entry.for.end34_crit_edge
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %type, align 4
  %fini_dmaq = getelementptr inbounds %struct.efx_nic_type, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %fini_dmaq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fini_dmaq, align 4
  %tobool35.not = icmp eq ptr %43, null
  br i1 %tobool35.not, label %for.end34.do.body47_crit_edge, label %if.then36

for.end34.do.body47_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body47

if.then36:                                        ; preds = %for.end34
  %call39 = tail call i32 %43(ptr noundef %efx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %phi.cmp = icmp eq i32 %call39, 0
  br i1 %phi.cmp, label %if.then36.do.body47_crit_edge, label %do.body

if.then36.do.body47_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body47

do.body:                                          ; preds = %if.then36
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %44 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable, align 4
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %do.body.if.end65_crit_edge, label %if.then44

do.body.if.end65_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %46 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.32) #16
  br label %if.end65

do.body47:                                        ; preds = %if.then36.do.body47_crit_edge, %for.end34.do.body47_crit_edge
  %msg_enable48 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %48 = ptrtoint ptr %msg_enable48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable48, align 4
  %and49 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body47.if.end65_crit_edge, label %do.body52

do.body47.if.end65_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

do.body52:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_stop_channels.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_stop_channels, %if.then57)) #13
          to label %if.end65 [label %if.then57], !srcloc !145

if.then57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %net_dev58 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %50 = ptrtoint ptr %net_dev58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_stop_channels.__UNIQUE_ID_ddebug620, ptr noundef %51, ptr noundef nonnull @.str.34) #13
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %do.body52, %do.body47.if.end65_crit_edge, %if.then44, %do.body.if.end65_crit_edge
  %52 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channel1, align 8
  %tobool69.not177 = icmp eq ptr %53, null
  br i1 %tobool69.not177, label %if.end65.for.end107_crit_edge, label %for.body70.lr.ph

if.end65.for.end107_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end107

for.body70.lr.ph:                                 ; preds = %if.end65
  %n_channels97 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body70

for.body70:                                       ; preds = %cond.end105.for.body70_crit_edge, %for.body70.lr.ph
  %channel.2178 = phi ptr [ %53, %for.body70.lr.ph ], [ %77, %cond.end105.for.body70_crit_edge ]
  %core_index.i152 = getelementptr inbounds %struct.efx_channel, ptr %channel.2178, i32 0, i32 45, i32 1
  %54 = ptrtoint ptr %core_index.i152 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_index.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i153 = icmp sgt i32 %55, -1
  br i1 %cmp.i153, label %if.else73, label %for.body70.if.end80_crit_edge

for.body70.if.end80_crit_edge:                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.else73:                                        ; preds = %for.body70
  %rx_queue74 = getelementptr inbounds %struct.efx_channel, ptr %channel.2178, i32 0, i32 45
  %tobool76.not164 = icmp eq ptr %rx_queue74, null
  br i1 %tobool76.not164, label %if.else73.if.end80_crit_edge, label %for.body77

if.else73.if.end80_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

for.body77:                                       ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @efx_fini_rx_queue(ptr noundef nonnull %rx_queue74) #13
  br label %if.end80

if.end80:                                         ; preds = %for.body77, %if.else73.if.end80_crit_edge, %for.body70.if.end80_crit_edge
  %tx_queue84 = getelementptr inbounds %struct.efx_channel, ptr %channel.2178, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.2178, i32 0, i32 1
  %56 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %channel1.i.i, align 4
  %58 = ptrtoint ptr %channel.2178 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channel.2178, align 128
  %xdp_channel_offset.i.i166 = getelementptr inbounds %struct.efx_nic, ptr %59, i32 0, i32 50
  %60 = ptrtoint ptr %xdp_channel_offset.i.i166 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %xdp_channel_offset.i.i166, align 8
  %sub.i.i167 = sub i32 %57, %61
  %n_xdp_channels.i.i168 = getelementptr inbounds %struct.efx_nic, ptr %59, i32 0, i32 49
  %62 = ptrtoint ptr %n_xdp_channels.i.i168 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_xdp_channels.i.i168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i167, i32 %63)
  %cmp.i.i169 = icmp ult i32 %sub.i.i167, %63
  %xdp_tx_per_channel.i170 = getelementptr inbounds %struct.efx_nic, ptr %59, i32 0, i32 51
  %tx_queues_per_channel.i171 = getelementptr inbounds %struct.efx_nic, ptr %59, i32 0, i32 48
  %retval.0.in.i172 = select i1 %cmp.i.i169, ptr %xdp_tx_per_channel.i170, ptr %tx_queues_per_channel.i171
  %64 = ptrtoint ptr %retval.0.in.i172 to i32
  call void @__asan_load4_noabort(i32 %64)
  %retval.0.i154173 = load i32, ptr %retval.0.in.i172, align 4
  %add.ptr174 = getelementptr %struct.efx_tx_queue, ptr %tx_queue84, i32 %retval.0.i154173
  %cmp89175 = icmp ult ptr %tx_queue84, %add.ptr174
  br i1 %cmp89175, label %if.end80.for.body90_crit_edge, label %if.end80.for.inc94_crit_edge

if.end80.for.inc94_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc94

if.end80.for.body90_crit_edge:                    ; preds = %if.end80
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %if.end80.for.body90_crit_edge
  %tx_queue.0176 = phi ptr [ %incdec.ptr, %for.body90.for.body90_crit_edge ], [ %tx_queue84, %if.end80.for.body90_crit_edge ]
  tail call void @efx_fini_tx_queue(ptr noundef %tx_queue.0176) #13
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0176, i32 1
  %65 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %channel1.i.i, align 4
  %67 = ptrtoint ptr %channel.2178 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %channel.2178, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 50
  %69 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %66, %70
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 49
  %71 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %72)
  %cmp.i.i = icmp ult i32 %sub.i.i, %72
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %68, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %73 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %retval.0.i154 = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue84, i32 %retval.0.i154
  %cmp89 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp89, label %for.body90.for.body90_crit_edge, label %for.body90.for.inc94_crit_edge

for.body90.for.inc94_crit_edge:                   ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc94

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body90

for.inc94:                                        ; preds = %for.body90.for.inc94_crit_edge, %if.end80.for.inc94_crit_edge
  %.lcssa = phi i32 [ %57, %if.end80.for.inc94_crit_edge ], [ %66, %for.body90.for.inc94_crit_edge ]
  %add96 = add i32 %.lcssa, 1
  %74 = ptrtoint ptr %n_channels97 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %n_channels97, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add96, i32 %75)
  %cmp98 = icmp ult i32 %add96, %75
  br i1 %cmp98, label %cond.end105, label %for.inc94.for.end107_crit_edge

for.inc94.for.end107_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end107

cond.end105:                                      ; preds = %for.inc94
  %arrayidx103 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add96
  %76 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx103, align 4
  %tobool69.not = icmp eq ptr %77, null
  br i1 %tobool69.not, label %cond.end105.for.end107_crit_edge, label %cond.end105.for.body70_crit_edge

cond.end105.for.body70_crit_edge:                 ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body70

cond.end105.for.end107_crit_edge:                 ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end107

for.end107:                                       ; preds = %cond.end105.for.end107_crit_edge, %for.inc94.for.end107_crit_edge, %if.end65.for.end107_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_rx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_tx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  %rx_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_list.i) #13
  %enabled.i = getelementptr i8, ptr %napi, i32 -19
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.efx_process_channel.exit_crit_edge, label %do.end.i, !prof !149

entry.efx_process_channel.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_process_channel.exit

do.end.i:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.list_head, ptr %rx_list.i, i32 0, i32 1
  %5 = ptrtoint ptr %rx_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %rx_list.i, ptr %rx_list.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx_list.i, ptr %4, align 4
  %rx_list4.i = getelementptr i8, ptr %napi, i32 476
  %7 = ptrtoint ptr %rx_list4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rx_list.i, ptr %rx_list4.i, align 4
  %tx_queue6.i = getelementptr i8, ptr %napi, i32 992
  %channel1.i.i.i = getelementptr i8, ptr %napi, i32 -28
  %8 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel1.i.i.i, align 4
  %xdp_channel_offset.i.i80.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 50
  %10 = ptrtoint ptr %xdp_channel_offset.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xdp_channel_offset.i.i80.i, align 8
  %sub.i.i81.i = sub i32 %9, %11
  %n_xdp_channels.i.i82.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 49
  %12 = ptrtoint ptr %n_xdp_channels.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_xdp_channels.i.i82.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i81.i, i32 %13)
  %cmp.i.i83.i = icmp ult i32 %sub.i.i81.i, %13
  %xdp_tx_per_channel.i84.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 51
  %tx_queues_per_channel.i85.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 48
  %retval.0.in.i86.i = select i1 %cmp.i.i83.i, ptr %xdp_tx_per_channel.i84.i, ptr %tx_queues_per_channel.i85.i
  %14 = ptrtoint ptr %retval.0.in.i86.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0.i87.i = load i32, ptr %retval.0.in.i86.i, align 4
  %add.ptr88.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue6.i, i32 %retval.0.i87.i
  %cmp89.i = icmp ult ptr %tx_queue6.i, %add.ptr88.i
  br i1 %cmp89.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.if.end10.i_crit_edge

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %tx_queue.090.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %tx_queue6.i, %do.end.i.for.body.i_crit_edge ]
  %pkts_compl.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.090.i, i32 0, i32 22
  %15 = ptrtoint ptr %pkts_compl.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pkts_compl.i, align 16
  %bytes_compl.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.090.i, i32 0, i32 21
  %16 = ptrtoint ptr %bytes_compl.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bytes_compl.i, align 4
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.090.i, i32 1
  %17 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel1.i.i.i, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 50
  %21 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %18, %22
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 49
  %23 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %24)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %24
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %25 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue6.i, i32 %retval.0.i.i
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end10.i:                                       ; preds = %for.body.i.if.end10.i_crit_edge, %do.end.i.if.end10.i_crit_edge
  %.lcssa.i = phi ptr [ %1, %do.end.i.if.end10.i_crit_edge ], [ %20, %for.body.i.if.end10.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %.lcssa.i, i32 0, i32 6
  %26 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type.i.i, align 4
  %ev_process.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 70
  %28 = ptrtoint ptr %ev_process.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ev_process.i.i, align 8
  %call.i.i = call i32 %29(ptr noundef %add.ptr, i32 noundef %budget) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end16.i_crit_edge, label %land.lhs.true.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %core_index.i.i = getelementptr i8, ptr %napi, i32 484
  %30 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %core_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.i = icmp sgt i32 %31, -1
  br i1 %cmp.i.i, label %if.then14.i, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  %rx_queue.i.i = getelementptr i8, ptr %napi, i32 480
  %rx_pkt_n_frags.i.i = getelementptr i8, ptr %napi, i32 468
  %32 = ptrtoint ptr %rx_pkt_n_frags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_pkt_n_frags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %if.then14.i.efx_rx_flush_packet.exit.i_crit_edge, label %if.then.i.i

if.then14.i.efx_rx_flush_packet.exit.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_rx_flush_packet.exit.i

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 128
  %type.i68.i = getelementptr inbounds %struct.efx_nic, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %type.i68.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %type.i68.i, align 4
  %rx_packet.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %37, i32 0, i32 64
  %38 = ptrtoint ptr %rx_packet.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_packet.i.i, align 8
  call void %39(ptr noundef %add.ptr) #13
  br label %efx_rx_flush_packet.exit.i

efx_rx_flush_packet.exit.i:                       ; preds = %if.then.i.i, %if.then14.i.efx_rx_flush_packet.exit.i_crit_edge
  call void @efx_fast_push_rx_descriptors(ptr noundef %rx_queue.i.i, i1 noundef zeroext true) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %efx_rx_flush_packet.exit.i, %land.lhs.true.i.if.end16.i_crit_edge, %if.end10.i.if.end16.i_crit_edge
  %40 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel1.i.i.i, align 4
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 128
  %xdp_channel_offset.i.i7091.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 50
  %44 = ptrtoint ptr %xdp_channel_offset.i.i7091.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xdp_channel_offset.i.i7091.i, align 8
  %sub.i.i7192.i = sub i32 %41, %45
  %n_xdp_channels.i.i7293.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 49
  %46 = ptrtoint ptr %n_xdp_channels.i.i7293.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_xdp_channels.i.i7293.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i7192.i, i32 %47)
  %cmp.i.i7394.i = icmp ult i32 %sub.i.i7192.i, %47
  %xdp_tx_per_channel.i7495.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 51
  %tx_queues_per_channel.i7596.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 48
  %retval.0.in.i7697.i = select i1 %cmp.i.i7394.i, ptr %xdp_tx_per_channel.i7495.i, ptr %tx_queues_per_channel.i7596.i
  %48 = ptrtoint ptr %retval.0.in.i7697.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %retval.0.i7798.i = load i32, ptr %retval.0.in.i7697.i, align 4
  %add.ptr2699.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue6.i, i32 %retval.0.i7798.i
  %cmp27100.i = icmp ult ptr %tx_queue6.i, %add.ptr2699.i
  br i1 %cmp27100.i, label %if.end16.i.for.body28.i_crit_edge, label %if.end16.i.if.end38.i_crit_edge

if.end16.i.if.end38.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

if.end16.i.for.body28.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.inc35.i.for.body28.i_crit_edge, %if.end16.i.for.body28.i_crit_edge
  %tx_queue.1101.i = phi ptr [ %incdec.ptr36.i, %for.inc35.i.for.body28.i_crit_edge ], [ %tx_queue6.i, %if.end16.i.for.body28.i_crit_edge ]
  %bytes_compl29.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.1101.i, i32 0, i32 21
  %49 = ptrtoint ptr %bytes_compl29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytes_compl29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool30.not.i = icmp eq i32 %50, 0
  br i1 %tobool30.not.i, label %for.body28.i.for.inc35.i_crit_edge, label %if.then31.i

for.body28.i.for.inc35.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

if.then31.i:                                      ; preds = %for.body28.i
  %core_txq.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.1101.i, i32 0, i32 7
  %51 = ptrtoint ptr %core_txq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core_txq.i, align 4
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %52, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %50) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %52, i32 0, i32 15, i32 1
  %53 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %55 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i78.i = sub i32 %54, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i78.i)
  %cmp.i79.i = icmp slt i32 %sub.i.i78.i, 0
  br i1 %cmp.i79.i, label %if.then31.i.for.inc35.i_crit_edge, label %if.end14.i.i, !prof !149

if.then31.i.for.inc35.i_crit_edge:                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

if.end14.i.i:                                     ; preds = %if.then31.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %52, i32 0, i32 13
  %call15.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.for.inc35.i_crit_edge, label %if.then17.i.i

if.end14.i.i.for.inc35.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc35.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @netif_schedule_queue(ptr noundef %52) #13
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %if.then17.i.i, %if.end14.i.i.for.inc35.i_crit_edge, %if.then31.i.for.inc35.i_crit_edge, %for.body28.i.for.inc35.i_crit_edge
  %incdec.ptr36.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.1101.i, i32 1
  %57 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channel1.i.i.i, align 4
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 128
  %xdp_channel_offset.i.i70.i = getelementptr inbounds %struct.efx_nic, ptr %60, i32 0, i32 50
  %61 = ptrtoint ptr %xdp_channel_offset.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xdp_channel_offset.i.i70.i, align 8
  %sub.i.i71.i = sub i32 %58, %62
  %n_xdp_channels.i.i72.i = getelementptr inbounds %struct.efx_nic, ptr %60, i32 0, i32 49
  %63 = ptrtoint ptr %n_xdp_channels.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n_xdp_channels.i.i72.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i71.i, i32 %64)
  %cmp.i.i73.i = icmp ult i32 %sub.i.i71.i, %64
  %xdp_tx_per_channel.i74.i = getelementptr inbounds %struct.efx_nic, ptr %60, i32 0, i32 51
  %tx_queues_per_channel.i75.i = getelementptr inbounds %struct.efx_nic, ptr %60, i32 0, i32 48
  %retval.0.in.i76.i = select i1 %cmp.i.i73.i, ptr %xdp_tx_per_channel.i74.i, ptr %tx_queues_per_channel.i75.i
  %65 = ptrtoint ptr %retval.0.in.i76.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %retval.0.i77.i = load i32, ptr %retval.0.in.i76.i, align 4
  %add.ptr26.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue6.i, i32 %retval.0.i77.i
  %cmp27.i = icmp ult ptr %incdec.ptr36.i, %add.ptr26.i
  br i1 %cmp27.i, label %for.inc35.i.for.body28.i_crit_edge, label %for.inc35.i.if.end38.i_crit_edge

for.inc35.i.if.end38.i_crit_edge:                 ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

for.inc35.i.for.body28.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body28.i

if.end38.i:                                       ; preds = %for.inc35.i.if.end38.i_crit_edge, %if.end16.i.if.end38.i_crit_edge
  %66 = ptrtoint ptr %rx_list4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_list4.i, align 4
  call void @netif_receive_skb_list(ptr noundef %67) #13
  %68 = ptrtoint ptr %rx_list4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %rx_list4.i, align 4
  br label %efx_process_channel.exit

efx_process_channel.exit:                         ; preds = %if.end38.i, %entry.efx_process_channel.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end38.i ], [ 0, %entry.efx_process_channel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_list.i) #13
  call void @xdp_do_flush() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %budget)
  %cmp = icmp slt i32 %retval.0.i, %budget
  br i1 %cmp, label %if.then, label %efx_process_channel.exit.if.end16_crit_edge

efx_process_channel.exit.if.end16_crit_edge:      ; preds = %efx_process_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then:                                          ; preds = %efx_process_channel.exit
  %core_index.i = getelementptr i8, ptr %napi, i32 484
  %69 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i30 = icmp sgt i32 %70, -1
  br i1 %cmp.i30, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %irq_rx_adaptive = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 18
  %71 = ptrtoint ptr %irq_rx_adaptive to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %irq_rx_adaptive, align 16, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not = icmp eq i8 %72, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %irq_count = getelementptr i8, ptr %napi, i32 260
  %73 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq_count, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %cmp5 = icmp eq i32 %inc, 1000
  br i1 %cmp5, label %if.then8, label %land.lhs.true4.if.end_crit_edge, !prof !149

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @efx_update_irq_mod(ptr noundef %1, ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %rfs_last_expiry = getelementptr i8, ptr %napi, i32 272
  %76 = ptrtoint ptr %rfs_last_expiry to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rfs_last_expiry, align 16
  %sub = sub i32 %75, %77
  %rfs_filter_count = getelementptr i8, ptr %napi, i32 268
  %78 = ptrtoint ptr %rfs_filter_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rfs_filter_count, align 4
  %mul = mul i32 %79, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 59999, i32 %mul)
  %cmp9 = icmp ugt i32 %mul, 59999
  br i1 %cmp9, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %80 = load ptr, ptr @system_wq, align 4
  %filter_work = getelementptr i8, ptr %napi, i32 288
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %80, ptr noundef %filter_work, i32 noundef 0) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %call13 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %retval.0.i) #13
  br i1 %call13, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %type.i, align 4
  %ev_read_ack.i = getelementptr inbounds %struct.efx_nic_type, ptr %84, i32 0, i32 71
  %85 = ptrtoint ptr %ev_read_ack.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ev_read_ack.i, align 4
  call void %86(ptr noundef %add.ptr) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge, %efx_process_channel.exit.if.end16_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_init_napi(ptr nocapture noundef readonly %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.013 = phi ptr [ %1, %for.body.lr.ph ], [ %12, %cond.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %channel.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel.013, align 128
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  %napi_dev.i = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 7
  %6 = ptrtoint ptr %napi_dev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %napi_dev.i, align 8
  %napi_str.i = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 8
  tail call void @netif_napi_add(ptr noundef %5, ptr noundef %napi_str.i, ptr noundef nonnull @efx_poll, i32 noundef 64) #13
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 1
  %7 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel2, align 4
  %add = add i32 %8, 1
  %9 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp = icmp ult i32 %add, %10
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_napi(ptr nocapture noundef readonly %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.013 = phi ptr [ %1, %for.body.lr.ph ], [ %10, %cond.end.for.body_crit_edge ]
  %napi_dev.i = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 7
  %2 = ptrtoint ptr %napi_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %napi_dev.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.efx_fini_napi_channel.exit_crit_edge, label %if.then.i

for.body.efx_fini_napi_channel.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %efx_fini_napi_channel.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %napi_str.i = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 8
  tail call void @__netif_napi_del(ptr noundef %napi_str.i) #13
  tail call void @synchronize_net() #13
  br label %efx_fini_napi_channel.exit

efx_fini_napi_channel.exit:                       ; preds = %if.then.i, %for.body.efx_fini_napi_channel.exit_crit_edge
  %4 = ptrtoint ptr %napi_dev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %napi_dev.i, align 8
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel.013, i32 0, i32 1
  %5 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel2, align 4
  %add = add i32 %6, 1
  %7 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp = icmp ult i32 %add, %8
  br i1 %cmp, label %cond.end, label %efx_fini_napi_channel.exit.for.end_crit_edge

efx_fini_napi_channel.exit.for.end_crit_edge:     ; preds = %efx_fini_napi_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %efx_fini_napi_channel.exit
  %arrayidx6 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %efx_fini_napi_channel.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msix_vec_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__efx_filter_rfs_expire(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_tx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_rx_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_update_irq_mod(ptr nocapture noundef readonly %efx, ptr noundef %channel) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_mod_step_us = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 20
  %0 = ptrtoint ptr %irq_mod_step_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_mod_step_us, align 4
  %irq_mod_score = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 15
  %2 = ptrtoint ptr %irq_mod_score to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_mod_score, align 8
  %4 = load i32, ptr @irq_adapt_low_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq_moderation_us = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 6
  %5 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_moderation_us, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1 = icmp ugt i32 %6, %1
  br i1 %cmp1, label %if.then2, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %6, %1
  %7 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %irq_moderation_us, align 4
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %8 = load i32, ptr @irq_adapt_high_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %8)
  %cmp5 = icmp ugt i32 %3, %8
  br i1 %cmp5, label %if.then6, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then6:                                         ; preds = %if.else
  %irq_moderation_us7 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 6
  %9 = ptrtoint ptr %irq_moderation_us7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_moderation_us7, align 4
  %irq_rx_moderation_us = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 21
  %11 = ptrtoint ptr %irq_rx_moderation_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_rx_moderation_us, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8 = icmp ult i32 %10, %12
  br i1 %cmp8, label %if.then9, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %10, %1
  %13 = ptrtoint ptr %irq_moderation_us7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %irq_moderation_us7, align 4
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then9, %if.then2
  %type11 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %14 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type11, align 4
  %push_irq_moderation12 = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %push_irq_moderation12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %push_irq_moderation12, align 8
  tail call void %17(ptr noundef %channel) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.then6.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %irq_count = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 14
  %18 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %irq_count, align 4
  %19 = ptrtoint ptr %irq_mod_score to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %irq_mod_score, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_receive_skb_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !83, !85, !86, !88, !90, !92, !93, !94, !96, !98, !99, !101, !103, !105, !107, !109, !110, !111, !113, !114, !116, !117, !119, !121, !123, !124, !125, !127, !129, !130, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @efx_interrupt_mode, !1, !"efx_interrupt_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 28, i32 14}
!2 = !{ptr @__param_irq_adapt_low_thresh, !3, !"__param_irq_adapt_low_thresh", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_irq_adapt_low_threshtype574, !3, !"__UNIQUE_ID_irq_adapt_low_threshtype574", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_irq_adapt_low_thresh575, !6, !"__UNIQUE_ID_irq_adapt_low_thresh575", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 41, i32 1}
!7 = !{ptr @__param_irq_adapt_high_thresh, !8, !"__param_irq_adapt_high_thresh", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 45, i32 1}
!9 = !{ptr @__UNIQUE_ID_irq_adapt_high_threshtype576, !8, !"__UNIQUE_ID_irq_adapt_high_threshtype576", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_irq_adapt_high_thresh577, !11, !"__UNIQUE_ID_irq_adapt_high_thresh577", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 46, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 285, i32 4}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 292, i32 4}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 295, i32 4}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 318, i32 4}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 429, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @efx_probe_eventq.__UNIQUE_ID_ddebug599, !21, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 450, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @efx_init_eventq.__UNIQUE_ID_ddebug602, !27, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 465, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @efx_start_eventq.__UNIQUE_ID_ddebug603, !31, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 491, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @efx_fini_eventq.__UNIQUE_ID_ddebug604, !35, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 500, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @efx_remove_eventq.__UNIQUE_ID_ddebug605, !39, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!42 = !{ptr @efx_copy_channel.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 631, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @efx_copy_channel.__key.17, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 633, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @efx_copy_channel.__key.19, !46, !"__key", i1 false, i1 false}
!49 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 686, i32 7}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 687, i32 10}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 690, i32 10}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 692, i32 10}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 694, i32 10}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 697, i32 21}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 726, i32 4}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 746, i32 2}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @efx_remove_channel.__UNIQUE_ID_ddebug611, !65, !"__UNIQUE_ID_ddebug611", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 852, i32 3}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 929, i32 6}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @efx_set_channels.__UNIQUE_ID_ddebug619, !71, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 1153, i32 3}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 1155, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @efx_stop_channels.__UNIQUE_ID_ddebug620, !77, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!80 = !{ptr @rss_cpus, !81, !"rss_cpus", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 37, i32 14}
!82 = !{ptr @__param_str_irq_adapt_low_thresh, !3, !"__param_str_irq_adapt_low_thresh", i1 false, i1 false}
!83 = !{ptr @irq_adapt_low_thresh, !84, !"irq_adapt_low_thresh", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 39, i32 21}
!85 = !{ptr @__param_str_irq_adapt_high_thresh, !8, !"__param_str_irq_adapt_high_thresh", i1 false, i1 false}
!86 = !{ptr @irq_adapt_high_thresh, !87, !"irq_adapt_high_thresh", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 44, i32 21}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 91, i32 4}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 109, i32 3}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @efx_wanted_parallelism.__UNIQUE_ID_ddebug578, !91, !"__UNIQUE_ID_ddebug578", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 122, i32 4}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!98 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 172, i32 3}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 175, i32 3}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 179, i32 3}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 191, i32 3}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 203, i32 3}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @efx_allocate_msix_channels.__UNIQUE_ID_ddebug583, !108, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 248, i32 2}
!113 = !{ptr @efx_allocate_msix_channels.__UNIQUE_ID_ddebug598, !112, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!114 = !{ptr @efx_alloc_channel.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 554, i32 2}
!116 = !{ptr @efx_alloc_channel.__key.47, !115, !"__key", i1 false, i1 false}
!117 = !{ptr @efx_alloc_channel.__key.48, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 559, i32 2}
!119 = !{ptr @efx_default_channel_type, !120, !"efx_default_channel_type", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 67, i32 38}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 645, i32 2}
!123 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @efx_probe_channel.__UNIQUE_ID_ddebug610, !122, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/sfc/efx_common.h", i32 68, i32 3}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 877, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @efx_set_xdp_tx_queue.__UNIQUE_ID_ddebug618, !128, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!131 = distinct !{null, !132, !"napi_weight", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sfc/efx_channels.c", i32 52, i32 12}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i8 0, i8 2}
!143 = !{!"auto-init"}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2149137016, i64 2149137021, i64 2149137034, i64 2149137078, i64 2149137112, i64 2149137133}
!146 = !{i32 0, i32 33}
!147 = !{i64 2159374852}
!148 = !{i64 2159415302}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2159413228, i64 2159413732, i64 2159413265, i64 2159413321, i64 2159413355, i64 2159413379, i64 2159413420, i64 2159413441, i64 2159413469, i64 2159413503}
!151 = !{i64 2159414648}
!152 = !{i64 2159415961, i64 2159416466, i64 2159415998, i64 2159416054, i64 2159416088, i64 2159416112, i64 2159416153, i64 2159416174, i64 2159416202, i64 2159416236}
!153 = !{i64 2148579751, i64 2148579777, i64 2148579806, i64 2148579840, i64 2148579871, i64 2148579894}
!154 = !{i64 2155854934}
