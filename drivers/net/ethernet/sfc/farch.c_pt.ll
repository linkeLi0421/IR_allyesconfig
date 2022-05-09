; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/farch.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/farch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.efx_farch_register_test = type { i32, %union.efx_oword }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%union.efx_qword = type { [1 x i64] }
%struct.efx_tx_buffer = type { %union.anon.146, %union.anon.147, i16, i16, i16, i16 }
%union.anon.146 = type { ptr }
%union.anon.147 = type { %union.efx_qword }
%struct.siena_nic_data = type { ptr, i32, [59 x i64], ptr, ptr, i32, %struct.efx_buffer, %struct.list_head, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.efx_rx_buffer = type { i32, ptr, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.127 = type { ptr }
%union.efx_dword = type { [1 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.efx_farch_filter_state = type { %struct.rw_semaphore, [4 x %struct.efx_farch_filter_table] }
%struct.efx_farch_filter_table = type { i32, i32, i32, i32, i32, ptr, ptr, [10 x i32] }
%struct.efx_farch_filter_spec = type { i8, i8, i16, [3 x i32] }
%struct.efx_arfs_rule = type { %struct.hlist_node, %struct.efx_filter_spec, i16, i16, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"wrote %08x:%08x:%08x:%08x read %08x:%08x:%08x:%08x at address 0x%x mask %08x:%08x:%08x:%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@efx_farch_rx_init.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_farch_rx_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/ethernet/sfc/farch.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RX queue %d ring in special buffers %d-%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"channel %d unknown event type %d (data %08x:%08x)\0A\00", [45 x i8] zeroinitializer }, align 32
@efx_farch_ev_init.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_farch_ev_init\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"channel %d event queue in special buffers %d-%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"SYSTEM ERROR %08x:%08x:%08x:%08x status %08x:%08x:%08x:%08x: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disabling bus mastering\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no recognised error\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SYSTEM ERROR: memory parity error %08x:%08x:%08x:%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SYSTEM ERROR - reset scheduled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"SYSTEM ERROR - max number of errors seen.NIC will be disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Reducing VF count from from %d to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@efx_farch_filter_range_table = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 3, i32 3], [36 x i8] zeroinitializer }, align 32
@efx_farch_filter_table_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@efx_alloc_special_buffer.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efx_alloc_special_buffer\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"allocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", [63 x i8] zeroinitializer }, align 32
@efx_init_special_buffer.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efx_init_special_buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mapping special buffer %d at %llx\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_fini_special_buffer.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efx_fini_special_buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unmapping special buffers %d-%d\0A\00", [63 x i8] zeroinitializer }, align 32
@efx_free_special_buffer.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efx_free_special_buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"deallocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to flush %d queues (rx %d+%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@efx_check_tx_flush_complete.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efx_check_tx_flush_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"flush did not complete on TXQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@efx_check_tx_flush_complete.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"flush complete on TXQ %d, so drain the queue\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dropped %d events (index=%d expected=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"channel %d unexpected TX event %08x:%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@efx_farch_handle_generated_event.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"efx_farch_handle_generated_event\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"channel %d received generated event %08x:%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@efx_farch_handle_driver_event.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 1, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efx_farch_handle_driver_event\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel %d EVQ %d initialised\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"channel %d seen DRIVER RX_RESET event. Resetting.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"RX DMA Q %d reports descriptor fetch error. RX Q %d is disabled.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"TX DMA Q %d reports descriptor fetch error. TX Q %d is disabled.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RXQ %d flush retry\0A\00", [44 x i8] zeroinitializer }, align 32
@efx_farch_filter_type_match_pri = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\01\00\01\02\03\00\00\04\04", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 5, i64 6, i64 7, i64 8, i64 12]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 11, i64 14, i64 15]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 272, i64 610, i64 619, i64 1024]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 148, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 521, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1322, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1350, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1468, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1479, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1496, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1500, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1708, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant [29 x i8] c"efx_farch_filter_range_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 2327, i32 45 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 2795, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 248, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 184, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 206, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 264, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 701, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 616, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 625, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 954, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 853, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1167, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1201, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1220, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1228, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1241, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1119, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [32 x i8] c"efx_farch_filter_type_match_pri\00", align 1
@___asan_gen_.165 = private constant [36 x i8] c"../drivers/net/ethernet/sfc/farch.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 2316, i32 17 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @efx_farch_filter_range_table, ptr @efx_farch_filter_table_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @efx_farch_filter_type_match_pri], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_farch_filter_range_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_farch_filter_table_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_farch_filter_type_match_pri to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_test_registers(ptr noundef %efx, ptr nocapture noundef readonly %regs, i32 noundef %n_regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_regs)
  %cmp2055.not = icmp eq i32 %n_regs, 0
  br i1 %cmp2055.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.02056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc1339, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efx_farch_register_test, ptr %regs, i32 %i.02056
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %mask3 = getelementptr %struct.efx_farch_register_test, ptr %regs, i32 %i.02056, i32 1
  %2 = ptrtoint ptr %mask3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %imask.sroa.0.0.copyload = load i64, ptr %mask3, align 8
  %imask.sroa.7.0.mask3.sroa_idx = getelementptr inbounds i8, ptr %mask3, i32 8
  %3 = ptrtoint ptr %imask.sroa.7.0.mask3.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %3)
  %imask.sroa.7.0.copyload = load i64, ptr %imask.sroa.7.0.mask3.sroa_idx, align 8
  %mask.sroa.0.sroa.0.0.extract.shift = lshr i64 %imask.sroa.0.0.copyload, 32
  %mask.sroa.0.sroa.0.0.extract.trunc = trunc i64 %mask.sroa.0.sroa.0.0.extract.shift to i32
  %mask.sroa.0.sroa.11.0.extract.trunc = trunc i64 %imask.sroa.0.0.copyload to i32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !90
  %add6.i = add i32 %1, 4
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %8, i32 %add6.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #14, !srcloc !90
  %add9.i = add i32 %1, 8
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %11, i32 %add9.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #14, !srcloc !90
  %original.sroa.9.8.insert.ext = zext i32 %12 to i64
  %original.sroa.9.8.insert.shift = shl nuw i64 %original.sroa.9.8.insert.ext, 32
  %add12.i = add i32 %1, 12
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %14, i32 %add12.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #14, !srcloc !90
  %original.sroa.9.12.insert.ext = zext i32 %15 to i64
  %original.sroa.9.12.insert.insert = or i64 %original.sroa.9.8.insert.shift, %original.sroa.9.12.insert.ext
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #14
  %16 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.0.sroa.0.0.extract.trunc)
  %17 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.0.sroa.11.0.extract.trunc)
  %mask.sroa.14.8.extract.shift1919 = lshr i64 %imask.sroa.7.0.copyload, 32
  %mask.sroa.14.8.extract.trunc1920 = trunc i64 %mask.sroa.14.8.extract.shift1919 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.14.8.extract.trunc1920)
  %mask.sroa.14.12.extract.trunc1924 = trunc i64 %imask.sroa.7.0.copyload to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %mask.sroa.14.12.extract.trunc1924)
  %original.sroa.0.sroa.7.0.insert.ext = zext i32 %9 to i64
  %original.sroa.0.sroa.0.0.insert.ext = zext i32 %6 to i64
  %original.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %original.sroa.0.sroa.0.0.insert.ext, 32
  %original.sroa.0.sroa.0.0.insert.insert = or i64 %original.sroa.0.sroa.0.0.insert.shift, %original.sroa.0.sroa.7.0.insert.ext
  %and91 = and i64 %original.sroa.0.sroa.0.0.insert.insert, %imask.sroa.0.0.copyload
  %reg.sroa.0.sroa.0.0.extract.shift = lshr i64 %and91, 32
  %reg.sroa.0.sroa.0.0.extract.trunc = trunc i64 %reg.sroa.0.sroa.0.0.extract.shift to i32
  %reg.sroa.0.sroa.14.0.extract.trunc = trunc i64 %and91 to i32
  %and95 = and i64 %original.sroa.9.8.insert.shift, %imask.sroa.7.0.copyload
  %or3971981 = or i32 %reg.sroa.0.sroa.14.0.extract.trunc, 16777216
  %reg.sroa.21.8.extract.shift18621982 = lshr exact i64 %and95, 32
  %reg.sroa.21.8.extract.trunc18631983 = trunc i64 %reg.sroa.21.8.extract.shift18621982 to i32
  %and5002002 = and i32 %reg.sroa.21.8.extract.trunc18631983, -16777217
  %reg.sroa.21.12.extract.trunc1877 = and i32 %15, %mask.sroa.14.12.extract.trunc1924
  %and65320052009 = and i32 %reg.sroa.21.12.extract.trunc1877, -16777217
  %or712 = or i64 %original.sroa.0.sroa.0.0.insert.insert, %imask.sroa.0.0.copyload
  %reg.sroa.0.sroa.0.0.extract.shift1882 = lshr i64 %or712, 32
  %reg.sroa.0.sroa.0.0.extract.trunc1883 = trunc i64 %reg.sroa.0.sroa.0.0.extract.shift1882 to i32
  %reg.sroa.0.sroa.14.0.extract.trunc1888 = trunc i64 %or712 to i32
  %or716 = or i64 %original.sroa.9.12.insert.insert, %imask.sroa.7.0.copyload
  %and9752012 = and i32 %reg.sroa.0.sroa.14.0.extract.trunc1888, -16777217
  %reg.sroa.21.8.extract.shift2013 = lshr i64 %or716, 32
  %reg.sroa.21.8.extract.trunc2014 = trunc i64 %reg.sroa.21.8.extract.shift2013 to i32
  %reg.sroa.21.12.extract.trunc = trunc i64 %or716 to i32
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body
  %j.02044 = phi i32 [ 0, %for.body ], [ %add, %for.inc.for.body11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %j.02044)
  %cmp12 = icmp ugt i32 %j.02044, 31
  br i1 %cmp12, label %cond.end20, label %cond.false

cond.false:                                       ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  %shr = lshr i32 %16, %j.02044
  br label %cond.end38.thread

cond.end20:                                       ; preds = %for.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %j.02044)
  %cmp22 = icmp ugt i32 %j.02044, 63
  br i1 %cmp22, label %cond.end38, label %cond.false26

cond.false26:                                     ; preds = %cond.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.02044)
  %cmp27.not = icmp eq i32 %j.02044, 32
  br i1 %cmp27.not, label %cond.false26.cond.end38.thread_crit_edge, label %cond.true28

cond.false26.cond.end38.thread_crit_edge:         ; preds = %cond.false26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end38.thread

cond.true28:                                      ; preds = %cond.false26
  call void @__sanitizer_cov_trace_pc() #16
  %sub30 = add nsw i32 %j.02044, -32
  %shr31 = lshr i32 %17, %sub30
  br label %cond.end38.thread

cond.end38.thread:                                ; preds = %cond.true28, %cond.false26.cond.end38.thread_crit_edge, %cond.false
  %cond211950.ph = phi i32 [ %shr, %cond.false ], [ 0, %cond.true28 ], [ 0, %cond.false26.cond.end38.thread_crit_edge ]
  %cond39.ph = phi i32 [ 0, %cond.false ], [ %shr31, %cond.true28 ], [ %17, %cond.false26.cond.end38.thread_crit_edge ]
  %20 = xor i1 %cmp12, true
  %or1955 = or i32 %cond39.ph, %cond211950.ph
  br label %cond.end56.thread

cond.end38:                                       ; preds = %cond.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %j.02044)
  %cmp40 = icmp ugt i32 %j.02044, 95
  br i1 %cmp40, label %cond.false63, label %cond.false44

cond.false44:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %j.02044)
  %cmp45.not = icmp eq i32 %j.02044, 64
  br i1 %cmp45.not, label %cond.false44.cond.end56.thread_crit_edge, label %cond.true46

cond.false44.cond.end56.thread_crit_edge:         ; preds = %cond.false44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end56.thread

cond.true46:                                      ; preds = %cond.false44
  call void @__sanitizer_cov_trace_pc() #16
  %sub48 = add nsw i32 %j.02044, -64
  %shr49 = lshr i32 %18, %sub48
  br label %cond.end56.thread

cond.end56.thread:                                ; preds = %cond.true46, %cond.false44.cond.end56.thread_crit_edge, %cond.end38.thread
  %or.cond17321961.ph = phi i1 [ true, %cond.end38.thread ], [ false, %cond.true46 ], [ false, %cond.false44.cond.end56.thread_crit_edge ]
  %or1960.ph = phi i32 [ %or1955, %cond.end38.thread ], [ 0, %cond.true46 ], [ 0, %cond.false44.cond.end56.thread_crit_edge ]
  %or.cond173119511959.ph = phi i1 [ %20, %cond.end38.thread ], [ true, %cond.true46 ], [ true, %cond.false44.cond.end56.thread_crit_edge ]
  %cond57.ph = phi i32 [ 0, %cond.end38.thread ], [ %shr49, %cond.true46 ], [ %18, %cond.false44.cond.end56.thread_crit_edge ]
  %or581966 = or i32 %cond57.ph, %or1960.ph
  br label %cond.end75

cond.false63:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %j.02044)
  %cmp64.not = icmp eq i32 %j.02044, 96
  br i1 %cmp64.not, label %cond.false63.cond.end75_crit_edge, label %cond.true65

cond.false63.cond.end75_crit_edge:                ; preds = %cond.false63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end75

cond.true65:                                      ; preds = %cond.false63
  call void @__sanitizer_cov_trace_pc() #16
  %sub67 = add nsw i32 %j.02044, -96
  %shr68 = lshr i32 %19, %sub67
  br label %cond.end75

cond.end75:                                       ; preds = %cond.true65, %cond.false63.cond.end75_crit_edge, %cond.end56.thread
  %cmp611971 = phi i1 [ false, %cond.true65 ], [ true, %cond.end56.thread ], [ false, %cond.false63.cond.end75_crit_edge ]
  %or581970 = phi i32 [ 0, %cond.true65 ], [ %or581966, %cond.end56.thread ], [ 0, %cond.false63.cond.end75_crit_edge ]
  %or.cond1731195119591969 = phi i1 [ true, %cond.true65 ], [ %or.cond173119511959.ph, %cond.end56.thread ], [ true, %cond.false63.cond.end75_crit_edge ]
  %or.cond173219611968 = phi i1 [ true, %cond.true65 ], [ %or.cond17321961.ph, %cond.end56.thread ], [ true, %cond.false63.cond.end75_crit_edge ]
  %cond76 = phi i32 [ %shr68, %cond.true65 ], [ 0, %cond.end56.thread ], [ %19, %cond.false63.cond.end75_crit_edge ]
  %or77 = or i32 %cond76, %or581970
  %add = add nuw nsw i32 %j.02044, 1
  %and = and i32 %or77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end75.for.inc_crit_edge, label %do.body88

cond.end75.for.inc_crit_edge:                     ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body88:                                        ; preds = %cond.end75
  %shl169 = shl nuw i32 1, %j.02044
  %cond188 = select i1 %cmp12, i32 0, i32 %shl169
  %21 = xor i32 %cond188, -1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and194 = and i32 %22, %reg.sroa.0.sroa.0.0.extract.trunc
  %23 = tail call i32 @llvm.bswap.i32(i32 %cond188)
  %or244 = or i32 %and194, %23
  br i1 %or.cond1731195119591969, label %do.body88.cond.end394_crit_edge, label %cond.false305

do.body88.cond.end394_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end394

cond.false305:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.02044)
  %cmp306.not = icmp eq i32 %j.02044, 32
  br i1 %cmp306.not, label %cond.end394.thread, label %cond.true383

cond.true383:                                     ; preds = %cond.false305
  call void @__sanitizer_cov_trace_pc() #16
  %sub321 = add nsw i32 %j.02044, -32
  %shl322 = shl nuw i32 1, %sub321
  %24 = xor i32 %shl322, -1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and3471973 = and i32 %25, %reg.sroa.0.sroa.14.0.extract.trunc
  br label %cond.end394

cond.end394:                                      ; preds = %cond.true383, %do.body88.cond.end394_crit_edge
  %and3471975 = phi i32 [ %and3471973, %cond.true383 ], [ %reg.sroa.0.sroa.14.0.extract.trunc, %do.body88.cond.end394_crit_edge ]
  %cond392 = phi i32 [ %shl322, %cond.true383 ], [ 0, %do.body88.cond.end394_crit_edge ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %cond392)
  %or397 = or i32 %26, %and3471975
  br i1 %or.cond173219611968, label %cond.end394.cond.end547_crit_edge, label %cond.false458

cond.end394.cond.end547_crit_edge:                ; preds = %cond.end394
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end547

cond.end394.thread:                               ; preds = %cond.false305
  br i1 %or.cond173219611968, label %cond.end394.thread.cond.end547_crit_edge, label %cond.end394.thread.cond.true536_crit_edge

cond.end394.thread.cond.true536_crit_edge:        ; preds = %cond.end394.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true536

cond.end394.thread.cond.end547_crit_edge:         ; preds = %cond.end394.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end547

cond.false458:                                    ; preds = %cond.end394
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %j.02044)
  %cmp459.not = icmp eq i32 %j.02044, 64
  br i1 %cmp459.not, label %cond.false458.cond.end547_crit_edge, label %cond.false458.cond.true536_crit_edge

cond.false458.cond.true536_crit_edge:             ; preds = %cond.false458
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true536

cond.false458.cond.end547_crit_edge:              ; preds = %cond.false458
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end547

cond.true536:                                     ; preds = %cond.false458.cond.true536_crit_edge, %cond.end394.thread.cond.true536_crit_edge
  %or39719841992 = phi i32 [ %or397, %cond.false458.cond.true536_crit_edge ], [ %or3971981, %cond.end394.thread.cond.true536_crit_edge ]
  %sub474 = add nsw i32 %j.02044, -64
  %shl475 = shl nuw i32 1, %sub474
  %27 = xor i32 %shl475, -1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and500 = and i32 %28, %reg.sroa.21.8.extract.trunc18631983
  br label %cond.end547

cond.end547:                                      ; preds = %cond.true536, %cond.false458.cond.end547_crit_edge, %cond.end394.thread.cond.end547_crit_edge, %cond.end394.cond.end547_crit_edge
  %and5001998 = phi i32 [ %and500, %cond.true536 ], [ %reg.sroa.21.8.extract.trunc18631983, %cond.end394.thread.cond.end547_crit_edge ], [ %reg.sroa.21.8.extract.trunc18631983, %cond.end394.cond.end547_crit_edge ], [ %and5002002, %cond.false458.cond.end547_crit_edge ]
  %or39719851997 = phi i32 [ %or39719841992, %cond.true536 ], [ %or3971981, %cond.end394.thread.cond.end547_crit_edge ], [ %or397, %cond.end394.cond.end547_crit_edge ], [ %or397, %cond.false458.cond.end547_crit_edge ]
  %cond545 = phi i32 [ %shl475, %cond.true536 ], [ 0, %cond.end394.thread.cond.end547_crit_edge ], [ 0, %cond.end394.cond.end547_crit_edge ], [ 1, %cond.false458.cond.end547_crit_edge ]
  %29 = tail call i32 @llvm.bswap.i32(i32 %cond545)
  %or550 = or i32 %29, %and5001998
  %reg.sroa.21.8.insert.ext1857 = zext i32 %or550 to i64
  %reg.sroa.21.8.insert.shift1858 = shl nuw i64 %reg.sroa.21.8.insert.ext1857, 32
  br i1 %cmp611971, label %cond.end547.cond.end700_crit_edge, label %cond.false611

cond.end547.cond.end700_crit_edge:                ; preds = %cond.end547
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end700

cond.false611:                                    ; preds = %cond.end547
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %j.02044)
  %cmp612.not = icmp eq i32 %j.02044, 96
  br i1 %cmp612.not, label %cond.false611.cond.end700_crit_edge, label %cond.true689

cond.false611.cond.end700_crit_edge:              ; preds = %cond.false611
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end700

cond.true689:                                     ; preds = %cond.false611
  call void @__sanitizer_cov_trace_pc() #16
  %sub627 = add nsw i32 %j.02044, -96
  %shl628 = shl nuw i32 1, %sub627
  %30 = xor i32 %shl628, -1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %and6532005 = and i32 %31, %reg.sroa.21.12.extract.trunc1877
  br label %cond.end700

cond.end700:                                      ; preds = %cond.true689, %cond.false611.cond.end700_crit_edge, %cond.end547.cond.end700_crit_edge
  %and6532007 = phi i32 [ %and6532005, %cond.true689 ], [ %reg.sroa.21.12.extract.trunc1877, %cond.end547.cond.end700_crit_edge ], [ %and65320052009, %cond.false611.cond.end700_crit_edge ]
  %cond698 = phi i32 [ %shl628, %cond.true689 ], [ 0, %cond.end547.cond.end700_crit_edge ], [ 1, %cond.false611.cond.end700_crit_edge ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %cond698)
  %or703 = or i32 %32, %and6532007
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1749 = getelementptr i8, ptr %34, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1749, i32 %or244) #14, !srcloc !91
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %36, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %or39719851997) #14, !srcloc !91
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %38, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %or550) #14, !srcloc !91
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1752 = getelementptr i8, ptr %40, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i1752, i32 %or703) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  %call2.i1754 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1756 = getelementptr i8, ptr %42, i32 %1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1756) #14, !srcloc !90
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1758 = getelementptr i8, ptr %45, i32 %add6.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i1758) #14, !srcloc !90
  %47 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i1761 = getelementptr i8, ptr %48, i32 %add9.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i1761) #14, !srcloc !90
  %50 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i1764 = getelementptr i8, ptr %51, i32 %add12.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i1764) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i1754) #14
  %reg.sroa.0.sroa.14.0.insert.ext = zext i32 %or39719851997 to i64
  %reg.sroa.0.sroa.0.0.insert.ext = zext i32 %or244 to i64
  %reg.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %reg.sroa.0.sroa.0.0.insert.ext, 32
  %reg.sroa.0.sroa.0.0.insert.insert = or i64 %reg.sroa.0.sroa.0.0.insert.shift, %reg.sroa.0.sroa.14.0.insert.ext
  %buf.sroa.0.sroa.8.0.insert.ext = zext i32 %46 to i64
  %buf.sroa.0.sroa.0.0.insert.ext = zext i32 %43 to i64
  %buf.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %buf.sroa.0.sroa.0.0.insert.ext, 32
  %buf.sroa.0.sroa.0.0.insert.insert = or i64 %buf.sroa.0.sroa.0.0.insert.shift, %buf.sroa.0.sroa.8.0.insert.ext
  %xor.i = xor i64 %buf.sroa.0.sroa.0.0.insert.insert, %reg.sroa.0.sroa.0.0.insert.insert
  %and.i = and i64 %xor.i, %imask.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %efx_masked_compare_oword.exit, label %cond.end700.do.body1341_crit_edge

cond.end700.do.body1341_crit_edge:                ; preds = %cond.end700
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1341

efx_masked_compare_oword.exit:                    ; preds = %cond.end700
  %buf.sroa.11.8.insert.ext = zext i32 %49 to i64
  %buf.sroa.11.8.insert.shift = shl nuw i64 %buf.sroa.11.8.insert.ext, 32
  %buf.sroa.11.12.insert.ext = zext i32 %52 to i64
  %buf.sroa.11.12.insert.insert = or i64 %buf.sroa.11.8.insert.shift, %buf.sroa.11.12.insert.ext
  %reg.sroa.21.12.insert.ext1873 = zext i32 %or703 to i64
  %reg.sroa.21.12.insert.insert1875 = or i64 %reg.sroa.21.8.insert.shift1858, %reg.sroa.21.12.insert.ext1873
  %xor5.i = xor i64 %buf.sroa.11.12.insert.insert, %reg.sroa.21.12.insert.insert1875
  %and7.i = and i64 %xor5.i, %imask.sroa.7.0.copyload
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool8.i.not = icmp eq i64 %and7.i, 0
  br i1 %tobool8.i.not, label %do.body709, label %efx_masked_compare_oword.exit.do.body1341_crit_edge

efx_masked_compare_oword.exit.do.body1341_crit_edge: ; preds = %efx_masked_compare_oword.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1341

do.body709:                                       ; preds = %efx_masked_compare_oword.exit
  %and822 = and i32 %22, %reg.sroa.0.sroa.0.0.extract.trunc1883
  br i1 %or.cond1731195119591969, label %do.body709.cond.end971_crit_edge, label %cond.false933

do.body709.cond.end971_crit_edge:                 ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end971

cond.false933:                                    ; preds = %do.body709
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.02044)
  %cmp934.not = icmp eq i32 %j.02044, 32
  br i1 %cmp934.not, label %cond.end971.thread, label %cond.end947

cond.end947:                                      ; preds = %cond.false933
  call void @__sanitizer_cov_trace_pc() #16
  %sub949 = add nsw i32 %j.02044, -32
  %shl950 = shl nuw i32 1, %sub949
  br label %cond.end971

cond.end971:                                      ; preds = %cond.end947, %do.body709.cond.end971_crit_edge
  %cond969 = phi i32 [ 0, %do.body709.cond.end971_crit_edge ], [ %shl950, %cond.end947 ]
  %53 = xor i32 %cond969, -1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %and975 = and i32 %54, %reg.sroa.0.sroa.14.0.extract.trunc1888
  br i1 %or.cond173219611968, label %cond.end971.cond.end1124_crit_edge, label %cond.false1086

cond.end971.cond.end1124_crit_edge:               ; preds = %cond.end971
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end1124

cond.end971.thread:                               ; preds = %cond.false933
  br i1 %or.cond173219611968, label %cond.end971.thread.cond.end1124_crit_edge, label %cond.end971.thread.cond.end1100_crit_edge

cond.end971.thread.cond.end1100_crit_edge:        ; preds = %cond.end971.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end1100

cond.end971.thread.cond.end1124_crit_edge:        ; preds = %cond.end971.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end1124

cond.false1086:                                   ; preds = %cond.end971
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %j.02044)
  %cmp1087.not = icmp eq i32 %j.02044, 64
  br i1 %cmp1087.not, label %cond.false1086.cond.end1124_crit_edge, label %cond.false1086.cond.end1100_crit_edge

cond.false1086.cond.end1100_crit_edge:            ; preds = %cond.false1086
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end1100

cond.false1086.cond.end1124_crit_edge:            ; preds = %cond.false1086
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end1124

cond.end1100:                                     ; preds = %cond.false1086.cond.end1100_crit_edge, %cond.end971.thread.cond.end1100_crit_edge
  %and97520152023 = phi i32 [ %and975, %cond.false1086.cond.end1100_crit_edge ], [ %and9752012, %cond.end971.thread.cond.end1100_crit_edge ]
  %sub1102 = add nsw i32 %j.02044, -64
  %shl1103 = shl nuw i32 1, %sub1102
  br label %cond.end1124

cond.end1124:                                     ; preds = %cond.end1100, %cond.false1086.cond.end1124_crit_edge, %cond.end971.thread.cond.end1124_crit_edge, %cond.end971.cond.end1124_crit_edge
  %and9752016 = phi i32 [ %and975, %cond.end971.cond.end1124_crit_edge ], [ %and97520152023, %cond.end1100 ], [ %and975, %cond.false1086.cond.end1124_crit_edge ], [ %and9752012, %cond.end971.thread.cond.end1124_crit_edge ]
  %cond1122 = phi i32 [ 0, %cond.end971.cond.end1124_crit_edge ], [ %shl1103, %cond.end1100 ], [ 1, %cond.false1086.cond.end1124_crit_edge ], [ 0, %cond.end971.thread.cond.end1124_crit_edge ]
  %55 = xor i32 %cond1122, -1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %and1128 = and i32 %56, %reg.sroa.21.8.extract.trunc2014
  %reg.sroa.21.8.insert.ext = zext i32 %and1128 to i64
  %reg.sroa.21.8.insert.shift = shl nuw i64 %reg.sroa.21.8.insert.ext, 32
  br i1 %cmp611971, label %cond.end1124.cond.end1277_crit_edge, label %cond.false1239

cond.end1124.cond.end1277_crit_edge:              ; preds = %cond.end1124
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end1277

cond.false1239:                                   ; preds = %cond.end1124
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %j.02044)
  %cmp1240.not = icmp eq i32 %j.02044, 96
  br i1 %cmp1240.not, label %cond.false1239.cond.end1277_crit_edge, label %cond.end1253

cond.false1239.cond.end1277_crit_edge:            ; preds = %cond.false1239
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end1277

cond.end1253:                                     ; preds = %cond.false1239
  call void @__sanitizer_cov_trace_pc() #16
  %sub1255 = add nsw i32 %j.02044, -96
  %shl1256 = shl nuw i32 1, %sub1255
  br label %cond.end1277

cond.end1277:                                     ; preds = %cond.end1253, %cond.false1239.cond.end1277_crit_edge, %cond.end1124.cond.end1277_crit_edge
  %cond1275 = phi i32 [ 0, %cond.end1124.cond.end1277_crit_edge ], [ %shl1256, %cond.end1253 ], [ 1, %cond.false1239.cond.end1277_crit_edge ]
  %57 = xor i32 %cond1275, -1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %and1281 = and i32 %58, %reg.sroa.21.12.extract.trunc
  %call3.i1768 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %59 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1770 = getelementptr i8, ptr %60, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1770, i32 %and822) #14, !srcloc !91
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i1773 = getelementptr i8, ptr %62, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i1773, i32 %and9752016) #14, !srcloc !91
  %63 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i1776 = getelementptr i8, ptr %64, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i1776, i32 %and1128) #14, !srcloc !91
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1779 = getelementptr i8, ptr %66, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i1779, i32 %and1281) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i1768) #14
  %call2.i1781 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1783 = getelementptr i8, ptr %68, i32 %1
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1783) #14, !srcloc !90
  %70 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1785 = getelementptr i8, ptr %71, i32 %add6.i
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i1785) #14, !srcloc !90
  %73 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i1788 = getelementptr i8, ptr %74, i32 %add9.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i1788) #14, !srcloc !90
  %76 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i1791 = getelementptr i8, ptr %77, i32 %add12.i
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i1791) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i1781) #14
  %reg.sroa.0.sroa.14.0.insert.ext1889 = zext i32 %and9752016 to i64
  %reg.sroa.0.sroa.0.0.insert.ext1884 = zext i32 %and822 to i64
  %reg.sroa.0.sroa.0.0.insert.shift1885 = shl nuw i64 %reg.sroa.0.sroa.0.0.insert.ext1884, 32
  %reg.sroa.0.sroa.0.0.insert.insert1887 = or i64 %reg.sroa.0.sroa.0.0.insert.shift1885, %reg.sroa.0.sroa.14.0.insert.ext1889
  %buf.sroa.0.sroa.8.0.insert.ext1834 = zext i32 %72 to i64
  %buf.sroa.0.sroa.0.0.insert.ext1830 = zext i32 %69 to i64
  %buf.sroa.0.sroa.0.0.insert.shift1831 = shl nuw i64 %buf.sroa.0.sroa.0.0.insert.ext1830, 32
  %buf.sroa.0.sroa.0.0.insert.insert1833 = or i64 %buf.sroa.0.sroa.0.0.insert.shift1831, %buf.sroa.0.sroa.8.0.insert.ext1834
  %xor.i1793 = xor i64 %buf.sroa.0.sroa.0.0.insert.insert1833, %reg.sroa.0.sroa.0.0.insert.insert1887
  %and.i1794 = and i64 %xor.i1793, %imask.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i1794)
  %tobool.not.i1795 = icmp eq i64 %and.i1794, 0
  br i1 %tobool.not.i1795, label %efx_masked_compare_oword.exit1803, label %cond.end1277.do.body1341_crit_edge

cond.end1277.do.body1341_crit_edge:               ; preds = %cond.end1277
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1341

efx_masked_compare_oword.exit1803:                ; preds = %cond.end1277
  %buf.sroa.11.8.insert.ext1822 = zext i32 %75 to i64
  %buf.sroa.11.8.insert.shift1823 = shl nuw i64 %buf.sroa.11.8.insert.ext1822, 32
  %buf.sroa.11.12.insert.ext1827 = zext i32 %78 to i64
  %buf.sroa.11.12.insert.insert1829 = or i64 %buf.sroa.11.8.insert.shift1823, %buf.sroa.11.12.insert.ext1827
  %reg.sroa.21.12.insert.ext = zext i32 %and1281 to i64
  %reg.sroa.21.12.insert.insert = or i64 %reg.sroa.21.8.insert.shift, %reg.sroa.21.12.insert.ext
  %xor5.i1798 = xor i64 %buf.sroa.11.12.insert.insert1829, %reg.sroa.21.12.insert.insert
  %and7.i1800 = and i64 %xor5.i1798, %imask.sroa.7.0.copyload
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i1800)
  %tobool8.i1801.not = icmp eq i64 %and7.i1800, 0
  br i1 %tobool8.i1801.not, label %efx_masked_compare_oword.exit1803.for.inc_crit_edge, label %efx_masked_compare_oword.exit1803.do.body1341_crit_edge

efx_masked_compare_oword.exit1803.do.body1341_crit_edge: ; preds = %efx_masked_compare_oword.exit1803
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1341

efx_masked_compare_oword.exit1803.for.inc_crit_edge: ; preds = %efx_masked_compare_oword.exit1803
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %efx_masked_compare_oword.exit1803.for.inc_crit_edge, %cond.end75.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

