; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/mcdi_port_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/mcdi_port_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%union.efx_dword = type { [1 x i32] }
%struct.efx_mcdi_phy_data = type { i32, i32, i32, i32, i32, i32, [20 x i8], i32, i32, [20 x i8], i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.144, i32 }
%struct.anon.144 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: failed rc=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_get_phy_cfg = private unnamed_addr constant [21 x i8] c"efx_mcdi_get_phy_cfg\00", align 1
@__func__.efx_mcdi_loopback_modes = private unnamed_addr constant [24 x i8] c"efx_mcdi_loopback_modes\00", align 1
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/sfc/mcdi_port_common.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"warning: link partner doesn't support pause frames\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Firmware reports unrecognised FEC_TYPE %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bist\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cable\00", [26 x i8] zeroinitializer }, align 32
@mcdi_sft9001_cable_diag_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate DMA buffer: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_mcdi_mac_init_stats.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.1, ptr @.str.9, i8 1, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efx_mcdi_mac_init_stats\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"stats buffer at %llx (virt %p phys %llx)\0A\00", [54 x i8] zeroinitializer }, align 32
@efx_mcdi_event_link_speed = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 100, i32 1000, i32 10000, i32 40000, i32 25000, i32 50000, i32 100000], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairA.length\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairB.length\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairC.length\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairD.length\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairA.status\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairB.status\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairC.status\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cable.pairD.status\00", [45 x i8] zeroinitializer }, align 32
@switch.table.efx_mcdi_phy_get_fecparam = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 16, i32 8], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 10, i64 100, i64 1000, i64 10000, i64 25000, i64 40000, i64 50000, i64 100000]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 51, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 287, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 396, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 652, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 859, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 866, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"mcdi_sft9001_cable_diag_names\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 743, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1237, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1242, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"efx_mcdi_event_link_speed\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1270, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 744, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 745, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 746, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 747, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 748, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 749, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 750, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [47 x i8] c"../drivers/net/ethernet/sfc/mcdi_port_common.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 751, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [39 x i8] c"switch.table.efx_mcdi_phy_get_fecparam\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mcdi_sft9001_cable_diag_names, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @efx_mcdi_event_link_speed, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.efx_mcdi_phy_get_fecparam], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcdi_sft9001_cable_diag_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_event_link_speed to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_mcdi_phy_get_fecparam to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_get_phy_cfg(ptr noundef %efx, ptr nocapture noundef writeonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [18 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %outbuf) #10
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #10
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !51
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 36, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 72, ptr noundef nonnull %outlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body48_crit_edge

entry.do.body48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %3)
  %cmp = icmp ult i32 %3, 72
  br i1 %cmp, label %if.end.do.body48_crit_edge, label %if.end5

if.end.do.body48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cfg, align 4
  %add.ptr8 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %8 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr8, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %type = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  %add.ptr13 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %12 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr13, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %supported_cap to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %supported_cap, align 4
  %add.ptr18 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 3
  %16 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr18, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %channel = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 3
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %channel, align 4
  %add.ptr23 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 4
  %20 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr23, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %port = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %port, align 4
  %add.ptr28 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 5
  %24 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr28, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %stats_mask = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 5
  %27 = ptrtoint ptr %stats_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %stats_mask, align 4
  %name = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 6
  %add.ptr34 = getelementptr inbounds i8, ptr %outbuf, i32 24
  %28 = call ptr @memcpy(ptr %name, ptr %add.ptr34, i32 20)
  %add.ptr36 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 11
  %29 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr36, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %media = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 7
  %32 = ptrtoint ptr %media to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %media, align 4
  %add.ptr41 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 12
  %33 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr41, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %mmd_mask = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 8
  %36 = ptrtoint ptr %mmd_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %mmd_mask, align 4
  %revision = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %cfg, i32 0, i32 9
  %add.ptr47 = getelementptr inbounds i8, ptr %outbuf, i32 52
  %37 = call ptr @memcpy(ptr %revision, ptr %add.ptr47, i32 20)
  br label %cleanup

do.body48:                                        ; preds = %if.end.do.body48_crit_edge, %entry.do.body48_crit_edge
  %rc.0 = phi i32 [ %call, %entry.do.body48_crit_edge ], [ -5, %if.end.do.body48_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 4
  %and49 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.cleanup_crit_edge, label %if.then51

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %40 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.efx_mcdi_get_phy_cfg, i32 noundef %rc.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body48.cleanup_crit_edge, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %rc.0, %if.then51 ], [ %rc.0, %do.body48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %outbuf) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_link_set_advertising(ptr nocapture noundef %efx, ptr nocapture noundef readonly %advertising) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  %0 = call ptr @memcpy(ptr %link_advertising, ptr %advertising, i32 12)
  %1 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_advertising, align 4
  %or = or i32 %2, 64
  store i32 %or, ptr %link_advertising, align 4
  %3 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %advertising, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %wanted_fc5 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %5 = ptrtoint ptr %wanted_fc5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wanted_fc5, align 8
  %7 = and i8 %6, -4
  %masksel = select i1 %tobool.not, i8 0, i8 3
  %.sink = or i8 %7, %masksel
  store i8 %.sink, ptr %wanted_fc5, align 8
  %8 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %advertising, align 4
  %and10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %entry.if.end16_crit_edge, label %if.then12

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wanted_fc13 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %10 = ptrtoint ptr %wanted_fc13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wanted_fc13, align 8
  %12 = xor i8 %11, 1
  store i8 %12, ptr %wanted_fc13, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_set_link(ptr noundef %efx, i32 noundef %capabilities, i32 noundef %flags, i32 noundef %loopback_mode, i32 noundef %loopback_speed) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf) #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %capabilities)
  %1 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %inbuf, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %flags)
  %add.ptr11 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %3 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr11, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %loopback_mode)
  %add.ptr21 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %5 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %add.ptr21, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %loopback_speed)
  %add.ptr31 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %7 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr31, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 42, ptr noundef nonnull %inbuf, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_loopback_modes(ptr noundef %efx, ptr nocapture noundef writeonly %loopback_modes) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [10 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %outbuf) #10
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #10
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !51
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 40, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 40, ptr noundef nonnull %outlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ult i32 %3, 32
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %arrayidx7 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 7
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %8 = zext i32 %7 to i64
  %9 = zext i32 %5 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %loopback_modes, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %rc.0 = phi i32 [ %call, %entry.do.body_crit_edge ], [ -5, %if.end.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and13 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %if.then15

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.efx_mcdi_loopback_modes, i32 noundef %rc.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body.cleanup_crit_edge, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %rc.0, %if.then15 ], [ %rc.0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %outbuf) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mcdi_to_ethtool_linkset(i32 noundef %media, i32 noundef %cap, ptr noundef %linkset) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %linkset, i32 0, i32 12)
  %1 = zext i32 %media to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %media, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %entry.sw.bb9_crit_edge
    i32 5, label %entry.sw.bb9_crit_edge159
    i32 7, label %entry.sw.bb9_crit_edge160
    i32 6, label %sw.bb34
  ]

entry.sw.bb9_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

entry.sw.bb9_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %linkset, align 4
  %and = and i32 %cap, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 65536, i32 196608
  %spec.select = or i32 %3, %spec.select.v
  %4 = ptrtoint ptr %linkset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %linkset, align 4
  %and1 = and i32 %cap, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %sw.bb.if.end4_crit_edge, label %if.then3

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %linkset, align 4
  %or.i122 = or i32 %6, 262144
  store i32 %or.i122, ptr %linkset, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %sw.bb.if.end4_crit_edge
  %and5 = and i32 %cap, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.sw.epilog_crit_edge, label %if.end4.sw.epilog.sink.split_crit_edge

if.end4.sw.epilog.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge159, %entry.sw.bb9_crit_edge160
  %7 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %linkset, align 4
  %or.i124 = or i32 %8, 1024
  store i32 %or.i124, ptr %linkset, align 4
  %and10 = and i32 %cap, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb9.if.end13_crit_edge, label %if.then12

sw.bb9.if.end13_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  %or.i125 = or i32 %8, 1056
  %9 = ptrtoint ptr %linkset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i125, ptr %linkset, align 4
  %add.ptr.i = getelementptr i32, ptr %linkset, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %or.i126 = or i32 %11, 512
  store i32 %or.i126, ptr %add.ptr.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %sw.bb9.if.end13_crit_edge
  %and14 = and i32 %cap, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i127 = getelementptr i32, ptr %linkset, i32 1
  %12 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i127, align 4
  %or.i132 = or i32 %13, 7168
  store i32 %or.i132, ptr %add.ptr.i127, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %and18 = and i32 %cap, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %linkset, align 4
  %or.i134 = or i32 %15, 50331648
  store i32 %or.i134, ptr %linkset, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %and22 = and i32 %cap, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i135 = getelementptr i32, ptr %linkset, i32 1
  %16 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i135, align 4
  %or.i138 = or i32 %17, 96
  store i32 %or.i138, ptr %add.ptr.i135, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %and26 = and i32 %cap, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %linkset, align 4
  %or.i139 = or i32 %19, -2147483648
  store i32 %or.i139, ptr %linkset, align 4
  %add.ptr.i140 = getelementptr i32, ptr %linkset, i32 1
  %20 = ptrtoint ptr %add.ptr.i140 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i140, align 4
  %or.i141 = or i32 %21, 2
  store i32 %or.i141, ptr %add.ptr.i140, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %and30 = and i32 %cap, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.sw.epilog_crit_edge, label %if.then32

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i142 = getelementptr i32, ptr %linkset, i32 1
  br label %sw.epilog.sink.split

sw.bb34:                                          ; preds = %entry
  %22 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %linkset, align 4
  %and35 = and i32 %cap, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select156.v = select i1 %tobool36.not, i32 128, i32 129
  %spec.select156 = or i32 %23, %spec.select156.v
  %24 = ptrtoint ptr %linkset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select156, ptr %linkset, align 4
  %and39 = and i32 %cap, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %sw.bb34.if.end42_crit_edge, label %if.then41

sw.bb34.if.end42_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %linkset, align 4
  %or.i146 = or i32 %26, 2
  store i32 %or.i146, ptr %linkset, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %sw.bb34.if.end42_crit_edge
  %and43 = and i32 %cap, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end46_crit_edge, label %if.then45

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %linkset, align 4
  %or.i147 = or i32 %28, 4
  store i32 %or.i147, ptr %linkset, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %and47 = and i32 %cap, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end50_crit_edge, label %if.then49

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %linkset, align 4
  %or.i148 = or i32 %30, 8
  store i32 %or.i148, ptr %linkset, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46.if.end50_crit_edge
  %and51 = and i32 %cap, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end54_crit_edge, label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %linkset, align 4
  %or.i149 = or i32 %32, 16
  store i32 %or.i149, ptr %linkset, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %and55 = and i32 %cap, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %linkset, align 4
  %or.i150 = or i32 %34, 32
  store i32 %or.i150, ptr %linkset, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %and59 = and i32 %cap, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.sw.epilog_crit_edge, label %if.end58.sw.epilog.sink.split_crit_edge

if.end58.sw.epilog.sink.split_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end58.sw.epilog.sink.split_crit_edge, %if.then32, %if.end4.sw.epilog.sink.split_crit_edge
  %linkset.sink158 = phi ptr [ %add.ptr.i142, %if.then32 ], [ %linkset, %if.end4.sw.epilog.sink.split_crit_edge ], [ %linkset, %if.end58.sw.epilog.sink.split_crit_edge ]
  %.sink157 = phi i32 [ 4, %if.then32 ], [ 8388608, %if.end4.sw.epilog.sink.split_crit_edge ], [ 4096, %if.end58.sw.epilog.sink.split_crit_edge ]
  %35 = ptrtoint ptr %linkset.sink158 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %linkset.sink158, align 4
  %or.i151 = or i32 %36, %.sink157
  store i32 %or.i151, ptr %linkset.sink158, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end58.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %and63 = and i32 %cap, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %sw.epilog.if.end66_crit_edge, label %if.then65

