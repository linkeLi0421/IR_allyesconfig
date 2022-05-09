; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ef100.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ef100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ef100_func_ctl_window = type { i8, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.127 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sfc_ef100\00", [22 x i8] zeroinitializer }, align 32
@ef100_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4334, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ef100_pf_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 4334, i32 4352, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ef100_vf_nic_type to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@efx_err_handlers = external dso_local constant %struct.pci_error_handlers, align 4
@ef100_pci_driver = dso_local global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ef100_pci_table, ptr @ef100_pci_probe, ptr @ef100_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_err_handlers, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@ef100_pf_nic_type = external dso_local constant %struct.efx_nic_type, align 8
@ef100_vf_nic_type = external dso_local constant %struct.efx_nic_type, align 8
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Solarflare EF100 NIC detected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Error looking for ef100 function control window, rc=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Func control window overruns BAR\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register netdevice notifier, rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@ef100_pci_probe.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ef100_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/ethernet/sfc/ef100.c\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"initialisation successful\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read ESF_GZ_VSEC_ID, rc=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read ESF_GZ_VSEC_VER, rc=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read ESF_GZ_VSEC_LEN, rc=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Seen %d Xilinx tables, but no EF100 entry.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read PCI config dword at %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to read ESF_GZ_VSEC_TBL_BAR, rc=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Bad BAR value of %d in Xilinx capabilities sub-table.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read ESF_GZ_VSEC_TBL_OFF_LO, rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read ESF_GZ_VSEC_TBL_OFF_HI, rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Xilinx table will overrun BAR[%d] offset=0x%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efx_init_io failed, rc=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ef100_pci_walk_xilinx_table.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.20, ptr @.str.7, ptr @.str.21, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ef100_pci_walk_xilinx_table\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Seen Xilinx table entry 0x%x size 0x%x at 0x%llx in BAR[%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Xilinx table entry too short len=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Bad length or rev for EF100 entry in Xilinx capabilities table. entry_size=%d rev=%d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Bad length or rev for continue entry in Xilinx capabilities table. entry_size=%d rev=%d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Xilinx table overrun at position=0x%llx.\0A\00", [54 x i8] zeroinitializer }, align 32
@ef100_pci_parse_ef100_entry.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.26, ptr @.str.7, ptr @.str.27, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ef100_pci_parse_ef100_entry\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Found EF100 function control window bar=%d offset=0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Duplicated EF100 table entry.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Bad BAR value of %d in Xilinx capabilities EF100 entry.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Mapping new BAR for Xilinx table failed, rc=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Putting old BAR back failed, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@ef100_pci_remove.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.32, ptr @.str.7, ptr @.str.33, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ef100_pci_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shutdown successful\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 979200, i64 1048574]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 537, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"ef100_pci_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 528, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"ef100_pci_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 536, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 472, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 477, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 491, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 509, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 518, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 374, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 382, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 391, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 410, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 261, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 292, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 300, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 308, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 318, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 329, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 340, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 196, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 201, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 210, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 223, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 244, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 73, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 78, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 85, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 148, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 166, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [36 x i8] c"../drivers/net/ethernet/sfc/ef100.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 441, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @ef100_pci_table, ptr @ef100_pci_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef100_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ef100_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ef100_pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  %temp.i163.i.i = alloca i32, align 4
  %temp.i150.i.i = alloca i32, align 4
  %temp.i.i.i = alloca i32, align 4
  %temp.i118.i = alloca i32, align 4
  %temp.i105.i = alloca i32, align 4
  %temp.i.i = alloca i32, align 4
  %fcw = alloca %struct.ef100_func_ctl_window, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fcw) #5
  %0 = call ptr @memset(ptr %fcw, i32 0, i32 16)
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 4224, i32 noundef 64, i32 noundef 64) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %entry1, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = inttoptr i32 %2 to ptr
  %type = getelementptr i8, ptr %call, i32 2348
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %type, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %call4 = tail call i32 @efx_init_struct(ptr noundef %add.ptr.i, ptr noundef %pci_dev, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end7:                                          ; preds = %if.end
  %vi_stride = getelementptr i8, ptr %call, i32 2432
  %7 = ptrtoint ptr %vi_stride to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %vi_stride, align 128
  %msg_enable = getelementptr i8, ptr %call, i32 2460
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.do.end_crit_edge, label %if.then9

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev10 = getelementptr i8, ptr %call, i32 4732
  %10 = ptrtoint ptr %net_dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end7.do.end_crit_edge
  %12 = ptrtoint ptr %fcw to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %fcw, align 8
  %pci_dev.i = getelementptr i8, ptr %call, i32 2340
  %13 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev.i, align 4
  %call209.i = tail call zeroext i16 @pci_find_next_ext_capability(ptr noundef %14, i16 noundef zeroext 0, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call209.i)
  %cmp.not210.i = icmp eq i16 %call209.i, 0
  br i1 %cmp.not210.i, label %do.end.if.then26_crit_edge, label %do.end.while.body.i_crit_edge

do.end.while.body.i_crit_edge:                    ; preds = %do.end
  br label %while.body.i

do.end.if.then26_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

while.body.i:                                     ; preds = %cleanup49.i.while.body.i_crit_edge, %do.end.while.body.i_crit_edge
  %call212.i = phi i16 [ %call.i, %cleanup49.i.while.body.i_crit_edge ], [ %call209.i, %do.end.while.body.i_crit_edge ]
  %num_xilinx_caps.0211.i = phi i32 [ %inc.i, %cleanup49.i.while.body.i_crit_edge ], [ 0, %do.end.while.body.i_crit_edge ]
  %conv1.i = zext i16 %call212.i to i32
  %add.i = add nuw nsw i32 %conv1.i, 4
  %inc.i = add i32 %num_xilinx_caps.0211.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i) #5
  %15 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %temp.i.i, align 4, !annotation !79
  %16 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev.i, align 4
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %17, i32 noundef %add.i, ptr noundef nonnull %temp.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %while.body.i
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and1.i.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i.do.body.i_crit_edge, label %if.then3.i.i

do.body.i.i.do.body.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then3.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i.i = getelementptr i8, ptr %call, i32 4732
  %20 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %add.i) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then3.i.i, %do.body.i.i.do.body.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #5
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.body15_crit_edge, label %if.then5.i

do.body.i.do.body15_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i = getelementptr i8, ptr %call, i32 4732
  %24 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.9, i32 noundef %call.i.i) #8
  br label %do.body15

