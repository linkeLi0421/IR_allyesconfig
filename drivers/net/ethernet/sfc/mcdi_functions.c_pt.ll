; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/mcdi_functions.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/mcdi_functions.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%union.efx_dword = type { [1 x i32] }
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
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@efx_mcdi_alloc_vis.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_mcdi_alloc_vis\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/sfc/mcdi_functions.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"base VI is A0x%03x\0A\00", [44 x i8] zeroinitializer }, align 32
@efx_mcdi_ev_init.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_mcdi_ev_init\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Channel %d using event queue flags %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@efx_mcdi_tx_init.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_mcdi_tx_init\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pushing TXQ %d. %zu entries (%llx)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"TSOv2 context not available to segment in hardware. TCP performance may be reduced.\0A\00", [43 x i8] zeroinitializer }, align 32
@efx_mcdi_rx_init.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_mcdi_rx_init\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pushing RXQ %d. %zu entries (%llx)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"netdevice: %s%s: failed to initialise RXQ %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to flush %d queues\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unrecognised VI window mode %d\0A\00", [32 x i8] zeroinitializer }, align 32
@efx_mcdi_window_mode_to_stride.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efx_mcdi_window_mode_to_stride\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vi_stride = %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@switch.table.efx_mcdi_rx_init = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [40 x i8] zeroinitializer }, align 32
@switch.table.efx_mcdi_window_mode_to_stride = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8192, i32 16384, i32 65536], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 53, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 127, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 187, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 223, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 311, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 322, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 384, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 406, i32 3 }
@___asan_gen_.76 = private constant [45 x i8] c"../drivers/net/ethernet/sfc/mcdi_functions.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 411, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4963, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4975, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4976, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4977, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4978, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4979, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4980, i32 28 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4983, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 4984, i32 9 }
@___asan_gen_.108 = private unnamed_addr constant [30 x i8] c"switch.table.efx_mcdi_rx_init\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [44 x i8] c"switch.table.efx_mcdi_window_mode_to_stride\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.efx_mcdi_rx_init, ptr @switch.table.efx_mcdi_window_mode_to_stride], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_mcdi_rx_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_mcdi_window_mode_to_stride to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_free_vis(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #6
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #6
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !59
  %call = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 140, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %call)
  %cmp = icmp eq i32 %call, -114
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then1

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 140, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef %3, i32 noundef %spec.store.select) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %entry.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #6
  ret i32 %spec.store.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_display_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_alloc_vis(ptr noundef %efx, i32 noundef %min_vis, i32 noundef %max_vis, ptr noundef writeonly %vi_base, ptr noundef writeonly %allocated_vis) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %inbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #6
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #6
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !59
  %2 = tail call i32 @llvm.bswap.i32(i32 %min_vis)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %max_vis)
  %add.ptr8 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %5 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %add.ptr8, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 139, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp15 = icmp ult i32 %7, 8
  br i1 %cmp15, label %if.end.cleanup_crit_edge, label %do.body19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body19:                                        ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body19.do.end36_crit_edge, label %do.body21

do.body19.do.end36_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

do.body21:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_alloc_vis.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_alloc_vis, %if.then26)) #6
          to label %do.end36 [label %if.then26], !srcloc !60

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %add.ptr28 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %12 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr28, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_alloc_vis.__UNIQUE_ID_ddebug524, ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %14) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then26, %do.body21, %do.body19.do.end36_crit_edge
  %tobool37.not = icmp eq ptr %vi_base, null
  br i1 %tobool37.not, label %do.end36.if.end44_crit_edge, label %if.then38