sw.epilog.if.end66_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then65:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %linkset, align 4
  %or.i152 = or i32 %38, 8192
  store i32 %or.i152, ptr %linkset, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %sw.epilog.if.end66_crit_edge
  %and67 = and i32 %cap, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end70_crit_edge, label %if.then69

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %linkset, align 4
  %or.i153 = or i32 %40, 16384
  store i32 %or.i153, ptr %linkset, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66.if.end70_crit_edge
  %and71 = and i32 %cap, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end74_crit_edge, label %if.then73

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %linkset, align 4
  %or.i154 = or i32 %42, 64
  store i32 %or.i154, ptr %linkset, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end70.if.end74_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ethtool_linkset_to_mcdi_cap(ptr noundef %linkset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %linkset, align 4
  %and1.i = shl i32 %1, 1
  %2 = and i32 %and1.i, 2
  %3 = load volatile i32, ptr %linkset, align 4
  %4 = shl i32 %3, 1
  %5 = and i32 %4, 4
  %6 = or i32 %5, %2
  %7 = load volatile i32, ptr %linkset, align 4
  %8 = shl i32 %7, 1
  %9 = and i32 %8, 8
  %10 = or i32 %6, %9
  %11 = load volatile i32, ptr %linkset, align 4
  %12 = shl i32 %11, 1
  %13 = and i32 %12, 16
  %14 = or i32 %10, %13
  %15 = load volatile i32, ptr %linkset, align 4
  %16 = shl i32 %15, 1
  %17 = and i32 %16, 32
  %18 = or i32 %14, %17
  %19 = load volatile i32, ptr %linkset, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %entry.if.then28_crit_edge

entry.if.then28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false:                                    ; preds = %entry
  %21 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %linkset, align 4
  %23 = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr i32, ptr %linkset, i32 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i, align 4
  %26 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not = icmp eq i32 %26, 0
  br i1 %tobool27.not, label %lor.lhs.false25.if.end30_crit_edge, label %lor.lhs.false25.if.then28_crit_edge

lor.lhs.false25.if.then28_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

lor.lhs.false25.if.end30_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then28:                                        ; preds = %lor.lhs.false25.if.then28_crit_edge, %lor.lhs.false.if.then28_crit_edge, %entry.if.then28_crit_edge
  %or29 = or i32 %18, 64
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %lor.lhs.false25.if.end30_crit_edge
  %result.5 = phi i32 [ %or29, %if.then28 ], [ %18, %lor.lhs.false25.if.end30_crit_edge ]
  %27 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %linkset, align 4
  %29 = and i32 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool32.not = icmp eq i32 %29, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %if.end30.if.then45_crit_edge

if.end30.if.then45_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

lor.lhs.false33:                                  ; preds = %if.end30
  %30 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %linkset, align 4
  %32 = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool35.not = icmp eq i32 %32, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %lor.lhs.false33.if.then45_crit_edge

lor.lhs.false33.if.then45_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %arrayidx.i150 = getelementptr i32, ptr %linkset, i32 1
  %33 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i150, align 4
  %35 = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool38.not = icmp eq i32 %35, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.if.then45_crit_edge

lor.lhs.false36.if.then45_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %36 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i150, align 4
  %38 = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool41.not = icmp eq i32 %38, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %lor.lhs.false39.if.then45_crit_edge

lor.lhs.false39.if.then45_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %39 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i150, align 4
  %41 = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool44.not = icmp eq i32 %41, 0
  br i1 %tobool44.not, label %lor.lhs.false42.if.end47_crit_edge, label %lor.lhs.false42.if.then45_crit_edge

lor.lhs.false42.if.then45_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

lor.lhs.false42.if.end47_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %lor.lhs.false42.if.then45_crit_edge, %lor.lhs.false39.if.then45_crit_edge, %lor.lhs.false36.if.then45_crit_edge, %lor.lhs.false33.if.then45_crit_edge, %if.end30.if.then45_crit_edge
  %or46 = or i32 %result.5, 128
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %lor.lhs.false42.if.end47_crit_edge
  %result.6 = phi i32 [ %or46, %if.then45 ], [ %result.5, %lor.lhs.false42.if.end47_crit_edge ]
  %42 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %linkset, align 4
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool49.not = icmp eq i32 %44, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.end47.if.then56_crit_edge

if.end47.if.then56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false50:                                  ; preds = %if.end47
  %45 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %linkset, align 4
  %47 = and i32 %46, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool52.not = icmp eq i32 %47, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %lor.lhs.false50.if.then56_crit_edge

lor.lhs.false50.if.then56_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %48 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %linkset, align 4
  %50 = and i32 %49, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool55.not = icmp eq i32 %50, 0
  br i1 %tobool55.not, label %lor.lhs.false53.if.end58_crit_edge, label %lor.lhs.false53.if.then56_crit_edge

lor.lhs.false53.if.then56_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false53.if.end58_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then56:                                        ; preds = %lor.lhs.false53.if.then56_crit_edge, %lor.lhs.false50.if.then56_crit_edge, %if.end47.if.then56_crit_edge
  %or57 = or i32 %result.6, 2048
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %lor.lhs.false53.if.end58_crit_edge
  %result.7 = phi i32 [ %or57, %if.then56 ], [ %result.6, %lor.lhs.false53.if.end58_crit_edge ]
  %arrayidx.i165 = getelementptr i32, ptr %linkset, i32 1
  %51 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i165, align 4
  %53 = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool60.not = icmp eq i32 %53, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %if.end58.if.then64_crit_edge

if.end58.if.then64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

lor.lhs.false61:                                  ; preds = %if.end58
  %54 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i165, align 4
  %56 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool63.not = icmp eq i32 %56, 0
  br i1 %tobool63.not, label %lor.lhs.false61.if.end66_crit_edge, label %lor.lhs.false61.if.then64_crit_edge

lor.lhs.false61.if.then64_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

lor.lhs.false61.if.end66_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then64:                                        ; preds = %lor.lhs.false61.if.then64_crit_edge, %if.end58.if.then64_crit_edge
  %or65 = or i32 %result.7, 8192
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %lor.lhs.false61.if.end66_crit_edge
  %result.8 = phi i32 [ %or65, %if.then64 ], [ %result.7, %lor.lhs.false61.if.end66_crit_edge ]
  %57 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %linkset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %tobool68.not = icmp sgt i32 %58, -1
  br i1 %tobool68.not, label %lor.lhs.false69, label %if.end66.if.then72_crit_edge

if.end66.if.then72_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

lor.lhs.false69:                                  ; preds = %if.end66
  %59 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i165, align 4
  %61 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool71.not = icmp eq i32 %61, 0
  br i1 %tobool71.not, label %lor.lhs.false69.if.end74_crit_edge, label %lor.lhs.false69.if.then72_crit_edge

lor.lhs.false69.if.then72_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

lor.lhs.false69.if.end74_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then72:                                        ; preds = %lor.lhs.false69.if.then72_crit_edge, %if.end66.if.then72_crit_edge
  %or73 = or i32 %result.8, 16384
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %lor.lhs.false69.if.end74_crit_edge
  %result.9 = phi i32 [ %or73, %if.then72 ], [ %result.8, %lor.lhs.false69.if.end74_crit_edge ]
  %62 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx.i165, align 4
  %64 = shl i32 %63, 13
  %65 = and i32 %64, 32768
  %66 = or i32 %65, %result.9
  %67 = ptrtoint ptr %linkset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %linkset, align 4
  %69 = lshr i32 %68, 5
  %70 = and i32 %69, 256
  %71 = or i32 %66, %70
  %72 = load volatile i32, ptr %linkset, align 4
  %73 = lshr i32 %72, 5
  %74 = and i32 %73, 512
  %75 = or i32 %71, %74
  %76 = load volatile i32, ptr %linkset, align 4
  %77 = shl i32 %76, 4
  %78 = and i32 %77, 1024
  %79 = or i32 %75, %78
  ret i32 %79
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_get_mcdi_phy_flags(ptr nocapture noundef readonly %efx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = lshr i32 %3, 5
  %and.lobit = and i32 %and, 1
  %and3 = lshr i32 %3, 2
  %4 = and i32 %and3, 2
  %5 = and i32 %and3, 4
  %phy_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 94
  %6 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_mode, align 16
  %and15 = and i32 %and.lobit, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %flags.0 = select i1 %tobool16.not, i32 0, i32 4
  %and20 = and i32 %4, %7
  %and20.lobit = lshr exact i32 %and20, 1
  %flags.1 = or i32 %flags.0, %and20.lobit
  %and25 = and i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %or28 = or i32 %flags.1, 2
  %flags.2 = select i1 %tobool26.not, i32 %flags.1, i32 %or28
  ret i32 %flags.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mcdi_to_ethtool_media(i32 noundef %media) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %media, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 50332419, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %retval.0 = select i1 %0, i8 %switch.masked, i8 -1
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_phy_decode_link(ptr nocapture readnone %efx, ptr nocapture noundef writeonly %link_state, i32 noundef %speed, i32 noundef %flags, i32 noundef %fcntl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fcntl to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %fcntl, label %do.end31 [
    i32 3, label %do.end
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb17
    i32 0, label %entry.sw.bb45_crit_edge
  ]

entry.sw.bb45_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 9, ptr noundef null) #10
  br label %sw.bb45

sw.bb45:                                          ; preds = %do.end31, %entry.sw.bb45_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %sw.bb17, %do.end, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb45 ], [ 2, %sw.bb17 ], [ 7, %do.end ], [ 3, %entry.sw.epilog_crit_edge ]
  %fc46 = getelementptr inbounds %struct.efx_link_state, ptr %link_state, i32 0, i32 2
  %1 = ptrtoint ptr %fc46 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %.sink, ptr %fc46, align 2
  %2 = trunc i32 %flags to i8
  %3 = and i8 %2, 1
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %link_state, align 4
  %fd = getelementptr inbounds %struct.efx_link_state, ptr %link_state, i32 0, i32 1
  %5 = lshr i8 %2, 1
  %6 = and i8 %5, 1
  %7 = ptrtoint ptr %fd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %fd, align 1
  %speed59 = getelementptr inbounds %struct.efx_link_state, ptr %link_state, i32 0, i32 3
  %8 = ptrtoint ptr %speed59 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %speed, ptr %speed59, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ethtool_fec_caps_to_mcdi(i32 noundef %supported_cap, i32 noundef %ethtool_cap) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ethtool_cap, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %ethtool_cap, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and4 = and i32 %supported_cap, 1376256
  %spec.select = select i1 %tobool2.not, i32 0, i32 %and4
  %and6 = and i32 %ethtool_cap, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and8 = and i32 %supported_cap, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = or i1 %tobool9.not, %tobool7.not
  %or11 = or i32 %spec.select, 786432
  %ret.1 = select i1 %or.cond, i32 %spec.select, i32 %or11
  %and13 = and i32 %ethtool_cap, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and16 = and i32 %supported_cap, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or19 = or i32 %ret.1, 196608
  %spec.select37 = select i1 %tobool17.not, i32 %ret.1, i32 %or19
  %and21 = and i32 %supported_cap, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or24 = or i32 %spec.select37, 3145728
  %spec.select38 = select i1 %tobool22.not, i32 %spec.select37, i32 %or24
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.1, %if.end.cleanup_crit_edge ], [ %spec.select38, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mcdi_fec_caps_to_ethtool(i32 noundef %caps, i1 noundef zeroext %is_25g) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cond.v = select i1 %is_25g, i32 1048576, i32 65536
  %0 = or i32 %cond.v, 262144
  %1 = and i32 %0, %caps
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cond = and i32 %cond.v, %caps
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool8 = icmp ne i32 %cond, 0
  %cond16.v = select i1 %is_25g, i32 2097152, i32 131072
  %cond16 = and i32 %cond16.v, %caps
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond16)
  %tobool17 = icmp ne i32 %cond16, 0
  %and2 = and i32 %caps, 524288
  %2 = lshr exact i32 %and2, 16
  %cond24 = select i1 %tobool17, i32 16, i32 0
  %or = or i32 %cond24, %2
  %3 = xor i1 %tobool8, %tobool17
  %and = lshr i32 %caps, 18
  %and.lobit = and i32 %and, 1
  %and2.lobit = lshr exact i32 %and2, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %and2.lobit)
  %cmp33 = icmp eq i32 %and.lobit, %and2.lobit
  %phi.sel = select i1 %cmp33, i32 0, i32 2
  %4 = select i1 %3, i32 2, i32 %phi.sel
  %or36 = or i32 %or, %4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or36, %if.end ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_phy_check_fcntl(ptr nocapture noundef readonly %efx, i32 noundef %lpa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_cap, align 4
  %neg = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool.not.not = icmp eq i32 %neg, 0
  br i1 %tobool.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wanted_fc = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %4 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wanted_fc, align 8
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not = icmp ne i8 %7, 0
  %8 = and i32 %lpa, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %8)
  %cmp = icmp eq i32 %8, 512
  %or.cond = and i1 %cmp, %tobool17.not
  br i1 %or.cond, label %do.body, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body.cleanup_crit_edge, label %if.then22

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @efx_mcdi_phy_poll(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [7 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97
  %0 = ptrtoint ptr %link_state to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %link_state, align 4
  %old_state.sroa.0.0.extract.shift = lshr i64 %1, 56
  %old_state.sroa.0.0.extract.trunc = trunc i64 %old_state.sroa.0.0.extract.shift to i8
  %old_state.sroa.5.0.extract.shift = lshr i64 %1, 48
  %old_state.sroa.5.0.extract.trunc = trunc i64 %old_state.sroa.5.0.extract.shift to i8
  %old_state.sroa.6.0.extract.shift = lshr i64 %1, 40
  %old_state.sroa.6.0.extract.trunc = trunc i64 %old_state.sroa.6.0.extract.shift to i8
  %old_state.sroa.752.0.extract.trunc = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %outbuf) #10
  %2 = call ptr @memset(ptr %outbuf, i32 0, i32 28)
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mac_lock) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !52

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 406, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call23 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 41, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 28, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %link_state, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr30 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 4
  %7 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr30, align 4
  %9 = lshr i32 %8, 24
  %add.ptr35 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 5
  %10 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr35, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %12, label %do.end31.i [
    i32 3, label %do.end.i
    i32 2, label %if.else.efx_mcdi_phy_decode_link.exit_crit_edge
    i32 1, label %sw.bb17.i
    i32 0, label %if.else.sw.bb45.i_crit_edge
  ]

