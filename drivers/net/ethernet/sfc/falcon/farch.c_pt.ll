; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/farch.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/farch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ef4_farch_register_test = type { i32, %union.ef4_oword }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%union.ef4_qword = type { [1 x i64] }
%struct.ef4_tx_buffer = type { ptr, %union.anon.146, i16, i16, i16, i16 }
%union.anon.146 = type { %union.ef4_qword }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.ef4_rx_buffer = type { i32, ptr, i16, i16, i16 }
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
%union.ef4_dword = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ef4_farch_filter_table = type { i32, i32, i32, i32, i32, ptr, ptr, [10 x i32] }
%struct.ef4_farch_filter_spec = type { i8, i8, i16, [3 x i32] }
%struct.ef4_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"wrote %08x:%08x:%08x:%08x read %08x:%08x:%08x:%08x at address 0x%x mask %08x:%08x:%08x:%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ef4_farch_rx_init.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_farch_rx_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/sfc/falcon/farch.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RX queue %d ring in special buffers %d-%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"channel %d unknown event type %d (data %08x:%08x)\0A\00", [45 x i8] zeroinitializer }, align 32
@ef4_farch_ev_init.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_farch_ev_init\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"channel %d event queue in special buffers %d-%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"SYSTEM ERROR %08x:%08x:%08x:%08x status %08x:%08x:%08x:%08x: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"disabling bus mastering\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no recognised error\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SYSTEM ERROR: memory parity error %08x:%08x:%08x:%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SYSTEM ERROR - reset scheduled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"SYSTEM ERROR - max number of errors seen.NIC will be disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@ef4_farch_filter_range_table = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 3, i32 3], [36 x i8] zeroinitializer }, align 32
@ef4_alloc_special_buffer.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ef4_alloc_special_buffer\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"allocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", [63 x i8] zeroinitializer }, align 32
@ef4_init_special_buffer.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ef4_init_special_buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mapping special buffer %d at %llx\0A\00", [61 x i8] zeroinitializer }, align 32
@ef4_fini_special_buffer.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ef4_fini_special_buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unmapping special buffers %d-%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ef4_free_special_buffer.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ef4_free_special_buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"deallocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to flush %d queues (rx %d+%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ef4_check_tx_flush_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"flush did not complete on TXQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"flush complete on TXQ %d, so drain the queue\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dropped %d events (index=%d expected=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"channel %d unexpected TX event %08x:%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@ef4_farch_handle_generated_event.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ef4_farch_handle_generated_event\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"channel %d received generated event %08x:%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@ef4_farch_handle_driver_event.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ef4_farch_handle_driver_event\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel %d EVQ %d initialised\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"channel %d seen DRIVER RX_RESET event. Resetting.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"RX DMA Q %d reports descriptor fetch error. RX Q %d is disabled.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"TX DMA Q %d reports descriptor fetch error. TX Q %d is disabled.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RXQ %d flush retry\0A\00", [44 x i8] zeroinitializer }, align 32
@ef4_farch_filter_type_match_pri = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\01\00\01\02\03\00\00\04\04", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 11, i64 14, i64 15]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 272, i64 610, i64 619, i64 1024]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 145, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 534, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1314, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1342, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1454, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1465, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1484, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1488, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [29 x i8] c"ef4_farch_filter_range_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2260, i32 45 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 238, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 181, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 203, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 254, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 703, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 629, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 638, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 962, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 858, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1176, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1204, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1223, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1233, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1240, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1128, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [32 x i8] c"ef4_farch_filter_type_match_pri\00", align 1
@___asan_gen_.154 = private constant [43 x i8] c"../drivers/net/ethernet/sfc/falcon/farch.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2249, i32 17 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ef4_farch_filter_range_table, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ef4_farch_filter_type_match_pri], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_farch_filter_range_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef4_farch_filter_type_match_pri to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_test_registers(ptr noundef %efx, ptr nocapture noundef readonly %regs, i32 noundef %n_regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_regs)
  %cmp2055.not = icmp eq i32 %n_regs, 0
  br i1 %cmp2055.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.02056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc1339, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ef4_farch_register_test, ptr %regs, i32 %i.02056
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %mask3 = getelementptr %struct.ef4_farch_register_test, ptr %regs, i32 %i.02056, i32 1
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
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !85
  %add6.i = add i32 %1, 4
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %8, i32 %add6.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !85
  %add9.i = add i32 %1, 8
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %11, i32 %add9.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !85
  %original.sroa.9.8.insert.ext = zext i32 %12 to i64
  %original.sroa.9.8.insert.shift = shl nuw i64 %original.sroa.9.8.insert.ext, 32
  %add12.i = add i32 %1, 12
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %14, i32 %add12.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #15, !srcloc !85
  %original.sroa.9.12.insert.ext = zext i32 %15 to i64
  %original.sroa.9.12.insert.insert = or i64 %original.sroa.9.8.insert.shift, %original.sroa.9.12.insert.ext
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #15
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end38.thread

cond.true28:                                      ; preds = %cond.false26
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end56.thread

cond.true46:                                      ; preds = %cond.false44
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end75

cond.true65:                                      ; preds = %cond.false63
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end394

cond.false305:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.02044)
  %cmp306.not = icmp eq i32 %j.02044, 32
  br i1 %cmp306.not, label %cond.end394.thread, label %cond.true383

cond.true383:                                     ; preds = %cond.false305
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end547

cond.end394.thread:                               ; preds = %cond.false305
  br i1 %or.cond173219611968, label %cond.end394.thread.cond.end547_crit_edge, label %cond.end394.thread.cond.true536_crit_edge

cond.end394.thread.cond.true536_crit_edge:        ; preds = %cond.end394.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true536

cond.end394.thread.cond.end547_crit_edge:         ; preds = %cond.end394.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end547

cond.false458:                                    ; preds = %cond.end394
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %j.02044)
  %cmp459.not = icmp eq i32 %j.02044, 64
  br i1 %cmp459.not, label %cond.false458.cond.end547_crit_edge, label %cond.false458.cond.true536_crit_edge

cond.false458.cond.true536_crit_edge:             ; preds = %cond.false458
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true536

cond.false458.cond.end547_crit_edge:              ; preds = %cond.false458
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end700

cond.false611:                                    ; preds = %cond.end547
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %j.02044)
  %cmp612.not = icmp eq i32 %j.02044, 96
  br i1 %cmp612.not, label %cond.false611.cond.end700_crit_edge, label %cond.true689

cond.false611.cond.end700_crit_edge:              ; preds = %cond.false611
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end700

cond.true689:                                     ; preds = %cond.false611
  call void @__sanitizer_cov_trace_pc() #17
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
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %33 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1749 = getelementptr i8, ptr %34, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1749, i32 %or244) #15, !srcloc !86
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %36, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %or39719851997) #15, !srcloc !86
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %38, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %or550) #15, !srcloc !86
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1752 = getelementptr i8, ptr %40, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i1752, i32 %or703) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  %call2.i1754 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %41 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1756 = getelementptr i8, ptr %42, i32 %1
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1756) #15, !srcloc !85
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1758 = getelementptr i8, ptr %45, i32 %add6.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i1758) #15, !srcloc !85
  %47 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i1761 = getelementptr i8, ptr %48, i32 %add9.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i1761) #15, !srcloc !85
  %50 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i1764 = getelementptr i8, ptr %51, i32 %add12.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i1764) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i1754) #15
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
  br i1 %tobool.not.i, label %ef4_masked_compare_oword.exit, label %cond.end700.do.body1341_crit_edge

cond.end700.do.body1341_crit_edge:                ; preds = %cond.end700
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1341

ef4_masked_compare_oword.exit:                    ; preds = %cond.end700
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
  br i1 %tobool8.i.not, label %do.body709, label %ef4_masked_compare_oword.exit.do.body1341_crit_edge

ef4_masked_compare_oword.exit.do.body1341_crit_edge: ; preds = %ef4_masked_compare_oword.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1341

do.body709:                                       ; preds = %ef4_masked_compare_oword.exit
  %and822 = and i32 %22, %reg.sroa.0.sroa.0.0.extract.trunc1883
  br i1 %or.cond1731195119591969, label %do.body709.cond.end971_crit_edge, label %cond.false933

do.body709.cond.end971_crit_edge:                 ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end971

cond.false933:                                    ; preds = %do.body709
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.02044)
  %cmp934.not = icmp eq i32 %j.02044, 32
  br i1 %cmp934.not, label %cond.end971.thread, label %cond.end947

cond.end947:                                      ; preds = %cond.false933
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end1124

cond.end971.thread:                               ; preds = %cond.false933
  br i1 %or.cond173219611968, label %cond.end971.thread.cond.end1124_crit_edge, label %cond.end971.thread.cond.end1100_crit_edge

cond.end971.thread.cond.end1100_crit_edge:        ; preds = %cond.end971.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end1100

cond.end971.thread.cond.end1124_crit_edge:        ; preds = %cond.end971.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end1124

cond.false1086:                                   ; preds = %cond.end971
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %j.02044)
  %cmp1087.not = icmp eq i32 %j.02044, 64
  br i1 %cmp1087.not, label %cond.false1086.cond.end1124_crit_edge, label %cond.false1086.cond.end1100_crit_edge

cond.false1086.cond.end1100_crit_edge:            ; preds = %cond.false1086
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end1100

cond.false1086.cond.end1124_crit_edge:            ; preds = %cond.false1086
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end1277

cond.false1239:                                   ; preds = %cond.end1124
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %j.02044)
  %cmp1240.not = icmp eq i32 %j.02044, 96
  br i1 %cmp1240.not, label %cond.false1239.cond.end1277_crit_edge, label %cond.end1253

cond.false1239.cond.end1277_crit_edge:            ; preds = %cond.false1239
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end1277

cond.end1253:                                     ; preds = %cond.false1239
  call void @__sanitizer_cov_trace_pc() #17
  %sub1255 = add nsw i32 %j.02044, -96
  %shl1256 = shl nuw i32 1, %sub1255
  br label %cond.end1277

cond.end1277:                                     ; preds = %cond.end1253, %cond.false1239.cond.end1277_crit_edge, %cond.end1124.cond.end1277_crit_edge
  %cond1275 = phi i32 [ 0, %cond.end1124.cond.end1277_crit_edge ], [ %shl1256, %cond.end1253 ], [ 1, %cond.false1239.cond.end1277_crit_edge ]
  %57 = xor i32 %cond1275, -1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %and1281 = and i32 %58, %reg.sroa.21.12.extract.trunc
  %call3.i1768 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %59 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1770 = getelementptr i8, ptr %60, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1770, i32 %and822) #15, !srcloc !86
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i1773 = getelementptr i8, ptr %62, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i1773, i32 %and9752016) #15, !srcloc !86
  %63 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i1776 = getelementptr i8, ptr %64, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i1776, i32 %and1128) #15, !srcloc !86
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1779 = getelementptr i8, ptr %66, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i1779, i32 %and1281) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i1768) #15
  %call2.i1781 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1783 = getelementptr i8, ptr %68, i32 %1
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1783) #15, !srcloc !85
  %70 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1785 = getelementptr i8, ptr %71, i32 %add6.i
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i1785) #15, !srcloc !85
  %73 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i1788 = getelementptr i8, ptr %74, i32 %add9.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i1788) #15, !srcloc !85
  %76 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i1791 = getelementptr i8, ptr %77, i32 %add12.i
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i1791) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i1781) #15
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
  br i1 %tobool.not.i1795, label %ef4_masked_compare_oword.exit1803, label %cond.end1277.do.body1341_crit_edge

cond.end1277.do.body1341_crit_edge:               ; preds = %cond.end1277
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1341

ef4_masked_compare_oword.exit1803:                ; preds = %cond.end1277
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
  br i1 %tobool8.i1801.not, label %ef4_masked_compare_oword.exit1803.for.inc_crit_edge, label %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge

ef4_masked_compare_oword.exit1803.do.body1341_crit_edge: ; preds = %ef4_masked_compare_oword.exit1803
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1341

ef4_masked_compare_oword.exit1803.for.inc_crit_edge: ; preds = %ef4_masked_compare_oword.exit1803
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %ef4_masked_compare_oword.exit1803.for.inc_crit_edge, %cond.end75.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11

for.end:                                          ; preds = %for.inc
  %call3.i1805 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %79 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i1807 = getelementptr i8, ptr %80, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1807, i32 %6) #15, !srcloc !86
  %81 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i1810 = getelementptr i8, ptr %82, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i1810, i32 %9) #15, !srcloc !86
  %83 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i1813 = getelementptr i8, ptr %84, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i1813, i32 %12) #15, !srcloc !86
  %85 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i1816 = getelementptr i8, ptr %86, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i1816, i32 %15) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i1805) #15
  %inc1339 = add nuw i32 %i.02056, 1
  %exitcond2061.not = icmp eq i32 %inc1339, %n_regs
  br i1 %exitcond2061.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body1341:                                      ; preds = %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge, %cond.end1277.do.body1341_crit_edge, %ef4_masked_compare_oword.exit.do.body1341_crit_edge, %cond.end700.do.body1341_crit_edge
  %reg.sroa.0.sroa.14.0 = phi i32 [ %or39719851997, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and9752016, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or39719851997, %cond.end700.do.body1341_crit_edge ], [ %and9752016, %cond.end1277.do.body1341_crit_edge ]
  %reg.sroa.0.sroa.0.0 = phi i32 [ %or244, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and822, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or244, %cond.end700.do.body1341_crit_edge ], [ %and822, %cond.end1277.do.body1341_crit_edge ]
  %reg.sroa.21.0.off0 = phi i32 [ %or703, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and1281, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or703, %cond.end700.do.body1341_crit_edge ], [ %and1281, %cond.end1277.do.body1341_crit_edge ]
  %reg.sroa.21.0.off32 = phi i32 [ %or550, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %and1128, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %or550, %cond.end700.do.body1341_crit_edge ], [ %and1128, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.0.sroa.8.0 = phi i32 [ %46, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %72, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %46, %cond.end700.do.body1341_crit_edge ], [ %72, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.0.sroa.0.0 = phi i32 [ %43, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %69, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %43, %cond.end700.do.body1341_crit_edge ], [ %69, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.11.3.off0 = phi i32 [ %52, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %78, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %52, %cond.end700.do.body1341_crit_edge ], [ %78, %cond.end1277.do.body1341_crit_edge ]
  %buf.sroa.11.3.off32 = phi i32 [ %49, %ef4_masked_compare_oword.exit.do.body1341_crit_edge ], [ %75, %ef4_masked_compare_oword.exit1803.do.body1341_crit_edge ], [ %49, %cond.end700.do.body1341_crit_edge ], [ %75, %cond.end1277.do.body1341_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %87 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_enable, align 8
  %and1342 = and i32 %88, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1342)
  %tobool1343.not = icmp eq i32 %and1342, 0
  br i1 %tobool1343.not, label %do.body1341.cleanup_crit_edge, label %if.then1344

do.body1341.cleanup_crit_edge:                    ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1344:                                      ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
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
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull @.str, i32 noundef %91, i32 noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %98, i32 noundef %1, i32 noundef %19, i32 noundef %18, i32 noundef %17, i32 noundef %16) #18
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
define dso_local void @ef4_farch_tx_write(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %write_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 19
  %0 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_count, align 4
  %xmit_more_available = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 22
  %2 = ptrtoint ptr %xmit_more_available to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %xmit_more_available, align 16
  %insert_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %3 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %insert_count, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp = icmp eq i32 %1, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader, !prof !87

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  %buffer4 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  %txd.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6
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
  %10 = load ptr, ptr %buffer4, align 16
  %11 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txd.i, align 8
  %add.ptr.i = getelementptr %union.ef4_qword, ptr %12, i32 %and
  %inc = add i32 %6, 1
  store i32 %inc, ptr %write_count, align 4
  %13 = getelementptr %struct.ef4_tx_buffer, ptr %10, i32 %and, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %add.ptr.i, align 8
  %flags = getelementptr %struct.ef4_tx_buffer, ptr %10, i32 %and, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 8
  %20 = and i16 %19, 1
  %and14 = zext i16 %20 to i32
  %shl = shl nuw nsw i32 %and14, 30
  %len = getelementptr %struct.ef4_tx_buffer, ptr %10, i32 %and, i32 3
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body35:                                        ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !88
  tail call void @arm_heavy_mb() #15
  %empty_read_count1.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 26
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
  br i1 %retval.0.i.i, label %ef4_nic_may_push_tx_desc.exit, label %do.body35.if.else_crit_edge

do.body35.if.else_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

ef4_nic_may_push_tx_desc.exit:                    ; preds = %do.body35
  %32 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %write_count, align 4
  %sub.i = sub i32 %33, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 1
  br i1 %cmp.i, label %if.then39, label %ef4_nic_may_push_tx_desc.exit.if.else_crit_edge

ef4_nic_may_push_tx_desc.exit.if.else_crit_edge:  ; preds = %ef4_nic_may_push_tx_desc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then39:                                        ; preds = %ef4_nic_may_push_tx_desc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptr_mask, align 4
  %and41 = and i32 %35, %1
  %36 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txd.i, align 8
  %add.ptr.i73 = getelementptr %union.ef4_qword, ptr %37, i32 %and41
  %38 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %write_count, align 4
  %and.i = and i32 %39, %35
  %40 = tail call i32 @llvm.bswap.i32(i32 %and.i) #15
  %41 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr.i73, align 8
  %reg.sroa.0.sroa.0.0.extract.shift.i = lshr i64 %42, 32
  %reg.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %reg.sroa.0.sroa.0.0.extract.shift.i to i32
  %reg.sroa.0.sroa.6.0.extract.trunc.i = trunc i64 %42 to i32
  %43 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_queue, align 128
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %45 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue.i, align 4
  %mul.i.i = shl i32 %46, 13
  %add.i.i = or i32 %mul.i.i, 2576
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %44, i32 0, i32 13
  %47 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %reg.sroa.0.sroa.0.0.extract.trunc.i) #15, !srcloc !86
  %add3.i.i = or i32 %mul.i.i, 2580
  %49 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %50, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %reg.sroa.0.sroa.6.0.extract.trunc.i) #15, !srcloc !86
  %add5.i.i = or i32 %mul.i.i, 2584
  %51 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %52, i32 %add5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 128) #15, !srcloc !86
  %add7.i.i = or i32 %mul.i.i, 2588
  %53 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %54, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %40) #15, !srcloc !86
  %pushes = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 21
  %55 = ptrtoint ptr %pushes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pushes, align 4
  %inc43 = add i32 %56, 1
  store i32 %inc43, ptr %pushes, align 4
  br label %cleanup

if.else:                                          ; preds = %ef4_nic_may_push_tx_desc.exit.if.else_crit_edge, %do.body35.if.else_crit_edge
  %57 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %write_count, align 4
  %59 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ptr_mask, align 4
  %and.i76 = and i32 %60, %58
  %61 = tail call i32 @llvm.bswap.i32(i32 %and.i76) #15
  %62 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_queue, align 128
  %queue.i77 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %64 = ptrtoint ptr %queue.i77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %queue.i77, align 4
  %mul.i.i78 = shl i32 %65, 13
  %add.i.i79 = or i32 %mul.i.i78, 2588
  %membase.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %63, i32 0, i32 13
  %66 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %67, i32 %add.i.i79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %61) #15, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef4_farch_tx_limit_len(ptr nocapture noundef readonly %tx_queue, i32 noundef %dma_addr, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = and i32 %dma_addr, 4095
  %add = sub nuw nsw i32 4096, %neg
  %0 = tail call i32 @llvm.umin.i32(i32 %add, i32 %len)
  %1 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %4, i32 0, i32 79
  %5 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp slt i32 %6, 2
  br i1 %cmp1, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %and2 = and i32 %dma_addr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub nuw nsw i32 512, %and2
  %7 = tail call i32 @llvm.umin.i32(i32 %0, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %7, %if.then ], [ %0, %land.lhs.true.if.end_crit_edge ], [ %0, %entry.if.end_crit_edge ]
  ret i32 %len.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_tx_probe(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %ptr_mask = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  %2 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask, align 4
  %txd = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6
  %add = shl i32 %3, 3
  %mul = add i32 %add, 8
  %call = tail call fastcc i32 @ef4_alloc_special_buffer(ptr noundef %1, ptr noundef %txd, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_alloc_special_buffer(ptr noundef %efx, ptr noundef %buffer, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 4095
  %and = and i32 %add, -4096
  %call = tail call i32 @ef4_nic_alloc_buffer(ptr noundef %efx, ptr noundef %buffer, i32 noundef %and, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %div61 = lshr i32 %add, 12
  %entries = getelementptr inbounds %struct.ef4_special_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %div61, ptr %entries, align 4
  %dma_addr = getelementptr inbounds %struct.ef4_buffer, ptr %buffer, i32 0, i32 1
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_addr, align 4
  %and2 = and i32 %2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end11, label %do.body7, !prof !89

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #15, !srcloc !90
  unreachable

do.end11:                                         ; preds = %if.end
  %next_buffer_table = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 33
  %3 = ptrtoint ptr %next_buffer_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_buffer_table, align 8
  %index = getelementptr inbounds %struct.ef4_special_buffer, ptr %buffer, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %index, align 4
  %6 = load i32, ptr %next_buffer_table, align 8
  %add14 = add i32 %6, %div61
  store i32 %add14, ptr %next_buffer_table, align 8
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and16 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end11.return_crit_edge, label %do.body19

do.end11.return_crit_edge:                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body19:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_alloc_special_buffer.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_alloc_special_buffer, %if.then28)) #15
          to label %return [label %if.then28], !srcloc !91

if.then28:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entries, align 4
  %add32 = add i32 %12, -1
  %sub = add i32 %add32, %14
  %15 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr, align 4
  %conv = zext i32 %16 to i64
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  %19 = ptrtoint ptr %18 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %19) #15
  %conv39 = zext i32 %call.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_alloc_special_buffer.__UNIQUE_ID_ddebug524, ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %sub, i64 noundef %conv, i32 noundef %and, ptr noundef %18, i64 noundef %conv39) #15
  br label %return

return:                                           ; preds = %if.then28, %do.body19, %do.end11.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ 0, %do.end11.return_crit_edge ], [ 0, %if.then28 ], [ 0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_tx_init(ptr nocapture noundef readonly %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca %union.ef4_oword, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #15
  %2 = getelementptr inbounds [2 x i64], ptr %reg, i32 0, i32 1
  %txd = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6
  tail call fastcc void @ef4_init_special_buffer(ptr noundef %1, ptr noundef %txd)
  %channel = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 2
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel, align 8
  %channel2 = getelementptr inbounds %struct.ef4_channel, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel2, align 4
  %shl = shl i32 %6, 24
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue, align 4
  %shl4 = shl i32 %8, 5
  %or6139 = or i32 %shl4, %shl
  %entries = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %entries, align 8
  %11 = tail call i32 @llvm.cttz.i32(i32 %10, i1 false) #15, !range !92
  %shl8 = shl nuw nsw i32 %11, 3
  %or10140 = or i32 %or6139, %shl8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or10140)
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %reg, align 8
  %index = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %shl15 = shl i32 %15, 4
  %shr = lshr i32 %6, 8
  %or21141 = or i32 %shl15, %shr
  %16 = tail call i32 @llvm.bswap.i32(i32 %or21141)
  %arrayidx28 = getelementptr inbounds [4 x i32], ptr %reg, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx28, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %2, align 8
  %arrayidx30 = getelementptr inbounds [4 x i32], ptr %reg, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx30, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %21, i32 0, i32 79
  %22 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp sgt i32 %23, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i32 %8, 1
  %24 = xor i32 %and, 1
  %or48 = mul nuw nsw i32 %24, 6
  %or73 = or i32 %or48, 9
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or73, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %txd_ptr_tbl_base = getelementptr inbounds %struct.ef4_nic_type, ptr %21, i32 0, i32 80
  %26 = ptrtoint ptr %txd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txd_ptr_tbl_base, align 8
  %mul.i = shl i32 %8, 4
  %add.i = add i32 %27, %mul.i
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg, align 8
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %29) #15, !srcloc !86
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  %add7.i.i = add i32 %add.i, 4
  %34 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %35, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %33) #15, !srcloc !86
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 8
  %add9.i.i = add i32 %add.i, 8
  %38 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %39, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %37) #15, !srcloc !86
  %40 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx30, align 4
  %add11.i.i = add i32 %add.i, 12
  %42 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %43, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 %41) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %type.i, align 4
  %revision.i143 = getelementptr inbounds %struct.ef4_nic_type, ptr %45, i32 0, i32 79
  %46 = ptrtoint ptr %revision.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %revision.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp83 = icmp slt i32 %47, 2
  br i1 %cmp83, label %do.end88, label %if.end.if.end96_crit_edge

if.end.if.end96_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

do.end88:                                         ; preds = %if.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %48 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 2608
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !85
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %reg, align 8
  %52 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %53, i32 2612
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !85
  %55 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx28, align 4
  %56 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %57, i32 2616
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !85
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %2, align 8
  %60 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %61, i32 2620
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #15, !srcloc !85
  %63 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx30, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i) #15
  %64 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %queue, align 4
  %and90 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %xor.i145 = and i32 %65, 31
  %rem.i.i146 = xor i32 %xor.i145, 24
  %shl.i.i147 = shl nuw i32 1, %rem.i.i146
  %div2.i.i148 = lshr i32 %65, 5
  %add.ptr.i.i149 = getelementptr i32, ptr %reg, i32 %div2.i.i148
  br i1 %tobool91.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i = xor i32 %shl.i.i147, -1
  %66 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i149, align 4
  %and.i.i = and i32 %67, %neg.i.i
  br label %if.end95

if.else:                                          ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i149, align 4
  %or.i.i = or i32 %69, %shl.i.i147
  br label %if.end95

if.end95:                                         ; preds = %if.else, %if.then92
  %or.i.i.sink = phi i32 [ %or.i.i, %if.else ], [ %and.i.i, %if.then92 ]
  %70 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i.i.sink, ptr %add.ptr.i.i149, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %71 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg, align 8
  %73 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i152 = getelementptr i8, ptr %74, i32 2608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i152, i32 %72) #15, !srcloc !86
  %75 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx28, align 4
  %77 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %78, i32 2612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %76) #15, !srcloc !86
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %2, align 8
  %81 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %82, i32 2616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %80) #15, !srcloc !86
  %83 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx30, align 4
  %85 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i154 = getelementptr i8, ptr %86, i32 2620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i154, i32 %84) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i) #15
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end.if.end96_crit_edge
  %87 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %type.i, align 4
  %revision.i156 = getelementptr inbounds %struct.ef4_nic_type, ptr %88, i32 0, i32 79
  %89 = ptrtoint ptr %revision.i156 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %revision.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp98 = icmp sgt i32 %90, 1
  br i1 %cmp98, label %do.body101, label %if.end96.if.end116_crit_edge

if.end96.if.end116_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end116

do.body101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %queue, align 4
  %and103 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %cond = select i1 %tobool104.not, i32 352321536, i32 0
  %93 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %cond, ptr %reg, align 8
  %94 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arrayidx28, align 4
  %95 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %2, align 8
  %mul.i157 = shl i32 %92, 4
  %add.i158 = add i32 %mul.i157, 16252928
  %call3.i.i160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %96 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i162 = getelementptr i8, ptr %97, i32 %add.i158
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i162, i32 %cond) #15, !srcloc !86
  %add7.i.i164 = add i32 %mul.i157, 16252932
  %98 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i165 = getelementptr i8, ptr %99, i32 %add7.i.i164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i165, i32 0) #15, !srcloc !86
  %add9.i.i167 = add i32 %mul.i157, 16252936
  %100 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i168 = getelementptr i8, ptr %101, i32 %add9.i.i167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i168, i32 0) #15, !srcloc !86
  %add11.i.i170 = add i32 %mul.i157, 16252940
  %102 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i171 = getelementptr i8, ptr %103, i32 %add11.i.i170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i171, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i160) #15
  br label %if.end116

if.end116:                                        ; preds = %do.body101, %if.end96.if.end116_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_init_special_buffer(ptr noundef %efx, ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.ef4_special_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39.not = icmp eq i32 %1, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %index1 = getelementptr inbounds %struct.ef4_special_buffer, ptr %buffer, i32 0, i32 1
  %dma_addr2 = getelementptr inbounds %struct.ef4_buffer, ptr %buffer, i32 0, i32 1
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %membase.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
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
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.do.body15_crit_edge, label %do.body5

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

do.body5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_special_buffer.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_init_special_buffer, %if.then9)) #15
          to label %do.body15 [label %if.then9], !srcloc !91

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %conv = zext i32 %add3 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_special_buffer.__UNIQUE_ID_ddebug522, ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %add, i64 noundef %conv) #15
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
  %buf_tbl_base.i = getelementptr inbounds %struct.ef4_nic_type, ptr %17, i32 0, i32 82
  %18 = ptrtoint ptr %buf_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_tbl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 %19
  %mul.i.i = shl i32 %add, 3
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #15, !srcloc !86
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %13) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  %inc = add nuw i32 %i.040, 1
  %20 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entries, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %do.body15.for.body_crit_edge, label %do.body15.for.end_crit_edge