do.end36.if.end44_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then38:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr40 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %15 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr40, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %vi_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vi_base, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %do.end36.if.end44_crit_edge
  %tobool45.not = icmp eq ptr %allocated_vis, null
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.then46

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outbuf, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %allocated_vis to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %allocated_vis, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_ev_probe(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %eventq_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventq_mask, align 8
  %add = shl i32 %3, 3
  %mul = add i32 %add, 8
  %call = tail call i32 @efx_nic_alloc_buffer(ptr noundef %1, ptr noundef %eventq, i32 noundef %mul, i32 noundef 3264) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_ev_init(ptr nocapture noundef readonly %channel, i1 noundef zeroext %v1_cut_thru, i1 noundef zeroext %v2) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [73 x %union.efx_dword], align 4
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 292, ptr nonnull %inbuf) #6
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 36
  %1 = call ptr @memset(ptr %0, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #6
  %2 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %outbuf, align 8
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  %len = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %div180 = lshr i32 %4, 12
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #6
  %7 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %outlen, align 4, !annotation !59
  %8 = ptrtoint ptr %eventq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eventq, align 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 %4)
  %eventq_mask = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 11
  %11 = ptrtoint ptr %eventq_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eventq_mask, align 8
  %add = add i32 %12, 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %add)
  %14 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %inbuf, align 4
  %channel10 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %15 = ptrtoint ptr %channel10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel10, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add.ptr16 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %18 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr16, align 4
  %add.ptr27 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 6
  %19 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %add.ptr27, align 4
  %add.ptr33 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 5
  %20 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %add.ptr33, align 4
  %add.ptr39 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %21 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %add.ptr39, align 4
  %add.ptr45 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %22 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %add.ptr45, align 4
  %add.ptr51 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 7
  %23 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %add.ptr51, align 4
  %add.ptr57 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 8
  %24 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %add.ptr57, align 4
  %conv72 = select i1 %v1_cut_thru, i32 956301312, i32 822083584
  %spec.select = select i1 %v2, i32 -2130640896, i32 %conv72
  %25 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %4)
  %cmp182.not = icmp ult i32 %4, 4096
  br i1 %cmp182.not, label %entry.for.end_crit_edge, label %do.body83.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body83.lr.ph:                                  ; preds = %entry
  %dma_addr80 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10, i32 0, i32 1
  %27 = ptrtoint ptr %dma_addr80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_addr80, align 4
  %add.ptr85 = getelementptr inbounds i8, ptr %inbuf, i32 36
  %umax = call i32 @llvm.umax.i32(i32 %div180, i32 1)
  br label %do.body83

do.body83:                                        ; preds = %do.body83.do.body83_crit_edge, %do.body83.lr.ph
  %i.0184 = phi i32 [ 0, %do.body83.lr.ph ], [ %inc, %do.body83.do.body83_crit_edge ]
  %dma_addr.0183 = phi i32 [ %28, %do.body83.lr.ph ], [ %add130, %do.body83.do.body83_crit_edge ]
  %mul = shl i32 %i.0184, 3
  %add.ptr86 = getelementptr i8, ptr %add.ptr85, i32 %mul
  %29 = tail call i32 @llvm.bswap.i32(i32 %dma_addr.0183)
  %30 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %add.ptr86, align 4
  %arrayidx109 = getelementptr %union.efx_dword, ptr %add.ptr86, i32 1
  %31 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx109, align 4
  %add130 = add i32 %dma_addr.0183, 4096
  %inc = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body83.for.end_crit_edge, label %do.body83.do.body83_crit_edge

do.body83.do.body83_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83

do.body83.for.end_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.body83.for.end_crit_edge, %entry.for.end_crit_edge
  %mul131 = shl nuw nsw i32 %div180, 3
  %add132 = add nuw nsw i32 %mul131, 36
  %call = call i32 @efx_mcdi_rpc(ptr noundef %6, i32 noundef 128, ptr noundef nonnull %inbuf, i32 noundef %add132, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #6
  %32 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp135 = icmp ugt i32 %33, 7
  br i1 %cmp135, label %do.body138, label %for.end.if.end161_crit_edge

for.end.if.end161_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

do.body138:                                       ; preds = %for.end
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %6, i32 0, i32 22
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and139 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.if.end161_crit_edge, label %do.body142

do.body138.if.end161_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

do.body142:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_ev_init.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_ev_init, %if.then148)) #6
          to label %if.end161 [label %if.then148], !srcloc !60

if.then148:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %6, i32 0, i32 83
  %36 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev, align 4
  %38 = ptrtoint ptr %channel10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel10, align 4
  %add.ptr151 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %40 = ptrtoint ptr %add.ptr151 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr151, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_ev_init.__UNIQUE_ID_ddebug525, ptr noundef %37, ptr noundef nonnull @.str.5, i32 noundef %39, i32 noundef %42) #6
  br label %if.end161