if.else.sw.bb45.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

if.else.efx_mcdi_phy_decode_link.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_decode_link.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 9, ptr noundef null) #10
  br label %efx_mcdi_phy_decode_link.exit

sw.bb17.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_decode_link.exit

do.end31.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 9, ptr noundef null) #10
  br label %sw.bb45.i

sw.bb45.i:                                        ; preds = %do.end31.i, %if.else.sw.bb45.i_crit_edge
  br label %efx_mcdi_phy_decode_link.exit

efx_mcdi_phy_decode_link.exit:                    ; preds = %sw.bb45.i, %sw.bb17.i, %do.end.i, %if.else.efx_mcdi_phy_decode_link.exit_crit_edge
  %.sink.i = phi i8 [ 0, %sw.bb45.i ], [ 2, %sw.bb17.i ], [ 7, %do.end.i ], [ 3, %if.else.efx_mcdi_phy_decode_link.exit_crit_edge ]
  %fc46.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 2
  %14 = ptrtoint ptr %fc46.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink.i, ptr %fc46.i, align 2
  %15 = trunc i32 %9 to i8
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %link_state, align 4
  %fd.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 1
  %18 = lshr i8 %15, 1
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %fd.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %fd.i, align 1
  %speed59.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 3
  %21 = ptrtoint ptr %speed59.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %6, ptr %speed59.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %efx_mcdi_phy_decode_link.exit, %if.then25
  %22 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link_state, align 4, !range !53
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %old_state.sroa.0.0.extract.trunc)
  %cmp.i = icmp eq i8 %23, %old_state.sroa.0.0.extract.trunc
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end39.efx_link_state_equal.exit_crit_edge

if.end39.efx_link_state_equal.exit_crit_edge:     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_link_state_equal.exit

land.lhs.true.i:                                  ; preds = %if.end39
  %fd.i51 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 1
  %24 = ptrtoint ptr %fd.i51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fd.i51, align 1, !range !53
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %old_state.sroa.5.0.extract.trunc)
  %cmp10.i = icmp eq i8 %25, %old_state.sroa.5.0.extract.trunc
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.efx_link_state_equal.exit_crit_edge

land.lhs.true.i.efx_link_state_equal.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_link_state_equal.exit

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %fc.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 2
  %26 = ptrtoint ptr %fc.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fc.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %old_state.sroa.6.0.extract.trunc)
  %cmp16.i = icmp eq i8 %27, %old_state.sroa.6.0.extract.trunc
  br i1 %cmp16.i, label %land.rhs.i, label %land.lhs.true12.i.efx_link_state_equal.exit_crit_edge

land.lhs.true12.i.efx_link_state_equal.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_link_state_equal.exit

land.rhs.i:                                       ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  %speed.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 3
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %old_state.sroa.752.0.extract.trunc)
  %cmp19.i = icmp ne i32 %29, %old_state.sroa.752.0.extract.trunc
  br label %efx_link_state_equal.exit

efx_link_state_equal.exit:                        ; preds = %land.rhs.i, %land.lhs.true12.i.efx_link_state_equal.exit_crit_edge, %land.lhs.true.i.efx_link_state_equal.exit_crit_edge, %if.end39.efx_link_state_equal.exit_crit_edge
  %30 = phi i1 [ true, %land.lhs.true12.i.efx_link_state_equal.exit_crit_edge ], [ true, %land.lhs.true.i.efx_link_state_equal.exit_crit_edge ], [ true, %if.end39.efx_link_state_equal.exit_crit_edge ], [ %cmp19.i, %land.rhs.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %outbuf) #10
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_probe(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %outbuf.i = alloca [10 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  %outbuf = alloca [7 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %outbuf) #10
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 76) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @efx_mcdi_get_phy_cfg(ptr noundef %efx, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %do.end, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end:                                           ; preds = %if.end
  %call5 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 41, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 28, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %do.end.fail_crit_edge

do.end.fail_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end7:                                          ; preds = %do.end
  %phy_data8 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %2 = ptrtoint ptr %phy_data8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %phy_data8, align 16
  %type = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %phy_type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 90
  %5 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %phy_type, align 4
  %channel = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %mdio_bus = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 93
  %8 = ptrtoint ptr %mdio_bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mdio_bus, align 4
  %port = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 8
  %mdio = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92
  %11 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mdio, align 4
  %mmd_mask = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %mmd_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmd_mask, align 8
  %and = and i32 %13, -2
  %mmds = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92, i32 1
  %14 = ptrtoint ptr %mmds to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %mmds, align 4
  %mode_support = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92, i32 2
  %and12 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %tobool20.not = icmp ult i32 %13, 2
  %or24 = or i32 %and12, 6
  %spec.select = select i1 %tobool20.not, i32 %and12, i32 %or24
  %15 = ptrtoint ptr %mode_support to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %mode_support, align 4
  %16 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %outbuf, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %and28 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %media = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %media, align 4
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  call void @mcdi_to_ethtool_linkset(i32 noundef %20, i32 noundef %18, ptr noundef %link_advertising)
  br label %do.end113

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %forced_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %forced_cap to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %forced_cap, align 8
  br label %do.end113

do.end113:                                        ; preds = %if.else, %if.then30
  %loopback_modes = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 105
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %outbuf.i) #10
  %22 = call ptr @memset(ptr %outbuf.i, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #10
  %23 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %outlen.i, align 4, !annotation !51
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 40, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf.i, i32 noundef 40, ptr noundef nonnull %outlen.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end113.do.body.i_crit_edge

do.end113.do.body.i_crit_edge:                    ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i:                                         ; preds = %do.end113
  %24 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp.i = icmp ult i32 %25, 32
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end117

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.end113.do.body.i_crit_edge
  %rc.0.i = phi i32 [ %call.i, %do.end113.do.body.i_crit_edge ], [ -5, %if.end.i.do.body.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %26 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable.i, align 4
  %and13.i = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body.i.efx_mcdi_loopback_modes.exit.thread_crit_edge, label %if.then15.i

do.body.i.efx_mcdi_loopback_modes.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_loopback_modes.exit.thread

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %28 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.efx_mcdi_loopback_modes, i32 noundef %rc.0.i) #13
  br label %efx_mcdi_loopback_modes.exit.thread

efx_mcdi_loopback_modes.exit.thread:              ; preds = %if.then15.i, %do.body.i.efx_mcdi_loopback_modes.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %outbuf.i) #10
  br label %fail

if.end117:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 6
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  %arrayidx7.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 7
  %32 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.i, align 4
  %34 = zext i32 %33 to i64
  %35 = zext i32 %31 to i64
  %36 = shl nuw i64 %35, 32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %outbuf.i) #10
  %.masked = and i64 %36, -72057598332895232
  %37 = or i64 %.masked, %34
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %39 = ptrtoint ptr %loopback_modes to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %loopback_modes, align 8
  %link_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97
  %add.ptr121 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %40 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr121, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %add.ptr126 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 4
  %43 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr126, align 4
  %45 = lshr i32 %44, 24
  %add.ptr131 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 5
  %46 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr131, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %48, label %do.end31.i [
    i32 3, label %do.end.i
    i32 2, label %if.end117.efx_mcdi_phy_decode_link.exit_crit_edge
    i32 1, label %sw.bb17.i
    i32 0, label %if.end117.sw.bb45.i_crit_edge
  ]

if.end117.sw.bb45.i_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

if.end117.efx_mcdi_phy_decode_link.exit_crit_edge: ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_decode_link.exit

do.end.i:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 9, ptr noundef null) #10
  br label %efx_mcdi_phy_decode_link.exit

sw.bb17.i:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_decode_link.exit

do.end31.i:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 9, ptr noundef null) #10
  br label %sw.bb45.i

sw.bb45.i:                                        ; preds = %do.end31.i, %if.end117.sw.bb45.i_crit_edge
  br label %efx_mcdi_phy_decode_link.exit

efx_mcdi_phy_decode_link.exit:                    ; preds = %sw.bb45.i, %sw.bb17.i, %do.end.i, %if.end117.efx_mcdi_phy_decode_link.exit_crit_edge
  %.sink.i = phi i8 [ 0, %sw.bb45.i ], [ 2, %sw.bb17.i ], [ 7, %do.end.i ], [ 3, %if.end117.efx_mcdi_phy_decode_link.exit_crit_edge ]
  %fc46.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 2
  %50 = ptrtoint ptr %fc46.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink.i, ptr %fc46.i, align 2
  %51 = trunc i32 %45 to i8
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %link_state, align 4
  %fd.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 1
  %54 = lshr i8 %51, 1
  %55 = and i8 %54, 1
  %56 = ptrtoint ptr %fd.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %fd.i, align 1
  %speed59.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 3
  %57 = ptrtoint ptr %speed59.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %42, ptr %speed59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1470038016, i32 %41)
  %cmp136 = icmp eq i32 %41, -1470038016
  call void @__sanitizer_cov_trace_const_cmp4(i32 1354956800, i32 %41)
  %cmp139 = icmp eq i32 %41, 1354956800
  %spec.select192 = or i1 %cmp136, %cmp139
  %cond.v.i = select i1 %spec.select192, i32 1048576, i32 65536
  %58 = or i32 %cond.v.i, 262144
  %59 = and i32 %58, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %.not.i = icmp eq i32 %59, 0
  br i1 %.not.i, label %efx_mcdi_phy_decode_link.exit.mcdi_fec_caps_to_ethtool.exit_crit_edge, label %if.end.i193

efx_mcdi_phy_decode_link.exit.mcdi_fec_caps_to_ethtool.exit_crit_edge: ; preds = %efx_mcdi_phy_decode_link.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcdi_fec_caps_to_ethtool.exit

if.end.i193:                                      ; preds = %efx_mcdi_phy_decode_link.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i = and i32 %cond.v.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool8.i = icmp ne i32 %cond.i, 0
  %cond16.v.i = select i1 %spec.select192, i32 2097152, i32 131072
  %cond16.i = and i32 %cond16.v.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond16.i)
  %tobool17.i = icmp ne i32 %cond16.i, 0
  %and2.i = and i32 %18, 524288
  %60 = lshr exact i32 %and2.i, 16
  %cond24.i = select i1 %tobool17.i, i32 16, i32 0
  %or.i = or i32 %cond24.i, %60
  %61 = xor i1 %tobool8.i, %tobool17.i
  %and.i = lshr i32 %18, 18
  %and.lobit.i = and i32 %and.i, 1
  %and2.lobit.i = lshr exact i32 %and2.i, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit.i, i32 %and2.lobit.i)
  %cmp33.i = icmp eq i32 %and.lobit.i, %and2.lobit.i
  %phi.sel.i = select i1 %cmp33.i, i32 0, i32 2
  %62 = select i1 %61, i32 2, i32 %phi.sel.i
  %or36.i = or i32 %or.i, %62
  br label %mcdi_fec_caps_to_ethtool.exit

mcdi_fec_caps_to_ethtool.exit:                    ; preds = %if.end.i193, %efx_mcdi_phy_decode_link.exit.mcdi_fec_caps_to_ethtool.exit_crit_edge
  %retval.0.i194 = phi i32 [ %or36.i, %if.end.i193 ], [ 4, %efx_mcdi_phy_decode_link.exit.mcdi_fec_caps_to_ethtool.exit_crit_edge ]
  %fec_config = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 96
  %63 = ptrtoint ptr %fec_config to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i194, ptr %fec_config, align 32
  %wanted_fc = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %call7.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %supported_cap, align 8
  %and141 = and i32 %65, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  %spec.store.select = select i1 %tobool142.not, i8 3, i8 7
  %66 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %spec.store.select, ptr %wanted_fc, align 8
  call void @efx_link_set_wanted_fc(ptr noundef %efx, i8 noundef zeroext %spec.store.select) #10
  br label %cleanup