if.end6.i:                                        ; preds = %while.body.i
  %26 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp.i.i, align 4
  %conv8.i.i = and i32 %27, 65535
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i105.i) #5
  %28 = ptrtoint ptr %temp.i105.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %temp.i105.i, align 4, !annotation !79
  %29 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev.i, align 4
  %call.i107.i = call i32 @pci_read_config_dword(ptr noundef %30, i32 noundef %add.i, ptr noundef nonnull %temp.i105.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool.not.i108.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool.not.i108.i, label %if.end19.i, label %do.body.i112.i

do.body.i112.i:                                   ; preds = %if.end6.i
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and1.i110.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i110.i)
  %tobool2.not.i111.i = icmp eq i32 %and1.i110.i, 0
  br i1 %tobool2.not.i111.i, label %do.body.i112.i.do.body10.i_crit_edge, label %if.then3.i114.i

do.body.i112.i.do.body10.i_crit_edge:             ; preds = %do.body.i112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10.i

if.then3.i114.i:                                  ; preds = %do.body.i112.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i113.i = getelementptr i8, ptr %call, i32 4732
  %33 = ptrtoint ptr %net_dev.i113.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev.i113.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %add.i) #8
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then3.i114.i, %do.body.i112.i.do.body10.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i105.i) #5
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 4
  %and12.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.body10.i.do.body15_crit_edge, label %if.then14.i

do.body10.i.do.body15_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then14.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev15.i = getelementptr i8, ptr %call, i32 4732
  %37 = ptrtoint ptr %net_dev15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev15.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %call.i107.i) #8
  br label %do.body15

if.end19.i:                                       ; preds = %if.end6.i
  %39 = ptrtoint ptr %temp.i105.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %temp.i105.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i105.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i118.i) #5
  %41 = ptrtoint ptr %temp.i118.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %temp.i118.i, align 4, !annotation !79
  %42 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev.i, align 4
  %call.i120.i = call i32 @pci_read_config_dword(ptr noundef %43, i32 noundef %add.i, ptr noundef nonnull %temp.i118.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %tobool.not.i121.i = icmp eq i32 %call.i120.i, 0
  br i1 %tobool.not.i121.i, label %if.end32.i, label %do.body.i125.i

do.body.i125.i:                                   ; preds = %if.end19.i
  %44 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable, align 4
  %and1.i123.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i123.i)
  %tobool2.not.i124.i = icmp eq i32 %and1.i123.i, 0
  br i1 %tobool2.not.i124.i, label %do.body.i125.i.do.body23.i_crit_edge, label %if.then3.i127.i

do.body.i125.i.do.body23.i_crit_edge:             ; preds = %do.body.i125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23.i

if.then3.i127.i:                                  ; preds = %do.body.i125.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i126.i = getelementptr i8, ptr %call, i32 4732
  %46 = ptrtoint ptr %net_dev.i126.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev.i126.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.13, i32 noundef %add.i) #8
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.then3.i127.i, %do.body.i125.i.do.body23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i118.i) #5
  %48 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable, align 4
  %and25.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body23.i.do.body15_crit_edge, label %if.then27.i

do.body23.i.do.body15_crit_edge:                  ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then27.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev28.i = getelementptr i8, ptr %call, i32 4732
  %50 = ptrtoint ptr %net_dev28.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev28.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.11, i32 noundef %call.i120.i) #8
  br label %do.body15

if.end32.i:                                       ; preds = %if.end19.i
  %52 = ptrtoint ptr %temp.i118.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %temp.i118.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i118.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv8.i.i)
  %cmp33.i = icmp eq i32 %conv8.i.i, 32
  %54 = and i32 %40, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp35.i = icmp eq i32 %54, 0
  %or.cond.i = select i1 %cmp33.i, i1 %cmp35.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582911, i32 %53)
  %cmp38.i = icmp ugt i32 %53, 12582911
  %or.cond141.i = select i1 %or.cond.i, i1 %cmp38.i, i1 false
  br i1 %or.cond141.i, label %if.then40.i, label %if.end32.i.cleanup49.i_crit_edge

if.end32.i.cleanup49.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49.i

if.then40.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %53)
  %cmp41.i = icmp ugt i32 %53, 16777215
  %add.i.i.i = add nuw nsw i32 %conv1.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i.i) #5
  %55 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %temp.i.i.i, align 4, !annotation !79
  %56 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev.i, align 4
  %call.i.i.i = call i32 @pci_read_config_dword(ptr noundef %57, i32 noundef %add.i.i.i, ptr noundef nonnull %temp.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end3.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then40.i
  %58 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable, align 4
  %and1.i.i.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %do.body.i.i.i.do.body.i131.i_crit_edge, label %if.then3.i.i.i

do.body.i.i.i.do.body.i131.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i131.i

if.then3.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i.i.i = getelementptr i8, ptr %call, i32 4732
  %60 = ptrtoint ptr %net_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i) #8
  br label %do.body.i131.i

do.body.i131.i:                                   ; preds = %if.then3.i.i.i, %do.body.i.i.i.do.body.i131.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i.i) #5
  %62 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msg_enable, align 4
  %and.i.i = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i131.i.do.body15_crit_edge, label %if.then2.i.i

do.body.i131.i.do.body15_crit_edge:               ; preds = %do.body.i131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then2.i.i:                                     ; preds = %do.body.i131.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i132.i = getelementptr i8, ptr %call, i32 4732
  %64 = ptrtoint ptr %net_dev.i132.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net_dev.i132.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.14, i32 noundef %call.i.i.i) #8
  br label %do.body15

if.end3.i.i:                                      ; preds = %if.then40.i
  %66 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %temp.i.i.i, align 4
  %conv8.i.i.i = and i32 %67, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i.i) #5
  %68 = and i32 %67, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %68)
  %switch.i.i = icmp eq i32 %68, 6
  br i1 %switch.i.i, label %do.body6.i.i, label %if.end15.i.i

do.body6.i.i:                                     ; preds = %if.end3.i.i
  %69 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable, align 4
  %and8.i.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body6.i.i.do.body15_crit_edge, label %if.then10.i.i

do.body6.i.i.do.body15_crit_edge:                 ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then10.i.i:                                    ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev11.i.i = getelementptr i8, ptr %call, i32 4732
  %71 = ptrtoint ptr %net_dev11.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net_dev11.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %72, ptr noundef nonnull @.str.15, i32 noundef %conv8.i.i.i) #8
  br label %do.body15

if.end15.i.i:                                     ; preds = %if.end3.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i150.i.i) #5
  %73 = ptrtoint ptr %temp.i150.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %temp.i150.i.i, align 4, !annotation !79
  %74 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pci_dev.i, align 4
  %call.i153.i.i = call i32 @pci_read_config_dword(ptr noundef %75, i32 noundef %add.i.i.i, ptr noundef nonnull %temp.i150.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i.i)
  %tobool.not.i154.i.i = icmp eq i32 %call.i153.i.i, 0
  br i1 %tobool.not.i154.i.i, label %if.end28.i.i, label %do.body.i158.i.i