do.body15.for.end_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.body15.for.body_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %do.body15.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_tx_fini(ptr nocapture noundef readonly %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %txd_ptr_tbl_base = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 80
  %4 = ptrtoint ptr %txd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txd_ptr_tbl_base, align 8
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  %mul.i = shl i32 %7, 4
  %add.i = add i32 %mul.i, %5
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !86
  %add7.i.i = add i32 %add.i, 4
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %11, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #15, !srcloc !86
  %add9.i.i = add i32 %add.i, 8
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %13, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #15, !srcloc !86
  %add11.i.i = add i32 %add.i, 12
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %15, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  %txd = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6
  tail call fastcc void @ef4_fini_special_buffer(ptr noundef %1, ptr noundef %txd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_fini_special_buffer(ptr noundef %efx, ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.ef4_special_buffer, ptr %buffer, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.ef4_special_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.do.body19_crit_edge, label %do.body5

do.body.do.body19_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body19

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_special_buffer.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_fini_special_buffer, %if.then9)) #15
          to label %do.body19 [label %if.then9], !srcloc !91

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_special_buffer.__UNIQUE_ID_ddebug523, ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %9, i32 noundef %sub14) #15
  br label %do.body19

do.body19:                                        ; preds = %if.then9, %do.body5, %do.body.do.body19_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %1)
  %13 = or i32 %sub, 1073741824
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #15, !srcloc !86
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %18, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %14) #15, !srcloc !86
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %20, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #15, !srcloc !86
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %22, i32 1628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_tx_remove(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %txd = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6
  %2 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txd, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.ef4_free_special_buffer.exit_crit_edge, label %do.body.i

entry.ef4_free_special_buffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_free_special_buffer.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end19.i_crit_edge, label %do.body3.i

do.body.i.do.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_free_special_buffer.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_farch_tx_remove, %if.then7.i)) #15
          to label %do.end19.i [label %if.then7.i], !srcloc !91

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %index.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %entries.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries.i, align 4
  %add.i = add i32 %9, -1
  %sub.i = add i32 %add.i, %11
  %dma_addr.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %13 to i64
  %len.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txd, align 4
  %18 = ptrtoint ptr %17 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %18) #15
  %conv16.i = zext i32 %call.i.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_free_special_buffer.__UNIQUE_ID_ddebug525, ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %sub.i, i64 noundef %conv.i, i32 noundef %15, ptr noundef %17, i64 noundef %conv16.i) #15
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end19.i_crit_edge
  tail call void @ef4_nic_free_buffer(ptr noundef %1, ptr noundef %txd) #15
  %entries21.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %entries21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %entries21.i, align 4
  br label %ef4_free_special_buffer.exit

ef4_free_special_buffer.exit:                     ; preds = %do.end19.i, %entry.ef4_free_special_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_rx_write(ptr nocapture noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %notified_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 8
  %added_count = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 7
  %2 = ptrtoint ptr %notified_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %notified_count, align 4
  %4 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %added_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not20 = icmp eq i32 %3, %5
  br i1 %cmp.not20, label %entry.do.body_crit_edge, label %while.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %ptr_mask = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  %rxd.i.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3
  %buffer.i.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %3, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %8, %6
  %9 = ptrtoint ptr %rxd.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxd.i.i, align 4
  %add.ptr.i.i = getelementptr %union.ef4_qword, ptr %10, i32 %and
  %11 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ef4_rx_buffer, ptr %12, i32 %and
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr.i.i, align 8
  %len.i = getelementptr %struct.ef4_rx_buffer, ptr %12, i32 %and, i32 3
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len.i, align 2
  %conv3.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_queue, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type.i, align 4
  %rx_buffer_padding.i = getelementptr inbounds %struct.ef4_nic_type, ptr %22, i32 0, i32 89
  %23 = ptrtoint ptr %rx_buffer_padding.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buffer_padding.i, align 4
  %sub.i = sub i32 %conv3.i, %24
  %25 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #15
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
  %31 = load i32, ptr %added_count, align 4
  %cmp.not = icmp eq i32 %inc, %31
  br i1 %cmp.not, label %while.body.do.body_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %while.body.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !93
  tail call void @arm_heavy_mb() #15
  %32 = ptrtoint ptr %added_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %added_count, align 4
  %ptr_mask5 = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  %34 = ptrtoint ptr %ptr_mask5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptr_mask5, align 4
  %and6 = and i32 %35, %33
  %36 = tail call i32 @llvm.bswap.i32(i32 %and6)
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %37 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %38, 13
  %add.i = or i32 %mul.i, 2108
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %36) #15, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_rx_probe(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %ptr_mask = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 4
  %2 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask, align 4
  %rxd = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3
  %add = shl i32 %3, 3
  %mul = add i32 %add, 8
  %call = tail call fastcc i32 @ef4_alloc_special_buffer(ptr noundef %1, ptr noundef %rxd, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_rx_init(ptr nocapture noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 79
  %4 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rx_scatter = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 54
  %6 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_scatter, align 4, !range !94
  %8 = shl nuw nsw i8 %7, 1
  %9 = or i8 %8, 1
  %phi.bo112 = zext i8 %9 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i32 [ 3, %entry.lor.end_crit_edge ], [ %phi.bo112, %lor.rhs ]
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.end.do.end20_crit_edge, label %do.body7

lor.end.do.end20_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20

do.body7:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_farch_rx_init.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_farch_rx_init, %if.then13)) #15
          to label %do.end20 [label %if.then13], !srcloc !91

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %13 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel.i, align 4
  %index = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entries, align 4
  %add = add i32 %18, -1
  %sub = add i32 %add, %20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_farch_rx_init.__UNIQUE_ID_ddebug534, ptr noundef %14, ptr noundef nonnull @.str.4, i32 noundef %16, i32 noundef %18, i32 noundef %sub) #15
  br label %do.end20

do.end20:                                         ; preds = %if.then13, %do.body7, %lor.end.do.end20_crit_edge
  %scatter_n = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 10
  %21 = ptrtoint ptr %scatter_n to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %scatter_n, align 4
  %rxd21 = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3
  tail call fastcc void @ef4_init_special_buffer(ptr noundef %1, ptr noundef %rxd21)
  %channel = getelementptr i8, ptr %rx_queue, i32 -352
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  %shl = shl i32 %23, 24
  %shl26 = shl i32 %23, 5
  %entries30 = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %entries30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries30, align 4
  %26 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #15, !range !92
  %shl32 = shl nuw nsw i32 %26, 3
  %or34104 = or i32 %10, %shl26
  %or40105 = or i32 %or34104, %shl
  %27 = or i32 %or40105, %shl32
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %index44 = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %index44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index44, align 4
  %shl45 = shl i32 %30, 4
  %shr = lshr i32 %23, 8
  %or51106 = or i32 %shl45, %shr
  %31 = tail call i32 @llvm.bswap.i32(i32 %or51106)
  %or68107 = select i1 %cmp, i32 25165824, i32 0
  %32 = tail call i32 @llvm.bswap.i32(i32 %or68107)
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %type.i, align 4
  %rxd_ptr_tbl_base = getelementptr inbounds %struct.ef4_nic_type, ptr %34, i32 0, i32 81
  %35 = ptrtoint ptr %rxd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rxd_ptr_tbl_base, align 4
  %mul.i = shl i32 %23, 4
  %add.i = add i32 %36, %mul.i
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %28) #15, !srcloc !86
  %add7.i.i = add i32 %add.i, 4
  %39 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %40, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %31) #15, !srcloc !86
  %add9.i.i = add i32 %add.i, 8
  %41 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %42, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %32) #15, !srcloc !86
  %add11.i.i = add i32 %add.i, 12
  %43 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %44, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_rx_fini(ptr nocapture noundef readonly %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %rxd_ptr_tbl_base = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 81
  %4 = ptrtoint ptr %rxd_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxd_ptr_tbl_base, align 4
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %7, 4
  %add.i = add i32 %mul.i, %5
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !86
  %add7.i.i = add i32 %add.i, 4
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %11, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #15, !srcloc !86
  %add9.i.i = add i32 %add.i, 8
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %13, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #15, !srcloc !86
  %add11.i.i = add i32 %add.i, 12
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %15, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  %rxd = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3
  tail call fastcc void @ef4_fini_special_buffer(ptr noundef %1, ptr noundef %rxd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_rx_remove(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 4
  %rxd = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3
  %2 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxd, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.ef4_free_special_buffer.exit_crit_edge, label %do.body.i

entry.ef4_free_special_buffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_free_special_buffer.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end19.i_crit_edge, label %do.body3.i

do.body.i.do.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_free_special_buffer.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_farch_rx_remove, %if.then7.i)) #15
          to label %do.end19.i [label %if.then7.i], !srcloc !91

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %index.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %entries.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries.i, align 4
  %add.i = add i32 %9, -1
  %sub.i = add i32 %add.i, %11
  %dma_addr.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %13 to i64
  %len.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = ptrtoint ptr %rxd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxd, align 4
  %18 = ptrtoint ptr %17 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %18) #15
  %conv16.i = zext i32 %call.i.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_free_special_buffer.__UNIQUE_ID_ddebug525, ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %sub.i, i64 noundef %conv.i, i32 noundef %15, ptr noundef %17, i64 noundef %conv16.i) #15
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end19.i_crit_edge
  tail call void @ef4_nic_free_buffer(ptr noundef %1, ptr noundef %rxd) #15
  %entries21.i = getelementptr inbounds %struct.ef4_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %entries21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %entries21.i, align 4
  br label %ef4_free_special_buffer.exit

ef4_free_special_buffer.exit:                     ; preds = %do.end19.i, %entry.ef4_free_special_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_fini_dmaq(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then:                                          ; preds = %entry
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then1:                                         ; preds = %if.then
  %type = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %prepare_flush = getelementptr inbounds %struct.ef4_nic_type, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %prepare_flush to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prepare_flush, align 4
  tail call void %9(ptr noundef %efx) #15
  %channel1.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %10 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channel1.i, align 4
  %tobool.not249.i = icmp eq ptr %11, null
  br i1 %tobool.not249.i, label %if.then1.while.cond.preheader.i_crit_edge, label %for.body.lr.ph.i

if.then1.while.cond.preheader.i_crit_edge:        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.then1
  %rxq_flush_pending.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 97
  %n_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %cond.end.i.while.cond.preheader.i_crit_edge, %for.inc19.i.while.cond.preheader.i_crit_edge, %if.then1.while.cond.preheader.i_crit_edge
  %active_queues.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 96
  %rxq_flush_outstanding.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 98
  %rxq_flush_pending52.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 97
  %n_channels61.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %flush_wq.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 99
  br label %land.rhs28.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.0250.i = phi ptr [ %11, %for.body.lr.ph.i ], [ %52, %cond.end.i.for.body.i_crit_edge ]
  %channel1.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0250.i, i32 0, i32 1
  %12 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel1.i.i, align 4
  %14 = ptrtoint ptr %channel.0250.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel.0250.i, align 128
  %tx_channel_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_channel_offset.i.i, align 32
  %sub.i.i = sub i32 %13, %17
  %n_tx_channels.i.i = getelementptr inbounds %struct.ef4_nic, ptr %15, i32 0, i32 40
  %18 = ptrtoint ptr %n_tx_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_tx_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %19)
  %cmp.i.i = icmp ult i32 %sub.i.i, %19
  br i1 %cmp.i.i, label %if.else.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  %tx_queue3.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0250.i, i32 0, i32 32
  %add.ptr.i = getelementptr %struct.ef4_channel, ptr %channel.0250.i, i32 1
  %cmp245.i = icmp ult ptr %tx_queue3.i, %add.ptr.i
  br i1 %cmp245.i, label %if.else.i.land.rhs.i_crit_edge, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.else.i.land.rhs.i_crit_edge:                   ; preds = %if.else.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %ef4_farch_flush_tx_queue.exit.i.land.rhs.i_crit_edge, %if.else.i.land.rhs.i_crit_edge
  %tx_queue.0246.i = phi ptr [ %incdec.ptr.i, %ef4_farch_flush_tx_queue.exit.i.land.rhs.i_crit_edge ], [ %tx_queue3.i, %if.else.i.land.rhs.i_crit_edge ]
  %20 = ptrtoint ptr %tx_queue.0246.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_queue.0246.i, align 128
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %21, i32 0, i32 69
  %22 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev.i.i, align 4
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 140
  %24 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp.i203.i = icmp slt i16 %25, 2
  br i1 %cmp.i203.i, label %ef4_tx_queue_used.exit.i, label %land.rhs.i.for.body8.i_crit_edge

land.rhs.i.for.body8.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body8.i

ef4_tx_queue_used.exit.i:                         ; preds = %land.rhs.i
  %queue.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0246.i, i32 0, i32 1
  %26 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %queue.i.i, align 4
  %and.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %ef4_tx_queue_used.exit.i.for.body8.i_crit_edge, label %ef4_tx_queue_used.exit.i.if.end.i_crit_edge

ef4_tx_queue_used.exit.i.if.end.i_crit_edge:      ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

ef4_tx_queue_used.exit.i.for.body8.i_crit_edge:   ; preds = %ef4_tx_queue_used.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body8.i

for.body8.i:                                      ; preds = %ef4_tx_queue_used.exit.i.for.body8.i_crit_edge, %land.rhs.i.for.body8.i_crit_edge
  %flush_outstanding.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0246.i, i32 0, i32 27
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %flush_outstanding.i.i, i32 noundef 4) #15
  %28 = ptrtoint ptr %flush_outstanding.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flush_outstanding.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %for.body8.i.ef4_farch_flush_tx_queue.exit.i_crit_edge, label %do.end.i.i, !prof !89

for.body8.i.ef4_farch_flush_tx_queue.exit.i_crit_edge: ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_flush_tx_queue.exit.i

do.end.i.i:                                       ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 434, i32 noundef 9, ptr noundef null) #15
  br label %ef4_farch_flush_tx_queue.exit.i

ef4_farch_flush_tx_queue.exit.i:                  ; preds = %do.end.i.i, %for.body8.i.ef4_farch_flush_tx_queue.exit.i_crit_edge
  %call.i.i33.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flush_outstanding.i.i, i32 noundef 4) #15
  %30 = ptrtoint ptr %flush_outstanding.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %flush_outstanding.i.i, align 4
  %queue.i204.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0246.i, i32 0, i32 1
  %31 = ptrtoint ptr %queue.i204.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %queue.i204.i, align 4
  %33 = or i32 %32, 4096
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #15
  %biu_lock.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %21, i32 0, i32 103
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #15
  %membase.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %21, i32 0, i32 13
  %35 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %34) #15, !srcloc !86
  %37 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %38, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 0) #15, !srcloc !86
  %39 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %40, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 0) #15, !srcloc !86
  %41 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %42, i32 2572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #15
  %incdec.ptr.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0246.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %ef4_farch_flush_tx_queue.exit.i.land.rhs.i_crit_edge, label %ef4_farch_flush_tx_queue.exit.i.if.end.i_crit_edge

ef4_farch_flush_tx_queue.exit.i.if.end.i_crit_edge: ; preds = %ef4_farch_flush_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

ef4_farch_flush_tx_queue.exit.i.land.rhs.i_crit_edge: ; preds = %ef4_farch_flush_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

if.end.i:                                         ; preds = %ef4_farch_flush_tx_queue.exit.i.if.end.i_crit_edge, %ef4_tx_queue_used.exit.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %core_index.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0250.i, i32 0, i32 30, i32 1
  %43 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %core_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i205.i = icmp slt i32 %44, 0
  br i1 %cmp.i205.i, label %if.end.i.for.inc19.i_crit_edge, label %for.body15.i

if.end.i.for.inc19.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc19.i

for.body15.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %flush_pending.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0250.i, i32 0, i32 30, i32 6
  %45 = ptrtoint ptr %flush_pending.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %flush_pending.i, align 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rxq_flush_pending.i, i32 1, i32 3, i32 1) #15
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_pending.i, ptr %rxq_flush_pending.i, i32 1, ptr elementtype(i32) %rxq_flush_pending.i) #15, !srcloc !95
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %for.body15.i, %if.end.i.for.inc19.i_crit_edge
  %47 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel1.i.i, align 4
  %add.i = add i32 %48, 1
  %49 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %50)
  %cmp21.i = icmp ult i32 %add.i, %50
  br i1 %cmp21.i, label %cond.end.i, label %for.inc19.i.while.cond.preheader.i_crit_edge

for.inc19.i.while.cond.preheader.i_crit_edge:     ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader.i

cond.end.i:                                       ; preds = %for.inc19.i
  %arrayidx25.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add.i
  %51 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx25.i, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %cond.end.i.while.cond.preheader.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cond.end.i.while.cond.preheader.i_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader.i

land.rhs28.i:                                     ; preds = %if.end109.i.land.rhs28.i_crit_edge, %while.cond.preheader.i
  %timeout.0267.i = phi i32 [ 500, %while.cond.preheader.i ], [ %__ret.1.i, %if.end109.i.land.rhs28.i_crit_edge ]
  %call.i.i192.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #15
  %53 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp30.i = icmp sgt i32 %54, 0
  br i1 %cmp30.i, label %while.body.i, label %land.rhs28.i.while.end.i_crit_edge

land.rhs28.i.while.end.i_crit_edge:               ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs28.i
  %55 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %channel1.i, align 4
  %tobool35.not253.i = icmp eq ptr %56, null
  br i1 %tobool35.not253.i, label %while.body.i.for.end71.i_crit_edge, label %while.body.i.for.body36.i_crit_edge

while.body.i.for.body36.i_crit_edge:              ; preds = %while.body.i
  br label %for.body36.i

while.body.i.for.end71.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end71.i

for.body36.i:                                     ; preds = %cond.end69.i.for.body36.i_crit_edge, %while.body.i.for.body36.i_crit_edge
  %channel.1254.i = phi ptr [ %85, %cond.end69.i.for.body36.i_crit_edge ], [ %56, %while.body.i.for.body36.i_crit_edge ]
  %core_index.i206.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1254.i, i32 0, i32 30, i32 1
  %57 = ptrtoint ptr %core_index.i206.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %core_index.i206.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i207.i = icmp sgt i32 %58, -1
  br i1 %cmp.i207.i, label %if.else39.i, label %for.body36.i.for.inc58.i_crit_edge

for.body36.i.for.inc58.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc58.i

if.else39.i:                                      ; preds = %for.body36.i
  %rx_queue40.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1254.i, i32 0, i32 30
  %call.i.i193.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  %59 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp45.i = icmp sgt i32 %60, 3
  br i1 %cmp45.i, label %if.else39.i.for.inc58.i_crit_edge, label %if.end47.i

if.else39.i.for.inc58.i_crit_edge:                ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc58.i

if.end47.i:                                       ; preds = %if.else39.i
  %flush_pending48.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1254.i, i32 0, i32 30, i32 6
  %61 = ptrtoint ptr %flush_pending48.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flush_pending48.i, align 1, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool49.not.i = icmp eq i8 %62, 0
  br i1 %tobool49.not.i, label %if.end47.i.for.inc58.i_crit_edge, label %if.then50.i

if.end47.i.for.inc58.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc58.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %flush_pending48.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %flush_pending48.i, align 1
  %call.i.i194.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending52.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %rxq_flush_pending52.i, i32 1, i32 3, i32 1) #15
  %64 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_pending52.i, ptr %rxq_flush_pending52.i, i32 1, ptr elementtype(i32) %rxq_flush_pending52.i) #15, !srcloc !96
  %call.i.i195.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %rxq_flush_outstanding.i, i32 1, i32 3, i32 1) #15
  %65 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_outstanding.i, ptr %rxq_flush_outstanding.i, i32 1, ptr elementtype(i32) %rxq_flush_outstanding.i) #15, !srcloc !95
  %66 = ptrtoint ptr %rx_queue40.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_queue40.i, align 4
  %channel.i.i.i = getelementptr %struct.ef4_channel, ptr %channel.1254.i, i32 0, i32 1
  %68 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel.i.i.i, align 4
  %70 = or i32 %69, 16777216
  %71 = call i32 @llvm.bswap.i32(i32 %70) #15
  %biu_lock.i.i208.i = getelementptr inbounds %struct.ef4_nic, ptr %67, i32 0, i32 103
  %call3.i.i209.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i208.i) #15
  %membase.i.i.i210.i = getelementptr inbounds %struct.ef4_nic, ptr %67, i32 0, i32 13
  %72 = ptrtoint ptr %membase.i.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i.i.i210.i, align 4
  %add.ptr.i.i.i211.i = getelementptr i8, ptr %73, i32 2080
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i211.i, i32 %71) #15, !srcloc !86
  %74 = ptrtoint ptr %membase.i.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase.i.i.i210.i, align 4
  %add.ptr.i25.i.i212.i = getelementptr i8, ptr %75, i32 2084
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i212.i, i32 0) #15, !srcloc !86
  %76 = ptrtoint ptr %membase.i.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i.i210.i, align 4
  %add.ptr.i27.i.i213.i = getelementptr i8, ptr %77, i32 2088
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i213.i, i32 0) #15, !srcloc !86
  %78 = ptrtoint ptr %membase.i.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i.i210.i, align 4
  %add.ptr.i29.i.i214.i = getelementptr i8, ptr %79, i32 2092
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i214.i, i32 0) #15, !srcloc !86
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i208.i, i32 noundef %call3.i.i209.i) #15
  br label %for.inc58.i

for.inc58.i:                                      ; preds = %if.then50.i, %if.end47.i.for.inc58.i_crit_edge, %if.else39.i.for.inc58.i_crit_edge, %for.body36.i.for.inc58.i_crit_edge
  %channel59.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1254.i, i32 0, i32 1
  %80 = ptrtoint ptr %channel59.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %channel59.i, align 4
  %add60.i = add i32 %81, 1
  %82 = ptrtoint ptr %n_channels61.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_channels61.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add60.i, i32 %83)
  %cmp62.i = icmp ult i32 %add60.i, %83
  br i1 %cmp62.i, label %cond.end69.i, label %for.inc58.i.for.end71.i_crit_edge

for.inc58.i.for.end71.i_crit_edge:                ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end71.i

cond.end69.i:                                     ; preds = %for.inc58.i
  %arrayidx67.i = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add60.i
  %84 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx67.i, align 4
  %tobool35.not.i = icmp eq ptr %85, null
  br i1 %tobool35.not.i, label %cond.end69.i.for.end71.i_crit_edge, label %cond.end69.i.for.body36.i_crit_edge

cond.end69.i.for.body36.i_crit_edge:              ; preds = %cond.end69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body36.i

cond.end69.i.for.end71.i_crit_edge:               ; preds = %cond.end69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end71.i

for.end71.i:                                      ; preds = %cond.end69.i.for.end71.i_crit_edge, %for.inc58.i.for.end71.i_crit_edge, %while.body.i.for.end71.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 698) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  %call.i.i.i215.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #15
  %86 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i216.i = icmp eq i32 %87, 0
  br i1 %cmp.i216.i, label %for.end71.i.if.end109.i_crit_edge, label %lor.rhs.i.i

for.end71.i.if.end109.i_crit_edge:                ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109.i

lor.rhs.i.i:                                      ; preds = %for.end71.i
  %call.i.i9.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  %88 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %cmp4.i.i = icmp slt i32 %89, 4
  br i1 %cmp4.i.i, label %ef4_farch_flush_wake.exit.i, label %lor.rhs.i.i.if.then83.i_crit_edge

lor.rhs.i.i.if.then83.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then83.i

ef4_farch_flush_wake.exit.i:                      ; preds = %lor.rhs.i.i
  %call.i.i10.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending52.i, i32 noundef 4) #15
  %90 = ptrtoint ptr %rxq_flush_pending52.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %rxq_flush_pending52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp6.i.i = icmp sgt i32 %91, 0
  br i1 %cmp6.i.i, label %ef4_farch_flush_wake.exit.i.if.end109.i_crit_edge, label %ef4_farch_flush_wake.exit.i.if.then83.i_crit_edge

ef4_farch_flush_wake.exit.i.if.then83.i_crit_edge: ; preds = %ef4_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then83.i

ef4_farch_flush_wake.exit.i.if.end109.i_crit_edge: ; preds = %ef4_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109.i

if.then83.i:                                      ; preds = %ef4_farch_flush_wake.exit.i.if.then83.i_crit_edge, %lor.rhs.i.i.if.then83.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  %92 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #15
  %call86261.i = call i32 @prepare_to_wait_event(ptr noundef %flush_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  %call.i.i.i219262.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #15
  %93 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i220263.i = icmp eq i32 %94, 0
  br i1 %cmp.i220263.i, label %if.then83.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge, label %if.then83.i.lor.rhs.i224.i_crit_edge

if.then83.i.lor.rhs.i224.i_crit_edge:             ; preds = %if.then83.i
  br label %lor.rhs.i224.i

if.then83.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge: ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_flush_wake.exit229.thread.i

ef4_farch_flush_wake.exit229.thread.i:            ; preds = %cleanup.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge, %if.then83.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge
  %__ret84.0.lcssa.i = phi i32 [ %timeout.0267.i, %if.then83.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge ], [ %call105.i, %cleanup.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret84.0.lcssa.i)
  %tobool92.not231.i = icmp eq i32 %__ret84.0.lcssa.i, 0
  %spec.store.select138232.i = select i1 %tobool92.not231.i, i32 1, i32 %__ret84.0.lcssa.i
  br label %for.end106.i

lor.rhs.i224.i:                                   ; preds = %cleanup.i.lor.rhs.i224.i_crit_edge, %if.then83.i.lor.rhs.i224.i_crit_edge
  %__ret84.0264.i = phi i32 [ %call105.i, %cleanup.i.lor.rhs.i224.i_crit_edge ], [ %timeout.0267.i, %if.then83.i.lor.rhs.i224.i_crit_edge ]
  %call.i.i9.i222.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  %95 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp4.i223.i = icmp slt i32 %96, 4
  br i1 %cmp4.i223.i, label %ef4_farch_flush_wake.exit229.i, label %lor.rhs.i224.i.ef4_farch_flush_wake.exit229.thread234.i_crit_edge

lor.rhs.i224.i.ef4_farch_flush_wake.exit229.thread234.i_crit_edge: ; preds = %lor.rhs.i224.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_flush_wake.exit229.thread234.i

ef4_farch_flush_wake.exit229.i:                   ; preds = %lor.rhs.i224.i
  %call.i.i10.i226.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending52.i, i32 noundef 4) #15
  %97 = ptrtoint ptr %rxq_flush_pending52.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %rxq_flush_pending52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp6.i227.i = icmp sgt i32 %98, 0
  br i1 %cmp6.i227.i, label %for.end106.loopexit.split.loop.exit256.i, label %ef4_farch_flush_wake.exit229.i.ef4_farch_flush_wake.exit229.thread234.i_crit_edge

ef4_farch_flush_wake.exit229.i.ef4_farch_flush_wake.exit229.thread234.i_crit_edge: ; preds = %ef4_farch_flush_wake.exit229.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_flush_wake.exit229.thread234.i

ef4_farch_flush_wake.exit229.thread234.i:         ; preds = %ef4_farch_flush_wake.exit229.i.ef4_farch_flush_wake.exit229.thread234.i_crit_edge, %lor.rhs.i224.i.ef4_farch_flush_wake.exit229.thread234.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret84.0264.i)
  %tobool98.not.i = icmp eq i32 %__ret84.0264.i, 0
  br i1 %tobool98.not.i, label %ef4_farch_flush_wake.exit229.thread234.i.for.end106.i_crit_edge, label %cleanup.i

ef4_farch_flush_wake.exit229.thread234.i.for.end106.i_crit_edge: ; preds = %ef4_farch_flush_wake.exit229.thread234.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end106.i

cleanup.i:                                        ; preds = %ef4_farch_flush_wake.exit229.thread234.i
  %call105.i = call i32 @schedule_timeout(i32 noundef %__ret84.0264.i) #15
  %call86.i = call i32 @prepare_to_wait_event(ptr noundef %flush_wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  %call.i.i.i219.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #15
  %99 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %active_queues.i, align 4
  %cmp.i220.i = icmp eq i32 %100, 0
  br i1 %cmp.i220.i, label %cleanup.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge, label %cleanup.i.lor.rhs.i224.i_crit_edge

cleanup.i.lor.rhs.i224.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs.i224.i

cleanup.i.ef4_farch_flush_wake.exit229.thread.i_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_flush_wake.exit229.thread.i

for.end106.loopexit.split.loop.exit256.i:         ; preds = %ef4_farch_flush_wake.exit229.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret84.0264.i)
  %tobool92.not.le.i = icmp eq i32 %__ret84.0264.i, 0
  %spec.store.select138.le.i = select i1 %tobool92.not.le.i, i32 1, i32 %__ret84.0264.i
  br label %for.end106.i