if.end161:                                        ; preds = %if.then148, %do.body142, %do.body138.if.end161_crit_edge, %for.end.if.end161_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #6
  call void @llvm.lifetime.end.p0(i64 292, ptr nonnull %inbuf) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_ev_remove(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %eventq = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 10
  tail call void @efx_nic_free_buffer(ptr noundef %1, ptr noundef %eventq) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_ev_fini(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #6
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #6
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !59
  %channel2 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc_quiet(ptr noundef %2, i32 noundef 131, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #6
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %fail [
    i32 0, label %entry.cleanup_crit_edge
    i32 -114, label %entry.cleanup_crit_edge16
  ]

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outlen, align 4
  call void @efx_mcdi_display_error(ptr noundef %2, i32 noundef 131, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef %10, i32 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_tx_init(ptr nocapture noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [23 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %inbuf) #6
  %0 = getelementptr inbounds i8, ptr %inbuf, i32 28
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and2 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp ne i32 %and2, 0
  %len = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 8
  %div251 = lshr i32 %5, 12
  %channel5 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %6 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel5, align 8
  %8 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_queue, align 128
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %10 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ptr_mask, align 4
  %add = add i32 %11, 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %add)
  %13 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %inbuf, align 4
  %channel12 = getelementptr inbounds %struct.efx_channel, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %add.ptr18 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %17 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %add.ptr18, align 4
  %label = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 2
  %18 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %label, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add.ptr28 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %21 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr28, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queue, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr38 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %25 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr38, align 4
  %add.ptr44 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 5
  %26 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %add.ptr44, align 4
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 66
  %27 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vport_id, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %add.ptr54 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 6
  %30 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %add.ptr54, align 4
  %dma_addr60 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10, i32 0, i32 1
  %31 = ptrtoint ptr %dma_addr60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr60, align 4
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 22
  %33 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable, align 4
  %and62 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %entry.do.end76_crit_edge, label %do.body64

entry.do.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

do.body64:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_tx_init.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_tx_init, %if.then69)) #6
          to label %do.end76 [label %if.then69], !srcloc !60

if.then69:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 83
  %35 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net_dev, align 4
  %37 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %queue, align 4
  %conv71 = zext i32 %32 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_tx_init.__UNIQUE_ID_ddebug527, ptr noundef %36, ptr noundef nonnull @.str.7, i32 noundef %38, i32 noundef %div251, i64 noundef %conv71) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %do.body64, %entry.do.end76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp257.not = icmp ult i32 %5, 4096
  br i1 %cmp257.not, label %do.end76.for.end_crit_edge, label %do.body79.lr.ph

do.end76.for.end_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body79.lr.ph:                                  ; preds = %do.end76
  %add.ptr81 = getelementptr inbounds i8, ptr %inbuf, i32 28
  %umax = call i32 @llvm.umax.i32(i32 %div251, i32 1)
  br label %do.body79

do.body79:                                        ; preds = %do.body79.do.body79_crit_edge, %do.body79.lr.ph
  %i.0259 = phi i32 [ 0, %do.body79.lr.ph ], [ %inc, %do.body79.do.body79_crit_edge ]
  %dma_addr.0258 = phi i32 [ %32, %do.body79.lr.ph ], [ %add127, %do.body79.do.body79_crit_edge ]
  %mul = shl i32 %i.0259, 3
  %add.ptr82 = getelementptr i8, ptr %add.ptr81, i32 %mul
  %39 = tail call i32 @llvm.bswap.i32(i32 %dma_addr.0258)
  %40 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %add.ptr82, align 4
  %arrayidx106 = getelementptr %union.efx_dword, ptr %add.ptr82, i32 1
  %41 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx106, align 4
  %add127 = add i32 %dma_addr.0258, 4096
  %inc = add nuw nsw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body79.for.end_crit_edge, label %do.body79.do.body79_crit_edge

do.body79.do.body79_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79

do.body79.for.end_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.body79.for.end_crit_edge, %do.end76.for.end_crit_edge
  %mul128 = shl nuw nsw i32 %div251, 3
  %add129 = add nuw nsw i32 %mul128, 28
  %tso_version = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %42 = shl nuw nsw i32 %and, 2
  %timestamping = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 15
  %shl171 = shl nuw nsw i32 %and2, 10
  %add.ptr176 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 4
  %net_dev193 = getelementptr inbounds %struct.efx_nic, ptr %9, i32 0, i32 83
  br label %do.body130

do.body130:                                       ; preds = %do.body130.backedge, %for.end
  %43 = ptrtoint ptr %tso_version to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tso_version, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp131 = icmp eq i32 %44, 2
  %shl = select i1 %cmp131, i32 4096, i32 0
  %spec.select = select i1 %tobool.not, i1 %cmp131, i1 false
  %conv146 = select i1 %spec.select, i32 0, i32 2
  %or147 = or i32 %shl, %conv146
  %45 = or i32 %or147, %42
  %46 = ptrtoint ptr %timestamping to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %timestamping, align 1, !range !61
  %48 = zext i8 %47 to i32
  %shl156 = shl nuw nsw i32 %48, 8
  %49 = or i32 %45, %shl156
  %lnot163 = xor i1 %cmp131, true
  %50 = select i1 %tobool3.not, i1 %lnot163, i1 false
  %conv167 = select i1 %50, i32 1024, i32 0
  %51 = or i32 %49, %conv167
  %52 = or i32 %51, %shl171
  %or173 = xor i32 %52, 4
  %53 = call i32 @llvm.bswap.i32(i32 %or173)
  %54 = ptrtoint ptr %add.ptr176 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %add.ptr176, align 4
  %call181 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %9, i32 noundef 130, ptr noundef nonnull %inbuf, i32 noundef %add129, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call181)
  %cmp182 = icmp ne i32 %call181, -28
  %brmerge = select i1 %cmp182, i1 true, i1 %lnot163
  br i1 %brmerge, label %if.else, label %if.then186