fail:                                             ; preds = %efx_mcdi_loopback_modes.exit.thread, %do.end.fail_crit_edge, %if.end.fail_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.fail_crit_edge ], [ %call5, %do.end.fail_crit_edge ], [ %rc.0.i, %efx_mcdi_loopback_modes.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %mcdi_fec_caps_to_ethtool.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail ], [ 0, %mcdi_fec_caps_to_ethtool.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %outbuf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_link_set_wanted_fc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_phy_remove(ptr nocapture noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 16
  store ptr null, ptr %phy_data1, align 16
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_phy_get_link_ksettings(ptr noundef %efx, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [7 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %outbuf) #10
  %2 = call ptr @memset(ptr %outbuf, i32 0, i32 28)
  %speed = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 3
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 4
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %speed1, align 4
  %fd = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 1
  %6 = ptrtoint ptr %fd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fd, align 1, !range !53
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %duplex, align 4
  %media = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %media, align 4
  %switch.tableidx = add i32 %10, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 4
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 50332419, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %retval.0.i = select i1 %11, i8 %switch.masked, i8 -1
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %retval.0.i, ptr %port, align 1
  %port5 = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port5, align 4
  %conv6 = trunc i32 %14 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %15 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %phy_address, align 2
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  %16 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_advertising, align 4
  %18 = trunc i32 %17 to i8
  %19 = lshr i8 %18, 6
  %20 = and i8 %19, 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %autoneg, align 1
  %mode_support = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 92, i32 2
  %22 = ptrtoint ptr %mode_support to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode_support, align 4
  %24 = trunc i32 %23 to i8
  %conv13 = and i8 %24, 3
  %mdio_support = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 6
  %25 = ptrtoint ptr %mdio_support to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv13, ptr %mdio_support, align 4
  %26 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %media, align 4
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %supported_cap, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @mcdi_to_ethtool_linkset(i32 noundef %27, i32 noundef %29, ptr noundef %link_modes)
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %30 = call ptr @memcpy(ptr %advertising, ptr %link_advertising, i32 12)
  %call21 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 41, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 28, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %media, align 4
  %add.ptr = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 2
  call void @mcdi_to_ethtool_linkset(i32 noundef %32, i32 noundef %35, ptr noundef %lp_advertising)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %outbuf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_set_link_ksettings(ptr noundef %efx, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call = tail call i32 @ethtool_linkset_to_mcdi_cap(ptr noundef %advertising)
  %or = or i32 %call, 1024
  br label %if.end20

if.else:                                          ; preds = %entry
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %speed14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed14, align 4
  br i1 %tobool2.not, label %if.else12, label %if.then3

if.then3:                                         ; preds = %if.else
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %7, label %if.then3.cleanup_crit_edge [
    i32 10, label %if.then3.if.end20_crit_edge
    i32 100, label %sw.bb5
    i32 1000, label %sw.bb6
    i32 10000, label %sw.bb7
    i32 40000, label %sw.bb8
    i32 100000, label %sw.bb9
    i32 25000, label %sw.bb10
    i32 50000, label %sw.bb11
  ]

if.then3.if.end20_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb6:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb7:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb8:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb9:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb10:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb11:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else12:                                        ; preds = %if.else
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %7, label %if.else12.cleanup_crit_edge [
    i32 10, label %if.else12.if.end20_crit_edge
    i32 100, label %sw.bb16
    i32 1000, label %sw.bb17
  ]

if.else12.if.end20_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb16:                                          ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.bb17:                                          ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %sw.bb17, %sw.bb16, %if.else12.if.end20_crit_edge, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %if.then3.if.end20_crit_edge, %if.then
  %caps.0 = phi i32 [ %or, %if.then ], [ 32768, %sw.bb11 ], [ 16384, %sw.bb10 ], [ 8192, %sw.bb9 ], [ 2048, %sw.bb8 ], [ 128, %sw.bb7 ], [ 64, %sw.bb6 ], [ 16, %sw.bb5 ], [ 32, %sw.bb17 ], [ 8, %sw.bb16 ], [ 4, %if.then3.if.end20_crit_edge ], [ 2, %if.else12.if.end20_crit_edge ]
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %supported_cap, align 4
  %fec_config = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 96
  %12 = ptrtoint ptr %fec_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fec_config, align 32
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.ethtool_fec_caps_to_mcdi.exit_crit_edge

if.end20.ethtool_fec_caps_to_mcdi.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit

if.end.i:                                         ; preds = %if.end20
  %and1.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %and4.i = and i32 %11, 1376256
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 %and4.i
  %and6.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %and8.i = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond.i = or i1 %tobool9.not.i, %tobool7.not.i
  %or11.i = or i32 %spec.select.i, 786432
  %ret.1.i = select i1 %or.cond.i, i32 %spec.select.i, i32 %or11.i
  %and13.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge, label %if.then15.i

if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and16.i = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or19.i = or i32 %ret.1.i, 196608
  %spec.select37.i = select i1 %tobool17.not.i, i32 %ret.1.i, i32 %or19.i
  %and21.i = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %or24.i = or i32 %spec.select37.i, 3145728
  %spec.select38.i = select i1 %tobool22.not.i, i32 %spec.select37.i, i32 %or24.i
  br label %ethtool_fec_caps_to_mcdi.exit

ethtool_fec_caps_to_mcdi.exit:                    ; preds = %if.then15.i, %if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge, %if.end20.ethtool_fec_caps_to_mcdi.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end20.ethtool_fec_caps_to_mcdi.exit_crit_edge ], [ %ret.1.i, %if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge ], [ %spec.select38.i, %if.then15.i ]
  %or22 = or i32 %retval.0.i, %caps.0
  %14 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_data, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and.i57 = lshr i32 %17, 5
  %and.lobit.i = and i32 %and.i57, 1
  %and3.i = lshr i32 %17, 2
  %phy_mode.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 94
  %18 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_mode.i, align 16
  %and15.i = and i32 %and.lobit.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %flags.0.i = select i1 %tobool16.not.i, i32 0, i32 4
  %20 = and i32 %19, %and3.i
  %and20.i = lshr i32 %20, 1
  %and20.lobit.i = and i32 %and20.i, 1
  %flags.1.i = or i32 %flags.0.i, %and20.lobit.i
  %loopback_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 104
  %21 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %loopback_mode, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %or22) #10
  %24 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %inbuf.i, align 4
  %25 = shl nuw nsw i32 %flags.1.i, 24
  %and25.i = shl i32 %20, 23
  %26 = and i32 %and25.i, 33554432
  %27 = or i32 %26, %25
  %add.ptr11.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %28 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr11.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %add.ptr21.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %30 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %add.ptr21.i, align 4
  %add.ptr31.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %31 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %add.ptr31.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 42, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge

ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge:  ; preds = %ethtool_fec_caps_to_mcdi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %ethtool_fec_caps_to_mcdi.exit
  %32 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool30.not = icmp eq i8 %33, 0
  br i1 %tobool30.not, label %if.else35, label %if.then31

if.then31:                                        ; preds = %if.end27
  %advertising33 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %link_advertising.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  %34 = call ptr @memcpy(ptr %link_advertising.i, ptr %advertising33, i32 12)
  %35 = ptrtoint ptr %link_advertising.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link_advertising.i, align 4
  %or.i = or i32 %36, 64
  store i32 %or.i, ptr %link_advertising.i, align 4
  %37 = ptrtoint ptr %advertising33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %advertising33, align 4
  %and.i58 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  %wanted_fc5.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %39 = ptrtoint ptr %wanted_fc5.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wanted_fc5.i, align 8
  %41 = and i8 %40, -4
  %masksel.i = select i1 %tobool.not.i59, i8 0, i8 3
  %.sink.i = or i8 %masksel.i, %41
  store i8 %.sink.i, ptr %wanted_fc5.i, align 8
  %42 = ptrtoint ptr %advertising33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %advertising33, align 4
  %and10.i = and i32 %43, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then31.cleanup.sink.split_crit_edge, label %if.then12.i

if.then31.cleanup.sink.split_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then12.i:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %44 = xor i8 %.sink.i, 1
  %45 = ptrtoint ptr %wanted_fc5.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %wanted_fc5.i, align 8
  br label %cleanup.sink.split

if.else35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void @efx_link_clear_advertising(ptr noundef %efx) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else35, %if.then12.i, %if.then31.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %or22, %if.else35 ], [ 0, %if.then31.cleanup.sink.split_crit_edge ], [ 0, %if.then12.i ]
  %forced_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 10
  %46 = ptrtoint ptr %forced_cap to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %forced_cap, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge, %if.else12.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.else12.cleanup_crit_edge ], [ %call.i, %ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_link_clear_advertising(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_get_fecparam(ptr noundef %efx, ptr nocapture noundef writeonly %fec) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [11 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %outbuf) #10
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #10
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !51
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 41, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 44, ptr noundef nonnull %outlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %3)
  %cmp = icmp ult i32 %3, 44
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1470038016, i32 %5)
  %cmp4 = icmp eq i32 %5, -1470038016
  call void @__sanitizer_cov_trace_const_cmp4(i32 1354956800, i32 %5)
  %cmp5 = icmp eq i32 %5, 1354956800
  %spec.select = or i1 %cmp4, %cmp5
  %6 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outbuf, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %cond.v.i = select i1 %spec.select, i32 1048576, i32 65536
  %9 = or i32 %cond.v.i, 262144
  %10 = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %.not.i = icmp eq i32 %10, 0
  br i1 %.not.i, label %if.end2.mcdi_fec_caps_to_ethtool.exit_crit_edge, label %if.end.i

if.end2.mcdi_fec_caps_to_ethtool.exit_crit_edge:  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcdi_fec_caps_to_ethtool.exit

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i = and i32 %cond.v.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool8.i = icmp ne i32 %cond.i, 0
  %cond16.v.i = select i1 %spec.select, i32 2097152, i32 131072
  %cond16.i = and i32 %cond16.v.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond16.i)
  %tobool17.i = icmp ne i32 %cond16.i, 0
  %and2.i = and i32 %8, 524288
  %11 = lshr exact i32 %and2.i, 16
  %cond24.i = select i1 %tobool17.i, i32 16, i32 0
  %or.i = or i32 %cond24.i, %11
  %12 = xor i1 %tobool8.i, %tobool17.i
  %and.i = lshr i32 %8, 18
  %and.lobit.i = and i32 %and.i, 1
  %and2.lobit.i = lshr exact i32 %and2.i, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit.i, i32 %and2.lobit.i)
  %cmp33.i = icmp eq i32 %and.lobit.i, %and2.lobit.i
  %phi.sel.i = select i1 %cmp33.i, i32 0, i32 2
  %13 = select i1 %12, i32 2, i32 %phi.sel.i
  %or36.i = or i32 %or.i, %13
  br label %mcdi_fec_caps_to_ethtool.exit

mcdi_fec_caps_to_ethtool.exit:                    ; preds = %if.end.i, %if.end2.mcdi_fec_caps_to_ethtool.exit_crit_edge
  %retval.0.i = phi i32 [ %or36.i, %if.end.i ], [ 4, %if.end2.mcdi_fec_caps_to_ethtool.exit_crit_edge ]
  %fec13 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1601830656, i32 %5)
  %cmp14 = icmp eq i32 %5, -1601830656
  %and17 = and i32 %retval.0.i, -17
  %storemerge = select i1 %cmp14, i32 %and17, i32 %retval.0.i
  %14 = ptrtoint ptr %fec13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %fec13, align 4
  %add.ptr20 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 9
  %15 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr20, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %switch.lookup, label %do.body28

do.body28:                                        ; preds = %mcdi_fec_caps_to_ethtool.exit
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and29 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.cleanup.sink.split_crit_edge, label %if.then31

do.body28.cleanup.sink.split_crit_edge:           ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then31:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.3, i32 noundef %17) #13
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %mcdi_fec_caps_to_ethtool.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.efx_mcdi_phy_get_fecparam, i32 0, i32 %17
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.then31, %do.body28.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then31 ], [ 2, %do.body28.cleanup.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %24 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %active_fec, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %outbuf) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_set_fecparam(ptr noundef %efx, ptr nocapture noundef readonly %fec) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_cap, align 4
  %fec1 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %4 = ptrtoint ptr %fec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fec1, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %or.cond = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %and1.i.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %and4.i.i = and i32 %3, 1376256
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 0, i32 %and4.i.i
  %and6.i.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %and8.i.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %or.cond.i.i = or i1 %tobool9.not.i.i, %tobool7.not.i.i
  %or11.i.i = or i32 %spec.select.i.i, 786432
  %ret.1.i.i = select i1 %or.cond.i.i, i32 %spec.select.i.i, i32 %or11.i.i
  %and13.i.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge, label %if.then15.i.i

if.end.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  %and16.i.i = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  %or19.i.i = or i32 %ret.1.i.i, 196608
  %spec.select37.i.i = select i1 %tobool17.not.i.i, i32 %ret.1.i.i, i32 %or19.i.i
  %and21.i.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.then15.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge, label %if.then15.i.i.if.end_crit_edge