do.body.i158.i.i:                                 ; preds = %if.end15.i.i
  %76 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_enable, align 4
  %and1.i156.i.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i156.i.i)
  %tobool2.not.i157.i.i = icmp eq i32 %and1.i156.i.i, 0
  br i1 %tobool2.not.i157.i.i, label %do.body.i158.i.i.do.body19.i.i_crit_edge, label %if.then3.i160.i.i

do.body.i158.i.i.do.body19.i.i_crit_edge:         ; preds = %do.body.i158.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19.i.i

if.then3.i160.i.i:                                ; preds = %do.body.i158.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i159.i.i = getelementptr i8, ptr %call, i32 4732
  %78 = ptrtoint ptr %net_dev.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net_dev.i159.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %79, ptr noundef nonnull @.str.13, i32 noundef %add.i.i.i) #8
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %if.then3.i160.i.i, %do.body.i158.i.i.do.body19.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i150.i.i) #5
  %80 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable, align 4
  %and21.i.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %do.body19.i.i.do.body15_crit_edge, label %if.then23.i.i

do.body19.i.i.do.body15_crit_edge:                ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then23.i.i:                                    ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev24.i.i = getelementptr i8, ptr %call, i32 4732
  %82 = ptrtoint ptr %net_dev24.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net_dev24.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.16, i32 noundef %call.i153.i.i) #8
  br label %do.body15

if.end28.i.i:                                     ; preds = %if.end15.i.i
  %84 = ptrtoint ptr %temp.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %temp.i150.i.i, align 4
  %shr6.i.i.i = and i32 %85, -16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i150.i.i) #5
  br i1 %cmp41.i, label %if.then30.i.i, label %if.end28.i.i.if.end44.i.i_crit_edge

if.end28.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i
  %add.i164.i.i = add nuw nsw i32 %conv1.i, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i163.i.i) #5
  %86 = ptrtoint ptr %temp.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %temp.i163.i.i, align 4, !annotation !79
  %87 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pci_dev.i, align 4
  %call.i166.i.i = call i32 @pci_read_config_dword(ptr noundef %88, i32 noundef %add.i164.i.i, ptr noundef nonnull %temp.i163.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.i.i)
  %tobool.not.i167.i.i = icmp eq i32 %call.i166.i.i, 0
  br i1 %tobool.not.i167.i.i, label %_ef100_pci_get_config_bits_with_width.exit175.i.i, label %do.body.i171.i.i

do.body.i171.i.i:                                 ; preds = %if.then30.i.i
  %89 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable, align 4
  %and1.i169.i.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i169.i.i)
  %tobool2.not.i170.i.i = icmp eq i32 %and1.i169.i.i, 0
  br i1 %tobool2.not.i170.i.i, label %do.body.i171.i.i.do.body34.i.i_crit_edge, label %if.then3.i173.i.i

do.body.i171.i.i.do.body34.i.i_crit_edge:         ; preds = %do.body.i171.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34.i.i

if.then3.i173.i.i:                                ; preds = %do.body.i171.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev.i172.i.i = getelementptr i8, ptr %call, i32 4732
  %91 = ptrtoint ptr %net_dev.i172.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net_dev.i172.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.13, i32 noundef %add.i164.i.i) #8
  br label %do.body34.i.i

_ef100_pci_get_config_bits_with_width.exit175.i.i: ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %temp.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %temp.i163.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i163.i.i) #5
  br label %if.end44.i.i

do.body34.i.i:                                    ; preds = %if.then3.i173.i.i, %do.body.i171.i.i.do.body34.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i163.i.i) #5
  %95 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_enable, align 4
  %and36.i.i = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %do.body34.i.i.do.body15_crit_edge, label %if.then38.i.i

do.body34.i.i.do.body15_crit_edge:                ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then38.i.i:                                    ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev39.i.i = getelementptr i8, ptr %call, i32 4732
  %97 = ptrtoint ptr %net_dev39.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %net_dev39.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %98, ptr noundef nonnull @.str.17, i32 noundef %call.i166.i.i) #8
  br label %do.body15

if.end44.i.i:                                     ; preds = %_ef100_pci_get_config_bits_with_width.exit175.i.i, %if.end28.i.i.if.end44.i.i_crit_edge
  %offset_high.1.i.i = phi i32 [ %94, %_ef100_pci_get_config_bits_with_width.exit175.i.i ], [ 0, %if.end28.i.i.if.end44.i.i_crit_edge ]
  %shl.i.i = zext i32 %shr6.i.i.i to i64
  %conv45.i.i = zext i32 %offset_high.1.i.i to i64
  %shl46.i.i = shl nuw i64 %conv45.i.i, 32
  %or.i.i = or i64 %shl46.i.i, %shl.i.i
  %99 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci_dev.i, align 4
  %end.i.i = getelementptr %struct.pci_dev, ptr %100, i32 0, i32 47, i32 %conv8.i.i.i, i32 1
  %101 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp47.i.i = icmp eq i32 %102, 0
  br i1 %cmp47.i.i, label %cond.end.i.i, label %cond.end.thread.i.i

cond.end.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967288, i64 %or.i.i)
  %cmp58.i.i = icmp ugt i64 %or.i.i, 4294967288
  br i1 %cmp58.i.i, label %cond.end.i.i.do.body61.i.i_crit_edge, label %cond.end.i.i.cond.end89.i.i_crit_edge

cond.end.i.i.cond.end89.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end89.i.i

cond.end.i.i.do.body61.i.i_crit_edge:             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61.i.i

cond.end.thread.i.i:                              ; preds = %if.end44.i.i
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %100, i32 0, i32 47, i32 %conv8.i.i.i
  %103 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.i = add i32 %102, -7
  %phi.bo.i.i = sub i32 %sub.i.i, %104
  %conv57186.i.i = zext i32 %phi.bo.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %conv57186.i.i)
  %cmp58187.i.i = icmp ugt i64 %or.i.i, %conv57186.i.i
  br i1 %cmp58187.i.i, label %cond.end.thread.i.i.do.body61.i.i_crit_edge, label %cond.false78.i.i

cond.end.thread.i.i.do.body61.i.i_crit_edge:      ; preds = %cond.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61.i.i

do.body61.i.i:                                    ; preds = %cond.end.thread.i.i.do.body61.i.i_crit_edge, %cond.end.i.i.do.body61.i.i_crit_edge
  %105 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msg_enable, align 4
  %and63.i.i = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %do.body61.i.i.do.body15_crit_edge, label %if.then65.i.i