for.end:                                          ; preds = %for.inc
  %call3.i1805 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %79 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1807 = getelementptr i8, ptr %80, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1807, i32 %6) #14, !srcloc !91
  %81 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i1810 = getelementptr i8, ptr %82, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i1810, i32 %9) #14, !srcloc !91
  %83 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i1813 = getelementptr i8, ptr %84, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i1813, i32 %12) #14, !srcloc !91
  %85 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1816 = getelementptr i8, ptr %86, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i1816, i32 %15) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i1805) #14
  %inc1339 = add nuw i32 %i.02056, 1
  %exitcond2061.not = icmp eq i32 %inc1339, %n_regs
  br i1 %exitcond2061.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body1341:                                      ; preds = %efx_masked_compare_oword.exit1803.do.body1341_crit_edge, %cond.end1277.do.body1341_crit_edge, %efx_masked_compare_oword.exit.do.body1341_crit_edge, %cond.end700.do.body1341_crit_edge
  %reg.sroa.0.sroa.14.0 = phi i32 [ %or39719851997, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and9752016, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or39719851997, %cond.end700.do.body1341_crit_edge ], [ %and9752016, %cond.end1277.do.body1341_crit_edge ]
  %reg.sroa.0.sroa.0.0 = phi i32 [ %or244, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and822, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or244, %cond.end700.do.body1341_crit_edge ], [ %and822, %cond.end1277.do.body1341_crit_edge ]
  %reg.sroa.21.0.off0 = phi i32 [ %or703, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and1281, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or703, %cond.end700.do.body1341_crit_edge ], [ %and1281, %cond.end1277.do.body1341_crit_edge ]
  %reg.sroa.21.0.off32 = phi i32 [ %or550, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and1128, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or550, %cond.end700.do.body1341_crit_edge ], [ %and1128, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.0.sroa.8.0 = phi i32 [ %46, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %72, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %46, %cond.end700.do.body1341_crit_edge ], [ %72, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.0.sroa.0.0 = phi i32 [ %43, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %69, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %43, %cond.end700.do.body1341_crit_edge ], [ %69, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.11.3.off0 = phi i32 [ %52, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %78, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %52, %cond.end700.do.body1341_crit_edge ], [ %78, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.11.3.off32 = phi i32 [ %49, %efx_masked_compare_oword.exit.do.body1341_crit_edge ], [ %75, %efx_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %49, %cond.end700.do.body1341_crit_edge ], [ %75, %cond.end1277.do.body1341_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %87 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_enable, align 4
  %and1342 = and i32 %88, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1342)
  %tobool1343.not = icmp eq i32 %and1342, 0
  br i1 %tobool1343.not, label %do.body1341.cleanup_crit_edge, label %if.then1344

do.body1341.cleanup_crit_edge:                    ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1344:                                      ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %89 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_dev, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %reg.sroa.21.0.off0)
  %92 = tail call i32 @llvm.bswap.i32(i32 %reg.sroa.21.0.off32)
  %93 = tail call i32 @llvm.bswap.i32(i32 %reg.sroa.0.sroa.14.0)
  %94 = tail call i32 @llvm.bswap.i32(i32 %reg.sroa.0.sroa.0.0)
  %95 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.11.3.off0)
  %96 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.11.3.off32)
  %97 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.8.0)
  %98 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.sroa.0.0)
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull @.str, i32 noundef %91, i32 noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %98, i32 noundef %1, i32 noundef %19, i32 noundef %18, i32 noundef %17, i32 noundef %16) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then1344, %do.body1341.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then1344 ], [ -5, %do.body1341.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_tx_write(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %0 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_count, align 4
  %xmit_pending = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %2 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %xmit_pending, align 8
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %3 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %insert_count, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp = icmp eq i32 %1, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %buffer4 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %txd.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %5 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_count, align 4
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %8, %6
  %9 = ptrtoint ptr %buffer4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer4, align 32
  %11 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txd.i, align 8
  %add.ptr.i = getelementptr %union.efx_qword, ptr %12, i32 %and
  %inc = add i32 %6, 1
  store i32 %inc, ptr %write_count, align 4
  %13 = getelementptr %struct.efx_tx_buffer, ptr %10, i32 %and, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %add.ptr.i, align 8
  %flags = getelementptr %struct.efx_tx_buffer, ptr %10, i32 %and, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 8
  %20 = and i16 %19, 1
  %and14 = zext i16 %20 to i32
  %shl = shl nuw nsw i32 %and14, 30
  %len = getelementptr %struct.efx_tx_buffer, ptr %10, i32 %and, i32 3
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len, align 2
  %conv17 = zext i16 %22 to i32
  %shl18 = shl nuw i32 %conv17, 16
  %or2071 = or i32 %shl, %shl18
  %23 = tail call i32 @llvm.bswap.i32(i32 %or2071)
  %arrayidx26 = getelementptr [2 x i32], ptr %add.ptr.i, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx26, align 4
  %25 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %write_count, align 4
  %27 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %insert_count, align 128
  %cmp32.not = icmp eq i32 %26, %28
  br i1 %cmp32.not, label %do.body35, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body35:                                        ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @arm_heavy_mb() #14
  %empty_read_count1.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 41
  %29 = ptrtoint ptr %empty_read_count1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %empty_read_count1.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i = icmp ne i32 %30, 0
  %xor.i.i = xor i32 %30, %1
  %and.i.i = and i32 %xor.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.i.i = icmp eq i32 %and.i.i, 0
  %retval.0.i.i = select i1 %cmp.i.i, i1 %cmp2.i.i, i1 false
  %31 = ptrtoint ptr %empty_read_count1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %empty_read_count1.i.i, align 128
  br i1 %retval.0.i.i, label %efx_nic_may_push_tx_desc.exit, label %do.body35.if.else_crit_edge

do.body35.if.else_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

efx_nic_may_push_tx_desc.exit:                    ; preds = %do.body35
  %32 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %write_count, align 4
  %sub.i = sub i32 %33, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 1
  br i1 %cmp.i, label %if.then39, label %efx_nic_may_push_tx_desc.exit.if.else_crit_edge

efx_nic_may_push_tx_desc.exit.if.else_crit_edge:  ; preds = %efx_nic_may_push_tx_desc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then39:                                        ; preds = %efx_nic_may_push_tx_desc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptr_mask, align 4
  %and41 = and i32 %35, %1
  %36 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txd.i, align 8
  %add.ptr.i73 = getelementptr %union.efx_qword, ptr %37, i32 %and41
  %38 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %write_count, align 4
  %and.i = and i32 %39, %35
  %40 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %41 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr.i73, align 8
  %reg.sroa.0.sroa.0.0.extract.shift.i = lshr i64 %42, 32
  %reg.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %reg.sroa.0.sroa.0.0.extract.shift.i to i32
  %reg.sroa.0.sroa.6.0.extract.trunc.i = trunc i64 %42 to i32
  %43 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_queue, align 128
  %queue.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %45 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue.i, align 4
  %vi_stride.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %44, i32 0, i32 14
  %47 = ptrtoint ptr %vi_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vi_stride.i.i.i, align 128
  %mul.i.i.i = mul i32 %48, %46
  %add.i.i.i = add i32 %mul.i.i.i, 2576
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %44, i32 0, i32 13
  %49 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %reg.sroa.0.sroa.0.0.extract.trunc.i) #14, !srcloc !91
  %add2.i.i = add i32 %mul.i.i.i, 2580
  %51 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %52, i32 %add2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %reg.sroa.0.sroa.6.0.extract.trunc.i) #14, !srcloc !91
  %add4.i.i = add i32 %mul.i.i.i, 2584
  %53 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %54, i32 %add4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 128) #14, !srcloc !91
  %add6.i.i = add i32 %mul.i.i.i, 2588
  %55 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %56, i32 %add6.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %40) #14, !srcloc !91
  %pushes = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 34
  %57 = ptrtoint ptr %pushes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pushes, align 32
  %inc43 = add i32 %58, 1
  store i32 %inc43, ptr %pushes, align 32
  br label %cleanup

if.else:                                          ; preds = %efx_nic_may_push_tx_desc.exit.if.else_crit_edge, %do.body35.if.else_crit_edge
  %59 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %write_count, align 4
  %61 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ptr_mask, align 4
  %and.i76 = and i32 %62, %60
  %63 = tail call i32 @llvm.bswap.i32(i32 %and.i76) #14
  %64 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_queue, align 128
  %queue.i77 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %66 = ptrtoint ptr %queue.i77 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %queue.i77, align 4
  %vi_stride.i.i.i78 = getelementptr inbounds %struct.efx_nic, ptr %65, i32 0, i32 14
  %68 = ptrtoint ptr %vi_stride.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vi_stride.i.i.i78, align 128
  %mul.i.i.i79 = mul i32 %69, %67
  %add.i.i.i80 = add i32 %mul.i.i.i79, 2588
  %membase.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %65, i32 0, i32 13
  %70 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %71, i32 %add.i.i.i80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %63) #14, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_farch_tx_limit_len(ptr nocapture noundef readnone %tx_queue, i32 noundef %dma_addr, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = and i32 %dma_addr, 4095
  %add = sub nuw nsw i32 4096, %neg
  %0 = tail call i32 @llvm.umin.i32(i32 %add, i32 %len)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_tx_probe(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %label = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 2
  %2 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %label, align 8
  %and = and i32 %3, 1
  %and3 = shl i32 %3, 1
  %4 = and i32 %and3, 4
  %or = or i32 %4, %and
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %type, align 4
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %6 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptr_mask, align 4
  %txd = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %add = shl i32 %7, 3
  %mul = add i32 %add, 8
  %call = tail call fastcc i32 @efx_alloc_special_buffer(ptr noundef %1, ptr noundef %txd, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_alloc_special_buffer(ptr noundef %efx, ptr noundef %buffer, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 8
  %add = add i32 %len, 4095
  %and = and i32 %add, -4096
  %call = tail call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %buffer, i32 noundef %and, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %div88 = lshr i32 %add, 12
  %entries = getelementptr inbounds %struct.efx_special_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div88, ptr %entries, align 4
  %dma_addr = getelementptr inbounds %struct.efx_buffer, ptr %buffer, i32 0, i32 1
  %3 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_addr, align 4
  %and3 = and i32 %4, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.end14, label %do.body8, !prof !94

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #14, !srcloc !95
  unreachable

do.end14:                                         ; preds = %if.end
  %next_buffer_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 38
  %5 = ptrtoint ptr %next_buffer_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_buffer_table, align 8
  %index = getelementptr inbounds %struct.efx_special_buffer, ptr %buffer, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %index, align 4
  %8 = load i32, ptr %next_buffer_table, align 8
  %add17 = add i32 %8, %div88
  store i32 %add17, ptr %next_buffer_table, align 8
  %vf_init_count.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %9 = ptrtoint ptr %vf_init_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vf_init_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %do.end14.do.body37_crit_edge, label %land.rhs

do.end14.do.body37_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body37

land.rhs:                                         ; preds = %do.end14
  %vf_buftbl_base = getelementptr inbounds %struct.siena_nic_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %vf_buftbl_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_buftbl_base, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add17)
  %cmp = icmp ult i32 %12, %add17
  br i1 %cmp, label %do.body28, label %land.rhs.do.body37_crit_edge, !prof !92

land.rhs.do.body37_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body37

do.body28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #14, !srcloc !96
  unreachable

do.body37:                                        ; preds = %land.rhs.do.body37_crit_edge, %do.end14.do.body37_crit_edge
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and38 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.cleanup_crit_edge, label %do.body41

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_alloc_special_buffer.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_alloc_special_buffer, %if.then50)) #14
          to label %cleanup [label %if.then50], !srcloc !97

if.then50:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %15 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev, align 4
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %19 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entries, align 4
  %add54 = add i32 %18, -1
  %sub = add i32 %add54, %20
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %22 to i64
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %25 = ptrtoint ptr %24 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %25) #14
  %conv61 = zext i32 %call.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_alloc_special_buffer.__UNIQUE_ID_ddebug526, ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %18, i32 noundef %sub, i64 noundef %conv, i32 noundef %and, ptr noundef %24, i64 noundef %conv61) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body41, %do.body37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %do.body37.cleanup_crit_edge ], [ 0, %do.body41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_tx_init(ptr nocapture noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %and = and i32 %1, 1
  %2 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue, align 128
  %txd = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  tail call fastcc void @efx_init_special_buffer(ptr noundef %3, ptr noundef %txd)
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 8
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  %shl = shl i32 %7, 24
  %label = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 2
  %8 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %label, align 8
  %shl4 = shl i32 %9, 5
  %or6109 = or i32 %shl4, %shl
  %entries = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries, align 8
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #14, !range !98
  %shl8 = shl nuw nsw i32 %12, 3
  %or10110 = or i32 %or6109, %shl8
  %13 = tail call i32 @llvm.bswap.i32(i32 %or10110)
  %index = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %shl15 = shl i32 %15, 4
  %shr = lshr i32 %7, 8
  %or21111 = or i32 %shl15, %shr
  %16 = tail call i32 @llvm.bswap.i32(i32 %or21111)
  %17 = xor i32 %and, 1
  %or45 = mul nuw nsw i32 %17, 6
  %or70 = or i32 %or45, 9
  %type78 = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %type78 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type78, align 4
  %txd_ptr_tbl_base = getelementptr inbounds %struct.efx_nic_type, ptr %19, i32 0, i32 119
  %20 = ptrtoint ptr %txd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txd_ptr_tbl_base, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queue, align 4
  %mul.i = shl i32 %23, 4
  %add.i = add i32 %mul.i, %21
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #14, !srcloc !91
  %add7.i.i = add i32 %add.i, 4
  %26 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %27, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %16) #14, !srcloc !91
  %add9.i.i = add i32 %add.i, 8
  %28 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %29, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %or70) #14, !srcloc !91
  %add11.i.i = add i32 %add.i, 12
  %30 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %31, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  %and81 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %cond = select i1 %tobool82.not, i32 352321536, i32 0
  %34 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %queue, align 4
  %mul.i112 = shl i32 %35, 4
  %add.i113 = add i32 %mul.i112, 16252928
  %call3.i.i115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %36 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i117 = getelementptr i8, ptr %37, i32 %add.i113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i117, i32 %cond) #14, !srcloc !91
  %add7.i.i119 = add i32 %mul.i112, 16252932
  %38 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i120 = getelementptr i8, ptr %39, i32 %add7.i.i119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i120, i32 0) #14, !srcloc !91
  %add9.i.i122 = add i32 %mul.i112, 16252936
  %40 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i123 = getelementptr i8, ptr %41, i32 %add9.i.i122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i123, i32 0) #14, !srcloc !91
  %add11.i.i125 = add i32 %mul.i112, 16252940
  %42 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i126 = getelementptr i8, ptr %43, i32 %add11.i.i125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i126, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i115) #14
  %tso_version = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %44 = ptrtoint ptr %tso_version to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %tso_version, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_init_special_buffer(ptr noundef %efx, ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.efx_special_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39.not = icmp eq i32 %1, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %index1 = getelementptr inbounds %struct.efx_special_buffer, ptr %buffer, i32 0, i32 1
  %dma_addr2 = getelementptr inbounds %struct.efx_buffer, ptr %buffer, i32 0, i32 1
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %membase.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  br label %for.body

for.body:                                         ; preds = %do.body15.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body15.for.body_crit_edge ]
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %add = add i32 %3, %i.040
  %4 = ptrtoint ptr %dma_addr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr2, align 4
  %mul = shl i32 %i.040, 12
  %add3 = add i32 %5, %mul
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.do.body15_crit_edge, label %do.body5

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15

do.body5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_special_buffer.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_init_special_buffer, %if.then9)) #14
          to label %do.body15 [label %if.then9], !srcloc !97

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %conv = zext i32 %add3 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_special_buffer.__UNIQUE_ID_ddebug524, ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %add, i64 noundef %conv) #14
  br label %do.body15

do.body15:                                        ; preds = %if.then9, %do.body5, %for.body.do.body15_crit_edge
  %10 = shl i32 %add3, 2
  %shl = and i32 %10, -16384
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %12 = lshr i32 %add3, 6
  %13 = and i32 %12, 50331648
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i, align 4
  %buf_tbl_base.i = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 121
  %18 = ptrtoint ptr %buf_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_tbl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %19
  %mul.i.i = shl i32 %add, 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #14, !srcloc !91
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %13) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  %inc = add nuw i32 %i.040, 1
  %20 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entries, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %do.body15.for.body_crit_edge, label %do.body15.for.end_crit_edge

do.body15.for.end_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body15.for.body_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %do.body15.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_tx_fini(ptr nocapture noundef readonly %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %txd_ptr_tbl_base = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 119
  %4 = ptrtoint ptr %txd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txd_ptr_tbl_base, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  %mul.i = shl i32 %7, 4
  %add.i = add i32 %mul.i, %5
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !91
  %add7.i.i = add i32 %add.i, 4
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %11, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #14, !srcloc !91
  %add9.i.i = add i32 %add.i, 8
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %13, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #14, !srcloc !91
  %add11.i.i = add i32 %add.i, 12
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %15, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  %txd = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  tail call fastcc void @efx_fini_special_buffer(ptr noundef %1, ptr noundef %txd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_fini_special_buffer(ptr noundef %efx, ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.efx_special_buffer, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.efx_special_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.body19_crit_edge, label %do.body5

do.body.do.body19_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_special_buffer.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_fini_special_buffer, %if.then9)) #14
          to label %do.body19 [label %if.then9], !srcloc !97

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries, align 4
  %add13 = add i32 %9, -1
  %sub14 = add i32 %add13, %11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_special_buffer.__UNIQUE_ID_ddebug525, ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %sub14) #14
  br label %do.body19

do.body19:                                        ; preds = %if.then9, %do.body5, %do.body.do.body19_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %1)
  %13 = or i32 %sub, 1073741824
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #14, !srcloc !91
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %18, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %14) #14, !srcloc !91
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %20, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #14, !srcloc !91
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %22, i32 1628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_tx_remove(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %txd = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  %2 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txd, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.efx_free_special_buffer.exit_crit_edge, label %do.body.i

entry.efx_free_special_buffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_free_special_buffer.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end19.i_crit_edge, label %do.body3.i

do.body.i.do.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_free_special_buffer.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_farch_tx_remove, %if.then7.i)) #14
          to label %do.end19.i [label %if.then7.i], !srcloc !97

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %index.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %entries.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries.i, align 4
  %add.i = add i32 %9, -1
  %sub.i = add i32 %add.i, %11
  %dma_addr.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %13 to i64
  %len.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txd, align 4
  %18 = ptrtoint ptr %17 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %18) #14
  %conv16.i = zext i32 %call.i.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_free_special_buffer.__UNIQUE_ID_ddebug527, ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %sub.i, i64 noundef %conv.i, i32 noundef %15, ptr noundef %17, i64 noundef %conv16.i) #14
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end19.i_crit_edge
  tail call void @efx_nic_free_buffer(ptr noundef %1, ptr noundef %txd) #14
  %entries21.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %entries21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %entries21.i, align 4
  br label %efx_free_special_buffer.exit

efx_free_special_buffer.exit:                     ; preds = %do.end19.i, %entry.efx_free_special_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_rx_write(ptr nocapture noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %notified_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 8
  %added_count = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 7
  %2 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %notified_count, align 4
  %4 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %added_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not20 = icmp eq i32 %3, %5
  br i1 %cmp.not20, label %entry.do.body_crit_edge, label %while.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %rxd.i.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  %buffer.i.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %3, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask, align 32
  %and = and i32 %8, %6
  %9 = ptrtoint ptr %rxd.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxd.i.i, align 4
  %add.ptr.i.i = getelementptr %union.efx_qword, ptr %10, i32 %and
  %11 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.efx_rx_buffer, ptr %12, i32 %and
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr.i.i, align 8
  %len.i = getelementptr %struct.efx_rx_buffer, ptr %12, i32 %and, i32 3
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len.i, align 2
  %conv3.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type.i, align 4
  %rx_buffer_padding.i = getelementptr inbounds %struct.efx_nic_type, ptr %22, i32 0, i32 128
  %23 = ptrtoint ptr %rx_buffer_padding.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buffer_padding.i, align 4
  %sub.i = sub i32 %conv3.i, %24
  %25 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #14
  %26 = lshr i32 %25, 16
  %arrayidx12.i = getelementptr [2 x i32], ptr %add.ptr.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx12.i, align 4
  %28 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %notified_count, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %notified_count, align 4
  %30 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %added_count, align 8
  %cmp.not = icmp eq i32 %inc, %31
  br i1 %cmp.not, label %while.body.do.body_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %while.body.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !99
  tail call void @arm_heavy_mb() #14
  %32 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %added_count, align 8
  %ptr_mask5 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %34 = ptrtoint ptr %ptr_mask5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptr_mask5, align 32
  %and6 = and i32 %35, %33
  %36 = tail call i32 @llvm.bswap.i32(i32 %and6)
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %37 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel.i, align 4
  %vi_stride.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %vi_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vi_stride.i.i, align 128
  %mul.i.i = mul i32 %40, %38
  %add.i.i = add i32 %mul.i.i, 2108
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %41 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %36) #14, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_rx_probe(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %2 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask, align 32
  %rxd = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  %add = shl i32 %3, 3
  %mul = add i32 %add, 8
  %call = tail call fastcc i32 @efx_alloc_special_buffer(ptr noundef %1, ptr noundef %rxd, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_rx_init(ptr nocapture noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %rx_scatter = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_scatter, align 4, !range !100
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.do.end15_crit_edge, label %do.body3

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_farch_rx_init.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_farch_rx_init, %if.then8)) #14
          to label %do.end15 [label %if.then8], !srcloc !97

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 4
  %index = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entries, align 4
  %add = add i32 %11, -1
  %sub = add i32 %add, %13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_farch_rx_init.__UNIQUE_ID_ddebug533, ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef %11, i32 noundef %sub) #14
  br label %do.end15

do.end15:                                         ; preds = %if.then8, %do.body3, %entry.do.end15_crit_edge
  %scatter_n = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 10
  %14 = ptrtoint ptr %scatter_n to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %scatter_n, align 4
  %rxd16 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  tail call fastcc void @efx_init_special_buffer(ptr noundef %1, ptr noundef %rxd16)
  %channel = getelementptr i8, ptr %rx_queue, i32 -508
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel, align 4
  %shl = shl i32 %16, 24
  %shl21 = shl i32 %16, 5
  %entries25 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %entries25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entries25, align 4
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 false) #14, !range !98
  %shl27 = shl nuw nsw i32 %19, 3
  %20 = shl nuw nsw i8 %3, 1
  %21 = or i8 %20, 1
  %or2377 = zext i8 %21 to i32
  %or2978 = or i32 %shl21, %or2377
  %or35 = or i32 %or2978, %shl
  %or36 = or i32 %or35, %shl27
  %22 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %index39 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %index39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index39, align 4
  %shl40 = shl i32 %24, 4
  %shr = lshr i32 %16, 8
  %or4679 = or i32 %shl40, %shr
  %25 = tail call i32 @llvm.bswap.i32(i32 %or4679)
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %rxd_ptr_tbl_base = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 120
  %28 = ptrtoint ptr %rxd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rxd_ptr_tbl_base, align 8
  %mul.i = shl i32 %16, 4
  %add.i = add i32 %29, %mul.i
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %22) #14, !srcloc !91
  %add7.i.i = add i32 %add.i, 4
  %32 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %33, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %25) #14, !srcloc !91
  %add9.i.i = add i32 %add.i, 8
  %34 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %35, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 32769) #14, !srcloc !91
  %add11.i.i = add i32 %add.i, 12
  %36 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %37, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_rx_fini(ptr nocapture noundef readonly %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %rxd_ptr_tbl_base = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 120
  %4 = ptrtoint ptr %rxd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxd_ptr_tbl_base, align 8
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %7, 4
  %add.i = add i32 %mul.i, %5
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !91
  %add7.i.i = add i32 %add.i, 4
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %11, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #14, !srcloc !91
  %add9.i.i = add i32 %add.i, 8
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %13, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #14, !srcloc !91
  %add11.i.i = add i32 %add.i, 12
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %15, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  %rxd = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  tail call fastcc void @efx_fini_special_buffer(ptr noundef %1, ptr noundef %rxd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_rx_remove(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %rxd = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  %2 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxd, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.efx_free_special_buffer.exit_crit_edge, label %do.body.i

entry.efx_free_special_buffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_free_special_buffer.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end19.i_crit_edge, label %do.body3.i

do.body.i.do.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_free_special_buffer.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_farch_rx_remove, %if.then7.i)) #14
          to label %do.end19.i [label %if.then7.i], !srcloc !97

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %index.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %entries.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries.i, align 4
  %add.i = add i32 %9, -1
  %sub.i = add i32 %add.i, %11
  %dma_addr.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %13 to i64
  %len.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxd, align 4
  %18 = ptrtoint ptr %17 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %18) #14
  %conv16.i = zext i32 %call.i.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_free_special_buffer.__UNIQUE_ID_ddebug527, ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %sub.i, i64 noundef %conv.i, i32 noundef %15, ptr noundef %17, i64 noundef %conv16.i) #14
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end19.i_crit_edge
  tail call void @efx_nic_free_buffer(ptr noundef %1, ptr noundef %rxd) #14
  %entries21.i = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %entries21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %entries21.i, align 4
  br label %efx_free_special_buffer.exit

efx_free_special_buffer.exit:                     ; preds = %do.end19.i, %entry.efx_free_special_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_fini_dmaq(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then:                                          ; preds = %entry
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %is_busmaster = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %is_busmaster to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %is_busmaster, align 1
  %5 = and i40 %bf.load, 17179869184
  %tobool.not = icmp eq i40 %5, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then1:                                         ; preds = %if.then
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %prepare_flush = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %prepare_flush to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prepare_flush, align 8
  tail call void %9(ptr noundef %efx) #14
  %channel1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %10 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel1.i, align 8
  %tobool.not263.i = icmp eq ptr %11, null
  br i1 %tobool.not263.i, label %if.then1.while.cond.preheader.i_crit_edge, label %for.body.lr.ph.i

if.then1.while.cond.preheader.i_crit_edge:        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.then1
  %rxq_flush_pending.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 117
  %n_channels.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %cond.end.i.while.cond.preheader.i_crit_edge, %for.inc19.i.while.cond.preheader.i_crit_edge, %if.then1.while.cond.preheader.i_crit_edge
  %active_queues.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %vf_init_count.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 121
  %rxq_flush_outstanding.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 118
  %rxq_flush_pending57.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 117
  %n_channels66.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %flush_wq.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 119
  br label %land.rhs.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.0264.i = phi ptr [ %11, %for.body.lr.ph.i ], [ %56, %cond.end.i.for.body.i_crit_edge ]
  %tx_queue3.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0264.i, i32 0, i32 46
  %channel1.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0264.i, i32 0, i32 1
  %12 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel1.i.i.i, align 4
  %14 = ptrtoint ptr %channel.0264.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel.0264.i, align 128
  %xdp_channel_offset.i.i250.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %xdp_channel_offset.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xdp_channel_offset.i.i250.i, align 8
  %sub.i.i251.i = sub i32 %13, %17
  %n_xdp_channels.i.i252.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 49
  %18 = ptrtoint ptr %n_xdp_channels.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_xdp_channels.i.i252.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i251.i, i32 %19)
  %cmp.i.i253.i = icmp ult i32 %sub.i.i251.i, %19
  %xdp_tx_per_channel.i254.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 51
  %tx_queues_per_channel.i255.i = getelementptr inbounds %struct.efx_nic, ptr %15, i32 0, i32 48
  %retval.0.in.i256.i = select i1 %cmp.i.i253.i, ptr %xdp_tx_per_channel.i254.i, ptr %tx_queues_per_channel.i255.i
  %20 = ptrtoint ptr %retval.0.in.i256.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0.i257.i = load i32, ptr %retval.0.in.i256.i, align 4
  %add.ptr258.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue3.i, i32 %retval.0.i257.i
  %cmp259.i = icmp ult ptr %tx_queue3.i, %add.ptr258.i
  br i1 %cmp259.i, label %for.body.i.for.body8.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.body.i.for.body8.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body8.i

for.body8.i:                                      ; preds = %efx_farch_flush_tx_queue.exit.i.for.body8.i_crit_edge, %for.body.i.for.body8.i_crit_edge
  %tx_queue.0260.i = phi ptr [ %incdec.ptr.i, %efx_farch_flush_tx_queue.exit.i.for.body8.i_crit_edge ], [ %tx_queue3.i, %for.body.i.for.body8.i_crit_edge ]
  %21 = ptrtoint ptr %tx_queue.0260.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_queue.0260.i, align 128
  %flush_outstanding.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0260.i, i32 0, i32 42
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %flush_outstanding.i.i, i32 noundef 4) #14
  %23 = ptrtoint ptr %flush_outstanding.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flush_outstanding.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %for.body8.i.efx_farch_flush_tx_queue.exit.i_crit_edge, label %do.end.i.i, !prof !94

for.body8.i.efx_farch_flush_tx_queue.exit.i_crit_edge: ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_flush_tx_queue.exit.i

do.end.i.i:                                       ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 427, i32 noundef 9, ptr noundef null) #14
  br label %efx_farch_flush_tx_queue.exit.i

efx_farch_flush_tx_queue.exit.i:                  ; preds = %do.end.i.i, %for.body8.i.efx_farch_flush_tx_queue.exit.i_crit_edge
  %call.i.i33.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flush_outstanding.i.i, i32 noundef 4) #14
  %25 = ptrtoint ptr %flush_outstanding.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %flush_outstanding.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0260.i, i32 0, i32 1
  %26 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %queue.i.i, align 4
  %28 = or i32 %27, 4096
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  %biu_lock.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 131
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #14
  %membase.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 13
  %30 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %31, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %29) #14, !srcloc !91
  %32 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %33, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 0) #14, !srcloc !91
  %34 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %35, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 0) #14, !srcloc !91
  %36 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %37, i32 2572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #14
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0260.i, i32 1
  %38 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel1.i.i.i, align 4
  %40 = ptrtoint ptr %channel.0264.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channel.0264.i, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 50
  %42 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %39, %43
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 49
  %44 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %45)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %45
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %41, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %46 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue3.i, i32 %retval.0.i.i
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %efx_farch_flush_tx_queue.exit.i.for.body8.i_crit_edge, label %efx_farch_flush_tx_queue.exit.i.if.end.i_crit_edge

efx_farch_flush_tx_queue.exit.i.if.end.i_crit_edge: ; preds = %efx_farch_flush_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

efx_farch_flush_tx_queue.exit.i.for.body8.i_crit_edge: ; preds = %efx_farch_flush_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body8.i

if.end.i:                                         ; preds = %efx_farch_flush_tx_queue.exit.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %core_index.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0264.i, i32 0, i32 45, i32 1
  %47 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %core_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i = icmp slt i32 %48, 0
  br i1 %cmp.i.i, label %if.end.i.for.inc19.i_crit_edge, label %for.body15.i

if.end.i.for.inc19.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.i

for.body15.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %flush_pending.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0264.i, i32 0, i32 45, i32 6
  %49 = ptrtoint ptr %flush_pending.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %flush_pending.i, align 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rxq_flush_pending.i, i32 1, i32 3, i32 1) #14
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_pending.i, ptr %rxq_flush_pending.i, i32 1, ptr elementtype(i32) %rxq_flush_pending.i) #14, !srcloc !101
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %for.body15.i, %if.end.i.for.inc19.i_crit_edge
  %51 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channel1.i.i.i, align 4
  %add.i = add i32 %52, 1
  %53 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_channels.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %54)
  %cmp21.i = icmp ult i32 %add.i, %54
  br i1 %cmp21.i, label %cond.end.i, label %for.inc19.i.while.cond.preheader.i_crit_edge

for.inc19.i.while.cond.preheader.i_crit_edge:     ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader.i

cond.end.i:                                       ; preds = %for.inc19.i
  %arrayidx25.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add.i
  %55 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx25.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %cond.end.i.while.cond.preheader.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cond.end.i.while.cond.preheader.i_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader.i

land.rhs.i:                                       ; preds = %if.end114.i.land.rhs.i_crit_edge, %while.cond.preheader.i
  %timeout.0282.i = phi i32 [ 500, %while.cond.preheader.i ], [ %__ret.1.i, %if.end114.i.land.rhs.i_crit_edge ]
  %rc.0281.i = phi i32 [ 0, %while.cond.preheader.i ], [ %rc.2.i, %if.end114.i.land.rhs.i_crit_edge ]
  %call.i.i200.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #14
  %57 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp29.i = icmp sgt i32 %58, 0
  br i1 %cmp29.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %59 = ptrtoint ptr %vf_init_count.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vf_init_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i211.not.i = icmp eq i32 %60, 0
  br i1 %cmp.i211.not.i, label %while.body.i.if.end36.i_crit_edge, label %if.then31.i

while.body.i.if.end36.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then31.i:                                      ; preds = %while.body.i
  %call32.i = call i32 @efx_mcdi_flush_rxqs(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then31.i.wait.i_crit_edge, label %if.then31.i.if.end36.i_crit_edge

if.then31.i.if.end36.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then31.i.wait.i_crit_edge:                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait.i

if.end36.i:                                       ; preds = %if.then31.i.if.end36.i_crit_edge, %while.body.i.if.end36.i_crit_edge
  %rc.1.i = phi i32 [ %call32.i, %if.then31.i.if.end36.i_crit_edge ], [ %rc.0281.i, %while.body.i.if.end36.i_crit_edge ]
  %61 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %channel1.i, align 8
  %tobool40.not267.i = icmp eq ptr %62, null
  br i1 %tobool40.not267.i, label %if.end36.i.wait.i_crit_edge, label %if.end36.i.for.body41.i_crit_edge

if.end36.i.for.body41.i_crit_edge:                ; preds = %if.end36.i
  br label %for.body41.i

if.end36.i.wait.i_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait.i

for.body41.i:                                     ; preds = %cond.end74.i.for.body41.i_crit_edge, %if.end36.i.for.body41.i_crit_edge
  %channel.1268.i = phi ptr [ %91, %cond.end74.i.for.body41.i_crit_edge ], [ %62, %if.end36.i.for.body41.i_crit_edge ]
  %core_index.i212.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1268.i, i32 0, i32 45, i32 1
  %63 = ptrtoint ptr %core_index.i212.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %core_index.i212.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i213.i = icmp sgt i32 %64, -1
  br i1 %cmp.i213.i, label %if.else44.i, label %for.body41.i.for.inc63.i_crit_edge

for.body41.i.for.inc63.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc63.i

if.else44.i:                                      ; preds = %for.body41.i
  %rx_queue45.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1268.i, i32 0, i32 45
  %call.i.i201.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  %65 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp50.i = icmp sgt i32 %66, 3
  br i1 %cmp50.i, label %if.else44.i.for.inc63.i_crit_edge, label %if.end52.i

if.else44.i.for.inc63.i_crit_edge:                ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc63.i

if.end52.i:                                       ; preds = %if.else44.i
  %flush_pending53.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1268.i, i32 0, i32 45, i32 6
  %67 = ptrtoint ptr %flush_pending53.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flush_pending53.i, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool54.not.i = icmp eq i8 %68, 0
  br i1 %tobool54.not.i, label %if.end52.i.for.inc63.i_crit_edge, label %if.then55.i

if.end52.i.for.inc63.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc63.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %flush_pending53.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %flush_pending53.i, align 1
  %call.i.i202.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending57.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %rxq_flush_pending57.i, i32 1, i32 3, i32 1) #14
  %70 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_pending57.i, ptr %rxq_flush_pending57.i, i32 1, ptr elementtype(i32) %rxq_flush_pending57.i) #14, !srcloc !102
  %call.i.i203.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %rxq_flush_outstanding.i, i32 1, i32 3, i32 1) #14
  %71 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_outstanding.i, ptr %rxq_flush_outstanding.i, i32 1, ptr elementtype(i32) %rxq_flush_outstanding.i) #14, !srcloc !101
  %72 = ptrtoint ptr %rx_queue45.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_queue45.i, align 128
  %channel.i.i.i = getelementptr %struct.efx_channel, ptr %channel.1268.i, i32 0, i32 1
  %74 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel.i.i.i, align 4
  %76 = or i32 %75, 16777216
  %77 = call i32 @llvm.bswap.i32(i32 %76) #14
  %biu_lock.i.i214.i = getelementptr inbounds %struct.efx_nic, ptr %73, i32 0, i32 131
  %call3.i.i215.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i214.i) #14
  %membase.i.i.i216.i = getelementptr inbounds %struct.efx_nic, ptr %73, i32 0, i32 13
  %78 = ptrtoint ptr %membase.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i.i216.i, align 4
  %add.ptr.i.i.i217.i = getelementptr i8, ptr %79, i32 2080
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i217.i, i32 %77) #14, !srcloc !91
  %80 = ptrtoint ptr %membase.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase.i.i.i216.i, align 4
  %add.ptr.i25.i.i218.i = getelementptr i8, ptr %81, i32 2084
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i218.i, i32 0) #14, !srcloc !91
  %82 = ptrtoint ptr %membase.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i.i.i216.i, align 4
  %add.ptr.i27.i.i219.i = getelementptr i8, ptr %83, i32 2088
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i219.i, i32 0) #14, !srcloc !91
  %84 = ptrtoint ptr %membase.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i.i.i216.i, align 4
  %add.ptr.i29.i.i220.i = getelementptr i8, ptr %85, i32 2092
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i220.i, i32 0) #14, !srcloc !91
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i214.i, i32 noundef %call3.i.i215.i) #14
  br label %for.inc63.i