if.then186:                                       ; preds = %do.body130
  %55 = ptrtoint ptr %tso_version to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %tso_version, align 16
  %56 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable, align 4
  %and190 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.then186.do.body130.backedge_crit_edge, label %if.then192

if.then186.do.body130.backedge_crit_edge:         ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body130.backedge

do.body130.backedge:                              ; preds = %if.then192, %if.then186.do.body130.backedge_crit_edge
  br label %do.body130

if.then192:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %net_dev193 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev193, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %59, ptr noundef nonnull @.str.8) #9
  br label %do.body130.backedge

if.else:                                          ; preds = %do.body130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool197.not = icmp eq i32 %call181, 0
  br i1 %tobool197.not, label %if.else.cleanup204_crit_edge, label %cleanup

if.else.cleanup204_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup204

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @efx_mcdi_display_error(ptr noundef %9, i32 noundef 130, i32 noundef 544, ptr noundef null, i32 noundef 0, i32 noundef %call181) #6
  br label %cleanup204

cleanup204:                                       ; preds = %cleanup, %if.else.cleanup204_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %inbuf) #6
  ret i32 %call181
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_tx_remove(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %txd = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 10
  tail call void @efx_nic_free_buffer(ptr noundef %1, ptr noundef %txd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_tx_fini(ptr nocapture noundef readonly %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #6
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  %1 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_queue, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #6
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !59
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inbuf, align 4
  %call = call i32 @efx_mcdi_rpc_quiet(ptr noundef %2, i32 noundef 133, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #6
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call, label %fail [
    i32 0, label %entry.cleanup_crit_edge
    i32 -114, label %entry.cleanup_crit_edge15
  ]

entry.cleanup_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outlen, align 4
  call void @efx_mcdi_display_error(ptr noundef %2, i32 noundef 133, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef %10, i32 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rx_probe(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %rxd = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %2 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask, align 32
  %add = shl i32 %3, 3
  %mul = add i32 %add, 8
  %call = tail call i32 @efx_nic_alloc_buffer(ptr noundef %1, ptr noundef %rxd, i32 noundef %mul, i32 noundef 3264) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_rx_init(ptr nocapture noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [141 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %div204 = lshr i32 %1, 12
  call void @llvm.lifetime.start.p0(i64 564, ptr nonnull %inbuf) #6
  %2 = getelementptr inbounds i8, ptr %inbuf, i32 28
  %3 = call ptr @memset(ptr %2, i32 0, i32 532)
  %4 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_queue, align 128
  %scatter_n = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 10
  %6 = ptrtoint ptr %scatter_n to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %scatter_n, align 4
  %scatter_len = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 11
  %7 = ptrtoint ptr %scatter_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %scatter_len, align 8
  %type = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %revision = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 118
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %revision, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp = icmp eq i32 %11, 5
  br i1 %cmp, label %if.then, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_page_buf_step = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 56
  %12 = ptrtoint ptr %rx_page_buf_step to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_page_buf_step, align 32
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %buffer_size.0 = phi i32 [ %13, %if.then ], [ 0, %entry.do.body2_crit_edge ]
  %ptr_mask = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 4
  %14 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptr_mask, align 32
  %add = add i32 %15, 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %add)
  %17 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %inbuf, align 4
  %channel7 = getelementptr i8, ptr %rx_queue, i32 -508
  %18 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel7, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add.ptr13 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %21 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr13, align 4
  %add.ptr24 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %22 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %add.ptr24, align 4
  %add.ptr35 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %23 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %add.ptr35, align 4
  %add.ptr41 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 4
  %24 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 67174400, ptr %add.ptr41, align 4
  %add.ptr47 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 5
  %25 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %add.ptr47, align 4
  %vport_id = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 66
  %26 = ptrtoint ptr %vport_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vport_id, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %add.ptr57 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 6
  %29 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr57, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %buffer_size.0)
  %add.ptr67 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 140
  %31 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr67, align 4
  %dma_addr73 = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %dma_addr73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr73, align 4
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 22
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2.do.end89_crit_edge, label %do.body76

do.body2.do.end89_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end89

do.body76:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_rx_init.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_rx_init, %if.then81)) #6
          to label %do.end89 [label %if.then81], !srcloc !60

if.then81:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %36 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev, align 4
  %38 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel7, align 4
  %conv83 = zext i32 %33 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_rx_init.__UNIQUE_ID_ddebug529, ptr noundef %37, ptr noundef nonnull @.str.10, i32 noundef %39, i32 noundef %div204, i64 noundef %conv83) #6
  br label %do.end89

do.end89:                                         ; preds = %if.then81, %do.body76, %do.body2.do.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp90211.not = icmp ult i32 %1, 4096
  br i1 %cmp90211.not, label %do.end89.for.end_crit_edge, label %do.body93.lr.ph

do.end89.for.end_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body93.lr.ph:                                  ; preds = %do.end89
  %add.ptr95 = getelementptr inbounds i8, ptr %inbuf, i32 28
  %umax = call i32 @llvm.umax.i32(i32 %div204, i32 1)
  br label %do.body93

do.body93:                                        ; preds = %do.body93.do.body93_crit_edge, %do.body93.lr.ph
  %i.0213 = phi i32 [ 0, %do.body93.lr.ph ], [ %inc, %do.body93.do.body93_crit_edge ]
  %dma_addr.0212 = phi i32 [ %33, %do.body93.lr.ph ], [ %add141, %do.body93.do.body93_crit_edge ]
  %mul = shl i32 %i.0213, 3
  %add.ptr96 = getelementptr i8, ptr %add.ptr95, i32 %mul
  %40 = tail call i32 @llvm.bswap.i32(i32 %dma_addr.0212)
  %41 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %add.ptr96, align 4
  %arrayidx120 = getelementptr %union.efx_dword, ptr %add.ptr96, i32 1
  %42 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx120, align 4
  %add141 = add i32 %dma_addr.0212, 4096
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body93.for.end_crit_edge, label %do.body93.do.body93_crit_edge

do.body93.do.body93_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93

do.body93.for.end_crit_edge:                      ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.body93.for.end_crit_edge, %do.end89.for.end_crit_edge
  %call143 = call i32 @efx_mcdi_rpc(ptr noundef %5, i32 noundef 129, ptr noundef nonnull %inbuf, i32 noundef 564, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %for.end.if.end176_crit_edge, label %do.end157

for.end.if.end176_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

do.end157:                                        ; preds = %for.end
  %net_dev158 = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %43 = ptrtoint ptr %net_dev158 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_dev158, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %do.end157.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end157.netdev_name.exit_crit_edge:             ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call ptr @strchr(ptr noundef %44, i32 noundef 37) #6
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %44, ptr @.str.16
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end157.netdev_name.exit_crit_edge
  %retval.0.i207 = phi ptr [ @.str.16, %do.end157.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 121
  %47 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i)
  %48 = icmp ult i8 %bf.load45.i, 6
  br i1 %48, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.netdev_reg_state.exit_crit_edge, label %if.then.i, !prof !62

land.end.i.netdev_reg_state.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_reg_state.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %44, i32 noundef %bf.cast21.i) #6
  br label %netdev_reg_state.exit

switch.lookup:                                    ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %49 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.efx_mcdi_rx_init, i32 0, i32 %49
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit

netdev_reg_state.exit:                            ; preds = %switch.lookup, %if.then.i, %land.end.i.netdev_reg_state.exit_crit_edge
  %retval.0.i208 = phi ptr [ @.str.25, %if.then.i ], [ @.str.25, %land.end.i.netdev_reg_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %51 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channel7, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i207, ptr noundef nonnull %retval.0.i208, i32 noundef %52) #6
  br label %if.end176

if.end176:                                        ; preds = %netdev_reg_state.exit, %for.end.if.end176_crit_edge
  call void @llvm.lifetime.end.p0(i64 564, ptr nonnull %inbuf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_rx_remove(ptr noundef %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_queue, align 128
  %rxd = getelementptr inbounds %struct.efx_rx_queue, ptr %rx_queue, i32 0, i32 3
  tail call void @efx_nic_free_buffer(ptr noundef %1, ptr noundef %rxd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_rx_fini(ptr nocapture noundef readonly %rx_queue) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #6
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  %1 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_queue, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #6
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !59
  %channel.i = getelementptr i8, ptr %rx_queue, i32 -508
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inbuf, align 4
  %call5 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %2, i32 noundef 132, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #6
  %8 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call5, label %fail [
    i32 0, label %entry.cleanup_crit_edge
    i32 -114, label %entry.cleanup_crit_edge16
  ]

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outlen, align 4
  call void @efx_mcdi_display_error(ptr noundef %2, i32 noundef 132, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef %10, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_fini_dmaq(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i127 = alloca [1 x %union.efx_dword], align 4
  %outbuf.i128 = alloca [2 x %union.efx_dword], align 8
  %outlen.i129 = alloca i32, align 4
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %outlen.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %must_realloc_vis = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 69
  %0 = ptrtoint ptr %must_realloc_vis to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %must_realloc_vis, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %active_queues = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #6
  %2 = ptrtoint ptr %active_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %active_queues, align 4
  br label %cleanup88

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %if.end.cleanup88_crit_edge, label %if.then1

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then1:                                         ; preds = %if.end
  %channel2 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %5 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel2, align 8
  %tobool3.not147 = icmp eq ptr %6, null
  br i1 %tobool3.not147, label %if.then1.for.end30_crit_edge, label %for.body.lr.ph

if.then1.for.end30_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body.lr.ph:                                   ; preds = %if.then1
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.0148 = phi ptr [ %6, %for.body.lr.ph ], [ %52, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0148, i32 0, i32 45, i32 1
  %7 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp sgt i32 %8, -1
  br i1 %cmp.i, label %if.else, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else:                                          ; preds = %for.body
  %rx_queue5 = getelementptr inbounds %struct.efx_channel, ptr %channel.0148, i32 0, i32 45
  %tobool7.not134 = icmp eq ptr %rx_queue5, null
  br i1 %tobool7.not134, label %if.else.if.end9_crit_edge, label %for.body8

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.body8:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #6
  %9 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %outbuf.i, align 8
  %10 = ptrtoint ptr %rx_queue5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_queue5, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #6
  %12 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %outlen.i, align 4, !annotation !59
  %channel.i.i = getelementptr %struct.efx_channel, ptr %channel.0148, i32 0, i32 1
  %13 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel.i.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %inbuf.i, align 4
  %call5.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %11, i32 noundef 132, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef nonnull %outlen.i) #6
  %17 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call5.i, label %fail.i [
    i32 0, label %for.body8.efx_mcdi_rx_fini.exit_crit_edge
    i32 -114, label %for.body8.efx_mcdi_rx_fini.exit_crit_edge161
  ]

for.body8.efx_mcdi_rx_fini.exit_crit_edge161:     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %efx_mcdi_rx_fini.exit

for.body8.efx_mcdi_rx_fini.exit_crit_edge:        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %efx_mcdi_rx_fini.exit

fail.i:                                           ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outlen.i, align 4
  call void @efx_mcdi_display_error(ptr noundef %11, i32 noundef 132, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef %19, i32 noundef %call5.i) #6
  br label %efx_mcdi_rx_fini.exit

efx_mcdi_rx_fini.exit:                            ; preds = %fail.i, %for.body8.efx_mcdi_rx_fini.exit_crit_edge, %for.body8.efx_mcdi_rx_fini.exit_crit_edge161
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #6
  br label %if.end9

if.end9:                                          ; preds = %efx_mcdi_rx_fini.exit, %if.else.if.end9_crit_edge, %for.body.if.end9_crit_edge
  %tx_queue13 = getelementptr inbounds %struct.efx_channel, ptr %channel.0148, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0148, i32 0, i32 1
  %20 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel1.i.i, align 4
  %22 = ptrtoint ptr %channel.0148 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel.0148, align 128
  %xdp_channel_offset.i.i136 = getelementptr inbounds %struct.efx_nic, ptr %23, i32 0, i32 50
  %24 = ptrtoint ptr %xdp_channel_offset.i.i136 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xdp_channel_offset.i.i136, align 8
  %sub.i.i137 = sub i32 %21, %25
  %n_xdp_channels.i.i138 = getelementptr inbounds %struct.efx_nic, ptr %23, i32 0, i32 49
  %26 = ptrtoint ptr %n_xdp_channels.i.i138 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_xdp_channels.i.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i137, i32 %27)
  %cmp.i.i139 = icmp ult i32 %sub.i.i137, %27
  %xdp_tx_per_channel.i140 = getelementptr inbounds %struct.efx_nic, ptr %23, i32 0, i32 51
  %tx_queues_per_channel.i141 = getelementptr inbounds %struct.efx_nic, ptr %23, i32 0, i32 48
  %retval.0.in.i142 = select i1 %cmp.i.i139, ptr %xdp_tx_per_channel.i140, ptr %tx_queues_per_channel.i141
  %28 = ptrtoint ptr %retval.0.in.i142 to i32
  call void @__asan_load4_noabort(i32 %28)
  %retval.0.i143 = load i32, ptr %retval.0.in.i142, align 4
  %add.ptr144 = getelementptr %struct.efx_tx_queue, ptr %tx_queue13, i32 %retval.0.i143
  %cmp18145 = icmp ult ptr %tx_queue13, %add.ptr144
  br i1 %cmp18145, label %if.end9.for.body19_crit_edge, label %if.end9.for.inc23_crit_edge

if.end9.for.inc23_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc23

if.end9.for.body19_crit_edge:                     ; preds = %if.end9
  br label %for.body19

for.body19:                                       ; preds = %efx_mcdi_tx_fini.exit.for.body19_crit_edge, %if.end9.for.body19_crit_edge
  %tx_queue.0146 = phi ptr [ %incdec.ptr, %efx_mcdi_tx_fini.exit.for.body19_crit_edge ], [ %tx_queue13, %if.end9.for.body19_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i127) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i128) #6
  %29 = ptrtoint ptr %outbuf.i128 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %outbuf.i128, align 8
  %30 = ptrtoint ptr %tx_queue.0146 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_queue.0146, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i129) #6
  %32 = ptrtoint ptr %outlen.i129 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %outlen.i129, align 4, !annotation !59
  %queue.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.0146, i32 0, i32 1
  %33 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %queue.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = ptrtoint ptr %inbuf.i127 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %inbuf.i127, align 4
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %31, i32 noundef 133, ptr noundef nonnull %inbuf.i127, i32 noundef 4, ptr noundef nonnull %outbuf.i128, i32 noundef 8, ptr noundef nonnull %outlen.i129) #6
  %37 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call.i, label %fail.i130 [
    i32 0, label %for.body19.efx_mcdi_tx_fini.exit_crit_edge
    i32 -114, label %for.body19.efx_mcdi_tx_fini.exit_crit_edge162
  ]

for.body19.efx_mcdi_tx_fini.exit_crit_edge162:    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %efx_mcdi_tx_fini.exit

for.body19.efx_mcdi_tx_fini.exit_crit_edge:       ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %efx_mcdi_tx_fini.exit

fail.i130:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %outlen.i129 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %outlen.i129, align 4
  call void @efx_mcdi_display_error(ptr noundef %31, i32 noundef 133, i32 noundef 4, ptr noundef nonnull %outbuf.i128, i32 noundef %39, i32 noundef %call.i) #6
  br label %efx_mcdi_tx_fini.exit

efx_mcdi_tx_fini.exit:                            ; preds = %fail.i130, %for.body19.efx_mcdi_tx_fini.exit_crit_edge, %for.body19.efx_mcdi_tx_fini.exit_crit_edge162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i129) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i128) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i127) #6
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0146, i32 1
  %40 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel1.i.i, align 4
  %42 = ptrtoint ptr %channel.0148 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channel.0148, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 50
  %44 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %41, %45
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 49
  %46 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %47)
  %cmp.i.i = icmp ult i32 %sub.i.i, %47
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %43, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %48 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue13, i32 %retval.0.i
  %cmp18 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp18, label %efx_mcdi_tx_fini.exit.for.body19_crit_edge, label %efx_mcdi_tx_fini.exit.for.inc23_crit_edge