if.then15.i.i.if.end_crit_edge:                   ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then15.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit.i

ethtool_fec_caps_to_mcdi.exit.i:                  ; preds = %if.then15.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge, %if.end.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %ret.1.i.i, %if.end.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge ], [ %spec.select37.i.i, %if.then15.i.i.ethtool_fec_caps_to_mcdi.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool2.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool2.not.i, label %ethtool_fec_caps_to_mcdi.exit.i.cleanup_crit_edge, label %ethtool_fec_caps_to_mcdi.exit.i.if.end_crit_edge

ethtool_fec_caps_to_mcdi.exit.i.if.end_crit_edge: ; preds = %ethtool_fec_caps_to_mcdi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ethtool_fec_caps_to_mcdi.exit.i.cleanup_crit_edge: ; preds = %ethtool_fec_caps_to_mcdi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ethtool_fec_caps_to_mcdi.exit.i.if.end_crit_edge, %if.then15.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  %6 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %link_advertising, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @ethtool_linkset_to_mcdi_cap(ptr noundef %link_advertising)
  %or = or i32 %call7, 1024
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %forced_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %forced_cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %forced_cap, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %caps.0 = phi i32 [ %or, %if.then4 ], [ %10, %if.else ]
  %11 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %supported_cap, align 4
  %13 = ptrtoint ptr %fec1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fec1, align 4
  %and.i35 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %if.end.i39, label %if.end8.ethtool_fec_caps_to_mcdi.exit_crit_edge

if.end8.ethtool_fec_caps_to_mcdi.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit

if.end.i39:                                       ; preds = %if.end8
  %and1.i37 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i37)
  %tobool2.not.i38 = icmp eq i32 %and1.i37, 0
  %and4.i = and i32 %12, 1376256
  %spec.select.i = select i1 %tobool2.not.i38, i32 0, i32 %and4.i
  %and6.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %and8.i = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond.i = or i1 %tobool9.not.i, %tobool7.not.i
  %or11.i = or i32 %spec.select.i, 786432
  %ret.1.i = select i1 %or.cond.i, i32 %spec.select.i, i32 %or11.i
  %and13.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i39.ethtool_fec_caps_to_mcdi.exit_crit_edge, label %if.then15.i

if.end.i39.ethtool_fec_caps_to_mcdi.exit_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit

if.then15.i:                                      ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  %and16.i = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or19.i = or i32 %ret.1.i, 196608
  %spec.select37.i = select i1 %tobool17.not.i, i32 %ret.1.i, i32 %or19.i
  %and21.i = and i32 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %or24.i = or i32 %spec.select37.i, 3145728
  %spec.select38.i = select i1 %tobool22.not.i, i32 %spec.select37.i, i32 %or24.i
  br label %ethtool_fec_caps_to_mcdi.exit

ethtool_fec_caps_to_mcdi.exit:                    ; preds = %if.then15.i, %if.end.i39.ethtool_fec_caps_to_mcdi.exit_crit_edge, %if.end8.ethtool_fec_caps_to_mcdi.exit_crit_edge
  %retval.0.i40 = phi i32 [ 0, %if.end8.ethtool_fec_caps_to_mcdi.exit_crit_edge ], [ %ret.1.i, %if.end.i39.ethtool_fec_caps_to_mcdi.exit_crit_edge ], [ %spec.select38.i, %if.then15.i ]
  %or12 = or i32 %retval.0.i40, %caps.0
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_data, align 16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and.i41 = lshr i32 %18, 5
  %and.lobit.i = and i32 %and.i41, 1
  %and3.i = lshr i32 %18, 2
  %phy_mode.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 94
  %19 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_mode.i, align 16
  %and15.i = and i32 %and.lobit.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %flags.0.i = select i1 %tobool16.not.i, i32 0, i32 4
  %21 = and i32 %20, %and3.i
  %and20.i = lshr i32 %21, 1
  %and20.lobit.i = and i32 %and20.i, 1
  %flags.1.i = or i32 %flags.0.i, %and20.lobit.i
  %loopback_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 104
  %22 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %loopback_mode, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %or12) #10
  %25 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %inbuf.i, align 4
  %26 = shl nuw nsw i32 %flags.1.i, 24
  %and25.i = shl i32 %21, 23
  %27 = and i32 %and25.i, 33554432
  %28 = or i32 %27, %26
  %add.ptr11.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %29 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr11.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %add.ptr21.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %31 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr21.i, align 4
  %add.ptr31.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %32 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %add.ptr31.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 42, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge

ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge:  ; preds = %ethtool_fec_caps_to_mcdi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %ethtool_fec_caps_to_mcdi.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %fec1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fec1, align 4
  %fec_config = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 96
  %35 = ptrtoint ptr %fec_config to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fec_config, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge, %ethtool_fec_caps_to_mcdi.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call.i, %ethtool_fec_caps_to_mcdi.exit.cleanup_crit_edge ], [ -22, %ethtool_fec_caps_to_mcdi.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_test_alive(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #10
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #10
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !51
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 67, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp4.not = icmp eq i32 %5, 16777216
  %. = select i1 %cmp4.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %., %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_port_reconfigure(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  %link_advertising = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 95
  %2 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ethtool_linkset_to_mcdi_cap(ptr noundef %link_advertising)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %forced_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %forced_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %forced_cap, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %5, %cond.false ]
  %supported_cap = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %supported_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %supported_cap, align 4
  %fec_config = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 96
  %8 = ptrtoint ptr %fec_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fec_config, align 32
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.end.ethtool_fec_caps_to_mcdi.exit_crit_edge

cond.end.ethtool_fec_caps_to_mcdi.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit

if.end.i:                                         ; preds = %cond.end
  %and1.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %and4.i = and i32 %7, 1376256
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 %and4.i
  %and6.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %and8.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond.i = or i1 %tobool9.not.i, %tobool7.not.i
  %or11.i = or i32 %spec.select.i, 786432
  %ret.1.i = select i1 %or.cond.i, i32 %spec.select.i, i32 %or11.i
  %and13.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge, label %if.then15.i

if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ethtool_fec_caps_to_mcdi.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and16.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or19.i = or i32 %ret.1.i, 196608
  %spec.select37.i = select i1 %tobool17.not.i, i32 %ret.1.i, i32 %or19.i
  %and21.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %or24.i = or i32 %spec.select37.i, 3145728
  %spec.select38.i = select i1 %tobool22.not.i, i32 %spec.select37.i, i32 %or24.i
  br label %ethtool_fec_caps_to_mcdi.exit

ethtool_fec_caps_to_mcdi.exit:                    ; preds = %if.then15.i, %if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge, %cond.end.ethtool_fec_caps_to_mcdi.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cond.end.ethtool_fec_caps_to_mcdi.exit_crit_edge ], [ %ret.1.i, %if.end.i.ethtool_fec_caps_to_mcdi.exit_crit_edge ], [ %spec.select38.i, %if.then15.i ]
  %or = or i32 %retval.0.i, %cond
  %10 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_data, align 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i13 = lshr i32 %13, 5
  %and.lobit.i = and i32 %and.i13, 1
  %and3.i = lshr i32 %13, 2
  %phy_mode.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 94
  %14 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_mode.i, align 16
  %and15.i = and i32 %and.lobit.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %flags.0.i = select i1 %tobool16.not.i, i32 0, i32 4
  %16 = and i32 %15, %and3.i
  %and20.i = lshr i32 %16, 1
  %and20.lobit.i = and i32 %and20.i, 1
  %flags.1.i = or i32 %flags.0.i, %and20.lobit.i
  %loopback_mode = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 104
  %17 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %loopback_mode, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %20 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %inbuf.i, align 4
  %21 = shl nuw nsw i32 %flags.1.i, 24
  %and25.i = shl i32 %16, 23
  %22 = and i32 %and25.i, 33554432
  %23 = or i32 %22, %21
  %add.ptr11.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %24 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr11.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %add.ptr21.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %26 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr21.i, align 4
  %add.ptr31.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %27 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %add.ptr31.i, align 4
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 42, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_run_tests(ptr noundef %efx, ptr nocapture noundef writeonly %results, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @efx_mcdi_bist(ptr noundef %efx, i32 noundef 5, ptr noundef %results)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i32, ptr %results, i32 %call
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %results.addr.0 = phi ptr [ %add.ptr, %if.end ], [ %results, %entry.if.end3_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and5 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end21, label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %and8 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %and11 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool12.not
  %spec.select47 = select i1 %or.cond, i32 1, i32 2
  br label %if.then23

if.end21:                                         ; preds = %if.end3
  %and17 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end21.if.end29_crit_edge, label %if.end21.if.then23_crit_edge

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %if.end21.thread
  %mode.050 = phi i32 [ %spec.select47, %if.end21.thread ], [ 2, %if.end21.if.then23_crit_edge ]
  %call24 = tail call fastcc i32 @efx_mcdi_bist(ptr noundef %efx, i32 noundef %mode.050, ptr noundef %results.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then23.cleanup_crit_edge, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then23.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call, %if.then.cleanup_crit_edge ], [ %call24, %if.then23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_bist(ptr noundef %efx, i32 noundef %bist_mode, ptr nocapture noundef writeonly %results) unnamed_addr #0 align 64 {
entry:
  %outlen = alloca i32, align 4
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [9 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #10
  %0 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %outlen, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %outbuf) #10
  %1 = call ptr @memset(ptr %outbuf, i32 0, i32 36)
  %2 = tail call i32 @llvm.bswap.i32(i32 %bist_mode)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 37, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

entry.do.end9_crit_edge:                          ; preds = %entry
  br label %do.end9

do.end9:                                          ; preds = %if.end21.do.end9_crit_edge, %entry.do.end9_crit_edge
  %retry.073 = phi i32 [ %inc, %if.end21.do.end9_crit_edge ], [ 0, %entry.do.end9_crit_edge ]
  %call11 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 38, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 36, ptr noundef nonnull %outlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end9.out_crit_edge

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %do.end9
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp18.not = icmp eq i32 %5, 16777216
  br i1 %cmp18.not, label %if.end21, label %finished

if.end21:                                         ; preds = %if.end14
  call void @msleep(i32 noundef 100) #10
  %inc = add nuw nsw i32 %retry.073, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end21.out_crit_edge, label %if.end21.do.end9_crit_edge

if.end21.do.end9_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

finished:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %5)
  %cmp22 = icmp eq i32 %5, 33554432
  %cond = select i1 %cmp22, i32 1, i32 -1
  %6 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %results, align 4
  %phy_type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 90
  %7 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp26 = icmp eq i32 %8, 10
  %bist_mode.off = add i32 %bist_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bist_mode.off)
  %switch = icmp ult i32 %bist_mode.off, 2
  %or.cond = and i1 %switch, %cmp26
  br i1 %or.cond, label %if.then32, label %finished.out_crit_edge

finished.out_crit_edge:                           ; preds = %finished
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then32:                                        ; preds = %finished
  %add.ptr34 = getelementptr inbounds i8, ptr %outbuf, i32 4
  br i1 %cmp22, label %land.lhs.true37, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true37:                                  ; preds = %if.then32
  %9 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %10)
  %cmp38 = icmp ugt i32 %10, 35
  br i1 %cmp38, label %for.body44.preheader, label %land.lhs.true37.out_crit_edge

land.lhs.true37.out_crit_edge:                    ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body44.preheader:                             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr34, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %arrayidx49 = getelementptr i32, ptr %results, i32 1
  %14 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx49, align 4
  %arrayidx45.1 = getelementptr inbounds i8, ptr %outbuf, i32 8
  %15 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx45.1, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %arrayidx49.1 = getelementptr i32, ptr %results, i32 2
  %18 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx49.1, align 4
  %arrayidx45.2 = getelementptr inbounds i8, ptr %outbuf, i32 12
  %19 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx45.2, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx49.2 = getelementptr i32, ptr %results, i32 3
  %22 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx49.2, align 4
  %arrayidx45.3 = getelementptr inbounds i8, ptr %outbuf, i32 16
  %23 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx45.3, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %arrayidx49.3 = getelementptr i32, ptr %results, i32 4
  %26 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx49.3, align 4
  %arrayidx45.4 = getelementptr inbounds i8, ptr %outbuf, i32 20
  %27 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx45.4, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %arrayidx49.4 = getelementptr i32, ptr %results, i32 5
  %30 = ptrtoint ptr %arrayidx49.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx49.4, align 4
  %arrayidx45.5 = getelementptr inbounds i8, ptr %outbuf, i32 24
  %31 = ptrtoint ptr %arrayidx45.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx45.5, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %arrayidx49.5 = getelementptr i32, ptr %results, i32 6
  %34 = ptrtoint ptr %arrayidx49.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx49.5, align 4
  %arrayidx45.6 = getelementptr inbounds i8, ptr %outbuf, i32 28
  %35 = ptrtoint ptr %arrayidx45.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx45.6, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx49.6 = getelementptr i32, ptr %results, i32 7
  %38 = ptrtoint ptr %arrayidx49.6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx49.6, align 4
  %arrayidx45.7 = getelementptr inbounds i8, ptr %outbuf, i32 32
  %39 = ptrtoint ptr %arrayidx45.7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx45.7, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %arrayidx49.7 = getelementptr i32, ptr %results, i32 8
  %42 = ptrtoint ptr %arrayidx49.7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx49.7, align 4
  br label %out

out:                                              ; preds = %for.body44.preheader, %land.lhs.true37.out_crit_edge, %if.then32.out_crit_edge, %finished.out_crit_edge, %if.end21.out_crit_edge, %do.end9.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ 1, %finished.out_crit_edge ], [ 9, %land.lhs.true37.out_crit_edge ], [ 9, %if.then32.out_crit_edge ], [ 9, %for.body44.preheader ], [ -110, %if.end21.out_crit_edge ], [ %call11, %do.end9.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %outbuf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #10
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @efx_mcdi_phy_test_name(ptr nocapture noundef readonly %efx, i32 noundef %index) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %index, -1
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry.if.end2_crit_edge
  %index.addr.0 = phi i32 [ %dec, %if.end ], [ %index, %entry.if.end2_crit_edge ]
  %and4 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end2.cleanup_crit_edge, label %if.then6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.0)
  %cmp7 = icmp eq i32 %index.addr.0, 0
  br i1 %cmp7, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %dec10 = add i32 %index.addr.0, -1
  %phy_type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 90
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp11 = icmp eq i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dec10)
  %cmp13 = icmp ult i32 %dec10, 8
  %or.cond = and i1 %cmp13, %cmp11
  br i1 %or.cond, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [8 x ptr], ptr @mcdi_sft9001_cable_diag_names, i32 0, i32 %dec10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then14 ], [ @.str.4, %if.then.cleanup_crit_edge ], [ @.str.5, %if.then6.cleanup_crit_edge ], [ null, %if.end9.cleanup_crit_edge ], [ null, %if.end2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_get_module_eeprom(ptr noundef %efx, ptr nocapture noundef readonly %ee, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %outbuf.i = alloca [63 x %union.efx_dword], align 4
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  %outbuf.i.i.i54 = alloca [63 x %union.efx_dword], align 4
  %inbuf.i.i.i55 = alloca [1 x %union.efx_dword], align 4
  %outlen.i.i.i56 = alloca i32, align 4
  %outbuf.i.i.i = alloca [63 x %union.efx_dword], align 4
  %inbuf.i.i.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %phy_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %2 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1.i, align 16
  %media.i = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %media.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 7, label %if.end.i
    i32 5, label %entry.sw.bb_crit_edge
  ]

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  %7 = call ptr @memset(ptr %outbuf.i.i.i, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  %8 = ptrtoint ptr %outlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %outlen.i.i.i, align 4, !annotation !51
  %9 = ptrtoint ptr %inbuf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %inbuf.i.i.i, align 4
  %call.i.i.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 75, ptr noundef nonnull %inbuf.i.i.i, i32 noundef 4, ptr noundef nonnull %outbuf.i.i.i, i32 noundef 252, ptr noundef nonnull %outlen.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.i, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i
  %10 = ptrtoint ptr %outlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %11)
  %cmp7.i.i.i = icmp ult i32 %11, 132
  br i1 %cmp7.i.i.i, label %if.end6.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge, label %if.end10.i.i.i

if.end6.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i

if.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  %12 = ptrtoint ptr %outbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outbuf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %13)
  %cmp14.not.i.i.i = icmp eq i32 %13, -2147483648
  br i1 %cmp14.not.i.i.i, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i, label %if.end10.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge

if.end10.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i

efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr19.i.i.i = getelementptr inbounds i8, ptr %outbuf.i.i.i, i32 4
  %14 = ptrtoint ptr %add.ptr19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %data.i.0.copyload.i = load i8, ptr %add.ptr19.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  %phi.cast.i = zext i8 %data.i.0.copyload.i to i32
  br label %if.then.i.i

efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i: ; preds = %if.end10.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge, %if.end6.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  br label %cleanup

efx_mcdi_phy_get_module_eeprom_page.exit.i.i:     ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge

efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.i

efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i
  %data.i.09.i = phi i32 [ %phi.cast.i, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i ], [ 255, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge ]
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.i

efx_mcdi_phy_get_module_eeprom_byte.exit.i:       ; preds = %if.then.i.i, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %data.i.09.i, %if.then.i.i ], [ %call.i.i.i, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge ]
  %15 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %retval.0.i.i, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge [
    i32 3, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb_crit_edge
    i32 12, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge
    i32 13, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge108
  ]

efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge108: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf.i.i.i54) #10
  %16 = call ptr @memset(ptr %outbuf.i.i.i54, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i.i55) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i.i.i56) #10
  %17 = ptrtoint ptr %outlen.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %outlen.i.i.i56, align 4, !annotation !51
  %18 = ptrtoint ptr %inbuf.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %inbuf.i.i.i55, align 4
  %call.i.i.i57 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 75, ptr noundef nonnull %inbuf.i.i.i55, i32 noundef 4, ptr noundef nonnull %outbuf.i.i.i54, i32 noundef 252, ptr noundef nonnull %outlen.i.i.i56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i57)
  %tobool.not.i.i.i58 = icmp eq i32 %call.i.i.i57, 0
  br i1 %tobool.not.i.i.i58, label %if.end6.i.i.i60, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67

if.end6.i.i.i60:                                  ; preds = %sw.bb
  %19 = ptrtoint ptr %outlen.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outlen.i.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %20)
  %cmp7.i.i.i59 = icmp ult i32 %20, 132
  br i1 %cmp7.i.i.i59, label %if.end6.i.i.i60.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge, label %if.end10.i.i.i62

if.end6.i.i.i60.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge: ; preds = %if.end6.i.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_sff_8472_level.exit.thread

if.end10.i.i.i62:                                 ; preds = %if.end6.i.i.i60
  %21 = ptrtoint ptr %outbuf.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %outbuf.i.i.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %22)
  %cmp14.not.i.i.i61 = icmp eq i32 %22, -2147483648
  br i1 %cmp14.not.i.i.i61, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i65, label %if.end10.i.i.i62.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge

if.end10.i.i.i62.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge: ; preds = %if.end10.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_sff_8472_level.exit.thread

efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i65: ; preds = %if.end10.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr20.i.i.i = getelementptr inbounds i8, ptr %outbuf.i.i.i54, i32 98
  %23 = ptrtoint ptr %add.ptr20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %data.i.0.copyload.i63 = load i8, ptr %add.ptr20.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i56) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i55) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i54) #10
  %phi.cast.i64 = zext i8 %data.i.0.copyload.i63 to i32
  br label %if.then.i.i68

efx_mcdi_phy_sff_8472_level.exit.thread:          ; preds = %if.end10.i.i.i62.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge, %if.end6.i.i.i60.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i56) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i55) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i54) #10
  br label %sw.epilog

efx_mcdi_phy_get_module_eeprom_page.exit.i.i67:   ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i56) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i55) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i57)
  %cmp.i.i66 = icmp eq i32 %call.i.i.i57, 1
  br i1 %cmp.i.i66, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.if.then.i.i68_crit_edge, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.efx_mcdi_phy_sff_8472_level.exit_crit_edge

efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.efx_mcdi_phy_sff_8472_level.exit_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_sff_8472_level.exit

efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.if.then.i.i68_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i68

if.then.i.i68:                                    ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.if.then.i.i68_crit_edge, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i65
  %data.i.04.i = phi i32 [ %phi.cast.i64, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i65 ], [ 255, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.if.then.i.i68_crit_edge ]
  br label %efx_mcdi_phy_sff_8472_level.exit

efx_mcdi_phy_sff_8472_level.exit:                 ; preds = %if.then.i.i68, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.efx_mcdi_phy_sff_8472_level.exit_crit_edge
  %retval.0.i.i69 = phi i32 [ %data.i.04.i, %if.then.i.i68 ], [ %call.i.i.i57, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i67.efx_mcdi_phy_sff_8472_level.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i69)
  %cmp = icmp sgt i32 %retval.0.i.i69, 0
  %spec.select = select i1 %cmp, i32 4, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %efx_mcdi_phy_sff_8472_level.exit, %efx_mcdi_phy_sff_8472_level.exit.thread, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge108
  %ignore_missing.0.off0 = phi i1 [ false, %efx_mcdi_phy_sff_8472_level.exit.thread ], [ true, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge ], [ true, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge108 ], [ false, %efx_mcdi_phy_sff_8472_level.exit ]
  %num_pages.0 = phi i32 [ 2, %efx_mcdi_phy_sff_8472_level.exit.thread ], [ 5, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge ], [ 5, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge108 ], [ %spec.select, %efx_mcdi_phy_sff_8472_level.exit ]
  %page.0 = phi i32 [ 0, %efx_mcdi_phy_sff_8472_level.exit.thread ], [ -1, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge ], [ -1, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.epilog_crit_edge108 ], [ 0, %efx_mcdi_phy_sff_8472_level.exit ]
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %div52 = lshr i32 %25, 7
  %add = add nsw i32 %div52, %page.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not85 = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num_pages.0)
  %cmp486 = icmp slt i32 %add, %num_pages.0
  %or.cond87 = select i1 %tobool.not85, i1 %cmp486, i1 false
  br i1 %or.cond87, label %while.body.lr.ph, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %sw.epilog
  %rem = and i32 %25, 127
  %add.ptr19.i = getelementptr inbounds i8, ptr %outbuf.i, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %page.199 = phi i32 [ %add, %while.body.lr.ph ], [ %inc19, %if.end23.while.body_crit_edge ]
  %page_off.095 = phi i32 [ %rem, %while.body.lr.ph ], [ 0, %if.end23.while.body_crit_edge ]
  %space_remaining.092 = phi i32 [ %1, %while.body.lr.ph ], [ %space_remaining.2, %if.end23.while.body_crit_edge ]
  %data.addr.088 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr18, %if.end23.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf.i) #10
  %26 = call ptr @memset(ptr %outbuf.i, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #10
  %27 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %outlen.i, align 4, !annotation !51
  %sub.i = sub nuw nsw i32 128, %page_off.095
  %28 = call i32 @llvm.smin.i32(i32 %sub.i, i32 %space_remaining.092) #10
  %29 = call i32 @llvm.bswap.i32(i32 %page.199) #10
  %30 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %inbuf.i, align 4
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 75, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef 252, ptr noundef nonnull %outlen.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %while.body.efx_mcdi_phy_get_module_eeprom_page.exit_crit_edge

while.body.efx_mcdi_phy_get_module_eeprom_page.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_page.exit

if.end6.i:                                        ; preds = %while.body
  %31 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %32)
  %cmp7.i = icmp ult i32 %32, 132
  br i1 %cmp7.i, label %if.end6.i.if.else.thread_crit_edge, label %if.end10.i

if.end6.i.if.else.thread_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread

if.end10.i:                                       ; preds = %if.end6.i
  %33 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %outbuf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %34)
  %cmp14.not.i = icmp eq i32 %34, -2147483648
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end10.i.if.else.thread_crit_edge

if.end10.i.if.else.thread_crit_edge:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.thread

if.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr20.i = getelementptr i8, ptr %add.ptr19.i, i32 %page_off.095
  %35 = call ptr @memcpy(ptr %data.addr.088, ptr %add.ptr20.i, i32 %28)
  br label %efx_mcdi_phy_get_module_eeprom_page.exit

if.else.thread:                                   ; preds = %if.end10.i.if.else.thread_crit_edge, %if.end6.i.if.else.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i) #10
  br label %if.else9

efx_mcdi_phy_get_module_eeprom_page.exit:         ; preds = %if.end17.i, %while.body.efx_mcdi_phy_get_module_eeprom_page.exit_crit_edge
  %retval.0.i71 = phi i32 [ %28, %if.end17.i ], [ %call.i, %while.body.efx_mcdi_phy_get_module_eeprom_page.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i71)
  %cmp6 = icmp sgt i32 %retval.0.i71, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %space_remaining.092, %retval.0.i71
  br label %if.end23