do.body61.i.i.do.body15_crit_edge:                ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then65.i.i:                                    ; preds = %do.body61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev66.i.i = getelementptr i8, ptr %call, i32 4732
  %107 = ptrtoint ptr %net_dev66.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net_dev66.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %108, ptr noundef nonnull @.str.18, i32 noundef %conv8.i.i.i, i64 noundef %or.i.i) #8
  br label %do.body15

cond.false78.i.i:                                 ; preds = %cond.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub87.i.i = add i32 %102, 1
  %add88.i.i = sub i32 %sub87.i.i, %104
  br label %cond.end89.i.i

cond.end89.i.i:                                   ; preds = %cond.false78.i.i, %cond.end.i.i.cond.end89.i.i_crit_edge
  %cond90.i.i = phi i32 [ %add88.i.i, %cond.false78.i.i ], [ 0, %cond.end.i.i.cond.end89.i.i_crit_edge ]
  %call91.i.i = call i32 @efx_init_io(ptr noundef %add.ptr.i, i32 noundef %conv8.i.i.i, i32 noundef -1, i32 noundef %cond90.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i.i)
  %tobool92.not.i.i = icmp eq i32 %call91.i.i, 0
  br i1 %tobool92.not.i.i, label %ef100_pci_parse_xilinx_cap.exit.i, label %do.body94.i.i

do.body94.i.i:                                    ; preds = %cond.end89.i.i
  %109 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %msg_enable, align 4
  %and96.i.i = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i.i)
  %tobool97.not.i.i = icmp eq i32 %and96.i.i, 0
  br i1 %tobool97.not.i.i, label %do.body94.i.i.do.body15_crit_edge, label %if.then98.i.i

do.body94.i.i.do.body15_crit_edge:                ; preds = %do.body94.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then98.i.i:                                    ; preds = %do.body94.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev99.i.i = getelementptr i8, ptr %call, i32 4732
  %111 = ptrtoint ptr %net_dev99.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %net_dev99.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %112, ptr noundef nonnull @.str.19, i32 noundef %call91.i.i) #8
  br label %do.body15

ef100_pci_parse_xilinx_cap.exit.i:                ; preds = %cond.end89.i.i
  %call104.i.i = call fastcc i32 @ef100_pci_walk_xilinx_table(ptr noundef %add.ptr.i, i64 noundef %or.i.i, ptr noundef nonnull %fcw) #5
  call void @efx_fini_io(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i.i)
  %tobool45.not.i = icmp eq i32 %call104.i.i, 0
  br i1 %tobool45.not.i, label %ef100_pci_parse_xilinx_cap.exit.i.cleanup49.i_crit_edge, label %ef100_pci_parse_xilinx_cap.exit.i.do.body15_crit_edge

ef100_pci_parse_xilinx_cap.exit.i.do.body15_crit_edge: ; preds = %ef100_pci_parse_xilinx_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

ef100_pci_parse_xilinx_cap.exit.i.cleanup49.i_crit_edge: ; preds = %ef100_pci_parse_xilinx_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49.i

cleanup49.i:                                      ; preds = %ef100_pci_parse_xilinx_cap.exit.i.cleanup49.i_crit_edge, %if.end32.i.cleanup49.i_crit_edge
  %113 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pci_dev.i, align 4
  %call.i = call zeroext i16 @pci_find_next_ext_capability(ptr noundef %114, i16 noundef zeroext %call212.i, i32 noundef 11) #5
  %cmp.not.i = icmp eq i16 %call.i, 0
  br i1 %cmp.not.i, label %while.end.i, label %cleanup49.i.while.body.i_crit_edge

cleanup49.i.while.body.i_crit_edge:               ; preds = %cleanup49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool56.not.i = icmp eq i32 %inc.i, 0
  %115 = ptrtoint ptr %fcw to i32
  call void @__asan_load1_noabort(i32 %115)
  %.pr = load i8, ptr %fcw, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool25.not = icmp eq i8 %.pr, 0
  br i1 %tobool56.not.i, label %if.end24, label %land.lhs.true57.i

land.lhs.true57.i:                                ; preds = %while.end.i
  br i1 %tobool25.not, label %do.body61.i, label %land.lhs.true57.i.if.end28_crit_edge

land.lhs.true57.i.if.end28_crit_edge:             ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.body61.i:                                      ; preds = %land.lhs.true57.i
  %116 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msg_enable, align 4
  %and63.i = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %do.body61.i.do.body15_crit_edge, label %if.then65.i

do.body61.i.do.body15_crit_edge:                  ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then65.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev66.i = getelementptr i8, ptr %call, i32 4732
  %118 = ptrtoint ptr %net_dev66.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %net_dev66.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str.12, i32 noundef %inc.i) #8
  br label %do.body15

do.body15:                                        ; preds = %if.then65.i, %do.body61.i.do.body15_crit_edge, %ef100_pci_parse_xilinx_cap.exit.i.do.body15_crit_edge, %if.then98.i.i, %do.body94.i.i.do.body15_crit_edge, %if.then65.i.i, %do.body61.i.i.do.body15_crit_edge, %if.then38.i.i, %do.body34.i.i.do.body15_crit_edge, %if.then23.i.i, %do.body19.i.i.do.body15_crit_edge, %if.then10.i.i, %do.body6.i.i.do.body15_crit_edge, %if.then2.i.i, %do.body.i131.i.do.body15_crit_edge, %if.then27.i, %do.body23.i.do.body15_crit_edge, %if.then14.i, %do.body10.i.do.body15_crit_edge, %if.then5.i, %do.body.i.do.body15_crit_edge
  %retval.4.i.ph = phi i32 [ %call.i.i.i, %if.then2.i.i ], [ %call.i.i.i, %do.body.i131.i.do.body15_crit_edge ], [ -22, %if.then10.i.i ], [ -22, %do.body6.i.i.do.body15_crit_edge ], [ %call.i153.i.i, %if.then23.i.i ], [ %call.i153.i.i, %do.body19.i.i.do.body15_crit_edge ], [ %call.i166.i.i, %if.then38.i.i ], [ %call.i166.i.i, %do.body34.i.i.do.body15_crit_edge ], [ -22, %if.then65.i.i ], [ -22, %do.body61.i.i.do.body15_crit_edge ], [ %call91.i.i, %if.then98.i.i ], [ %call91.i.i, %do.body94.i.i.do.body15_crit_edge ], [ %call.i.i, %if.then5.i ], [ %call.i.i, %do.body.i.do.body15_crit_edge ], [ %call.i107.i, %if.then14.i ], [ %call.i107.i, %do.body10.i.do.body15_crit_edge ], [ %call.i120.i, %if.then27.i ], [ %call.i120.i, %do.body23.i.do.body15_crit_edge ], [ -22, %do.body61.i.do.body15_crit_edge ], [ -22, %if.then65.i ], [ %call104.i.i, %ef100_pci_parse_xilinx_cap.exit.i.do.body15_crit_edge ]
  %120 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %msg_enable, align 4
  %and17 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body15.fail_crit_edge, label %if.then19