efx_mcdi_tx_fini.exit.for.inc23_crit_edge:        ; preds = %efx_mcdi_tx_fini.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc23

efx_mcdi_tx_fini.exit.for.body19_crit_edge:       ; preds = %efx_mcdi_tx_fini.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

for.inc23:                                        ; preds = %efx_mcdi_tx_fini.exit.for.inc23_crit_edge, %if.end9.for.inc23_crit_edge
  %.lcssa = phi i32 [ %21, %if.end9.for.inc23_crit_edge ], [ %41, %efx_mcdi_tx_fini.exit.for.inc23_crit_edge ]
  %add = add i32 %.lcssa, 1
  %49 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %50)
  %cmp25 = icmp ult i32 %add, %50
  br i1 %cmp25, label %cond.end, label %for.inc23.for.end30_crit_edge

for.inc23.for.end30_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

cond.end:                                         ; preds = %for.inc23
  %arrayidx29 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %51 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx29, align 4
  %tobool3.not = icmp eq ptr %52, null
  br i1 %tobool3.not, label %cond.end.for.end30_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end.for.end30_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.end30:                                        ; preds = %cond.end.for.end30_crit_edge, %for.inc23.for.end30_crit_edge, %if.then1.for.end30_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 381) #6
  %active_queues35 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 116
  %call.i.i124 = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues35, i32 noundef 4) #6
  %53 = ptrtoint ptr %active_queues35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %active_queues35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp37 = icmp eq i32 %54, 0
  br i1 %cmp37, label %for.end30.if.end74_crit_edge, label %if.then45