for.inc63.i:                                      ; preds = %if.then55.i, %if.end52.i.for.inc63.i_crit_edge, %if.else44.i.for.inc63.i_crit_edge, %for.body41.i.for.inc63.i_crit_edge
  %channel64.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1268.i, i32 0, i32 1
  %86 = ptrtoint ptr %channel64.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %channel64.i, align 4
  %add65.i = add i32 %87, 1
  %88 = ptrtoint ptr %n_channels66.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_channels66.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add65.i, i32 %89)
  %cmp67.i = icmp ult i32 %add65.i, %89
  br i1 %cmp67.i, label %cond.end74.i, label %for.inc63.i.wait.i_crit_edge

for.inc63.i.wait.i_crit_edge:                     ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait.i

cond.end74.i:                                     ; preds = %for.inc63.i
  %arrayidx72.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add65.i
  %90 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx72.i, align 4
  %tobool40.not.i = icmp eq ptr %91, null
  br i1 %tobool40.not.i, label %cond.end74.i.wait.i_crit_edge, label %cond.end74.i.for.body41.i_crit_edge

cond.end74.i.for.body41.i_crit_edge:              ; preds = %cond.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body41.i

cond.end74.i.wait.i_crit_edge:                    ; preds = %cond.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait.i

wait.i:                                           ; preds = %cond.end74.i.wait.i_crit_edge, %for.inc63.i.wait.i_crit_edge, %if.end36.i.wait.i_crit_edge, %if.then31.i.wait.i_crit_edge
  %rc.2.i = phi i32 [ 0, %if.then31.i.wait.i_crit_edge ], [ %rc.1.i, %if.end36.i.wait.i_crit_edge ], [ %rc.1.i, %for.inc63.i.wait.i_crit_edge ], [ %rc.1.i, %cond.end74.i.wait.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 696) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %call.i.i.i221.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #14
  %92 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i222.i = icmp eq i32 %93, 0
  br i1 %cmp.i222.i, label %wait.i.if.end114.i_crit_edge, label %lor.rhs.i.i

wait.i.if.end114.i_crit_edge:                     ; preds = %wait.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114.i

lor.rhs.i.i:                                      ; preds = %wait.i
  %call.i.i9.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  %94 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp4.i.i = icmp slt i32 %95, 4
  br i1 %cmp4.i.i, label %efx_farch_flush_wake.exit.i, label %lor.rhs.i.i.if.then88.i_crit_edge

lor.rhs.i.i.if.then88.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88.i

efx_farch_flush_wake.exit.i:                      ; preds = %lor.rhs.i.i
  %call.i.i10.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending57.i, i32 noundef 4) #14
  %96 = ptrtoint ptr %rxq_flush_pending57.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %rxq_flush_pending57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp6.i.i = icmp sgt i32 %97, 0
  br i1 %cmp6.i.i, label %efx_farch_flush_wake.exit.i.if.end114.i_crit_edge, label %efx_farch_flush_wake.exit.i.if.then88.i_crit_edge

efx_farch_flush_wake.exit.i.if.then88.i_crit_edge: ; preds = %efx_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88.i

efx_farch_flush_wake.exit.i.if.end114.i_crit_edge: ; preds = %efx_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114.i

if.then88.i:                                      ; preds = %efx_farch_flush_wake.exit.i.if.then88.i_crit_edge, %lor.rhs.i.i.if.then88.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %98 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %call91275.i = call i32 @prepare_to_wait_event(ptr noundef %flush_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %call.i.i.i224276.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #14
  %99 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i225277.i = icmp eq i32 %100, 0
  br i1 %cmp.i225277.i, label %if.then88.i.efx_farch_flush_wake.exit234.thread.i_crit_edge, label %if.then88.i.lor.rhs.i229.i_crit_edge

if.then88.i.lor.rhs.i229.i_crit_edge:             ; preds = %if.then88.i
  br label %lor.rhs.i229.i

if.then88.i.efx_farch_flush_wake.exit234.thread.i_crit_edge: ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_flush_wake.exit234.thread.i

efx_farch_flush_wake.exit234.thread.i:            ; preds = %cleanup.i.efx_farch_flush_wake.exit234.thread.i_crit_edge, %if.then88.i.efx_farch_flush_wake.exit234.thread.i_crit_edge
  %__ret89.0.lcssa.i = phi i32 [ %timeout.0282.i, %if.then88.i.efx_farch_flush_wake.exit234.thread.i_crit_edge ], [ %call110.i, %cleanup.i.efx_farch_flush_wake.exit234.thread.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret89.0.lcssa.i)
  %tobool97.not236.i = icmp eq i32 %__ret89.0.lcssa.i, 0
  %spec.store.select143237.i = select i1 %tobool97.not236.i, i32 1, i32 %__ret89.0.lcssa.i
  br label %for.end111.i

lor.rhs.i229.i:                                   ; preds = %cleanup.i.lor.rhs.i229.i_crit_edge, %if.then88.i.lor.rhs.i229.i_crit_edge
  %__ret89.0278.i = phi i32 [ %call110.i, %cleanup.i.lor.rhs.i229.i_crit_edge ], [ %timeout.0282.i, %if.then88.i.lor.rhs.i229.i_crit_edge ]
  %call.i.i9.i227.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  %101 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %cmp4.i228.i = icmp slt i32 %102, 4
  br i1 %cmp4.i228.i, label %efx_farch_flush_wake.exit234.i, label %lor.rhs.i229.i.efx_farch_flush_wake.exit234.thread239.i_crit_edge

lor.rhs.i229.i.efx_farch_flush_wake.exit234.thread239.i_crit_edge: ; preds = %lor.rhs.i229.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_flush_wake.exit234.thread239.i

efx_farch_flush_wake.exit234.i:                   ; preds = %lor.rhs.i229.i
  %call.i.i10.i231.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending57.i, i32 noundef 4) #14
  %103 = ptrtoint ptr %rxq_flush_pending57.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %rxq_flush_pending57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp6.i232.i = icmp sgt i32 %104, 0
  br i1 %cmp6.i232.i, label %for.end111.loopexit.split.loop.exit270.i, label %efx_farch_flush_wake.exit234.i.efx_farch_flush_wake.exit234.thread239.i_crit_edge

efx_farch_flush_wake.exit234.i.efx_farch_flush_wake.exit234.thread239.i_crit_edge: ; preds = %efx_farch_flush_wake.exit234.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_flush_wake.exit234.thread239.i

efx_farch_flush_wake.exit234.thread239.i:         ; preds = %efx_farch_flush_wake.exit234.i.efx_farch_flush_wake.exit234.thread239.i_crit_edge, %lor.rhs.i229.i.efx_farch_flush_wake.exit234.thread239.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret89.0278.i)
  %tobool103.not.i = icmp eq i32 %__ret89.0278.i, 0
  br i1 %tobool103.not.i, label %efx_farch_flush_wake.exit234.thread239.i.for.end111.i_crit_edge, label %cleanup.i

efx_farch_flush_wake.exit234.thread239.i.for.end111.i_crit_edge: ; preds = %efx_farch_flush_wake.exit234.thread239.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end111.i

cleanup.i:                                        ; preds = %efx_farch_flush_wake.exit234.thread239.i
  %call110.i = call i32 @schedule_timeout(i32 noundef %__ret89.0278.i) #14
  %call91.i = call i32 @prepare_to_wait_event(ptr noundef %flush_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %call.i.i.i224.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #14
  %105 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %active_queues.i, align 4
  %cmp.i225.i = icmp eq i32 %106, 0
  br i1 %cmp.i225.i, label %cleanup.i.efx_farch_flush_wake.exit234.thread.i_crit_edge, label %cleanup.i.lor.rhs.i229.i_crit_edge

cleanup.i.lor.rhs.i229.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i229.i

cleanup.i.efx_farch_flush_wake.exit234.thread.i_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_flush_wake.exit234.thread.i

for.end111.loopexit.split.loop.exit270.i:         ; preds = %efx_farch_flush_wake.exit234.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret89.0278.i)
  %tobool97.not.le.i = icmp eq i32 %__ret89.0278.i, 0
  %spec.store.select143.le.i = select i1 %tobool97.not.le.i, i32 1, i32 %__ret89.0278.i
  br label %for.end111.i

for.end111.i:                                     ; preds = %for.end111.loopexit.split.loop.exit270.i, %efx_farch_flush_wake.exit234.thread239.i.for.end111.i_crit_edge, %efx_farch_flush_wake.exit234.thread.i
  %__ret89.2.ph.i = phi i32 [ %spec.store.select143237.i, %efx_farch_flush_wake.exit234.thread.i ], [ %spec.store.select143.le.i, %for.end111.loopexit.split.loop.exit270.i ], [ 0, %efx_farch_flush_wake.exit234.thread239.i.for.end111.i_crit_edge ]
  call void @finish_wait(ptr noundef %flush_wq.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %if.end114.i

if.end114.i:                                      ; preds = %for.end111.i, %efx_farch_flush_wake.exit.i.if.end114.i_crit_edge, %wait.i.if.end114.i_crit_edge
  %__ret.1.i = phi i32 [ %timeout.0282.i, %efx_farch_flush_wake.exit.i.if.end114.i_crit_edge ], [ %__ret89.2.ph.i, %for.end111.i ], [ %timeout.0282.i, %wait.i.if.end114.i_crit_edge ]
  %tobool27.not.i = icmp eq i32 %__ret.1.i, 0
  br i1 %tobool27.not.i, label %if.end114.i.while.end.i_crit_edge, label %if.end114.i.land.rhs.i_crit_edge

if.end114.i.land.rhs.i_crit_edge:                 ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end114.i.while.end.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end114.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %rc.0.lcssa.i = phi i32 [ %rc.2.i, %if.end114.i.while.end.i_crit_edge ], [ %rc.0281.i, %land.rhs.i.while.end.i_crit_edge ]
  %call.i.i204.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #14
  %107 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool118.not.i = icmp eq i32 %108, 0
  br i1 %tobool118.not.i, label %while.end.i.efx_farch_do_flush.exit_crit_edge, label %land.lhs.true119.i

while.end.i.efx_farch_do_flush.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_do_flush.exit

land.lhs.true119.i:                               ; preds = %while.end.i
  %call120.i = call fastcc zeroext i1 @efx_check_tx_flush_complete(ptr noundef %efx) #14
  br i1 %call120.i, label %land.lhs.true119.i.efx_farch_do_flush.exit_crit_edge, label %do.body122.i

land.lhs.true119.i.efx_farch_do_flush.exit_crit_edge: ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_do_flush.exit

do.body122.i:                                     ; preds = %land.lhs.true119.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %109 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %110, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool123.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool123.not.i, label %do.body122.i.do.end133.i_crit_edge, label %if.then124.i

do.body122.i.do.end133.i_crit_edge:               ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end133.i

if.then124.i:                                     ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %111 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %net_dev.i, align 4
  %call.i.i205.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #14
  %113 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %active_queues.i, align 4
  %call.i.i206.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  %115 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  %call.i.i207.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending57.i, i32 noundef 4) #14
  %117 = ptrtoint ptr %rxq_flush_pending57.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %rxq_flush_pending57.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %112, ptr noundef nonnull @.str.24, i32 noundef %114, i32 noundef %116, i32 noundef %118) #17
  br label %do.end133.i

do.end133.i:                                      ; preds = %if.then124.i, %do.body122.i.do.end133.i_crit_edge
  %call.i.i208.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_queues.i, i32 noundef 4) #14
  %119 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 0, ptr %active_queues.i, align 4
  %call.i.i209.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending57.i, i32 noundef 4) #14
  %120 = ptrtoint ptr %rxq_flush_pending57.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %rxq_flush_pending57.i, align 4
  %call.i.i210.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  %121 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 0, ptr %rxq_flush_outstanding.i, align 4
  br label %efx_farch_do_flush.exit

efx_farch_do_flush.exit:                          ; preds = %do.end133.i, %land.lhs.true119.i.efx_farch_do_flush.exit_crit_edge, %while.end.i.efx_farch_do_flush.exit_crit_edge
  %rc.3.i = phi i32 [ %rc.0.lcssa.i, %land.lhs.true119.i.efx_farch_do_flush.exit_crit_edge ], [ -110, %do.end133.i ], [ %rc.0.lcssa.i, %while.end.i.efx_farch_do_flush.exit_crit_edge ]
  %122 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %type, align 4
  %finish_flush = getelementptr inbounds %struct.efx_nic_type, ptr %123, i32 0, i32 17
  %124 = ptrtoint ptr %finish_flush to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %finish_flush, align 4
  call void %125(ptr noundef %efx) #14
  br label %if.end

if.end:                                           ; preds = %efx_farch_do_flush.exit, %if.then.if.end_crit_edge
  %rc.0 = phi i32 [ %rc.3.i, %efx_farch_do_flush.exit ], [ 0, %if.then.if.end_crit_edge ]
  %channel3 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %126 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %channel3, align 8
  %tobool4.not92 = icmp eq ptr %127, null
  br i1 %tobool4.not92, label %if.end.if.end33_crit_edge, label %for.body.lr.ph

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

for.body.lr.ph:                                   ; preds = %if.end
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.093 = phi ptr [ %127, %for.body.lr.ph ], [ %183, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 45, i32 1
  %128 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %cmp.i55 = icmp sgt i32 %129, -1
  br i1 %cmp.i55, label %if.else, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.else:                                          ; preds = %for.body
  %rx_queue7 = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 45
  %tobool9.not79 = icmp eq ptr %rx_queue7, null
  br i1 %tobool9.not79, label %if.else.if.end11_crit_edge, label %for.body10

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

for.body10:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %130 = ptrtoint ptr %rx_queue7 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx_queue7, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %131, i32 0, i32 6
  %132 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %type.i, align 4
  %rxd_ptr_tbl_base.i = getelementptr inbounds %struct.efx_nic_type, ptr %133, i32 0, i32 120
  %134 = ptrtoint ptr %rxd_ptr_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rxd_ptr_tbl_base.i, align 8
  %channel.i.i = getelementptr %struct.efx_channel, ptr %channel.093, i32 0, i32 1
  %136 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %channel.i.i, align 4
  %mul.i.i = shl i32 %137, 4
  %add.i.i = add i32 %mul.i.i, %135
  %biu_lock.i.i.i56 = getelementptr inbounds %struct.efx_nic, ptr %131, i32 0, i32 131
  %call3.i.i.i57 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i56) #14
  %membase.i.i.i.i58 = getelementptr inbounds %struct.efx_nic, ptr %131, i32 0, i32 13
  %138 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i.i.i.i59 = getelementptr i8, ptr %139, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i59, i32 0) #14, !srcloc !91
  %add7.i.i.i = add i32 %add.i.i, 4
  %140 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i25.i.i.i60 = getelementptr i8, ptr %141, i32 %add7.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i60, i32 0) #14, !srcloc !91
  %add9.i.i.i = add i32 %add.i.i, 8
  %142 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i27.i.i.i61 = getelementptr i8, ptr %143, i32 %add9.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i61, i32 0) #14, !srcloc !91
  %add11.i.i.i = add i32 %add.i.i, 12
  %144 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i29.i.i.i62 = getelementptr i8, ptr %145, i32 %add11.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i62, i32 0) #14, !srcloc !91
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i56, i32 noundef %call3.i.i.i57) #14
  %rxd.i = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 45, i32 3
  call fastcc void @efx_fini_special_buffer(ptr noundef %131, ptr noundef %rxd.i) #14
  br label %if.end11

if.end11:                                         ; preds = %for.body10, %if.else.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %tx_queue15 = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.093, i32 0, i32 1
  %146 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %channel1.i.i, align 4
  %148 = ptrtoint ptr %channel.093 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %channel.093, align 128
  %xdp_channel_offset.i.i81 = getelementptr inbounds %struct.efx_nic, ptr %149, i32 0, i32 50
  %150 = ptrtoint ptr %xdp_channel_offset.i.i81 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %xdp_channel_offset.i.i81, align 8
  %sub.i.i82 = sub i32 %147, %151
  %n_xdp_channels.i.i83 = getelementptr inbounds %struct.efx_nic, ptr %149, i32 0, i32 49
  %152 = ptrtoint ptr %n_xdp_channels.i.i83 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %n_xdp_channels.i.i83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i82, i32 %153)
  %cmp.i.i6384 = icmp ult i32 %sub.i.i82, %153
  %xdp_tx_per_channel.i85 = getelementptr inbounds %struct.efx_nic, ptr %149, i32 0, i32 51
  %tx_queues_per_channel.i86 = getelementptr inbounds %struct.efx_nic, ptr %149, i32 0, i32 48
  %retval.0.in.i87 = select i1 %cmp.i.i6384, ptr %xdp_tx_per_channel.i85, ptr %tx_queues_per_channel.i86
  %154 = ptrtoint ptr %retval.0.in.i87 to i32
  call void @__asan_load4_noabort(i32 %154)
  %retval.0.i88 = load i32, ptr %retval.0.in.i87, align 4
  %add.ptr89 = getelementptr %struct.efx_tx_queue, ptr %tx_queue15, i32 %retval.0.i88
  %cmp2090 = icmp ult ptr %tx_queue15, %add.ptr89
  br i1 %cmp2090, label %if.end11.for.body21_crit_edge, label %if.end11.for.inc25_crit_edge

if.end11.for.inc25_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc25

if.end11.for.body21_crit_edge:                    ; preds = %if.end11
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %if.end11.for.body21_crit_edge
  %tx_queue.091 = phi ptr [ %incdec.ptr, %for.body21.for.body21_crit_edge ], [ %tx_queue15, %if.end11.for.body21_crit_edge ]
  %155 = ptrtoint ptr %tx_queue.091 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx_queue.091, align 128
  %type.i64 = getelementptr inbounds %struct.efx_nic, ptr %156, i32 0, i32 6
  %157 = ptrtoint ptr %type.i64 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %type.i64, align 4
  %txd_ptr_tbl_base.i = getelementptr inbounds %struct.efx_nic_type, ptr %158, i32 0, i32 119
  %159 = ptrtoint ptr %txd_ptr_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %txd_ptr_tbl_base.i, align 4
  %queue.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.091, i32 0, i32 1
  %161 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %queue.i, align 4
  %mul.i.i65 = shl i32 %162, 4
  %add.i.i66 = add i32 %mul.i.i65, %160
  %biu_lock.i.i.i67 = getelementptr inbounds %struct.efx_nic, ptr %156, i32 0, i32 131
  %call3.i.i.i68 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i67) #14
  %membase.i.i.i.i69 = getelementptr inbounds %struct.efx_nic, ptr %156, i32 0, i32 13
  %163 = ptrtoint ptr %membase.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %membase.i.i.i.i69, align 4
  %add.ptr.i.i.i.i70 = getelementptr i8, ptr %164, i32 %add.i.i66
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i70, i32 0) #14, !srcloc !91
  %add7.i.i.i71 = add i32 %add.i.i66, 4
  %165 = ptrtoint ptr %membase.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase.i.i.i.i69, align 4
  %add.ptr.i25.i.i.i72 = getelementptr i8, ptr %166, i32 %add7.i.i.i71
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i72, i32 0) #14, !srcloc !91
  %add9.i.i.i73 = add i32 %add.i.i66, 8
  %167 = ptrtoint ptr %membase.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %membase.i.i.i.i69, align 4
  %add.ptr.i27.i.i.i74 = getelementptr i8, ptr %168, i32 %add9.i.i.i73
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i74, i32 0) #14, !srcloc !91
  %add11.i.i.i75 = add i32 %add.i.i66, 12
  %169 = ptrtoint ptr %membase.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %membase.i.i.i.i69, align 4
  %add.ptr.i29.i.i.i76 = getelementptr i8, ptr %170, i32 %add11.i.i.i75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i76, i32 0) #14, !srcloc !91
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i67, i32 noundef %call3.i.i.i68) #14
  %txd.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.091, i32 0, i32 10
  call fastcc void @efx_fini_special_buffer(ptr noundef %156, ptr noundef %txd.i) #14
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.091, i32 1
  %171 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %channel1.i.i, align 4
  %173 = ptrtoint ptr %channel.093 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %channel.093, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %174, i32 0, i32 50
  %175 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %172, %176
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %174, i32 0, i32 49
  %177 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %178)
  %cmp.i.i63 = icmp ult i32 %sub.i.i, %178
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %174, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %174, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i63, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %179 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue15, i32 %retval.0.i
  %cmp20 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp20, label %for.body21.for.body21_crit_edge, label %for.body21.for.inc25_crit_edge

for.body21.for.inc25_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc25

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21

for.inc25:                                        ; preds = %for.body21.for.inc25_crit_edge, %if.end11.for.inc25_crit_edge
  %.lcssa = phi i32 [ %147, %if.end11.for.inc25_crit_edge ], [ %172, %for.body21.for.inc25_crit_edge ]
  %add = add i32 %.lcssa, 1
  %180 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %181)
  %cmp27 = icmp ult i32 %add, %181
  br i1 %cmp27, label %cond.end, label %for.inc25.if.end33_crit_edge

for.inc25.if.end33_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

cond.end:                                         ; preds = %for.inc25
  %arrayidx31 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %182 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx31, align 4
  %tobool4.not = icmp eq ptr %183, null
  br i1 %tobool4.not, label %cond.end.if.end33_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cond.end.if.end33_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end33:                                         ; preds = %cond.end.if.end33_crit_edge, %for.inc25.if.end33_crit_edge, %if.end.if.end33_crit_edge, %entry.if.end33_crit_edge
  %rc.1 = phi i32 [ 0, %entry.if.end33_crit_edge ], [ %rc.0, %if.end.if.end33_crit_edge ], [ %rc.0, %cond.end.if.end33_crit_edge ], [ %rc.0, %for.inc25.if.end33_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_finish_flr(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq_flush_pending = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 117
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending, i32 noundef 4) #14
  %0 = ptrtoint ptr %rxq_flush_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %rxq_flush_pending, align 4
  %rxq_flush_outstanding = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 118
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding, i32 noundef 4) #14
  %1 = ptrtoint ptr %rxq_flush_outstanding to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %rxq_flush_outstanding, align 4
  %active_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #14
  %2 = ptrtoint ptr %active_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %active_queues, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_ev_read_ack(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq_read_ptr = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_read_ptr, align 4
  %eventq_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %4 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eventq_mask, align 8
  %and = and i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %evq_rptr_tbl_base = getelementptr inbounds %struct.efx_nic_type, ptr %8, i32 0, i32 123
  %9 = ptrtoint ptr %evq_rptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %evq_rptr_tbl_base, align 4
  %channel3 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %11 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel3, align 4
  %mul = shl i32 %12, 4
  %add = add i32 %mul, %10
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #14, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_generate_event(ptr noundef %efx, i32 noundef %evq, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  %arrayidx2 = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %evq)
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #14, !srcloc !91
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %8, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %3) #14, !srcloc !91
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %10, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %4) #14, !srcloc !91
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %12, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_ev_process(ptr noundef %channel, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %union.efx_qword, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp = icmp slt i32 %budget, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %eventq_read_ptr = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_read_ptr, align 4
  %eventq.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %eventq_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %arrayidx2.i = getelementptr inbounds [2 x %union.efx_dword], ptr %event, i32 0, i32 1
  %4 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eventq.i, align 4
  %6 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eventq_mask.i, align 8
  %and.i88 = and i32 %7, %3
  %add.ptr.i89 = getelementptr %union.efx_qword, ptr %5, i32 %and.i88
  %8 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i89, align 8
  %10 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %9)
  %cmp.i90 = icmp ugt i64 %9, -4294967297
  %11 = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp4.i91 = icmp eq i32 %11, -1
  %tobool.not92 = or i1 %cmp.i90, %cmp4.i91
  br i1 %tobool.not92, label %if.end.out_crit_edge, label %if.end4.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4.lr.ph:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %tx_queue19.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 46
  %channel48.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %rx_queue.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %removed_count.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 9
  %scatter_n.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 10
  %ptr_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 4
  %n_rx_nodesc_trunc.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 35
  %n_rx_frm_trunc.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 32
  %n_rx_tobe_disc.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 23
  %n_rx_ip_hdr_chksum_err.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 24
  %n_rx_tcp_udp_chksum_err.i = getelementptr %struct.efx_channel, ptr %channel, i32 0, i32 25
  %n_rx_mcast_mismatch.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 31
  %irq_mod_score.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 15
  br label %if.end4

if.end4:                                          ; preds = %sw.epilog.if.end4_crit_edge, %if.end4.lr.ph
  %add.ptr.i96 = phi ptr [ %add.ptr.i89, %if.end4.lr.ph ], [ %add.ptr.i, %sw.epilog.if.end4_crit_edge ]
  %spent.094 = phi i32 [ 0, %if.end4.lr.ph ], [ %spent.1, %sw.epilog.if.end4_crit_edge ]
  %read_ptr.093 = phi i32 [ %3, %if.end4.lr.ph ], [ %inc, %sw.epilog.if.end4_crit_edge ]
  %12 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %add.ptr.i96, align 8
  %arrayidx5 = getelementptr [2 x i32], ptr %add.ptr.i96, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %arrayidx5, align 4
  %inc = add i32 %read_ptr.093, 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %16 = lshr i32 %15, 4
  %shr = and i32 %16, 15
  %17 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end4.do.body23_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
    i32 7, label %sw.bb12
    i32 5, label %sw.bb13
    i32 8, label %sw.bb14
    i32 12, label %sw.bb15
    i32 6, label %sw.bb16
  ]

if.end4.do.body23_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

sw.bb:                                            ; preds = %if.end4
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel, align 128
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.efx_farch_handle_rx_event.exit_crit_edge, !prof !94

sw.bb.efx_farch_handle_rx_event.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_event.exit

if.end.i:                                         ; preds = %sw.bb
  %22 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event, align 8
  %24 = call i32 @llvm.bswap.i32(i32 %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool4.not.i = icmp sgt i32 %24, -1
  %25 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.i = icmp eq i32 %25, 0
  %26 = lshr i32 %15, 24
  %and13.i = and i32 %26, 31
  %27 = ptrtoint ptr %channel48.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %28)
  %cmp.not.i = icmp eq i32 %and13.i, %28
  br i1 %cmp.not.i, label %if.end.i.if.end36.i_crit_edge, label %do.end30.i, !prof !94

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 986, i32 noundef 9, ptr noundef null) #14
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end30.i, %if.end.i.if.end36.i_crit_edge
  %29 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %event, align 8
  %31 = and i32 %30, -15794176
  %32 = call i32 @llvm.bswap.i32(i32 %31) #14
  %33 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %removed_count.i, align 16
  %35 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scatter_n.i, align 4
  %add.i = add i32 %36, %34
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ptr_mask.i, align 32
  %and48.i = and i32 %add.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %and48.i)
  %cmp49.not.i = icmp eq i32 %32, %and48.i
  br i1 %cmp49.not.i, label %lor.lhs.false.i, label %land.lhs.true.critedge.i, !prof !94

lor.lhs.false.i:                                  ; preds = %if.end36.i
  %.lobit.i = lshr exact i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp58.i = icmp eq i32 %36, 0
  %conv59.i = zext i1 %cmp58.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.lobit.i, i32 %conv59.i)
  %cmp60.not.i = icmp eq i32 %.lobit.i, %conv59.i
  br i1 %cmp60.not.i, label %lor.lhs.false.i.if.end97.i_crit_edge, label %lor.lhs.false.i.if.end73.i_crit_edge, !prof !94

lor.lhs.false.i.if.end73.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

lor.lhs.false.i.if.end97.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

land.lhs.true.critedge.i:                         ; preds = %if.end36.i
  %39 = ptrtoint ptr %rx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_queue.i.i, align 128
  %41 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scatter_n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i75 = icmp eq i32 %42, 0
  br i1 %tobool.not.i75, label %land.lhs.true.critedge.i.if.end.i84_crit_edge, label %land.lhs.true.i

land.lhs.true.critedge.i.if.end.i84_crit_edge:    ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i84

land.lhs.true.i:                                  ; preds = %land.lhs.true.critedge.i
  %43 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %removed_count.i, align 16
  %add.i77 = add i32 %42, -1
  %sub.i = add i32 %add.i77, %44
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr_mask.i, align 32
  %and.i79 = and i32 %sub.i, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i79, i32 %32)
  %cmp.i80 = icmp eq i32 %and.i79, %32
  br i1 %cmp.i80, label %efx_farch_handle_rx_bad_index.exit.thread, label %land.lhs.true.i.if.end.i84_crit_edge

land.lhs.true.i.if.end.i84_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i84

efx_farch_handle_rx_bad_index.exit.thread:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %n_rx_nodesc_trunc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_rx_nodesc_trunc.i, align 8
  %inc.i81 = add i32 %48, 1
  store i32 %inc.i81, ptr %n_rx_nodesc_trunc.i, align 8
  br label %if.end73.i

if.end.i84:                                       ; preds = %land.lhs.true.i.if.end.i84_crit_edge, %land.lhs.true.critedge.i.if.end.i84_crit_edge
  %msg_enable.i83 = getelementptr inbounds %struct.efx_nic, ptr %40, i32 0, i32 22
  %49 = ptrtoint ptr %msg_enable.i83 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i83, align 4
  %and9.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i84.efx_farch_handle_rx_bad_index.exit_crit_edge, label %if.then11.i86

if.end.i84.efx_farch_handle_rx_bad_index.exit_crit_edge: ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_bad_index.exit

if.then11.i86:                                    ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %removed_count.i, align 16
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ptr_mask.i, align 32
  %and5.i = and i32 %54, %52
  %sub6.i = sub i32 %32, %and5.i
  %and8.i = and i32 %sub6.i, %54
  %net_dev.i85 = getelementptr inbounds %struct.efx_nic, ptr %40, i32 0, i32 83
  %55 = ptrtoint ptr %net_dev.i85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net_dev.i85, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %56, ptr noundef nonnull @.str.28, i32 noundef %and8.i, i32 noundef %32, i32 noundef %and5.i) #17
  br label %efx_farch_handle_rx_bad_index.exit

efx_farch_handle_rx_bad_index.exit:               ; preds = %if.then11.i86, %if.end.i84.efx_farch_handle_rx_bad_index.exit_crit_edge
  call void @efx_schedule_reset(ptr noundef %40, i32 noundef 7) #14
  br label %efx_farch_handle_rx_event.exit

if.end73.i:                                       ; preds = %efx_farch_handle_rx_bad_index.exit.thread, %lor.lhs.false.i.if.end73.i_crit_edge
  %57 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scatter_n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool75.not.i = icmp eq i32 %58, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end85.i_crit_edge, label %if.then76.i

if.end73.i.if.end85.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %removed_count.i, align 16
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ptr_mask.i, align 32
  %and79.i = and i32 %62, %60
  call void @efx_rx_packet(ptr noundef %rx_queue.i.i, i32 noundef %and79.i, i32 noundef %58, i32 noundef 0, i16 noundef zeroext 4) #14
  %63 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %scatter_n.i, align 4
  %65 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %removed_count.i, align 16
  %add83.i = add i32 %66, %64
  store i32 %add83.i, ptr %removed_count.i, align 16
  store i32 0, ptr %scatter_n.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end85.i_crit_edge
  br i1 %cmp49.not.i, label %if.end89.i, label %if.end85.i.efx_farch_handle_rx_event.exit_crit_edge

if.end85.i.efx_farch_handle_rx_event.exit_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_event.exit

if.end89.i:                                       ; preds = %if.end85.i
  br i1 %tobool9.not.i, label %if.then91.i, label %if.end89.i.if.end97.i_crit_edge

if.end89.i.if.end97.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

if.then91.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %removed_count.i, align 16
  %69 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ptr_mask.i, align 32
  %and94.i = and i32 %70, %68
  call void @efx_rx_packet(ptr noundef %rx_queue.i.i, i32 noundef %and94.i, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 4) #14
  %71 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %removed_count.i, align 16
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %removed_count.i, align 16
  br label %efx_farch_handle_rx_event.exit

if.end97.i:                                       ; preds = %if.end89.i.if.end97.i_crit_edge, %lor.lhs.false.i.if.end97.i_crit_edge
  %73 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scatter_n.i, align 4
  %inc99.i = add i32 %74, 1
  store i32 %inc99.i, ptr %scatter_n.i, align 4
  br i1 %tobool4.not.i, label %if.end102.i, label %if.end97.i.efx_farch_handle_rx_event.exit_crit_edge

if.end97.i.efx_farch_handle_rx_event.exit_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_event.exit

if.end102.i:                                      ; preds = %if.end97.i
  %75 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %event, align 8
  %77 = call i32 @llvm.bswap.i32(i32 %76) #14
  %shr104.i = lshr i32 %77, 16
  %and106.i = and i32 %shr104.i, 16383
  %78 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx2.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #14
  %81 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool111.not.i = icmp eq i32 %81, 0
  br i1 %tobool111.not.i, label %if.else.i, label %if.then124.i, !prof !92

if.then124.i:                                     ; preds = %if.end102.i
  %shr114.i = lshr i32 %80, 10
  %and116.i = and i32 %shr114.i, 3
  %82 = zext i32 %and116.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and116.i, label %if.then124.i.if.end134.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.then124.i.sw.bb128.i_crit_edge
  ]

if.then124.i.sw.bb128.i_crit_edge:                ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb128.i

if.then124.i.if.end134.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134.i

sw.bb.i:                                          ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb128.i

sw.bb128.i:                                       ; preds = %sw.bb.i, %if.then124.i.sw.bb128.i_crit_edge
  %flags.0.i = phi i16 [ 2, %if.then124.i.sw.bb128.i_crit_edge ], [ 66, %sw.bb.i ]
  br label %if.end134.i

if.else.i:                                        ; preds = %if.end102.i
  %83 = ptrtoint ptr %rx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx_queue.i.i, align 128
  %85 = and i32 %80, 32768
  %86 = and i32 %80, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool12.not.i = icmp eq i32 %86, 0
  %87 = and i32 %80, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool18.not.i = icmp eq i32 %87, 0
  %88 = and i32 %80, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool30.not.i = icmp eq i32 %88, 0
  br i1 %tobool30.not.i, label %if.else.i71, label %if.then.i