do.body15.fail_crit_edge:                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev20 = getelementptr i8, ptr %call, i32 4732
  %122 = ptrtoint ptr %net_dev20 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %net_dev20, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %123, ptr noundef nonnull @.str.2, i32 noundef %retval.4.i.ph) #8
  br label %fail

if.end24:                                         ; preds = %while.end.i
  br i1 %tobool25.not, label %if.end24.if.then26_crit_edge, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %do.end.if.then26_crit_edge
  %bar = getelementptr inbounds %struct.ef100_func_ctl_window, ptr %fcw, i32 0, i32 1
  %124 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %bar, align 4
  %offset = getelementptr inbounds %struct.ef100_func_ctl_window, ptr %fcw, i32 0, i32 2
  %125 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 0, ptr %offset, align 8
  %126 = ptrtoint ptr %fcw to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %fcw, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge, %land.lhs.true57.i.if.end28_crit_edge
  %offset29 = getelementptr inbounds %struct.ef100_func_ctl_window, ptr %fcw, i32 0, i32 2
  %127 = ptrtoint ptr %offset29 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %offset29, align 8
  %129 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pci_dev.i, align 4
  %bar31 = getelementptr inbounds %struct.ef100_func_ctl_window, ptr %fcw, i32 0, i32 1
  %131 = ptrtoint ptr %bar31 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bar31, align 4
  %end = getelementptr %struct.pci_dev, ptr %130, i32 0, i32 47, i32 %132, i32 1
  %133 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp = icmp eq i32 %134, 0
  br i1 %cmp, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967220, i64 %128)
  %cmp42 = icmp ugt i64 %128, 4294967220
  br i1 %cmp42, label %cond.end.do.body45_crit_edge, label %cond.end.cond.end77_crit_edge

cond.end.cond.end77_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end77

cond.end.do.body45_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45

cond.end.thread:                                  ; preds = %if.end28
  %arrayidx = getelementptr %struct.pci_dev, ptr %130, i32 0, i32 47, i32 %132
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %134, -75
  %phi.bo = sub i32 %sub, %136
  %conv174 = zext i32 %phi.bo to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %128, i64 %conv174)
  %cmp42175 = icmp ugt i64 %128, %conv174
  br i1 %cmp42175, label %cond.end.thread.do.body45_crit_edge, label %cond.false64

cond.end.thread.do.body45_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45

do.body45:                                        ; preds = %cond.end.thread.do.body45_crit_edge, %cond.end.do.body45_crit_edge
  %137 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %msg_enable, align 4
  %and47 = and i32 %138, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body45.fail_crit_edge, label %if.then49

do.body45.fail_crit_edge:                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.then49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev50 = getelementptr i8, ptr %call, i32 4732
  %139 = ptrtoint ptr %net_dev50 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %net_dev50, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %140, ptr noundef nonnull @.str.3) #8
  br label %fail

cond.false64:                                     ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx, align 8
  %sub75 = add i32 %134, 1
  %add76 = sub i32 %sub75, %142
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false64, %cond.end.cond.end77_crit_edge
  %cond78 = phi i32 [ %add76, %cond.false64 ], [ 0, %cond.end.cond.end77_crit_edge ]
  %call79 = call i32 @efx_init_io(ptr noundef %add.ptr.i, i32 noundef %132, i32 noundef -1, i32 noundef %cond78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %cond.end77.fail_crit_edge

cond.end77.fail_crit_edge:                        ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end82:                                         ; preds = %cond.end77
  %conv84 = trunc i64 %128 to i32
  %reg_base = getelementptr i8, ptr %call, i32 6268
  %143 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv84, ptr %reg_base, align 4
  %netdev_notifier = getelementptr i8, ptr %call, i32 6252
  %144 = ptrtoint ptr %netdev_notifier to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @ef100_netdev_event, ptr %netdev_notifier, align 4
  %call86 = call i32 @register_netdevice_notifier(ptr noundef %netdev_notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end98, label %do.body89

do.body89:                                        ; preds = %if.end82
  %145 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %msg_enable, align 4
  %and91 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body89.fail_crit_edge, label %if.then93

do.body89.fail_crit_edge:                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.then93:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev94 = getelementptr i8, ptr %call, i32 4732
  %147 = ptrtoint ptr %net_dev94 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %net_dev94, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %148, ptr noundef nonnull @.str.4, i32 noundef %call86) #8
  br label %fail

if.end98:                                         ; preds = %if.end82
  %149 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %type, align 4
  %probe = getelementptr inbounds %struct.efx_nic_type, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %probe, align 4
  %call100 = call i32 %152(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.body104, label %if.end98.fail_crit_edge

if.end98.fail_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.body104:                                       ; preds = %if.end98
  %153 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %msg_enable, align 4
  %and106 = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body104.cleanup_crit_edge, label %do.body109

do.body104.cleanup_crit_edge:                     ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body109:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_pci_probe.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_pci_probe, %if.then114)) #5
          to label %cleanup [label %if.then114], !srcloc !80

if.then114:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev115 = getelementptr i8, ptr %call, i32 4732
  %155 = ptrtoint ptr %net_dev115 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %net_dev115, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_pci_probe.__UNIQUE_ID_ddebug527, ptr noundef %156, ptr noundef nonnull @.str.8) #5
  br label %cleanup