for.end106.i:                                     ; preds = %for.end106.loopexit.split.loop.exit256.i, %ef4_farch_flush_wake.exit229.thread234.i.for.end106.i_crit_edge, %ef4_farch_flush_wake.exit229.thread.i
  %__ret84.2.ph.i = phi i32 [ %spec.store.select138232.i, %ef4_farch_flush_wake.exit229.thread.i ], [ %spec.store.select138.le.i, %for.end106.loopexit.split.loop.exit256.i ], [ 0, %ef4_farch_flush_wake.exit229.thread234.i.for.end106.i_crit_edge ]
  call void @finish_wait(ptr noundef %flush_wq.i, ptr noundef nonnull %__wq_entry.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  br label %if.end109.i

if.end109.i:                                      ; preds = %for.end106.i, %ef4_farch_flush_wake.exit.i.if.end109.i_crit_edge, %for.end71.i.if.end109.i_crit_edge
  %__ret.1.i = phi i32 [ %timeout.0267.i, %ef4_farch_flush_wake.exit.i.if.end109.i_crit_edge ], [ %__ret84.2.ph.i, %for.end106.i ], [ %timeout.0267.i, %for.end71.i.if.end109.i_crit_edge ]
  %tobool27.not.i = icmp eq i32 %__ret.1.i, 0
  br i1 %tobool27.not.i, label %if.end109.i.while.end.i_crit_edge, label %if.end109.i.land.rhs28.i_crit_edge

if.end109.i.land.rhs28.i_crit_edge:               ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs28.i

if.end109.i.while.end.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %if.end109.i.while.end.i_crit_edge, %land.rhs28.i.while.end.i_crit_edge
  %call.i.i196.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #15
  %101 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool113.not.i = icmp eq i32 %102, 0
  br i1 %tobool113.not.i, label %while.end.i.ef4_farch_do_flush.exit_crit_edge, label %land.lhs.true114.i

while.end.i.ef4_farch_do_flush.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_do_flush.exit

land.lhs.true114.i:                               ; preds = %while.end.i
  %call115.i = call fastcc zeroext i1 @ef4_check_tx_flush_complete(ptr noundef %efx) #15
  br i1 %call115.i, label %land.lhs.true114.i.ef4_farch_do_flush.exit_crit_edge, label %do.body117.i

land.lhs.true114.i.ef4_farch_do_flush.exit_crit_edge: ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_do_flush.exit

do.body117.i:                                     ; preds = %land.lhs.true114.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %103 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %104, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool118.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool118.not.i, label %do.body117.i.do.end128.i_crit_edge, label %if.then119.i

do.body117.i.do.end128.i_crit_edge:               ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end128.i

if.then119.i:                                     ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %105 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %net_dev.i, align 4
  %call.i.i197.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #15
  %107 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %active_queues.i, align 4
  %call.i.i198.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  %109 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  %call.i.i199.i = call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending52.i, i32 noundef 4) #15
  %111 = ptrtoint ptr %rxq_flush_pending52.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %rxq_flush_pending52.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %106, ptr noundef nonnull @.str.22, i32 noundef %108, i32 noundef %110, i32 noundef %112) #18
  br label %do.end128.i

do.end128.i:                                      ; preds = %if.then119.i, %do.body117.i.do.end128.i_crit_edge
  %call.i.i200.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_queues.i, i32 noundef 4) #15
  %113 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 0, ptr %active_queues.i, align 4
  %call.i.i201.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending52.i, i32 noundef 4) #15
  %114 = ptrtoint ptr %rxq_flush_pending52.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 0, ptr %rxq_flush_pending52.i, align 4
  %call.i.i202.i = call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  %115 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %rxq_flush_outstanding.i, align 4
  br label %ef4_farch_do_flush.exit

ef4_farch_do_flush.exit:                          ; preds = %do.end128.i, %land.lhs.true114.i.ef4_farch_do_flush.exit_crit_edge, %while.end.i.ef4_farch_do_flush.exit_crit_edge
  %rc.0.i = phi i32 [ 0, %land.lhs.true114.i.ef4_farch_do_flush.exit_crit_edge ], [ -110, %do.end128.i ], [ 0, %while.end.i.ef4_farch_do_flush.exit_crit_edge ]
  %116 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %type, align 4
  %finish_flush = getelementptr inbounds %struct.ef4_nic_type, ptr %117, i32 0, i32 16
  %118 = ptrtoint ptr %finish_flush to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %finish_flush, align 8
  call void %119(ptr noundef %efx) #15
  br label %if.end

if.end:                                           ; preds = %ef4_farch_do_flush.exit, %if.then.if.end_crit_edge
  %rc.0 = phi i32 [ %rc.0.i, %ef4_farch_do_flush.exit ], [ 0, %if.then.if.end_crit_edge ]
  %channel3 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %120 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %channel3, align 4
  %tobool4.not89 = icmp eq ptr %121, null
  br i1 %tobool4.not89, label %if.end.if.end33_crit_edge, label %for.body.lr.ph

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

for.body.lr.ph:                                   ; preds = %if.end
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.090 = phi ptr [ %121, %for.body.lr.ph ], [ %175, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.090, i32 0, i32 30, i32 1
  %122 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp.i55 = icmp sgt i32 %123, -1
  br i1 %cmp.i55, label %if.else, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.else:                                          ; preds = %for.body
  %rx_queue7 = getelementptr inbounds %struct.ef4_channel, ptr %channel.090, i32 0, i32 30
  %tobool9.not85 = icmp eq ptr %rx_queue7, null
  br i1 %tobool9.not85, label %if.else.if.end11_crit_edge, label %for.body10

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

for.body10:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %rx_queue7 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rx_queue7, align 4
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %type.i, align 4
  %rxd_ptr_tbl_base.i = getelementptr inbounds %struct.ef4_nic_type, ptr %127, i32 0, i32 81
  %128 = ptrtoint ptr %rxd_ptr_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rxd_ptr_tbl_base.i, align 4
  %channel.i.i = getelementptr %struct.ef4_channel, ptr %channel.090, i32 0, i32 1
  %130 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %channel.i.i, align 4
  %mul.i.i = shl i32 %131, 4
  %add.i.i = add i32 %mul.i.i, %129
  %biu_lock.i.i.i56 = getelementptr inbounds %struct.ef4_nic, ptr %125, i32 0, i32 103
  %call3.i.i.i57 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i56) #15
  %membase.i.i.i.i58 = getelementptr inbounds %struct.ef4_nic, ptr %125, i32 0, i32 13
  %132 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i.i.i.i59 = getelementptr i8, ptr %133, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i59, i32 0) #15, !srcloc !86
  %add7.i.i.i = add i32 %add.i.i, 4
  %134 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i25.i.i.i60 = getelementptr i8, ptr %135, i32 %add7.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i60, i32 0) #15, !srcloc !86
  %add9.i.i.i = add i32 %add.i.i, 8
  %136 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i27.i.i.i61 = getelementptr i8, ptr %137, i32 %add9.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i61, i32 0) #15, !srcloc !86
  %add11.i.i.i = add i32 %add.i.i, 12
  %138 = ptrtoint ptr %membase.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase.i.i.i.i58, align 4
  %add.ptr.i29.i.i.i62 = getelementptr i8, ptr %139, i32 %add11.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i62, i32 0) #15, !srcloc !86
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i56, i32 noundef %call3.i.i.i57) #15
  %rxd.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.090, i32 0, i32 30, i32 3
  call fastcc void @ef4_fini_special_buffer(ptr noundef %125, ptr noundef %rxd.i) #15
  br label %if.end11

if.end11:                                         ; preds = %for.body10, %if.else.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %channel1.i63 = getelementptr inbounds %struct.ef4_channel, ptr %channel.090, i32 0, i32 1
  %140 = ptrtoint ptr %channel1.i63 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %channel1.i63, align 4
  %142 = ptrtoint ptr %channel.090 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %channel.090, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %143, i32 0, i32 39
  %144 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %141, %145
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %143, i32 0, i32 40
  %146 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %147)
  %cmp.i64 = icmp ult i32 %sub.i, %147
  br i1 %cmp.i64, label %if.else14, label %if.end11.for.inc25_crit_edge

if.end11.for.inc25_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc25

if.else14:                                        ; preds = %if.end11
  %tx_queue15 = getelementptr inbounds %struct.ef4_channel, ptr %channel.090, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel.090, i32 1
  %cmp1987 = icmp ult ptr %tx_queue15, %add.ptr
  br i1 %cmp1987, label %if.else14.land.rhs_crit_edge, label %if.else14.for.inc25_crit_edge

if.else14.for.inc25_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc25

if.else14.land.rhs_crit_edge:                     ; preds = %if.else14
  br label %land.rhs

land.rhs:                                         ; preds = %for.body21.land.rhs_crit_edge, %if.else14.land.rhs_crit_edge
  %tx_queue.088 = phi ptr [ %incdec.ptr, %for.body21.land.rhs_crit_edge ], [ %tx_queue15, %if.else14.land.rhs_crit_edge ]
  %148 = ptrtoint ptr %tx_queue.088 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tx_queue.088, align 128
  %net_dev.i65 = getelementptr inbounds %struct.ef4_nic, ptr %149, i32 0, i32 69
  %150 = ptrtoint ptr %net_dev.i65 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %net_dev.i65, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 140
  %152 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %153)
  %cmp.i66 = icmp slt i16 %153, 2
  br i1 %cmp.i66, label %ef4_tx_queue_used.exit, label %land.rhs.for.body21_crit_edge

land.rhs.for.body21_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

ef4_tx_queue_used.exit:                           ; preds = %land.rhs
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.088, i32 0, i32 1
  %154 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %queue.i, align 4
  %and.i67 = and i32 %155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.i = icmp eq i32 %and.i67, 0
  br i1 %tobool.i, label %ef4_tx_queue_used.exit.for.body21_crit_edge, label %ef4_tx_queue_used.exit.for.inc25_crit_edge

ef4_tx_queue_used.exit.for.inc25_crit_edge:       ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc25

ef4_tx_queue_used.exit.for.body21_crit_edge:      ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

for.body21:                                       ; preds = %ef4_tx_queue_used.exit.for.body21_crit_edge, %land.rhs.for.body21_crit_edge
  %type.i69 = getelementptr inbounds %struct.ef4_nic, ptr %149, i32 0, i32 6
  %156 = ptrtoint ptr %type.i69 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %type.i69, align 4
  %txd_ptr_tbl_base.i = getelementptr inbounds %struct.ef4_nic_type, ptr %157, i32 0, i32 80
  %158 = ptrtoint ptr %txd_ptr_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %txd_ptr_tbl_base.i, align 8
  %queue.i70 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.088, i32 0, i32 1
  %160 = ptrtoint ptr %queue.i70 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %queue.i70, align 4
  %mul.i.i71 = shl i32 %161, 4
  %add.i.i72 = add i32 %mul.i.i71, %159
  %biu_lock.i.i.i73 = getelementptr inbounds %struct.ef4_nic, ptr %149, i32 0, i32 103
  %call3.i.i.i74 = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i73) #15
  %membase.i.i.i.i75 = getelementptr inbounds %struct.ef4_nic, ptr %149, i32 0, i32 13
  %162 = ptrtoint ptr %membase.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %membase.i.i.i.i75, align 4
  %add.ptr.i.i.i.i76 = getelementptr i8, ptr %163, i32 %add.i.i72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i76, i32 0) #15, !srcloc !86
  %add7.i.i.i77 = add i32 %add.i.i72, 4
  %164 = ptrtoint ptr %membase.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %membase.i.i.i.i75, align 4
  %add.ptr.i25.i.i.i78 = getelementptr i8, ptr %165, i32 %add7.i.i.i77
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i78, i32 0) #15, !srcloc !86
  %add9.i.i.i79 = add i32 %add.i.i72, 8
  %166 = ptrtoint ptr %membase.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %membase.i.i.i.i75, align 4
  %add.ptr.i27.i.i.i80 = getelementptr i8, ptr %167, i32 %add9.i.i.i79
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i80, i32 0) #15, !srcloc !86
  %add11.i.i.i81 = add i32 %add.i.i72, 12
  %168 = ptrtoint ptr %membase.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %membase.i.i.i.i75, align 4
  %add.ptr.i29.i.i.i82 = getelementptr i8, ptr %169, i32 %add11.i.i.i81
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i82, i32 0) #15, !srcloc !86
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i73, i32 noundef %call3.i.i.i74) #15
  %txd.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.088, i32 0, i32 6
  call fastcc void @ef4_fini_special_buffer(ptr noundef %149, ptr noundef %txd.i) #15
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.088, i32 1
  %cmp19 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp19, label %for.body21.land.rhs_crit_edge, label %for.body21.for.inc25_crit_edge

for.body21.for.inc25_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc25

for.body21.land.rhs_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

for.inc25:                                        ; preds = %for.body21.for.inc25_crit_edge, %ef4_tx_queue_used.exit.for.inc25_crit_edge, %if.else14.for.inc25_crit_edge, %if.end11.for.inc25_crit_edge
  %170 = ptrtoint ptr %channel1.i63 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %channel1.i63, align 4
  %add = add i32 %171, 1
  %172 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %173)
  %cmp27 = icmp ult i32 %add, %173
  br i1 %cmp27, label %cond.end, label %for.inc25.if.end33_crit_edge

for.inc25.if.end33_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

cond.end:                                         ; preds = %for.inc25
  %arrayidx31 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %174 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx31, align 4
  %tobool4.not = icmp eq ptr %175, null
  br i1 %tobool4.not, label %cond.end.if.end33_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.if.end33_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end33:                                         ; preds = %cond.end.if.end33_crit_edge, %for.inc25.if.end33_crit_edge, %if.end.if.end33_crit_edge, %entry.if.end33_crit_edge
  %rc.1 = phi i32 [ 0, %entry.if.end33_crit_edge ], [ %rc.0, %if.end.if.end33_crit_edge ], [ %rc.0, %cond.end.if.end33_crit_edge ], [ %rc.0, %for.inc25.if.end33_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_finish_flr(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq_flush_pending = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 97
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending, i32 noundef 4) #15
  %0 = ptrtoint ptr %rxq_flush_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %rxq_flush_pending, align 4
  %rxq_flush_outstanding = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 98
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding, i32 noundef 4) #15
  %1 = ptrtoint ptr %rxq_flush_outstanding to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %rxq_flush_outstanding, align 4
  %active_queues = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 96
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #15
  %2 = ptrtoint ptr %active_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %active_queues, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_ev_read_ack(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq_read_ptr = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_read_ptr, align 4
  %eventq_mask = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 11
  %4 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eventq_mask, align 8
  %and = and i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type, align 4
  %evq_rptr_tbl_base = getelementptr inbounds %struct.ef4_nic_type, ptr %8, i32 0, i32 84
  %9 = ptrtoint ptr %evq_rptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %evq_rptr_tbl_base, align 8
  %channel3 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %11 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel3, align 4
  %mul = shl i32 %12, 4
  %add = add i32 %mul, %10
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #15, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_generate_event(ptr noundef %efx, i32 noundef %evq, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  %arrayidx2 = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %evq)
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #15, !srcloc !86
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %8, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %3) #15, !srcloc !86
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %10, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %4) #15, !srcloc !86
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %12, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_ev_process(ptr noundef %channel, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %union.ef4_qword, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp = icmp slt i32 %budget, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %eventq_read_ptr = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_read_ptr, align 4
  %eventq.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10
  %eventq_mask.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 11
  %arrayidx2.i = getelementptr inbounds [2 x %union.ef4_dword], ptr %event, i32 0, i32 1
  %4 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eventq.i, align 4
  %6 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eventq_mask.i, align 8
  %and.i97 = and i32 %7, %3
  %add.ptr.i98 = getelementptr %union.ef4_qword, ptr %5, i32 %and.i97
  %8 = ptrtoint ptr %add.ptr.i98 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i98, align 8
  %10 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %9)
  %cmp.i99 = icmp ugt i64 %9, -4294967297
  %11 = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp4.i100 = icmp eq i32 %11, -1
  %tobool.not101 = or i1 %cmp.i99, %cmp4.i100
  br i1 %tobool.not101, label %if.end.out_crit_edge, label %if.end4.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4.lr.ph:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %channel46.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %txq_entries = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 27
  %rx_queue.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30
  %removed_count.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 9
  %scatter_n.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 10
  %ptr_mask.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 4
  %n_rx_nodesc_trunc.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 25
  %n_rx_frm_trunc.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 22
  %n_rx_tobe_disc.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 18
  %n_rx_ip_hdr_chksum_err.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 19
  %n_rx_tcp_udp_chksum_err.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 20
  %n_rx_mcast_mismatch.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 21
  %irq_mod_score.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 15
  br label %if.end4

if.end4:                                          ; preds = %sw.epilog.if.end4_crit_edge, %if.end4.lr.ph
  %add.ptr.i107 = phi ptr [ %add.ptr.i98, %if.end4.lr.ph ], [ %add.ptr.i, %sw.epilog.if.end4_crit_edge ]
  %spent.0105 = phi i32 [ 0, %if.end4.lr.ph ], [ %spent.1, %sw.epilog.if.end4_crit_edge ]
  %tx_packets.0103 = phi i32 [ 0, %if.end4.lr.ph ], [ %tx_packets.1, %sw.epilog.if.end4_crit_edge ]
  %read_ptr.0102 = phi i32 [ %3, %if.end4.lr.ph ], [ %inc, %sw.epilog.if.end4_crit_edge ]
  %12 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %add.ptr.i107, align 8
  %arrayidx5 = getelementptr [2 x i32], ptr %add.ptr.i107, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %arrayidx5, align 4
  %inc = add i32 %read_ptr.0102, 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %16 = lshr i32 %15, 4
  %shr = and i32 %16, 15
  %17 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end4.do.body25_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
    i32 7, label %sw.bb16
    i32 5, label %sw.bb17
    i32 6, label %sw.bb18
  ]

if.end4.do.body25_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

sw.bb:                                            ; preds = %if.end4
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel, align 128
  %reset_pending.i = getelementptr inbounds %struct.ef4_nic, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %reset_pending.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.ef4_farch_handle_rx_event.exit_crit_edge, !prof !89

sw.bb.ef4_farch_handle_rx_event.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_rx_event.exit

if.end.i:                                         ; preds = %sw.bb
  %22 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event, align 8
  %24 = call i32 @llvm.bswap.i32(i32 %23) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool4.not.i = icmp sgt i32 %24, -1
  %25 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.i = icmp eq i32 %25, 0
  %26 = lshr i32 %15, 24
  %and13.i = and i32 %26, 31
  %27 = ptrtoint ptr %channel46.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel46.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %28)
  %cmp.not.i = icmp eq i32 %and13.i, %28
  br i1 %cmp.not.i, label %if.end.i.if.end36.i_crit_edge, label %do.end30.i, !prof !89

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 995, i32 noundef 9, ptr noundef null) #15
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end30.i, %if.end.i.if.end36.i_crit_edge
  %29 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %event, align 8
  %31 = and i32 %30, -15794176
  %32 = call i32 @llvm.bswap.i32(i32 %31) #15
  %33 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %removed_count.i, align 4
  %35 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scatter_n.i, align 4
  %add.i = add i32 %36, %34
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ptr_mask.i, align 4
  %and48.i = and i32 %add.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %and48.i)
  %cmp49.not.i = icmp eq i32 %32, %and48.i
  br i1 %cmp49.not.i, label %lor.lhs.false.i, label %land.lhs.true.critedge.i, !prof !89

lor.lhs.false.i:                                  ; preds = %if.end36.i
  %.lobit.i = lshr exact i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp58.i = icmp eq i32 %36, 0
  %conv59.i = zext i1 %cmp58.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.lobit.i, i32 %conv59.i)
  %cmp60.not.i = icmp eq i32 %.lobit.i, %conv59.i
  br i1 %cmp60.not.i, label %lor.lhs.false.i.if.end97.i_crit_edge, label %lor.lhs.false.i.if.end73.i_crit_edge, !prof !89

lor.lhs.false.i.if.end73.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

lor.lhs.false.i.if.end97.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97.i

land.lhs.true.critedge.i:                         ; preds = %if.end36.i
  %39 = ptrtoint ptr %rx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_queue.i.i, align 4
  %41 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scatter_n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i79 = icmp eq i32 %42, 0
  br i1 %tobool.not.i79, label %land.lhs.true.critedge.i.if.end.i89_crit_edge, label %land.lhs.true.i

land.lhs.true.critedge.i.if.end.i89_crit_edge:    ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i89

land.lhs.true.i:                                  ; preds = %land.lhs.true.critedge.i
  %43 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %removed_count.i, align 4
  %add.i81 = add i32 %42, -1
  %sub.i82 = add i32 %add.i81, %44
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr_mask.i, align 4
  %and.i84 = and i32 %sub.i82, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i84, i32 %32)
  %cmp.i85 = icmp eq i32 %and.i84, %32
  br i1 %cmp.i85, label %ef4_farch_handle_rx_bad_index.exit.thread, label %land.lhs.true.i.if.end.i89_crit_edge

land.lhs.true.i.if.end.i89_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i89

ef4_farch_handle_rx_bad_index.exit.thread:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %n_rx_nodesc_trunc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_rx_nodesc_trunc.i, align 16
  %inc.i86 = add i32 %48, 1
  store i32 %inc.i86, ptr %n_rx_nodesc_trunc.i, align 16
  br label %if.end73.i

if.end.i89:                                       ; preds = %land.lhs.true.i.if.end.i89_crit_edge, %land.lhs.true.critedge.i.if.end.i89_crit_edge
  %msg_enable.i88 = getelementptr inbounds %struct.ef4_nic, ptr %40, i32 0, i32 20
  %49 = ptrtoint ptr %msg_enable.i88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i88, align 8
  %and9.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i89.ef4_farch_handle_rx_bad_index.exit_crit_edge, label %if.then11.i91

if.end.i89.ef4_farch_handle_rx_bad_index.exit_crit_edge: ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_rx_bad_index.exit

if.then11.i91:                                    ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %removed_count.i, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ptr_mask.i, align 4
  %and5.i = and i32 %54, %52
  %sub6.i = sub i32 %32, %and5.i
  %and8.i = and i32 %sub6.i, %54
  %net_dev.i90 = getelementptr inbounds %struct.ef4_nic, ptr %40, i32 0, i32 69
  %55 = ptrtoint ptr %net_dev.i90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net_dev.i90, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %56, ptr noundef nonnull @.str.26, i32 noundef %and8.i, i32 noundef %32, i32 noundef %and5.i) #18
  br label %ef4_farch_handle_rx_bad_index.exit

ef4_farch_handle_rx_bad_index.exit:               ; preds = %if.then11.i91, %if.end.i89.ef4_farch_handle_rx_bad_index.exit_crit_edge
  %type.i.i92 = getelementptr inbounds %struct.ef4_nic, ptr %40, i32 0, i32 6
  %57 = ptrtoint ptr %type.i.i92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type.i.i92, align 4
  %revision.i.i93 = getelementptr inbounds %struct.ef4_nic_type, ptr %58, i32 0, i32 79
  %59 = ptrtoint ptr %revision.i.i93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %revision.i.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp14.i = icmp slt i32 %60, 2
  %cond.i94 = select i1 %cmp14.i, i32 10, i32 6
  call void @ef4_schedule_reset(ptr noundef %40, i32 noundef %cond.i94) #15
  br label %ef4_farch_handle_rx_event.exit

if.end73.i:                                       ; preds = %ef4_farch_handle_rx_bad_index.exit.thread, %lor.lhs.false.i.if.end73.i_crit_edge
  %61 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %scatter_n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool75.not.i = icmp eq i32 %62, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end85.i_crit_edge, label %if.then76.i

if.end73.i.if.end85.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %removed_count.i, align 4
  %65 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ptr_mask.i, align 4
  %and79.i = and i32 %66, %64
  call void @ef4_rx_packet(ptr noundef %rx_queue.i.i, i32 noundef %and79.i, i32 noundef %62, i32 noundef 0, i16 noundef zeroext 4) #15
  %67 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %scatter_n.i, align 4
  %69 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %removed_count.i, align 4
  %add83.i = add i32 %70, %68
  store i32 %add83.i, ptr %removed_count.i, align 4
  store i32 0, ptr %scatter_n.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end85.i_crit_edge
  br i1 %cmp49.not.i, label %if.end89.i, label %if.end85.i.ef4_farch_handle_rx_event.exit_crit_edge

if.end85.i.ef4_farch_handle_rx_event.exit_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_rx_event.exit

if.end89.i:                                       ; preds = %if.end85.i
  br i1 %tobool9.not.i, label %if.then91.i, label %if.end89.i.if.end97.i_crit_edge

if.end89.i.if.end97.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97.i

if.then91.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %removed_count.i, align 4
  %73 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ptr_mask.i, align 4
  %and94.i = and i32 %74, %72
  call void @ef4_rx_packet(ptr noundef %rx_queue.i.i, i32 noundef %and94.i, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 4) #15
  %75 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %removed_count.i, align 4
  %inc.i = add i32 %76, 1
  store i32 %inc.i, ptr %removed_count.i, align 4
  br label %ef4_farch_handle_rx_event.exit

if.end97.i:                                       ; preds = %if.end89.i.if.end97.i_crit_edge, %lor.lhs.false.i.if.end97.i_crit_edge
  %77 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %scatter_n.i, align 4
  %inc99.i = add i32 %78, 1
  store i32 %inc99.i, ptr %scatter_n.i, align 4
  br i1 %tobool4.not.i, label %if.end102.i, label %if.end97.i.ef4_farch_handle_rx_event.exit_crit_edge

if.end97.i.ef4_farch_handle_rx_event.exit_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_rx_event.exit

if.end102.i:                                      ; preds = %if.end97.i
  %79 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %event, align 8
  %81 = call i32 @llvm.bswap.i32(i32 %80) #15
  %shr104.i = lshr i32 %81, 16
  %and106.i = and i32 %shr104.i, 16383
  %82 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx2.i, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #15
  %85 = and i32 %84, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool111.not.i = icmp eq i32 %85, 0
  br i1 %tobool111.not.i, label %if.else.i, label %if.then124.i, !prof !87

if.then124.i:                                     ; preds = %if.end102.i
  %shr114.i = lshr i32 %84, 10
  %and116.i = and i32 %shr114.i, 3
  %86 = zext i32 %and116.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and116.i, label %if.then124.i.if.end134.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.then124.i.sw.bb128.i_crit_edge
  ]

if.then124.i.sw.bb128.i_crit_edge:                ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb128.i

if.then124.i.if.end134.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i

sw.bb.i:                                          ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb128.i

sw.bb128.i:                                       ; preds = %sw.bb.i, %if.then124.i.sw.bb128.i_crit_edge
  %flags.0.i = phi i16 [ 2, %if.then124.i.sw.bb128.i_crit_edge ], [ 66, %sw.bb.i ]
  br label %if.end134.i

if.else.i:                                        ; preds = %if.end102.i
  %87 = ptrtoint ptr %rx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_queue.i.i, align 4
  %89 = and i32 %84, 32768
  %90 = and i32 %84, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool12.not.i = icmp eq i32 %90, 0
  %91 = and i32 %84, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool18.not.i = icmp eq i32 %91, 0
  %92 = and i32 %84, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool30.not.i = icmp eq i32 %92, 0
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %88, i32 0, i32 6
  %93 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %type.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %94, i32 0, i32 79
  %95 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %revision.i.i, align 4
  br i1 %tobool30.not.i, label %if.else.i75, label %if.then.i

if.then.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %n_rx_frm_trunc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %n_rx_frm_trunc.i, align 4
  %inc.i73 = add i32 %98, 1
  store i32 %inc.i73, ptr %n_rx_frm_trunc.i, align 4
  br label %ef4_farch_handle_rx_not_ok.exit

if.else.i75:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i74 = icmp eq i32 %89, 0
  br i1 %tobool.not.i74, label %if.else49.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.else.i75
  call void @__sanitizer_cov_trace_pc() #17
  %99 = ptrtoint ptr %n_rx_tobe_disc.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_rx_tobe_disc.i, align 4
  %inc48.i = add i32 %100, 1
  store i32 %inc48.i, ptr %n_rx_tobe_disc.i, align 4
  br label %ef4_farch_handle_rx_not_ok.exit

if.else49.i:                                      ; preds = %if.else.i75
  %loopback_selftest.i = getelementptr inbounds %struct.ef4_nic, ptr %88, i32 0, i32 90
  %101 = ptrtoint ptr %loopback_selftest.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %loopback_selftest.i, align 128
  %tobool50.not.i = icmp eq ptr %102, null
  br i1 %tobool50.not.i, label %if.then51.i, label %if.else49.i.ef4_farch_handle_rx_not_ok.exit_crit_edge

if.else49.i.ef4_farch_handle_rx_not_ok.exit_crit_edge: ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_rx_not_ok.exit

if.then51.i:                                      ; preds = %if.else49.i
  br i1 %tobool12.not.i, label %if.else55.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %n_rx_ip_hdr_chksum_err.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %n_rx_ip_hdr_chksum_err.i, align 8
  %inc54.i = add i32 %104, 1
  store i32 %inc54.i, ptr %n_rx_ip_hdr_chksum_err.i, align 8
  br label %ef4_farch_handle_rx_not_ok.exit

if.else55.i:                                      ; preds = %if.then51.i
  br i1 %tobool18.not.i, label %if.else55.i.ef4_farch_handle_rx_not_ok.exit_crit_edge, label %if.then57.i

if.else55.i.ef4_farch_handle_rx_not_ok.exit_crit_edge: ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_rx_not_ok.exit

if.then57.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #17
  %105 = ptrtoint ptr %n_rx_tcp_udp_chksum_err.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %n_rx_tcp_udp_chksum_err.i, align 4
  %inc58.i = add i32 %106, 1
  store i32 %inc58.i, ptr %n_rx_tcp_udp_chksum_err.i, align 4
  br label %ef4_farch_handle_rx_not_ok.exit