if.then.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %n_rx_frm_trunc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %n_rx_frm_trunc.i, align 4
  %inc.i69 = add i32 %90, 1
  store i32 %inc.i69, ptr %n_rx_frm_trunc.i, align 4
  br label %efx_farch_handle_rx_not_ok.exit

if.else.i71:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i70 = icmp eq i32 %85, 0
  br i1 %tobool.not.i70, label %if.else57.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %n_rx_tobe_disc.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n_rx_tobe_disc.i, align 8
  %inc56.i = add i32 %92, 1
  store i32 %inc56.i, ptr %n_rx_tobe_disc.i, align 8
  br label %efx_farch_handle_rx_not_ok.exit

if.else57.i:                                      ; preds = %if.else.i71
  %loopback_selftest.i = getelementptr inbounds %struct.efx_nic, ptr %84, i32 0, i32 106
  %93 = ptrtoint ptr %loopback_selftest.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %loopback_selftest.i, align 16
  %tobool58.not.i = icmp eq ptr %94, null
  br i1 %tobool58.not.i, label %if.then59.i, label %if.else57.i.efx_farch_handle_rx_not_ok.exit_crit_edge

if.else57.i.efx_farch_handle_rx_not_ok.exit_crit_edge: ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_not_ok.exit

if.then59.i:                                      ; preds = %if.else57.i
  br i1 %tobool12.not.i, label %if.else63.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %n_rx_ip_hdr_chksum_err.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_rx_ip_hdr_chksum_err.i, align 4
  %inc62.i = add i32 %96, 1
  store i32 %inc62.i, ptr %n_rx_ip_hdr_chksum_err.i, align 4
  br label %efx_farch_handle_rx_not_ok.exit

if.else63.i:                                      ; preds = %if.then59.i
  br i1 %tobool18.not.i, label %if.else63.i.efx_farch_handle_rx_not_ok.exit_crit_edge, label %if.then65.i

if.else63.i.efx_farch_handle_rx_not_ok.exit_crit_edge: ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_not_ok.exit

if.then65.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %n_rx_tcp_udp_chksum_err.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %n_rx_tcp_udp_chksum_err.i, align 16
  %inc66.i = add i32 %98, 1
  store i32 %inc66.i, ptr %n_rx_tcp_udp_chksum_err.i, align 16
  br label %efx_farch_handle_rx_not_ok.exit

efx_farch_handle_rx_not_ok.exit:                  ; preds = %if.then65.i, %if.else63.i.efx_farch_handle_rx_not_ok.exit_crit_edge, %if.then61.i, %if.else57.i.efx_farch_handle_rx_not_ok.exit_crit_edge, %if.then55.i, %if.then.i
  %99 = and i32 %80, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %100 = icmp ne i32 %99, 0
  %net_dev.i72 = getelementptr inbounds %struct.efx_nic, ptr %84, i32 0, i32 83
  %101 = ptrtoint ptr %net_dev.i72 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %net_dev.i72, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 23
  %103 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %features.i, align 16
  %and72.i = and i64 %104, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72.i)
  %tobool73.not.i = icmp eq i64 %and72.i, 0
  %spec.select.i = select i1 %tobool73.not.i, i1 %100, i1 false
  %.lobit.i73 = lshr exact i32 %88, 17
  %conv77.i = zext i1 %spec.select.i to i32
  %.lobit106.i = lshr exact i32 %85, 15
  %105 = lshr i32 %80, 23
  %.lobit107.i = and i32 %105, 1
  %or80.i = or i32 %.lobit106.i, %.lobit.i73
  %or83.i = or i32 %or80.i, %.lobit107.i
  %or86.i = or i32 %or83.i, %conv77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or86.i)
  %tobool87.not.i = icmp eq i32 %or86.i, 0
  %conv88.i = select i1 %tobool87.not.i, i16 0, i16 4
  br label %if.end134.i

if.end134.i:                                      ; preds = %efx_farch_handle_rx_not_ok.exit, %sw.bb128.i, %if.then124.i.if.end134.i_crit_edge
  %flags.1.i = phi i16 [ 0, %if.then124.i.if.end134.i_crit_edge ], [ %flags.0.i, %sw.bb128.i ], [ %conv88.i, %efx_farch_handle_rx_not_ok.exit ]
  %106 = and i32 %79, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %106)
  %107 = icmp eq i32 %106, -2147483648
  br i1 %107, label %if.then154.i, label %if.end134.i.if.end160.i_crit_edge, !prof !104

if.end134.i.if.end160.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160.i

if.then154.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %n_rx_mcast_mismatch.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_rx_mcast_mismatch.i, align 8
  %inc155.i = add i32 %109, 1
  store i32 %inc155.i, ptr %n_rx_mcast_mismatch.i, align 8
  %110 = or i16 %flags.1.i, 4
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then154.i, %if.end134.i.if.end160.i_crit_edge
  %flags.3.i = phi i16 [ %flags.1.i, %if.end134.i.if.end160.i_crit_edge ], [ %110, %if.then154.i ]
  %111 = ptrtoint ptr %irq_mod_score.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq_mod_score.i, align 8
  %add161.i = add i32 %112, 2
  store i32 %add161.i, ptr %irq_mod_score.i, align 8
  %113 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %removed_count.i, align 16
  %115 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ptr_mask.i, align 32
  %and164.i = and i32 %116, %114
  call void @efx_rx_packet(ptr noundef %rx_queue.i.i, i32 noundef %and164.i, i32 noundef %inc99.i, i32 noundef %and106.i, i16 noundef zeroext %flags.3.i) #14
  %117 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %scatter_n.i, align 4
  %119 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %removed_count.i, align 16
  %add168.i = add i32 %120, %118
  store i32 %add168.i, ptr %removed_count.i, align 16
  store i32 0, ptr %scatter_n.i, align 4
  br label %efx_farch_handle_rx_event.exit

efx_farch_handle_rx_event.exit:                   ; preds = %if.end160.i, %if.end97.i.efx_farch_handle_rx_event.exit_crit_edge, %if.then91.i, %if.end85.i.efx_farch_handle_rx_event.exit_crit_edge, %efx_farch_handle_rx_bad_index.exit, %sw.bb.efx_farch_handle_rx_event.exit_crit_edge
  %inc7 = add i32 %spent.094, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7, i32 %budget)
  %cmp8 = icmp eq i32 %inc7, %budget
  br i1 %cmp8, label %efx_farch_handle_rx_event.exit.out_crit_edge, label %efx_farch_handle_rx_event.exit.sw.epilog_crit_edge

efx_farch_handle_rx_event.exit.sw.epilog_crit_edge: ; preds = %efx_farch_handle_rx_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

efx_farch_handle_rx_event.exit.out_crit_edge:     ; preds = %efx_farch_handle_rx_event.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb11:                                          ; preds = %if.end4
  %121 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %channel, align 128
  %reset_pending.i63 = getelementptr inbounds %struct.efx_nic, ptr %122, i32 0, i32 24
  %123 = ptrtoint ptr %reset_pending.i63 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %reset_pending.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i64 = icmp eq i32 %124, 0
  br i1 %tobool.not.i64, label %if.end.i66, label %sw.bb11.sw.epilog_crit_edge, !prof !94

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i66:                                       ; preds = %sw.bb11
  %125 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %event, align 8
  %127 = call i32 @llvm.bswap.i32(i32 %126) #14
  %128 = and i32 %127, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool4.not.i65 = icmp eq i32 %128, 0
  br i1 %tobool4.not.i65, label %if.else.i68, label %if.then11.i, !prof !92

if.then11.i:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #16
  %and14.i = and i32 %127, 4095
  %129 = lshr i32 %15, 24
  %rem.i = and i32 %129, 3
  %add.ptr.i67 = getelementptr %struct.efx_tx_queue, ptr %tx_queue19.i, i32 %rem.i
  call void @efx_xmit_done(ptr noundef %add.ptr.i67, i32 noundef %and14.i) #14
  br label %sw.epilog

if.else.i68:                                      ; preds = %if.end.i66
  %130 = and i32 %127, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool24.not.i = icmp eq i32 %130, 0
  br i1 %tobool24.not.i, label %if.else35.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #16
  %131 = lshr i32 %15, 24
  %rem32.i = and i32 %131, 3
  %add.ptr33.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue19.i, i32 %rem32.i
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %122, i32 0, i32 83
  %132 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %net_dev.i, align 4
  call void @netif_tx_lock(ptr noundef %133) #14
  %write_count.i.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue19.i, i32 %rem32.i, i32 27
  %134 = ptrtoint ptr %write_count.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %write_count.i.i, align 4
  %ptr_mask.i.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue19.i, i32 %rem32.i, i32 11
  %136 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i = and i32 %137, %135
  %138 = call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %139 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr33.i, align 128
  %queue.i.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue19.i, i32 %rem32.i, i32 1
  %141 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %queue.i.i, align 4
  %vi_stride.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %140, i32 0, i32 14
  %143 = ptrtoint ptr %vi_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %vi_stride.i.i.i.i, align 128
  %mul.i.i.i.i = mul i32 %144, %142
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 2588
  %membase.i.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %140, i32 0, i32 13
  %145 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %146, i32 %add.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %138) #14, !srcloc !91
  %147 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %net_dev.i, align 4
  call void @netif_tx_unlock(ptr noundef %148) #14
  br label %sw.epilog

if.else35.i:                                      ; preds = %if.else.i68
  %149 = call i32 @llvm.bswap.i32(i32 %15) #14
  %150 = and i32 %149, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool40.not.i = icmp eq i32 %150, 0
  br i1 %tobool40.not.i, label %do.body43.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @efx_schedule_reset(ptr noundef %122, i32 noundef 11) #14
  br label %sw.epilog

do.body43.i:                                      ; preds = %if.else35.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %122, i32 0, i32 22
  %151 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %msg_enable.i, align 4
  %and44.i = and i32 %152, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %do.body43.i.sw.epilog_crit_edge, label %if.then46.i

do.body43.i.sw.epilog_crit_edge:                  ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then46.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev47.i = getelementptr inbounds %struct.efx_nic, ptr %122, i32 0, i32 83
  %153 = ptrtoint ptr %net_dev47.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %net_dev47.i, align 4
  %155 = ptrtoint ptr %channel48.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %channel48.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %154, ptr noundef nonnull @.str.29, i32 noundef %156, i32 noundef %149, i32 noundef %127) #17
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @efx_farch_handle_generated_event(ptr noundef %channel, ptr noundef nonnull %event)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @efx_farch_handle_driver_event(ptr noundef %channel, ptr noundef nonnull %event)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void @efx_siena_sriov_event(ptr noundef %channel, ptr noundef nonnull %event) #14
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void @efx_mcdi_process_event(ptr noundef %channel, ptr noundef nonnull %event) #14
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end4
  %157 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %type, align 4
  %handle_global_event = getelementptr inbounds %struct.efx_nic_type, ptr %158, i32 0, i32 14
  %159 = ptrtoint ptr %handle_global_event to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %handle_global_event, align 8
  %tobool17.not = icmp eq ptr %160, null
  br i1 %tobool17.not, label %sw.bb16.do.body23_crit_edge, label %land.lhs.true

sw.bb16.do.body23_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

land.lhs.true:                                    ; preds = %sw.bb16
  %call20 = call zeroext i1 %160(ptr noundef %channel, ptr noundef nonnull %event) #14
  br i1 %call20, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.do.body23_crit_edge

land.lhs.true.do.body23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body23:                                        ; preds = %land.lhs.true.do.body23_crit_edge, %sw.bb16.do.body23_crit_edge, %if.end4.do.body23_crit_edge
  %161 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %162, i32 0, i32 22
  %163 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %msg_enable, align 4
  %and25 = and i32 %164, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.sw.epilog_crit_edge, label %if.then27

do.body23.sw.epilog_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %162, i32 0, i32 83
  %165 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %net_dev, align 4
  %167 = ptrtoint ptr %channel48.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %channel48.i, align 4
  %169 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx2.i, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %170)
  %172 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %event, align 8
  %174 = call i32 @llvm.bswap.i32(i32 %173)
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %166, ptr noundef nonnull @.str.5, i32 noundef %168, i32 noundef %shr, i32 noundef %171, i32 noundef %174) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then27, %do.body23.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %if.then46.i, %do.body43.i.sw.epilog_crit_edge, %if.then41.i, %if.then25.i, %if.then11.i, %sw.bb11.sw.epilog_crit_edge, %efx_farch_handle_rx_event.exit.sw.epilog_crit_edge
  %spent.1 = phi i32 [ %spent.094, %if.then27 ], [ %spent.094, %do.body23.sw.epilog_crit_edge ], [ %spent.094, %land.lhs.true.sw.epilog_crit_edge ], [ %spent.094, %sw.bb15 ], [ %spent.094, %sw.bb14 ], [ %spent.094, %sw.bb13 ], [ %spent.094, %sw.bb12 ], [ %inc7, %efx_farch_handle_rx_event.exit.sw.epilog_crit_edge ], [ %spent.094, %sw.bb11.sw.epilog_crit_edge ], [ %spent.094, %if.then11.i ], [ %spent.094, %if.then25.i ], [ %spent.094, %if.then41.i ], [ %spent.094, %do.body43.i.sw.epilog_crit_edge ], [ %spent.094, %if.then46.i ]
  %175 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %eventq.i, align 4
  %177 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %eventq_mask.i, align 8
  %and.i = and i32 %178, %inc
  %add.ptr.i = getelementptr %union.efx_qword, ptr %176, i32 %and.i
  %179 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %add.ptr.i, align 8
  %181 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %180)
  %cmp.i = icmp ugt i64 %180, -4294967297
  %182 = trunc i64 %180 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %182)
  %cmp4.i = icmp eq i32 %182, -1
  %tobool.not = or i1 %cmp.i, %cmp4.i
  br i1 %tobool.not, label %sw.epilog.out_crit_edge, label %sw.epilog.if.end4_crit_edge

sw.epilog.if.end4_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %sw.epilog.out_crit_edge, %efx_farch_handle_rx_event.exit.out_crit_edge, %if.end.out_crit_edge
  %read_ptr.1 = phi i32 [ %3, %if.end.out_crit_edge ], [ %inc, %sw.epilog.out_crit_edge ], [ %inc, %efx_farch_handle_rx_event.exit.out_crit_edge ]
  %spent.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %budget, %efx_farch_handle_rx_event.exit.out_crit_edge ], [ %spent.1, %sw.epilog.out_crit_edge ]
  %183 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %read_ptr.1, ptr %eventq_read_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spent.2, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_handle_generated_event(ptr noundef %channel, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 1
  %2 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  %rx_queue.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45
  %spec.select = select i1 %cmp.i, ptr %rx_queue.i, ptr null
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %channel3 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %7 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel3, align 4
  %or4 = or i32 %8, 65792
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or4)
  %cmp = icmp eq i32 %6, %or4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %event_test_cpu = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 13
  %13 = ptrtoint ptr %event_test_cpu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %event_test_cpu, align 32
  br label %if.end39

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %if.else.if.else17_crit_edge, label %land.lhs.true

if.else.if.else17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else17

land.lhs.true:                                    ; preds = %if.else
  %channel.i = getelementptr i8, ptr %spec.select, i32 -508
  %14 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel.i, align 4
  %or7 = or i32 %15, 66048
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or7)
  %cmp8 = icmp eq i32 %6, %or7
  br i1 %cmp8, label %if.then9, label %land.lhs.true12.critedge

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_fast_push_rx_descriptors(ptr noundef nonnull %spec.select, i1 noundef zeroext true) #14
  br label %if.end39

land.lhs.true12.critedge:                         ; preds = %land.lhs.true
  %or14 = or i32 %15, 66304
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or14)
  %cmp15 = icmp eq i32 %6, %or14
  br i1 %cmp15, label %if.then16, label %land.lhs.true12.critedge.if.else17_crit_edge

land.lhs.true12.critedge.if.else17_crit_edge:     ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else17

if.then16:                                        ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_handle_drain_event(ptr noundef %channel)
  br label %if.end39

if.else17:                                        ; preds = %land.lhs.true12.critedge.if.else17_crit_edge, %if.else.if.else17_crit_edge
  %shr.mask = and i32 %6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 66560, i32 %shr.mask)
  %cmp18 = icmp eq i32 %shr.mask, 66560
  br i1 %cmp18, label %if.then19, label %do.body

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_handle_drain_event(ptr noundef %channel)
  br label %if.end39

do.body:                                          ; preds = %if.else17
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and21 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body.if.end39_crit_edge, label %do.body24

do.body.if.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_farch_handle_generated_event.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_farch_handle_generated_event, %if.then29)) #14
          to label %if.end39 [label %if.then29], !srcloc !97

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %20 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel3, align 4
  %arrayidx31 = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx31, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_farch_handle_generated_event.__UNIQUE_ID_ddebug539, ptr noundef %19, ptr noundef nonnull @.str.31, i32 noundef %21, i32 noundef %24, i32 noundef %27) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %do.body24, %do.body.if.end39_crit_edge, %if.then19, %if.then16, %if.then9, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_handle_driver_event(ptr nocapture noundef readonly %channel, ptr noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %arrayidx = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 15
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %6 = and i32 %5, -12648448
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %do.body
    i32 15, label %sw.bb48
    i32 14, label %sw.bb36
    i32 11, label %do.body26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %n_tx_channels.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 46
  %9 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_tx_channels.i, align 8
  %n_extra_tx_channels.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 47
  %11 = ptrtoint ptr %n_extra_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_extra_tx_channels.i, align 4
  %add.i = add i32 %12, %10
  %mul.i = shl i32 %add.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul.i)
  %cmp.i = icmp ult i32 %7, %mul.i
  br i1 %cmp.i, label %if.then.i, label %sw.bb.efx_farch_handle_tx_flush_done.exit_crit_edge

sw.bb.efx_farch_handle_tx_flush_done.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_tx_flush_done.exit

if.then.i:                                        ; preds = %sw.bb
  %div13.i = lshr i32 %7, 2
  %tx_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 45
  %13 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_channel_offset.i.i, align 4
  %add.i.i = add i32 %14, %div13.i
  %arrayidx.i.i = getelementptr %struct.efx_nic, ptr %1, i32 0, i32 25, i32 %add.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tx_queue1.i = getelementptr inbounds %struct.efx_channel, ptr %16, i32 0, i32 46
  %rem.i = and i32 %7, 3
  %flush_outstanding.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue1.i, i32 %rem.i, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flush_outstanding.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %flush_outstanding.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then.i
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %flush_outstanding.i, ptr %flush_outstanding.i, i32 1, i32 0, ptr elementtype(i32) %flush_outstanding.i) #14, !srcloc !106
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool.not.i, label %atomic_cmpxchg.exit.i.efx_farch_handle_tx_flush_done.exit_crit_edge, label %if.then3.i

atomic_cmpxchg.exit.i.efx_farch_handle_tx_flush_done.exit_crit_edge: ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_tx_flush_done.exit

if.then3.i:                                       ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %channel4.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue1.i, i32 %rem.i, i32 6
  %18 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel4.i, align 8
  %queue.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue1.i, i32 %rem.i, i32 1
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queue.i, align 4
  %or5.i = or i32 %21, 66560
  %22 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #14
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %19, align 128
  %channel3.i.i = getelementptr inbounds %struct.efx_channel, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %channel3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel3.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %biu_lock.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 131
  %call3.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i.i) #14
  %membase.i.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %24, i32 0, i32 13
  %28 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %29, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %22) #14, !srcloc !91
  %30 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i25.i.i.i.i = getelementptr i8, ptr %31, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i.i, i32 112) #14, !srcloc !91
  %32 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i27.i.i.i.i = getelementptr i8, ptr %33, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i.i, i32 %27) #14, !srcloc !91
  %34 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i29.i.i.i.i = getelementptr i8, ptr %35, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i.i, i32 noundef %call3.i.i.i.i) #14
  br label %efx_farch_handle_tx_flush_done.exit

efx_farch_handle_tx_flush_done.exit:              ; preds = %if.then3.i, %atomic_cmpxchg.exit.i.efx_farch_handle_tx_flush_done.exit_crit_edge, %sw.bb.efx_farch_handle_tx_flush_done.exit_crit_edge
  tail call void @efx_siena_sriov_tx_flush_done(ptr noundef %1, ptr noundef %event) #14
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %36 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %and.i = and i32 %36, 4095
  %37 = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i95 = icmp eq i32 %37, 0
  %n_channels.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 42
  %38 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %39)
  %cmp.not.i = icmp ult i32 %and.i, %39
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb5.efx_farch_handle_rx_flush_done.exit_crit_edge

sw.bb5.efx_farch_handle_rx_flush_done.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_flush_done.exit

if.end.i:                                         ; preds = %sw.bb5
  %arrayidx.i.i96 = getelementptr %struct.efx_nic, ptr %1, i32 0, i32 25, i32 %and.i
  %40 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i96, align 4
  %core_index.i.i = getelementptr inbounds %struct.efx_channel, ptr %41, i32 0, i32 45, i32 1
  %42 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %core_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.i = icmp sgt i32 %43, -1
  br i1 %cmp.i.i, label %if.end6.i, label %if.end.i.efx_farch_handle_rx_flush_done.exit_crit_edge

if.end.i.efx_farch_handle_rx_flush_done.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_flush_done.exit

if.end6.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i95, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end6.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %44 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable.i, align 4
  %and10.i = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then12.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %46 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %47, ptr noundef nonnull @.str.37, i32 noundef %and.i) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %do.body.i.do.end.i_crit_edge
  %flush_pending.i = getelementptr inbounds %struct.efx_channel, ptr %41, i32 0, i32 45, i32 6
  %48 = ptrtoint ptr %flush_pending.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %flush_pending.i, align 1
  %rxq_flush_pending.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 117
  %call.i.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rxq_flush_pending.i, i32 1, i32 3, i32 1) #14
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_pending.i, ptr %rxq_flush_pending.i, i32 1, ptr elementtype(i32) %rxq_flush_pending.i) #14, !srcloc !101
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %channel.i.i = getelementptr %struct.efx_channel, ptr %41, i32 0, i32 1
  %50 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel.i.i, align 4
  %or16.i = or i32 %51, 66304
  %52 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #14
  %53 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %41, align 128
  %55 = tail call i32 @llvm.bswap.i32(i32 %51) #14
  %biu_lock.i.i.i.i98 = getelementptr inbounds %struct.efx_nic, ptr %54, i32 0, i32 131
  %call3.i.i.i.i99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i.i98) #14
  %membase.i.i.i.i.i100 = getelementptr inbounds %struct.efx_nic, ptr %54, i32 0, i32 13
  %56 = ptrtoint ptr %membase.i.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i.i.i.i100, align 4
  %add.ptr.i.i.i.i.i101 = getelementptr i8, ptr %57, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i101, i32 %52) #14, !srcloc !91
  %58 = ptrtoint ptr %membase.i.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i.i.i.i100, align 4
  %add.ptr.i25.i.i.i.i102 = getelementptr i8, ptr %59, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i.i102, i32 112) #14, !srcloc !91
  %60 = ptrtoint ptr %membase.i.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i.i.i.i100, align 4
  %add.ptr.i27.i.i.i.i103 = getelementptr i8, ptr %61, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i.i103, i32 %55) #14, !srcloc !91
  %62 = ptrtoint ptr %membase.i.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i.i.i.i.i100, align 4
  %add.ptr.i29.i.i.i.i104 = getelementptr i8, ptr %63, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i.i104, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i.i98, i32 noundef %call3.i.i.i.i99) #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %do.end.i
  %rxq_flush_outstanding.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 118
  %call.i.i37.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rxq_flush_outstanding.i, i32 1, i32 3, i32 1) #14
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_outstanding.i, ptr %rxq_flush_outstanding.i, i32 1, ptr elementtype(i32) %rxq_flush_outstanding.i) #14, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %active_queues.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 116
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i.i, i32 noundef 4) #14
  %65 = ptrtoint ptr %active_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %active_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i38.i = icmp eq i32 %66, 0
  br i1 %cmp.i38.i, label %if.end17.i.if.then19.i_crit_edge, label %lor.rhs.i.i

if.end17.i.if.then19.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19.i

lor.rhs.i.i:                                      ; preds = %if.end17.i
  %call.i.i9.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  %67 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp4.i.i = icmp slt i32 %68, 4
  br i1 %cmp4.i.i, label %efx_farch_flush_wake.exit.i, label %lor.rhs.i.i.efx_farch_handle_rx_flush_done.exit_crit_edge

lor.rhs.i.i.efx_farch_handle_rx_flush_done.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_flush_done.exit

efx_farch_flush_wake.exit.i:                      ; preds = %lor.rhs.i.i
  %rxq_flush_pending.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 117
  %call.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending.i.i, i32 noundef 4) #14
  %69 = ptrtoint ptr %rxq_flush_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %rxq_flush_pending.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp6.i.i = icmp sgt i32 %70, 0
  br i1 %cmp6.i.i, label %efx_farch_flush_wake.exit.i.if.then19.i_crit_edge, label %efx_farch_flush_wake.exit.i.efx_farch_handle_rx_flush_done.exit_crit_edge

efx_farch_flush_wake.exit.i.efx_farch_handle_rx_flush_done.exit_crit_edge: ; preds = %efx_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_handle_rx_flush_done.exit

efx_farch_flush_wake.exit.i.if.then19.i_crit_edge: ; preds = %efx_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19.i

if.then19.i:                                      ; preds = %efx_farch_flush_wake.exit.i.if.then19.i_crit_edge, %if.end17.i.if.then19.i_crit_edge
  %flush_wq.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 119
  tail call void @__wake_up(ptr noundef %flush_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %efx_farch_handle_rx_flush_done.exit

efx_farch_handle_rx_flush_done.exit:              ; preds = %if.then19.i, %efx_farch_flush_wake.exit.i.efx_farch_handle_rx_flush_done.exit_crit_edge, %lor.rhs.i.i.efx_farch_handle_rx_flush_done.exit_crit_edge, %if.end.i.efx_farch_handle_rx_flush_done.exit_crit_edge, %sw.bb5.efx_farch_handle_rx_flush_done.exit_crit_edge
  tail call void @efx_siena_sriov_rx_flush_done(ptr noundef %1, ptr noundef %event) #14
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %71 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %72, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body9

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_farch_handle_driver_event.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_farch_handle_driver_event, %if.then14)) #14
          to label %sw.epilog [label %if.then14], !srcloc !97

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %73 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net_dev, align 4
  %channel15 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %75 = ptrtoint ptr %channel15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %channel15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_farch_handle_driver_event.__UNIQUE_ID_ddebug540, ptr noundef %74, ptr noundef nonnull @.str.33, i32 noundef %76, i32 noundef %7) #14
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  %msg_enable27 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %77 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable27, align 4
  %and28 = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.do.end35_crit_edge, label %if.then30

do.body26.do.end35_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev31 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %79 = ptrtoint ptr %net_dev31 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev31, align 4
  %channel32 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %81 = ptrtoint ptr %channel32 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %channel32, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.34, i32 noundef %82) #17
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body26.do.end35_crit_edge
  %rx_reset = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 103
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_reset, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %rx_reset, i32 1, i32 3, i32 1) #14
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_reset, ptr %rx_reset, i32 1, ptr elementtype(i32) %rx_reset) #14, !srcloc !101
  tail call void @efx_schedule_reset(ptr noundef %1, i32 noundef 7) #14
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp = icmp ult i32 %7, 128
  br i1 %cmp, label %do.body38, label %if.else

do.body38:                                        ; preds = %sw.bb36
  %msg_enable39 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %84 = ptrtoint ptr %msg_enable39 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_enable39, align 4
  %and40 = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.do.end46_crit_edge, label %if.then42

do.body38.do.end46_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end46

if.then42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev43 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %86 = ptrtoint ptr %net_dev43 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net_dev43, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.35, i32 noundef %7, i32 noundef %7) #17
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body38.do.end46_crit_edge
  tail call void @efx_schedule_reset(ptr noundef %1, i32 noundef 11) #14
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_siena_sriov_desc_fetch_err(ptr noundef %1, i32 noundef %7) #14
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp49 = icmp ult i32 %7, 128
  br i1 %cmp49, label %do.body51, label %if.else60

do.body51:                                        ; preds = %sw.bb48
  %msg_enable52 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %88 = ptrtoint ptr %msg_enable52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_enable52, align 4
  %and53 = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.do.end59_crit_edge, label %if.then55

do.body51.do.end59_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59

if.then55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev56 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %90 = ptrtoint ptr %net_dev56 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %net_dev56, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %91, ptr noundef nonnull @.str.36, i32 noundef %7, i32 noundef %7) #17
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body51.do.end59_crit_edge
  tail call void @efx_schedule_reset(ptr noundef %1, i32 noundef 11) #14
  br label %sw.epilog

if.else60:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_siena_sriov_desc_fetch_err(ptr noundef %1, i32 noundef %7) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else60, %do.end59, %if.else, %do.end46, %do.end35, %if.then14, %do.body9, %do.body.sw.epilog_crit_edge, %efx_farch_handle_rx_flush_done.exit, %efx_farch_handle_tx_flush_done.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_process_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_ev_probe(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_mask, align 8
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %add = shl i32 %3, 3
  %mul = add i32 %add, 8
  %call = tail call fastcc i32 @efx_alloc_special_buffer(ptr noundef %1, ptr noundef %eventq, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_ev_init(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %do.body2

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_farch_ev_init.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_farch_ev_init, %if.then6)) #14
          to label %do.body14 [label %if.then6], !srcloc !97

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel7, align 4
  %index = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries, align 4
  %add = add i32 %9, -1
  %sub = add i32 %add, %11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_farch_ev_init.__UNIQUE_ID_ddebug541, ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %9, i32 noundef %sub) #14
  br label %do.body14

do.body14:                                        ; preds = %if.then6, %do.body2, %entry.do.body14_crit_edge
  %channel20 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %12 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel20, align 4
  %mul.i = shl i32 %13, 4
  %add.i = add i32 %mul.i, 16187392
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !91
  %add7.i.i = add i32 %mul.i, 16187396
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %17, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 33554432) #14, !srcloc !91
  %add9.i.i = add i32 %mul.i, 16187400
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %19, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #14, !srcloc !91
  %add11.i.i = add i32 %mul.i, 16187404
  %20 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %21, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  %eventq21 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  tail call fastcc void @efx_init_special_buffer(ptr noundef %1, ptr noundef %eventq21)
  %22 = ptrtoint ptr %eventq21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eventq21, align 4
  %len = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %26 = call ptr @memset(ptr %23, i32 255, i32 %25)
  %entries27 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 2
  %27 = ptrtoint ptr %entries27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entries27, align 4
  %29 = tail call i32 @llvm.cttz.i32(i32 %28, i1 false) #14, !range !98
  %shl = shl nuw nsw i32 %29, 20
  %index30 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %index30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index30, align 4
  %32 = or i32 %31, %shl
  %or3257 = or i32 %32, 8388608
  %33 = tail call i32 @llvm.bswap.i32(i32 %or3257)
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type, align 4
  %evq_ptr_tbl_base = getelementptr inbounds %struct.efx_nic_type, ptr %35, i32 0, i32 122
  %36 = ptrtoint ptr %evq_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %evq_ptr_tbl_base, align 8
  %38 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel20, align 4
  %mul.i58 = shl i32 %39, 4
  %add.i59 = add i32 %mul.i58, %37
  %call3.i.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %40 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i63 = getelementptr i8, ptr %41, i32 %add.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i63, i32 %33) #14, !srcloc !91
  %add7.i.i65 = add i32 %add.i59, 4
  %42 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i66 = getelementptr i8, ptr %43, i32 %add7.i.i65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i66, i32 0) #14, !srcloc !91
  %add9.i.i68 = add i32 %add.i59, 8
  %44 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i69 = getelementptr i8, ptr %45, i32 %add9.i.i68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i69, i32 0) #14, !srcloc !91
  %add11.i.i71 = add i32 %add.i59, 12
  %46 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i72 = getelementptr i8, ptr %47, i32 %add11.i.i71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i72, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i61) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_ev_fini(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %evq_ptr_tbl_base = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 122
  %4 = ptrtoint ptr %evq_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evq_ptr_tbl_base, align 8
  %channel5 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel5, align 4
  %mul.i = shl i32 %7, 4
  %add.i = add i32 %mul.i, %5
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !91
  %add7.i.i = add i32 %add.i, 4
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %11, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #14, !srcloc !91
  %add9.i.i = add i32 %add.i, 8
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %13, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #14, !srcloc !91
  %add11.i.i = add i32 %add.i, 12
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %15, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  %16 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel5, align 4
  %mul.i13 = shl i32 %17, 4
  %add.i14 = add i32 %mul.i13, 16187392
  %call3.i.i16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i18 = getelementptr i8, ptr %19, i32 %add.i14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i18, i32 0) #14, !srcloc !91
  %add7.i.i20 = add i32 %mul.i13, 16187396
  %20 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i21 = getelementptr i8, ptr %21, i32 %add7.i.i20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i21, i32 0) #14, !srcloc !91
  %add9.i.i23 = add i32 %mul.i13, 16187400
  %22 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i24 = getelementptr i8, ptr %23, i32 %add9.i.i23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i24, i32 0) #14, !srcloc !91
  %add11.i.i26 = add i32 %mul.i13, 16187404
  %24 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i27 = getelementptr i8, ptr %25, i32 %add11.i.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i27, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i16) #14
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  tail call fastcc void @efx_fini_special_buffer(ptr noundef %1, ptr noundef %eventq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_ev_remove(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %2 = ptrtoint ptr %eventq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eventq, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.efx_free_special_buffer.exit_crit_edge, label %do.body.i

entry.efx_free_special_buffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_free_special_buffer.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end19.i_crit_edge, label %do.body3.i

do.body.i.do.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_free_special_buffer.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_farch_ev_remove, %if.then7.i)) #14
          to label %do.end19.i [label %if.then7.i], !srcloc !97

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %index.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %entries.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries.i, align 4
  %add.i = add i32 %9, -1
  %sub.i = add i32 %add.i, %11
  %dma_addr.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %13 to i64
  %len.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = ptrtoint ptr %eventq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eventq, align 4
  %18 = ptrtoint ptr %17 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %18) #14
  %conv16.i = zext i32 %call.i.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_free_special_buffer.__UNIQUE_ID_ddebug527, ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %sub.i, i64 noundef %conv.i, i32 noundef %15, ptr noundef %17, i64 noundef %conv16.i) #14
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end19.i_crit_edge
  tail call void @efx_nic_free_buffer(ptr noundef %1, ptr noundef %eventq) #14
  %entries21.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %entries21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %entries21.i, align 4
  br label %efx_free_special_buffer.exit