for.end30.if.end74_crit_edge:                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then45:                                        ; preds = %for.end30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %55 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %flush_wq = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 119
  %call49149 = call i32 @prepare_to_wait_event(ptr noundef %flush_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call.i.i125150 = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues35, i32 noundef 4) #6
  %56 = ptrtoint ptr %active_queues35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %active_queues35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp53151 = icmp eq i32 %57, 0
  br i1 %cmp53151, label %if.then45.for.end71_crit_edge, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  br label %cleanup

if.then45.for.end71_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end71

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then45.cleanup_crit_edge
  %__ret46.1152 = phi i32 [ %__ret46.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then45.cleanup_crit_edge ]
  %call70 = call i32 @schedule_timeout(i32 noundef %__ret46.1152) #6
  %call49 = call i32 @prepare_to_wait_event(ptr noundef %flush_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call.i.i125 = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues35, i32 noundef 4) #6
  %58 = ptrtoint ptr %active_queues35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %active_queues35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp53 = icmp eq i32 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool57.not = icmp eq i32 %call70, 0
  %60 = select i1 %cmp53, i1 %tobool57.not, i1 false
  %__ret46.1 = select i1 %60, i32 1, i32 %call70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret46.1)
  %tobool63.not = icmp eq i32 %__ret46.1, 0
  %61 = select i1 %cmp53, i1 true, i1 %tobool63.not
  br i1 %61, label %cleanup.for.end71_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end71_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end71