ef4_farch_handle_rx_not_ok.exit:                  ; preds = %if.then57.i, %if.else55.i.ef4_farch_handle_rx_not_ok.exit_crit_edge, %if.then53.i, %if.else49.i.ef4_farch_handle_rx_not_ok.exit_crit_edge, %if.then47.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp.i76 = icmp sgt i32 %96, 1
  %107 = lshr i32 %83, 9
  %and36.i = and i32 %107, 1
  %cond.i = select i1 %cmp.i76, i32 0, i32 %and36.i
  %108 = lshr i32 %84, 18
  %.lobit.i77 = and i32 %108, 1
  %.lobit93.i = lshr exact i32 %92, 17
  %.lobit94.i = lshr exact i32 %89, 15
  %109 = lshr i32 %83, 15
  %.lobit95.i = and i32 %109, 1
  %or66.i = or i32 %.lobit93.i, %.lobit95.i
  %or69.i = or i32 %or66.i, %.lobit.i77
  %or72.i = or i32 %or69.i, %.lobit94.i
  %or75.i = or i32 %or72.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or75.i)
  %tobool76.not.i = icmp eq i32 %or75.i, 0
  %conv78.i = select i1 %tobool76.not.i, i16 0, i16 4
  br label %if.end134.i

if.end134.i:                                      ; preds = %ef4_farch_handle_rx_not_ok.exit, %sw.bb128.i, %if.then124.i.if.end134.i_crit_edge
  %flags.1.i = phi i16 [ 0, %if.then124.i.if.end134.i_crit_edge ], [ %flags.0.i, %sw.bb128.i ], [ %conv78.i, %ef4_farch_handle_rx_not_ok.exit ]
  %110 = and i32 %83, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %110)
  %111 = icmp eq i32 %110, -2147483648
  br i1 %111, label %if.then154.i, label %if.end134.i.if.end160.i_crit_edge, !prof !98

if.end134.i.if.end160.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end160.i

if.then154.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #17
  %112 = ptrtoint ptr %n_rx_mcast_mismatch.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %n_rx_mcast_mismatch.i, align 64
  %inc155.i = add i32 %113, 1
  store i32 %inc155.i, ptr %n_rx_mcast_mismatch.i, align 64
  %114 = or i16 %flags.1.i, 4
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then154.i, %if.end134.i.if.end160.i_crit_edge
  %flags.3.i = phi i16 [ %flags.1.i, %if.end134.i.if.end160.i_crit_edge ], [ %114, %if.then154.i ]
  %115 = ptrtoint ptr %irq_mod_score.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq_mod_score.i, align 8
  %add161.i = add i32 %116, 2
  store i32 %add161.i, ptr %irq_mod_score.i, align 8
  %117 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %removed_count.i, align 4
  %119 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ptr_mask.i, align 4
  %and164.i = and i32 %120, %118
  call void @ef4_rx_packet(ptr noundef %rx_queue.i.i, i32 noundef %and164.i, i32 noundef %inc99.i, i32 noundef %and106.i, i16 noundef zeroext %flags.3.i) #15
  %121 = ptrtoint ptr %scatter_n.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %scatter_n.i, align 4
  %123 = ptrtoint ptr %removed_count.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %removed_count.i, align 4
  %add168.i = add i32 %124, %122
  store i32 %add168.i, ptr %removed_count.i, align 4
  store i32 0, ptr %scatter_n.i, align 4
  br label %ef4_farch_handle_rx_event.exit

ef4_farch_handle_rx_event.exit:                   ; preds = %if.end160.i, %if.end97.i.ef4_farch_handle_rx_event.exit_crit_edge, %if.then91.i, %if.end85.i.ef4_farch_handle_rx_event.exit_crit_edge, %ef4_farch_handle_rx_bad_index.exit, %sw.bb.ef4_farch_handle_rx_event.exit_crit_edge
  %inc7 = add i32 %spent.0105, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7, i32 %budget)
  %cmp8 = icmp eq i32 %inc7, %budget
  br i1 %cmp8, label %ef4_farch_handle_rx_event.exit.out_crit_edge, label %ef4_farch_handle_rx_event.exit.sw.epilog_crit_edge

ef4_farch_handle_rx_event.exit.sw.epilog_crit_edge: ; preds = %ef4_farch_handle_rx_event.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

ef4_farch_handle_rx_event.exit.out_crit_edge:     ; preds = %ef4_farch_handle_rx_event.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb11:                                          ; preds = %if.end4
  %125 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %channel, align 128
  %reset_pending.i67 = getelementptr inbounds %struct.ef4_nic, ptr %126, i32 0, i32 22
  %127 = ptrtoint ptr %reset_pending.i67 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %reset_pending.i67, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i68 = icmp eq i32 %128, 0
  br i1 %tobool.not.i68, label %if.end.i70, label %sw.bb11.ef4_farch_handle_tx_event.exit_crit_edge, !prof !89

sw.bb11.ef4_farch_handle_tx_event.exit_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_tx_event.exit

if.end.i70:                                       ; preds = %sw.bb11
  %129 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %event, align 8
  %131 = call i32 @llvm.bswap.i32(i32 %130) #15
  %132 = and i32 %131, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool4.not.i69 = icmp eq i32 %132, 0
  br i1 %tobool4.not.i69, label %if.else.i72, label %if.then11.i, !prof !87

if.then11.i:                                      ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #17
  %and14.i = and i32 %131, 4095
  %133 = lshr i32 %15, 24
  %rem.i = and i32 %133, 3
  %arrayidx.i.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 32, i32 %rem.i
  %read_count.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 32, i32 %rem.i, i32 12
  %134 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %read_count.i, align 128
  %sub.i = sub i32 %and14.i, %135
  %ptr_mask.i71 = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 32, i32 %rem.i, i32 7
  %136 = ptrtoint ptr %ptr_mask.i71 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ptr_mask.i71, align 4
  %and19.i = and i32 %sub.i, %137
  call void @ef4_xmit_done(ptr noundef %arrayidx.i.i, i32 noundef %and14.i) #15
  br label %ef4_farch_handle_tx_event.exit

if.else.i72:                                      ; preds = %if.end.i70
  %138 = and i32 %131, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool24.not.i = icmp eq i32 %138, 0
  br i1 %tobool24.not.i, label %if.else33.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i72
  call void @__sanitizer_cov_trace_pc() #17
  %139 = lshr i32 %15, 24
  %rem30.i = and i32 %139, 3
  %arrayidx.i79.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 32, i32 %rem30.i
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %126, i32 0, i32 69
  %140 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %net_dev.i, align 4
  call void @netif_tx_lock(ptr noundef %141) #15
  %write_count.i.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 32, i32 %rem30.i, i32 19
  %142 = ptrtoint ptr %write_count.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %write_count.i.i, align 4
  %ptr_mask.i.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 32, i32 %rem30.i, i32 7
  %144 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i = and i32 %145, %143
  %146 = call i32 @llvm.bswap.i32(i32 %and.i.i) #15
  %147 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i79.i, align 128
  %queue.i.i = getelementptr %struct.ef4_channel, ptr %channel, i32 0, i32 32, i32 %rem30.i, i32 1
  %149 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %queue.i.i, align 4
  %mul.i.i.i = shl i32 %150, 13
  %add.i.i.i = or i32 %mul.i.i.i, 2588
  %membase.i.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %148, i32 0, i32 13
  %151 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %152, i32 %add.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %146) #15, !srcloc !86
  %153 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %net_dev.i, align 4
  call void @netif_tx_unlock(ptr noundef %154) #15
  br label %ef4_farch_handle_tx_event.exit

if.else33.i:                                      ; preds = %if.else.i72
  %155 = call i32 @llvm.bswap.i32(i32 %15) #15
  %156 = and i32 %155, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool38.not.i = icmp eq i32 %156, 0
  br i1 %tobool38.not.i, label %do.body41.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @ef4_schedule_reset(ptr noundef %126, i32 noundef 11) #15
  br label %ef4_farch_handle_tx_event.exit

do.body41.i:                                      ; preds = %if.else33.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %126, i32 0, i32 20
  %157 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %msg_enable.i, align 8
  %and42.i = and i32 %158, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %do.body41.i.ef4_farch_handle_tx_event.exit_crit_edge, label %if.then44.i

do.body41.i.ef4_farch_handle_tx_event.exit_crit_edge: ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_handle_tx_event.exit

if.then44.i:                                      ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev45.i = getelementptr inbounds %struct.ef4_nic, ptr %126, i32 0, i32 69
  %159 = ptrtoint ptr %net_dev45.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %net_dev45.i, align 4
  %161 = ptrtoint ptr %channel46.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %channel46.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %160, ptr noundef nonnull @.str.27, i32 noundef %162, i32 noundef %155, i32 noundef %131) #18
  br label %ef4_farch_handle_tx_event.exit

ef4_farch_handle_tx_event.exit:                   ; preds = %if.then44.i, %do.body41.i.ef4_farch_handle_tx_event.exit_crit_edge, %if.then39.i, %if.then25.i, %if.then11.i, %sw.bb11.ef4_farch_handle_tx_event.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb11.ef4_farch_handle_tx_event.exit_crit_edge ], [ %and19.i, %if.then11.i ], [ 0, %if.then25.i ], [ 0, %if.then39.i ], [ 0, %if.then44.i ], [ 0, %do.body41.i.ef4_farch_handle_tx_event.exit_crit_edge ]
  %add = add i32 %retval.0.i, %tx_packets.0103
  %163 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %txq_entries, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %164)
  %cmp13 = icmp ugt i32 %add, %164
  br i1 %cmp13, label %ef4_farch_handle_tx_event.exit.out_crit_edge, label %ef4_farch_handle_tx_event.exit.sw.epilog_crit_edge

ef4_farch_handle_tx_event.exit.sw.epilog_crit_edge: ; preds = %ef4_farch_handle_tx_event.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

ef4_farch_handle_tx_event.exit.out_crit_edge:     ; preds = %ef4_farch_handle_tx_event.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb16:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ef4_farch_handle_generated_event(ptr noundef %channel, ptr noundef nonnull %event)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ef4_farch_handle_driver_event(ptr noundef %channel, ptr noundef nonnull %event)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end4
  %165 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %type, align 4
  %handle_global_event = getelementptr inbounds %struct.ef4_nic_type, ptr %166, i32 0, i32 13
  %167 = ptrtoint ptr %handle_global_event to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %handle_global_event, align 4
  %tobool19.not = icmp eq ptr %168, null
  br i1 %tobool19.not, label %sw.bb18.do.body25_crit_edge, label %land.lhs.true

sw.bb18.do.body25_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

land.lhs.true:                                    ; preds = %sw.bb18
  %call22 = call zeroext i1 %168(ptr noundef %channel, ptr noundef nonnull %event) #15
  br i1 %call22, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.do.body25_crit_edge

land.lhs.true.do.body25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body25:                                        ; preds = %land.lhs.true.do.body25_crit_edge, %sw.bb18.do.body25_crit_edge, %if.end4.do.body25_crit_edge
  %169 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %170, i32 0, i32 20
  %171 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %msg_enable, align 8
  %and27 = and i32 %172, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body25.sw.epilog_crit_edge, label %if.then29

do.body25.sw.epilog_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %170, i32 0, i32 69
  %173 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %net_dev, align 4
  %175 = ptrtoint ptr %channel46.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %channel46.i, align 4
  %177 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx2.i, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178)
  %180 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %event, align 8
  %182 = call i32 @llvm.bswap.i32(i32 %181)
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %174, ptr noundef nonnull @.str.5, i32 noundef %176, i32 noundef %shr, i32 noundef %179, i32 noundef %182) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then29, %do.body25.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb17, %sw.bb16, %ef4_farch_handle_tx_event.exit.sw.epilog_crit_edge, %ef4_farch_handle_rx_event.exit.sw.epilog_crit_edge
  %tx_packets.1 = phi i32 [ %tx_packets.0103, %if.then29 ], [ %tx_packets.0103, %do.body25.sw.epilog_crit_edge ], [ %tx_packets.0103, %land.lhs.true.sw.epilog_crit_edge ], [ %tx_packets.0103, %sw.bb17 ], [ %tx_packets.0103, %sw.bb16 ], [ %add, %ef4_farch_handle_tx_event.exit.sw.epilog_crit_edge ], [ %tx_packets.0103, %ef4_farch_handle_rx_event.exit.sw.epilog_crit_edge ]
  %spent.1 = phi i32 [ %spent.0105, %if.then29 ], [ %spent.0105, %do.body25.sw.epilog_crit_edge ], [ %spent.0105, %land.lhs.true.sw.epilog_crit_edge ], [ %spent.0105, %sw.bb17 ], [ %spent.0105, %sw.bb16 ], [ %spent.0105, %ef4_farch_handle_tx_event.exit.sw.epilog_crit_edge ], [ %inc7, %ef4_farch_handle_rx_event.exit.sw.epilog_crit_edge ]
  %183 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %eventq.i, align 4
  %185 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %eventq_mask.i, align 8
  %and.i = and i32 %186, %inc
  %add.ptr.i = getelementptr %union.ef4_qword, ptr %184, i32 %and.i
  %187 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %add.ptr.i, align 8
  %189 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %188, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %188)
  %cmp.i = icmp ugt i64 %188, -4294967297
  %190 = trunc i64 %188 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %190)
  %cmp4.i = icmp eq i32 %190, -1
  %tobool.not = or i1 %cmp.i, %cmp4.i
  br i1 %tobool.not, label %sw.epilog.out_crit_edge, label %sw.epilog.if.end4_crit_edge

sw.epilog.if.end4_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %sw.epilog.out_crit_edge, %ef4_farch_handle_tx_event.exit.out_crit_edge, %ef4_farch_handle_rx_event.exit.out_crit_edge, %if.end.out_crit_edge
  %read_ptr.1 = phi i32 [ %3, %if.end.out_crit_edge ], [ %inc, %ef4_farch_handle_tx_event.exit.out_crit_edge ], [ %inc, %sw.epilog.out_crit_edge ], [ %inc, %ef4_farch_handle_rx_event.exit.out_crit_edge ]
  %spent.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %budget, %ef4_farch_handle_rx_event.exit.out_crit_edge ], [ %spent.1, %sw.epilog.out_crit_edge ], [ %budget, %ef4_farch_handle_tx_event.exit.out_crit_edge ]
  %191 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %read_ptr.1, ptr %eventq_read_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spent.2, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_farch_handle_generated_event(ptr noundef %channel, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %core_index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30, i32 1
  %2 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  %rx_queue.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 30
  %spec.select = select i1 %cmp.i, ptr %rx_queue.i, ptr null
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %channel3 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %7 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel3, align 4
  %or4 = or i32 %8, 65792
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or4)
  %cmp = icmp eq i32 %6, %or4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #15
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %event_test_cpu = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 13
  %13 = ptrtoint ptr %event_test_cpu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %event_test_cpu, align 32
  br label %if.end39

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %if.else.if.else17_crit_edge, label %land.lhs.true

if.else.if.else17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else17

land.lhs.true:                                    ; preds = %if.else
  %channel.i = getelementptr i8, ptr %spec.select, i32 -352
  %14 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel.i, align 4
  %or7 = or i32 %15, 66048
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or7)
  %cmp8 = icmp eq i32 %6, %or7
  br i1 %cmp8, label %if.then9, label %land.lhs.true12.critedge

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ef4_fast_push_rx_descriptors(ptr noundef nonnull %spec.select, i1 noundef zeroext true) #15
  br label %if.end39

land.lhs.true12.critedge:                         ; preds = %land.lhs.true
  %or14 = or i32 %15, 66304
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %or14)
  %cmp15 = icmp eq i32 %6, %or14
  br i1 %cmp15, label %if.then16, label %land.lhs.true12.critedge.if.else17_crit_edge

land.lhs.true12.critedge.if.else17_crit_edge:     ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else17

if.then16:                                        ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_handle_drain_event(ptr noundef %channel)
  br label %if.end39

if.else17:                                        ; preds = %land.lhs.true12.critedge.if.else17_crit_edge, %if.else.if.else17_crit_edge
  %shr.mask = and i32 %6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 66560, i32 %shr.mask)
  %cmp18 = icmp eq i32 %shr.mask, 66560
  br i1 %cmp18, label %if.then19, label %do.body

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_handle_drain_event(ptr noundef %channel)
  br label %if.end39

do.body:                                          ; preds = %if.else17
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and21 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body.if.end39_crit_edge, label %do.body24

do.body.if.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_farch_handle_generated_event.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_farch_handle_generated_event, %if.then29)) #15
          to label %if.end39 [label %if.then29], !srcloc !91

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_farch_handle_generated_event.__UNIQUE_ID_ddebug540, ptr noundef %19, ptr noundef nonnull @.str.29, i32 noundef %21, i32 noundef %24, i32 noundef %27) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %do.body24, %do.body.if.end39_crit_edge, %if.then19, %if.then16, %if.then9, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_farch_handle_driver_event(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %do.body
    i32 15, label %do.body48
    i32 14, label %do.body38
    i32 11, label %do.body26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 40
  %9 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_tx_channels.i, align 4
  %mul.i = shl i32 %10, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul.i)
  %cmp.i = icmp ult i32 %7, %mul.i
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %div10.i = lshr i32 %7, 2
  %rem.i = and i32 %7, 3
  %tx_channel_offset.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 39
  %11 = ptrtoint ptr %tx_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_channel_offset.i.i, align 32
  %add.i.i = add i32 %12, %div10.i
  %arrayidx.i.i = getelementptr %struct.ef4_nic, ptr %1, i32 0, i32 23, i32 %add.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %flush_outstanding.i = getelementptr %struct.ef4_channel, ptr %14, i32 0, i32 32, i32 %rem.i, i32 27
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flush_outstanding.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %flush_outstanding.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then.i
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %flush_outstanding.i, ptr %flush_outstanding.i, i32 1, i32 0, ptr elementtype(i32) %flush_outstanding.i) #15, !srcloc !100
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool.not.i, label %atomic_cmpxchg.exit.i.sw.epilog_crit_edge, label %if.then2.i

atomic_cmpxchg.exit.i.sw.epilog_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then2.i:                                       ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %channel.i = getelementptr %struct.ef4_channel, ptr %14, i32 0, i32 32, i32 %rem.i, i32 2
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel.i, align 8
  %queue.i = getelementptr %struct.ef4_channel, ptr %14, i32 0, i32 32, i32 %rem.i, i32 1
  %18 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue.i, align 4
  %or3.i = or i32 %19, 66560
  %20 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #15
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 128
  %channel3.i.i = getelementptr inbounds %struct.ef4_channel, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %channel3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel3.i.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  %biu_lock.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %22, i32 0, i32 103
  %call3.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i.i) #15
  %membase.i.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %22, i32 0, i32 13
  %26 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %27, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %20) #15, !srcloc !86
  %28 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i25.i.i.i.i = getelementptr i8, ptr %29, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i.i, i32 112) #15, !srcloc !86
  %30 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i27.i.i.i.i = getelementptr i8, ptr %31, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i.i, i32 %25) #15, !srcloc !86
  %32 = ptrtoint ptr %membase.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i.i.i, align 4
  %add.ptr.i29.i.i.i.i = getelementptr i8, ptr %33, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i.i, i32 noundef %call3.i.i.i.i) #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %34 = tail call i32 @llvm.bswap.i32(i32 %5) #15
  %and.i = and i32 %34, 4095
  %35 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i81 = icmp eq i32 %35, 0
  %n_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 36
  %36 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %37)
  %cmp.not.i = icmp ult i32 %and.i, %37
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb5
  %arrayidx.i.i82 = getelementptr %struct.ef4_nic, ptr %1, i32 0, i32 23, i32 %and.i
  %38 = ptrtoint ptr %arrayidx.i.i82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i82, align 4
  %core_index.i.i = getelementptr inbounds %struct.ef4_channel, ptr %39, i32 0, i32 30, i32 1
  %40 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %core_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.i = icmp sgt i32 %41, -1
  br i1 %cmp.i.i, label %if.end6.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i81, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end6.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %42 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable.i, align 8
  %and10.i = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then12.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %44 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %45, ptr noundef nonnull @.str.35, i32 noundef %and.i) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %do.body.i.do.end.i_crit_edge
  %flush_pending.i = getelementptr inbounds %struct.ef4_channel, ptr %39, i32 0, i32 30, i32 6
  %46 = ptrtoint ptr %flush_pending.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %flush_pending.i, align 1
  %rxq_flush_pending.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 97
  %call.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rxq_flush_pending.i, i32 1, i32 3, i32 1) #15
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_pending.i, ptr %rxq_flush_pending.i, i32 1, ptr elementtype(i32) %rxq_flush_pending.i) #15, !srcloc !95
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %channel.i.i = getelementptr %struct.ef4_channel, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel.i.i, align 4
  %or16.i = or i32 %49, 66304
  %50 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #15
  %51 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %39, align 128
  %53 = tail call i32 @llvm.bswap.i32(i32 %49) #15
  %biu_lock.i.i.i.i84 = getelementptr inbounds %struct.ef4_nic, ptr %52, i32 0, i32 103
  %call3.i.i.i.i85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i.i84) #15
  %membase.i.i.i.i.i86 = getelementptr inbounds %struct.ef4_nic, ptr %52, i32 0, i32 13
  %54 = ptrtoint ptr %membase.i.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i.i.i.i86, align 4
  %add.ptr.i.i.i.i.i87 = getelementptr i8, ptr %55, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i87, i32 %50) #15, !srcloc !86
  %56 = ptrtoint ptr %membase.i.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i.i.i.i86, align 4
  %add.ptr.i25.i.i.i.i88 = getelementptr i8, ptr %57, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i.i88, i32 112) #15, !srcloc !86
  %58 = ptrtoint ptr %membase.i.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i.i.i.i86, align 4
  %add.ptr.i27.i.i.i.i89 = getelementptr i8, ptr %59, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i.i89, i32 %53) #15, !srcloc !86
  %60 = ptrtoint ptr %membase.i.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i.i.i.i86, align 4
  %add.ptr.i29.i.i.i.i90 = getelementptr i8, ptr %61, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i.i90, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i.i84, i32 noundef %call3.i.i.i.i85) #15
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %do.end.i
  %rxq_flush_outstanding.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 98
  %call.i.i37.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rxq_flush_outstanding.i, i32 1, i32 3, i32 1) #15
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_outstanding.i, ptr %rxq_flush_outstanding.i, i32 1, ptr elementtype(i32) %rxq_flush_outstanding.i) #15, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  %active_queues.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 96
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i.i, i32 noundef 4) #15
  %63 = ptrtoint ptr %active_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %active_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i38.i = icmp eq i32 %64, 0
  br i1 %cmp.i38.i, label %if.end17.i.if.then19.i_crit_edge, label %lor.rhs.i.i

if.end17.i.if.then19.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19.i

lor.rhs.i.i:                                      ; preds = %if.end17.i
  %call.i.i9.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  %65 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp4.i.i = icmp slt i32 %66, 4
  br i1 %cmp4.i.i, label %ef4_farch_flush_wake.exit.i, label %lor.rhs.i.i.sw.epilog_crit_edge

lor.rhs.i.i.sw.epilog_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

ef4_farch_flush_wake.exit.i:                      ; preds = %lor.rhs.i.i
  %rxq_flush_pending.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 97
  %call.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending.i.i, i32 noundef 4) #15
  %67 = ptrtoint ptr %rxq_flush_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %rxq_flush_pending.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp6.i.i = icmp sgt i32 %68, 0
  br i1 %cmp6.i.i, label %ef4_farch_flush_wake.exit.i.if.then19.i_crit_edge, label %ef4_farch_flush_wake.exit.i.sw.epilog_crit_edge

ef4_farch_flush_wake.exit.i.sw.epilog_crit_edge:  ; preds = %ef4_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

ef4_farch_flush_wake.exit.i.if.then19.i_crit_edge: ; preds = %ef4_farch_flush_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then19.i

if.then19.i:                                      ; preds = %ef4_farch_flush_wake.exit.i.if.then19.i_crit_edge, %if.end17.i.if.then19.i_crit_edge
  %flush_wq.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 99
  tail call void @__wake_up(ptr noundef %flush_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %69 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable, align 8
  %and8 = and i32 %70, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body9

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_farch_handle_driver_event.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_farch_handle_driver_event, %if.then14)) #15
          to label %sw.epilog [label %if.then14], !srcloc !91

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %71 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev, align 4
  %channel15 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %73 = ptrtoint ptr %channel15 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %channel15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_farch_handle_driver_event.__UNIQUE_ID_ddebug541, ptr noundef %72, ptr noundef nonnull @.str.31, i32 noundef %74, i32 noundef %7) #15
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  %msg_enable27 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %75 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable27, align 8
  %and28 = and i32 %76, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.do.end35_crit_edge, label %if.then30

do.body26.do.end35_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end35

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev31 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %77 = ptrtoint ptr %net_dev31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net_dev31, align 4
  %channel32 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %79 = ptrtoint ptr %channel32 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %channel32, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %78, ptr noundef nonnull @.str.32, i32 noundef %80) #18
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body26.do.end35_crit_edge
  %rx_reset = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 87
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_reset, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %rx_reset, i32 1, i32 3, i32 1) #15
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_reset, ptr %rx_reset, i32 1, ptr elementtype(i32) %rx_reset) #15, !srcloc !95
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %82 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %83, i32 0, i32 79
  %84 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp = icmp slt i32 %85, 2
  %cond = select i1 %cmp, i32 10, i32 6
  tail call void @ef4_schedule_reset(ptr noundef %1, i32 noundef %cond) #15
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  %msg_enable39 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %86 = ptrtoint ptr %msg_enable39 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_enable39, align 8
  %and40 = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.do.end46_crit_edge, label %if.then42

do.body38.do.end46_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end46

if.then42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev43 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %88 = ptrtoint ptr %net_dev43 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %net_dev43, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %89, ptr noundef nonnull @.str.33, i32 noundef %7, i32 noundef %7) #18
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body38.do.end46_crit_edge
  tail call void @ef4_schedule_reset(ptr noundef %1, i32 noundef 11) #15
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  %msg_enable49 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %90 = ptrtoint ptr %msg_enable49 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable49, align 8
  %and50 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body48.do.end56_crit_edge, label %if.then52

do.body48.do.end56_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end56

if.then52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev53 = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %92 = ptrtoint ptr %net_dev53 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net_dev53, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %93, ptr noundef nonnull @.str.34, i32 noundef %7, i32 noundef %7) #18
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body48.do.end56_crit_edge
  tail call void @ef4_schedule_reset(ptr noundef %1, i32 noundef 11) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end56, %do.end46, %do.end35, %if.then14, %do.body9, %do.body.sw.epilog_crit_edge, %if.then19.i, %ef4_farch_flush_wake.exit.i.sw.epilog_crit_edge, %lor.rhs.i.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.then2.i, %atomic_cmpxchg.exit.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_ev_probe(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq_mask = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_mask, align 8
  %eventq = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10
  %add = shl i32 %3, 3
  %mul = add i32 %add, 8
  %call = tail call fastcc i32 @ef4_alloc_special_buffer(ptr noundef %1, ptr noundef %eventq, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_ev_init(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_farch_ev_init.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_farch_ev_init, %if.then6)) #15
          to label %do.end13 [label %if.then6], !srcloc !91

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %channel7 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel7, align 4
  %index = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %entries = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries, align 4
  %add = add i32 %9, -1
  %sub = add i32 %add, %11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_farch_ev_init.__UNIQUE_ID_ddebug542, ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %9, i32 noundef %sub) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then6, %do.body2, %entry.do.end13_crit_edge
  %eventq14 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10
  tail call fastcc void @ef4_init_special_buffer(ptr noundef %1, ptr noundef %eventq14)
  %12 = ptrtoint ptr %eventq14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eventq14, align 4
  %len = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %16 = call ptr @memset(ptr %13, i32 255, i32 %15)
  %entries20 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %entries20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entries20, align 4
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 false) #15, !range !92
  %shl = shl nuw nsw i32 %19, 20
  %index23 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %index23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index23, align 4
  %22 = or i32 %21, %shl
  %or2547 = or i32 %22, 8388608
  %23 = tail call i32 @llvm.bswap.i32(i32 %or2547)
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 4
  %evq_ptr_tbl_base = getelementptr inbounds %struct.ef4_nic_type, ptr %25, i32 0, i32 83
  %26 = ptrtoint ptr %evq_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %evq_ptr_tbl_base, align 4
  %channel32 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %28 = ptrtoint ptr %channel32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel32, align 4
  %mul.i = shl i32 %29, 4
  %add.i = add i32 %mul.i, %27
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %23) #15, !srcloc !86
  %add7.i.i = add i32 %add.i, 4
  %32 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %33, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #15, !srcloc !86
  %add9.i.i = add i32 %add.i, 8
  %34 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %35, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #15, !srcloc !86
  %add11.i.i = add i32 %add.i, 12
  %36 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %37, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_ev_fini(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %type = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %evq_ptr_tbl_base = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 83
  %4 = ptrtoint ptr %evq_ptr_tbl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evq_ptr_tbl_base, align 4
  %channel5 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel5, align 4
  %mul.i = shl i32 %7, 4
  %add.i = add i32 %mul.i, %5
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !86
  %add7.i.i = add i32 %add.i, 4
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %11, i32 %add7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #15, !srcloc !86
  %add9.i.i = add i32 %add.i, 8
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %13, i32 %add9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #15, !srcloc !86
  %add11.i.i = add i32 %add.i, 12
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %15, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  %eventq = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10
  tail call fastcc void @ef4_fini_special_buffer(ptr noundef %1, ptr noundef %eventq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_ev_remove(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10
  %2 = ptrtoint ptr %eventq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eventq, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.ef4_free_special_buffer.exit_crit_edge, label %do.body.i

entry.ef4_free_special_buffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_free_special_buffer.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end19.i_crit_edge, label %do.body3.i

do.body.i.do.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19.i

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_free_special_buffer.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_farch_ev_remove, %if.then7.i)) #15
          to label %do.end19.i [label %if.then7.i], !srcloc !91

if.then7.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %index.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %entries.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries.i, align 4
  %add.i = add i32 %9, -1
  %sub.i = add i32 %add.i, %11
  %dma_addr.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr.i, align 4
  %conv.i = zext i32 %13 to i64
  %len.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %16 = ptrtoint ptr %eventq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eventq, align 4
  %18 = ptrtoint ptr %17 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %18) #15
  %conv16.i = zext i32 %call.i.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_free_special_buffer.__UNIQUE_ID_ddebug525, ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %sub.i, i64 noundef %conv.i, i32 noundef %15, ptr noundef %17, i64 noundef %conv16.i) #15
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then7.i, %do.body3.i, %do.body.i.do.end19.i_crit_edge
  tail call void @ef4_nic_free_buffer(ptr noundef %1, ptr noundef %eventq) #15
  %entries21.i = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %entries21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %entries21.i, align 4
  br label %ef4_free_special_buffer.exit