efx_free_special_buffer.exit:                     ; preds = %do.end19.i, %entry.efx_free_special_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_ev_test_generate(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel1, align 4
  %or = or i32 %1, 65792
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel, align 128
  %5 = tail call i32 @llvm.bswap.i32(i32 %1) #14
  %biu_lock.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %4, i32 0, i32 131
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #14
  %membase.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %4, i32 0, i32 13
  %6 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %2) #14, !srcloc !91
  %8 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %9, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 112) #14, !srcloc !91
  %10 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %11, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %5) #14, !srcloc !91
  %12 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %13, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_rx_defer_refill(ptr nocapture noundef readonly %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rx_queue, i32 -512
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel.i, align 4
  %or = or i32 %1, 66048
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %5 = tail call i32 @llvm.bswap.i32(i32 %1) #14
  %biu_lock.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %4, i32 0, i32 131
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #14
  %membase.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %4, i32 0, i32 13
  %6 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %2) #14, !srcloc !91
  %8 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %9, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 112) #14, !srcloc !91
  %10 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %11, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %5) #14, !srcloc !91
  %12 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %13, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_irq_enable_master(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_status = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 71
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_status, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 8
  %3 = load ptr, ptr %irq_status, align 8
  %arrayidx3 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx3, align 4
  %5 = load ptr, ptr %irq_status, align 8
  %arrayidx6 = getelementptr [4 x i32], ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx6, align 8
  %7 = load ptr, ptr %irq_status, align 8
  %arrayidx9 = getelementptr [4 x i32], ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !108
  tail call void @arm_heavy_mb() #14
  %irq_level.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 73
  %9 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_level.i, align 8
  %shl.i = shl i32 %10, 8
  %or9.i = or i32 %shl.i, 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #14
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #14, !srcloc !91
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #14, !srcloc !91
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #14, !srcloc !91
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_irq_disable_master(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_level.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 73
  %0 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_level.i, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = lshr i32 %2, 8
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %3) #14, !srcloc !91
  %6 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #14, !srcloc !91
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #14, !srcloc !91
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_irq_test_generate(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_level.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 73
  %0 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_level.i, align 8
  %shl.i = shl i32 %1, 8
  %or9.i = or i32 %shl.i, 9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #14
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %3 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %2) #14, !srcloc !91
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #14, !srcloc !91
  %7 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #14, !srcloc !91
  %9 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_fatal_interrupt(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_status = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 71
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_status, align 8
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !90
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %6, i32 564
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #14, !srcloc !90
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 568
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #14, !srcloc !90
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %12, i32 572
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #14
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and3 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %16 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %16, 4095
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev, align 4
  %arrayidx4 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx5 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %arrayidx6 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = tail call i32 @llvm.bswap.i32(i32 %13)
  %32 = tail call i32 @llvm.bswap.i32(i32 %10)
  %33 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool12.not, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.8, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %16, ptr noundef nonnull %cond) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %34 = and i32 %4, 16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %.not = icmp eq i32 %34, 0
  br i1 %.not, label %do.end.if.end41_crit_edge, label %if.then27

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then27:                                        ; preds = %do.end
  %call2.i92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %36, i32 608
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #14, !srcloc !90
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i95 = getelementptr i8, ptr %39, i32 612
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i95) #14, !srcloc !90
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i97 = getelementptr i8, ptr %42, i32 616
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i97) #14, !srcloc !90
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i99 = getelementptr i8, ptr %45, i32 620
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i99) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i92) #14
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 4
  %and30 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then27.if.end41_crit_edge, label %if.then32

if.then27.if.end41_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev33 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %49 = ptrtoint ptr %net_dev33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev33, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %46)
  %52 = tail call i32 @llvm.bswap.i32(i32 %43)
  %53 = tail call i32 @llvm.bswap.i32(i32 %40)
  %54 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.11, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54) #17
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.then27.if.end41_crit_edge, %do.end.if.end41_crit_edge
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %55 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_clear_master(ptr noundef %56) #14
  %irq_level.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 73
  %57 = ptrtoint ptr %irq_level.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq_level.i.i, align 8
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #14
  %60 = lshr i32 %59, 8
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %60) #14, !srcloc !91
  %63 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %64, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 0) #14, !srcloc !91
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %66, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 0) #14, !srcloc !91
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %68, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i.i) #14
  %int_error_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 67
  %69 = ptrtoint ptr %int_error_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %int_error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp = icmp eq i32 %70, 0
  br i1 %cmp, label %if.end41.if.then43_crit_edge, label %lor.lhs.false

if.end41.if.then43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end41
  %int_error_expire = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 68
  %71 = ptrtoint ptr %int_error_expire to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %int_error_expire, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %72, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp42 = icmp slt i32 %sub, 0
  br i1 %cmp42, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.if.end46_crit_edge

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end41.if.then43_crit_edge
  %74 = ptrtoint ptr %int_error_count to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %int_error_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %75, 360000
  %int_error_expire45 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 68
  %76 = ptrtoint ptr %int_error_expire45 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add, ptr %int_error_expire45, align 32
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %lor.lhs.false.if.end46_crit_edge
  %77 = ptrtoint ptr %int_error_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %int_error_count, align 4
  %inc = add i32 %78, 1
  store i32 %inc, ptr %int_error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp48 = icmp ult i32 %inc, 5
  %79 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_enable, align 4
  %and52 = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end46.if.end68_crit_edge, label %if.end68.sink.split

if.end46.if.end68_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.end68.sink.split:                              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %.str.12..str.13 = select i1 %cmp48, ptr @.str.12, ptr @.str.13
  %net_dev64 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %81 = ptrtoint ptr %net_dev64 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %net_dev64, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull %.str.12..str.13) #17
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.end46.if.end68_crit_edge
  %. = select i1 %cmp48, i32 10, i32 7
  tail call void @efx_schedule_reset(ptr noundef %efx, i32 noundef %.) #14
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_legacy_interrupt(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_soft_enabled = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 70
  %0 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %irq_soft_enabled, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %irq_status = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 71
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_status, align 8
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !90
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @efx_try_recovery(ptr noundef %dev_id) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %eeh_disabled_legacy_irq = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 8
  %8 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %eeh_disabled_legacy_irq, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  %legacy_irq = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 7
  %10 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %legacy_irq, align 16
  tail call void @disable_irq_nosync(i32 noundef %11) #14
  %12 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %eeh_disabled_legacy_irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %irq_level = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 73
  %13 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_level, align 8
  %shl8 = shl nuw i32 1, %14
  %and9 = and i32 %shl8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %brmerge = select i1 %tobool10.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end.if.end25_crit_edge, label %if.then13

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then13:                                        ; preds = %if.end
  %arrayidx14 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 8
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.end23, label %if.then21, !prof !94

if.then21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = tail call i32 @efx_farch_fatal_interrupt(ptr noundef %dev_id)
  br label %cleanup

if.end23:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %18 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %last_irq_cpu = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 132
  %22 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_irq_cpu, align 16
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp26.not = icmp eq i32 %6, 0
  %irq_zero_count50 = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 72
  br i1 %cmp26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %irq_zero_count50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %irq_zero_count50, align 4
  br i1 %tobool.not, label %if.then27.cleanup_crit_edge, label %if.then35, !prof !92

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then35:                                        ; preds = %if.then27
  %channel36 = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 25
  %24 = ptrtoint ptr %channel36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel36, align 8
  %tobool38.not144 = icmp eq ptr %25, null
  br i1 %tobool38.not144, label %if.then35.cleanup_crit_edge, label %for.body.lr.ph

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then35
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %queues.0147 = phi i32 [ %7, %for.body.lr.ph ], [ %shr, %cond.end.for.body_crit_edge ]
  %channel.0145 = phi ptr [ %25, %for.body.lr.ph ], [ %36, %cond.end.for.body_crit_edge ]
  %and39 = and i32 %queues.0147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %for.body.if.end42_crit_edge, label %if.then41

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then41:                                        ; preds = %for.body
  %26 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %event_test_cpu.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0145, i32 0, i32 13
  %30 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %event_test_cpu.i, align 32
  %napi_str.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0145, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #14
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.then41.if.end42_crit_edge

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then.i.i.i:                                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then.i.i.i, %if.then41.if.end42_crit_edge, %for.body.if.end42_crit_edge
  %channel43 = getelementptr inbounds %struct.efx_channel, ptr %channel.0145, i32 0, i32 1
  %31 = ptrtoint ptr %channel43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel43, align 4
  %add = add i32 %32, 1
  %33 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %34)
  %cmp44 = icmp ult i32 %add, %34
  br i1 %cmp44, label %cond.end, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end:                                         ; preds = %if.end42
  %shr = lshr i32 %queues.0147, 1
  %arrayidx48 = getelementptr %struct.efx_nic, ptr %dev_id, i32 0, i32 25, i32 %add
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx48, align 4
  %tobool38.not = icmp eq ptr %36, null
  br i1 %tobool38.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %37 = ptrtoint ptr %irq_zero_count50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_zero_count50, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %irq_zero_count50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp51 = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then61, !prof !92

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then61:                                        ; preds = %if.else
  %channel62 = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 25
  %39 = ptrtoint ptr %channel62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %channel62, align 8
  %tobool65.not148 = icmp eq ptr %40, null
  br i1 %tobool65.not148, label %if.then61.cleanup_crit_edge, label %for.body66.lr.ph

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body66.lr.ph:                                 ; preds = %if.then61
  %n_channels76 = getelementptr inbounds %struct.efx_nic, ptr %dev_id, i32 0, i32 42
  br label %for.body66

for.body66:                                       ; preds = %cond.end84.for.body66_crit_edge, %for.body66.lr.ph
  %channel.1149 = phi ptr [ %40, %for.body66.lr.ph ], [ %72, %cond.end84.for.body66_crit_edge ]
  %eventq_read_ptr = getelementptr inbounds %struct.efx_channel, ptr %channel.1149, i32 0, i32 12
  %41 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eventq_read_ptr, align 4
  %eventq.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1149, i32 0, i32 10
  %43 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %eventq.i, align 4
  %eventq_mask.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1149, i32 0, i32 11
  %45 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eventq_mask.i, align 8
  %and.i133 = and i32 %46, %42
  %add.ptr.i = getelementptr %union.efx_qword, ptr %44, i32 %and.i133
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i = icmp eq i32 %48, -1
  %arrayidx2.i = getelementptr [2 x %union.efx_dword], ptr %add.ptr.i, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp4.i = icmp eq i32 %50, -1
  %tobool69.not = or i1 %cmp.i, %cmp4.i
  br i1 %tobool69.not, label %if.else71, label %if.then70

if.then70:                                        ; preds = %for.body66
  %51 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i134 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i134 to ptr
  %cpu.i135 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i135 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i135, align 4
  %event_test_cpu.i136 = getelementptr inbounds %struct.efx_channel, ptr %channel.1149, i32 0, i32 13
  %55 = ptrtoint ptr %event_test_cpu.i136 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %event_test_cpu.i136, align 32
  %napi_str.i.i137 = getelementptr inbounds %struct.efx_channel, ptr %channel.1149, i32 0, i32 8
  %call.i.i.i138 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i137) #14
  br i1 %call.i.i.i138, label %if.then.i.i.i139, label %if.then70.for.inc73_crit_edge

if.then70.for.inc73_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc73

if.then.i.i.i139:                                 ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i137) #14
  br label %for.inc73

if.else71:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %channel.1149 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %channel.1149, align 128
  %58 = tail call i32 @llvm.bswap.i32(i32 %and.i133) #14
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %57, i32 0, i32 6
  %59 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %type.i, align 4
  %evq_rptr_tbl_base.i = getelementptr inbounds %struct.efx_nic_type, ptr %60, i32 0, i32 123
  %61 = ptrtoint ptr %evq_rptr_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %evq_rptr_tbl_base.i, align 4
  %channel3.i = getelementptr inbounds %struct.efx_channel, ptr %channel.1149, i32 0, i32 1
  %63 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %channel3.i, align 4
  %mul.i = shl i32 %64, 4
  %add.i = add i32 %mul.i, %62
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %57, i32 0, i32 13
  %65 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %58) #14, !srcloc !91
  br label %for.inc73

for.inc73:                                        ; preds = %if.else71, %if.then.i.i.i139, %if.then70.for.inc73_crit_edge
  %channel74 = getelementptr inbounds %struct.efx_channel, ptr %channel.1149, i32 0, i32 1
  %67 = ptrtoint ptr %channel74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channel74, align 4
  %add75 = add i32 %68, 1
  %69 = ptrtoint ptr %n_channels76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_channels76, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %70)
  %cmp77 = icmp ult i32 %add75, %70
  br i1 %cmp77, label %cond.end84, label %for.inc73.cleanup_crit_edge

for.inc73.cleanup_crit_edge:                      ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end84:                                       ; preds = %for.inc73
  %arrayidx82 = getelementptr %struct.efx_nic, ptr %dev_id, i32 0, i32 25, i32 %add75
  %71 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx82, align 4
  %tobool65.not = icmp eq ptr %72, null
  br i1 %tobool65.not, label %cond.end84.cleanup_crit_edge, label %cond.end84.for.body66_crit_edge

cond.end84.for.body66_crit_edge:                  ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body66

cond.end84.cleanup_crit_edge:                     ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %cond.end84.cleanup_crit_edge, %for.inc73.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then21
  %retval.0.shrunk = phi i1 [ true, %if.then21 ], [ true, %if.then27.cleanup_crit_edge ], [ %cmp51, %if.else.cleanup_crit_edge ], [ %cmp51, %if.then61.cleanup_crit_edge ], [ true, %if.then35.cleanup_crit_edge ], [ %cmp51, %cond.end84.cleanup_crit_edge ], [ %cmp51, %for.inc73.cleanup_crit_edge ], [ true, %cond.end.cleanup_crit_edge ], [ true, %if.end42.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_try_recovery(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_msi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %irq_status = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 71
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_status, align 8
  %irq_soft_enabled = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 70
  %4 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %irq_soft_enabled, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.efx_msi_context, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %irq_level = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 73
  %8 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_level, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then6, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then6:                                         ; preds = %if.end
  %arrayidx = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end16, label %if.then15, !prof !94

if.then15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @efx_farch_fatal_interrupt(ptr noundef %1)
  br label %cleanup

if.end16:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %last_irq_cpu = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 132
  %17 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_irq_cpu, align 16
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end.if.end18_crit_edge
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %arrayidx20 = getelementptr %struct.efx_nic, ptr %1, i32 0, i32 25, i32 %19
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20, align 4
  %22 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %event_test_cpu.i = getelementptr inbounds %struct.efx_channel, ptr %21, i32 0, i32 13
  %26 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %event_test_cpu.i, align 32
  %napi_str.i.i = getelementptr inbounds %struct.efx_channel, ptr %21, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #14
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.end18.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_rx_push_indir_table(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %do.body1.do.body1_crit_edge ]
  %arrayidx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 5, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %mul = shl nuw nsw i32 %i.010, 4
  %add = add nuw nsw i32 %mul, 16449536
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #14, !srcloc !91
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %do.body1.do.body1_crit_edge

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1

for.end:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_rx_pull_indir_table(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.06, 4
  %add = add nuw nsw i32 %mul, 16449536
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !90
  %3 = lshr i32 %2, 24
  %and = and i32 %3, 63
  %arrayidx1 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 5, i32 %i.06
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_dimension_resources(ptr noundef %efx, i32 noundef %sram_lim_qw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %n_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 46
  %0 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_tx_channels, align 8
  %n_extra_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 47
  %2 = ptrtoint ptr %n_extra_tx_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_extra_tx_channels, align 4
  %add = add i32 %3, %1
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %4 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels, align 8
  %mul = shl i32 %add, 2
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %mul)
  %nic_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %7 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nic_data1, align 8
  %n_rx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %9 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_rx_channels, align 4
  %mul2 = shl i32 %10, 12
  %reass.add = add i32 %5, %add
  %reass.mul = shl i32 %reass.add, 14
  %add8 = add i32 %mul2, %reass.mul
  %11 = lshr exact i32 %add8, 9
  %div87 = and i32 %11, 1048568
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %sriov_wanted = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 100
  %14 = ptrtoint ptr %sriov_wanted to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_wanted, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 %15(ptr noundef %efx) #14
  br i1 %call, label %if.then12, label %if.then.if.end43_crit_edge

if.then.if.end43_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then12:                                        ; preds = %if.then
  %vf_buftbl_base = getelementptr inbounds %struct.siena_nic_data, ptr %8, i32 0, i32 5
  %16 = ptrtoint ptr %vf_buftbl_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div87, ptr %vf_buftbl_base, align 8
  %17 = tail call i32 @llvm.umax.i32(i32 %6, i32 128)
  %mul19.neg = mul i32 %17, -80
  %sub = add i32 %mul19.neg, %sram_lim_qw
  %sub20 = sub i32 %sub, %div87
  %vi_scale.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 122
  %18 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vi_scale.i, align 8
  %mul23 = shl i32 112, %19
  %div24 = udiv i32 %sub20, %mul23
  %shr = lshr i32 896, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %div24, i32 %shr)
  %vf_count = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 120
  %21 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vf_count, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp31 = icmp ugt i32 %22, %20
  br i1 %cmp31, label %do.body, label %if.then12.if.end37_crit_edge

if.then12.if.end37_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.body:                                          ; preds = %if.then12
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body.do.end_crit_edge, label %if.then34

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %25 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.14, i32 noundef %22, i32 noundef %20) #17
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body.do.end_crit_edge
  %27 = ptrtoint ptr %vf_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %20, ptr %vf_count, align 16
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.then12.if.end37_crit_edge
  %28 = ptrtoint ptr %vf_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vf_count, align 16
  %30 = ptrtoint ptr %vi_scale.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vi_scale.i, align 8
  %mul40 = shl i32 %29, %31
  %add41 = add i32 %mul40, %17
  br label %if.end43

if.end43:                                         ; preds = %if.end37, %if.then.if.end43_crit_edge, %entry.if.end43_crit_edge
  %vi_count.0 = phi i32 [ %add41, %if.end37 ], [ %6, %if.then.if.end43_crit_edge ], [ %6, %entry.if.end43_crit_edge ]
  %mul44.neg = mul i32 %vi_count.0, -16
  %sub45 = add i32 %mul44.neg, %sram_lim_qw
  %tx_dc_base = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 35
  %32 = ptrtoint ptr %tx_dc_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub45, ptr %tx_dc_base, align 4
  %mul47.neg = mul i32 %vi_count.0, -64
  %sub48 = add i32 %sub45, %mul47.neg
  %rx_dc_base = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 36
  %33 = ptrtoint ptr %rx_dc_base to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub48, ptr %rx_dc_base, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_fpga_ver(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 768
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !90
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 772
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #14, !srcloc !90
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 776
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #14, !srcloc !90
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 780
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #14
  %12 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_init_common(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dc_base = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 35
  %0 = ptrtoint ptr %tx_dc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_dc_base, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #14, !srcloc !91
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %6, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #14, !srcloc !91
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %8, i32 1576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #14, !srcloc !91
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 1580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  %rx_dc_base = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 36
  %11 = ptrtoint ptr %rx_dc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_dc_base, align 16
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call3.i302 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i304 = getelementptr i8, ptr %15, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i304, i32 %13) #14, !srcloc !91
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i306 = getelementptr i8, ptr %17, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i306, i32 0) #14, !srcloc !91
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i308 = getelementptr i8, ptr %19, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i308, i32 0) #14, !srcloc !91
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i310 = getelementptr i8, ptr %21, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i310, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i302) #14
  %call3.i312 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i314 = getelementptr i8, ptr %23, i32 2592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i314, i32 16777216) #14, !srcloc !91
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i316 = getelementptr i8, ptr %25, i32 2596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i316, i32 0) #14, !srcloc !91
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i318 = getelementptr i8, ptr %27, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i318, i32 0) #14, !srcloc !91
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i320 = getelementptr i8, ptr %29, i32 2604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i320, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i312) #14
  %call3.i322 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i324 = getelementptr i8, ptr %31, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i324, i32 50331648) #14, !srcloc !91
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i326 = getelementptr i8, ptr %33, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i326, i32 0) #14, !srcloc !91
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i328 = getelementptr i8, ptr %35, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i328, i32 0) #14, !srcloc !91
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i330 = getelementptr i8, ptr %37, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i330, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i322) #14
  %call3.i332 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i334 = getelementptr i8, ptr %39, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i334, i32 939524096) #14, !srcloc !91
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i336 = getelementptr i8, ptr %41, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i336, i32 0) #14, !srcloc !91
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i338 = getelementptr i8, ptr %43, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i338, i32 0) #14, !srcloc !91
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i340 = getelementptr i8, ptr %45, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i340, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i332) #14
  %dma_addr = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 71, i32 1
  %46 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_addr, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %interrupt_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 15
  %49 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interrupt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp = icmp ult i32 %50, 2
  %51 = select i1 %cmp, i32 16777216, i32 0
  %call3.i342 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i344 = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i344, i32 %48) #14, !srcloc !91
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i346 = getelementptr i8, ptr %55, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i346, i32 0) #14, !srcloc !91
  %56 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i348 = getelementptr i8, ptr %57, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i348, i32 %51) #14, !srcloc !91
  %58 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i350 = getelementptr i8, ptr %59, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i350, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i342) #14
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %61, i32 0, i32 118
  %62 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp66 = icmp eq i32 %63, 3
  br i1 %cmp66, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %64 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %interrupt_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp69 = icmp ult i32 %65, 2
  br i1 %cmp69, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.do.body72_crit_edge

land.lhs.true.do.body72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body72

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %do.body72

do.body72:                                        ; preds = %if.else, %land.lhs.true.do.body72_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 31, %land.lhs.true.do.body72_crit_edge ]
  %irq_level = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 73
  %66 = ptrtoint ptr %irq_level to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink, ptr %irq_level, align 8
  %call3.i352 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i354 = getelementptr i8, ptr %68, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i354, i32 -1) #14, !srcloc !91
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i356 = getelementptr i8, ptr %70, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i356, i32 1039138815) #14, !srcloc !91
  %71 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i358 = getelementptr i8, ptr %72, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i358, i32 -1) #14, !srcloc !91
  %73 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i360 = getelementptr i8, ptr %74, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i360, i32 -1) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i352) #14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %75 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i363 = getelementptr i8, ptr %76, i32 2688
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i363) #14, !srcloc !90
  %78 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i364 = getelementptr i8, ptr %79, i32 2692
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i364) #14, !srcloc !90
  %81 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %82, i32 2696
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #14, !srcloc !90
  %84 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %85, i32 2700
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #14
  %and115 = and i32 %83, 16777213
  %or173 = or i32 %and115, -33554430
  %or184 = and i32 %77, 2147426560
  %or245 = or i32 %80, -15794166
  %or260 = or i32 %or184, -2147428609
  %call3.i367 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %87 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i369 = getelementptr i8, ptr %88, i32 2688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i369, i32 %or260) #14, !srcloc !91
  %89 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i371 = getelementptr i8, ptr %90, i32 2692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i371, i32 %or245) #14, !srcloc !91
  %91 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i373 = getelementptr i8, ptr %92, i32 2696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i373, i32 %or173) #14, !srcloc !91
  %93 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i375 = getelementptr i8, ptr %94, i32 2700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i375, i32 %86) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i367) #14
  %call3.i377 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %95 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i379 = getelementptr i8, ptr %96, i32 2704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i379, i32 353806336) #14, !srcloc !91
  %97 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i381 = getelementptr i8, ptr %98, i32 2708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i381, i32 0) #14, !srcloc !91
  %99 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i383 = getelementptr i8, ptr %100, i32 2712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i383, i32 0) #14, !srcloc !91
  %101 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i385 = getelementptr i8, ptr %102, i32 2716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i385, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i377) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_get_rx_id_limit(ptr nocapture noundef readonly %efx) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.cond, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %do.cond.3.if.then_crit_edge, %do.cond.2.if.then_crit_edge, %do.cond.1.if.then_crit_edge, %do.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %range.0.lcssa = phi i32 [ 32768, %entry.if.then_crit_edge ], [ 24576, %do.cond.if.then_crit_edge ], [ 16384, %do.cond.1.if.then_crit_edge ], [ 8192, %do.cond.2.if.then_crit_edge ], [ 0, %do.cond.3.if.then_crit_edge ]
  %.lcssa = phi i32 [ %3, %entry.if.then_crit_edge ], [ %5, %do.cond.if.then_crit_edge ], [ %7, %do.cond.1.if.then_crit_edge ], [ %9, %do.cond.2.if.then_crit_edge ], [ %11, %do.cond.3.if.then_crit_edge ]
  %or = or i32 %.lcssa, %range.0.lcssa
  br label %cleanup

do.cond:                                          ; preds = %entry
  %size.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.1 = icmp eq i32 %5, 0
  br i1 %cmp.not.1, label %do.cond.1, label %do.cond.if.then_crit_edge

do.cond.if.then_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.cond.1:                                        ; preds = %do.cond
  %6 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.2 = icmp eq i32 %7, 0
  br i1 %cmp.not.2, label %do.cond.2, label %do.cond.1.if.then_crit_edge

do.cond.1.if.then_crit_edge:                      ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.cond.2:                                        ; preds = %do.cond.1
  %size.3 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.3 = icmp eq i32 %9, 0
  br i1 %cmp.not.3, label %do.cond.3, label %do.cond.2.if.then_crit_edge

do.cond.2.if.then_crit_edge:                      ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.cond.3:                                        ; preds = %do.cond.2
  %10 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.4 = icmp eq i32 %11, 0
  br i1 %cmp.not.4, label %do.cond.3.cleanup_crit_edge, label %do.cond.3.if.then_crit_edge

do.cond.3.if.then_crit_edge:                      ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.cond.3.cleanup_crit_edge:                      ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %do.cond.3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %or, %if.then ], [ 0, %do.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_insert(ptr noundef %efx, ptr noundef readonly %gen_spec, i1 noundef zeroext %replace_equal) local_unnamed_addr #0 align 64 {
entry:
  %spec = alloca %struct.efx_farch_filter_spec, align 4
  %filter = alloca %union.efx_oword, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %spec) #14
  %2 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 1
  %3 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 2
  %4 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3
  %5 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %7 = call ptr @memset(ptr %spec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #14
  %8 = getelementptr inbounds [2 x i64], ptr %filter, i32 0, i32 1
  %9 = call ptr @memset(ptr %filter, i32 255, i32 16)
  %10 = ptrtoint ptr %gen_spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %gen_spec, align 4
  %11 = and i32 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %rss_context.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 1
  %12 = ptrtoint ptr %rss_context.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rss_context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup154_crit_edge

land.lhs.true.i.cleanup154_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup154

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %bf.lshr3.i = lshr i32 %bf.load.i, 18
  %14 = trunc i32 %bf.lshr3.i to i8
  %conv.i = and i8 %14, 3
  %bf.lshr8.i = lshr i32 %bf.load.i, 12
  %15 = trunc i32 %bf.lshr8.i to i8
  %conv10.i = and i8 %15, 63
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10.i, ptr %2, align 1
  %17 = trunc i32 %bf.load.i to i16
  %conv13.i = and i16 %17, 4095
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv13.i, ptr %3, align 2
  %bf.lshr15.i = lshr i32 %bf.load.i, 20
  %19 = zext i32 %bf.lshr15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %bf.lshr15.i, label %if.end.i.cleanup154_crit_edge [
    i32 619, label %sw.bb.i
    i32 610, label %if.end.i.sw.bb16.i_crit_edge
    i32 272, label %sw.bb88.i
    i32 16, label %cond.end104.critedge.i
    i32 1024, label %sw.bb137.i
  ]

if.end.i.sw.bb16.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i

if.end.i.cleanup154_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup154

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16.i

sw.bb16.i:                                        ; preds = %sw.bb.i, %if.end.i.sw.bb16.i_crit_edge
  %is_full.0.off0.i = phi i1 [ false, %if.end.i.sw.bb16.i_crit_edge ], [ true, %sw.bb.i ]
  %ether_type.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 6
  %20 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ether_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %cmp.not.i = icmp eq i16 %21, 2048
  br i1 %cmp.not.i, label %if.end20.i, label %sw.bb16.i.cleanup154_crit_edge

sw.bb16.i.cleanup154_crit_edge:                   ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup154

if.end20.i:                                       ; preds = %sw.bb16.i
  %loc_port.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 10
  %22 = ptrtoint ptr %loc_port.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %loc_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp22.i = icmp eq i16 %23, 0
  br i1 %cmp22.i, label %if.end20.i.cleanup154_crit_edge, label %lor.lhs.false.i

if.end20.i.cleanup154_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup154

lor.lhs.false.i:                                  ; preds = %if.end20.i
  br i1 %is_full.0.off0.i, label %land.lhs.true26.i, label %lor.lhs.false.i.if.end31.i_crit_edge

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

land.lhs.true26.i:                                ; preds = %lor.lhs.false.i
  %rem_port.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 11
  %24 = ptrtoint ptr %rem_port.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rem_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp28.i = icmp eq i16 %25, 0
  br i1 %cmp28.i, label %land.lhs.true26.i.cleanup154_crit_edge, label %land.lhs.true26.i.if.end31.i_crit_edge

land.lhs.true26.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

land.lhs.true26.i.cleanup154_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup154

if.end31.i:                                       ; preds = %land.lhs.true26.i.if.end31.i_crit_edge, %lor.lhs.false.i.if.end31.i_crit_edge
  %ip_proto.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 7
  %26 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ip_proto.i, align 2
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %27, label %if.end31.i.cleanup154_crit_edge [
    i8 6, label %sw.epilog.i.thread
    i8 17, label %sw.epilog.i
  ]

if.end31.i.cleanup154_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup154

sw.epilog.i:                                      ; preds = %if.end31.i
  %conv45.i = select i1 %is_full.0.off0.i, i8 32, i8 48
  %storemerge.i = or i8 %conv45.i, %conv.i
  %29 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %storemerge.i, ptr %spec, align 4
  br i1 %is_full.0.off0.i, label %sw.epilog.i.cond.end60.thread.i_crit_edge, label %sw.epilog.i.cleanup.i_crit_edge

sw.epilog.i.cleanup.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

sw.epilog.i.cond.end60.thread.i_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end60.thread.i

sw.epilog.i.thread:                               ; preds = %if.end31.i
  %bf.shl.i = select i1 %is_full.0.off0.i, i8 0, i8 16
  %storemerge.i247 = or i8 %bf.shl.i, %conv.i
  %30 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge.i247, ptr %spec, align 4
  br i1 %is_full.0.off0.i, label %sw.epilog.i.thread.cond.end60.thread.i_crit_edge, label %sw.epilog.i.thread.if.else.i_crit_edge

sw.epilog.i.thread.if.else.i_crit_edge:           ; preds = %sw.epilog.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

sw.epilog.i.thread.cond.end60.thread.i_crit_edge: ; preds = %sw.epilog.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end60.thread.i

cond.end60.thread.i:                              ; preds = %sw.epilog.i.thread.cond.end60.thread.i_crit_edge, %sw.epilog.i.cond.end60.thread.i_crit_edge
  %rem_host.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 9
  %31 = ptrtoint ptr %rem_host.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rem_host.i, align 4
  %rem_port57.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 11
  %33 = ptrtoint ptr %rem_port57.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rem_port57.i, align 2
  br label %if.else.i

if.else.i:                                        ; preds = %cond.end60.thread.i, %sw.epilog.i.thread.if.else.i_crit_edge
  %cond61206.i = phi i16 [ %34, %cond.end60.thread.i ], [ 0, %sw.epilog.i.thread.if.else.i_crit_edge ]
  %cond53199205.i = phi i32 [ %32, %cond.end60.thread.i ], [ 0, %sw.epilog.i.thread.if.else.i_crit_edge ]
  %phi.cast.i = zext i16 %23 to i32
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %sw.epilog.i.cleanup.i_crit_edge
  %cond53199204.i = phi i32 [ %cond53199205.i, %if.else.i ], [ 0, %sw.epilog.i.cleanup.i_crit_edge ]
  %port1.0.i = phi i16 [ %cond61206.i, %if.else.i ], [ %23, %sw.epilog.i.cleanup.i_crit_edge ]
  %port2.0.i = phi i32 [ %phi.cast.i, %if.else.i ], [ 0, %sw.epilog.i.cleanup.i_crit_edge ]
  %.in = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 8
  %35 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %.in, align 4
  %shl.i221 = shl i32 %cond53199204.i, 16
  %conv74.i = zext i16 %port1.0.i to i32
  %or.i222 = or i32 %shl.i221, %conv74.i
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i222, ptr %4, align 4
  %or78.i = tail call i32 @llvm.fshl.i32(i32 %port2.0.i, i32 %cond53199204.i, i32 16) #14
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or78.i, ptr %5, align 4
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %6, align 4
  br label %if.end

sw.bb88.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set98.i = or i8 %conv.i, 64
  %40 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.set98.i, ptr %spec, align 4
  %outer_vid.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 2
  %41 = ptrtoint ptr %outer_vid.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %outer_vid.i, align 4
  %conv102.i = zext i16 %42 to i32
  br label %cond.end104.i

cond.end104.critedge.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set98.c.i = or i8 %conv.i, 80
  %43 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.set98.c.i, ptr %spec, align 4
  br label %cond.end104.i

cond.end104.i:                                    ; preds = %cond.end104.critedge.i, %sw.bb88.i
  %cond105.i = phi i32 [ %conv102.i, %sw.bb88.i ], [ 0, %cond.end104.critedge.i ]
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond105.i, ptr %4, align 4
  %loc_mac.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4
  %arrayidx108.i = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx108.i, align 2
  %conv109.i = zext i8 %46 to i32
  %shl110.i = shl nuw i32 %conv109.i, 24
  %arrayidx112.i = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx112.i, align 1
  %conv113.i = zext i8 %48 to i32
  %shl114.i = shl nuw nsw i32 %conv113.i, 16
  %or115.i = or i32 %shl114.i, %shl110.i
  %arrayidx117.i = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx117.i, align 4
  %conv118.i = zext i8 %50 to i32
  %shl119.i = shl nuw nsw i32 %conv118.i, 8
  %or120.i = or i32 %or115.i, %shl119.i
  %arrayidx122.i = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 5
  %51 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx122.i, align 1
  %conv123.i = zext i8 %52 to i32
  %or124.i = or i32 %or120.i, %conv123.i
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or124.i, ptr %5, align 4
  %54 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %loc_mac.i, align 4
  %conv129.i = zext i8 %55 to i32
  %shl130.i = shl nuw nsw i32 %conv129.i, 8
  %arrayidx132.i = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx132.i, align 1
  %conv133.i = zext i8 %57 to i32
  %or134.i = or i32 %shl130.i, %conv133.i
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or134.i, ptr %6, align 4
  br label %if.end

sw.bb137.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %loc_mac138.i = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4
  %59 = ptrtoint ptr %loc_mac138.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %loc_mac138.i, align 4
  %61 = and i32 %60, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not.i = icmp eq i32 %61, 0
  %conv141.i = select i1 %tobool.i.not.i, i8 -128, i8 -112
  %bf.set146.i = or i8 %conv141.i, %conv.i
  %62 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %bf.set146.i, ptr %spec, align 4
  %63 = call ptr @memset(ptr %4, i32 0, i32 12)
  br label %if.end

if.end:                                           ; preds = %sw.bb137.i, %cond.end104.i, %cleanup.i
  tail call void @down_write(ptr noundef %1) #14
  %64 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i223 = load i8, ptr %spec, align 4
  %bf.lshr.i = lshr i8 %bf.load.i223, 6
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %2, align 1
  %67 = lshr i8 %66, 3
  %68 = and i8 %67, 2
  %narrow.i = add nuw nsw i8 %68, %bf.lshr.i
  %add.i = zext i8 %narrow.i to i32
  %arrayidx = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 2
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp = icmp eq i32 %70, 0
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp5 = icmp eq i32 %72, 2
  br i1 %cmp5, label %do.end9, label %if.else

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %bf.lshr = lshr i8 %bf.load.i223, 4
  %conv = zext i8 %bf.lshr to i32
  %sub = add nsw i32 %conv, -8
  br label %if.end62

if.else:                                          ; preds = %if.end4
  %call10 = call fastcc i32 @efx_farch_filter_build(ptr noundef nonnull %filter, ptr noundef nonnull %spec)
  %shr.i225 = lshr i32 %call10, 16
  %conv.i226 = xor i32 %shr.i225, 8191
  %73 = lshr i32 %conv.i226, 3
  %xor4.i = xor i32 %73, %conv.i226
  %74 = lshr i32 %conv.i226, 6
  %xor7.i = xor i32 %xor4.i, %74
  %75 = lshr i32 %xor7.i, 9
  %.masked.i = and i32 %75, 65535
  %conv14.i = xor i32 %.masked.i, %xor7.i
  %shl.i227 = shl nuw nsw i32 %conv14.i, 13
  %xor16.i = xor i32 %conv14.i, %call10
  %xor17.i = xor i32 %xor16.i, %shl.i227
  %conv19.i = and i32 %xor17.i, 65535
  %76 = lshr i32 %conv19.i, 3
  %77 = lshr i32 %conv19.i, 6
  %xor22.masked.i = xor i32 %76, %conv19.i
  %conv27.i = xor i32 %xor22.masked.i, %77
  %78 = lshr i32 %conv27.i, 9
  %xor30.i = xor i32 %78, %conv27.i
  %79 = shl i32 %call10, 1
  %conv.i228 = add i32 %79, 65535
  %conv14 = and i32 %conv.i228, 65535
  %80 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load15 = load i8, ptr %spec, align 4
  %bf.lshr16 = lshr i8 %bf.load15, 4
  %idxprom = zext i8 %bf.lshr16 to i32
  %arrayidx17 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 7, i32 %idxprom
  %81 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx17, align 4
  %bf.clear = and i8 %bf.load15, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp20 = icmp eq i8 %bf.clear, 0
  %cond = select i1 %cmp20, i32 5, i32 200
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size, align 4
  %sub23 = add i32 %84, 65535
  %and = and i32 %xor30.i, %sub23
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 5
  %85 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %used_bitmap, align 4
  %spec32 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 6
  %sub55 = add i32 %84, -1
  br label %for.cond

for.cond:                                         ; preds = %if.end53, %if.else
  %ins_index.0 = phi i32 [ -1, %if.else ], [ %ins_index.2, %if.end53 ]
  %depth.0 = phi i32 [ 1, %if.else ], [ %inc, %if.end53 ]
  %i.0 = phi i32 [ %and, %if.else ], [ %and56, %if.end53 ]
  %div3.i = lshr i32 %i.0, 5
  %arrayidx.i = getelementptr i32, ptr %86, i32 %div3.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0, 31
  %89 = shl nuw i32 1, %and.i
  %90 = and i32 %88, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool25.not = icmp eq i32 %90, 0
  br i1 %tobool25.not, label %if.then26, label %if.else31

if.then26:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.0)
  %cmp27 = icmp slt i32 %ins_index.0, 0
  %spec.select = select i1 %cmp27, i32 %i.0, i32 %ins_index.0
  br label %if.end41