for.end71:                                        ; preds = %cleanup.for.end71_crit_edge, %if.then45.for.end71_crit_edge
  call void @finish_wait(ptr noundef %flush_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end74

if.end74:                                         ; preds = %for.end71, %for.end30.if.end74_crit_edge
  %call.i.i126 = call zeroext i1 @__kasan_check_read(ptr noundef %active_queues35, i32 noundef 4) #6
  %62 = ptrtoint ptr %active_queues35 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %active_queues35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool78.not = icmp eq i32 %63, 0
  br i1 %tobool78.not, label %if.end74.cleanup88_crit_edge, label %do.body80

if.end74.cleanup88_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

do.body80:                                        ; preds = %if.end74
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %64 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable, align 4
  %and = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool81.not = icmp eq i32 %and, 0
  br i1 %tobool81.not, label %do.body80.cleanup88_crit_edge, label %if.then82

do.body80.cleanup88_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.then82:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %66 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.12, i32 noundef %63) #9
  br label %cleanup88

cleanup88:                                        ; preds = %if.then82, %do.body80.cleanup88_crit_edge, %if.end74.cleanup88_crit_edge, %if.end.cleanup88_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -110, %if.then82 ], [ -110, %do.body80.cleanup88_crit_edge ], [ 0, %if.end74.cleanup88_crit_edge ], [ 0, %if.end.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_window_mode_to_stride(ptr nocapture noundef %efx, i8 noundef zeroext %vi_window_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %vi_window_mode to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %vi_window_mode)
  %0 = icmp ult i8 %vi_window_mode, 3
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %1 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %3 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %conv) #9
  br label %return