ef4_free_special_buffer.exit:                     ; preds = %do.end19.i, %entry.ef4_free_special_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_ev_test_generate(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.ef4_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel1, align 4
  %or = or i32 %1, 65792
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel, align 128
  %5 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %biu_lock.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %4, i32 0, i32 103
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #15
  %membase.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %4, i32 0, i32 13
  %6 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %2) #15, !srcloc !86
  %8 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %9, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 112) #15, !srcloc !86
  %10 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %11, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %5) #15, !srcloc !86
  %12 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %13, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_rx_defer_refill(ptr nocapture noundef readonly %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rx_queue, i32 -356
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -352
  %0 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel.i, align 4
  %or = or i32 %1, 66048
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %5 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %biu_lock.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %4, i32 0, i32 103
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #15
  %membase.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %4, i32 0, i32 13
  %6 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %2) #15, !srcloc !86
  %8 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %9, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 112) #15, !srcloc !86
  %10 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %11, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %5) #15, !srcloc !86
  %12 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %13, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_irq_enable_master(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_status = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 58
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_status, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 8
  %3 = load ptr, ptr %irq_status, align 4
  %arrayidx3 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx3, align 4
  %5 = load ptr, ptr %irq_status, align 4
  %arrayidx6 = getelementptr [4 x i32], ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx6, align 8
  %7 = load ptr, ptr %irq_status, align 4
  %arrayidx9 = getelementptr [4 x i32], ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @arm_heavy_mb() #15
  %irq_level.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 60
  %9 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_level.i, align 4
  %shl.i = shl i32 %10, 8
  %or9.i = or i32 %shl.i, 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #15
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #15, !srcloc !86
  %14 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #15, !srcloc !86
  %16 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #15, !srcloc !86
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_irq_disable_master(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_level.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 60
  %0 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_level.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = lshr i32 %2, 8
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %3) #15, !srcloc !86
  %6 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #15, !srcloc !86
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #15, !srcloc !86
  %10 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_irq_test_generate(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_level.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 60
  %0 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_level.i, align 4
  %shl.i = shl i32 %1, 8
  %or9.i = or i32 %shl.i, 9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #15
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %3 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %2) #15, !srcloc !86
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 0) #15, !srcloc !86
  %7 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 0) #15, !srcloc !86
  %9 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call3.i.i) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_fatal_interrupt(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_data1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 63
  %0 = ptrtoint ptr %nic_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_data1, align 4
  %irq_status = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 58
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_status, align 4
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !85
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %8, i32 564
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !85
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %11, i32 568
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !85
  %13 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %14, i32 572
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #15
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %18 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %18, 4095
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  %arrayidx5 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %arrayidx6 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %arrayidx7 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = tail call i32 @llvm.bswap.i32(i32 %15)
  %34 = tail call i32 @llvm.bswap.i32(i32 %12)
  %35 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool13.not, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %18, ptr noundef nonnull %cond) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %36 = and i32 %6, 16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %.not = icmp eq i32 %36, 0
  br i1 %.not, label %do.end.if.end42_crit_edge, label %if.then28

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then28:                                        ; preds = %do.end
  %call2.i97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %37 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %38, i32 608
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i99) #15, !srcloc !85
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i100 = getelementptr i8, ptr %41, i32 612
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i100) #15, !srcloc !85
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i102 = getelementptr i8, ptr %44, i32 616
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i102) #15, !srcloc !85
  %46 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i104 = getelementptr i8, ptr %47, i32 620
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i104) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i97) #15
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 8
  %and31 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then28.if.end42_crit_edge, label %if.then33

if.then28.if.end42_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  %net_dev34 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %51 = ptrtoint ptr %net_dev34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net_dev34, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %48)
  %54 = tail call i32 @llvm.bswap.i32(i32 %45)
  %55 = tail call i32 @llvm.bswap.i32(i32 %42)
  %56 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.11, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56) #18
  br label %if.end42

if.end42:                                         ; preds = %if.then33, %if.then28.if.end42_crit_edge, %do.end.if.end42_crit_edge
  %pci_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 4
  %57 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_clear_master(ptr noundef %58) #15
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %59 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %type.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %60, i32 0, i32 79
  %61 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i = icmp slt i32 %62, 2
  br i1 %cmp.i, label %if.then43, label %if.end42.if.end44_crit_edge

if.end42.if.end44_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then43:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  tail call void @pci_clear_master(ptr noundef %64) #15
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end42.if.end44_crit_edge
  %irq_level.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 60
  %65 = ptrtoint ptr %irq_level.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq_level.i.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #15
  %68 = lshr i32 %67, 8
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %68) #15, !srcloc !86
  %71 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %72, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 0) #15, !srcloc !86
  %73 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %74, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 0) #15, !srcloc !86
  %75 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %76, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i.i.i) #15
  %int_error_count = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 55
  %77 = ptrtoint ptr %int_error_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %int_error_count, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp = icmp eq i32 %78, 0
  br i1 %cmp, label %if.end44.if.then46_crit_edge, label %lor.lhs.false

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.end44
  %int_error_expire = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 56
  %79 = ptrtoint ptr %int_error_expire to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %int_error_expire, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %80, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp45 = icmp slt i32 %sub, 0
  br i1 %cmp45, label %lor.lhs.false.if.then46_crit_edge, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.end44.if.then46_crit_edge
  %82 = ptrtoint ptr %int_error_count to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %int_error_count, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %83, 360000
  %int_error_expire48 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 56
  %84 = ptrtoint ptr %int_error_expire48 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add, ptr %int_error_expire48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %lor.lhs.false.if.end49_crit_edge
  %85 = ptrtoint ptr %int_error_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %int_error_count, align 64
  %inc = add i32 %86, 1
  store i32 %inc, ptr %int_error_count, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp51 = icmp ult i32 %inc, 5
  %87 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_enable, align 8
  %and55 = and i32 %88, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end49.if.end71_crit_edge, label %if.end71.sink.split

if.end49.if.end71_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.end71.sink.split:                              ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %.str.12..str.13 = select i1 %cmp51, ptr @.str.12, ptr @.str.13
  %net_dev67 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %89 = ptrtoint ptr %net_dev67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_dev67, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull %.str.12..str.13) #18
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.end49.if.end71_crit_edge
  %. = select i1 %cmp51, i32 9, i32 6
  tail call void @ef4_schedule_reset(ptr noundef %efx, i32 noundef %.) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_legacy_interrupt(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_soft_enabled = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 57
  %0 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %irq_soft_enabled, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %irq_status = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 58
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_status, align 4
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !85
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @ef4_try_recovery(ptr noundef %dev_id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %eeh_disabled_legacy_irq = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 8
  %8 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %eeh_disabled_legacy_irq, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  %legacy_irq = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 7
  %10 = ptrtoint ptr %legacy_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %legacy_irq, align 16
  tail call void @disable_irq_nosync(i32 noundef %11) #15
  %12 = ptrtoint ptr %eeh_disabled_legacy_irq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %eeh_disabled_legacy_irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %irq_level = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 60
  %13 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_level, align 4
  %shl8 = shl nuw i32 1, %14
  %and9 = and i32 %shl8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %brmerge = select i1 %tobool10.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end.if.end25_crit_edge, label %if.then13

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then13:                                        ; preds = %if.end
  %arrayidx14 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 8
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.end23, label %if.then21, !prof !89

if.then21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = tail call i32 @ef4_farch_fatal_interrupt(ptr noundef %dev_id)
  br label %cleanup

if.end23:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %18 = tail call i32 @llvm.read_register.i32(metadata !75) #15
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %last_irq_cpu = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 104
  %22 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_irq_cpu, align 16
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp26.not = icmp eq i32 %6, 0
  %irq_zero_count50 = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 59
  br i1 %cmp26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %irq_zero_count50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %irq_zero_count50, align 8
  br i1 %tobool.not, label %if.then27.cleanup_crit_edge, label %if.then35, !prof !87

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35:                                        ; preds = %if.then27
  %channel36 = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 23
  %24 = ptrtoint ptr %channel36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel36, align 4
  %tobool38.not144 = icmp eq ptr %25, null
  br i1 %tobool38.not144, label %if.then35.cleanup_crit_edge, label %for.body.lr.ph

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then35
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %queues.0147 = phi i32 [ %7, %for.body.lr.ph ], [ %shr, %cond.end.for.body_crit_edge ]
  %channel.0145 = phi ptr [ %25, %for.body.lr.ph ], [ %36, %cond.end.for.body_crit_edge ]
  %and39 = and i32 %queues.0147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %for.body.if.end42_crit_edge, label %if.then41

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then41:                                        ; preds = %for.body
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #15
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %event_test_cpu.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0145, i32 0, i32 13
  %30 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %event_test_cpu.i, align 32
  %napi_str.i.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0145, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #15
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.then41.if.end42_crit_edge

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then.i.i.i:                                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #15
  br label %if.end42

if.end42:                                         ; preds = %if.then.i.i.i, %if.then41.if.end42_crit_edge, %for.body.if.end42_crit_edge
  %channel43 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0145, i32 0, i32 1
  %31 = ptrtoint ptr %channel43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel43, align 4
  %add = add i32 %32, 1
  %33 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %34)
  %cmp44 = icmp ult i32 %add, %34
  br i1 %cmp44, label %cond.end, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.end:                                         ; preds = %if.end42
  %shr = lshr i32 %queues.0147, 1
  %arrayidx48 = getelementptr %struct.ef4_nic, ptr %dev_id, i32 0, i32 23, i32 %add
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx48, align 4
  %tobool38.not = icmp eq ptr %36, null
  br i1 %tobool38.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %37 = ptrtoint ptr %irq_zero_count50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_zero_count50, align 8
  %inc = add i32 %38, 1
  store i32 %inc, ptr %irq_zero_count50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp51 = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then61, !prof !87

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then61:                                        ; preds = %if.else
  %channel62 = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 23
  %39 = ptrtoint ptr %channel62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %channel62, align 4
  %tobool65.not148 = icmp eq ptr %40, null
  br i1 %tobool65.not148, label %if.then61.cleanup_crit_edge, label %for.body66.lr.ph

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body66.lr.ph:                                 ; preds = %if.then61
  %n_channels76 = getelementptr inbounds %struct.ef4_nic, ptr %dev_id, i32 0, i32 36
  br label %for.body66

for.body66:                                       ; preds = %cond.end84.for.body66_crit_edge, %for.body66.lr.ph
  %channel.1149 = phi ptr [ %40, %for.body66.lr.ph ], [ %72, %cond.end84.for.body66_crit_edge ]
  %eventq_read_ptr = getelementptr inbounds %struct.ef4_channel, ptr %channel.1149, i32 0, i32 12
  %41 = ptrtoint ptr %eventq_read_ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eventq_read_ptr, align 4
  %eventq.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1149, i32 0, i32 10
  %43 = ptrtoint ptr %eventq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %eventq.i, align 4
  %eventq_mask.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1149, i32 0, i32 11
  %45 = ptrtoint ptr %eventq_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eventq_mask.i, align 8
  %and.i133 = and i32 %46, %42
  %add.ptr.i = getelementptr %union.ef4_qword, ptr %44, i32 %and.i133
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i = icmp eq i32 %48, -1
  %arrayidx2.i = getelementptr [2 x %union.ef4_dword], ptr %add.ptr.i, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp4.i = icmp eq i32 %50, -1
  %tobool69.not = or i1 %cmp.i, %cmp4.i
  br i1 %tobool69.not, label %if.else71, label %if.then70

if.then70:                                        ; preds = %for.body66
  %51 = tail call i32 @llvm.read_register.i32(metadata !75) #15
  %and.i.i134 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i134 to ptr
  %cpu.i135 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i135 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i135, align 4
  %event_test_cpu.i136 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1149, i32 0, i32 13
  %55 = ptrtoint ptr %event_test_cpu.i136 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %event_test_cpu.i136, align 32
  %napi_str.i.i137 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1149, i32 0, i32 8
  %call.i.i.i138 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i137) #15
  br i1 %call.i.i.i138, label %if.then.i.i.i139, label %if.then70.for.inc73_crit_edge

if.then70.for.inc73_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73

if.then.i.i.i139:                                 ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i137) #15
  br label %for.inc73

if.else71:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %channel.1149 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %channel.1149, align 128
  %58 = tail call i32 @llvm.bswap.i32(i32 %and.i133) #15
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %57, i32 0, i32 6
  %59 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %type.i, align 4
  %evq_rptr_tbl_base.i = getelementptr inbounds %struct.ef4_nic_type, ptr %60, i32 0, i32 84
  %61 = ptrtoint ptr %evq_rptr_tbl_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %evq_rptr_tbl_base.i, align 8
  %channel3.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.1149, i32 0, i32 1
  %63 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %channel3.i, align 4
  %mul.i = shl i32 %64, 4
  %add.i = add i32 %mul.i, %62
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %57, i32 0, i32 13
  %65 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %58) #15, !srcloc !86
  br label %for.inc73

for.inc73:                                        ; preds = %if.else71, %if.then.i.i.i139, %if.then70.for.inc73_crit_edge
  %channel74 = getelementptr inbounds %struct.ef4_channel, ptr %channel.1149, i32 0, i32 1
  %67 = ptrtoint ptr %channel74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channel74, align 4
  %add75 = add i32 %68, 1
  %69 = ptrtoint ptr %n_channels76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_channels76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %70)
  %cmp77 = icmp ult i32 %add75, %70
  br i1 %cmp77, label %cond.end84, label %for.inc73.cleanup_crit_edge

for.inc73.cleanup_crit_edge:                      ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.end84:                                       ; preds = %for.inc73
  %arrayidx82 = getelementptr %struct.ef4_nic, ptr %dev_id, i32 0, i32 23, i32 %add75
  %71 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx82, align 4
  %tobool65.not = icmp eq ptr %72, null
  br i1 %tobool65.not, label %cond.end84.cleanup_crit_edge, label %cond.end84.for.body66_crit_edge

cond.end84.for.body66_crit_edge:                  ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body66

cond.end84.cleanup_crit_edge:                     ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end84.cleanup_crit_edge, %for.inc73.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then21
  %retval.0.shrunk = phi i1 [ true, %if.then21 ], [ true, %if.then27.cleanup_crit_edge ], [ %cmp51, %if.else.cleanup_crit_edge ], [ %cmp51, %if.then61.cleanup_crit_edge ], [ true, %if.then35.cleanup_crit_edge ], [ %cmp51, %cond.end84.cleanup_crit_edge ], [ %cmp51, %for.inc73.cleanup_crit_edge ], [ true, %cond.end.cleanup_crit_edge ], [ true, %if.end42.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_try_recovery(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_msi_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %irq_status = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_status, align 4
  %irq_soft_enabled = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 57
  %4 = ptrtoint ptr %irq_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %irq_soft_enabled, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !87

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.ef4_msi_context, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %irq_level = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then6, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then6:                                         ; preds = %if.end
  %arrayidx = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end16, label %if.then15, !prof !89

if.then15:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @ef4_farch_fatal_interrupt(ptr noundef %1)
  br label %cleanup

if.end16:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #15
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %last_irq_cpu = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 104
  %17 = ptrtoint ptr %last_irq_cpu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_irq_cpu, align 16
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end.if.end18_crit_edge
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %arrayidx20 = getelementptr %struct.ef4_nic, ptr %1, i32 0, i32 23, i32 %19
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20, align 4
  %22 = tail call i32 @llvm.read_register.i32(metadata !75) #15
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %event_test_cpu.i = getelementptr inbounds %struct.ef4_channel, ptr %21, i32 0, i32 13
  %26 = ptrtoint ptr %event_test_cpu.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %event_test_cpu.i, align 32
  %napi_str.i.i = getelementptr inbounds %struct.ef4_channel, ptr %21, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_str.i.i) #15
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi_str.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.end18.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_rx_push_indir_table(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %do.body2, label %for.cond.preheader, !prof !87

for.cond.preheader:                               ; preds = %entry
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1620, 0\0A.popsection", ""() #15, !srcloc !103
  unreachable

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %for.cond.preheader
  %i.022 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %do.body12.do.body12_crit_edge ]
  %arrayidx = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 53, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %mul = shl nuw nsw i32 %i.022, 4
  %add = add nuw nsw i32 %mul, 16449536
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #15, !srcloc !86
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %do.body12.do.body12_crit_edge

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12

for.end:                                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_farch_dimension_resources(ptr nocapture noundef %efx, i32 noundef %sram_lim_qw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  %0 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_channels, align 4
  %n_tx_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 40
  %2 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_tx_channels, align 4
  %mul = shl i32 %3, 2
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %mul)
  %mul1.neg = mul i32 %4, -16
  %sub = add i32 %mul1.neg, %sram_lim_qw
  %tx_dc_base = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 30
  %5 = ptrtoint ptr %tx_dc_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %tx_dc_base, align 4
  %mul3.neg = mul i32 %4, -64
  %sub4 = add i32 %sub, %mul3.neg
  %rx_dc_base = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 31
  %6 = ptrtoint ptr %rx_dc_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub4, ptr %rx_dc_base, align 64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_fpga_ver(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 768
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !85
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %4, i32 772
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !85
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %7, i32 776
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !85
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %10, i32 780
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #15
  %12 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_init_common(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dc_base = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 30
  %0 = ptrtoint ptr %tx_dc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_dc_base, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %3 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #15, !srcloc !86
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %6, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #15, !srcloc !86
  %7 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %8, i32 1576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #15, !srcloc !86
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 1580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  %rx_dc_base = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 31
  %11 = ptrtoint ptr %rx_dc_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_dc_base, align 64
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call3.i283 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %14 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i285 = getelementptr i8, ptr %15, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i285, i32 %13) #15, !srcloc !86
  %16 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i287 = getelementptr i8, ptr %17, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i287, i32 0) #15, !srcloc !86
  %18 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i289 = getelementptr i8, ptr %19, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i289, i32 0) #15, !srcloc !86
  %20 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i291 = getelementptr i8, ptr %21, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i291, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i283) #15
  %call3.i293 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i295 = getelementptr i8, ptr %23, i32 2592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i295, i32 16777216) #15, !srcloc !86
  %24 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i297 = getelementptr i8, ptr %25, i32 2596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i297, i32 0) #15, !srcloc !86
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i299 = getelementptr i8, ptr %27, i32 2600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i299, i32 0) #15, !srcloc !86
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i301 = getelementptr i8, ptr %29, i32 2604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i301, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i293) #15
  %call3.i303 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %31, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i305, i32 50331648) #15, !srcloc !86
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i307 = getelementptr i8, ptr %33, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i307, i32 0) #15, !srcloc !86
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i309 = getelementptr i8, ptr %35, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i309, i32 0) #15, !srcloc !86
  %36 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i311 = getelementptr i8, ptr %37, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i311, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i303) #15
  %call3.i313 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %38 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i315 = getelementptr i8, ptr %39, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i315, i32 939524096) #15, !srcloc !86
  %40 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i317 = getelementptr i8, ptr %41, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i317, i32 0) #15, !srcloc !86
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i319 = getelementptr i8, ptr %43, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i319, i32 0) #15, !srcloc !86
  %44 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i321 = getelementptr i8, ptr %45, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i321, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i313) #15
  %dma_addr = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 58, i32 1
  %46 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_addr, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %interrupt_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 14
  %49 = ptrtoint ptr %interrupt_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interrupt_mode, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp = icmp ult i32 %50, 2
  %51 = select i1 %cmp, i32 16777216, i32 0
  %call3.i323 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %52 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i325 = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i325, i32 %48) #15, !srcloc !86
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i327 = getelementptr i8, ptr %55, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i327, i32 0) #15, !srcloc !86
  %56 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i329 = getelementptr i8, ptr %57, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i329, i32 %51) #15, !srcloc !86
  %58 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i331 = getelementptr i8, ptr %59, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i331, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i323) #15
  %irq_level = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 60
  %60 = ptrtoint ptr %irq_level to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %irq_level, align 4
  %call3.i333 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %61 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i335 = getelementptr i8, ptr %62, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i335, i32 -1) #15, !srcloc !86
  %63 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i337 = getelementptr i8, ptr %64, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i337, i32 1040187391) #15, !srcloc !86
  %65 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i339 = getelementptr i8, ptr %66, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i339, i32 -1) #15, !srcloc !86
  %67 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i341 = getelementptr i8, ptr %68, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i341, i32 -1) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i333) #15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i344 = getelementptr i8, ptr %70, i32 2688
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i344) #15, !srcloc !85
  %72 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i345 = getelementptr i8, ptr %73, i32 2692
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i345) #15, !srcloc !85
  %75 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %76, i32 2696
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !85
  %78 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %79, i32 2700
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #15
  %and90 = and i32 %77, 16777213
  %or148 = or i32 %and90, -33554430
  %or159 = and i32 %71, -57088
  %or220 = or i32 %74, -15794166
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %82, i32 0, i32 79
  %83 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp232 = icmp sgt i32 %84, 1
  %spec.select.v = select i1 %cmp232, i32 -2147428609, i32 55039
  %spec.select = or i32 %spec.select.v, %or159
  %call3.i348 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %85 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i350 = getelementptr i8, ptr %86, i32 2688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i350, i32 %spec.select) #15, !srcloc !86
  %87 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i352 = getelementptr i8, ptr %88, i32 2692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i352, i32 %or220) #15, !srcloc !86
  %89 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i354 = getelementptr i8, ptr %90, i32 2696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i354, i32 %or148) #15, !srcloc !86
  %91 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i356 = getelementptr i8, ptr %92, i32 2700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i356, i32 %80) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i348) #15
  %93 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %type.i, align 4
  %revision.i358 = getelementptr inbounds %struct.ef4_nic_type, ptr %94, i32 0, i32 79
  %95 = ptrtoint ptr %revision.i358 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %revision.i358, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp254 = icmp sgt i32 %96, 1
  br i1 %cmp254, label %do.body257, label %entry.if.end264_crit_edge

entry.if.end264_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end264

do.body257:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i360 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %97 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i362 = getelementptr i8, ptr %98, i32 2704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i362, i32 353806336) #15, !srcloc !86
  %99 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i364 = getelementptr i8, ptr %100, i32 2708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i364, i32 0) #15, !srcloc !86
  %101 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i366 = getelementptr i8, ptr %102, i32 2712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i366, i32 0) #15, !srcloc !86
  %103 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i368 = getelementptr i8, ptr %104, i32 2716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i368, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i360) #15
  br label %if.end264