if.else31:                                        ; preds = %for.cond
  %91 = ptrtoint ptr %spec32 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spec32, align 4
  %arrayidx33 = getelementptr %struct.efx_farch_filter_spec, ptr %92, i32 %i.0
  %93 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load1.i = load i8, ptr %arrayidx33, align 4
  %cmp.not.unshifted.i = xor i8 %bf.load1.i, %bf.load15
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cmp.not.unshifted.i)
  %cmp.not.i230 = icmp ult i8 %cmp.not.unshifted.i, 16
  br i1 %cmp.not.i230, label %lor.lhs.false.i233, label %if.else31.if.end41_crit_edge

if.else31.if.end41_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

lor.lhs.false.i233:                               ; preds = %if.else31
  %data5.i = getelementptr %struct.efx_farch_filter_spec, ptr %92, i32 %i.0, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(12) %4, ptr noundef dereferenceable(12) %data5.i, i32 12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i232 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i232, label %if.end.i235, label %lor.lhs.false.i233.if.end41_crit_edge

lor.lhs.false.i233.if.end41_crit_edge:            ; preds = %lor.lhs.false.i233
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.end.i235:                                      ; preds = %lor.lhs.false.i233
  %94 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %2, align 1
  %96 = and i8 %95, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool8.not.i = icmp eq i8 %96, 0
  br i1 %tobool8.not.i, label %if.end.i235.if.then35_crit_edge, label %land.lhs.true.i237

if.end.i235.if.then35_crit_edge:                  ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

land.lhs.true.i237:                               ; preds = %if.end.i235
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %3, align 2
  %dmaq_id10.i = getelementptr %struct.efx_farch_filter_spec, ptr %92, i32 %i.0, i32 2
  %99 = ptrtoint ptr %dmaq_id10.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %dmaq_id10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp12.not.i = icmp eq i16 %98, %100
  br i1 %cmp12.not.i, label %land.lhs.true.i237.if.then35_crit_edge, label %land.lhs.true.i237.if.end41_crit_edge

land.lhs.true.i237.if.end41_crit_edge:            ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

land.lhs.true.i237.if.then35_crit_edge:           ; preds = %land.lhs.true.i237
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.then35:                                        ; preds = %land.lhs.true.i237.if.then35_crit_edge, %if.end.i235.if.then35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.0)
  %cmp36 = icmp slt i32 %ins_index.0, 0
  %spec.select216 = select i1 %cmp36, i32 %i.0, i32 %ins_index.0
  br label %if.end62

if.end41:                                         ; preds = %land.lhs.true.i237.if.end41_crit_edge, %lor.lhs.false.i233.if.end41_crit_edge, %if.else31.if.end41_crit_edge, %if.then26
  %ins_index.2 = phi i32 [ %spec.select, %if.then26 ], [ %ins_index.0, %lor.lhs.false.i233.if.end41_crit_edge ], [ %ins_index.0, %if.else31.if.end41_crit_edge ], [ %ins_index.0, %land.lhs.true.i237.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0, i32 %82)
  %cmp42.not = icmp ult i32 %depth.0, %82
  br i1 %cmp42.not, label %if.end41.if.end53_crit_edge, label %land.lhs.true

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.2)
  %cmp44 = icmp slt i32 %ins_index.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0, i32 %cond)
  %cmp46.not = icmp ult i32 %depth.0, %cond
  %or.cond = select i1 %cmp44, i1 %cmp46.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end53_crit_edge, label %if.then48

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then48:                                        ; preds = %land.lhs.true
  br i1 %cmp44, label %if.then48.out_unlock_crit_edge, label %if.then48.if.then110_crit_edge

if.then48.if.then110_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

if.then48.out_unlock_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end41.if.end53_crit_edge
  %add = add i32 %i.0, %conv14
  %and56 = and i32 %add, %sub55
  %inc = add nuw i32 %depth.0, 1
  br label %for.cond

if.end62:                                         ; preds = %if.then35, %do.end9
  %ins_index.5 = phi i32 [ %sub, %do.end9 ], [ %spec.select216, %if.then35 ]
  %depth.1 = phi i32 [ 0, %do.end9 ], [ %depth.0, %if.then35 ]
  %rep_index.2 = phi i32 [ %sub, %do.end9 ], [ %i.0, %if.then35 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rep_index.2)
  %cmp63 = icmp sgt i32 %rep_index.2, -1
  br i1 %cmp63, label %if.then65, label %if.end62.if.end107_crit_edge

if.end62.if.end107_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then65:                                        ; preds = %if.end62
  %spec66 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 6
  %101 = ptrtoint ptr %spec66 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %spec66, align 4
  %arrayidx67 = getelementptr %struct.efx_farch_filter_spec, ptr %102, i32 %rep_index.2
  %103 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load68 = load i8, ptr %spec, align 4
  %104 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load71 = load i8, ptr %arrayidx67, align 4
  %105 = xor i8 %bf.load71, %bf.load68
  %106 = and i8 %105, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp74 = icmp ne i8 %106, 0
  %brmerge = or i1 %cmp74, %replace_equal
  br i1 %brmerge, label %if.end79, label %if.then65.out_unlock_crit_edge

if.then65.out_unlock_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end79:                                         ; preds = %if.then65
  %bf.clear81 = and i8 %bf.load68, 15
  %bf.clear84 = and i8 %bf.load71, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear81, i8 %bf.clear84)
  %cmp86 = icmp ult i8 %bf.clear81, %bf.clear84
  br i1 %cmp86, label %if.end79.out_unlock_crit_edge, label %if.end89

if.end79.out_unlock_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end89:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear84)
  %cmp93 = icmp eq i8 %bf.clear84, 1
  br i1 %cmp93, label %if.end89.if.then99_crit_edge, label %lor.lhs.false95

if.end89.if.then99_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

lor.lhs.false95:                                  ; preds = %if.end89
  %flags = getelementptr %struct.efx_farch_filter_spec, ptr %102, i32 %rep_index.2, i32 1
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %flags, align 1
  %109 = and i8 %108, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool98.not = icmp eq i8 %109, 0
  br i1 %tobool98.not, label %lor.lhs.false95.if.end107_crit_edge, label %lor.lhs.false95.if.then99_crit_edge

lor.lhs.false95.if.then99_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then99

lor.lhs.false95.if.end107_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then99:                                        ; preds = %lor.lhs.false95.if.then99_crit_edge, %if.end89.if.then99_crit_edge
  %110 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %2, align 1
  %112 = or i8 %111, 4
  store i8 %112, ptr %2, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then99, %lor.lhs.false95.if.end107_crit_edge, %if.end62.if.end107_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %ins_index.5, i32 %rep_index.2)
  %cmp108.not = icmp eq i32 %ins_index.5, %rep_index.2
  br i1 %cmp108.not, label %if.end107.if.end113_crit_edge, label %if.end107.if.then110_crit_edge

if.end107.if.then110_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then110:                                       ; preds = %if.end107.if.then110_crit_edge, %if.then48.if.then110_crit_edge
  %ins_index.5265281 = phi i32 [ %ins_index.5, %if.end107.if.then110_crit_edge ], [ %ins_index.2, %if.then48.if.then110_crit_edge ]
  %depth.1267279 = phi i32 [ %depth.1, %if.end107.if.then110_crit_edge ], [ %depth.0, %if.then48.if.then110_crit_edge ]
  %rep_index.2268277 = phi i32 [ %rep_index.2, %if.end107.if.then110_crit_edge ], [ -1, %if.then48.if.then110_crit_edge ]
  %cmp63269275 = phi i1 [ %cmp63, %if.end107.if.then110_crit_edge ], [ false, %if.then48.if.then110_crit_edge ]
  %used_bitmap111 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 5
  %113 = ptrtoint ptr %used_bitmap111 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %used_bitmap111, align 4
  %rem.i = and i32 %ins_index.5265281, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %ins_index.5265281, 5
  %add.ptr.i = getelementptr i32, ptr %114, i32 %div2.i
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %116, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %used = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 4
  %117 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %used, align 4
  %inc112 = add i32 %118, 1
  store i32 %inc112, ptr %used, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %cmp108.not284 = phi i1 [ false, %if.then110 ], [ true, %if.end107.if.end113_crit_edge ]
  %ins_index.5265282 = phi i32 [ %ins_index.5265281, %if.then110 ], [ %ins_index.5, %if.end107.if.end113_crit_edge ]
  %depth.1267280 = phi i32 [ %depth.1267279, %if.then110 ], [ %depth.1, %if.end107.if.end113_crit_edge ]
  %rep_index.2268278 = phi i32 [ %rep_index.2268277, %if.then110 ], [ %ins_index.5, %if.end107.if.end113_crit_edge ]
  %cmp63269276 = phi i1 [ %cmp63269275, %if.then110 ], [ %cmp63, %if.end107.if.end113_crit_edge ]
  %spec114 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 6
  %119 = ptrtoint ptr %spec114 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %spec114, align 4
  %arrayidx115 = getelementptr %struct.efx_farch_filter_spec, ptr %120, i32 %ins_index.5265282
  %121 = call ptr @memcpy(ptr %arrayidx115, ptr %spec, i32 16)
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp117 = icmp eq i32 %123, 2
  br i1 %cmp117, label %if.then119, label %if.else120

if.then119:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx)
  br label %if.end150

if.else120:                                       ; preds = %if.end113
  %124 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load122 = load i8, ptr %spec, align 4
  %bf.lshr123 = lshr i8 %bf.load122, 4
  %idxprom124 = zext i8 %bf.lshr123 to i32
  %arrayidx125 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 7, i32 %idxprom124
  %125 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %depth.1267280)
  %cmp126 = icmp ult i32 %126, %depth.1267280
  br i1 %cmp126, label %if.then128, label %if.else120.if.end141_crit_edge

if.else120.if.end141_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then128:                                       ; preds = %if.else120
  %127 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %depth.1267280, ptr %arrayidx125, align 4
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %2, align 1
  %130 = and i8 %129, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool137.not = icmp eq i8 %130, 0
  br i1 %tobool137.not, label %if.else139, label %if.then138

if.then138:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @efx_farch_filter_push_tx_limits(ptr noundef %efx)
  br label %if.end141

if.else139:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx)
  br label %if.end141

if.end141:                                        ; preds = %if.else139, %if.then138, %if.else120.if.end141_crit_edge
  %offset = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 1
  %131 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %offset, align 4
  %step = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %add.i, i32 3
  %133 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %step, align 4
  %mul = mul i32 %134, %ins_index.5265282
  %add142 = add i32 %mul, %132
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %135 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %filter, align 8
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %137 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %138, i32 %add142
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %136) #14, !srcloc !91
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 1
  %139 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add142, 4
  %141 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %142, i32 %add7.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %140) #14, !srcloc !91
  %143 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %8, align 8
  %add9.i = add i32 %add142, 8
  %145 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %146, i32 %add9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %144) #14, !srcloc !91
  %arrayidx10.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 3
  %147 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add142, 12
  %149 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %150, i32 %add11.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %148) #14, !srcloc !91
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  %cmp63.not = xor i1 %cmp63269276, true
  %brmerge220 = or i1 %cmp108.not284, %cmp63.not
  br i1 %brmerge220, label %if.end141.if.end150_crit_edge, label %if.then148

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

if.then148:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @efx_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %arrayidx, i32 noundef %rep_index.2268278)
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end141.if.end150_crit_edge, %if.then119
  %151 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load.i238 = load i8, ptr %spec, align 4
  %bf.lshr.i239 = lshr i8 %bf.load.i238, 4
  %idxprom.i = zext i8 %bf.lshr.i239 to i32
  %arrayidx.i240 = getelementptr [10 x i8], ptr @efx_farch_filter_type_match_pri, i32 0, i32 %idxprom.i
  %152 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.i240, align 1
  %conv.i241 = zext i8 %153 to i32
  %154 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %2, align 1
  %156 = and i8 %155, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i243 = icmp eq i8 %156, 0
  %157 = shl nuw nsw i32 %conv.i241, 13
  %158 = add nuw nsw i32 %157, 40960
  %shl.i244 = select i1 %tobool.not.i243, i32 %158, i32 %157
  %or.i245 = or i32 %shl.i244, %ins_index.5265282
  br label %out_unlock

out_unlock:                                       ; preds = %if.end150, %if.end79.out_unlock_crit_edge, %if.then65.out_unlock_crit_edge, %if.then48.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %rc.3 = phi i32 [ %or.i245, %if.end150 ], [ -22, %if.end.out_unlock_crit_edge ], [ -16, %if.then48.out_unlock_crit_edge ], [ -17, %if.then65.out_unlock_crit_edge ], [ -1, %if.end79.out_unlock_crit_edge ]
  call void @up_write(ptr noundef %1) #14
  br label %cleanup154

cleanup154:                                       ; preds = %out_unlock, %if.end31.i.cleanup154_crit_edge, %land.lhs.true26.i.cleanup154_crit_edge, %if.end20.i.cleanup154_crit_edge, %sw.bb16.i.cleanup154_crit_edge, %if.end.i.cleanup154_crit_edge, %land.lhs.true.i.cleanup154_crit_edge
  %retval.0 = phi i32 [ %rc.3, %out_unlock ], [ -93, %sw.bb16.i.cleanup154_crit_edge ], [ -99, %land.lhs.true26.i.cleanup154_crit_edge ], [ -99, %if.end20.i.cleanup154_crit_edge ], [ -93, %if.end31.i.cleanup154_crit_edge ], [ -93, %if.end.i.cleanup154_crit_edge ], [ -22, %land.lhs.true.i.cleanup154_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spec) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_farch_filter_build(ptr nocapture noundef writeonly %filter, ptr noundef readonly %spec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %spec, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %flags.i = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 1
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags.i, align 1
  %3 = lshr i8 %2, 3
  %4 = and i8 %3, 2
  %narrow.i = add nuw nsw i8 %4, %bf.lshr.i
  %add.i = zext i8 %narrow.i to i32
  %5 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %add.i, label %do.body203 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
    i32 3, label %sw.bb139
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = and i8 %bf.load.i, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %6)
  %7 = icmp eq i8 %6, 32
  %8 = zext i1 %7 to i32
  %data = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %filter, align 8
  %arrayidx11 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx17 = getelementptr [4 x i32], ptr %filter, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx26 = getelementptr [4 x i32], ptr %filter, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx26, align 8
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i, align 1
  %trunc261 = zext i8 %22 to i15
  %rev262 = tail call i15 @llvm.bitreverse.i15(i15 %trunc261)
  %mask263 = and i15 %rev262, -8192
  %or41 = zext i15 %mask263 to i32
  %shl44 = select i1 %7, i32 4096, i32 0
  %dmaq_id = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 2
  %23 = ptrtoint ptr %dmaq_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dmaq_id, align 2
  %conv49 = zext i16 %24 to i32
  %or46 = or i32 %shl44, %conv49
  %or50 = or i32 %or46, %or41
  %25 = tail call i32 @llvm.bswap.i32(i32 %or50)
  %arrayidx55 = getelementptr [4 x i32], ptr %filter, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx55, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bf.lshr60.mask = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %bf.lshr60.mask)
  %cmp62 = icmp eq i8 %bf.lshr60.mask, 80
  %data66 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3
  %arrayidx67 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx67, align 4
  %shl68 = shl i32 %28, 12
  %29 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data66, align 4
  %or75260 = or i32 %shl68, %30
  %31 = tail call i32 @llvm.bswap.i32(i32 %or75260)
  %32 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %filter, align 8
  %dmaq_id78 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 2
  %33 = ptrtoint ptr %dmaq_id78 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dmaq_id78, align 2
  %conv79 = zext i16 %34 to i32
  %shl80 = shl i32 %conv79, 29
  %conv84 = zext i1 %cmp62 to i32
  %conv86 = select i1 %cmp62, i32 268435456, i32 0
  %or87 = or i32 %shl80, %conv86
  %arrayidx89 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx89, align 4
  %shl90 = shl i32 %36, 12
  %or92 = or i32 %or87, %shl90
  %37 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx67, align 4
  %shr95 = lshr i32 %38, 20
  %or97 = or i32 %or92, %shr95
  %39 = tail call i32 @llvm.bswap.i32(i32 %or97)
  %arrayidx100 = getelementptr [4 x i32], ptr %filter, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx100, align 4
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.i, align 1
  %trunc = zext i8 %42 to i12
  %rev = tail call i12 @llvm.bitreverse.i12(i12 %trunc)
  %mask = and i12 %rev, -1024
  %or122 = zext i12 %mask to i32
  %43 = ptrtoint ptr %dmaq_id78 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dmaq_id78, align 2
  %45 = lshr i16 %44, 3
  %conv126 = zext i16 %45 to i32
  %or127 = or i32 %or122, %conv126
  %46 = tail call i32 @llvm.bswap.i32(i32 %or127)
  %arrayidx133 = getelementptr [4 x i32], ptr %filter, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx133, align 8
  %arrayidx134 = getelementptr [4 x i32], ptr %filter, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx134, align 4
  br label %sw.epilog

sw.bb139:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bf.lshr142.mask = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %bf.lshr142.mask)
  %cmp144 = icmp eq i8 %bf.lshr142.mask, 80
  %data148 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3
  %arrayidx149 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx149, align 4
  %shl150 = shl i32 %50, 12
  %51 = ptrtoint ptr %data148 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data148, align 4
  %or157259 = or i32 %shl150, %52
  %53 = tail call i32 @llvm.bswap.i32(i32 %or157259)
  %54 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %filter, align 8
  %dmaq_id160 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 2
  %55 = ptrtoint ptr %dmaq_id160 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %dmaq_id160, align 2
  %conv161 = zext i16 %56 to i32
  %shl162 = shl i32 %conv161, 29
  %conv166 = zext i1 %cmp144 to i32
  %conv168 = select i1 %cmp144, i32 268435456, i32 0
  %or169 = or i32 %shl162, %conv168
  %arrayidx171 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %57 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx171, align 4
  %shl172 = shl i32 %58, 12
  %or174 = or i32 %or169, %shl172
  %59 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx149, align 4
  %shr177 = lshr i32 %60, 20
  %or179 = or i32 %or174, %shr177
  %61 = tail call i32 @llvm.bswap.i32(i32 %or179)
  %arrayidx182 = getelementptr [4 x i32], ptr %filter, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx182, align 4
  %63 = ptrtoint ptr %dmaq_id160 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dmaq_id160, align 2
  %65 = lshr i16 %64, 3
  %shr185 = zext i16 %65 to i32
  %66 = tail call i32 @llvm.bswap.i32(i32 %shr185)
  %arrayidx193 = getelementptr [4 x i32], ptr %filter, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx193, align 8
  %arrayidx194 = getelementptr [4 x i32], ptr %filter, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx194, align 4
  %69 = ptrtoint ptr %dmaq_id160 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %dmaq_id160, align 2
  %conv200 = zext i16 %70 to i32
  %shl201 = shl nuw nsw i32 %conv200, 1
  %or202 = or i32 %shl201, %conv166
  br label %sw.epilog

do.body203:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2285, 0\0A.popsection", ""() #14, !srcloc !109
  unreachable

sw.epilog:                                        ; preds = %sw.bb139, %sw.bb58, %sw.bb
  %data3.0 = phi i32 [ %or202, %sw.bb139 ], [ %conv84, %sw.bb58 ], [ %8, %sw.bb ]
  %data209 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3
  %71 = ptrtoint ptr %data209 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data209, align 4
  %arrayidx212 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx212, align 4
  %arrayidx214 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx214, align 4
  %xor = xor i32 %72, %data3.0
  %xor215 = xor i32 %xor, %74
  %xor216 = xor i32 %xor215, %76
  ret i32 %xor216
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2064
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !90
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %6, i32 2068
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #14, !srcloc !90
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 2072
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #14, !srcloc !90
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %12, i32 2076
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #14
  %search_limit = getelementptr inbounds %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 7
  %14 = ptrtoint ptr %search_limit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %search_limit, align 4
  %arrayidx22 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx22, align 4
  %and48 = and i32 %7, 16777215
  %arrayidx50 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %19, 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %add51)
  %or55 = or i32 %20, %and48
  %arrayidx71 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx71, align 4
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body94:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and104 = and i32 %10, -49408
  %arrayidx106 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 7, i32 4
  %25 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx106, align 4
  %add107 = shl i32 %26, 22
  %shl108 = add i32 %add107, 4194304
  %27 = and i32 %shl108, 1069547520
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and129 = or i32 %28, %and104
  %arrayidx131 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 7, i32 5
  %29 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx131, align 4
  %add132 = shl i32 %30, 30
  %shl133 = add i32 %add132, -1073741824
  %31 = lshr exact i32 %shl133, 24
  %or136 = or i32 %and129, %31
  %and139 = and i32 %13, -1056964609
  %add142 = add i32 %30, 3
  %shr143 = lshr i32 %add142, 2
  %32 = tail call i32 @llvm.bswap.i32(i32 %shr143)
  %or146 = or i32 %32, %and139
  br label %if.end

if.end:                                           ; preds = %do.body94, %entry.if.end_crit_edge
  %filter_ctl.sroa.23.0.off0 = phi i32 [ %13, %entry.if.end_crit_edge ], [ %or146, %do.body94 ]
  %filter_ctl.sroa.23.0.off32 = phi i32 [ %10, %entry.if.end_crit_edge ], [ %or136, %do.body94 ]
  %size152 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 2
  %33 = ptrtoint ptr %size152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool153.not = icmp eq i32 %34, 0
  br i1 %tobool153.not, label %do.body309, label %do.body155

do.body155:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %and161 = and i32 %or55, -16613376
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 6
  %35 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spec, align 4
  %dmaq_id = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dmaq_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dmaq_id, align 2
  %conv163 = zext i16 %38 to i32
  %shl164 = shl nuw nsw i32 %conv163, 11
  %flags = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 1
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %shl192 = shl nuw nsw i32 %42, 18
  %dmaq_id216 = getelementptr %struct.efx_farch_filter_spec, ptr %36, i32 1, i32 2
  %43 = ptrtoint ptr %dmaq_id216 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dmaq_id216, align 2
  %conv217 = zext i16 %44 to i32
  %45 = shl nuw nsw i32 %conv217, 1
  %46 = and i32 %45, 254
  %and224 = and i32 %filter_ctl.sroa.23.0.off32, -520093697
  %47 = lshr i16 %44, 7
  %shr229 = zext i16 %47 to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %shr229)
  %or232 = or i32 %48, %and224
  %49 = and i32 %shl164, 16775168
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %or167.masked.masked = or i32 %and161, %50
  %and213.masked = or i32 %or167.masked.masked, %shl192
  %and246 = or i32 %and213.masked, %46
  %flags249 = getelementptr %struct.efx_farch_filter_spec, ptr %36, i32 1, i32 1
  %51 = ptrtoint ptr %flags249 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flags249, align 1
  %53 = and i8 %52, 1
  %.masked = zext i8 %53 to i32
  %and278 = or i32 %and246, %.masked
  %and287354 = and i8 %52, %40
  %54 = lshr i8 %and287354, 1
  %.lobit = and i8 %54, 1
  %55 = zext i8 %.lobit to i32
  %56 = shl nuw nsw i32 %55, 16
  br label %if.end333

do.body309:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %and315 = and i32 %or55, -65537
  %rx_scatter = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 63
  %57 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rx_scatter, align 4, !range !100
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  br label %if.end333

if.end333:                                        ; preds = %do.body309, %do.body155
  %and315.sink = phi i32 [ %and315, %do.body309 ], [ %56, %do.body155 ]
  %.sink = phi i32 [ %60, %do.body309 ], [ %and278, %do.body155 ]
  %filter_ctl.sroa.23.1.off32 = phi i32 [ %filter_ctl.sroa.23.0.off32, %do.body309 ], [ %or232, %do.body155 ]
  %or321 = or i32 %.sink, %and315.sink
  %and = and i32 %4, 255
  %add = add i32 %15, 1
  %61 = and i32 %add, -65281
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %and20 = or i32 %62, %and
  %add23 = shl i32 %17, 8
  %shl = add i32 %add23, 768
  %63 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %or26 = or i32 %and20, %63
  %and69 = and i32 %or26, -65281
  %add72 = shl i32 %22, 16
  %shl73 = add i32 %add72, 196608
  %64 = tail call i32 @llvm.bswap.i32(i32 %shl73)
  %or76 = or i32 %and69, %64
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i357 = getelementptr i8, ptr %66, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i357, i32 %or76) #14, !srcloc !91
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %68, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %or321) #14, !srcloc !91
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %70, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %filter_ctl.sroa.23.1.off32) #14, !srcloc !91
  %71 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i359 = getelementptr i8, ptr %72, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i359, i32 %filter_ctl.sroa.23.0.off0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_filter_push_tx_limits(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2640
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !90
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %6, i32 2644
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #14, !srcloc !90
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 2648
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #14, !srcloc !90
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %12, i32 2652
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #14
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 3, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and13 = and i32 %13, 16842495
  %arrayidx14 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 3, i32 7, i32 4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %add = shl i32 %17, 1
  %shl = add i32 %add, 2
  %18 = and i32 %shl, -130562
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and32 = or i32 %19, %and13
  %arrayidx34 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 3, i32 7, i32 5
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx34, align 4
  %add35 = shl i32 %21, 9
  %shl36 = add i32 %add35, 1536
  %22 = tail call i32 @llvm.bswap.i32(i32 %shl36)
  %or39 = or i32 %and32, %22
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %tx_cfg.sroa.7.12.insert.ext57.pn.in = phi i32 [ %13, %entry.if.end_crit_edge ], [ %or39, %do.body ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %24, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %4) #14, !srcloc !91
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %26, i32 2644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %7) #14, !srcloc !91
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %28, i32 2648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %10) #14, !srcloc !91
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i51 = getelementptr i8, ptr %30, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i51, i32 %tx_cfg.sroa.7.12.insert.ext57.pn.in) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_filter_table_clear_entry(ptr noundef %efx, ptr nocapture noundef %table, i32 noundef %filter_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.efx_farch_filter_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body3, label %do.end7, !prof !92

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2545, 0\0A.popsection", ""() #14, !srcloc !110
  unreachable

do.end7:                                          ; preds = %entry
  %used_bitmap = getelementptr inbounds %struct.efx_farch_filter_table, ptr %table, i32 0, i32 5
  %2 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_bitmap, align 4
  %rem.i = and i32 %filter_idx, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %filter_idx, 5
  %add.ptr.i = getelementptr i32, ptr %3, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %used = getelementptr inbounds %struct.efx_farch_filter_table, ptr %table, i32 0, i32 4
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %used, align 4
  %spec = getelementptr inbounds %struct.efx_farch_filter_table, ptr %table, i32 0, i32 6
  %8 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec, align 4
  %arrayidx = getelementptr %struct.efx_farch_filter_spec, ptr %9, i32 %filter_idx
  %10 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %step = getelementptr inbounds %struct.efx_farch_filter_table, ptr %table, i32 0, i32 3
  %13 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %step, align 4
  %mul = mul i32 %14, %filter_idx
  %add = add i32 %mul, %12
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #14, !srcloc !91
  %add7.i = add i32 %add, 4
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %18, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #14, !srcloc !91
  %add9.i = add i32 %add, 8
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %20, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #14, !srcloc !91
  %add11.i = add i32 %add, 12
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %22, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  %23 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp10 = icmp eq i32 %24, 0
  br i1 %cmp10, label %if.then17, label %do.end7.if.end21_crit_edge, !prof !92

do.end7.if.end21_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then17:                                        ; preds = %do.end7
  %search_limit = getelementptr inbounds %struct.efx_farch_filter_table, ptr %table, i32 0, i32 7
  %25 = call ptr @memset(ptr %search_limit, i32 0, i32 40)
  %26 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp18 = icmp eq i32 %27, 3
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_filter_push_tx_limits(ptr noundef %efx)
  br label %if.end21

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19, %do.end7.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_remove_safe(ptr noundef %efx, i32 noundef %priority, i32 noundef %filter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %filter_id)
  %cmp.i = icmp ult i32 %filter_id, 57344
  br i1 %cmp.i, label %efx_farch_filter_id_table_id.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

efx_farch_filter_id_table_id.exit:                ; preds = %entry
  %shr.i = lshr i32 %filter_id, 13
  %arrayidx.i = getelementptr [7 x i32], ptr @efx_farch_filter_range_table, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_id, 8191
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp3.not = icmp ult i32 %and.i, %5
  br i1 %cmp3.not, label %if.end5, label %efx_farch_filter_id_table_id.exit.cleanup_crit_edge

efx_farch_filter_id_table_id.exit.cleanup_crit_edge: ; preds = %efx_farch_filter_id_table_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %efx_farch_filter_id_table_id.exit
  %arrayidx = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %3
  tail call void @down_write(ptr noundef %1) #14
  %spec1.i = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %3, i32 6
  %6 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec1.i, align 4
  %arrayidx.i19 = getelementptr %struct.efx_farch_filter_spec, ptr %7, i32 %and.i
  %used_bitmap.i = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %3, i32 5
  %8 = ptrtoint ptr %used_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %used_bitmap.i, align 4
  %div3.i.i = lshr i32 %and.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %filter_id, 31
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end5.efx_farch_filter_remove.exit_crit_edge, label %lor.lhs.false.i

if.end5.efx_farch_filter_remove.exit_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_filter_remove.exit

lor.lhs.false.i:                                  ; preds = %if.end5
  %14 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %arrayidx.i19, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %priority)
  %cmp.not.i = icmp eq i32 %conv.i, %priority
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.efx_farch_filter_remove.exit_crit_edge

lor.lhs.false.i.efx_farch_filter_remove.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_farch_filter_remove.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.efx_farch_filter_spec, ptr %7, i32 %and.i, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i, align 1
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.i = icmp eq i8 %17, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear.i.i = and i8 %bf.load.i, -16
  %bf.set.i.i = or i8 %bf.clear.i.i, 1
  %18 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set.i.i, ptr %arrayidx.i19, align 4
  %rss_spread.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %19 = ptrtoint ptr %rss_spread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rss_spread.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i.i = icmp ugt i32 %20, 1
  %cond.i.i = zext i1 %cmp.i.i.i to i8
  %rx_scatter.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 63
  %21 = ptrtoint ptr %rx_scatter.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_scatter.i.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %cond1.i.i = select i1 %tobool.not.i.i, i8 0, i8 2
  %or.i.i = or i8 %cond1.i.i, %cond.i.i
  %or2.i.i = or i8 %or.i.i, 8
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or2.i.i, ptr %flags.i, align 1
  %dmaq_id.i.i = getelementptr %struct.efx_farch_filter_spec, ptr %7, i32 %and.i, i32 2
  %24 = ptrtoint ptr %dmaq_id.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %dmaq_id.i.i, align 2
  tail call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx) #14
  br label %efx_farch_filter_remove.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %arrayidx, i32 noundef %and.i) #14
  br label %efx_farch_filter_remove.exit