if.else:                                          ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i71)
  %cmp7 = icmp eq i32 %retval.0.i71, 0
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.else.if.else9_crit_edge

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else9:                                         ; preds = %if.else.if.else9_crit_edge, %if.else.thread
  %retval.0.i718184 = phi i32 [ -5, %if.else.thread ], [ %retval.0.i71, %if.else.if.else9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page.199)
  %cmp11 = icmp sgt i32 %page.199, 0
  %or.cond53 = select i1 %ignore_missing.0.off0, i1 %cmp11, i1 false
  br i1 %or.cond53, label %if.then12, label %if.else9.cleanup_crit_edge

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.else9
  %sub14 = sub i32 %space_remaining.092, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp15 = icmp slt i32 %sub14, 0
  br i1 %cmp15, label %if.then12.cleanup_crit_edge, label %if.else17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %36 = call ptr @memset(ptr %data.addr.088, i32 0, i32 %sub.i)
  br label %if.end23

if.end23:                                         ; preds = %if.else17, %if.then
  %sub.i.sink = phi i32 [ %sub.i, %if.else17 ], [ %retval.0.i71, %if.then ]
  %space_remaining.2 = phi i32 [ %sub14, %if.else17 ], [ %sub, %if.then ]
  %add.ptr18 = getelementptr i8, ptr %data.addr.088, i32 %sub.i.sink
  %inc19 = add i32 %page.199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %space_remaining.2)
  %tobool.not = icmp ne i32 %space_remaining.2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19, i32 %num_pages.0)
  %cmp4 = icmp slt i32 %inc19, %num_pages.0
  %or.cond = select i1 %tobool.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.end23.while.body_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.else9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge, %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i ], [ -95, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %retval.0.i718184, %if.else9.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_phy_get_module_info(ptr noundef %efx, ptr nocapture noundef writeonly %modinfo) local_unnamed_addr #0 align 64 {
entry:
  %outbuf.i.i.i37 = alloca [63 x %union.efx_dword], align 4
  %inbuf.i.i.i38 = alloca [1 x %union.efx_dword], align 4
  %outlen.i.i.i39 = alloca i32, align 4
  %outbuf.i.i.i20 = alloca [63 x %union.efx_dword], align 4
  %inbuf.i.i.i21 = alloca [1 x %union.efx_dword], align 4
  %outlen.i.i.i22 = alloca i32, align 4
  %outbuf.i.i.i = alloca [63 x %union.efx_dword], align 4
  %inbuf.i.i.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %0 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1.i, align 16
  %media.i = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 7, label %if.end.i
    i32 5, label %entry.sw.bb_crit_edge
  ]

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  %5 = call ptr @memset(ptr %outbuf.i.i.i, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  %6 = ptrtoint ptr %outlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %outlen.i.i.i, align 4, !annotation !51
  %7 = ptrtoint ptr %inbuf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %inbuf.i.i.i, align 4
  %call.i.i.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 75, ptr noundef nonnull %inbuf.i.i.i, i32 noundef 4, ptr noundef nonnull %outbuf.i.i.i, i32 noundef 252, ptr noundef nonnull %outlen.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.i, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i
  %8 = ptrtoint ptr %outlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %9)
  %cmp7.i.i.i = icmp ult i32 %9, 132
  br i1 %cmp7.i.i.i, label %if.end6.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge, label %if.end10.i.i.i

if.end6.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i

if.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  %10 = ptrtoint ptr %outbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outbuf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %11)
  %cmp14.not.i.i.i = icmp eq i32 %11, -2147483648
  br i1 %cmp14.not.i.i.i, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i, label %if.end10.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge

if.end10.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i

efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr19.i.i.i = getelementptr inbounds i8, ptr %outbuf.i.i.i, i32 4
  %12 = ptrtoint ptr %add.ptr19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %data.i.0.copyload.i = load i8, ptr %add.ptr19.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  %phi.cast.i = zext i8 %data.i.0.copyload.i to i32
  br label %if.then.i.i

efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i: ; preds = %if.end10.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge, %if.end6.i.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  br label %cleanup

efx_mcdi_phy_get_module_eeprom_page.exit.i.i:     ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge

efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.i

efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i
  %data.i.09.i = phi i32 [ %phi.cast.i, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i ], [ 255, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.if.then.i.i_crit_edge ]
  br label %efx_mcdi_phy_get_module_eeprom_byte.exit.i

efx_mcdi_phy_get_module_eeprom_byte.exit.i:       ; preds = %if.then.i.i, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %data.i.09.i, %if.then.i.i ], [ %call.i.i.i, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i.efx_mcdi_phy_get_module_eeprom_byte.exit.i_crit_edge ]
  %13 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %retval.0.i.i, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge [
    i32 3, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb_crit_edge
    i32 12, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb8_crit_edge
    i32 13, label %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb8_crit_edge69
  ]

efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb8_crit_edge69: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb8_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf.i.i.i20) #10
  %14 = call ptr @memset(ptr %outbuf.i.i.i20, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i.i21) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i.i.i22) #10
  %15 = ptrtoint ptr %outlen.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %outlen.i.i.i22, align 4, !annotation !51
  %16 = ptrtoint ptr %inbuf.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %inbuf.i.i.i21, align 4
  %call.i.i.i23 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 75, ptr noundef nonnull %inbuf.i.i.i21, i32 noundef 4, ptr noundef nonnull %outbuf.i.i.i20, i32 noundef 252, ptr noundef nonnull %outlen.i.i.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i23)
  %tobool.not.i.i.i24 = icmp eq i32 %call.i.i.i23, 0
  br i1 %tobool.not.i.i.i24, label %if.end6.i.i.i26, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33

if.end6.i.i.i26:                                  ; preds = %sw.bb
  %17 = ptrtoint ptr %outlen.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %outlen.i.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %18)
  %cmp7.i.i.i25 = icmp ult i32 %18, 132
  br i1 %cmp7.i.i.i25, label %if.end6.i.i.i26.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge, label %if.end10.i.i.i28

if.end6.i.i.i26.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge: ; preds = %if.end6.i.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_sff_8472_level.exit.thread

if.end10.i.i.i28:                                 ; preds = %if.end6.i.i.i26
  %19 = ptrtoint ptr %outbuf.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outbuf.i.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %20)
  %cmp14.not.i.i.i27 = icmp eq i32 %20, -2147483648
  br i1 %cmp14.not.i.i.i27, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i31, label %if.end10.i.i.i28.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge

if.end10.i.i.i28.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge: ; preds = %if.end10.i.i.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_sff_8472_level.exit.thread

efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i31: ; preds = %if.end10.i.i.i28
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr20.i.i.i = getelementptr inbounds i8, ptr %outbuf.i.i.i20, i32 98
  %21 = ptrtoint ptr %add.ptr20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %data.i.0.copyload.i29 = load i8, ptr %add.ptr20.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i21) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i20) #10
  %phi.cast.i30 = zext i8 %data.i.0.copyload.i29 to i32
  br label %if.end

efx_mcdi_phy_sff_8472_level.exit.thread:          ; preds = %if.end10.i.i.i28.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge, %if.end6.i.i.i26.efx_mcdi_phy_sff_8472_level.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i21) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i20) #10
  br label %cleanup

efx_mcdi_phy_get_module_eeprom_page.exit.i.i33:   ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i21) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i23)
  %cmp = icmp slt i32 %call.i.i.i23, 0
  br i1 %cmp, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.cleanup_crit_edge, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.if.end_crit_edge

efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.if.end_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.cleanup_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.if.end_crit_edge, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i31
  %retval.0.i.i3567 = phi i32 [ %phi.cast.i30, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i31 ], [ 255, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %outbuf.i.i.i37) #10
  %22 = call ptr @memset(ptr %outbuf.i.i.i37, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i.i.i38) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i.i.i39) #10
  %23 = ptrtoint ptr %outlen.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %outlen.i.i.i39, align 4, !annotation !51
  %24 = ptrtoint ptr %inbuf.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %inbuf.i.i.i38, align 4
  %call.i.i.i40 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 75, ptr noundef nonnull %inbuf.i.i.i38, i32 noundef 4, ptr noundef nonnull %outbuf.i.i.i37, i32 noundef 252, ptr noundef nonnull %outlen.i.i.i39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i40)
  %tobool.not.i.i.i41 = icmp eq i32 %call.i.i.i40, 0
  br i1 %tobool.not.i.i.i41, label %if.end6.i.i.i43, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52

if.end6.i.i.i43:                                  ; preds = %if.end
  %25 = ptrtoint ptr %outlen.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %outlen.i.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %26)
  %cmp7.i.i.i42 = icmp ult i32 %26, 132
  br i1 %cmp7.i.i.i42, label %if.end6.i.i.i43.efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50_crit_edge, label %if.end10.i.i.i45

if.end6.i.i.i43.efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50_crit_edge: ; preds = %if.end6.i.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50

if.end10.i.i.i45:                                 ; preds = %if.end6.i.i.i43
  %27 = ptrtoint ptr %outbuf.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %outbuf.i.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %28)
  %cmp14.not.i.i.i44 = icmp eq i32 %28, -2147483648
  br i1 %cmp14.not.i.i.i44, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i49, label %if.end10.i.i.i45.efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50_crit_edge

if.end10.i.i.i45.efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50_crit_edge: ; preds = %if.end10.i.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50

efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i49: ; preds = %if.end10.i.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr20.i.i.i46 = getelementptr inbounds i8, ptr %outbuf.i.i.i37, i32 96
  %29 = ptrtoint ptr %add.ptr20.i.i.i46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %data.i.0.copyload.i47 = load i8, ptr %add.ptr20.i.i.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i39) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i38) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i37) #10
  %phi.cast.i48 = zext i8 %data.i.0.copyload.i47 to i32
  br label %if.then.i.i54

efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50: ; preds = %if.end10.i.i.i45.efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50_crit_edge, %if.end6.i.i.i43.efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i39) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i38) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i37) #10
  br label %efx_mcdi_phy_diag_type.exit

efx_mcdi_phy_get_module_eeprom_page.exit.i.i52:   ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i.i.i39) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i.i.i38) #10
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %outbuf.i.i.i37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i40)
  %cmp.i.i51 = icmp eq i32 %call.i.i.i40, 1
  br i1 %cmp.i.i51, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.if.then.i.i54_crit_edge, label %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.efx_mcdi_phy_diag_type.exit_crit_edge

efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.efx_mcdi_phy_diag_type.exit_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_diag_type.exit

efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.if.then.i.i54_crit_edge: ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i54

if.then.i.i54:                                    ; preds = %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.if.then.i.i54_crit_edge, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i49
  %data.i.04.i53 = phi i32 [ %phi.cast.i48, %efx_mcdi_phy_get_module_eeprom_page.exit.i.thread.i49 ], [ 255, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.if.then.i.i54_crit_edge ]
  br label %efx_mcdi_phy_diag_type.exit

efx_mcdi_phy_diag_type.exit:                      ; preds = %if.then.i.i54, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.efx_mcdi_phy_diag_type.exit_crit_edge, %efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50
  %retval.0.i.i55 = phi i32 [ %data.i.04.i53, %if.then.i.i54 ], [ %call.i.i.i40, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i52.efx_mcdi_phy_diag_type.exit_crit_edge ], [ -5, %efx_mcdi_phy_get_module_eeprom_page.exit.thread.i.i50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i3567)
  %cmp3 = icmp ne i32 %retval.0.i.i3567, 0
  %and = and i32 %retval.0.i.i55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp3, i1 %tobool.not, i1 false
  %type5 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  br i1 %or.cond, label %if.else, label %if.then4

if.then4:                                         ; preds = %efx_mcdi_phy_diag_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type5, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %31 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 256, ptr %eeprom_len, align 4
  br label %cleanup