fail:                                             ; preds = %if.end98.fail_crit_edge, %if.then93, %do.body89.fail_crit_edge, %cond.end77.fail_crit_edge, %if.then49, %do.body45.fail_crit_edge, %if.then19, %do.body15.fail_crit_edge, %if.end.fail_crit_edge
  %rc.0 = phi i32 [ %call4, %if.end.fail_crit_edge ], [ %retval.4.i.ph, %if.then19 ], [ %retval.4.i.ph, %do.body15.fail_crit_edge ], [ %call79, %cond.end77.fail_crit_edge ], [ %call86, %if.then93 ], [ %call86, %do.body89.fail_crit_edge ], [ %call100, %if.end98.fail_crit_edge ], [ -5, %if.then49 ], [ -5, %do.body45.fail_crit_edge ]
  call void @ef100_pci_remove(ptr noundef %pci_dev)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then114, %do.body109, %do.body104.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then114 ], [ 0, %do.body104.cleanup_crit_edge ], [ 0, %do.body109 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fcw) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ef100_pci_remove(ptr noundef %pci_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #5
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void @dev_close(ptr noundef %3) #5
  tail call void @rtnl_unlock() #5
  %netdev_notifier = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 127
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef %netdev_notifier) #5
  tail call void @ef100_remove(ptr noundef nonnull %1) #5
  tail call void @efx_fini_io(ptr noundef nonnull %1) #5
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.do.end14_crit_edge, label %do.body4

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_pci_remove.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_pci_remove, %if.then9)) #5
          to label %do.end14 [label %if.then9], !srcloc !80

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_pci_remove.__UNIQUE_ID_ddebug526, ptr noundef %7, ptr noundef nonnull @.str.33) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body4, %if.end.do.end14_crit_edge
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @efx_fini_struct(ptr noundef nonnull %1) #5
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  tail call void @free_netdev(ptr noundef %10) #5
  %call16 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pci_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_init_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_init_io(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef100_netdev_event(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_next_ext_capability(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_pci_walk_xilinx_table(ptr noundef %efx, i64 noundef %offset, ptr nocapture noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %mem_bar = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 128
  %biu_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 131
  %pci_dev.i159 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %ef100_pci_does_bar_overflow.exit.while.cond_crit_edge, %entry
  %current_entry.0 = phi i64 [ %offset, %entry ], [ %add, %ef100_pci_does_bar_overflow.exit.while.cond_crit_edge ]
  %conv = trunc i64 %current_entry.0 to i32
  %0 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !81
  %3 = and i32 %2, -61696
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i141 = getelementptr i8, ptr %6, i32 %conv
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i141) #5, !srcloc !81
  %8 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i144 = getelementptr i8, ptr %9, i32 %conv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i144) #5, !srcloc !81
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %shr2.i145 = lshr i32 %11, 20
  %conv4.i146 = and i32 %shr2.i145, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61696, i32 %3)
  %cmp = icmp eq i32 %3, -61696
  br i1 %cmp, label %while.cond.cleanup94_crit_edge, label %if.end

while.cond.cleanup94_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.end:                                           ; preds = %while.cond
  %add.i = add i32 %conv, 4
  %12 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i148 = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i148) #5, !srcloc !81
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end18_crit_edge, label %do.body9

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_pci_walk_xilinx_table.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_pci_walk_xilinx_table, %if.then14)) #5
          to label %do.end18 [label %if.then14], !srcloc !80

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %20 = ptrtoint ptr %mem_bar to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_bar, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_pci_walk_xilinx_table.__UNIQUE_ID_ddebug525, ptr noundef %19, ptr noundef nonnull @.str.21, i32 noundef %4, i32 noundef %15, i64 noundef %current_entry.0, i32 noundef %21) #5
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body9, %if.end.do.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp19 = icmp ult i32 %15, 8
  br i1 %cmp19, label %do.body22, label %if.end31

do.body22:                                        ; preds = %do.end18
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body22.cleanup94_crit_edge, label %if.then26

do.body22.cleanup94_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %15) #8
  br label %cleanup94

if.end31:                                         ; preds = %do.end18
  %26 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end31.sw.epilog_crit_edge [
    i32 979200, label %sw.bb
    i32 1048574, label %sw.bb52
  ]

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i146)
  %cmp32.not = icmp ne i32 %conv4.i146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %15)
  %cmp34 = icmp ult i32 %15, 12
  %or.cond = select i1 %cmp32.not, i1 true, i1 %cmp34
  br i1 %or.cond, label %do.body37, label %if.end46

do.body37:                                        ; preds = %sw.bb
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and39 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.cleanup94_crit_edge, label %if.then41

do.body37.cleanup94_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.23, i32 noundef %15, i32 noundef %conv4.i146) #8
  br label %cleanup94

if.end46:                                         ; preds = %sw.bb
  %call48 = tail call fastcc i32 @ef100_pci_parse_ef100_entry(ptr noundef %efx, i32 noundef %conv, ptr noundef %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.sw.epilog_crit_edge, label %if.end46.cleanup94_crit_edge

if.end46.cleanup94_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.end46.sw.epilog_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i146)
  %cmp53.not = icmp ne i32 %conv4.i146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp56 = icmp ult i32 %15, 16
  %or.cond139 = select i1 %cmp53.not, i1 true, i1 %cmp56
  br i1 %or.cond139, label %do.body59, label %if.end68

do.body59:                                        ; preds = %sw.bb52
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and61 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body59.cleanup94_crit_edge, label %if.then63

do.body59.cleanup94_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef %15, i32 noundef %conv4.i146) #8
  br label %cleanup94

if.end68:                                         ; preds = %sw.bb52
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %biu_lock.i) #5
  %35 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !81
  %38 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %39, i32 %add.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #5, !srcloc !81
  %add9.i = add i32 %conv, 8
  %41 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %42, i32 %add9.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #5, !srcloc !81
  %entry1.i.sroa.5.8.insert.ext = zext i32 %43 to i64
  %entry1.i.sroa.5.8.insert.shift = shl nuw i64 %entry1.i.sroa.5.8.insert.ext, 32
  %add12.i = add i32 %conv, 12
  %44 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %45, i32 %add12.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #5, !srcloc !81
  %entry1.i.sroa.5.12.insert.ext = zext i32 %46 to i64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %biu_lock.i, i32 noundef %call2.i) #5
  %47 = lshr i32 %43, 24
  %and.i = and i32 %47, 7
  %entry1.i.sroa.5.8.insert.shift.masked = and i64 %entry1.i.sroa.5.8.insert.shift, -1080863914863886336
  %48 = or i64 %entry1.i.sroa.5.8.insert.shift.masked, %entry1.i.sroa.5.12.insert.ext
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #5
  %50 = ptrtoint ptr %mem_bar to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mem_bar, align 8
  %52 = and i32 %43, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %52)
  %switch.i = icmp eq i32 %52, 100663296
  br i1 %switch.i, label %do.body.i, label %if.end10.i

do.body.i:                                        ; preds = %if.end68
  %53 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable, align 4
  %and8.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup94_crit_edge, label %if.then9.i

do.body.i.cleanup94_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.15, i32 noundef %and.i) #8
  br label %cleanup94