efx_farch_filter_remove.exit:                     ; preds = %if.else.i, %if.then5.i, %lor.lhs.false.i.efx_farch_filter_remove.exit_crit_edge, %if.end5.efx_farch_filter_remove.exit_crit_edge
  %retval.0.i20 = phi i32 [ -2, %lor.lhs.false.i.efx_farch_filter_remove.exit_crit_edge ], [ -2, %if.end5.efx_farch_filter_remove.exit_crit_edge ], [ 0, %if.else.i ], [ 0, %if.then5.i ]
  tail call void @up_write(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %efx_farch_filter_remove.exit, %efx_farch_filter_id_table_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %efx_farch_filter_remove.exit ], [ -2, %efx_farch_filter_id_table_id.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_get_safe(ptr nocapture noundef readonly %efx, i32 noundef %priority, i32 noundef %filter_id, ptr noundef %spec_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  tail call void @down_read(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %filter_id)
  %cmp.i = icmp ult i32 %filter_id, 57344
  br i1 %cmp.i, label %efx_farch_filter_id_table_id.exit, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

efx_farch_filter_id_table_id.exit:                ; preds = %entry
  %shr.i23 = lshr i32 %filter_id, 13
  %arrayidx.i24 = getelementptr [7 x i32], ptr @efx_farch_filter_range_table, i32 0, i32 %shr.i23
  %2 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i24, align 4
  %and.i25 = and i32 %filter_id, 8191
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i25, i32 %5)
  %cmp3.not = icmp ult i32 %and.i25, %5
  br i1 %cmp3.not, label %if.end5, label %efx_farch_filter_id_table_id.exit.out_unlock_crit_edge

efx_farch_filter_id_table_id.exit.out_unlock_crit_edge: ; preds = %efx_farch_filter_id_table_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end5:                                          ; preds = %efx_farch_filter_id_table_id.exit
  %spec6 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %3, i32 6
  %6 = ptrtoint ptr %spec6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec6, align 4
  %arrayidx7 = getelementptr %struct.efx_farch_filter_spec, ptr %7, i32 %and.i25
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %3, i32 5
  %8 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %used_bitmap, align 4
  %div3.i = lshr i32 %and.i25, 5
  %arrayidx.i = getelementptr i32, ptr %9, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_id, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end5.out_unlock_crit_edge, label %land.lhs.true

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

land.lhs.true:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx7, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %priority)
  %cmp9 = icmp eq i32 %conv, %priority
  br i1 %cmp9, label %if.then11, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_filter_to_gen_spec(ptr noundef %spec_buf, ptr noundef %arrayidx7)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then11, %land.lhs.true.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge, %efx_farch_filter_id_table_id.exit.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %rc.0 = phi i32 [ -2, %efx_farch_filter_id_table_id.exit.out_unlock_crit_edge ], [ 0, %if.then11 ], [ -2, %land.lhs.true.out_unlock_crit_edge ], [ -2, %if.end5.out_unlock_crit_edge ], [ -2, %entry.out_unlock_crit_edge ]
  tail call void @up_read(ptr noundef %1) #14
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_filter_to_gen_spec(ptr noundef %gen_spec, ptr nocapture noundef readonly %spec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %gen_spec, i32 0, i32 68)
  %1 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %spec, align 4
  %2 = and i8 %bf.load, 3
  %bf.value = zext i8 %2 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 18
  %3 = ptrtoint ptr %gen_spec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.shl, ptr %gen_spec, align 4
  %flags = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 1
  %6 = and i8 %5, 63
  %bf.value5 = zext i8 %6 to i32
  %bf.shl6 = shl nuw nsw i32 %bf.value5, 12
  %bf.set8 = or i32 %bf.shl6, %bf.shl
  store i32 %bf.set8, ptr %gen_spec, align 4
  %dmaq_id = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 2
  %7 = ptrtoint ptr %dmaq_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dmaq_id, align 2
  %9 = and i16 %8, 4095
  %bf.value11 = zext i16 %9 to i32
  %bf.set13 = or i32 %bf.set8, %bf.value11
  store i32 %bf.set13, ptr %gen_spec, align 4
  %bf.load14 = load i8, ptr %spec, align 4
  %bf.lshr = lshr i8 %bf.load14, 4
  %conv15 = zext i8 %bf.lshr to i32
  %10 = zext i32 %conv15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %conv15, label %do.end [
    i32 0, label %entry._crit_edge
    i32 2, label %entry._crit_edge232
    i32 1, label %entry.sw.bb16_crit_edge
    i32 3, label %entry.sw.bb16_crit_edge233
    i32 4, label %37
    i32 5, label %entry.sw.bb78_crit_edge
    i32 8, label %entry.sw.bb129_crit_edge
    i32 9, label %entry.sw.bb129_crit_edge234
  ]

entry.sw.bb129_crit_edge234:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb129

entry.sw.bb129_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb129

entry.sw.bb78_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb78

entry.sw.bb16_crit_edge233:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

entry._crit_edge232:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %11

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %11

11:                                               ; preds = %entry._crit_edge, %entry._crit_edge232
  br label %sw.bb16

sw.bb16:                                          ; preds = %11, %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge233
  %.sink230 = phi i32 [ 649068544, %11 ], [ 639631360, %entry.sw.bb16_crit_edge ], [ 639631360, %entry.sw.bb16_crit_edge233 ]
  %is_full.0.off0222 = phi i1 [ false, %11 ], [ true, %entry.sw.bb16_crit_edge ], [ true, %entry.sw.bb16_crit_edge233 ]
  %bf.set19 = or i32 %bf.set13, %.sink230
  %12 = ptrtoint ptr %gen_spec to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set19, ptr %gen_spec, align 4
  %ether_type = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 6
  %13 = ptrtoint ptr %ether_type to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2048, ptr %ether_type, align 4
  %14 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load27 = load i8, ptr %spec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load27)
  %cmp = icmp ult i8 %bf.load27, 16
  %bf.lshr28.mask = and i8 %bf.load27, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr28.mask)
  %cmp34 = icmp eq i8 %bf.lshr28.mask, 16
  %15 = or i1 %cmp, %cmp34
  %16 = select i1 %15, i8 6, i8 17
  %ip_proto = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 7
  %17 = ptrtoint ptr %ip_proto to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ip_proto, align 2
  %data = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  %arrayidx38 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx38, align 4
  %or39 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %19, i32 16)
  %conv42 = trunc i32 %19 to i16
  %arrayidx44 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx44, align 4
  %shr47 = lshr i32 %21, 16
  %conv48 = trunc i32 %shr47 to i16
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 1
  %26 = and i8 %25, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool51.not = icmp eq i8 %26, 0
  %or39.sink = select i1 %tobool51.not, i32 %23, i32 %or39
  %.sink = select i1 %tobool51.not, i32 %or39, i32 %23
  %27 = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or39.sink, ptr %27, align 4
  %29 = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 9
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %not..demorgan = or i1 %cmp, %cmp34
  %not. = xor i1 %not..demorgan, true
  %narrow = select i1 %is_full.0.off0222, i1 %not., i1 false
  %31 = and i32 %bf.value5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  %tobool71.not = xor i1 %32, %narrow
  %loc_port74 = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 10
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %loc_port74 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv42, ptr %loc_port74, align 4
  %rem_port = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 11
  %34 = ptrtoint ptr %rem_port to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv48, ptr %rem_port, align 2
  br label %sw.epilog

if.else73:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %loc_port74 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv48, ptr %loc_port74, align 4
  %rem_port75 = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 11
  %36 = ptrtoint ptr %rem_port75 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv42, ptr %rem_port75, align 2
  br label %sw.epilog

37:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb78

sw.bb78:                                          ; preds = %37, %entry.sw.bb78_crit_edge
  %.sink231 = phi i32 [ 285212672, %37 ], [ 16777216, %entry.sw.bb78_crit_edge ]
  %bf.set81 = or i32 %bf.set13, %.sink231
  %38 = ptrtoint ptr %gen_spec to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bf.set81, ptr %gen_spec, align 4
  %data93 = getelementptr inbounds %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3
  %arrayidx94 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx94, align 4
  %shr95 = lshr i32 %40, 8
  %conv96 = trunc i32 %shr95 to i8
  %loc_mac = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4
  %41 = ptrtoint ptr %loc_mac to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv96, ptr %loc_mac, align 4
  %42 = load i32, ptr %arrayidx94, align 4
  %conv100 = trunc i32 %42 to i8
  %arrayidx102 = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv100, ptr %arrayidx102, align 1
  %arrayidx104 = getelementptr %struct.efx_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx104, align 4
  %shr105 = lshr i32 %45, 24
  %conv106 = trunc i32 %shr105 to i8
  %arrayidx108 = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv106, ptr %arrayidx108, align 2
  %47 = load i32, ptr %arrayidx104, align 4
  %shr111 = lshr i32 %47, 16
  %conv112 = trunc i32 %shr111 to i8
  %arrayidx114 = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv112, ptr %arrayidx114, align 1
  %49 = load i32, ptr %arrayidx104, align 4
  %shr117 = lshr i32 %49, 8
  %conv118 = trunc i32 %shr117 to i8
  %arrayidx120 = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv118, ptr %arrayidx120, align 4
  %51 = load i32, ptr %arrayidx104, align 4
  %conv123 = trunc i32 %51 to i8
  %arrayidx125 = getelementptr %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 5
  %52 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv123, ptr %arrayidx125, align 1
  %53 = ptrtoint ptr %data93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data93, align 4
  %conv128 = trunc i32 %54 to i16
  %outer_vid = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 2
  %55 = ptrtoint ptr %outer_vid to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv128, ptr %outer_vid, align 4
  br label %sw.epilog

sw.bb129:                                         ; preds = %entry.sw.bb129_crit_edge, %entry.sw.bb129_crit_edge234
  %bf.set132 = or i32 %bf.set13, 1073741824
  %56 = ptrtoint ptr %gen_spec to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bf.set132, ptr %gen_spec, align 4
  %57 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load133 = load i8, ptr %spec, align 4
  %bf.lshr134.mask = and i8 %bf.load133, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %bf.lshr134.mask)
  %cmp136 = icmp eq i8 %bf.lshr134.mask, -112
  %conv138 = zext i1 %cmp136 to i8
  %loc_mac139 = getelementptr inbounds %struct.efx_filter_spec, ptr %gen_spec, i32 0, i32 4
  %58 = ptrtoint ptr %loc_mac139 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv138, ptr %loc_mac139, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2211, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb129, %sw.bb78, %if.else73, %if.then72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_clear_rx(ptr noundef %efx, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @efx_farch_filter_table_clear(ptr noundef %efx, i32 noundef 0, i32 noundef %priority)
  tail call fastcc void @efx_farch_filter_table_clear(ptr noundef %efx, i32 noundef 1, i32 noundef %priority)
  tail call fastcc void @efx_farch_filter_table_clear(ptr noundef %efx, i32 noundef 2, i32 noundef %priority)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_filter_table_clear(ptr noundef %efx, i32 noundef %table_id, i32 noundef %priority) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %arrayidx = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id
  tail call void @down_write(ptr noundef %1) #14
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id, i32 6
  %used_bitmap.i = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id, i32 5
  %rss_spread.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %rx_scatter.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %filter_idx.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec, align 4
  %arrayidx2 = getelementptr %struct.efx_farch_filter_spec, ptr %5, i32 %filter_idx.015
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %arrayidx2, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp3.not = icmp eq i8 %bf.clear, 1
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec, align 4
  %arrayidx.i = getelementptr %struct.efx_farch_filter_spec, ptr %8, i32 %filter_idx.015
  %9 = ptrtoint ptr %used_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %used_bitmap.i, align 4
  %div3.i.i = lshr i32 %filter_idx.015, 5
  %arrayidx.i.i = getelementptr i32, ptr %10, i32 %div3.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %filter_idx.015, 31
  %13 = shl nuw i32 1, %and.i.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %lor.lhs.false.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.then
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %arrayidx.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %priority)
  %cmp.not.i = icmp eq i32 %conv.i, %priority
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.efx_farch_filter_spec, ptr %8, i32 %filter_idx.015, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i, align 1
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear.i.i = and i8 %bf.load.i, -16
  %bf.set.i.i = or i8 %bf.clear.i.i, 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set.i.i, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %rss_spread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rss_spread.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i.i = icmp ugt i32 %21, 1
  %cond.i.i = zext i1 %cmp.i.i.i to i8
  %22 = ptrtoint ptr %rx_scatter.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx_scatter.i.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  %cond1.i.i = select i1 %tobool.not.i.i, i8 0, i8 2
  %or.i.i = or i8 %cond1.i.i, %cond.i.i
  %or2.i.i = or i8 %or.i.i, 8
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or2.i.i, ptr %flags.i, align 1
  %dmaq_id.i.i = getelementptr %struct.efx_farch_filter_spec, ptr %8, i32 %filter_idx.015, i32 2
  %25 = ptrtoint ptr %dmaq_id.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %dmaq_id.i.i, align 2
  tail call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx) #14
  br label %for.inc

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %arrayidx, i32 noundef %filter_idx.015) #14
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then5.i, %lor.lhs.false.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %filter_idx.015, 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_write(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_count_rx_used(ptr nocapture noundef readonly %efx, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  tail call void @down_read(ptr noundef %1) #14
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp323.not = icmp eq i32 %3, 0
  br i1 %cmp323.not, label %entry.for.inc9_crit_edge, label %for.body4.lr.ph

entry.for.inc9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9

for.body4.lr.ph:                                  ; preds = %entry
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used_bitmap, align 4
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 6
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %count.126 = phi i32 [ 0, %for.body4.lr.ph ], [ %count.2, %for.inc.for.body4_crit_edge ]
  %filter_idx.024 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc8, %for.inc.for.body4_crit_edge ]
  %div3.i = lshr i32 %filter_idx.024, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_idx.024, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body4.for.inc_crit_edge, label %land.lhs.true

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec, align 4
  %arrayidx5 = getelementptr %struct.efx_farch_filter_spec, ptr %11, i32 %filter_idx.024
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %arrayidx5, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %priority)
  %cmp6 = icmp eq i32 %conv, %priority
  %inc = zext i1 %cmp6 to i32
  %spec.select = add i32 %count.126, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body4.for.inc_crit_edge
  %count.2 = phi i32 [ %count.126, %for.body4.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc8 = add nuw i32 %filter_idx.024, 1
  %exitcond.not = icmp eq i32 %inc8, %3
  br i1 %exitcond.not, label %for.inc.for.inc9_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4

for.inc.for.inc9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9

for.inc9:                                         ; preds = %for.inc.for.inc9_crit_edge, %entry.for.inc9_crit_edge
  %count.1.lcssa = phi i32 [ 0, %entry.for.inc9_crit_edge ], [ %count.2, %for.inc.for.inc9_crit_edge ]
  %size.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp323.not.1 = icmp eq i32 %14, 0
  br i1 %cmp323.not.1, label %for.inc9.for.inc9.1_crit_edge, label %for.body4.lr.ph.1

for.inc9.for.inc9.1_crit_edge:                    ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9.1

for.body4.lr.ph.1:                                ; preds = %for.inc9
  %used_bitmap.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 5
  %15 = ptrtoint ptr %used_bitmap.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %used_bitmap.1, align 4
  %spec.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 6
  br label %for.body4.1

for.body4.1:                                      ; preds = %for.inc.1.for.body4.1_crit_edge, %for.body4.lr.ph.1
  %count.126.1 = phi i32 [ %count.1.lcssa, %for.body4.lr.ph.1 ], [ %count.2.1, %for.inc.1.for.body4.1_crit_edge ]
  %filter_idx.024.1 = phi i32 [ 0, %for.body4.lr.ph.1 ], [ %inc8.1, %for.inc.1.for.body4.1_crit_edge ]
  %div3.i.1 = lshr i32 %filter_idx.024.1, 5
  %arrayidx.i.1 = getelementptr i32, ptr %16, i32 %div3.i.1
  %17 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %filter_idx.024.1, 31
  %19 = shl nuw i32 1, %and.i.1
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1 = icmp eq i32 %20, 0
  br i1 %tobool.not.1, label %for.body4.1.for.inc.1_crit_edge, label %land.lhs.true.1

for.body4.1.for.inc.1_crit_edge:                  ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %spec.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec.1, align 4
  %arrayidx5.1 = getelementptr %struct.efx_farch_filter_spec, ptr %22, i32 %filter_idx.024.1
  %23 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.1 = load i8, ptr %arrayidx5.1, align 4
  %bf.clear.1 = and i8 %bf.load.1, 15
  %conv.1 = zext i8 %bf.clear.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %priority)
  %cmp6.1 = icmp eq i32 %conv.1, %priority
  %inc.1 = zext i1 %cmp6.1 to i32
  %spec.select.1 = add i32 %count.126.1, %inc.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.body4.1.for.inc.1_crit_edge
  %count.2.1 = phi i32 [ %count.126.1, %for.body4.1.for.inc.1_crit_edge ], [ %spec.select.1, %land.lhs.true.1 ]
  %inc8.1 = add nuw i32 %filter_idx.024.1, 1
  %exitcond.1.not = icmp eq i32 %inc8.1, %14
  br i1 %exitcond.1.not, label %for.inc.1.for.inc9.1_crit_edge, label %for.inc.1.for.body4.1_crit_edge

for.inc.1.for.body4.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.1

for.inc.1.for.inc9.1_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9.1

for.inc9.1:                                       ; preds = %for.inc.1.for.inc9.1_crit_edge, %for.inc9.for.inc9.1_crit_edge
  %count.1.lcssa.1 = phi i32 [ %count.1.lcssa, %for.inc9.for.inc9.1_crit_edge ], [ %count.2.1, %for.inc.1.for.inc9.1_crit_edge ]
  %size.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 2
  %24 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp323.not.2 = icmp eq i32 %25, 0
  br i1 %cmp323.not.2, label %for.inc9.1.for.inc9.2_crit_edge, label %for.body4.lr.ph.2

for.inc9.1.for.inc9.2_crit_edge:                  ; preds = %for.inc9.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9.2

for.body4.lr.ph.2:                                ; preds = %for.inc9.1
  %used_bitmap.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 5
  %26 = ptrtoint ptr %used_bitmap.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %used_bitmap.2, align 4
  %spec.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 6
  br label %for.body4.2

for.body4.2:                                      ; preds = %for.inc.2.for.body4.2_crit_edge, %for.body4.lr.ph.2
  %count.126.2 = phi i32 [ %count.1.lcssa.1, %for.body4.lr.ph.2 ], [ %count.2.2, %for.inc.2.for.body4.2_crit_edge ]
  %filter_idx.024.2 = phi i32 [ 0, %for.body4.lr.ph.2 ], [ %inc8.2, %for.inc.2.for.body4.2_crit_edge ]
  %div3.i.2 = lshr i32 %filter_idx.024.2, 5
  %arrayidx.i.2 = getelementptr i32, ptr %27, i32 %div3.i.2
  %28 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %filter_idx.024.2, 31
  %30 = shl nuw i32 1, %and.i.2
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.2 = icmp eq i32 %31, 0
  br i1 %tobool.not.2, label %for.body4.2.for.inc.2_crit_edge, label %land.lhs.true.2

for.body4.2.for.inc.2_crit_edge:                  ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %spec.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spec.2, align 4
  %arrayidx5.2 = getelementptr %struct.efx_farch_filter_spec, ptr %33, i32 %filter_idx.024.2
  %34 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.2 = load i8, ptr %arrayidx5.2, align 4
  %bf.clear.2 = and i8 %bf.load.2, 15
  %conv.2 = zext i8 %bf.clear.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %priority)
  %cmp6.2 = icmp eq i32 %conv.2, %priority
  %inc.2 = zext i1 %cmp6.2 to i32
  %spec.select.2 = add i32 %count.126.2, %inc.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2, %for.body4.2.for.inc.2_crit_edge
  %count.2.2 = phi i32 [ %count.126.2, %for.body4.2.for.inc.2_crit_edge ], [ %spec.select.2, %land.lhs.true.2 ]
  %inc8.2 = add nuw i32 %filter_idx.024.2, 1
  %exitcond.2.not = icmp eq i32 %inc8.2, %25
  br i1 %exitcond.2.not, label %for.inc.2.for.inc9.2_crit_edge, label %for.inc.2.for.body4.2_crit_edge

for.inc.2.for.body4.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.2

for.inc.2.for.inc9.2_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9.2

for.inc9.2:                                       ; preds = %for.inc.2.for.inc9.2_crit_edge, %for.inc9.1.for.inc9.2_crit_edge
  %count.1.lcssa.2 = phi i32 [ %count.1.lcssa.1, %for.inc9.1.for.inc9.2_crit_edge ], [ %count.2.2, %for.inc.2.for.inc9.2_crit_edge ]
  tail call void @up_read(ptr noundef %1) #14
  ret i32 %count.1.lcssa.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_get_rx_ids(ptr nocapture noundef readonly %efx, i32 noundef %priority, ptr nocapture noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  tail call void @down_read(ptr noundef %1) #14
  %size3 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp440.not = icmp eq i32 %3, 0
  br i1 %cmp440.not, label %entry.for.inc18_crit_edge, label %for.body5.lr.ph

entry.for.inc18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

for.body5.lr.ph:                                  ; preds = %entry
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 5
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 6
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %count.143 = phi i32 [ 0, %for.body5.lr.ph ], [ %count.2, %for.inc.for.body5_crit_edge ]
  %filter_idx.041 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc17, %for.inc.for.body5_crit_edge ]
  %4 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used_bitmap, align 4
  %div3.i = lshr i32 %filter_idx.041, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_idx.041, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body5.for.inc_crit_edge, label %land.lhs.true

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body5
  %10 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec, align 4
  %arrayidx6 = getelementptr %struct.efx_farch_filter_spec, ptr %11, i32 %filter_idx.041
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %arrayidx6, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %priority)
  %cmp7 = icmp eq i32 %conv, %priority
  br i1 %cmp7, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %count.143, i32 %size)
  %cmp9 = icmp eq i32 %count.143, %size
  br i1 %cmp9, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bf.lshr.i = lshr i8 %bf.load, 4
  %idxprom.i = zext i8 %bf.lshr.i to i32
  %arrayidx.i36 = getelementptr [10 x i8], ptr @efx_farch_filter_type_match_pri, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i36, align 1
  %conv.i = zext i8 %14 to i32
  %flags.i = getelementptr %struct.efx_farch_filter_spec, ptr %11, i32 %filter_idx.041, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i, align 1
  %17 = and i8 %16, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %18 = shl nuw nsw i32 %conv.i, 13
  %19 = add nuw nsw i32 %18, 40960
  %shl.i = select i1 %tobool.not.i, i32 %19, i32 %18
  %or.i = or i32 %shl.i, %filter_idx.041
  %inc = add i32 %count.143, 1
  %arrayidx15 = getelementptr i32, ptr %buf, i32 %count.143
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge, %for.body5.for.inc_crit_edge
  %count.2 = phi i32 [ %inc, %if.end ], [ %count.143, %land.lhs.true.for.inc_crit_edge ], [ %count.143, %for.body5.for.inc_crit_edge ]
  %inc17 = add nuw i32 %filter_idx.041, 1
  %21 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size3, align 4
  %cmp4 = icmp ult i32 %inc17, %22
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc18_crit_edge

for.inc.for.inc18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.inc18:                                        ; preds = %for.inc.for.inc18_crit_edge, %entry.for.inc18_crit_edge
  %count.1.lcssa = phi i32 [ 0, %entry.for.inc18_crit_edge ], [ %count.2, %for.inc.for.inc18_crit_edge ]
  %size3.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 2
  %23 = ptrtoint ptr %size3.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp440.not.1 = icmp eq i32 %24, 0
  br i1 %cmp440.not.1, label %for.inc18.for.inc18.1_crit_edge, label %for.body5.lr.ph.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18.1

for.body5.lr.ph.1:                                ; preds = %for.inc18
  %used_bitmap.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 5
  %spec.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 6
  br label %for.body5.1

for.body5.1:                                      ; preds = %for.inc.1.for.body5.1_crit_edge, %for.body5.lr.ph.1
  %count.143.1 = phi i32 [ %count.1.lcssa, %for.body5.lr.ph.1 ], [ %count.2.1, %for.inc.1.for.body5.1_crit_edge ]
  %filter_idx.041.1 = phi i32 [ 0, %for.body5.lr.ph.1 ], [ %inc17.1, %for.inc.1.for.body5.1_crit_edge ]
  %25 = ptrtoint ptr %used_bitmap.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %used_bitmap.1, align 4
  %div3.i.1 = lshr i32 %filter_idx.041.1, 5
  %arrayidx.i.1 = getelementptr i32, ptr %26, i32 %div3.i.1
  %27 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %filter_idx.041.1, 31
  %29 = shl nuw i32 1, %and.i.1
  %30 = and i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.1 = icmp eq i32 %30, 0
  br i1 %tobool.not.1, label %for.body5.1.for.inc.1_crit_edge, label %land.lhs.true.1

for.body5.1.for.inc.1_crit_edge:                  ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body5.1
  %31 = ptrtoint ptr %spec.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spec.1, align 4
  %arrayidx6.1 = getelementptr %struct.efx_farch_filter_spec, ptr %32, i32 %filter_idx.041.1
  %33 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.1 = load i8, ptr %arrayidx6.1, align 4
  %bf.clear.1 = and i8 %bf.load.1, 15
  %conv.1 = zext i8 %bf.clear.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %priority)
  %cmp7.1 = icmp eq i32 %conv.1, %priority
  br i1 %cmp7.1, label %if.then.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.143.1, i32 %size)
  %cmp9.1 = icmp eq i32 %count.143.1, %size
  br i1 %cmp9.1, label %if.then.1.out_crit_edge, label %if.end.1

if.then.1.out_crit_edge:                          ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #16
  %bf.lshr.i.1 = lshr i8 %bf.load.1, 4
  %idxprom.i.1 = zext i8 %bf.lshr.i.1 to i32
  %arrayidx.i36.1 = getelementptr [10 x i8], ptr @efx_farch_filter_type_match_pri, i32 0, i32 %idxprom.i.1
  %34 = ptrtoint ptr %arrayidx.i36.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i36.1, align 1
  %conv.i.1 = zext i8 %35 to i32
  %flags.i.1 = getelementptr %struct.efx_farch_filter_spec, ptr %32, i32 %filter_idx.041.1, i32 1
  %36 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags.i.1, align 1
  %38 = and i8 %37, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.1 = icmp eq i8 %38, 0
  %39 = shl nuw nsw i32 %conv.i.1, 13
  %40 = add nuw nsw i32 %39, 40960
  %shl.i.1 = select i1 %tobool.not.i.1, i32 %40, i32 %39
  %or.i.1 = or i32 %shl.i.1, %filter_idx.041.1
  %inc.1 = add i32 %count.143.1, 1
  %arrayidx15.1 = getelementptr i32, ptr %buf, i32 %count.143.1
  %41 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.1, ptr %arrayidx15.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.body5.1.for.inc.1_crit_edge
  %count.2.1 = phi i32 [ %inc.1, %if.end.1 ], [ %count.143.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %count.143.1, %for.body5.1.for.inc.1_crit_edge ]
  %inc17.1 = add nuw i32 %filter_idx.041.1, 1
  %42 = ptrtoint ptr %size3.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size3.1, align 4
  %cmp4.1 = icmp ult i32 %inc17.1, %43
  br i1 %cmp4.1, label %for.inc.1.for.body5.1_crit_edge, label %for.inc.1.for.inc18.1_crit_edge

for.inc.1.for.inc18.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc18.1

for.inc.1.for.body5.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.1

for.inc18.1:                                      ; preds = %for.inc.1.for.inc18.1_crit_edge, %for.inc18.for.inc18.1_crit_edge
  %count.1.lcssa.1 = phi i32 [ %count.1.lcssa, %for.inc18.for.inc18.1_crit_edge ], [ %count.2.1, %for.inc.1.for.inc18.1_crit_edge ]
  %size3.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 2
  %44 = ptrtoint ptr %size3.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size3.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp440.not.2 = icmp eq i32 %45, 0
  br i1 %cmp440.not.2, label %for.inc18.1.out_crit_edge, label %for.body5.lr.ph.2

for.inc18.1.out_crit_edge:                        ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body5.lr.ph.2:                                ; preds = %for.inc18.1
  %used_bitmap.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 5
  %spec.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 6
  br label %for.body5.2

for.body5.2:                                      ; preds = %for.inc.2.for.body5.2_crit_edge, %for.body5.lr.ph.2
  %count.143.2 = phi i32 [ %count.1.lcssa.1, %for.body5.lr.ph.2 ], [ %count.2.2, %for.inc.2.for.body5.2_crit_edge ]
  %filter_idx.041.2 = phi i32 [ 0, %for.body5.lr.ph.2 ], [ %inc17.2, %for.inc.2.for.body5.2_crit_edge ]
  %46 = ptrtoint ptr %used_bitmap.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %used_bitmap.2, align 4
  %div3.i.2 = lshr i32 %filter_idx.041.2, 5
  %arrayidx.i.2 = getelementptr i32, ptr %47, i32 %div3.i.2
  %48 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %filter_idx.041.2, 31
  %50 = shl nuw i32 1, %and.i.2
  %51 = and i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.2 = icmp eq i32 %51, 0
  br i1 %tobool.not.2, label %for.body5.2.for.inc.2_crit_edge, label %land.lhs.true.2

for.body5.2.for.inc.2_crit_edge:                  ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body5.2
  %52 = ptrtoint ptr %spec.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spec.2, align 4
  %arrayidx6.2 = getelementptr %struct.efx_farch_filter_spec, ptr %53, i32 %filter_idx.041.2
  %54 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.2 = load i8, ptr %arrayidx6.2, align 4
  %bf.clear.2 = and i8 %bf.load.2, 15
  %conv.2 = zext i8 %bf.clear.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %priority)
  %cmp7.2 = icmp eq i32 %conv.2, %priority
  br i1 %cmp7.2, label %if.then.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_cmp4(i32 %count.143.2, i32 %size)
  %cmp9.2 = icmp eq i32 %count.143.2, %size
  br i1 %cmp9.2, label %if.then.2.out_crit_edge, label %if.end.2

if.then.2.out_crit_edge:                          ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #16
  %bf.lshr.i.2 = lshr i8 %bf.load.2, 4
  %idxprom.i.2 = zext i8 %bf.lshr.i.2 to i32
  %arrayidx.i36.2 = getelementptr [10 x i8], ptr @efx_farch_filter_type_match_pri, i32 0, i32 %idxprom.i.2
  %55 = ptrtoint ptr %arrayidx.i36.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i36.2, align 1
  %conv.i.2 = zext i8 %56 to i32
  %flags.i.2 = getelementptr %struct.efx_farch_filter_spec, ptr %53, i32 %filter_idx.041.2, i32 1
  %57 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags.i.2, align 1
  %59 = and i8 %58, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.2 = icmp eq i8 %59, 0
  %60 = shl nuw nsw i32 %conv.i.2, 13
  %61 = add nuw nsw i32 %60, 40960
  %shl.i.2 = select i1 %tobool.not.i.2, i32 %61, i32 %60
  %or.i.2 = or i32 %shl.i.2, %filter_idx.041.2
  %inc.2 = add i32 %count.143.2, 1
  %arrayidx15.2 = getelementptr i32, ptr %buf, i32 %count.143.2
  %62 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i.2, ptr %arrayidx15.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.body5.2.for.inc.2_crit_edge
  %count.2.2 = phi i32 [ %inc.2, %if.end.2 ], [ %count.143.2, %land.lhs.true.2.for.inc.2_crit_edge ], [ %count.143.2, %for.body5.2.for.inc.2_crit_edge ]
  %inc17.2 = add nuw i32 %filter_idx.041.2, 1
  %63 = ptrtoint ptr %size3.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size3.2, align 4
  %cmp4.2 = icmp ult i32 %inc17.2, %64
  br i1 %cmp4.2, label %for.inc.2.for.body5.2_crit_edge, label %for.inc.2.out_crit_edge

for.inc.2.out_crit_edge:                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.2.for.body5.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.2

out:                                              ; preds = %for.inc.2.out_crit_edge, %if.then.2.out_crit_edge, %for.inc18.1.out_crit_edge, %if.then.1.out_crit_edge, %if.then.out_crit_edge
  %count.3 = phi i32 [ %count.1.lcssa.1, %for.inc18.1.out_crit_edge ], [ -90, %if.then.2.out_crit_edge ], [ %count.2.2, %for.inc.2.out_crit_edge ], [ -90, %if.then.1.out_crit_edge ], [ -90, %if.then.out_crit_edge ]
  tail call void @up_read(ptr noundef %1) #14
  ret i32 %count.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_filter_table_restore(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %filter = alloca %union.efx_oword, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #14
  %2 = getelementptr inbounds [2 x i64], ptr %filter, i32 0, i32 1
  %3 = call ptr @memset(ptr %filter, i32 255, i32 16)
  tail call void @down_write(ptr noundef %1) #14
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 1
  %arrayidx10.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc11.for.body_crit_edge, %entry
  %table_id.034 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11.for.body_crit_edge ]
  %step = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.034, i32 3
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %for.body.for.inc11_crit_edge, label %for.cond3.preheader

for.body.for.inc11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc11

for.cond3.preheader:                              ; preds = %for.body
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.034, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp431.not = icmp eq i32 %7, 0
  br i1 %cmp431.not, label %for.cond3.preheader.for.inc11_crit_edge, label %for.body5.lr.ph

for.cond3.preheader.for.inc11_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc11

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.034, i32 5
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.034, i32 6
  %offset = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.034, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %filter_idx.032 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %8 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %used_bitmap, align 4
  %div3.i = lshr i32 %filter_idx.032, 5
  %arrayidx.i = getelementptr i32, ptr %9, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_idx.032, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.body5.for.inc_crit_edge, label %if.end7

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end7:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec, align 4
  %arrayidx8 = getelementptr %struct.efx_farch_filter_spec, ptr %15, i32 %filter_idx.032
  %call9 = call fastcc i32 @efx_farch_filter_build(ptr noundef nonnull %filter, ptr noundef %arrayidx8)
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %18 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %step, align 4
  %mul = mul i32 %19, %filter_idx.032
  %add = add i32 %mul, %17
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %20 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %filter, align 8
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #14, !srcloc !91
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add, 4
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %27, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %25) #14, !srcloc !91
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 8
  %add9.i = add i32 %add, 8
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %31, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %29) #14, !srcloc !91
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add, 12
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %35, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %33) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body5.for.inc_crit_edge
  %inc = add nuw i32 %filter_idx.032, 1
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  %cmp4 = icmp ult i32 %inc, %37
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc11_crit_edge

for.inc.for.inc11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc11

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.inc11:                                        ; preds = %for.inc.for.inc11_crit_edge, %for.cond3.preheader.for.inc11_crit_edge, %for.body.for.inc11_crit_edge
  %inc12 = add nuw nsw i32 %table_id.034, 1
  %exitcond.not = icmp eq i32 %inc12, 4
  br i1 %exitcond.not, label %for.end13, label %for.inc11.for.body_crit_edge