if.else:                                          ; preds = %efx_mcdi_phy_diag_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %type5, align 4
  %eeprom_len6 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %33 = ptrtoint ptr %eeprom_len6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 512, ptr %eeprom_len6, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb8_crit_edge, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.sw.bb8_crit_edge69
  %type9 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %34 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %type9, align 4
  %eeprom_len10 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %35 = ptrtoint ptr %eeprom_len10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 256, ptr %eeprom_len10, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %if.else, %if.then4, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.cleanup_crit_edge, %efx_mcdi_phy_sff_8472_level.exit.thread, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge, %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.else ], [ 0, %sw.bb8 ], [ -95, %efx_mcdi_phy_sff_8472_level.exit.thread ], [ -95, %efx_mcdi_phy_get_module_eeprom_byte.exit.thread.i ], [ -95, %efx_mcdi_phy_get_module_eeprom_byte.exit.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %efx_mcdi_phy_get_module_eeprom_page.exit.i.i33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_set_mac(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %cmdbytes = alloca [7 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cmdbytes) #10
  %0 = getelementptr inbounds i8, ptr %cmdbytes, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %add.ptr = getelementptr inbounds i8, ptr %cmdbytes, i32 8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %cmdbytes, i32 12
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu.i, align 4
  %add4.i = add i32 %13, 45
  %and.i = and i32 %add4.i, -8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i)
  %15 = ptrtoint ptr %cmdbytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cmdbytes, align 4
  %add.ptr9 = getelementptr inbounds %union.efx_dword, ptr %cmdbytes, i32 1
  %16 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %add.ptr9, align 4
  %unicast_filter = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 99
  %17 = ptrtoint ptr %unicast_filter to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %unicast_filter, align 16, !range !53
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 24
  %add.ptr20 = getelementptr inbounds %union.efx_dword, ptr %cmdbytes, i32 4
  %21 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr20, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %features, align 16
  %sh.diff = lshr i64 %23, 19
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %24 = and i32 %tr.sh.diff, 16777216
  %add.ptr33 = getelementptr inbounds %union.efx_dword, ptr %cmdbytes, i32 6
  %25 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr33, align 4
  %wanted_fc = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %26 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wanted_fc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %switch.selectcmp = icmp eq i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %switch.selectcmp65 = icmp eq i8 %27, 3
  %28 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool42.not = icmp eq i8 %28, 0
  %fc_disable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 102
  %29 = ptrtoint ptr %fc_disable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fc_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool43.not = icmp eq i32 %30, 0
  %switch.select.op = select i1 %switch.selectcmp, i32 16777216, i32 0
  %switch.select66.op = select i1 %switch.selectcmp65, i32 33554432, i32 %switch.select.op
  %fcntl.1.op = select i1 %tobool42.not, i32 %switch.select66.op, i32 50331648
  %31 = select i1 %tobool43.not, i32 %fcntl.1.op, i32 0
  %add.ptr52 = getelementptr inbounds %union.efx_dword, ptr %cmdbytes, i32 5
  %32 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr52, align 4
  %call57 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 44, ptr noundef nonnull %cmdbytes, i32 noundef 28, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cmdbytes) #10
  ret i32 %call57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_set_mtu(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [8 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inbuf) #10
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu.i, align 4
  %add4.i = add i32 %5, 45
  %and.i = and i32 %add4.i, -8
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i)
  %7 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inbuf, align 4
  %add.ptr7 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 7
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %add.ptr7, align 4
  %call12 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 44, ptr noundef nonnull %inbuf, i32 noundef 32, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inbuf) #10
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mac_start_stats(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_buffer = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 86
  %0 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats_buffer, align 4
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %2 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_mac_stats, align 8
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr i64, ptr %1, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %arrayidx, align 8
  tail call fastcc void @efx_mcdi_mac_stats(ptr noundef %efx, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_mac_stats(ptr noundef %efx, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [5 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inbuf) #10
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cmp.not = icmp eq i32 %action, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp1 = icmp eq i32 %action, 0
  %cond4 = select i1 %cmp1, i32 65536000, i32 0
  %dma_addr5 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 86, i32 1
  %2 = ptrtoint ptr %dma_addr5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp6.not = icmp eq i32 %action, 1
  br i1 %cmp6.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %4 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_mac_stats, align 8
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond7 = phi i32 [ %mul, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %6 = tail call i32 @llvm.bswap.i32(i32 %3)
  %7 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inbuf, align 4
  %arrayidx25 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %8 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx25, align 4
  %conv34 = zext i1 %cmp1 to i32
  %shl38 = select i1 %cmp.not, i32 0, i32 4
  %shl41 = select i1 %cmp1, i32 8, i32 0
  %or40 = or i32 %shl38, %conv34
  %or43 = or i32 %or40, %shl41
  %or45 = or i32 %or43, %cond4
  %or48 = or i32 %or45, 32
  %9 = tail call i32 @llvm.bswap.i32(i32 %or48)
  %add.ptr51 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %10 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr51, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %cond7)
  %add.ptr61 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %12 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr61, align 4
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %14, i32 0, i32 118
  %15 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp65 = icmp sgt i32 %16, 3
  br i1 %cmp65, label %do.body67, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body67:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 66
  %17 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vport_id, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %add.ptr73 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 4
  %20 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr73, align 4
  br label %if.end

if.end:                                           ; preds = %do.body67, %cond.end.if.end_crit_edge
  %call78 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 46, ptr noundef nonnull %inbuf, i32 noundef 20, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  %21 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call78, label %if.end.if.then84_crit_edge [
    i32 0, label %if.end.if.end85_crit_edge
    i32 -2, label %lor.lhs.false
  ]

if.end.if.end85_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.end.if.then84_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

lor.lhs.false:                                    ; preds = %if.end
  %active_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues, i32 noundef 4) #10
  %22 = ptrtoint ptr %active_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %active_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool83.not = icmp eq i32 %23, 0
  br i1 %tobool83.not, label %lor.lhs.false.if.end85_crit_edge, label %lor.lhs.false.if.then84_crit_edge

lor.lhs.false.if.then84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

lor.lhs.false.if.end85_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then84:                                        ; preds = %lor.lhs.false.if.then84_crit_edge, %if.end.if.then84_crit_edge
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 46, i32 noundef 20, ptr noundef null, i32 noundef 0, i32 noundef %call78) #10
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %lor.lhs.false.if.end85_crit_edge, %if.end.if.end85_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inbuf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mac_stop_stats(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @efx_mcdi_mac_stats(ptr noundef %efx, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mac_pull_stats(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_buffer = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 86
  %0 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats_buffer, align 4
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %2 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_mac_stats, align 8
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr i64, ptr %1, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %arrayidx, align 8
  tail call fastcc void @efx_mcdi_mac_stats(ptr noundef %efx, i32 noundef 2)
  %5 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_mac_stats, align 8
  %conv212 = zext i16 %6 to i32
  %sub313 = add nsw i32 %conv212, -1
  %arrayidx414 = getelementptr i64, ptr %1, i32 %sub313
  %7 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx414, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp15.not = icmp eq i64 %8, -1
  br i1 %cmp15.not, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %attempts.016 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 10, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %attempts.016, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #10
  %10 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_mac_stats, align 8
  %conv2 = zext i16 %11 to i32
  %sub3 = add nsw i32 %conv2, -1
  %arrayidx4 = getelementptr i64, ptr %1, i32 %sub3
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp = icmp ne i64 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_mac_init_stats(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_mac_stats = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 85
  %0 = ptrtoint ptr %num_mac_stats to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_mac_stats, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_buffer = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 86
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call = tail call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %stats_buffer, i32 noundef %mul, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %msg_enable9 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable9, align 4
  %and10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool2.not, label %do.body8, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %call) #13
  br label %cleanup

do.body8:                                         ; preds = %if.end
  br i1 %tobool11.not, label %do.body8.cleanup_crit_edge, label %do.body13

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_mac_init_stats.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_mac_init_stats, %if.then18)) #10
          to label %cleanup [label %if.then18], !srcloc !54

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev19 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev19, align 4
  %dma_addr = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 86, i32 1
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 4
  %conv21 = zext i32 %9 to i64
  %10 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats_buffer, align 4
  %12 = ptrtoint ptr %11 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %12) #10
  %conv26 = zext i32 %call.i to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_mac_init_stats.__UNIQUE_ID_ddebug566, ptr noundef %7, ptr noundef nonnull @.str.9, i64 noundef %conv21, ptr noundef %11, i64 noundef %conv26) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body13, %do.body8.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then5 ], [ %call, %do.body.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %do.body8.cleanup_crit_edge ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mac_fini_stats(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_buffer = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 86
  tail call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %stats_buffer) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_port_get_number(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #10
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 184, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %outbuf, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_process_link_change(ptr noundef %efx, ptr nocapture noundef readonly %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ev, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %2, 16
  %and = and i32 %shr, 15
  %arrayidx1 = getelementptr [8 x i32], ptr @efx_mcdi_event_link_speed, i32 0, i32 %and
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %shr3 = lshr i32 %2, 24
  %shr7 = lshr i32 %2, 20
  %and9 = and i32 %shr7, 15
  %link_state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97
  %5 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and9, label %do.end31.i [
    i32 3, label %do.end.i
    i32 2, label %entry.efx_mcdi_phy_decode_link.exit_crit_edge
    i32 1, label %sw.bb17.i
    i32 0, label %entry.sw.bb45.i_crit_edge
  ]

entry.sw.bb45.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45.i

entry.efx_mcdi_phy_decode_link.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_decode_link.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 9, ptr noundef null) #10
  br label %efx_mcdi_phy_decode_link.exit

sw.bb17.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_decode_link.exit

do.end31.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 9, ptr noundef null) #10
  br label %sw.bb45.i

sw.bb45.i:                                        ; preds = %do.end31.i, %entry.sw.bb45.i_crit_edge
  br label %efx_mcdi_phy_decode_link.exit

efx_mcdi_phy_decode_link.exit:                    ; preds = %sw.bb45.i, %sw.bb17.i, %do.end.i, %entry.efx_mcdi_phy_decode_link.exit_crit_edge
  %.sink.i = phi i8 [ 0, %sw.bb45.i ], [ 2, %sw.bb17.i ], [ 7, %do.end.i ], [ 3, %entry.efx_mcdi_phy_decode_link.exit_crit_edge ]
  %fc46.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 2
  %6 = ptrtoint ptr %fc46.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink.i, ptr %fc46.i, align 2
  %7 = trunc i32 %shr3 to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %link_state, align 4
  %fd.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 1
  %10 = lshr i8 %7, 1
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %fd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %fd.i, align 1
  %speed59.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97, i32 3
  %13 = ptrtoint ptr %speed59.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %4, ptr %speed59.i, align 4
  %phy_data.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 91
  %14 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_data.i, align 16
  %supported_cap.i = getelementptr inbounds %struct.efx_mcdi_phy_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %supported_cap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %supported_cap.i, align 4
  %neg.i = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool.not.not.i = icmp eq i32 %neg.i, 0
  br i1 %tobool.not.not.i, label %efx_mcdi_phy_decode_link.exit.efx_mcdi_phy_check_fcntl.exit_crit_edge, label %if.end.i

efx_mcdi_phy_decode_link.exit.efx_mcdi_phy_check_fcntl.exit_crit_edge: ; preds = %efx_mcdi_phy_decode_link.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_check_fcntl.exit

if.end.i:                                         ; preds = %efx_mcdi_phy_decode_link.exit
  %wanted_fc.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 101
  %18 = ptrtoint ptr %wanted_fc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wanted_fc.i, align 8
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.not.i = icmp eq i8 %20, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.efx_mcdi_phy_check_fcntl.exit_crit_edge

if.end.i.efx_mcdi_phy_check_fcntl.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_check_fcntl.exit

if.end4.i:                                        ; preds = %if.end.i
  %21 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool17.not.i = icmp ne i8 %21, 0
  %22 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %22)
  %cmp.i = icmp eq i32 %22, 512
  %or.cond.i = and i1 %cmp.i, %tobool17.not.i
  br i1 %or.cond.i, label %do.body.i, label %if.end4.i.efx_mcdi_phy_check_fcntl.exit_crit_edge

if.end4.i.efx_mcdi_phy_check_fcntl.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_check_fcntl.exit

do.body.i:                                        ; preds = %if.end4.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %23 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable.i, align 4
  %and20.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body.i.efx_mcdi_phy_check_fcntl.exit_crit_edge, label %if.then22.i

do.body.i.efx_mcdi_phy_check_fcntl.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %efx_mcdi_phy_check_fcntl.exit

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %25 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.2) #13
  br label %efx_mcdi_phy_check_fcntl.exit

efx_mcdi_phy_check_fcntl.exit:                    ; preds = %if.then22.i, %do.body.i.efx_mcdi_phy_check_fcntl.exit_crit_edge, %if.end4.i.efx_mcdi_phy_check_fcntl.exit_crit_edge, %if.end.i.efx_mcdi_phy_check_fcntl.exit_crit_edge, %efx_mcdi_phy_decode_link.exit.efx_mcdi_phy_check_fcntl.exit_crit_edge
  tail call void @efx_link_status_changed(ptr noundef %efx) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_link_status_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_display_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 51, i32 2}
!2 = !{ptr @__func__.efx_mcdi_get_phy_cfg, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.efx_mcdi_loopback_modes, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 108, i32 2}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 287, i32 3}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 396, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 652, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 859, i32 11}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 866, i32 11}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 1237, i32 3}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 1242, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @efx_mcdi_mac_init_stats.__UNIQUE_ID_ddebug566, !18, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 744, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 745, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 746, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 747, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 748, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 749, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 750, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 751, i32 2}
!38 = !{ptr @mcdi_sft9001_cable_diag_names, !39, !"mcdi_sft9001_cable_diag_names", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 743, i32 26}
!40 = !{ptr @efx_mcdi_event_link_speed, !41, !"efx_mcdi_event_link_speed", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/mcdi_port_common.c", i32 1270, i32 21}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i8 0, i8 2}
!54 = !{i64 2149143523, i64 2149143528, i64 2149143541, i64 2149143585, i64 2149143619, i64 2149143640}