if.end264:                                        ; preds = %do.body257, %entry.if.end264_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_get_rx_id_limit(ptr nocapture noundef readonly %efx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.cond, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %do.cond.3.if.then_crit_edge, %do.cond.2.if.then_crit_edge, %do.cond.1.if.then_crit_edge, %do.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %range.0.lcssa = phi i32 [ 32768, %entry.if.then_crit_edge ], [ 24576, %do.cond.if.then_crit_edge ], [ 16384, %do.cond.1.if.then_crit_edge ], [ 8192, %do.cond.2.if.then_crit_edge ], [ 0, %do.cond.3.if.then_crit_edge ]
  %.lcssa = phi i32 [ %3, %entry.if.then_crit_edge ], [ %5, %do.cond.if.then_crit_edge ], [ %7, %do.cond.1.if.then_crit_edge ], [ %9, %do.cond.2.if.then_crit_edge ], [ %11, %do.cond.3.if.then_crit_edge ]
  %or = or i32 %.lcssa, %range.0.lcssa
  br label %cleanup

do.cond:                                          ; preds = %entry
  %size.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.1 = icmp eq i32 %5, 0
  br i1 %cmp.not.1, label %do.cond.1, label %do.cond.if.then_crit_edge

do.cond.if.then_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.cond.1:                                        ; preds = %do.cond
  %6 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.2 = icmp eq i32 %7, 0
  br i1 %cmp.not.2, label %do.cond.2, label %do.cond.1.if.then_crit_edge

do.cond.1.if.then_crit_edge:                      ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.cond.2:                                        ; preds = %do.cond.1
  %size.3 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.3 = icmp eq i32 %9, 0
  br i1 %cmp.not.3, label %do.cond.3, label %do.cond.2.if.then_crit_edge

do.cond.2.if.then_crit_edge:                      ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.cond.3:                                        ; preds = %do.cond.2
  %10 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.4 = icmp eq i32 %11, 0
  br i1 %cmp.not.4, label %do.cond.3.cleanup_crit_edge, label %do.cond.3.if.then_crit_edge

do.cond.3.if.then_crit_edge:                      ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

do.cond.3.cleanup_crit_edge:                      ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %do.cond.3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %or, %if.then ], [ 0, %do.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_insert(ptr noundef %efx, ptr noundef readonly %gen_spec, i1 noundef zeroext %replace_equal) local_unnamed_addr #0 align 64 {
entry:
  %spec = alloca %struct.ef4_farch_filter_spec, align 4
  %filter = alloca %union.ef4_oword, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %spec) #15
  %2 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %7 = call ptr @memset(ptr %spec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %rss_context.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 1
  %12 = ptrtoint ptr %rss_context.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rss_context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, -1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup155_crit_edge

land.lhs.true.i.cleanup155_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup155

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %bf.lshr2.i = lshr i32 %bf.load.i, 18
  %14 = trunc i32 %bf.lshr2.i to i8
  %conv.i = and i8 %14, 3
  %bf.lshr7.i = lshr i32 %bf.load.i, 12
  %15 = trunc i32 %bf.lshr7.i to i8
  %conv9.i = and i8 %15, 63
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9.i, ptr %2, align 1
  %17 = trunc i32 %bf.load.i to i16
  %conv12.i = and i16 %17, 4095
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv12.i, ptr %3, align 2
  %bf.lshr14.i = lshr i32 %bf.load.i, 20
  %19 = zext i32 %bf.lshr14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %bf.lshr14.i, label %if.end.i.cleanup155_crit_edge [
    i32 619, label %sw.bb.i
    i32 610, label %if.end.i.sw.bb15.i_crit_edge
    i32 272, label %sw.bb88.i
    i32 16, label %cond.end104.critedge.i
    i32 1024, label %sw.bb137.i
  ]

if.end.i.sw.bb15.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15.i

if.end.i.cleanup155_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup155

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15.i

sw.bb15.i:                                        ; preds = %sw.bb.i, %if.end.i.sw.bb15.i_crit_edge
  %is_full.0.off0.i = phi i1 [ false, %if.end.i.sw.bb15.i_crit_edge ], [ true, %sw.bb.i ]
  %ether_type.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 6
  %20 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ether_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %cmp17.not.i = icmp eq i16 %21, 2048
  br i1 %cmp17.not.i, label %if.end20.i, label %sw.bb15.i.cleanup155_crit_edge

sw.bb15.i.cleanup155_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup155

if.end20.i:                                       ; preds = %sw.bb15.i
  %loc_port.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 10
  %22 = ptrtoint ptr %loc_port.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %loc_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp22.i = icmp eq i16 %23, 0
  br i1 %cmp22.i, label %if.end20.i.cleanup155_crit_edge, label %lor.lhs.false.i

if.end20.i.cleanup155_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup155

lor.lhs.false.i:                                  ; preds = %if.end20.i
  br i1 %is_full.0.off0.i, label %land.lhs.true26.i, label %lor.lhs.false.i.if.end31.i_crit_edge

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

land.lhs.true26.i:                                ; preds = %lor.lhs.false.i
  %rem_port.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 11
  %24 = ptrtoint ptr %rem_port.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rem_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp28.i = icmp eq i16 %25, 0
  br i1 %cmp28.i, label %land.lhs.true26.i.cleanup155_crit_edge, label %land.lhs.true26.i.if.end31.i_crit_edge

land.lhs.true26.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

land.lhs.true26.i.cleanup155_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup155

if.end31.i:                                       ; preds = %land.lhs.true26.i.if.end31.i_crit_edge, %lor.lhs.false.i.if.end31.i_crit_edge
  %ip_proto.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 7
  %26 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ip_proto.i, align 2
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %27, label %if.end31.i.cleanup155_crit_edge [
    i8 6, label %sw.epilog.i.thread
    i8 17, label %sw.epilog.i
  ]

if.end31.i.cleanup155_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup155

sw.epilog.i:                                      ; preds = %if.end31.i
  %conv45.i = select i1 %is_full.0.off0.i, i8 32, i8 48
  %storemerge.i = or i8 %conv45.i, %conv.i
  %29 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %storemerge.i, ptr %spec, align 4
  br i1 %is_full.0.off0.i, label %sw.epilog.i.cond.end60.thread.i_crit_edge, label %sw.epilog.i.cleanup.i_crit_edge

sw.epilog.i.cleanup.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

sw.epilog.i.cond.end60.thread.i_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end60.thread.i

sw.epilog.i.thread:                               ; preds = %if.end31.i
  %bf.shl.i = select i1 %is_full.0.off0.i, i8 0, i8 16
  %storemerge.i249 = or i8 %bf.shl.i, %conv.i
  %30 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge.i249, ptr %spec, align 4
  br i1 %is_full.0.off0.i, label %sw.epilog.i.thread.cond.end60.thread.i_crit_edge, label %sw.epilog.i.thread.if.else.i_crit_edge

sw.epilog.i.thread.if.else.i_crit_edge:           ; preds = %sw.epilog.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

sw.epilog.i.thread.cond.end60.thread.i_crit_edge: ; preds = %sw.epilog.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end60.thread.i

cond.end60.thread.i:                              ; preds = %sw.epilog.i.thread.cond.end60.thread.i_crit_edge, %sw.epilog.i.cond.end60.thread.i_crit_edge
  %rem_host.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 9
  %31 = ptrtoint ptr %rem_host.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rem_host.i, align 4
  %rem_port57.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 11
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
  %.in = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 8
  %35 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %.in, align 4
  %shl.i223 = shl i32 %cond53199204.i, 16
  %conv74.i = zext i16 %port1.0.i to i32
  %or.i224 = or i32 %shl.i223, %conv74.i
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i224, ptr %4, align 4
  %or78.i = tail call i32 @llvm.fshl.i32(i32 %port2.0.i, i32 %cond53199204.i, i32 16) #15
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or78.i, ptr %5, align 4
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %6, align 4
  br label %if.end

sw.bb88.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set98.i = or i8 %conv.i, 64
  %40 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.set98.i, ptr %spec, align 4
  %outer_vid.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 2
  %41 = ptrtoint ptr %outer_vid.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %outer_vid.i, align 4
  %conv102.i = zext i16 %42 to i32
  br label %cond.end104.i

cond.end104.critedge.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
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
  %loc_mac.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 4
  %arrayidx108.i = getelementptr %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx108.i, align 2
  %conv109.i = zext i8 %46 to i32
  %shl110.i = shl nuw i32 %conv109.i, 24
  %arrayidx112.i = getelementptr %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx112.i, align 1
  %conv113.i = zext i8 %48 to i32
  %shl114.i = shl nuw nsw i32 %conv113.i, 16
  %or115.i = or i32 %shl114.i, %shl110.i
  %arrayidx117.i = getelementptr %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx117.i, align 4
  %conv118.i = zext i8 %50 to i32
  %shl119.i = shl nuw nsw i32 %conv118.i, 8
  %or120.i = or i32 %or115.i, %shl119.i
  %arrayidx122.i = getelementptr %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 5
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
  %arrayidx132.i = getelementptr %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 4, i32 1
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
  call void @__sanitizer_cov_trace_pc() #17
  %loc_mac138.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %gen_spec, i32 0, i32 4
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
  %64 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i225 = load i8, ptr %spec, align 4
  %bf.lshr.i = lshr i8 %bf.load.i225, 6
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %2, align 1
  %67 = lshr i8 %66, 3
  %68 = and i8 %67, 2
  %narrow.i = add nuw nsw i8 %68, %bf.lshr.i
  %add.i = zext i8 %narrow.i to i32
  %arrayidx = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 2
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp = icmp eq i32 %70, 0
  br i1 %cmp, label %if.end.cleanup155_crit_edge, label %if.end4

if.end.cleanup155_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup155

if.end4:                                          ; preds = %if.end
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp5 = icmp eq i32 %72, 2
  br i1 %cmp5, label %do.end9, label %if.else

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %bf.lshr = lshr i8 %bf.load.i225, 4
  %conv = zext i8 %bf.lshr to i32
  %sub = add nsw i32 %conv, -8
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  br label %if.end63

if.else:                                          ; preds = %if.end4
  %call10 = call fastcc i32 @ef4_farch_filter_build(ptr noundef nonnull %filter, ptr noundef nonnull %spec)
  %shr.i227 = lshr i32 %call10, 16
  %conv.i228 = xor i32 %shr.i227, 8191
  %73 = lshr i32 %conv.i228, 3
  %xor4.i = xor i32 %73, %conv.i228
  %74 = lshr i32 %conv.i228, 6
  %xor7.i = xor i32 %xor4.i, %74
  %75 = lshr i32 %xor7.i, 9
  %.masked.i = and i32 %75, 65535
  %conv14.i = xor i32 %.masked.i, %xor7.i
  %shl.i229 = shl nuw nsw i32 %conv14.i, 13
  %xor16.i = xor i32 %conv14.i, %call10
  %xor17.i = xor i32 %xor16.i, %shl.i229
  %conv19.i = and i32 %xor17.i, 65535
  %76 = lshr i32 %conv19.i, 3
  %77 = lshr i32 %conv19.i, 6
  %xor22.masked.i = xor i32 %76, %conv19.i
  %conv27.i = xor i32 %xor22.masked.i, %77
  %78 = lshr i32 %conv27.i, 9
  %xor30.i = xor i32 %78, %conv27.i
  %79 = shl i32 %call10, 1
  %conv.i230 = add i32 %79, 65535
  %conv14 = and i32 %conv.i230, 65535
  %80 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load15 = load i8, ptr %spec, align 4
  %bf.lshr16 = lshr i8 %bf.load15, 4
  %idxprom = zext i8 %bf.lshr16 to i32
  %arrayidx17 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 7, i32 %idxprom
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
  %filter_lock24 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  call void @_raw_spin_lock_bh(ptr noundef %filter_lock24) #15
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 5
  %85 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %used_bitmap, align 4
  %spec33 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 6
  br label %for.cond

for.cond:                                         ; preds = %if.end54, %if.else
  %ins_index.0 = phi i32 [ -1, %if.else ], [ %ins_index.2, %if.end54 ]
  %depth.0 = phi i32 [ 1, %if.else ], [ %inc, %if.end54 ]
  %i.0 = phi i32 [ %and, %if.else ], [ %and57, %if.end54 ]
  %div3.i = lshr i32 %i.0, 5
  %arrayidx.i = getelementptr i32, ptr %86, i32 %div3.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0, 31
  %89 = shl nuw i32 1, %and.i
  %90 = and i32 %88, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool26.not = icmp eq i32 %90, 0
  br i1 %tobool26.not, label %if.then27, label %if.else32

if.then27:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.0)
  %cmp28 = icmp slt i32 %ins_index.0, 0
  %spec.select = select i1 %cmp28, i32 %i.0, i32 %ins_index.0
  br label %if.end42

if.else32:                                        ; preds = %for.cond
  %91 = ptrtoint ptr %spec33 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spec33, align 4
  %arrayidx34 = getelementptr %struct.ef4_farch_filter_spec, ptr %92, i32 %i.0
  %93 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load.i231 = load i8, ptr %spec, align 4
  %94 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load1.i = load i8, ptr %arrayidx34, align 4
  %cmp.not.unshifted.i = xor i8 %bf.load1.i, %bf.load.i231
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cmp.not.unshifted.i)
  %cmp.not.i232 = icmp ult i8 %cmp.not.unshifted.i, 16
  br i1 %cmp.not.i232, label %lor.lhs.false.i235, label %if.else32.if.end42_crit_edge

if.else32.if.end42_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

lor.lhs.false.i235:                               ; preds = %if.else32
  %data5.i = getelementptr %struct.ef4_farch_filter_spec, ptr %92, i32 %i.0, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(12) %4, ptr noundef dereferenceable(12) %data5.i, i32 12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i234 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i234, label %if.end.i237, label %lor.lhs.false.i235.if.end42_crit_edge

lor.lhs.false.i235.if.end42_crit_edge:            ; preds = %lor.lhs.false.i235
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.end.i237:                                      ; preds = %lor.lhs.false.i235
  %95 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %2, align 1
  %97 = and i8 %96, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool8.not.i = icmp eq i8 %97, 0
  br i1 %tobool8.not.i, label %if.end.i237.if.then36_crit_edge, label %land.lhs.true.i239

if.end.i237.if.then36_crit_edge:                  ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

land.lhs.true.i239:                               ; preds = %if.end.i237
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %3, align 2
  %dmaq_id10.i = getelementptr %struct.ef4_farch_filter_spec, ptr %92, i32 %i.0, i32 2
  %100 = ptrtoint ptr %dmaq_id10.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %dmaq_id10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %101)
  %cmp12.not.i = icmp eq i16 %99, %101
  br i1 %cmp12.not.i, label %land.lhs.true.i239.if.then36_crit_edge, label %land.lhs.true.i239.if.end42_crit_edge

land.lhs.true.i239.if.end42_crit_edge:            ; preds = %land.lhs.true.i239
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

land.lhs.true.i239.if.then36_crit_edge:           ; preds = %land.lhs.true.i239
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.then36:                                        ; preds = %land.lhs.true.i239.if.then36_crit_edge, %if.end.i237.if.then36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.0)
  %cmp37 = icmp slt i32 %ins_index.0, 0
  %spec.select218 = select i1 %cmp37, i32 %i.0, i32 %ins_index.0
  br label %if.end63

if.end42:                                         ; preds = %land.lhs.true.i239.if.end42_crit_edge, %lor.lhs.false.i235.if.end42_crit_edge, %if.else32.if.end42_crit_edge, %if.then27
  %ins_index.2 = phi i32 [ %spec.select, %if.then27 ], [ %ins_index.0, %lor.lhs.false.i235.if.end42_crit_edge ], [ %ins_index.0, %if.else32.if.end42_crit_edge ], [ %ins_index.0, %land.lhs.true.i239.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0, i32 %82)
  %cmp43.not = icmp ult i32 %depth.0, %82
  br i1 %cmp43.not, label %if.end42.if.end54_crit_edge, label %land.lhs.true

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_index.2)
  %cmp45 = icmp slt i32 %ins_index.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0, i32 %cond)
  %cmp47.not = icmp ult i32 %depth.0, %cond
  %or.cond = select i1 %cmp45, i1 %cmp47.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end54_crit_edge, label %if.then49

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then49:                                        ; preds = %land.lhs.true
  br i1 %cmp45, label %if.then49.out_crit_edge, label %if.then49.if.then111_crit_edge

if.then49.if.then111_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then111

if.then49.out_crit_edge:                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %if.end42.if.end54_crit_edge
  %add = add i32 %i.0, %conv14
  %102 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %size, align 4
  %sub56 = add i32 %103, -1
  %and57 = and i32 %sub56, %add
  %inc = add nuw i32 %depth.0, 1
  br label %for.cond

if.end63:                                         ; preds = %if.then36, %do.end9
  %ins_index.5 = phi i32 [ %sub, %do.end9 ], [ %spec.select218, %if.then36 ]
  %depth.1 = phi i32 [ 0, %do.end9 ], [ %depth.0, %if.then36 ]
  %rep_index.2 = phi i32 [ %sub, %do.end9 ], [ %i.0, %if.then36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rep_index.2)
  %cmp64 = icmp sgt i32 %rep_index.2, -1
  br i1 %cmp64, label %if.then66, label %if.end63.if.end108_crit_edge

if.end63.if.end108_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

if.then66:                                        ; preds = %if.end63
  %spec67 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 6
  %104 = ptrtoint ptr %spec67 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %spec67, align 4
  %arrayidx68 = getelementptr %struct.ef4_farch_filter_spec, ptr %105, i32 %rep_index.2
  %106 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load69 = load i8, ptr %spec, align 4
  %107 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load72 = load i8, ptr %arrayidx68, align 4
  %108 = xor i8 %bf.load72, %bf.load69
  %109 = and i8 %108, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp75 = icmp ne i8 %109, 0
  %brmerge = or i1 %cmp75, %replace_equal
  br i1 %brmerge, label %if.end80, label %if.then66.out_crit_edge

if.then66.out_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end80:                                         ; preds = %if.then66
  %bf.clear82 = and i8 %bf.load69, 15
  %bf.clear85 = and i8 %bf.load72, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear82, i8 %bf.clear85)
  %cmp87 = icmp ult i8 %bf.clear82, %bf.clear85
  br i1 %cmp87, label %if.end80.out_crit_edge, label %if.end90

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end90:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear85)
  %cmp94 = icmp eq i8 %bf.clear85, 1
  br i1 %cmp94, label %if.end90.if.then100_crit_edge, label %lor.lhs.false96

if.end90.if.then100_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then100

lor.lhs.false96:                                  ; preds = %if.end90
  %flags = getelementptr %struct.ef4_farch_filter_spec, ptr %105, i32 %rep_index.2, i32 1
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %flags, align 1
  %112 = and i8 %111, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool99.not = icmp eq i8 %112, 0
  br i1 %tobool99.not, label %lor.lhs.false96.if.end108_crit_edge, label %lor.lhs.false96.if.then100_crit_edge

lor.lhs.false96.if.then100_crit_edge:             ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then100

lor.lhs.false96.if.end108_crit_edge:              ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

if.then100:                                       ; preds = %lor.lhs.false96.if.then100_crit_edge, %if.end90.if.then100_crit_edge
  %113 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %2, align 1
  %115 = or i8 %114, 4
  store i8 %115, ptr %2, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %lor.lhs.false96.if.end108_crit_edge, %if.end63.if.end108_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %ins_index.5, i32 %rep_index.2)
  %cmp109.not = icmp eq i32 %ins_index.5, %rep_index.2
  br i1 %cmp109.not, label %if.end108.if.end114_crit_edge, label %if.end108.if.then111_crit_edge

if.end108.if.then111_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then111

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114

if.then111:                                       ; preds = %if.end108.if.then111_crit_edge, %if.then49.if.then111_crit_edge
  %ins_index.5267283 = phi i32 [ %ins_index.5, %if.end108.if.then111_crit_edge ], [ %ins_index.2, %if.then49.if.then111_crit_edge ]
  %depth.1269281 = phi i32 [ %depth.1, %if.end108.if.then111_crit_edge ], [ %depth.0, %if.then49.if.then111_crit_edge ]
  %rep_index.2270279 = phi i32 [ %rep_index.2, %if.end108.if.then111_crit_edge ], [ -1, %if.then49.if.then111_crit_edge ]
  %cmp64271277 = phi i1 [ %cmp64, %if.end108.if.then111_crit_edge ], [ false, %if.then49.if.then111_crit_edge ]
  %used_bitmap112 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 5
  %116 = ptrtoint ptr %used_bitmap112 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %used_bitmap112, align 4
  %rem.i = and i32 %ins_index.5267283, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %ins_index.5267283, 5
  %add.ptr.i = getelementptr i32, ptr %117, i32 %div2.i
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %119, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %used = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 4
  %120 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %used, align 4
  %inc113 = add i32 %121, 1
  store i32 %inc113, ptr %used, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end108.if.end114_crit_edge
  %cmp109.not286 = phi i1 [ false, %if.then111 ], [ true, %if.end108.if.end114_crit_edge ]
  %ins_index.5267284 = phi i32 [ %ins_index.5267283, %if.then111 ], [ %ins_index.5, %if.end108.if.end114_crit_edge ]
  %depth.1269282 = phi i32 [ %depth.1269281, %if.then111 ], [ %depth.1, %if.end108.if.end114_crit_edge ]
  %rep_index.2270280 = phi i32 [ %rep_index.2270279, %if.then111 ], [ %ins_index.5, %if.end108.if.end114_crit_edge ]
  %cmp64271278 = phi i1 [ %cmp64271277, %if.then111 ], [ %cmp64, %if.end108.if.end114_crit_edge ]
  %spec115 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 6
  %122 = ptrtoint ptr %spec115 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %spec115, align 4
  %arrayidx116 = getelementptr %struct.ef4_farch_filter_spec, ptr %123, i32 %ins_index.5267284
  %124 = call ptr @memcpy(ptr %arrayidx116, ptr %spec, i32 16)
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp118 = icmp eq i32 %126, 2
  br i1 %cmp118, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx)
  br label %if.end151

if.else121:                                       ; preds = %if.end114
  %127 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load123 = load i8, ptr %spec, align 4
  %bf.lshr124 = lshr i8 %bf.load123, 4
  %idxprom125 = zext i8 %bf.lshr124 to i32
  %arrayidx126 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 7, i32 %idxprom125
  %128 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %depth.1269282)
  %cmp127 = icmp ult i32 %129, %depth.1269282
  br i1 %cmp127, label %if.then129, label %if.else121.if.end142_crit_edge

if.else121.if.end142_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

if.then129:                                       ; preds = %if.else121
  %130 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %depth.1269282, ptr %arrayidx126, align 4
  %131 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %2, align 1
  %133 = and i8 %132, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool138.not = icmp eq i8 %133, 0
  br i1 %tobool138.not, label %if.else140, label %if.then139

if.then139:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ef4_farch_filter_push_tx_limits(ptr noundef %efx)
  br label %if.end142

if.else140:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx)
  br label %if.end142

if.end142:                                        ; preds = %if.else140, %if.then139, %if.else121.if.end142_crit_edge
  %offset = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 1
  %134 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %offset, align 4
  %step = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %add.i, i32 3
  %136 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %step, align 4
  %mul = mul i32 %137, %ins_index.5267284
  %add143 = add i32 %mul, %135
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %138 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %filter, align 8
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %140 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %141, i32 %add143
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %139) #15, !srcloc !86
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 1
  %142 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add143, 4
  %144 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %145, i32 %add7.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %143) #15, !srcloc !86
  %146 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %8, align 8
  %add9.i = add i32 %add143, 8
  %148 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %149, i32 %add9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %147) #15, !srcloc !86
  %arrayidx10.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 3
  %150 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add143, 12
  %152 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %153, i32 %add11.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %151) #15, !srcloc !86
  call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  %cmp64.not = xor i1 %cmp64271278, true
  %brmerge222 = or i1 %cmp109.not286, %cmp64.not
  br i1 %brmerge222, label %if.end142.if.end151_crit_edge, label %if.then149

if.end142.if.end151_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

if.then149:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @ef4_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %arrayidx, i32 noundef %rep_index.2270280)
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end142.if.end151_crit_edge, %if.then120
  %154 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load.i240 = load i8, ptr %spec, align 4
  %bf.lshr.i241 = lshr i8 %bf.load.i240, 4
  %idxprom.i = zext i8 %bf.lshr.i241 to i32
  %arrayidx.i242 = getelementptr [10 x i8], ptr @ef4_farch_filter_type_match_pri, i32 0, i32 %idxprom.i
  %155 = ptrtoint ptr %arrayidx.i242 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i242, align 1
  %conv.i243 = zext i8 %156 to i32
  %157 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %2, align 1
  %159 = and i8 %158, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i245 = icmp eq i8 %159, 0
  %160 = shl nuw nsw i32 %conv.i243, 13
  %161 = add nuw nsw i32 %160, 40960
  %shl.i246 = select i1 %tobool.not.i245, i32 %161, i32 %160
  %or.i247 = or i32 %shl.i246, %ins_index.5267284
  br label %out

out:                                              ; preds = %if.end151, %if.end80.out_crit_edge, %if.then66.out_crit_edge, %if.then49.out_crit_edge
  %rc.3 = phi i32 [ %or.i247, %if.end151 ], [ -16, %if.then49.out_crit_edge ], [ -17, %if.then66.out_crit_edge ], [ -1, %if.end80.out_crit_edge ]
  %filter_lock154 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  call void @_raw_spin_unlock_bh(ptr noundef %filter_lock154) #15
  br label %cleanup155

cleanup155:                                       ; preds = %out, %if.end.cleanup155_crit_edge, %if.end31.i.cleanup155_crit_edge, %land.lhs.true26.i.cleanup155_crit_edge, %if.end20.i.cleanup155_crit_edge, %sw.bb15.i.cleanup155_crit_edge, %if.end.i.cleanup155_crit_edge, %land.lhs.true.i.cleanup155_crit_edge
  %retval.0 = phi i32 [ %rc.3, %out ], [ -22, %if.end.cleanup155_crit_edge ], [ -93, %sw.bb15.i.cleanup155_crit_edge ], [ -99, %land.lhs.true26.i.cleanup155_crit_edge ], [ -99, %if.end20.i.cleanup155_crit_edge ], [ -93, %if.end31.i.cleanup155_crit_edge ], [ -93, %if.end.i.cleanup155_crit_edge ], [ -22, %land.lhs.true.i.cleanup155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spec) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef4_farch_filter_build(ptr nocapture noundef writeonly %filter, ptr noundef readonly %spec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %spec, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %flags.i = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 1
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags.i, align 1
  %3 = lshr i8 %2, 3
  %4 = and i8 %3, 2
  %narrow.i = add nuw nsw i8 %4, %bf.lshr.i
  %add.i = zext i8 %narrow.i to i32
  %5 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %add.i, label %do.body203 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
    i32 3, label %sw.bb139
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = and i8 %bf.load.i, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %6)
  %7 = icmp eq i8 %6, 32
  %8 = zext i1 %7 to i32
  %data = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %filter, align 8
  %arrayidx11 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx17 = getelementptr [4 x i32], ptr %filter, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
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
  %dmaq_id = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #17
  %bf.lshr60.mask = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %bf.lshr60.mask)
  %cmp62 = icmp eq i8 %bf.lshr60.mask, 80
  %data66 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3
  %arrayidx67 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
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
  %dmaq_id78 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 2
  %33 = ptrtoint ptr %dmaq_id78 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dmaq_id78, align 2
  %conv79 = zext i16 %34 to i32
  %shl80 = shl i32 %conv79, 29
  %conv84 = zext i1 %cmp62 to i32
  %conv86 = select i1 %cmp62, i32 268435456, i32 0
  %or87 = or i32 %shl80, %conv86
  %arrayidx89 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
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
  call void @__sanitizer_cov_trace_pc() #17
  %bf.lshr142.mask = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %bf.lshr142.mask)
  %cmp144 = icmp eq i8 %bf.lshr142.mask, 80
  %data148 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3
  %arrayidx149 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
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
  %dmaq_id160 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 2
  %55 = ptrtoint ptr %dmaq_id160 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %dmaq_id160, align 2
  %conv161 = zext i16 %56 to i32
  %shl162 = shl i32 %conv161, 29
  %conv166 = zext i1 %cmp144 to i32
  %conv168 = select i1 %cmp144, i32 268435456, i32 0
  %or169 = or i32 %shl162, %conv168
  %arrayidx171 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
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
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2218, 0\0A.popsection", ""() #15, !srcloc !104
  unreachable

sw.epilog:                                        ; preds = %sw.bb139, %sw.bb58, %sw.bb
  %data3.0 = phi i32 [ %or202, %sw.bb139 ], [ %conv84, %sw.bb58 ], [ %8, %sw.bb ]
  %data209 = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3
  %71 = ptrtoint ptr %data209 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data209, align 4
  %arrayidx212 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx212, align 4
  %arrayidx214 = getelementptr %struct.ef4_farch_filter_spec, ptr %spec, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx214, align 4
  %xor = xor i32 %72, %data3.0
  %xor215 = xor i32 %xor, %74
  %xor216 = xor i32 %xor215, %76
  ret i32 %xor216
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2064
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !85
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %6, i32 2068
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !85
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 2072
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !85
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %12, i32 2076
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #15
  %search_limit = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %search_limit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %search_limit, align 4
  %arrayidx22 = getelementptr %struct.ef4_farch_filter_table, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx22, align 4
  %and48 = and i32 %7, 16777215
  %arrayidx50 = getelementptr %struct.ef4_farch_filter_table, ptr %1, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %19, 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %add51)
  %or55 = or i32 %20, %and48
  %arrayidx71 = getelementptr %struct.ef4_farch_filter_table, ptr %1, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx71, align 4
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body94:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and104 = and i32 %10, -49408
  %arrayidx106 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 7, i32 4
  %25 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx106, align 4
  %add107 = shl i32 %26, 22
  %shl108 = add i32 %add107, 4194304
  %27 = and i32 %shl108, 1069547520
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and129 = or i32 %28, %and104
  %arrayidx131 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 7, i32 5
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
  %filter_ctl.sroa.24.0.off0 = phi i32 [ %13, %entry.if.end_crit_edge ], [ %or146, %do.body94 ]
  %filter_ctl.sroa.24.0.off32 = phi i32 [ %10, %entry.if.end_crit_edge ], [ %or136, %do.body94 ]
  %size152 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %size152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool153.not = icmp eq i32 %34, 0
  br i1 %tobool153.not, label %if.else, label %do.body155

do.body155:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %and161 = and i32 %or55, -16613376
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 6
  %35 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spec, align 4
  %dmaq_id = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dmaq_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dmaq_id, align 2
  %conv163 = zext i16 %38 to i32
  %shl164 = shl nuw nsw i32 %conv163, 11
  %flags = getelementptr inbounds %struct.ef4_farch_filter_spec, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 1
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %shl192 = shl nuw nsw i32 %42, 18
  %dmaq_id216 = getelementptr %struct.ef4_farch_filter_spec, ptr %36, i32 1, i32 2
  %43 = ptrtoint ptr %dmaq_id216 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dmaq_id216, align 2
  %conv217 = zext i16 %44 to i32
  %45 = shl nuw nsw i32 %conv217, 1
  %46 = and i32 %45, 254
  %and224 = and i32 %filter_ctl.sroa.24.0.off32, -520093697
  %47 = lshr i16 %44, 7
  %shr229 = zext i16 %47 to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %shr229)
  %or232 = or i32 %48, %and224
  %49 = and i32 %shl164, 16775168
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %or167.masked.masked = or i32 %and161, %50
  %and213.masked = or i32 %or167.masked.masked, %shl192
  %and246 = or i32 %and213.masked, %46
  %flags249 = getelementptr %struct.ef4_farch_filter_spec, ptr %36, i32 1, i32 1
  %51 = ptrtoint ptr %flags249 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flags249, align 1
  %53 = and i8 %52, 1
  %.masked = zext i8 %53 to i32
  %and278 = or i32 %and246, %.masked
  %and287358 = and i8 %52, %40
  %54 = lshr i8 %and287358, 1
  %.lobit = and i8 %54, 1
  %55 = zext i8 %.lobit to i32
  %56 = shl nuw nsw i32 %55, 16
  %or297 = or i32 %and278, %56
  br label %if.end336

if.else:                                          ; preds = %if.end
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %57 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %58, i32 0, i32 79
  %59 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp = icmp sgt i32 %60, 1
  br i1 %cmp, label %do.body311, label %if.else.if.end336_crit_edge

if.else.if.end336_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end336

do.body311:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %and317 = and i32 %or55, -65537
  %rx_scatter = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 54
  %61 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rx_scatter, align 4, !range !94
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 16
  %or323 = or i32 %64, %and317
  br label %if.end336