switch.lookup:                                    ; preds = %entry
  %5 = sext i8 %vi_window_mode to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.efx_mcdi_window_mode_to_stride, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %vi_stride = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 14
  %7 = ptrtoint ptr %vi_stride to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %vi_stride, align 128
  %msg_enable7 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable7, align 4
  %and8 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %switch.lookup.return_crit_edge, label %do.body11

switch.lookup.return_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body11:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_window_mode_to_stride.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_window_mode_to_stride, %if.then15)) #6
          to label %return [label %if.then15], !srcloc !60

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %net_dev16 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev16, align 4
  %vi_stride17 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 14
  %12 = ptrtoint ptr %vi_stride17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vi_stride17, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_window_mode_to_stride.__UNIQUE_ID_ddebug530, ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %13) #6
  br label %return

return:                                           ; preds = %if.then15, %do.body11, %switch.lookup.return_crit_edge, %if.then, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -5, %do.body.return_crit_edge ], [ -5, %if.then ], [ 0, %switch.lookup.return_crit_edge ], [ 0, %if.then15 ], [ 0, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_get_pf_index(ptr noundef %efx, ptr nocapture noundef writeonly %pf_index) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #6
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #6
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !59
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 236, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 8
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %pf_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pf_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 53, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efx_mcdi_alloc_vis.__UNIQUE_ID_ddebug524, !1, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 127, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @efx_mcdi_ev_init.__UNIQUE_ID_ddebug525, !7, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 187, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @efx_mcdi_tx_init.__UNIQUE_ID_ddebug527, !11, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 223, i32 4}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 311, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @efx_mcdi_rx_init.__UNIQUE_ID_ddebug529, !17, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 322, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 384, i32 4}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 406, i32 3}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/mcdi_functions.c", i32 411, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @efx_mcdi_window_mode_to_stride.__UNIQUE_ID_ddebug530, !27, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i64 2149115402, i64 2149115407, i64 2149115420, i64 2149115464, i64 2149115498, i64 2149115519}
!61 = !{i8 0, i8 2}
!62 = !{!"branch_weights", i32 2000, i32 1}