if.end10.i:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %51)
  %cmp11.not.i = icmp eq i32 %and.i, %51
  br i1 %cmp11.not.i, label %ef100_pci_parse_continue_entry.exit, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @efx_fini_io(ptr noundef %efx) #5
  %57 = ptrtoint ptr %pci_dev.i159 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev.i159, align 4
  %end.i160 = getelementptr %struct.pci_dev, ptr %58, i32 0, i32 47, i32 %and.i, i32 1
  %59 = ptrtoint ptr %end.i160 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %end.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i161 = icmp eq i32 %60, 0
  br i1 %cmp.i161, label %if.then12.i.do.body14.i_crit_edge, label %ef100_pci_does_bar_overflow.exit171.thread

if.then12.i.do.body14.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

ef100_pci_does_bar_overflow.exit171.thread:       ; preds = %if.then12.i
  %arrayidx.i162 = getelementptr %struct.pci_dev, ptr %58, i32 0, i32 47, i32 %and.i
  %61 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i162, align 8
  %sub.i163 = add i32 %60, 1
  %add8.i164 = sub i32 %sub.i163, %62
  %add.i167175 = or i64 %49, 8
  %conv.i168176 = zext i32 %add8.i164 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i167175, i64 %conv.i168176)
  %cmp9.i169177 = icmp ugt i64 %add.i167175, %conv.i168176
  br i1 %cmp9.i169177, label %ef100_pci_does_bar_overflow.exit171.thread.do.body14.i_crit_edge, label %cond.end.i

ef100_pci_does_bar_overflow.exit171.thread.do.body14.i_crit_edge: ; preds = %ef100_pci_does_bar_overflow.exit171.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

do.body14.i:                                      ; preds = %ef100_pci_does_bar_overflow.exit171.thread.do.body14.i_crit_edge, %if.then12.i.do.body14.i_crit_edge
  %63 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable, align 4
  %and16.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body14.i.cleanup94_crit_edge, label %if.then18.i

do.body14.i.cleanup94_crit_edge:                  ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then18.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %66, ptr noundef nonnull @.str.18, i32 noundef %and.i, i64 noundef %49) #8
  br label %cleanup94

cond.end.i:                                       ; preds = %ef100_pci_does_bar_overflow.exit171.thread
  %call33.i = tail call i32 @efx_init_io(ptr noundef %efx, i32 noundef %and.i, i32 noundef -1, i32 noundef %add8.i164) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end46.i, label %do.body36.i

do.body36.i:                                      ; preds = %cond.end.i
  %67 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_enable, align 4
  %and38.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body36.i.cleanup94_crit_edge, label %if.then40.i

do.body36.i.cleanup94_crit_edge:                  ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then40.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %70, ptr noundef nonnull @.str.30, i32 noundef %call33.i) #8
  br label %cleanup94

if.end46.i:                                       ; preds = %cond.end.i
  %call47.i = tail call fastcc i32 @ef100_pci_walk_xilinx_table(ptr noundef %efx, i64 noundef %49, ptr noundef %result) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i.not = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i.not, label %if.then52.i, label %if.end46.i.cleanup94_crit_edge

if.end46.i.cleanup94_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then52.i:                                      ; preds = %if.end46.i
  tail call void @efx_fini_io(ptr noundef %efx) #5
  %71 = ptrtoint ptr %pci_dev.i159 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev.i159, align 4
  %end56.i = getelementptr %struct.pci_dev, ptr %72, i32 0, i32 47, i32 %51, i32 1
  %73 = ptrtoint ptr %end56.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %end56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp57.i = icmp eq i32 %74, 0
  br i1 %cmp57.i, label %if.then52.i.cond.end70.i_crit_edge, label %cond.false59.i

if.then52.i.cond.end70.i_crit_edge:               ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end70.i

cond.false59.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx55.i = getelementptr %struct.pci_dev, ptr %72, i32 0, i32 47, i32 %51
  %75 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx55.i, align 8
  %sub68.i = add i32 %74, 1
  %add69.i = sub i32 %sub68.i, %76
  br label %cond.end70.i

cond.end70.i:                                     ; preds = %cond.false59.i, %if.then52.i.cond.end70.i_crit_edge
  %cond71.i = phi i32 [ %add69.i, %cond.false59.i ], [ 0, %if.then52.i.cond.end70.i_crit_edge ]
  %call72.i = tail call i32 @efx_init_io(ptr noundef %efx, i32 noundef %51, i32 noundef -1, i32 noundef %cond71.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %cond.end70.i.sw.epilog_crit_edge, label %do.body75.i

cond.end70.i.sw.epilog_crit_edge:                 ; preds = %cond.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body75.i:                                      ; preds = %cond.end70.i
  %77 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable, align 4
  %and77.i = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %do.body75.i.cleanup94_crit_edge, label %if.then79.i

do.body75.i.cleanup94_crit_edge:                  ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then79.i:                                      ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.31, i32 noundef %call72.i) #8
  br label %cleanup94

ef100_pci_parse_continue_entry.exit:              ; preds = %if.end10.i
  %call47.i248 = tail call fastcc i32 @ef100_pci_walk_xilinx_table(ptr noundef %efx, i64 noundef %49, ptr noundef %result) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i248)
  %tobool71.not = icmp eq i32 %call47.i248, 0
  br i1 %tobool71.not, label %ef100_pci_parse_continue_entry.exit.sw.epilog_crit_edge, label %ef100_pci_parse_continue_entry.exit.cleanup94_crit_edge

ef100_pci_parse_continue_entry.exit.cleanup94_crit_edge: ; preds = %ef100_pci_parse_continue_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

ef100_pci_parse_continue_entry.exit.sw.epilog_crit_edge: ; preds = %ef100_pci_parse_continue_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %ef100_pci_parse_continue_entry.exit.sw.epilog_crit_edge, %cond.end70.i.sw.epilog_crit_edge, %if.end46.sw.epilog_crit_edge, %if.end31.sw.epilog_crit_edge
  %81 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool74.not = icmp eq i32 %81, 0
  br i1 %tobool74.not, label %if.end76, label %sw.epilog.cleanup94_crit_edge

sw.epilog.cleanup94_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.end76:                                         ; preds = %sw.epilog
  %conv77 = zext i32 %15 to i64
  %add = add i64 %current_entry.0, %conv77
  %82 = ptrtoint ptr %mem_bar to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mem_bar, align 8
  %84 = ptrtoint ptr %pci_dev.i159 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci_dev.i159, align 4
  %end.i152 = getelementptr %struct.pci_dev, ptr %85, i32 0, i32 47, i32 %83, i32 1
  %86 = ptrtoint ptr %end.i152 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %end.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i = icmp eq i32 %87, 0
  br i1 %cmp.i, label %if.end76.ef100_pci_does_bar_overflow.exit_crit_edge, label %cond.false.i155

if.end76.ef100_pci_does_bar_overflow.exit_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %ef100_pci_does_bar_overflow.exit