if.end336:                                        ; preds = %do.body311, %if.else.if.end336_crit_edge, %do.body155
  %filter_ctl.sroa.0.sroa.11.0 = phi i32 [ %or323, %do.body311 ], [ %or55, %if.else.if.end336_crit_edge ], [ %or297, %do.body155 ]
  %filter_ctl.sroa.24.1.off32 = phi i32 [ %filter_ctl.sroa.24.0.off32, %do.body311 ], [ %filter_ctl.sroa.24.0.off32, %if.else.if.end336_crit_edge ], [ %or232, %do.body155 ]
  %and = and i32 %4, 255
  %add = add i32 %15, 1
  %65 = and i32 %add, -65281
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %and20 = or i32 %66, %and
  %add23 = shl i32 %17, 8
  %shl = add i32 %add23, 768
  %67 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %or26 = or i32 %and20, %67
  %and69 = and i32 %or26, -65281
  %add72 = shl i32 %22, 16
  %shl73 = add i32 %add72, 196608
  %68 = tail call i32 @llvm.bswap.i32(i32 %shl73)
  %or76 = or i32 %and69, %68
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i361 = getelementptr i8, ptr %70, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i361, i32 %or76) #15, !srcloc !86
  %71 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %72, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %filter_ctl.sroa.0.sroa.11.0) #15, !srcloc !86
  %73 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %74, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %filter_ctl.sroa.24.1.off32) #15, !srcloc !86
  %75 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i363 = getelementptr i8, ptr %76, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i363, i32 %filter_ctl.sroa.24.0.off0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_farch_filter_push_tx_limits(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %2 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2640
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !85
  %5 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %6, i32 2644
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !85
  %8 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 2648
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !85
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %12, i32 2652
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #15
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and13 = and i32 %13, 16842495
  %arrayidx14 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 3, i32 7, i32 4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %add = shl i32 %17, 1
  %shl = add i32 %add, 2
  %18 = and i32 %shl, -130562
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and32 = or i32 %19, %and13
  %arrayidx34 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 3, i32 7, i32 5
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
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %23 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %24, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %4) #15, !srcloc !86
  %25 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %26, i32 2644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %7) #15, !srcloc !86
  %27 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %28, i32 2648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %10) #15, !srcloc !86
  %29 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i51 = getelementptr i8, ptr %30, i32 2652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i51, i32 %tx_cfg.sroa.7.12.insert.ext57.pn.in) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_farch_filter_table_clear_entry(ptr noundef %efx, ptr nocapture noundef %table, i32 noundef %filter_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body3, label %do.end7, !prof !87

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/falcon/farch.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2478, 0\0A.popsection", ""() #15, !srcloc !105
  unreachable

do.end7:                                          ; preds = %entry
  %used_bitmap = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %table, i32 0, i32 5
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
  %used = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %table, i32 0, i32 4
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %used, align 4
  %spec = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %table, i32 0, i32 6
  %8 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec, align 4
  %arrayidx = getelementptr %struct.ef4_farch_filter_spec, ptr %9, i32 %filter_idx
  %10 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %step = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %table, i32 0, i32 3
  %13 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %step, align 4
  %mul = mul i32 %14, %filter_idx
  %add = add i32 %mul, %12
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %15 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !86
  %add7.i = add i32 %add, 4
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %18, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #15, !srcloc !86
  %add9.i = add i32 %add, 8
  %19 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %20, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #15, !srcloc !86
  %add11.i = add i32 %add, 12
  %21 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %22, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  %23 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp10 = icmp eq i32 %24, 0
  br i1 %cmp10, label %if.then17, label %do.end7.if.end21_crit_edge, !prof !87

do.end7.if.end21_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then17:                                        ; preds = %do.end7
  %search_limit = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %table, i32 0, i32 7
  %25 = call ptr @memset(ptr %search_limit, i32 0, i32 40)
  %26 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp18 = icmp eq i32 %27, 3
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_filter_push_tx_limits(ptr noundef %efx)
  br label %if.end21

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19, %do.end7.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_remove_safe(ptr noundef %efx, i32 noundef %priority, i32 noundef %filter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %filter_id)
  %cmp.i = icmp ult i32 %filter_id, 57344
  br i1 %cmp.i, label %ef4_farch_filter_id_table_id.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ef4_farch_filter_id_table_id.exit:                ; preds = %entry
  %shr.i = lshr i32 %filter_id, 13
  %arrayidx.i = getelementptr [7 x i32], ptr @ef4_farch_filter_range_table, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_id, 8191
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp3.not = icmp ult i32 %and.i, %5
  br i1 %cmp3.not, label %if.end5, label %ef4_farch_filter_id_table_id.exit.cleanup_crit_edge

ef4_farch_filter_id_table_id.exit.cleanup_crit_edge: ; preds = %ef4_farch_filter_id_table_id.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %ef4_farch_filter_id_table_id.exit
  %arrayidx = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %3
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  %spec1.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %3, i32 6
  %6 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec1.i, align 4
  %arrayidx.i19 = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i
  %used_bitmap.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %3, i32 5
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
  br i1 %tobool.not.i, label %if.end5.ef4_farch_filter_remove.exit_crit_edge, label %lor.lhs.false.i

if.end5.ef4_farch_filter_remove.exit_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_filter_remove.exit

lor.lhs.false.i:                                  ; preds = %if.end5
  %14 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %arrayidx.i19, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %priority)
  %cmp.not.i = icmp eq i32 %conv.i, %priority
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.ef4_farch_filter_remove.exit_crit_edge

lor.lhs.false.i.ef4_farch_filter_remove.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ef4_farch_filter_remove.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i, align 1
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.i = icmp eq i8 %17, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear.i.i = and i8 %bf.load.i, -16
  %bf.set.i.i = or i8 %bf.clear.i.i, 1
  %18 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set.i.i, ptr %arrayidx.i19, align 4
  %rss_spread.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 38
  %19 = ptrtoint ptr %rss_spread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rss_spread.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i.i = icmp ugt i32 %20, 1
  %cond.i.i = zext i1 %cmp.i.i.i to i8
  %rx_scatter.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 54
  %21 = ptrtoint ptr %rx_scatter.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rx_scatter.i.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %cond1.i.i = select i1 %tobool.not.i.i, i8 0, i8 2
  %or.i.i = or i8 %cond1.i.i, %cond.i.i
  %or2.i.i = or i8 %or.i.i, 8
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or2.i.i, ptr %flags.i, align 1
  %dmaq_id.i.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i, i32 2
  %24 = ptrtoint ptr %dmaq_id.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %dmaq_id.i.i, align 2
  tail call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx) #15
  br label %ef4_farch_filter_remove.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %arrayidx, i32 noundef %and.i) #15
  br label %ef4_farch_filter_remove.exit

ef4_farch_filter_remove.exit:                     ; preds = %if.else.i, %if.then5.i, %lor.lhs.false.i.ef4_farch_filter_remove.exit_crit_edge, %if.end5.ef4_farch_filter_remove.exit_crit_edge
  %retval.0.i20 = phi i32 [ -2, %lor.lhs.false.i.ef4_farch_filter_remove.exit_crit_edge ], [ -2, %if.end5.ef4_farch_filter_remove.exit_crit_edge ], [ 0, %if.else.i ], [ 0, %if.then5.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %ef4_farch_filter_remove.exit, %ef4_farch_filter_id_table_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %ef4_farch_filter_remove.exit ], [ -2, %ef4_farch_filter_id_table_id.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_get_safe(ptr noundef %efx, i32 noundef %priority, i32 noundef %filter_id, ptr noundef writeonly %spec_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %filter_id)
  %cmp.i = icmp ult i32 %filter_id, 57344
  br i1 %cmp.i, label %ef4_farch_filter_id_table_id.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ef4_farch_filter_id_table_id.exit:                ; preds = %entry
  %shr.i28 = lshr i32 %filter_id, 13
  %arrayidx.i29 = getelementptr [7 x i32], ptr @ef4_farch_filter_range_table, i32 0, i32 %shr.i28
  %2 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i29, align 4
  %and.i30 = and i32 %filter_id, 8191
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i30, i32 %5)
  %cmp3.not = icmp ult i32 %and.i30, %5
  br i1 %cmp3.not, label %if.end5, label %ef4_farch_filter_id_table_id.exit.cleanup_crit_edge

ef4_farch_filter_id_table_id.exit.cleanup_crit_edge: ; preds = %ef4_farch_filter_id_table_id.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %ef4_farch_filter_id_table_id.exit
  %spec6 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %3, i32 6
  %6 = ptrtoint ptr %spec6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec6, align 4
  %arrayidx7 = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %3, i32 5
  %8 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %used_bitmap, align 4
  %div3.i = lshr i32 %and.i30, 5
  %arrayidx.i = getelementptr i32, ptr %9, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_id, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end5.if.end12_crit_edge, label %land.lhs.true

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx7, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %priority)
  %cmp9 = icmp eq i32 %conv, %priority
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  %15 = call ptr @memset(ptr %spec_buf, i32 0, i32 64)
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %arrayidx7, align 4
  %17 = and i8 %bf.load.i, 3
  %bf.value.i = zext i8 %17 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 18
  %18 = ptrtoint ptr %spec_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.shl.i, ptr %spec_buf, align 4
  %flags.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 1
  %21 = and i8 %20, 63
  %bf.value5.i = zext i8 %21 to i32
  %bf.shl6.i = shl nuw nsw i32 %bf.value5.i, 12
  %bf.set8.i = or i32 %bf.shl6.i, %bf.shl.i
  store i32 %bf.set8.i, ptr %spec_buf, align 4
  %dmaq_id.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 2
  %22 = ptrtoint ptr %dmaq_id.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dmaq_id.i, align 2
  %24 = and i16 %23, 4095
  %bf.value11.i = zext i16 %24 to i32
  %bf.set13.i = or i32 %bf.set8.i, %bf.value11.i
  store i32 %bf.set13.i, ptr %spec_buf, align 4
  %bf.load14.i = load i8, ptr %arrayidx7, align 4
  %bf.lshr.i = lshr i8 %bf.load14.i, 4
  %conv15.i = zext i8 %bf.lshr.i to i32
  %25 = zext i32 %conv15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %conv15.i, label %do.end.i [
    i32 0, label %if.then11._crit_edge
    i32 2, label %if.then11._crit_edge34
    i32 1, label %if.then11.sw.bb16.i_crit_edge
    i32 3, label %if.then11.sw.bb16.i_crit_edge35
    i32 4, label %52
    i32 5, label %if.then11.sw.bb78.i_crit_edge
    i32 8, label %if.then11.sw.bb129.i_crit_edge
    i32 9, label %if.then11.sw.bb129.i_crit_edge36
  ]

if.then11.sw.bb129.i_crit_edge36:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb129.i

if.then11.sw.bb129.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb129.i

if.then11.sw.bb78.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb78.i

if.then11.sw.bb16.i_crit_edge35:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb16.i

if.then11.sw.bb16.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb16.i

if.then11._crit_edge34:                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %26

if.then11._crit_edge:                             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %26

26:                                               ; preds = %if.then11._crit_edge, %if.then11._crit_edge34
  br label %sw.bb16.i

sw.bb16.i:                                        ; preds = %26, %if.then11.sw.bb16.i_crit_edge, %if.then11.sw.bb16.i_crit_edge35
  %.sink230.i = phi i32 [ 649068544, %26 ], [ 639631360, %if.then11.sw.bb16.i_crit_edge ], [ 639631360, %if.then11.sw.bb16.i_crit_edge35 ]
  %is_full.0.off0222.i = phi i1 [ false, %26 ], [ true, %if.then11.sw.bb16.i_crit_edge ], [ true, %if.then11.sw.bb16.i_crit_edge35 ]
  %bf.set19.i = or i32 %.sink230.i, %bf.set13.i
  %27 = ptrtoint ptr %spec_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.set19.i, ptr %spec_buf, align 4
  %ether_type.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 6
  %28 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2048, ptr %ether_type.i, align 4
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load27.i = load i8, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load27.i)
  %cmp.i31 = icmp ult i8 %bf.load27.i, 16
  %bf.lshr28.mask.i = and i8 %bf.load27.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr28.mask.i)
  %cmp34.i = icmp eq i8 %bf.lshr28.mask.i, 16
  %30 = or i1 %cmp.i31, %cmp34.i
  %31 = select i1 %30, i8 6, i8 17
  %ip_proto.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 7
  %32 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %ip_proto.i, align 2
  %data.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 3
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data.i, align 4
  %arrayidx38.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx38.i, align 4
  %or39.i = tail call i32 @llvm.fshl.i32(i32 %36, i32 %34, i32 16) #15
  %conv42.i = trunc i32 %34 to i16
  %arrayidx44.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 3, i32 2
  %37 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx44.i, align 4
  %shr47.i = lshr i32 %36, 16
  %conv48.i = trunc i32 %shr47.i to i16
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags.i, align 1
  %41 = and i8 %40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool51.not.i = icmp eq i8 %41, 0
  %or39.sink.i = select i1 %tobool51.not.i, i32 %38, i32 %or39.i
  %.sink.i = select i1 %tobool51.not.i, i32 %or39.i, i32 %38
  %42 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or39.sink.i, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %44, align 4
  %not..i.demorgan = or i1 %cmp.i31, %cmp34.i
  %not..i = xor i1 %not..i.demorgan, true
  %narrow.i = select i1 %is_full.0.off0222.i, i1 %not..i, i1 false
  %46 = and i32 %bf.value5.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp eq i32 %46, 0
  %tobool71.not.i = xor i1 %47, %narrow.i
  %loc_port74.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 10
  br i1 %tobool71.not.i, label %if.else73.i, label %if.then72.i

if.then72.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %loc_port74.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv42.i, ptr %loc_port74.i, align 4
  %rem_port.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 11
  %49 = ptrtoint ptr %rem_port.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv48.i, ptr %rem_port.i, align 2
  br label %if.end12

if.else73.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %loc_port74.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv48.i, ptr %loc_port74.i, align 4
  %rem_port75.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 11
  %51 = ptrtoint ptr %rem_port75.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv42.i, ptr %rem_port75.i, align 2
  br label %if.end12

52:                                               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb78.i

sw.bb78.i:                                        ; preds = %52, %if.then11.sw.bb78.i_crit_edge
  %.sink231.i = phi i32 [ 285212672, %52 ], [ 16777216, %if.then11.sw.bb78.i_crit_edge ]
  %bf.set81.i = or i32 %.sink231.i, %bf.set13.i
  %53 = ptrtoint ptr %spec_buf to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %bf.set81.i, ptr %spec_buf, align 4
  %data93.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 3
  %arrayidx94.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 3, i32 2
  %54 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx94.i, align 4
  %shr95.i = lshr i32 %55, 8
  %conv96.i = trunc i32 %shr95.i to i8
  %loc_mac.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 4
  %56 = ptrtoint ptr %loc_mac.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv96.i, ptr %loc_mac.i, align 4
  %57 = load i32, ptr %arrayidx94.i, align 4
  %conv100.i = trunc i32 %57 to i8
  %arrayidx102.i = getelementptr %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv100.i, ptr %arrayidx102.i, align 1
  %arrayidx104.i = getelementptr %struct.ef4_farch_filter_spec, ptr %7, i32 %and.i30, i32 3, i32 1
  %59 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx104.i, align 4
  %shr105.i = lshr i32 %60, 24
  %conv106.i = trunc i32 %shr105.i to i8
  %arrayidx108.i = getelementptr %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 4, i32 2
  %61 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv106.i, ptr %arrayidx108.i, align 2
  %62 = load i32, ptr %arrayidx104.i, align 4
  %shr111.i = lshr i32 %62, 16
  %conv112.i = trunc i32 %shr111.i to i8
  %arrayidx114.i = getelementptr %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 4, i32 3
  %63 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv112.i, ptr %arrayidx114.i, align 1
  %64 = load i32, ptr %arrayidx104.i, align 4
  %shr117.i = lshr i32 %64, 8
  %conv118.i = trunc i32 %shr117.i to i8
  %arrayidx120.i = getelementptr %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv118.i, ptr %arrayidx120.i, align 4
  %66 = load i32, ptr %arrayidx104.i, align 4
  %conv123.i = trunc i32 %66 to i8
  %arrayidx125.i = getelementptr %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 4, i32 5
  %67 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv123.i, ptr %arrayidx125.i, align 1
  %68 = ptrtoint ptr %data93.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data93.i, align 4
  %conv128.i = trunc i32 %69 to i16
  %outer_vid.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 2
  %70 = ptrtoint ptr %outer_vid.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv128.i, ptr %outer_vid.i, align 4
  br label %if.end12

sw.bb129.i:                                       ; preds = %if.then11.sw.bb129.i_crit_edge, %if.then11.sw.bb129.i_crit_edge36
  %bf.set132.i = or i32 %bf.set13.i, 1073741824
  %71 = ptrtoint ptr %spec_buf to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %bf.set132.i, ptr %spec_buf, align 4
  %72 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load133.i = load i8, ptr %arrayidx7, align 4
  %bf.lshr134.mask.i = and i8 %bf.load133.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %bf.lshr134.mask.i)
  %cmp136.i = icmp eq i8 %bf.lshr134.mask.i, -112
  %conv138.i = zext i1 %cmp136.i to i8
  %loc_mac139.i = getelementptr inbounds %struct.ef4_filter_spec, ptr %spec_buf, i32 0, i32 4
  %73 = ptrtoint ptr %loc_mac139.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv138.i, ptr %loc_mac139.i, align 4
  br label %if.end12

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2144, i32 noundef 9, ptr noundef null) #15
  br label %if.end12

if.end12:                                         ; preds = %do.end.i, %sw.bb129.i, %sw.bb78.i, %if.else73.i, %if.then72.i, %land.lhs.true.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %rc.0 = phi i32 [ -2, %land.lhs.true.if.end12_crit_edge ], [ -2, %if.end5.if.end12_crit_edge ], [ 0, %if.then72.i ], [ 0, %if.else73.i ], [ 0, %sw.bb78.i ], [ 0, %sw.bb129.i ], [ 0, %do.end.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %ef4_farch_filter_id_table_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end12 ], [ -2, %ef4_farch_filter_id_table_id.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_clear_rx(ptr noundef %efx, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ef4_farch_filter_table_clear(ptr noundef %efx, i32 noundef 0, i32 noundef %priority)
  tail call fastcc void @ef4_farch_filter_table_clear(ptr noundef %efx, i32 noundef 1, i32 noundef %priority)
  tail call fastcc void @ef4_farch_filter_table_clear(ptr noundef %efx, i32 noundef 2, i32 noundef %priority)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_farch_filter_table_clear(ptr noundef %efx, i32 noundef %table_id, i32 noundef %priority) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %arrayidx = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id, i32 6
  %used_bitmap.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id, i32 5
  %rss_spread.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 38
  %rx_scatter.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 54
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %filter_idx.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec, align 4
  %arrayidx2 = getelementptr %struct.ef4_farch_filter_spec, ptr %5, i32 %filter_idx.015
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %arrayidx2, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp3.not = icmp eq i8 %bf.clear, 1
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec, align 4
  %arrayidx.i = getelementptr %struct.ef4_farch_filter_spec, ptr %8, i32 %filter_idx.015
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ef4_farch_filter_spec, ptr %8, i32 %filter_idx.015, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i, align 1
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear.i.i = and i8 %bf.load.i, -16
  %bf.set.i.i = or i8 %bf.clear.i.i, 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set.i.i, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %rss_spread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rss_spread.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i.i = icmp ugt i32 %21, 1
  %cond.i.i = zext i1 %cmp.i.i.i to i8
  %22 = ptrtoint ptr %rx_scatter.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx_scatter.i.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  %cond1.i.i = select i1 %tobool.not.i.i, i8 0, i8 2
  %or.i.i = or i8 %cond1.i.i, %cond.i.i
  %or2.i.i = or i8 %or.i.i, 8
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or2.i.i, ptr %flags.i, align 1
  %dmaq_id.i.i = getelementptr %struct.ef4_farch_filter_spec, ptr %8, i32 %filter_idx.015, i32 2
  %25 = ptrtoint ptr %dmaq_id.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %dmaq_id.i.i, align 2
  tail call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx) #15
  br label %for.inc

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %arrayidx, i32 noundef %filter_idx.015) #15
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then5.i, %lor.lhs.false.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %filter_idx.015, 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_count_rx_used(ptr noundef %efx, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp323.not = icmp eq i32 %3, 0
  br i1 %cmp323.not, label %entry.for.inc9_crit_edge, label %for.body4.lr.ph

entry.for.inc9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc9

for.body4.lr.ph:                                  ; preds = %entry
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 5
  %4 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used_bitmap, align 4
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec, align 4
  %arrayidx5 = getelementptr %struct.ef4_farch_filter_spec, ptr %11, i32 %filter_idx.024
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4

for.inc.for.inc9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc9

for.inc9:                                         ; preds = %for.inc.for.inc9_crit_edge, %entry.for.inc9_crit_edge
  %count.1.lcssa = phi i32 [ 0, %entry.for.inc9_crit_edge ], [ %count.2, %for.inc.for.inc9_crit_edge ]
  %size.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp323.not.1 = icmp eq i32 %14, 0
  br i1 %cmp323.not.1, label %for.inc9.for.inc9.1_crit_edge, label %for.body4.lr.ph.1

for.inc9.for.inc9.1_crit_edge:                    ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc9.1

for.body4.lr.ph.1:                                ; preds = %for.inc9
  %used_bitmap.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %used_bitmap.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %used_bitmap.1, align 4
  %spec.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 6
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %spec.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec.1, align 4
  %arrayidx5.1 = getelementptr %struct.ef4_farch_filter_spec, ptr %22, i32 %filter_idx.024.1
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4.1

for.inc.1.for.inc9.1_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc9.1

for.inc9.1:                                       ; preds = %for.inc.1.for.inc9.1_crit_edge, %for.inc9.for.inc9.1_crit_edge
  %count.1.lcssa.1 = phi i32 [ %count.1.lcssa, %for.inc9.for.inc9.1_crit_edge ], [ %count.2.1, %for.inc.1.for.inc9.1_crit_edge ]
  %size.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp323.not.2 = icmp eq i32 %25, 0
  br i1 %cmp323.not.2, label %for.inc9.1.for.inc9.2_crit_edge, label %for.body4.lr.ph.2

for.inc9.1.for.inc9.2_crit_edge:                  ; preds = %for.inc9.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc9.2

for.body4.lr.ph.2:                                ; preds = %for.inc9.1
  %used_bitmap.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %used_bitmap.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %used_bitmap.2, align 4
  %spec.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 6
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %spec.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spec.2, align 4
  %arrayidx5.2 = getelementptr %struct.ef4_farch_filter_spec, ptr %33, i32 %filter_idx.024.2
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4.2

for.inc.2.for.inc9.2_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc9.2

for.inc9.2:                                       ; preds = %for.inc.2.for.inc9.2_crit_edge, %for.inc9.1.for.inc9.2_crit_edge
  %count.1.lcssa.2 = phi i32 [ %count.1.lcssa.1, %for.inc9.1.for.inc9.2_crit_edge ], [ %count.2.2, %for.inc.2.for.inc9.2_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #15
  ret i32 %count.1.lcssa.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_get_rx_ids(ptr noundef %efx, i32 noundef %priority, ptr nocapture noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  %size3 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp440.not = icmp eq i32 %3, 0
  br i1 %cmp440.not, label %entry.for.inc18_crit_edge, label %for.body5.lr.ph

entry.for.inc18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18

for.body5.lr.ph:                                  ; preds = %entry
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 5
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body5
  %10 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec, align 4
  %arrayidx6 = getelementptr %struct.ef4_farch_filter_spec, ptr %11, i32 %filter_idx.041
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %arrayidx6, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %priority)
  %cmp7 = icmp eq i32 %conv, %priority
  br i1 %cmp7, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %count.143, i32 %size)
  %cmp9 = icmp eq i32 %count.143, %size
  br i1 %cmp9, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %bf.lshr.i = lshr i8 %bf.load, 4
  %idxprom.i = zext i8 %bf.lshr.i to i32
  %arrayidx.i36 = getelementptr [10 x i8], ptr @ef4_farch_filter_type_match_pri, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i36, align 1
  %conv.i = zext i8 %14 to i32
  %flags.i = getelementptr %struct.ef4_farch_filter_spec, ptr %11, i32 %filter_idx.041, i32 1
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5

for.inc18:                                        ; preds = %for.inc.for.inc18_crit_edge, %entry.for.inc18_crit_edge
  %count.1.lcssa = phi i32 [ 0, %entry.for.inc18_crit_edge ], [ %count.2, %for.inc.for.inc18_crit_edge ]
  %size3.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %size3.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp440.not.1 = icmp eq i32 %24, 0
  br i1 %cmp440.not.1, label %for.inc18.for.inc18.1_crit_edge, label %for.body5.lr.ph.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18.1

for.body5.lr.ph.1:                                ; preds = %for.inc18
  %used_bitmap.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 5
  %spec.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 6
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body5.1
  %31 = ptrtoint ptr %spec.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spec.1, align 4
  %arrayidx6.1 = getelementptr %struct.ef4_farch_filter_spec, ptr %32, i32 %filter_idx.041.1
  %33 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.1 = load i8, ptr %arrayidx6.1, align 4
  %bf.clear.1 = and i8 %bf.load.1, 15
  %conv.1 = zext i8 %bf.clear.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %priority)
  %cmp7.1 = icmp eq i32 %conv.1, %priority
  br i1 %cmp7.1, label %if.then.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.143.1, i32 %size)
  %cmp9.1 = icmp eq i32 %count.143.1, %size
  br i1 %cmp9.1, label %if.then.1.out_crit_edge, label %if.end.1

if.then.1.out_crit_edge:                          ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #17
  %bf.lshr.i.1 = lshr i8 %bf.load.1, 4
  %idxprom.i.1 = zext i8 %bf.lshr.i.1 to i32
  %arrayidx.i36.1 = getelementptr [10 x i8], ptr @ef4_farch_filter_type_match_pri, i32 0, i32 %idxprom.i.1
  %34 = ptrtoint ptr %arrayidx.i36.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i36.1, align 1
  %conv.i.1 = zext i8 %35 to i32
  %flags.i.1 = getelementptr %struct.ef4_farch_filter_spec, ptr %32, i32 %filter_idx.041.1, i32 1
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18.1

for.inc.1.for.body5.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.1

for.inc18.1:                                      ; preds = %for.inc.1.for.inc18.1_crit_edge, %for.inc18.for.inc18.1_crit_edge
  %count.1.lcssa.1 = phi i32 [ %count.1.lcssa, %for.inc18.for.inc18.1_crit_edge ], [ %count.2.1, %for.inc.1.for.inc18.1_crit_edge ]
  %size3.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %size3.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size3.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp440.not.2 = icmp eq i32 %45, 0
  br i1 %cmp440.not.2, label %for.inc18.1.out_crit_edge, label %for.body5.lr.ph.2

for.inc18.1.out_crit_edge:                        ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body5.lr.ph.2:                                ; preds = %for.inc18.1
  %used_bitmap.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 5
  %spec.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 6
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body5.2
  %52 = ptrtoint ptr %spec.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spec.2, align 4
  %arrayidx6.2 = getelementptr %struct.ef4_farch_filter_spec, ptr %53, i32 %filter_idx.041.2
  %54 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.2 = load i8, ptr %arrayidx6.2, align 4
  %bf.clear.2 = and i8 %bf.load.2, 15
  %conv.2 = zext i8 %bf.clear.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %priority)
  %cmp7.2 = icmp eq i32 %conv.2, %priority
  br i1 %cmp7.2, label %if.then.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_cmp4(i32 %count.143.2, i32 %size)
  %cmp9.2 = icmp eq i32 %count.143.2, %size
  br i1 %cmp9.2, label %if.then.2.out_crit_edge, label %if.end.2

if.then.2.out_crit_edge:                          ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #17
  %bf.lshr.i.2 = lshr i8 %bf.load.2, 4
  %idxprom.i.2 = zext i8 %bf.lshr.i.2 to i32
  %arrayidx.i36.2 = getelementptr [10 x i8], ptr @ef4_farch_filter_type_match_pri, i32 0, i32 %idxprom.i.2
  %55 = ptrtoint ptr %arrayidx.i36.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i36.2, align 1
  %conv.i.2 = zext i8 %56 to i32
  %flags.i.2 = getelementptr %struct.ef4_farch_filter_spec, ptr %53, i32 %filter_idx.041.2, i32 1
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.inc.2.for.body5.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.2

out:                                              ; preds = %for.inc.2.out_crit_edge, %if.then.2.out_crit_edge, %for.inc18.1.out_crit_edge, %if.then.1.out_crit_edge, %if.then.out_crit_edge
  %count.3 = phi i32 [ %count.1.lcssa.1, %for.inc18.1.out_crit_edge ], [ -90, %if.then.2.out_crit_edge ], [ %count.2.2, %for.inc.2.out_crit_edge ], [ -90, %if.then.1.out_crit_edge ], [ -90, %if.then.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #15
  ret i32 %count.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_filter_table_restore(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %filter = alloca %union.ef4_oword, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #15
  %2 = getelementptr inbounds [2 x i64], ptr %filter, i32 0, i32 1
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  %3 = call ptr @memset(ptr %filter, i32 255, i32 16)
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 1
  %arrayidx10.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc11.for.body_crit_edge, %entry
  %table_id.034 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11.for.body_crit_edge ]
  %step = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.034, i32 3
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %for.body.for.inc11_crit_edge, label %for.cond3.preheader

for.body.for.inc11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

for.cond3.preheader:                              ; preds = %for.body
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.034, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp431.not = icmp eq i32 %7, 0
  br i1 %cmp431.not, label %for.cond3.preheader.for.inc11_crit_edge, label %for.body5.lr.ph

for.cond3.preheader.for.inc11_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.034, i32 5
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.034, i32 6
  %offset = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.034, i32 1
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end7:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec, align 4
  %arrayidx8 = getelementptr %struct.ef4_farch_filter_spec, ptr %15, i32 %filter_idx.032
  %call9 = call fastcc i32 @ef4_farch_filter_build(ptr noundef nonnull %filter, ptr noundef %arrayidx8)
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %18 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %step, align 4
  %mul = mul i32 %19, %filter_idx.032
  %add = add i32 %mul, %17
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %20 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %filter, align 8
  %22 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #15, !srcloc !86
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add, 4
  %26 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %27, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %25) #15, !srcloc !86
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 8
  %add9.i = add i32 %add, 8
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %31, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %29) #15, !srcloc !86
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add, 12
  %34 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %35, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %33) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body5.for.inc_crit_edge
  %inc = add nuw i32 %filter_idx.032, 1
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  %cmp4 = icmp ult i32 %inc, %37
  br i1 %cmp4, label %for.inc.for.body5_crit_edge, label %for.inc.for.inc11_crit_edge

for.inc.for.inc11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5

for.inc11:                                        ; preds = %for.inc.for.inc11_crit_edge, %for.cond3.preheader.for.inc11_crit_edge, %for.body.for.inc11_crit_edge
  %inc12 = add nuw nsw i32 %table_id.034, 1
  %exitcond.not = icmp eq i32 %inc12, 4
  br i1 %exitcond.not, label %for.end13, label %for.inc11.for.body_crit_edge