for.inc11.for.body_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end13:                                        ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx)
  tail call fastcc void @efx_farch_filter_push_tx_limits(ptr noundef %efx)
  tail call void @up_write(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_filter_table_remove(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_bitmap, align 4
  tail call void @kfree(ptr noundef %3) #14
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec, align 4
  tail call void @vfree(ptr noundef %5) #14
  %used_bitmap.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 5
  %6 = ptrtoint ptr %used_bitmap.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %used_bitmap.1, align 4
  tail call void @kfree(ptr noundef %7) #14
  %spec.1 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 1, i32 6
  %8 = ptrtoint ptr %spec.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec.1, align 4
  tail call void @vfree(ptr noundef %9) #14
  %used_bitmap.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 5
  %10 = ptrtoint ptr %used_bitmap.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %used_bitmap.2, align 4
  tail call void @kfree(ptr noundef %11) #14
  %spec.2 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 2, i32 6
  %12 = ptrtoint ptr %spec.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec.2, align 4
  tail call void @vfree(ptr noundef %13) #14
  %used_bitmap.3 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 3, i32 5
  %14 = ptrtoint ptr %used_bitmap.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %used_bitmap.3, align 4
  tail call void @kfree(ptr noundef %15) #14
  %spec.3 = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 3, i32 6
  %16 = ptrtoint ptr %spec.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spec.3, align 4
  tail call void @vfree(ptr noundef %17) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_farch_filter_table_probe(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 368) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %1 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %filter_state, align 8
  tail call void @__init_rwsem(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @efx_farch_filter_table_probe.__key) #14
  %table1 = getelementptr inbounds %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %table1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %table1, align 8
  %offset = getelementptr inbounds %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15728640, ptr %offset, align 4
  %size = getelementptr inbounds %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8192, ptr %size, align 8
  %step = getelementptr inbounds %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %step, align 4
  %arrayidx3 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx3, align 4
  %offset5 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %offset5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15728656, ptr %offset5, align 8
  %size6 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  %8 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %size6, align 4
  %step7 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %9 = ptrtoint ptr %step7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %step7, align 8
  %arrayidx9 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %arrayidx9, align 8
  %size11 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 2
  %11 = ptrtoint ptr %size11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %size11, align 8
  %arrayidx13 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %arrayidx13, align 4
  %offset15 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %13 = ptrtoint ptr %offset15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16646144, ptr %offset15, align 8
  %size16 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 2
  %14 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %size16, align 4
  %step17 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 3
  %15 = ptrtoint ptr %step17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %step17, align 8
  %size20 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %size20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp21 = icmp eq i32 %17, 0
  br i1 %cmp21, label %if.end.for.inc_crit_edge, label %if.end7.i.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end7.i.i:                                      ; preds = %if.end
  %sub = add i32 %17, 31
  %18 = lshr i32 %sub, 3
  %19 = and i32 %18, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #20
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i, ptr %used_bitmap, align 4
  %tobool27.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool27.not, label %if.end7.i.i.fail_crit_edge, label %if.end29

if.end7.i.i.fail_crit_edge:                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end29:                                         ; preds = %if.end7.i.i
  %21 = ptrtoint ptr %size20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size20, align 8
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 16) #14
  %24 = extractvalue { i32, i1 } %23, 1
  %25 = extractvalue { i32, i1 } %23, 0
  %retval.0.i = select i1 %24, i32 -1, i32 %25
  %call32 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #20
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 6
  %26 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call32, ptr %spec, align 8
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end29.fail_crit_edge, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end29.fail_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

for.inc:                                          ; preds = %if.end29.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %size20.1 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  %27 = ptrtoint ptr %size20.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size20.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp21.1 = icmp eq i32 %28, 0
  br i1 %cmp21.1, label %for.inc.for.inc.1_crit_edge, label %if.end7.i.i.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end7.i.i.1:                                    ; preds = %for.inc
  %sub.1 = add i32 %28, 31
  %29 = lshr i32 %sub.1, 3
  %30 = and i32 %29, 536870908
  %call8.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #20
  %used_bitmap.1 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 5
  %31 = ptrtoint ptr %used_bitmap.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i.1, ptr %used_bitmap.1, align 8
  %tobool27.not.1 = icmp eq ptr %call8.i.i.1, null
  br i1 %tobool27.not.1, label %if.end7.i.i.1.fail_crit_edge, label %if.end29.1

if.end7.i.i.1.fail_crit_edge:                     ; preds = %if.end7.i.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end29.1:                                       ; preds = %if.end7.i.i.1
  %32 = ptrtoint ptr %size20.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size20.1, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 16) #14
  %35 = extractvalue { i32, i1 } %34, 1
  %36 = extractvalue { i32, i1 } %34, 0
  %retval.0.i.1 = select i1 %35, i32 -1, i32 %36
  %call32.1 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.1) #20
  %spec.1 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 6
  %37 = ptrtoint ptr %spec.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call32.1, ptr %spec.1, align 4
  %tobool34.not.1 = icmp eq ptr %call32.1, null
  br i1 %tobool34.not.1, label %if.end29.1.fail_crit_edge, label %if.end29.1.for.inc.1_crit_edge

if.end29.1.for.inc.1_crit_edge:                   ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end29.1.fail_crit_edge:                        ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

for.inc.1:                                        ; preds = %if.end29.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %size20.2 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 2
  %38 = ptrtoint ptr %size20.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size20.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp21.2 = icmp eq i32 %39, 0
  br i1 %cmp21.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end7.i.i.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end7.i.i.2:                                    ; preds = %for.inc.1
  %sub.2 = add i32 %39, 31
  %40 = lshr i32 %sub.2, 3
  %41 = and i32 %40, 536870908
  %call8.i.i.2 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #20
  %used_bitmap.2 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 5
  %42 = ptrtoint ptr %used_bitmap.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i.i.2, ptr %used_bitmap.2, align 4
  %tobool27.not.2 = icmp eq ptr %call8.i.i.2, null
  br i1 %tobool27.not.2, label %if.end7.i.i.2.fail_crit_edge, label %if.end29.2

if.end7.i.i.2.fail_crit_edge:                     ; preds = %if.end7.i.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end29.2:                                       ; preds = %if.end7.i.i.2
  %43 = ptrtoint ptr %size20.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size20.2, align 8
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 16) #14
  %46 = extractvalue { i32, i1 } %45, 1
  %47 = extractvalue { i32, i1 } %45, 0
  %retval.0.i.2 = select i1 %46, i32 -1, i32 %47
  %call32.2 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.2) #20
  %spec.2 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 6
  %48 = ptrtoint ptr %spec.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call32.2, ptr %spec.2, align 8
  %tobool34.not.2 = icmp eq ptr %call32.2, null
  br i1 %tobool34.not.2, label %if.end29.2.fail_crit_edge, label %if.end29.2.for.inc.2_crit_edge

if.end29.2.for.inc.2_crit_edge:                   ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end29.2.fail_crit_edge:                        ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

for.inc.2:                                        ; preds = %if.end29.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %size20.3 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 2
  %49 = ptrtoint ptr %size20.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size20.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp21.3 = icmp eq i32 %50, 0
  br i1 %cmp21.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end7.i.i.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.end7.i.i.3:                                    ; preds = %for.inc.2
  %sub.3 = add i32 %50, 31
  %51 = lshr i32 %sub.3, 3
  %52 = and i32 %51, 536870908
  %call8.i.i.3 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #20
  %used_bitmap.3 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 5
  %53 = ptrtoint ptr %used_bitmap.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i.3, ptr %used_bitmap.3, align 8
  %tobool27.not.3 = icmp eq ptr %call8.i.i.3, null
  br i1 %tobool27.not.3, label %if.end7.i.i.3.fail_crit_edge, label %if.end29.3

if.end7.i.i.3.fail_crit_edge:                     ; preds = %if.end7.i.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end29.3:                                       ; preds = %if.end7.i.i.3
  %54 = ptrtoint ptr %size20.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size20.3, align 4
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 16) #14
  %57 = extractvalue { i32, i1 } %56, 1
  %58 = extractvalue { i32, i1 } %56, 0
  %retval.0.i.3 = select i1 %57, i32 -1, i32 %58
  %call32.3 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.3) #20
  %spec.3 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 6
  %59 = ptrtoint ptr %spec.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call32.3, ptr %spec.3, align 4
  %tobool34.not.3 = icmp eq ptr %call32.3, null
  br i1 %tobool34.not.3, label %if.end29.3.fail_crit_edge, label %if.end29.3.for.inc.3_crit_edge

if.end29.3.for.inc.3_crit_edge:                   ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.end29.3.fail_crit_edge:                        ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

for.inc.3:                                        ; preds = %if.end29.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %60 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool40.not = icmp eq i32 %61, 0
  br i1 %tobool40.not, label %for.inc.3.if.end53_crit_edge, label %for.cond43.preheader

for.inc.3.if.end53_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

for.cond43.preheader:                             ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %spec46 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 6
  %rss_spread.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 44
  %rx_scatter.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 63
  %used_bitmap49 = getelementptr %struct.efx_farch_filter_state, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 5
  %62 = ptrtoint ptr %spec46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spec46, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -127, ptr %63, align 4
  %65 = ptrtoint ptr %rss_spread.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rss_spread.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i.i = icmp ugt i32 %66, 1
  %cond.i = zext i1 %cmp.i.i to i8
  %67 = ptrtoint ptr %rx_scatter.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rx_scatter.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i = icmp eq i8 %68, 0
  %cond1.i = select i1 %tobool.not.i, i8 0, i8 2
  %or.i98 = or i8 %cond1.i, %cond.i
  %or2.i = or i8 %or.i98, 8
  %flags.i = getelementptr %struct.efx_farch_filter_spec, ptr %63, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %or2.i, ptr %flags.i, align 1
  %dmaq_id.i = getelementptr %struct.efx_farch_filter_spec, ptr %63, i32 0, i32 2
  %70 = ptrtoint ptr %dmaq_id.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %dmaq_id.i, align 2
  %71 = ptrtoint ptr %used_bitmap49 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %used_bitmap49, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %or.i = or i32 %74, 1
  store i32 %or.i, ptr %72, align 4
  %75 = ptrtoint ptr %spec46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %spec46, align 8
  %arrayidx47.1 = getelementptr %struct.efx_farch_filter_spec, ptr %76, i32 1
  %77 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -111, ptr %arrayidx47.1, align 4
  %78 = ptrtoint ptr %rss_spread.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rss_spread.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i.i.1 = icmp ugt i32 %79, 1
  %cond.i.1 = zext i1 %cmp.i.i.1 to i8
  %80 = ptrtoint ptr %rx_scatter.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rx_scatter.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.1 = icmp eq i8 %81, 0
  %cond1.i.1 = select i1 %tobool.not.i.1, i8 0, i8 2
  %or.i98.1 = or i8 %cond1.i.1, %cond.i.1
  %or2.i.1 = or i8 %or.i98.1, 8
  %flags.i.1 = getelementptr %struct.efx_farch_filter_spec, ptr %76, i32 1, i32 1
  %82 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %or2.i.1, ptr %flags.i.1, align 1
  %dmaq_id.i.1 = getelementptr %struct.efx_farch_filter_spec, ptr %76, i32 1, i32 2
  %83 = ptrtoint ptr %dmaq_id.i.1 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %dmaq_id.i.1, align 2
  %84 = ptrtoint ptr %used_bitmap49 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %used_bitmap49, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %or.i.1 = or i32 %87, 2
  store i32 %or.i.1, ptr %85, align 4
  br label %if.end53

if.end53:                                         ; preds = %for.cond43.preheader, %for.inc.3.if.end53_crit_edge
  tail call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx)
  br label %cleanup

fail:                                             ; preds = %if.end29.3.fail_crit_edge, %if.end7.i.i.3.fail_crit_edge, %if.end29.2.fail_crit_edge, %if.end7.i.i.2.fail_crit_edge, %if.end29.1.fail_crit_edge, %if.end7.i.i.1.fail_crit_edge, %if.end29.fail_crit_edge, %if.end7.i.i.fail_crit_edge
  %88 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %filter_state, align 8
  %used_bitmap.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 0, i32 5
  %90 = ptrtoint ptr %used_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %used_bitmap.i, align 4
  tail call void @kfree(ptr noundef %91) #14
  %spec.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 0, i32 6
  %92 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %spec.i, align 4
  tail call void @vfree(ptr noundef %93) #14
  %used_bitmap.1.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 1, i32 5
  %94 = ptrtoint ptr %used_bitmap.1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %used_bitmap.1.i, align 4
  tail call void @kfree(ptr noundef %95) #14
  %spec.1.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 1, i32 6
  %96 = ptrtoint ptr %spec.1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %spec.1.i, align 4
  tail call void @vfree(ptr noundef %97) #14
  %used_bitmap.2.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 2, i32 5
  %98 = ptrtoint ptr %used_bitmap.2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %used_bitmap.2.i, align 4
  tail call void @kfree(ptr noundef %99) #14
  %spec.2.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 2, i32 6
  %100 = ptrtoint ptr %spec.2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %spec.2.i, align 4
  tail call void @vfree(ptr noundef %101) #14
  %used_bitmap.3.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 3, i32 5
  %102 = ptrtoint ptr %used_bitmap.3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %used_bitmap.3.i, align 4
  tail call void @kfree(ptr noundef %103) #14
  %spec.3.i = getelementptr %struct.efx_farch_filter_state, ptr %89, i32 0, i32 1, i32 3, i32 6
  %104 = ptrtoint ptr %spec.3.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %spec.3.i, align 4
  tail call void @vfree(ptr noundef %105) #14
  tail call void @kfree(ptr noundef %89) #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %if.end53 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_filter_update_rx_scatter(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %filter = alloca %union.efx_oword, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #14
  %2 = getelementptr inbounds [2 x i64], ptr %filter, i32 0, i32 1
  %3 = call ptr @memset(ptr %filter, i32 255, i32 16)
  tail call void @down_write(ptr noundef %1) #14
  %n_rx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 43
  %rx_scatter = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 63
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %membase.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 1
  %arrayidx10.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 3
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc27.for.cond2.preheader_crit_edge, %entry
  %table_id.058 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27.for.cond2.preheader_crit_edge ]
  %size = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.058, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp354.not = icmp eq i32 %5, 0
  br i1 %cmp354.not, label %for.cond2.preheader.for.inc27_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.inc27_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %used_bitmap = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.058, i32 5
  %spec = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.058, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %table_id.058)
  %cmp20 = icmp eq i32 %table_id.058, 2
  %offset = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.058, i32 1
  %step = getelementptr %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 %table_id.058, i32 3
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %filter_idx.055 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %6 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %used_bitmap, align 4
  %div3.i = lshr i32 %filter_idx.055, 5
  %arrayidx.i = getelementptr i32, ptr %7, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_idx.055, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body4.for.inc_crit_edge, label %lor.lhs.false

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body4
  %12 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec, align 4
  %dmaq_id = getelementptr %struct.efx_farch_filter_spec, ptr %13, i32 %filter_idx.055, i32 2
  %14 = ptrtoint ptr %dmaq_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dmaq_id, align 2
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_rx_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp6.not = icmp ugt i32 %17, %conv
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rx_scatter, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  %flags16 = getelementptr %struct.efx_farch_filter_spec, ptr %13, i32 %filter_idx.055, i32 1
  %20 = ptrtoint ptr %flags16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags16, align 1
  %22 = and i8 %21, -3
  %masksel = select i1 %tobool8.not, i8 0, i8 2
  %.sink = or i8 %22, %masksel
  store i8 %.sink, ptr %flags16, align 1
  br i1 %cmp20, label %if.end.for.inc_crit_edge, label %if.end23

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spec, align 4
  %arrayidx25 = getelementptr %struct.efx_farch_filter_spec, ptr %24, i32 %filter_idx.055
  %call26 = call fastcc i32 @efx_farch_filter_build(ptr noundef nonnull %filter, ptr noundef %arrayidx25)
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %27 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %step, align 4
  %mul = mul i32 %28, %filter_idx.055
  %add = add i32 %mul, %26
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #14
  %29 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %filter, align 8
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #14, !srcloc !91
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add, 4
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %36, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %34) #14, !srcloc !91
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 8
  %add9.i = add i32 %add, 8
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %40, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %38) #14, !srcloc !91
  %41 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add, 12
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %44, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %42) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %inc = add nuw i32 %filter_idx.055, 1
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  %cmp3 = icmp ult i32 %inc, %46
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.inc27_crit_edge

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.cond2.preheader.for.inc27_crit_edge
  %inc28 = add nuw nsw i32 %table_id.058, 1
  %exitcond.not = icmp eq i32 %inc28, 3
  br i1 %exitcond.not, label %for.end29, label %for.inc27.for.cond2.preheader_crit_edge

for.inc27.for.cond2.preheader_crit_edge:          ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader

for.end29:                                        ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_farch_filter_push_rx_config(ptr noundef %efx)
  tail call void @up_write(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @efx_farch_filter_rfs_expire_one(ptr noundef %efx, i32 noundef %flow_id, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %force = alloca i8, align 1
  %spec4 = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 109
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %force) #14
  %2 = ptrtoint ptr %force to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %force, align 1
  tail call void @down_write(ptr noundef %1) #14
  %rps_hash_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 113
  tail call void @_raw_spin_lock_bh(ptr noundef %rps_hash_lock) #14
  %table1 = getelementptr inbounds %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1
  %used_bitmap = getelementptr inbounds %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 5
  %3 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %used_bitmap, align 4
  %div3.i = lshr i32 %index, 5
  %arrayidx.i = getelementptr i32, ptr %4, i32 %div3.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %index, 31
  %7 = shl nuw i32 1, %and.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %land.lhs.true

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

land.lhs.true:                                    ; preds = %entry
  %spec = getelementptr inbounds %struct.efx_farch_filter_state, ptr %1, i32 0, i32 1, i32 0, i32 6
  %9 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec, align 4
  %arrayidx2 = getelementptr %struct.efx_farch_filter_spec, ptr %10, i32 %index
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %arrayidx2, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %spec4) #14
  %12 = call ptr @memset(ptr %spec4, i32 255, i32 68)
  call fastcc void @efx_farch_filter_to_gen_spec(ptr noundef nonnull %spec4, ptr noundef %arrayidx2)
  %rps_hash_table = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 114
  %13 = ptrtoint ptr %rps_hash_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rps_hash_table, align 8
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.then.if.end17_crit_edge, label %if.else

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.else:                                          ; preds = %if.then
  %call9 = call ptr @efx_rps_hash_find(ptr noundef %efx, ptr noundef nonnull %spec4) #14
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then25.thread, label %if.else12

if.then25.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %force to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %force, align 1
  br label %if.end28

if.else12:                                        ; preds = %if.else
  %arfs_id13 = getelementptr inbounds %struct.efx_arfs_rule, ptr %call9, i32 0, i32 3
  %16 = ptrtoint ptr %arfs_id13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arfs_id13, align 2
  %call14 = call zeroext i1 @efx_rps_check_rule(ptr noundef nonnull %call9, i32 noundef %index, ptr noundef nonnull %force) #14
  br i1 %call14, label %if.else12.if.end17_crit_edge, label %if.else12.cleanup_crit_edge

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else12.if.end17_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %if.else12.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %arfs_id.0.ph = phi i16 [ 0, %if.then.if.end17_crit_edge ], [ %17, %if.else12.if.end17_crit_edge ]
  %rule.0.ph = phi ptr [ null, %if.then.if.end17_crit_edge ], [ %call9, %if.else12.if.end17_crit_edge ]
  %18 = ptrtoint ptr %force to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %force, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool18.not = icmp eq i8 %.pr, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end17.if.then25_crit_edge

if.end17.if.then25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.end17
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  %21 = ptrtoint ptr %spec4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load20 = load i32, ptr %spec4, align 4
  %22 = trunc i32 %bf.load20 to i16
  %conv22 = and i16 %22, 4095
  %call23 = call zeroext i1 @rps_may_expire_flow(ptr noundef %20, i16 noundef zeroext %conv22, i32 noundef %flow_id, i16 noundef zeroext %arfs_id.0.ph) #14
  br i1 %call23, label %lor.lhs.false.if.then25_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.end17.if.then25_crit_edge
  %tobool26.not = icmp eq ptr %rule.0.ph, null
  br i1 %tobool26.not, label %if.then25.if.end28_crit_edge, label %if.then27

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %filter_id = getelementptr inbounds %struct.efx_arfs_rule, ptr %rule.0.ph, i32 0, i32 4
  %23 = ptrtoint ptr %filter_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -3, ptr %filter_id, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25.if.end28_crit_edge, %if.then25.thread
  call void @efx_rps_hash_del(ptr noundef %efx, ptr noundef nonnull %spec4) #14
  call fastcc void @efx_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %table1, i32 noundef %index)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %lor.lhs.false.cleanup_crit_edge, %if.else12.cleanup_crit_edge
  %ret.1 = phi i1 [ false, %if.else12.cleanup_crit_edge ], [ true, %if.end28 ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %spec4) #14
  br label %out_unlock

out_unlock:                                       ; preds = %cleanup, %land.lhs.true.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.2.off0 = phi i1 [ %ret.1, %cleanup ], [ false, %land.lhs.true.out_unlock_crit_edge ], [ false, %entry.out_unlock_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %rps_hash_lock) #14
  call void @up_write(ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %force) #14
  ret i1 %ret.2.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_rps_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_rps_check_rule(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rps_hash_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_farch_filter_sync_rx_mode(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %multicast_hash = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 100
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %2 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i.not = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %3 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #14
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i36 = zext i8 %4 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i36) #14
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %unicast_filter = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 99
  %and = lshr i32 %6, 8
  %7 = trunc i32 %and to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = ptrtoint ptr %unicast_filter to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %unicast_filter, align 16
  %11 = load i32, ptr %flags, align 8
  %and4 = and i32 %11, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = call ptr @memset(ptr %multicast_hash, i32 255, i32 32)
  br label %if.end18

if.else:                                          ; preds = %if.end
  %13 = call ptr @memset(ptr %multicast_hash, i32 0, i32 32)
  %mc = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.040 = load ptr, ptr %mc, align 4
  %cmp.not41 = icmp eq ptr %ha.040, %mc
  br i1 %cmp.not41, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %ha.042 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.040, %if.else.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.042, i32 0, i32 2
  %call11 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #21
  %xor.i = and i32 %call11, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %and12 = lshr i32 %call11, 5
  %div2.i.i = and i32 %and12, 7
  %add.ptr.i.i = getelementptr i32, ptr %multicast_hash, i32 %div2.i.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %16
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %17 = ptrtoint ptr %ha.042 to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.0 = load ptr, ptr %ha.042, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %add.ptr.i.i37 = getelementptr i32, ptr %multicast_hash, i32 7
  %18 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i37, align 4
  %or.i.i38 = or i32 %19, 128
  store i32 %or.i.i38, ptr %add.ptr.i.i37, align 4
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.then6
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_flush_rxqs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @efx_check_tx_flush_complete(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not119 = icmp eq ptr %1, null
  br i1 %tobool.not119, label %entry.for.end73_crit_edge, label %for.body.lr.ph

entry.for.end73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end73

for.body.lr.ph:                                   ; preds = %entry
  %biu_lock.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.0.off0121 = phi i1 [ true, %for.body.lr.ph ], [ %i.1.off0.lcssa, %cond.end.for.body_crit_edge ]
  %channel.0120 = phi ptr [ %1, %for.body.lr.ph ], [ %67, %cond.end.for.body_crit_edge ]
  %tx_queue2 = getelementptr inbounds %struct.efx_channel, ptr %channel.0120, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0120, i32 0, i32 1
  %2 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel1.i.i, align 4
  %4 = ptrtoint ptr %channel.0120 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel.0120, align 128
  %xdp_channel_offset.i.i106 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %xdp_channel_offset.i.i106 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xdp_channel_offset.i.i106, align 8
  %sub.i.i107 = sub i32 %3, %7
  %n_xdp_channels.i.i108 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 49
  %8 = ptrtoint ptr %n_xdp_channels.i.i108 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_xdp_channels.i.i108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i107, i32 %9)
  %cmp.i.i109 = icmp ult i32 %sub.i.i107, %9
  %xdp_tx_per_channel.i110 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 51
  %tx_queues_per_channel.i111 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 48
  %retval.0.in.i112 = select i1 %cmp.i.i109, ptr %xdp_tx_per_channel.i110, ptr %tx_queues_per_channel.i111
  %10 = ptrtoint ptr %retval.0.in.i112 to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i102113 = load i32, ptr %retval.0.in.i112, align 4
  %add.ptr114 = getelementptr %struct.efx_tx_queue, ptr %tx_queue2, i32 %retval.0.i102113
  %cmp115 = icmp ult ptr %tx_queue2, %add.ptr114
  br i1 %cmp115, label %for.body.for.body7_crit_edge, label %for.body.for.inc66_crit_edge

for.body.for.inc66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %i.1.off0117 = phi i1 [ %i.2.off0, %for.inc.for.body7_crit_edge ], [ %i.0.off0121, %for.body.for.body7_crit_edge ]
  %tx_queue.0116 = phi ptr [ %incdec.ptr, %for.inc.for.body7_crit_edge ], [ %tx_queue2, %for.body.for.body7_crit_edge ]
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0116, i32 0, i32 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue, align 4
  %mul.i = shl i32 %12, 4
  %add.i = add i32 %mul.i, 16056320
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #14
  %13 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %add.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !90
  %add6.i.i = add i32 %mul.i, 16056324
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %17, i32 %add6.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #14, !srcloc !90
  %add9.i.i = add i32 %mul.i, 16056328
  %19 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %20, i32 %add9.i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #14, !srcloc !90
  %add12.i.i = add i32 %mul.i, 16056332
  %22 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %23, i32 %add12.i.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #14, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i) #14
  %25 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  %and15 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.else31, label %do.body

do.body:                                          ; preds = %for.body7
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 4
  %and18 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body.for.inc_crit_edge, label %do.body21

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_check_tx_flush_complete.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_check_tx_flush_complete, %if.then26)) #14
          to label %for.inc [label %if.then26], !srcloc !97

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev, align 4
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_check_tx_flush_complete.__UNIQUE_ID_ddebug534, ptr noundef %29, ptr noundef nonnull @.str.26, i32 noundef %31) #14
  br label %for.inc

if.else31:                                        ; preds = %for.body7
  %flush_outstanding = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0116, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flush_outstanding, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %flush_outstanding, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.else31
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %flush_outstanding, ptr %flush_outstanding, i32 1, i32 0, ptr elementtype(i32) %flush_outstanding) #14, !srcloc !106
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %32, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool33.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool33.not, label %atomic_cmpxchg.exit.for.inc_crit_edge, label %do.body35

atomic_cmpxchg.exit.for.inc_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body35:                                        ; preds = %atomic_cmpxchg.exit
  %33 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable, align 4
  %and37 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body35.do.end60_crit_edge, label %do.body40

do.body35.do.end60_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

do.body40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_check_tx_flush_complete.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_check_tx_flush_complete, %if.then52)) #14
          to label %do.end60 [label %if.then52], !srcloc !97

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev, align 4
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_check_tx_flush_complete.__UNIQUE_ID_ddebug535, ptr noundef %36, ptr noundef nonnull @.str.27, i32 noundef %38) #14
  br label %do.end60

do.end60:                                         ; preds = %if.then52, %do.body40, %do.body35.do.end60_crit_edge
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %queue, align 4
  %or62 = or i32 %40, 66560
  %41 = tail call i32 @llvm.bswap.i32(i32 %or62) #14
  %42 = ptrtoint ptr %channel.0120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channel.0120, align 128
  %44 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel1.i.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %biu_lock.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 131
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #14
  %membase.i.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 13
  %47 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %48, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %41) #14, !srcloc !91
  %49 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %50, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 112) #14, !srcloc !91
  %51 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %52, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %46) #14, !srcloc !91
  %53 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %54, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #14, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end60, %atomic_cmpxchg.exit.for.inc_crit_edge, %if.then26, %do.body21, %do.body.for.inc_crit_edge
  %i.2.off0 = phi i1 [ %i.1.off0117, %do.end60 ], [ %i.1.off0117, %atomic_cmpxchg.exit.for.inc_crit_edge ], [ false, %if.then26 ], [ false, %do.body.for.inc_crit_edge ], [ false, %do.body21 ]
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0116, i32 1
  %55 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel1.i.i, align 4
  %57 = ptrtoint ptr %channel.0120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %channel.0120, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %58, i32 0, i32 50
  %59 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %56, %60
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %58, i32 0, i32 49
  %61 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %62)
  %cmp.i.i = icmp ult i32 %sub.i.i, %62
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %58, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %58, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %63 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %retval.0.i102 = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue2, i32 %retval.0.i102
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body7_crit_edge, label %for.inc.for.inc66_crit_edge

for.inc.for.inc66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

for.inc66:                                        ; preds = %for.inc.for.inc66_crit_edge, %for.body.for.inc66_crit_edge
  %i.1.off0.lcssa = phi i1 [ %i.0.off0121, %for.body.for.inc66_crit_edge ], [ %i.2.off0, %for.inc.for.inc66_crit_edge ]
  %.lcssa105 = phi i32 [ %3, %for.body.for.inc66_crit_edge ], [ %56, %for.inc.for.inc66_crit_edge ]
  %add = add i32 %.lcssa105, 1
  %64 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %65)
  %cmp68 = icmp ult i32 %add, %65
  br i1 %cmp68, label %cond.end, label %for.inc66.for.end73_crit_edge

for.inc66.for.end73_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end73

cond.end:                                         ; preds = %for.inc66
  %arrayidx72 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %66 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx72, align 4
  %tobool.not = icmp eq ptr %67, null
  br i1 %tobool.not, label %cond.end.for.end73_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cond.end.for.end73_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end73

for.end73:                                        ; preds = %cond.end.for.end73_crit_edge, %for.inc66.for.end73_crit_edge, %entry.for.end73_crit_edge
  %i.0.off0.lcssa = phi i1 [ true, %entry.for.end73_crit_edge ], [ %i.1.off0.lcssa, %cond.end.for.end73_crit_edge ], [ %i.1.off0.lcssa, %for.inc66.for.end73_crit_edge ]
  ret i1 %i.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_rx_packet(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_xmit_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fast_push_rx_descriptors(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_farch_handle_drain_event(ptr nocapture noundef readonly %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %active_queues = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 116
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues, i32 noundef 4) #14
  %2 = ptrtoint ptr %active_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !92

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1137, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #14, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues, i32 noundef 4) #14
  %5 = ptrtoint ptr %active_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %active_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.if.then22_crit_edge, label %lor.rhs.i

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

lor.rhs.i:                                        ; preds = %if.end
  %rxq_flush_outstanding.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 118
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp4.i = icmp slt i32 %8, 4
  br i1 %cmp4.i, label %efx_farch_flush_wake.exit, label %lor.rhs.i.if.end23_crit_edge

lor.rhs.i.if.end23_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

efx_farch_flush_wake.exit:                        ; preds = %lor.rhs.i
  %rxq_flush_pending.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 117
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %rxq_flush_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rxq_flush_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.i = icmp sgt i32 %10, 0
  br i1 %cmp6.i, label %efx_farch_flush_wake.exit.if.then22_crit_edge, label %efx_farch_flush_wake.exit.if.end23_crit_edge

efx_farch_flush_wake.exit.if.end23_crit_edge:     ; preds = %efx_farch_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

efx_farch_flush_wake.exit.if.then22_crit_edge:    ; preds = %efx_farch_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22:                                        ; preds = %efx_farch_flush_wake.exit.if.then22_crit_edge, %if.end.if.then22_crit_edge
  %flush_wq = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 119
  tail call void @__wake_up(ptr noundef %flush_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %efx_farch_flush_wake.exit.if.end23_crit_edge, %lor.rhs.i.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_tx_flush_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_rx_flush_done(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_siena_sriov_desc_fetch_err(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i12 @llvm.bitreverse.i12(i12) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i15 @llvm.bitreverse.i15(i15) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 148, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 521, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @efx_farch_rx_init.__UNIQUE_ID_ddebug533, !3, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1322, i32 4}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1350, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @efx_farch_ev_init.__UNIQUE_ID_ddebug541, !11, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1468, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1479, i32 3}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1496, i32 3}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1500, i32 3}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1708, i32 5}
!26 = !{ptr @efx_farch_filter_table_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 2795, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 248, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @efx_alloc_special_buffer.__UNIQUE_ID_ddebug526, !30, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 184, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @efx_init_special_buffer.__UNIQUE_ID_ddebug524, !34, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 206, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @efx_fini_special_buffer.__UNIQUE_ID_ddebug525, !38, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 264, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @efx_free_special_buffer.__UNIQUE_ID_ddebug527, !42, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 701, i32 3}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 616, i32 5}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @efx_check_tx_flush_complete.__UNIQUE_ID_ddebug534, !48, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 625, i32 5}
!53 = !{ptr @efx_check_tx_flush_complete.__UNIQUE_ID_ddebug535, !52, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 954, i32 2}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 853, i32 3}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1167, i32 3}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @efx_farch_handle_generated_event.__UNIQUE_ID_ddebug539, !59, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1201, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @efx_farch_handle_driver_event.__UNIQUE_ID_ddebug540, !63, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1220, i32 3}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1228, i32 4}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1241, i32 4}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 1119, i32 3}
!74 = !{ptr @efx_farch_filter_range_table, !75, !"efx_farch_filter_range_table", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 2327, i32 45}
!76 = !{ptr @efx_farch_filter_type_match_pri, !77, !"efx_farch_filter_type_match_pri", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 2316, i32 17}
!78 = distinct !{null, !79, !"filter", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sfc/farch.c", i32 2542, i32 21}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 4293783}
!91 = !{i64 4293365}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 2159314203}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2158971717, i64 2158972214, i64 2158971754, i64 2158971810, i64 2158971844, i64 2158971868, i64 2158971909, i64 2158971930, i64 2158971958, i64 2158971992}
!96 = !{i64 2158973490, i64 2158973987, i64 2158973527, i64 2158973583, i64 2158973617, i64 2158973641, i64 2158973682, i64 2158973703, i64 2158973731, i64 2158973765}
!97 = !{i64 2148844256, i64 2148844261, i64 2148844274, i64 2148844318, i64 2148844352, i64 2148844373}
!98 = !{i32 0, i32 33}
!99 = !{i64 2160194855}
!100 = !{i8 0, i8 2}
!101 = !{i64 2148250145, i64 2148250171, i64 2148250200, i64 2148250234, i64 2148250265, i64 2148250288}
!102 = !{i64 2148252610, i64 2148252636, i64 2148252665, i64 2148252699, i64 2148252730, i64 2148252753}
!103 = !{i64 2160805760}
!104 = !{!"branch_weights", i32 1, i32 4001}
!105 = !{i64 2148351968}
!106 = !{i64 733881, i64 733905, i64 733926, i64 733943, i64 733960}
!107 = !{i64 2148352194}
!108 = !{i64 2162089040}
!109 = !{i64 2164814239, i64 2164814737, i64 2164814276, i64 2164814332, i64 2164814366, i64 2164814390, i64 2164814431, i64 2164814452, i64 2164814480, i64 2164814514}
!110 = !{i64 2164825527, i64 2164826025, i64 2164825564, i64 2164825620, i64 2164825654, i64 2164825678, i64 2164825719, i64 2164825740, i64 2164825768, i64 2164825802}