cond.false.i155:                                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i153 = getelementptr %struct.pci_dev, ptr %85, i32 0, i32 47, i32 %83
  %88 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i153, align 8
  %sub.i154 = add i32 %87, 1
  %add8.i = sub i32 %sub.i154, %89
  br label %ef100_pci_does_bar_overflow.exit

ef100_pci_does_bar_overflow.exit:                 ; preds = %cond.false.i155, %if.end76.ef100_pci_does_bar_overflow.exit_crit_edge
  %cond.i156 = phi i32 [ %add8.i, %cond.false.i155 ], [ 0, %if.end76.ef100_pci_does_bar_overflow.exit_crit_edge ]
  %add.i157 = add i64 %add, 8
  %conv.i = zext i32 %cond.i156 to i64
  %cmp9.i = icmp ugt i64 %add.i157, %conv.i
  br i1 %cmp9.i, label %do.body81, label %ef100_pci_does_bar_overflow.exit.while.cond_crit_edge

ef100_pci_does_bar_overflow.exit.while.cond_crit_edge: ; preds = %ef100_pci_does_bar_overflow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.body81:                                        ; preds = %ef100_pci_does_bar_overflow.exit
  %90 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable, align 4
  %and83 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body81.cleanup94_crit_edge, label %if.then85

do.body81.cleanup94_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

if.then85:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %93, ptr noundef nonnull @.str.25, i64 noundef %add) #8
  br label %cleanup94

cleanup94:                                        ; preds = %if.then85, %do.body81.cleanup94_crit_edge, %sw.epilog.cleanup94_crit_edge, %ef100_pci_parse_continue_entry.exit.cleanup94_crit_edge, %if.then79.i, %do.body75.i.cleanup94_crit_edge, %if.end46.i.cleanup94_crit_edge, %if.then40.i, %do.body36.i.cleanup94_crit_edge, %if.then18.i, %do.body14.i.cleanup94_crit_edge, %if.then9.i, %do.body.i.cleanup94_crit_edge, %if.then63, %do.body59.cleanup94_crit_edge, %if.end46.cleanup94_crit_edge, %if.then41, %do.body37.cleanup94_crit_edge, %if.then26, %do.body22.cleanup94_crit_edge, %while.cond.cleanup94_crit_edge
  %retval.1.ph = phi i32 [ -22, %do.body81.cleanup94_crit_edge ], [ -22, %if.then85 ], [ -22, %do.body59.cleanup94_crit_edge ], [ -22, %if.then63 ], [ -22, %do.body37.cleanup94_crit_edge ], [ -22, %if.then41 ], [ -22, %do.body22.cleanup94_crit_edge ], [ -22, %if.then26 ], [ %call72.i, %do.body75.i.cleanup94_crit_edge ], [ %call72.i, %if.then79.i ], [ %call33.i, %do.body36.i.cleanup94_crit_edge ], [ %call33.i, %if.then40.i ], [ -22, %do.body14.i.cleanup94_crit_edge ], [ -22, %if.then18.i ], [ -22, %do.body.i.cleanup94_crit_edge ], [ -22, %if.then9.i ], [ %call47.i, %if.end46.i.cleanup94_crit_edge ], [ 0, %sw.epilog.cleanup94_crit_edge ], [ %call47.i248, %ef100_pci_parse_continue_entry.exit.cleanup94_crit_edge ], [ %call48, %if.end46.cleanup94_crit_edge ], [ 0, %while.cond.cleanup94_crit_edge ]
  ret i32 %retval.1.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ef100_pci_parse_ef100_entry(ptr nocapture noundef readonly %efx, i32 noundef %entry_location, ptr nocapture noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %entry_location, 8
  %membase.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 13
  %0 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %4 = shl i32 %3, 1
  %shl = and i32 %4, -16
  %conv = zext i32 %shl to i64
  %5 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i59 = getelementptr i8, ptr %6, i32 %add.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i59) #5, !srcloc !81
  %8 = lshr i32 %7, 24
  %conv4.i = and i32 %8, 7
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef100_pci_parse_ef100_entry.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef100_pci_parse_ef100_entry, %if.then7)) #5
          to label %do.end10 [label %if.then7], !srcloc !80

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef100_pci_parse_ef100_entry.__UNIQUE_ID_ddebug524, ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef %conv4.i, i64 noundef %conv) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %13 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %result, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.end22, label %do.body13

do.body13:                                        ; preds = %do.end10
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and15 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.cleanup_crit_edge, label %if.then17

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev18 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev18, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end22:                                         ; preds = %do.end10
  %19 = and i32 %7, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %19)
  %switch = icmp eq i32 %19, 100663296
  br i1 %switch, label %do.body27, label %if.end36

do.body27:                                        ; preds = %if.end22
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and29 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.cleanup_crit_edge, label %if.then31

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %net_dev32 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev32, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.29, i32 noundef %conv4.i) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %bar37 = getelementptr inbounds %struct.ef100_func_ctl_window, ptr %result, i32 0, i32 1
  %24 = ptrtoint ptr %bar37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv4.i, ptr %bar37, align 4
  %offset38 = getelementptr inbounds %struct.ef100_func_ctl_window, ptr %result, i32 0, i32 2
  %25 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %offset38, align 8
  %26 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %result, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then31, %do.body27.cleanup_crit_edge, %if.then17, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %if.then17 ], [ -22, %do.body13.cleanup_crit_edge ], [ -22, %if.then31 ], [ -22, %do.body27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef100_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 537, i32 20}
!2 = !{ptr @ef100_pci_driver, !3, !"ef100_pci_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 536, i32 19}
!4 = !{ptr @ef100_pci_table, !5, !"ef100_pci_table", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 528, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 472, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 477, i32 3}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 491, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 509, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 518, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ef100_pci_probe.__UNIQUE_ID_ddebug527, !15, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 374, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 382, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 391, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 410, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 261, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 292, i32 3}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 300, i32 3}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 308, i32 3}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 318, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 329, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 340, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 196, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ef100_pci_walk_xilinx_table.__UNIQUE_ID_ddebug525, !43, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 201, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 210, i32 5}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 223, i32 5}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 244, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 73, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ef100_pci_parse_ef100_entry.__UNIQUE_ID_ddebug524, !55, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 78, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 85, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 148, i32 4}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 166, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sfc/ef100.c", i32 441, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ef100_pci_remove.__UNIQUE_ID_ddebug526, !67, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 2149117467, i64 2149117472, i64 2149117485, i64 2149117529, i64 2149117563, i64 2149117584}
!81 = !{i64 6605939}
!82 = !{i8 0, i8 2}