for.inc11.for.body_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end13:                                        ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx)
  tail call fastcc void @ef4_farch_filter_push_tx_limits(ptr noundef %efx)
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_filter_table_remove(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_bitmap, align 4
  tail call void @kfree(ptr noundef %3) #15
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 0, i32 6
  %4 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec, align 4
  tail call void @vfree(ptr noundef %5) #15
  %used_bitmap.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %used_bitmap.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %used_bitmap.1, align 4
  tail call void @kfree(ptr noundef %7) #15
  %spec.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %spec.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec.1, align 4
  tail call void @vfree(ptr noundef %9) #15
  %used_bitmap.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %used_bitmap.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %used_bitmap.2, align 4
  tail call void @kfree(ptr noundef %11) #15
  %spec.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %spec.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec.2, align 4
  tail call void @vfree(ptr noundef %13) #15
  %used_bitmap.3 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %used_bitmap.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %used_bitmap.3, align 4
  tail call void @kfree(ptr noundef %15) #15
  %spec.3 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %spec.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spec.3, align 4
  tail call void @vfree(ptr noundef %17) #15
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_table_probe(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %1 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %filter_state, align 16
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 79
  %4 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i.i, align 8
  %offset = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15728640, ptr %offset, align 4
  %size = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8192, ptr %size, align 8
  %step = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %step, align 4
  br label %for.body

for.body:                                         ; preds = %if.then2, %if.end.for.body_crit_edge
  %size8 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end7.i.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end7.i.i:                                      ; preds = %for.body
  %sub = add i32 %11, 31
  %12 = lshr i32 %sub, 3
  %13 = and i32 %12, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #21
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 0, i32 5
  %14 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %used_bitmap, align 4
  %tobool15.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool15.not, label %if.end7.i.i.fail_crit_edge, label %if.end17

if.end7.i.i.fail_crit_edge:                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end17:                                         ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size8, align 8
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 16) #15
  %18 = extractvalue { i32, i1 } %17, 1
  %19 = extractvalue { i32, i1 } %17, 0
  %retval.0.i = select i1 %18, i32 -1, i32 %19
  %call20 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #21
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 0, i32 6
  %20 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call20, ptr %spec, align 8
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end17.fail_crit_edge, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %size8.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %size8.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size8.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.1 = icmp eq i32 %22, 0
  br i1 %cmp9.1, label %for.inc.for.inc.1_crit_edge, label %if.end7.i.i.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end7.i.i.1:                                    ; preds = %for.inc
  %sub.1 = add i32 %22, 31
  %23 = lshr i32 %sub.1, 3
  %24 = and i32 %23, 536870908
  %call8.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #21
  %used_bitmap.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %used_bitmap.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i.1, ptr %used_bitmap.1, align 8
  %tobool15.not.1 = icmp eq ptr %call8.i.i.1, null
  br i1 %tobool15.not.1, label %if.end7.i.i.1.fail_crit_edge, label %if.end17.1

if.end7.i.i.1.fail_crit_edge:                     ; preds = %if.end7.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end17.1:                                       ; preds = %if.end7.i.i.1
  %26 = ptrtoint ptr %size8.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size8.1, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 16) #15
  %29 = extractvalue { i32, i1 } %28, 1
  %30 = extractvalue { i32, i1 } %28, 0
  %retval.0.i.1 = select i1 %29, i32 -1, i32 %30
  %call20.1 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.1) #21
  %spec.1 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %spec.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20.1, ptr %spec.1, align 4
  %tobool22.not.1 = icmp eq ptr %call20.1, null
  br i1 %tobool22.not.1, label %if.end17.1.fail_crit_edge, label %if.end17.1.for.inc.1_crit_edge

if.end17.1.for.inc.1_crit_edge:                   ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end17.1.fail_crit_edge:                        ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

for.inc.1:                                        ; preds = %if.end17.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %size8.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %size8.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size8.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp9.2 = icmp eq i32 %33, 0
  br i1 %cmp9.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end7.i.i.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end7.i.i.2:                                    ; preds = %for.inc.1
  %sub.2 = add i32 %33, 31
  %34 = lshr i32 %sub.2, 3
  %35 = and i32 %34, 536870908
  %call8.i.i.2 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #21
  %used_bitmap.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %used_bitmap.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8.i.i.2, ptr %used_bitmap.2, align 4
  %tobool15.not.2 = icmp eq ptr %call8.i.i.2, null
  br i1 %tobool15.not.2, label %if.end7.i.i.2.fail_crit_edge, label %if.end17.2

if.end7.i.i.2.fail_crit_edge:                     ; preds = %if.end7.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end17.2:                                       ; preds = %if.end7.i.i.2
  %37 = ptrtoint ptr %size8.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size8.2, align 8
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 16) #15
  %40 = extractvalue { i32, i1 } %39, 1
  %41 = extractvalue { i32, i1 } %39, 0
  %retval.0.i.2 = select i1 %40, i32 -1, i32 %41
  %call20.2 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.2) #21
  %spec.2 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %spec.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call20.2, ptr %spec.2, align 8
  %tobool22.not.2 = icmp eq ptr %call20.2, null
  br i1 %tobool22.not.2, label %if.end17.2.fail_crit_edge, label %if.end17.2.for.inc.2_crit_edge

if.end17.2.for.inc.2_crit_edge:                   ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end17.2.fail_crit_edge:                        ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

for.inc.2:                                        ; preds = %if.end17.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %size8.3 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %size8.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size8.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp9.3 = icmp eq i32 %44, 0
  br i1 %cmp9.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end7.i.i.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.end7.i.i.3:                                    ; preds = %for.inc.2
  %sub.3 = add i32 %44, 31
  %45 = lshr i32 %sub.3, 3
  %46 = and i32 %45, 536870908
  %call8.i.i.3 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #21
  %used_bitmap.3 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 3, i32 5
  %47 = ptrtoint ptr %used_bitmap.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i.3, ptr %used_bitmap.3, align 8
  %tobool15.not.3 = icmp eq ptr %call8.i.i.3, null
  br i1 %tobool15.not.3, label %if.end7.i.i.3.fail_crit_edge, label %if.end17.3

if.end7.i.i.3.fail_crit_edge:                     ; preds = %if.end7.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end17.3:                                       ; preds = %if.end7.i.i.3
  %48 = ptrtoint ptr %size8.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size8.3, align 4
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 16) #15
  %51 = extractvalue { i32, i1 } %50, 1
  %52 = extractvalue { i32, i1 } %50, 0
  %retval.0.i.3 = select i1 %51, i32 -1, i32 %52
  %call20.3 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.3) #21
  %spec.3 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 3, i32 6
  %53 = ptrtoint ptr %spec.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call20.3, ptr %spec.3, align 4
  %tobool22.not.3 = icmp eq ptr %call20.3, null
  br i1 %tobool22.not.3, label %if.end17.3.fail_crit_edge, label %if.end17.3.for.inc.3_crit_edge

if.end17.3.for.inc.3_crit_edge:                   ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.end17.3.fail_crit_edge:                        ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

for.inc.3:                                        ; preds = %if.end17.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %size27 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %size27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool28.not = icmp eq i32 %55, 0
  br i1 %tobool28.not, label %for.inc.3.if.end41_crit_edge, label %for.cond31.preheader

for.inc.3.if.end41_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

for.cond31.preheader:                             ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  %spec34 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 2, i32 6
  %rss_spread.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 38
  %rx_scatter.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 54
  %used_bitmap37 = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %call7.i.i, i32 0, i32 2, i32 5
  %56 = ptrtoint ptr %spec34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spec34, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -127, ptr %57, align 4
  %59 = ptrtoint ptr %rss_spread.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rss_spread.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i.i = icmp ugt i32 %60, 1
  %cond.i = zext i1 %cmp.i.i to i8
  %61 = ptrtoint ptr %rx_scatter.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rx_scatter.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  %cond1.i = select i1 %tobool.not.i, i8 0, i8 2
  %or.i73 = or i8 %cond1.i, %cond.i
  %or2.i = or i8 %or.i73, 8
  %flags.i = getelementptr %struct.ef4_farch_filter_spec, ptr %57, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %or2.i, ptr %flags.i, align 1
  %dmaq_id.i = getelementptr %struct.ef4_farch_filter_spec, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %dmaq_id.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %dmaq_id.i, align 2
  %65 = ptrtoint ptr %used_bitmap37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %used_bitmap37, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %or.i = or i32 %68, 1
  store i32 %or.i, ptr %66, align 4
  %69 = ptrtoint ptr %spec34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spec34, align 8
  %arrayidx35.1 = getelementptr %struct.ef4_farch_filter_spec, ptr %70, i32 1
  %71 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -111, ptr %arrayidx35.1, align 4
  %72 = ptrtoint ptr %rss_spread.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rss_spread.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i.i.1 = icmp ugt i32 %73, 1
  %cond.i.1 = zext i1 %cmp.i.i.1 to i8
  %74 = ptrtoint ptr %rx_scatter.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rx_scatter.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.1 = icmp eq i8 %75, 0
  %cond1.i.1 = select i1 %tobool.not.i.1, i8 0, i8 2
  %or.i73.1 = or i8 %cond1.i.1, %cond.i.1
  %or2.i.1 = or i8 %or.i73.1, 8
  %flags.i.1 = getelementptr %struct.ef4_farch_filter_spec, ptr %70, i32 1, i32 1
  %76 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %or2.i.1, ptr %flags.i.1, align 1
  %dmaq_id.i.1 = getelementptr %struct.ef4_farch_filter_spec, ptr %70, i32 1, i32 2
  %77 = ptrtoint ptr %dmaq_id.i.1 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %dmaq_id.i.1, align 2
  %78 = ptrtoint ptr %used_bitmap37 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %used_bitmap37, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %or.i.1 = or i32 %81, 2
  store i32 %or.i.1, ptr %79, align 4
  br label %if.end41

if.end41:                                         ; preds = %for.cond31.preheader, %for.inc.3.if.end41_crit_edge
  tail call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx)
  br label %cleanup

fail:                                             ; preds = %if.end17.3.fail_crit_edge, %if.end7.i.i.3.fail_crit_edge, %if.end17.2.fail_crit_edge, %if.end7.i.i.2.fail_crit_edge, %if.end17.1.fail_crit_edge, %if.end7.i.i.1.fail_crit_edge, %if.end17.fail_crit_edge, %if.end7.i.i.fail_crit_edge
  %82 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %filter_state, align 16
  %used_bitmap.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 0, i32 5
  %84 = ptrtoint ptr %used_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %used_bitmap.i, align 4
  tail call void @kfree(ptr noundef %85) #15
  %spec.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 0, i32 6
  %86 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %spec.i, align 4
  tail call void @vfree(ptr noundef %87) #15
  %used_bitmap.1.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 1, i32 5
  %88 = ptrtoint ptr %used_bitmap.1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %used_bitmap.1.i, align 4
  tail call void @kfree(ptr noundef %89) #15
  %spec.1.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 1, i32 6
  %90 = ptrtoint ptr %spec.1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %spec.1.i, align 4
  tail call void @vfree(ptr noundef %91) #15
  %used_bitmap.2.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 2, i32 5
  %92 = ptrtoint ptr %used_bitmap.2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %used_bitmap.2.i, align 4
  tail call void @kfree(ptr noundef %93) #15
  %spec.2.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 2, i32 6
  %94 = ptrtoint ptr %spec.2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %spec.2.i, align 4
  tail call void @vfree(ptr noundef %95) #15
  %used_bitmap.3.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 3, i32 5
  %96 = ptrtoint ptr %used_bitmap.3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %used_bitmap.3.i, align 4
  tail call void @kfree(ptr noundef %97) #15
  %spec.3.i = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %83, i32 0, i32 3, i32 6
  %98 = ptrtoint ptr %spec.3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %spec.3.i, align 4
  tail call void @vfree(ptr noundef %99) #15
  tail call void @kfree(ptr noundef %83) #15
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %if.end41 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_filter_update_rx_scatter(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %filter = alloca %union.ef4_oword, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filter) #15
  %2 = getelementptr inbounds [2 x i64], ptr %filter, i32 0, i32 1
  %filter_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 92
  %3 = call ptr @memset(ptr %filter, i32 255, i32 16)
  tail call void @_raw_spin_lock_bh(ptr noundef %filter_lock) #15
  %n_rx_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 37
  %rx_scatter = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 54
  %biu_lock.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %membase.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %arrayidx6.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 1
  %arrayidx10.i = getelementptr inbounds [4 x i32], ptr %filter, i32 0, i32 3
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc27.for.cond2.preheader_crit_edge, %entry
  %table_id.058 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27.for.cond2.preheader_crit_edge ]
  %size = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.058, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp354.not = icmp eq i32 %5, 0
  br i1 %cmp354.not, label %for.cond2.preheader.for.inc27_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.inc27_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc27

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %used_bitmap = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.058, i32 5
  %spec = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.058, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %table_id.058)
  %cmp20 = icmp eq i32 %table_id.058, 2
  %offset = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.058, i32 1
  %step = getelementptr [4 x %struct.ef4_farch_filter_table], ptr %1, i32 0, i32 %table_id.058, i32 3
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body4
  %12 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec, align 4
  %dmaq_id = getelementptr %struct.ef4_farch_filter_spec, ptr %13, i32 %filter_idx.055, i32 2
  %14 = ptrtoint ptr %dmaq_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dmaq_id, align 2
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %n_rx_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_rx_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp6.not = icmp ugt i32 %17, %conv
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %rx_scatter to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rx_scatter, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  %flags16 = getelementptr %struct.ef4_farch_filter_spec, ptr %13, i32 %filter_idx.055, i32 1
  %20 = ptrtoint ptr %flags16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags16, align 1
  %22 = and i8 %21, -3
  %masksel = select i1 %tobool8.not, i8 0, i8 2
  %.sink = or i8 %22, %masksel
  store i8 %.sink, ptr %flags16, align 1
  br i1 %cmp20, label %if.end.for.inc_crit_edge, label %if.end23

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spec, align 4
  %arrayidx25 = getelementptr %struct.ef4_farch_filter_spec, ptr %24, i32 %filter_idx.055
  %call26 = call fastcc i32 @ef4_farch_filter_build(ptr noundef nonnull %filter, ptr noundef %arrayidx25)
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %27 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %step, align 4
  %mul = mul i32 %28, %filter_idx.055
  %add = add i32 %mul, %26
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #15
  %29 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %filter, align 8
  %31 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #15, !srcloc !86
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.i, align 4
  %add7.i = add i32 %add, 4
  %35 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %36, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %34) #15, !srcloc !86
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 8
  %add9.i = add i32 %add, 8
  %39 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %40, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %38) #15, !srcloc !86
  %41 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %add, 12
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %44, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %42) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call3.i) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %inc = add nuw i32 %filter_idx.055, 1
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  %cmp3 = icmp ult i32 %inc, %46
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.inc27_crit_edge

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc27

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.cond2.preheader.for.inc27_crit_edge
  %inc28 = add nuw nsw i32 %table_id.058, 1
  %exitcond.not = icmp eq i32 %inc28, 3
  br i1 %exitcond.not, label %for.end29, label %for.inc27.for.cond2.preheader_crit_edge

for.inc27.for.cond2.preheader_crit_edge:          ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader

for.end29:                                        ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_filter_push_rx_config(ptr noundef %efx)
  tail call void @_raw_spin_unlock_bh(ptr noundef %filter_lock) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filter) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_farch_filter_rfs_insert(ptr noundef %efx, ptr noundef %gen_spec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ef4_farch_filter_insert(ptr noundef %efx, ptr noundef %gen_spec, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ef4_farch_filter_rfs_expire_one(ptr noundef %efx, i32 noundef %flow_id, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %filter_state = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 93
  %0 = ptrtoint ptr %filter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_state, align 16
  %used_bitmap = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %used_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_bitmap, align 4
  %div3.i = lshr i32 %index, 5
  %arrayidx.i = getelementptr i32, ptr %3, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %index, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %spec = getelementptr inbounds %struct.ef4_farch_filter_table, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec, align 4
  %arrayidx2 = getelementptr %struct.ef4_farch_filter_spec, ptr %9, i32 %index
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %arrayidx2, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 0
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  %dmaq_id = getelementptr %struct.ef4_farch_filter_spec, ptr %9, i32 %index, i32 2
  %13 = ptrtoint ptr %dmaq_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dmaq_id, align 2
  %conv7 = trunc i32 %index to i16
  %call8 = tail call zeroext i1 @rps_may_expire_flow(ptr noundef %12, i16 noundef zeroext %14, i32 noundef %flow_id, i16 noundef zeroext %conv7) #15
  br i1 %call8, label %if.then, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ef4_farch_filter_table_clear_entry(ptr noundef %efx, ptr noundef %1, i32 noundef %index)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true4.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_farch_filter_sync_rx_mode(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %multicast_hash = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 84
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %2 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i.not = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %3 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #15
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i36 = zext i8 %4 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i36) #15
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %unicast_filter = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 83
  %and = lshr i32 %6, 8
  %7 = trunc i32 %and to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = ptrtoint ptr %unicast_filter to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %unicast_filter, align 4
  %11 = load i32, ptr %flags, align 8
  %and4 = and i32 %11, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %ha.042 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.040, %if.else.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.042, i32 0, i32 2
  %call11 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #22
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

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
define internal fastcc zeroext i1 @ef4_check_tx_flush_complete(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 4
  %tobool.not114 = icmp eq ptr %1, null
  br i1 %tobool.not114, label %entry.for.end73_crit_edge, label %for.body.lr.ph

entry.for.end73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end73

for.body.lr.ph:                                   ; preds = %entry
  %biu_lock.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 103
  %membase.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 13
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %n_channels = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.0.off0116 = phi i1 [ true, %for.body.lr.ph ], [ %i.3.off0, %cond.end.for.body_crit_edge ]
  %channel.0115 = phi ptr [ %1, %for.body.lr.ph ], [ %67, %cond.end.for.body_crit_edge ]
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0115, i32 0, i32 1
  %2 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel1.i, align 4
  %4 = ptrtoint ptr %channel.0115 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel.0115, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %3, %7
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 40
  %8 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %if.else, label %for.body.for.inc66_crit_edge

for.body.for.inc66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66

if.else:                                          ; preds = %for.body
  %tx_queue2 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0115, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel.0115, i32 1
  %cmp108 = icmp ult ptr %tx_queue2, %add.ptr
  br i1 %cmp108, label %if.else.land.rhs_crit_edge, label %if.else.for.inc66_crit_edge

if.else.for.inc66_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66

if.else.land.rhs_crit_edge:                       ; preds = %if.else
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.else.land.rhs_crit_edge
  %i.1.off0111 = phi i1 [ %i.2.off0, %for.inc.land.rhs_crit_edge ], [ %i.0.off0116, %if.else.land.rhs_crit_edge ]
  %tx_queue.0109 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %tx_queue2, %if.else.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %tx_queue.0109 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_queue.0109, align 128
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %11, i32 0, i32 69
  %12 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i, align 4
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 140
  %14 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp.i105 = icmp slt i16 %15, 2
  br i1 %cmp.i105, label %ef4_tx_queue_used.exit, label %land.rhs.for.body7_crit_edge

land.rhs.for.body7_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7

ef4_tx_queue_used.exit:                           ; preds = %land.rhs
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0109, i32 0, i32 1
  %16 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %ef4_tx_queue_used.exit.for.body7_crit_edge, label %ef4_tx_queue_used.exit.for.inc66_crit_edge

ef4_tx_queue_used.exit.for.inc66_crit_edge:       ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66

ef4_tx_queue_used.exit.for.body7_crit_edge:       ; preds = %ef4_tx_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7

for.body7:                                        ; preds = %ef4_tx_queue_used.exit.for.body7_crit_edge, %land.rhs.for.body7_crit_edge
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0109, i32 0, i32 1
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue, align 4
  %mul.i = shl i32 %19, 4
  %add.i = add i32 %mul.i, 16056320
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i) #15
  %20 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %add.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !85
  %add6.i.i = add i32 %mul.i, 16056324
  %23 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %24, i32 %add6.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #15, !srcloc !85
  %add9.i.i = add i32 %mul.i, 16056328
  %26 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %27, i32 %add9.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #15, !srcloc !85
  %add12.i.i = add i32 %mul.i, 16056332
  %29 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %30, i32 %add12.i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #15, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i, i32 noundef %call2.i.i) #15
  %32 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  %and15 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.else31, label %do.body

do.body:                                          ; preds = %for.body7
  %33 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable, align 8
  %and18 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body.for.inc_crit_edge, label %do.body21

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_check_tx_flush_complete, %if.then26)) #15
          to label %for.inc [label %if.then26], !srcloc !91

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev, align 4
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug535, ptr noundef %36, ptr noundef nonnull @.str.24, i32 noundef %38) #15
  br label %for.inc

if.else31:                                        ; preds = %for.body7
  %flush_outstanding = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0109, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flush_outstanding, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %flush_outstanding, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.else31
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %flush_outstanding, ptr %flush_outstanding, i32 1, i32 0, ptr elementtype(i32) %flush_outstanding) #15, !srcloc !100
  %asmresult.i.i.i = extractvalue { i32, i32 } %39, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %39, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool33.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool33.not, label %atomic_cmpxchg.exit.for.inc_crit_edge, label %do.body35

atomic_cmpxchg.exit.for.inc_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body35:                                        ; preds = %atomic_cmpxchg.exit
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 8
  %and37 = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body35.do.end60_crit_edge, label %do.body40

do.body35.do.end60_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end60

do.body40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_check_tx_flush_complete, %if.then52)) #15
          to label %do.end60 [label %if.then52], !srcloc !91

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net_dev, align 4
  %44 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug536, ptr noundef %43, ptr noundef nonnull @.str.25, i32 noundef %45) #15
  br label %do.end60

do.end60:                                         ; preds = %if.then52, %do.body40, %do.body35.do.end60_crit_edge
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %queue, align 4
  %or62 = or i32 %47, 66560
  %48 = tail call i32 @llvm.bswap.i32(i32 %or62) #15
  %49 = ptrtoint ptr %channel.0115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %channel.0115, align 128
  %51 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channel1.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #15
  %biu_lock.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %50, i32 0, i32 103
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i.i.i) #15
  %membase.i.i.i.i = getelementptr inbounds %struct.ef4_nic, ptr %50, i32 0, i32 13
  %54 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %55, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %48) #15, !srcloc !86
  %56 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %57, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i.i, i32 112) #15, !srcloc !86
  %58 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %59, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i.i, i32 %53) #15, !srcloc !86
  %60 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %61, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 0) #15, !srcloc !86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i.i.i, i32 noundef %call3.i.i.i) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end60, %atomic_cmpxchg.exit.for.inc_crit_edge, %if.then26, %do.body21, %do.body.for.inc_crit_edge
  %i.2.off0 = phi i1 [ %i.1.off0111, %do.end60 ], [ %i.1.off0111, %atomic_cmpxchg.exit.for.inc_crit_edge ], [ false, %if.then26 ], [ false, %do.body.for.inc_crit_edge ], [ false, %do.body21 ]
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0109, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.inc66_crit_edge

for.inc.for.inc66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

for.inc66:                                        ; preds = %for.inc.for.inc66_crit_edge, %ef4_tx_queue_used.exit.for.inc66_crit_edge, %if.else.for.inc66_crit_edge, %for.body.for.inc66_crit_edge
  %i.3.off0 = phi i1 [ %i.0.off0116, %for.body.for.inc66_crit_edge ], [ %i.0.off0116, %if.else.for.inc66_crit_edge ], [ %i.1.off0111, %ef4_tx_queue_used.exit.for.inc66_crit_edge ], [ %i.2.off0, %for.inc.for.inc66_crit_edge ]
  %62 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channel1.i, align 4
  %add = add i32 %63, 1
  %64 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %65)
  %cmp68 = icmp ult i32 %add, %65
  br i1 %cmp68, label %cond.end, label %for.inc66.for.end73_crit_edge

for.inc66.for.end73_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end73

cond.end:                                         ; preds = %for.inc66
  %arrayidx72 = getelementptr %struct.ef4_nic, ptr %efx, i32 0, i32 23, i32 %add
  %66 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx72, align 4
  %tobool.not = icmp eq ptr %67, null
  br i1 %tobool.not, label %cond.end.for.end73_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end.for.end73_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end73

for.end73:                                        ; preds = %cond.end.for.end73_crit_edge, %for.inc66.for.end73_crit_edge, %entry.for.end73_crit_edge
  %i.0.off0.lcssa = phi i1 [ true, %entry.for.end73_crit_edge ], [ %i.3.off0, %cond.end.for.end73_crit_edge ], [ %i.3.off0, %for.inc66.for.end73_crit_edge ]
  ret i1 %i.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_rx_packet(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_xmit_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_fast_push_rx_descriptors(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ef4_farch_handle_drain_event(ptr nocapture noundef readonly %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %active_queues = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues, i32 noundef 4) #15
  %2 = ptrtoint ptr %active_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %active_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !87

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1146, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #15, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues, i32 noundef 4) #15
  %5 = ptrtoint ptr %active_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %active_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.if.then22_crit_edge, label %lor.rhs.i

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

lor.rhs.i:                                        ; preds = %if.end
  %rxq_flush_outstanding.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 98
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_outstanding.i, i32 noundef 4) #15
  %7 = ptrtoint ptr %rxq_flush_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %rxq_flush_outstanding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp4.i = icmp slt i32 %8, 4
  br i1 %cmp4.i, label %ef4_farch_flush_wake.exit, label %lor.rhs.i.if.end23_crit_edge

lor.rhs.i.if.end23_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

ef4_farch_flush_wake.exit:                        ; preds = %lor.rhs.i
  %rxq_flush_pending.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 97
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rxq_flush_pending.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %rxq_flush_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rxq_flush_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.i = icmp sgt i32 %10, 0
  br i1 %cmp6.i, label %ef4_farch_flush_wake.exit.if.then22_crit_edge, label %ef4_farch_flush_wake.exit.if.end23_crit_edge

ef4_farch_flush_wake.exit.if.end23_crit_edge:     ; preds = %ef4_farch_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

ef4_farch_flush_wake.exit.if.then22_crit_edge:    ; preds = %ef4_farch_flush_wake.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

if.then22:                                        ; preds = %ef4_farch_flush_wake.exit.if.then22_crit_edge, %if.end.if.then22_crit_edge
  %flush_wq = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 99
  tail call void @__wake_up(ptr noundef %flush_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %ef4_farch_flush_wake.exit.if.end23_crit_edge, %lor.rhs.i.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
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
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 145, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 534, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ef4_farch_rx_init.__UNIQUE_ID_ddebug534, !3, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1314, i32 4}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1342, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ef4_farch_ev_init.__UNIQUE_ID_ddebug542, !11, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1454, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1465, i32 3}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1484, i32 3}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1488, i32 3}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 238, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ef4_alloc_special_buffer.__UNIQUE_ID_ddebug524, !25, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 181, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ef4_init_special_buffer.__UNIQUE_ID_ddebug522, !29, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 203, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ef4_fini_special_buffer.__UNIQUE_ID_ddebug523, !33, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 254, i32 2}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ef4_free_special_buffer.__UNIQUE_ID_ddebug525, !37, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 703, i32 3}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 629, i32 5}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug535, !43, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 638, i32 5}
!48 = !{ptr @ef4_check_tx_flush_complete.__UNIQUE_ID_ddebug536, !47, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 962, i32 2}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 858, i32 3}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1176, i32 3}
!55 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ef4_farch_handle_generated_event.__UNIQUE_ID_ddebug540, !54, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1204, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ef4_farch_handle_driver_event.__UNIQUE_ID_ddebug541, !58, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1223, i32 3}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1233, i32 3}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1240, i32 3}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 1128, i32 3}
!69 = !{ptr @ef4_farch_filter_range_table, !70, !"ef4_farch_filter_range_table", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 2260, i32 45}
!71 = !{ptr @ef4_farch_filter_type_match_pri, !72, !"ef4_farch_filter_type_match_pri", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 2249, i32 17}
!73 = distinct !{null, !74, !"filter", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/falcon/farch.c", i32 2475, i32 21}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 4290580}
!86 = !{i64 4290162}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2159687092}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2159501336, i64 2159501840, i64 2159501373, i64 2159501429, i64 2159501463, i64 2159501487, i64 2159501528, i64 2159501549, i64 2159501577, i64 2159501611}
!91 = !{i64 2148841053, i64 2148841058, i64 2148841071, i64 2148841115, i64 2148841149, i64 2148841170}
!92 = !{i32 0, i32 33}
!93 = !{i64 2160181295}
!94 = !{i8 0, i8 2}
!95 = !{i64 2148246942, i64 2148246968, i64 2148246997, i64 2148247031, i64 2148247062, i64 2148247085}
!96 = !{i64 2148249407, i64 2148249433, i64 2148249462, i64 2148249496, i64 2148249527, i64 2148249550}
!97 = !{i64 2160512363}
!98 = !{!"branch_weights", i32 1, i32 4001}
!99 = !{i64 2148348765}
!100 = !{i64 730678, i64 730702, i64 730723, i64 730740, i64 730757}
!101 = !{i64 2148348991}
!102 = !{i64 2161166334}
!103 = !{i64 2161201372, i64 2161201877, i64 2161201409, i64 2161201465, i64 2161201499, i64 2161201523, i64 2161201564, i64 2161201585, i64 2161201613, i64 2161201647}
!104 = !{i64 2162894398, i64 2162894903, i64 2162894435, i64 2162894491, i64 2162894525, i64 2162894549, i64 2162894590, i64 2162894611, i64 2162894639, i64 2162894673}
!105 = !{i64 2162901646, i64 2162902151, i64 2162901683, i64 2162901739, i64 2162901773, i64 2162901797, i64 2162901838, i64 2162901859, i64 2162901887, i64 2162901921}
