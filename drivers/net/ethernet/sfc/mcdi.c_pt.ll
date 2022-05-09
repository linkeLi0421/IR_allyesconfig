; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/mcdi.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/mcdi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.efx_mcdi_iface = type { ptr, i32, i32, %struct.wait_queue_head, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.timer_list, ptr, i8, i32, i32, %struct.wait_queue_head }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.efx_mcdi_data = type { %struct.efx_mcdi_iface, %struct.efx_mcdi_mon, i32 }
%struct.efx_mcdi_mon = type { %struct.efx_buffer, %struct.mutex, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%union.efx_dword = type { [1 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.efx_mcdi_async_param = type { %struct.list_head, i32, i32, i32, i8, ptr, i32 }
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
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.131 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.131 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.efx_mtd_partition = type { %struct.list_head, %struct.mtd_info, ptr, ptr, [36 x i8] }
%struct.efx_mcdi_mtd_partition = type { %struct.efx_mtd_partition, i8, i16, i16 }

@__param_str_mcdi_logging_default = internal constant [25 x i8] c"sfc.mcdi_logging_default\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@mcdi_logging_default = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_mcdi_logging_default = internal constant %struct.kernel_param { ptr @__param_str_mcdi_logging_default, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @mcdi_logging_default } }, section "__param", align 4
@__UNIQUE_ID_mcdi_logging_defaulttype524 = internal constant [39 x i8] c"sfc.parmtype=mcdi_logging_default:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mcdi_logging_default525 = internal constant [76 x i8] c"sfc.parm=mcdi_logging_default:Enable MCDI logging on newly-probed functions\00", section ".modinfo", align 1
@efx_mcdi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mcdi->wq\00", [22 x i8] zeroinitializer }, align 32
@efx_mcdi_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&mcdi->proxy_rx_wq\00", [45 x i8] zeroinitializer }, align 32
@efx_mcdi_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mcdi->iface_lock\00", [46 x i8] zeroinitializer }, align 32
@efx_mcdi_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mcdi->async_lock\00", [46 x i8] zeroinitializer }, align 32
@efx_mcdi_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&mcdi->async_timer)\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to register driver with MCPU\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Host already registered with MCPU\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_mcdi_display_error.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efx_mcdi_display_error\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ethernet/sfc/mcdi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"MC command 0x%x inlen %zu failed rc=%d (raw=%d) arg=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MC watchdog or assertion failure at 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MCDI PM event.\0A\00", [16 x i8] zeroinitializer }, align 32
@efx_mcdi_process_event.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.13, ptr @.str.18, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efx_mcdi_process_event\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MC Scheduler alert (0x%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MC Reboot\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MC entered BIST mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s DMA error (event: %08x:%08x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown MCDI event %08x:%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u.%u.%u\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: failed rc=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_print_fwver = private unnamed_addr constant [21 x i8] c"efx_mcdi_print_fwver\00", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed rc=%d len=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_get_board_cfg = private unnamed_addr constant [23 x i8] c"efx_mcdi_get_board_cfg\00", align 1
@__func__.efx_mcdi_nvram_types = private unnamed_addr constant [21 x i8] c"efx_mcdi_nvram_types\00", align 1
@__func__.efx_mcdi_nvram_info = private unnamed_addr constant [20 x i8] c"efx_mcdi_nvram_info\00", align 1
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: failed type=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_nvram_test_all = private unnamed_addr constant [24 x i8] c"efx_mcdi_nvram_test_all\00", align 1
@__func__.efx_mcdi_wol_filter_get_magic = private unnamed_addr constant [30 x i8] c"efx_mcdi_wol_filter_get_magic\00", align 1
@efx_mcdi_get_workarounds.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.26, i8 2, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efx_mcdi_get_workarounds\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s:%02x\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@_efx_mcdi_rpc_evb_retry.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.31, ptr @.str.13, ptr @.str.32, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_efx_mcdi_rpc_evb_retry\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: NO_EVB_PORT; will retry request\0A\00", [59 x i8] zeroinitializer }, align 32
@_efx_mcdi_rpc.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.33, ptr @.str.13, ptr @.str.34, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_efx_mcdi_rpc\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MCDI waiting for proxy auth %d\0A\00", [32 x i8] zeroinitializer }, align 32
@_efx_mcdi_rpc.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.33, ptr @.str.13, ptr @.str.35, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MCDI proxy retry %d\0A\00", [43 x i8] zeroinitializer }, align 32
@_efx_mcdi_rpc.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.33, ptr @.str.13, ptr @.str.36, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MC command 0x%x failed after proxy auth rc=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@efx_mcdi_proxy_wait.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.37, ptr @.str.13, ptr @.str.38, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efx_mcdi_proxy_wait\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MCDI proxy timeout %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"MCDI proxy unexpected handle %d (expected %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@efx_mcdi_send_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_mcdi_send_request.__already_done.41 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %08x\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MCDI RPC REQ:%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MC command 0x%x inlen %d mode %d timed out\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCDI request was completed without an event\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MC reboot detected\0A\00", [44 x i8] zeroinitializer }, align 32
@_efx_mcdi_rpc_finish.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.47, ptr @.str.13, ptr @.str.48, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_efx_mcdi_rpc_finish\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MC rebooted during command %d rc %d\0A\00", [59 x i8] zeroinitializer }, align 32
@efx_mcdi_read_response_header.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_mcdi_read_response_header.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MCDI RPC RESP:%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MC rebooted\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MC response mismatch tx seq 0x%x rx seq 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@efx_mcdi_abandon.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.53, ptr @.str.13, ptr @.str.54, i8 1, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efx_mcdi_abandon\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MCDI is timing out; trying to recover\0A\00", [57 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@efx_mcdi_drv_attach.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.55, ptr @.str.13, ptr @.str.56, i8 1, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efx_mcdi_drv_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"efx_mcdi_drv_attach with fw-variant setting failed EPERM, trying without it\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"system-level assertion\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"thread-level assertion\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"watchdog reset\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown assertion\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MCPU %s at PC = 0x%.8x in thread 0x%.8x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"R%.2d (?): 0x%.8x\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.efx_mcdi_wol_filter_set = private unnamed_addr constant [24 x i8] c"efx_mcdi_wol_filter_set\00", align 1
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"NVRAM update failed verification with code 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown response to NVRAM_UPDATE_FINISH\0A\00", [55 x i8] zeroinitializer }, align 32
@switch.table.efx_mcdi_mtd_sync = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 -5, i32 -22, i32 -5, i32 -22, i32 -5, i32 -1, i32 -5, i32 -1, i32 -5, i32 -1], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967291, i64 4294967292, i64 4294967295]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967291, i64 4294967292, i64 4294967295]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 16777216, i64 33554432, i64 50331648]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [22 x i64] [i64 20, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 21, i64 25, i64 26, i64 29]
@__sancov_gen_cov_switch_values.70 = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 2, i64 4, i64 11, i64 13, i64 16, i64 22, i64 28, i64 35, i64 38, i64 62, i64 95, i64 114]
@__sancov_gen_cov_switch_values.71 = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 2, i64 4, i64 11, i64 13, i64 16, i64 22, i64 28, i64 35, i64 38, i64 62, i64 95, i64 114]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1280, i64 65535]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.76 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 4, i64 11, i64 13, i64 16, i64 22, i64 28, i64 35, i64 38, i64 62, i64 95, i64 114, i64 4096, i64 4105]
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"mcdi_logging_default\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 55, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 80, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 81, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 82, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 85, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 87, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 102, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 108, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1092, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1320, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1326, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1343, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1348, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1352, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1386, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1398, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1430, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1450, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1571, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1763, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 2128, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 2371, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 880, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 830, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 836, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 847, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 789, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 793, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 216, i32 9 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 224, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 667, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 672, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 723, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 724, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 318, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 324, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 327, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1298, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1474, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1813, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1815, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1817, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1818, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1819, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1828, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 2234, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [35 x i8] c"../drivers/net/ethernet/sfc/mcdi.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 2257, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"switch.table.efx_mcdi_mtd_sync\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_mcdi_logging_default525, ptr @__UNIQUE_ID_mcdi_logging_defaulttype524, ptr @__param_mcdi_logging_default, ptr @mcdi_logging_default, ptr @efx_mcdi_init.__key, ptr @.str, ptr @efx_mcdi_init.__key.1, ptr @.str.2, ptr @efx_mcdi_init.__key.3, ptr @.str.4, ptr @efx_mcdi_init.__key.5, ptr @.str.6, ptr @efx_mcdi_init.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @switch.table.efx_mcdi_mtd_sync], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcdi_logging_default to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_mcdi_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efx_mcdi_mtd_sync to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_init(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %already_attached = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %already_attached) #11
  %0 = ptrtoint ptr %already_attached to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %already_attached, align 1, !annotation !158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 456) #14
  %mcdi1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %2 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %mcdi1, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %efx, ptr %call7.i.i, align 8
  %call5 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %4 = inttoptr i32 %call5 to ptr
  %logging_buffer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %logging_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %logging_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end.fail1_crit_edge, label %if.end9

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail1

if.end9:                                          ; preds = %if.end
  %6 = load i8, ptr @mcdi_logging_default, align 1, !range !159
  %logging_enabled = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %logging_enabled, align 8
  %wq = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str, ptr noundef nonnull @efx_mcdi_init.__key) #11
  %proxy_rx_wq = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %proxy_rx_wq, ptr noundef nonnull @.str.2, ptr noundef nonnull @efx_mcdi_init.__key.1) #11
  %iface_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %iface_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @efx_mcdi_init.__key.3, i16 noundef signext 3) #11
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mode, align 8
  %async_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %async_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @efx_mcdi_init.__key.5, i16 noundef signext 3) #11
  %async_list = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %async_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %async_list, ptr %async_list, align 4
  %prev.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %async_list, ptr %prev.i, align 8
  %async_timer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %async_timer, ptr noundef nonnull @efx_mcdi_timeout_async, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @efx_mcdi_init.__key.7) #11
  %12 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcdi1, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end9.efx_mcdi_poll_reboot.exit_crit_edge, label %if.end.i

if.end9.efx_mcdi_poll_reboot.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_poll_reboot.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %mcdi_poll_reboot.i = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 41
  %16 = ptrtoint ptr %mcdi_poll_reboot.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcdi_poll_reboot.i, align 4
  %call.i = tail call i32 %17(ptr noundef %efx) #11
  br label %efx_mcdi_poll_reboot.exit

efx_mcdi_poll_reboot.exit:                        ; preds = %if.end.i, %if.end9.efx_mcdi_poll_reboot.exit_crit_edge
  %new_epoch = getelementptr inbounds %struct.efx_mcdi_iface, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %new_epoch to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %new_epoch, align 4
  %call26 = tail call i32 @efx_mcdi_handle_assertion(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %efx_mcdi_poll_reboot.exit.fail2_crit_edge

efx_mcdi_poll_reboot.exit.fail2_crit_edge:        ; preds = %efx_mcdi_poll_reboot.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail2

if.end29:                                         ; preds = %efx_mcdi_poll_reboot.exit
  %call30 = call fastcc i32 @efx_mcdi_drv_attach(ptr noundef %efx, i1 noundef zeroext true, ptr noundef nonnull %already_attached)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end39, label %do.body33

do.body33:                                        ; preds = %if.end29
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.body33.fail2_crit_edge, label %if.then35

do.body33.fail2_crit_edge:                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail2

if.then35:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.9) #15
  br label %fail2

if.end39:                                         ; preds = %if.end29
  %23 = ptrtoint ptr %already_attached to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %already_attached, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool40.not = icmp eq i8 %24, 0
  br i1 %tobool40.not, label %if.end39.if.end51_crit_edge, label %do.body42

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

do.body42:                                        ; preds = %if.end39
  %msg_enable43 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %25 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable43, align 4
  %and44 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.if.end51_crit_edge, label %if.then46

do.body42.if.end51_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev47 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %27 = ptrtoint ptr %net_dev47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev47, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.10) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %do.body42.if.end51_crit_edge, %if.end39.if.end51_crit_edge
  %29 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mcdi1, align 4
  %fn_flags = getelementptr inbounds %struct.efx_mcdi_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fn_flags, align 4
  %and53 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %primary = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 2
  %33 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %efx, ptr %primary, align 8
  br label %cleanup

fail2:                                            ; preds = %if.then35, %do.body33.fail2_crit_edge, %efx_mcdi_poll_reboot.exit.fail2_crit_edge
  %rc.0 = phi i32 [ %call26, %efx_mcdi_poll_reboot.exit.fail2_crit_edge ], [ %call30, %if.then35 ], [ %call30, %do.body33.fail2_crit_edge ]
  %34 = ptrtoint ptr %logging_buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %logging_buffer, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @free_pages(i32 noundef %36, i32 noundef 0) #11
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %rc.1 = phi i32 [ %rc.0, %fail2 ], [ -12, %if.end.fail1_crit_edge ]
  %37 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mcdi1, align 4
  call void @kfree(ptr noundef %38) #11
  %39 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %mcdi1, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.then55, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ], [ %rc.1, %fail1 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %already_attached) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_mcdi_timeout_async(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -188
  %call = tail call fastcc zeroext i1 @efx_mcdi_complete_async(ptr noundef %add.ptr, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_poll_reboot(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %mcdi_poll_reboot = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %mcdi_poll_reboot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcdi_poll_reboot, align 4
  %call = tail call i32 %5(ptr noundef %efx) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_handle_assertion(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  %outbuf.i = alloca [35 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #11
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %outbuf.i) #11
  %0 = call ptr @memset(ptr %outbuf.i, i32 0, i32 140)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #11
  %1 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen.i, align 4, !annotation !158
  %2 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %inbuf.i, align 4
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 6, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef 140, ptr noundef nonnull %outlen.i, i1 noundef zeroext true) #11
  %3 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %entry.if.then9.i_crit_edge [
    i32 -1, label %entry.efx_mcdi_read_assertion.exit.thread_crit_edge
    i32 -4, label %entry.land.rhs.i_crit_edge
    i32 -5, label %entry.land.rhs.i_crit_edge9
    i32 0, label %entry.if.end11.i_crit_edge
  ]

entry.if.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

entry.land.rhs.i_crit_edge9:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

entry.efx_mcdi_read_assertion.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_read_assertion.exit.thread

entry.if.then9.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

land.rhs.i:                                       ; preds = %entry.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge9
  %4 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %inbuf.i, align 4
  %call.i.1.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 6, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef 140, ptr noundef nonnull %outlen.i, i1 noundef zeroext true) #11
  %5 = zext i32 %call.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call.i.1.i, label %land.rhs.i.if.then9.i_crit_edge [
    i32 -1, label %land.rhs.i.efx_mcdi_read_assertion.exit.thread_crit_edge
    i32 -4, label %land.rhs.i.land.rhs.1.i_crit_edge
    i32 -5, label %land.rhs.i.land.rhs.1.i_crit_edge10
    i32 0, label %land.rhs.i.if.end11.i_crit_edge
  ]

land.rhs.i.if.end11.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

land.rhs.i.land.rhs.1.i_crit_edge10:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.1.i

land.rhs.i.land.rhs.1.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.1.i

land.rhs.i.efx_mcdi_read_assertion.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_read_assertion.exit.thread

land.rhs.i.if.then9.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

land.rhs.1.i:                                     ; preds = %land.rhs.i.land.rhs.1.i_crit_edge, %land.rhs.i.land.rhs.1.i_crit_edge10
  %6 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %inbuf.i, align 4
  %call.i.2.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 6, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef 140, ptr noundef nonnull %outlen.i, i1 noundef zeroext true) #11
  %7 = zext i32 %call.i.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call.i.2.i, label %land.rhs.1.i.if.then9.i_crit_edge [
    i32 -1, label %land.rhs.1.i.efx_mcdi_read_assertion.exit.thread_crit_edge
    i32 0, label %land.rhs.1.i.if.end11.i_crit_edge
  ]

land.rhs.1.i.if.end11.i_crit_edge:                ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

land.rhs.1.i.efx_mcdi_read_assertion.exit.thread_crit_edge: ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_read_assertion.exit.thread

land.rhs.1.i.if.then9.i_crit_edge:                ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %land.rhs.1.i.if.then9.i_crit_edge, %land.rhs.i.if.then9.i_crit_edge, %entry.if.then9.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %entry.if.then9.i_crit_edge ], [ %call.i.1.i, %land.rhs.i.if.then9.i_crit_edge ], [ %call.i.2.i, %land.rhs.1.i.if.then9.i_crit_edge ]
  %8 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i.i = icmp ugt i32 %9, 3
  br i1 %cmp.i.i, label %if.end.i.i, label %if.then9.i.do.body22.i.i_crit_edge

if.then9.i.do.body22.i.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22.i.i

if.end.i.i:                                       ; preds = %if.then9.i
  %10 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outbuf.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp1.i.i = icmp ugt i32 %9, 7
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end.i.i.do.body22.i.i_crit_edge

if.end.i.i.do.body22.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %13 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr3.i.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #11
  br label %do.body22.i.i

do.body22.i.i:                                    ; preds = %if.then2.i.i, %if.end.i.i.do.body22.i.i_crit_edge, %if.then9.i.do.body22.i.i_crit_edge
  %code.047.i.i = phi i32 [ %12, %if.then2.i.i ], [ %12, %if.end.i.i.do.body22.i.i_crit_edge ], [ 0, %if.then9.i.do.body22.i.i_crit_edge ]
  %err_arg.0.i.i = phi i32 [ %15, %if.then2.i.i ], [ 0, %if.end.i.i.do.body22.i.i_crit_edge ], [ 0, %if.then9.i.do.body22.i.i_crit_edge ]
  %msg_enable.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i.i, align 4
  %and11.i.i = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i.i, label %do.body22.i.i.efx_mcdi_read_assertion.exit_crit_edge, label %if.then26.i.i

do.body22.i.i.efx_mcdi_read_assertion.exit_crit_edge: ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_read_assertion.exit

if.then26.i.i:                                    ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev27.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev27.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev27.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef 6, i32 noundef 4, i32 noundef %call.i.lcssa.i, i32 noundef %code.047.i.i, i32 noundef %err_arg.0.i.i) #15
  br label %efx_mcdi_read_assertion.exit

if.end11.i:                                       ; preds = %land.rhs.1.i.if.end11.i_crit_edge, %land.rhs.i.if.end11.i_crit_edge, %entry.if.end11.i_crit_edge
  %20 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %21)
  %cmp12.i = icmp ult i32 %21, 140
  br i1 %cmp12.i, label %if.end11.i.efx_mcdi_read_assertion.exit.thread_crit_edge, label %if.end14.i

if.end11.i.efx_mcdi_read_assertion.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_read_assertion.exit.thread

if.end14.i:                                       ; preds = %if.end11.i
  %22 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %outbuf.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %23, label %cond.false24.i [
    i32 16777216, label %if.end14.i.efx_mcdi_read_assertion.exit.thread_crit_edge
    i32 33554432, label %if.end14.i.cond.end27.i_crit_edge
    i32 50331648, label %cond.end27.fold.split.i
  ]

if.end14.i.cond.end27.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end27.i

if.end14.i.efx_mcdi_read_assertion.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_read_assertion.exit.thread

cond.false24.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %23)
  %cmp25.i = icmp eq i32 %23, 67108864
  %cond.i = select i1 %cmp25.i, ptr @.str.59, ptr @.str.60
  br label %cond.end27.i

cond.end27.fold.split.i:                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end27.i

cond.end27.i:                                     ; preds = %cond.end27.fold.split.i, %cond.false24.i, %if.end14.i.cond.end27.i_crit_edge
  %cond28.i = phi ptr [ %cond.i, %cond.false24.i ], [ @.str.57, %if.end14.i.cond.end27.i_crit_edge ], [ @.str.58, %cond.end27.fold.split.i ]
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %25 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable.i, align 4
  %and30.i = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %cond.end27.i.do.end45.i_crit_edge, label %if.then32.i

cond.end27.i.do.end45.i_crit_edge:                ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45.i

if.then32.i:                                      ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %27 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_dev.i, align 4
  %add.ptr34.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %29 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr34.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #11
  %add.ptr39.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 33
  %32 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr39.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond28.i, i32 noundef %31, i32 noundef %34) #15
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then32.i, %cond.end27.i.do.end45.i_crit_edge
  %net_dev52.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %add.ptr54.i = getelementptr inbounds i8, ptr %outbuf.i, i32 8
  br label %do.body47.i

do.body47.i:                                      ; preds = %for.inc.i.do.body47.i_crit_edge, %do.end45.i
  %index.089.i = phi i32 [ 0, %do.end45.i ], [ %inc.pre-phi.i, %for.inc.i.do.body47.i_crit_edge ]
  %35 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable.i, align 4
  %and49.i = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %do.body47.for.inc_crit_edge.i, label %if.then51.i

do.body47.for.inc_crit_edge.i:                    ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i = add nuw nsw i32 %index.089.i, 1
  br label %for.inc.i

if.then51.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %net_dev52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev52.i, align 4
  %add.i = add nuw nsw i32 %index.089.i, 1
  %mul.i = shl nuw nsw i32 %index.089.i, 2
  %add.ptr55.i = getelementptr i8, ptr %add.ptr54.i, i32 %mul.i
  %39 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr55.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.62, i32 noundef %add.i, i32 noundef %41) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then51.i, %do.body47.for.inc_crit_edge.i
  %inc.pre-phi.i = phi i32 [ %.pre.i, %do.body47.for.inc_crit_edge.i ], [ %add.i, %if.then51.i ]
  %exitcond.not.i = icmp eq i32 %inc.pre-phi.i, 31
  br i1 %exitcond.not.i, label %efx_mcdi_read_assertion.exit.thread6, label %for.inc.i.do.body47.i_crit_edge

for.inc.i.do.body47.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body47.i

efx_mcdi_read_assertion.exit.thread6:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  br label %if.end

efx_mcdi_read_assertion.exit.thread:              ; preds = %if.end14.i.efx_mcdi_read_assertion.exit.thread_crit_edge, %if.end11.i.efx_mcdi_read_assertion.exit.thread_crit_edge, %land.rhs.1.i.efx_mcdi_read_assertion.exit.thread_crit_edge, %land.rhs.i.efx_mcdi_read_assertion.exit.thread_crit_edge, %entry.efx_mcdi_read_assertion.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.efx_mcdi_read_assertion.exit.thread_crit_edge ], [ 0, %land.rhs.i.efx_mcdi_read_assertion.exit.thread_crit_edge ], [ 0, %land.rhs.1.i.efx_mcdi_read_assertion.exit.thread_crit_edge ], [ 0, %if.end14.i.efx_mcdi_read_assertion.exit.thread_crit_edge ], [ -5, %if.end11.i.efx_mcdi_read_assertion.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  br label %cleanup

efx_mcdi_read_assertion.exit:                     ; preds = %if.then26.i.i, %do.body22.i.i.efx_mcdi_read_assertion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.lcssa.i)
  %cmp = icmp slt i32 %call.i.lcssa.i, 1
  br i1 %cmp, label %efx_mcdi_read_assertion.exit.cleanup_crit_edge, label %efx_mcdi_read_assertion.exit.if.end_crit_edge

efx_mcdi_read_assertion.exit.if.end_crit_edge:    ; preds = %efx_mcdi_read_assertion.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

efx_mcdi_read_assertion.exit.cleanup_crit_edge:   ; preds = %efx_mcdi_read_assertion.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %efx_mcdi_read_assertion.exit.if.end_crit_edge, %efx_mcdi_read_assertion.exit.thread6
  %call1 = call fastcc i32 @efx_mcdi_exit_assertion(ptr noundef %efx)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %efx_mcdi_read_assertion.exit.cleanup_crit_edge, %efx_mcdi_read_assertion.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i.lcssa.i, %efx_mcdi_read_assertion.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %efx_mcdi_read_assertion.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_drv_attach(ptr noundef %efx, i1 noundef zeroext %driver_operating, ptr noundef writeonly %was_attached) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [3 x %union.efx_dword], align 4
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #11
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #11
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !158
  %2 = select i1 %driver_operating, i32 16777216, i32 0
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %add.ptr4 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %add.ptr4, align 4
  %add.ptr10 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %5 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16777216, ptr %add.ptr10, align 4
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 28, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -1
  br i1 %cmp, label %do.body17, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.body17:                                        ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body17.do.body32_crit_edge, label %do.body20

do.body17.do.body32_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

do.body20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_drv_attach.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_drv_attach, %if.then26)) #11
          to label %do.body32 [label %if.then26], !srcloc !160

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_drv_attach.__UNIQUE_ID_ddebug550, ptr noundef %9, ptr noundef nonnull @.str.56) #11
  br label %do.body32

do.body32:                                        ; preds = %if.then26, %do.body20, %do.body17.do.body32_crit_edge
  %10 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %add.ptr10, align 4
  %call.i106 = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 28, ptr noundef nonnull %inbuf, i32 noundef 12, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen, i1 noundef zeroext true) #11
  br label %if.end41

if.end41:                                         ; preds = %do.body32, %entry.if.end41_crit_edge
  %rc.0 = phi i32 [ %call.i106, %do.body32 ], [ %call.i, %entry.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool42.not = icmp eq i32 %rc.0, 0
  %11 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outlen, align 4
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i = icmp ugt i32 %12, 3
  br i1 %cmp.i, label %if.end.i, label %if.then43.do.body.i_crit_edge

if.then43.do.body.i_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i:                                         ; preds = %if.then43
  %13 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %outbuf, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp1.i = icmp ugt i32 %12, 7
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %16 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr3.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.end.i.do.body.i_crit_edge, %if.then43.do.body.i_crit_edge
  %code.047.i = phi i32 [ %15, %if.then2.i ], [ %15, %if.end.i.do.body.i_crit_edge ], [ 0, %if.then43.do.body.i_crit_edge ]
  %err_arg.0.i = phi i32 [ %18, %if.then2.i ], [ 0, %if.end.i.do.body.i_crit_edge ], [ 0, %if.then43.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0)
  %cmp8.i = icmp eq i32 %rc.0, -1
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and11.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %cmp8.i, label %do.body10.i, label %do.body22.i

do.body10.i:                                      ; preds = %do.body.i
  br i1 %tobool.not.i, label %do.body10.i.do.body79_crit_edge, label %do.body13.i

do.body10.i.do.body79_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

do.body13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_drv_attach, %if.then17.i)) #11
          to label %do.body79 [label %if.then17.i], !srcloc !160

if.then17.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, ptr noundef %22, ptr noundef nonnull @.str.14, i32 noundef 28, i32 noundef 12, i32 noundef -1, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #11
  br label %do.body79

do.body22.i:                                      ; preds = %do.body.i
  br i1 %tobool.not.i, label %do.body22.i.do.body79_crit_edge, label %if.then26.i

do.body22.i.do.body79_crit_edge:                  ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev27.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %23 = ptrtoint ptr %net_dev27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev27.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef 28, i32 noundef 12, i32 noundef %rc.0, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #15
  br label %do.body79

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp46 = icmp ult i32 %12, 4
  br i1 %cmp46, label %if.end45.do.body79_crit_edge, label %if.end49

if.end45.do.body79_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body79

if.end49:                                         ; preds = %if.end45
  br i1 %driver_operating, label %if.then51, label %if.end49.if.end67_crit_edge

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp52 = icmp ugt i32 %12, 7
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr56 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %25 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr56, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  br label %if.end67.sink.split

if.else:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %port_num.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %28 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp60 = icmp eq i32 %29, 0
  %conv61 = zext i1 %cmp60 to i32
  %or63 = or i32 %conv61, 6
  br label %if.end67.sink.split

if.end67.sink.split:                              ; preds = %if.else, %if.then54
  %.sink = phi i32 [ %27, %if.then54 ], [ %or63, %if.else ]
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %30 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcdi, align 4
  %fn_flags = getelementptr inbounds %struct.efx_mcdi_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %fn_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %fn_flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.end49.if.end67_crit_edge
  %cmp68.not = icmp eq ptr %was_attached, null
  br i1 %cmp68.not, label %if.end67.cleanup_crit_edge, label %if.then70

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %outbuf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool76 = icmp ne i32 %34, 0
  %frombool77 = zext i1 %tobool76 to i8
  %35 = ptrtoint ptr %was_attached to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool77, ptr %was_attached, align 1
  br label %cleanup

do.body79:                                        ; preds = %if.end45.do.body79_crit_edge, %if.then26.i, %do.body22.i.do.body79_crit_edge, %if.then17.i, %do.body13.i, %do.body10.i.do.body79_crit_edge
  %rc.1 = phi i32 [ -5, %if.end45.do.body79_crit_edge ], [ -1, %do.body10.i.do.body79_crit_edge ], [ -1, %do.body13.i ], [ -1, %if.then17.i ], [ %rc.0, %do.body22.i.do.body79_crit_edge ], [ %rc.0, %if.then26.i ]
  %msg_enable80 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %36 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable80, align 4
  %and81 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body79.cleanup_crit_edge, label %if.then83

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev84 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %38 = ptrtoint ptr %net_dev84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev84, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.55, i32 noundef %rc.1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %do.body79.cleanup_crit_edge, %if.then70, %if.end67.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then70 ], [ 0, %if.end67.cleanup_crit_edge ], [ %rc.1, %if.then83 ], [ %rc.1, %do.body79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_detach(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.end9, label %do.body5, !prof !161

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/mcdi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #11, !srcloc !162
  unreachable

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @efx_mcdi_drv_attach(ptr noundef %efx, i1 noundef zeroext false, ptr noundef null)
  br label %return

return:                                           ; preds = %do.end9, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_fini(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %logging_buffer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %logging_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %logging_buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #11
  %5 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcdi, align 4
  tail call void @kfree(ptr noundef %6) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, i1 noundef zeroext %quiet) unnamed_addr #0 align 64 {
entry:
  %raw_rc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_rc) #11
  %0 = ptrtoint ptr %raw_rc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %raw_rc, align 4
  %call = call fastcc i32 @_efx_mcdi_rpc(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, ptr noundef nonnull %raw_rc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %call)
  %cmp = icmp eq i32 %call, -71
  br i1 %cmp, label %land.lhs.true, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %raw_rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %raw_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4098, i32 %2)
  %cmp1 = icmp eq i32 %2, 4098
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true2:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true2.if.end27_crit_edge, label %if.then

land.lhs.true2.if.end27_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.do.end14_crit_edge, label %do.body5

if.then.do.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_efx_mcdi_rpc_evb_retry.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc_evb_retry, %if.then11)) #11
          to label %do.end14 [label %if.then11], !srcloc !160

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_efx_mcdi_rpc_evb_retry.__UNIQUE_ID_ddebug542, ptr noundef %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body5, %if.then.do.end14_crit_edge
  %add.neg = sub i32 -1000, %7
  br label %do.body15

do.body15:                                        ; preds = %land.rhs.do.body15_crit_edge, %do.end14
  %delay_us.0 = phi i32 [ 10000, %do.end14 ], [ %spec.select, %land.rhs.do.body15_crit_edge ]
  %add16 = add i32 %delay_us.0, 10000
  call void @usleep_range_state(i32 noundef %delay_us.0, i32 noundef %add16, i32 noundef 2) #11
  %call17 = call fastcc i32 @_efx_mcdi_rpc(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, ptr noundef nonnull %raw_rc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %delay_us.0)
  %cmp18 = icmp ult i32 %delay_us.0, 100000
  %shl = zext i1 %cmp18 to i32
  %spec.select = shl i32 %delay_us.0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %call17)
  %cmp22 = icmp eq i32 %call17, -71
  br i1 %cmp22, label %land.lhs.true23, label %do.body15.if.end27_crit_edge

do.body15.if.end27_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true23:                                  ; preds = %do.body15
  %12 = ptrtoint ptr %raw_rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %raw_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4098, i32 %13)
  %cmp24 = icmp eq i32 %13, 4098
  br i1 %cmp24, label %land.rhs, label %land.lhs.true23.if.end27_crit_edge

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.rhs:                                         ; preds = %land.lhs.true23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %land.rhs.do.body15_crit_edge, label %land.rhs.if.end27_crit_edge

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.rhs.do.body15_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

if.end27:                                         ; preds = %land.rhs.if.end27_crit_edge, %land.lhs.true23.if.end27_crit_edge, %do.body15.if.end27_crit_edge, %land.lhs.true2.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %entry.if.end27_crit_edge
  %rc.0 = phi i32 [ -71, %land.lhs.true2.if.end27_crit_edge ], [ -71, %land.lhs.true.if.end27_crit_edge ], [ %call, %entry.if.end27_crit_edge ], [ -71, %land.rhs.if.end27_crit_edge ], [ -71, %land.lhs.true23.if.end27_crit_edge ], [ %call17, %do.body15.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool28.not = icmp eq i32 %rc.0, 0
  %brmerge = or i1 %tobool28.not, %quiet
  br i1 %brmerge, label %if.end27.if.end36_crit_edge, label %land.lhs.true31

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true31:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %cmd)
  %cmp32 = icmp eq i32 %cmd, 61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %rc.0)
  %cmp34 = icmp eq i32 %rc.0, -5
  %or.cond = select i1 %cmp32, i1 %cmp34, i1 false
  br i1 %or.cond, label %land.lhs.true31.if.end36_crit_edge, label %if.then35

land.lhs.true31.if.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %outlen)
  %cmp.i = icmp ugt i32 %outlen, 3
  br i1 %cmp.i, label %if.end.i, label %if.then35.do.body.i_crit_edge

if.then35.do.body.i_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i:                                         ; preds = %if.then35
  %15 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outbuf, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %outlen)
  %cmp1.i = icmp ugt i32 %outlen, 7
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i = getelementptr %union.efx_dword, ptr %outbuf, i32 1
  %18 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr3.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.end.i.do.body.i_crit_edge, %if.then35.do.body.i_crit_edge
  %code.047.i = phi i32 [ %17, %if.then2.i ], [ %17, %if.end.i.do.body.i_crit_edge ], [ 0, %if.then35.do.body.i_crit_edge ]
  %err_arg.0.i = phi i32 [ %20, %if.then2.i ], [ 0, %if.end.i.do.body.i_crit_edge ], [ 0, %if.then35.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0)
  %cmp8.i = icmp eq i32 %rc.0, -1
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %21 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i, align 4
  %and11.i = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %cmp8.i, label %do.body10.i, label %do.body22.i

do.body10.i:                                      ; preds = %do.body.i
  br i1 %tobool.not.i, label %do.body10.i.if.end36_crit_edge, label %do.body13.i

do.body10.i.if.end36_crit_edge:                   ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.body13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc_evb_retry, %if.then17.i)) #11
          to label %if.end36 [label %if.then17.i], !srcloc !160

if.then17.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %23 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef %cmd, i32 noundef %inlen, i32 noundef -1, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #11
  br label %if.end36

do.body22.i:                                      ; preds = %do.body.i
  br i1 %tobool.not.i, label %do.body22.i.if.end36_crit_edge, label %if.then26.i

do.body22.i.if.end36_crit_edge:                   ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev27.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %25 = ptrtoint ptr %net_dev27.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev27.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.14, i32 noundef %cmd, i32 noundef %inlen, i32 noundef %rc.0, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then26.i, %do.body22.i.if.end36_crit_edge, %if.then17.i, %do.body13.i, %do.body10.i.if.end36_crit_edge, %land.lhs.true31.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_rc) #11
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rpc_start(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %mcdi_max_ver.i = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 135
  %4 = ptrtoint ptr %mcdi_max_ver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcdi_max_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.i = icmp ult i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cmd)
  %cmp4.i = icmp ugt i32 %cmd, 127
  %or.cond.i = and i1 %cmp4.i, %cmp3.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inlen)
  %cmp5.i = icmp ugt i32 %inlen, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %inlen)
  %cmp11.i = icmp ugt i32 %inlen, 252
  %or.cond17.i = and i1 %cmp11.i, %cmp3.i
  %or.cond = select i1 %cmp5.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %mc_bist_for_other_fn = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 81
  %6 = ptrtoint ptr %mc_bist_for_other_fn to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mc_bist_for_other_fn, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @efx_mcdi_acquire_sync(ptr noundef %1)
  tail call fastcc void @efx_mcdi_send_request(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -100, %if.end.cleanup_crit_edge ], [ -100, %if.end4.cleanup_crit_edge ], [ -90, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_acquire_sync(ptr noundef %mcdi) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 427) #11
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !163
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 0, i32 1) #11, !srcloc !164
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp = icmp eq i32 %asmresult1.i, 0
  br i1 %cmp, label %__cmpxchg.exit.do.end50_crit_edge, label %if.end

__cmpxchg.exit.do.end50_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50

if.end:                                           ; preds = %__cmpxchg.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %1 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wq = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call21 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call.i56 = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #11
  br label %do.body.i59

do.body.i59:                                      ; preds = %do.body.i59.do.body.i59_crit_edge, %for.cond
  %2 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 0, i32 1) #11, !srcloc !164
  %asmresult.i57 = extractvalue { i32, i32 } %2, 0
  %tobool.not.i58 = icmp eq i32 %asmresult.i57, 0
  br i1 %tobool.not.i58, label %__cmpxchg.exit61, label %do.body.i59.do.body.i59_crit_edge

do.body.i59.do.body.i59_crit_edge:                ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i59

__cmpxchg.exit61:                                 ; preds = %do.body.i59
  %asmresult1.i60 = extractvalue { i32, i32 } %2, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  %cmp44 = icmp eq i32 %asmresult1.i60, 0
  br i1 %cmp44, label %for.end, label %cleanup

cleanup:                                          ; preds = %__cmpxchg.exit61
  call void @__sanitizer_cov_trace_pc() #13
  call void @schedule() #11
  br label %for.cond

for.end:                                          ; preds = %__cmpxchg.exit61
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end50

do.end50:                                         ; preds = %for.end, %__cmpxchg.exit.do.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_send_request(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca [2 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %logging_buffer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %logging_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %logging_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdr) #11
  %4 = getelementptr inbounds [2 x %union.efx_dword], ptr %hdr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !158
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !168

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/mcdi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #11, !srcloc !169
  unreachable

do.end7:                                          ; preds = %entry
  %iface_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %iface_lock) #11
  %seqno8 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %seqno8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno8, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %seqno8, align 4
  %and = and i32 %inc, 15
  tail call void @_raw_spin_unlock_bh(ptr noundef %iface_lock) #11
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp11 = icmp eq i32 %11, 1
  %spec.select = select i1 %cmp11, i32 16777216, i32 0
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %mcdi_max_ver = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 135
  %14 = ptrtoint ptr %mcdi_max_ver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mcdi_max_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp14 = icmp eq i32 %15, 1
  br i1 %cmp14, label %do.body16, label %do.body36

do.body16:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i32 %inlen, 8
  %shl20 = shl nuw nsw i32 %and, 16
  %new_epoch = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %new_epoch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %new_epoch, align 4, !range !159
  %18 = xor i8 %17, 1
  %19 = zext i8 %18 to i32
  %shl29 = shl nuw nsw i32 %19, 21
  %20 = or i32 %shl, %cmd
  %or19347 = or i32 %20, %shl20
  %or22348 = or i32 %or19347, %spec.select
  %or25349 = or i32 %or22348, %shl29
  %or31350 = or i32 %or25349, 128
  %21 = tail call i32 @llvm.bswap.i32(i32 %or31350)
  %22 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %hdr, align 4
  br label %if.end86

do.body36:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inlen)
  %cmp37 = icmp ugt i32 %inlen, 1024
  br i1 %cmp37, label %do.body46, label %do.body55, !prof !168

do.body46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/mcdi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #11, !srcloc !170
  unreachable

do.body55:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %shl56 = shl nuw nsw i32 %and, 16
  %23 = or i32 %spec.select, %shl56
  %new_epoch62 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %new_epoch62 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %new_epoch62, align 4, !range !159
  %26 = xor i8 %25, 1
  %27 = zext i8 %26 to i32
  %shl66 = shl nuw nsw i32 %27, 21
  %or61340 = or i32 %shl66, %23
  %or68341 = or i32 %or61340, 255
  %28 = tail call i32 @llvm.bswap.i32(i32 %or68341)
  %29 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %hdr, align 4
  %shl78 = shl nuw nsw i32 %inlen, 16
  %or80342 = or i32 %shl78, %cmd
  %30 = tail call i32 @llvm.bswap.i32(i32 %or80342)
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %4, align 4
  br label %if.end86

if.end86:                                         ; preds = %do.body55, %do.body16
  %hdr_len.0 = phi i32 [ 4, %do.body16 ], [ 8, %do.body55 ]
  %32 = xor i1 %cmp14, true
  %logging_enabled = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %logging_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool87.not = icmp eq i8 %34, 0
  br i1 %tobool87.not, label %if.end86.if.end288_crit_edge, label %land.lhs.true

if.end86.if.end288_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end288

land.lhs.true:                                    ; preds = %if.end86
  %tobool89.not = icmp eq ptr %3, null
  br i1 %tobool89.not, label %land.rhs, label %if.then141.critedge

land.rhs:                                         ; preds = %land.lhs.true
  %.b346 = load i1, ptr @efx_mcdi_send_request.__already_done, align 1
  br i1 %.b346, label %land.rhs.if.end288_crit_edge, label %if.then107, !prof !161

land.rhs.if.end288_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end288

if.then107:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @efx_mcdi_send_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 202, i32 noundef 9, ptr noundef null) #11
  br label %if.end288

if.then141.critedge:                              ; preds = %land.lhs.true
  %rem198 = and i32 %inlen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem198)
  %tobool199.not = icmp eq i32 %rem198, 0
  br i1 %tobool199.not, label %if.then141.critedge.for.body_crit_edge, label %land.rhs207

if.then141.critedge.for.body_crit_edge:           ; preds = %if.then141.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

land.rhs207:                                      ; preds = %if.then141.critedge
  %.b339345 = load i1, ptr @efx_mcdi_send_request.__already_done.41, align 1
  br i1 %.b339345, label %land.rhs207.for.body_crit_edge, label %if.then218, !prof !161

land.rhs207.for.body_crit_edge:                   ; preds = %land.rhs207
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then218:                                       ; preds = %land.rhs207
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @efx_mcdi_send_request.__already_done.41, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 209, i32 noundef 9, ptr noundef null) #11
  br label %for.body

for.cond263.preheader:                            ; preds = %for.body.1, %for.body.for.cond263.preheader_crit_edge
  %add.lcssa = phi i32 [ %call261, %for.body.for.cond263.preheader_crit_edge ], [ %add.1, %for.body.1 ]
  %cmp256.lcssa = phi i1 [ %cmp256, %for.body.for.cond263.preheader_crit_edge ], [ %cmp256.1, %for.body.1 ]
  %div264344 = lshr i32 %inlen, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inlen)
  %cmp265355 = icmp ugt i32 %inlen, 3
  %or.cond352357 = select i1 %cmp265355, i1 %cmp256.lcssa, i1 false
  br i1 %or.cond352357, label %for.cond263.preheader.for.body271_crit_edge, label %for.cond263.preheader.do.body281_crit_edge

for.cond263.preheader.do.body281_crit_edge:       ; preds = %for.cond263.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body281

for.cond263.preheader.for.body271_crit_edge:      ; preds = %for.cond263.preheader
  br label %for.body271

for.body:                                         ; preds = %if.then218, %land.rhs207.for.body_crit_edge, %if.then141.critedge.for.body_crit_edge
  %35 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hdr, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %call261 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %3, i32 noundef 4096, ptr noundef nonnull @.str.42, i32 noundef %37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call261)
  %cmp256 = icmp ult i32 %call261, 4096
  %or.cond = select i1 %32, i1 %cmp256, i1 false
  br i1 %or.cond, label %for.body.1, label %for.body.for.cond263.preheader_crit_edge

for.body.for.cond263.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond263.preheader

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.1 = getelementptr i8, ptr %3, i32 %call261
  %sub.1 = sub nuw nsw i32 4096, %call261
  %arrayidx259.1 = getelementptr inbounds [2 x %union.efx_dword], ptr %hdr, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx259.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx259.1, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %call261.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.42, i32 noundef %40) #11
  %add.1 = add i32 %call261.1, %call261
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.1)
  %cmp256.1 = icmp ult i32 %add.1, 4096
  br label %for.cond263.preheader

for.body271:                                      ; preds = %for.body271.for.body271_crit_edge, %for.cond263.preheader.for.body271_crit_edge
  %i.1359 = phi i32 [ %inc279, %for.body271.for.body271_crit_edge ], [ 0, %for.cond263.preheader.for.body271_crit_edge ]
  %bytes.1358 = phi i32 [ %add277, %for.body271.for.body271_crit_edge ], [ %add.lcssa, %for.cond263.preheader.for.body271_crit_edge ]
  %add.ptr272 = getelementptr i8, ptr %3, i32 %bytes.1358
  %sub273 = sub nuw nsw i32 4096, %bytes.1358
  %arrayidx274 = getelementptr %union.efx_dword, ptr %inbuf, i32 %i.1359
  %41 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx274, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %call276 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr272, i32 noundef %sub273, ptr noundef nonnull @.str.42, i32 noundef %43) #11
  %add277 = add i32 %call276, %bytes.1358
  %inc279 = add nuw nsw i32 %i.1359, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc279, i32 %div264344)
  %cmp265 = icmp ult i32 %inc279, %div264344
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add277)
  %cmp268 = icmp ult i32 %add277, 4096
  %or.cond352 = select i1 %cmp265, i1 %cmp268, i1 false
  br i1 %or.cond352, label %for.body271.for.body271_crit_edge, label %for.body271.do.body281_crit_edge

for.body271.do.body281_crit_edge:                 ; preds = %for.body271
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body281

for.body271.for.body271_crit_edge:                ; preds = %for.body271
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body271

do.body281:                                       ; preds = %for.body271.do.body281_crit_edge, %for.cond263.preheader.do.body281_crit_edge
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %44 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable, align 4
  %and282 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %do.body281.if.end288_crit_edge, label %if.then284

do.body281.if.end288_crit_edge:                   ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end288

if.then284:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %46 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %47, ptr noundef nonnull @.str.43, ptr noundef nonnull %3) #15
  br label %if.end288

if.end288:                                        ; preds = %if.then284, %do.body281.if.end288_crit_edge, %if.then107, %land.rhs.if.end288_crit_edge, %if.end86.if.end288_crit_edge
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %type, align 4
  %mcdi_request = getelementptr inbounds %struct.efx_nic_type, ptr %49, i32 0, i32 38
  %50 = ptrtoint ptr %mcdi_request to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mcdi_request, align 8
  call void %51(ptr noundef %efx, ptr noundef nonnull %hdr, i32 noundef %hdr_len.0, ptr noundef %inbuf, i32 noundef %inlen) #11
  %new_epoch290 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %new_epoch290 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %new_epoch290, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rpc_async(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, i32 noundef %outlen, ptr noundef %complete, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_efx_mcdi_rpc_async(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, i32 noundef %outlen, ptr noundef %complete, i32 noundef %cookie, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_efx_mcdi_rpc_async(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, i32 noundef %outlen, ptr noundef %complete, i32 noundef %cookie, i1 noundef zeroext %quiet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %quiet to i8
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %mcdi_max_ver.i = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 135
  %4 = ptrtoint ptr %mcdi_max_ver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcdi_max_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i63 = icmp slt i32 %5, 0
  br i1 %cmp.i63, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.i = icmp ult i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cmd)
  %cmp4.i = icmp ugt i32 %cmd, 127
  %or.cond.i = and i1 %cmp4.i, %cmp3.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i64

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i64:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inlen)
  %cmp5.i = icmp ugt i32 %inlen, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %inlen)
  %cmp11.i = icmp ugt i32 %inlen, 252
  %or.cond17.i = and i1 %cmp11.i, %cmp3.i
  %or.cond = select i1 %cmp5.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond, label %if.end.i64.cleanup_crit_edge, label %if.end

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i64
  %mc_bist_for_other_fn = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 81
  %6 = ptrtoint ptr %mc_bist_for_other_fn to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mc_bist_for_other_fn, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end8.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %8 = tail call i32 @llvm.umax.i32(i32 %inlen, i32 %outlen)
  %9 = add i32 %8, 35
  %add5 = and i32 %9, -4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add5, i32 noundef 2592) #16
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %cmd10 = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %cmd10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cmd, ptr %cmd10, align 8
  %inlen11 = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %call9.i, i32 0, i32 2
  %11 = ptrtoint ptr %inlen11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inlen, ptr %inlen11, align 4
  %outlen12 = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %call9.i, i32 0, i32 3
  %12 = ptrtoint ptr %outlen12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %outlen, ptr %outlen12, align 16
  %quiet14 = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %call9.i, i32 0, i32 4
  %13 = ptrtoint ptr %quiet14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %quiet14, align 4
  %complete16 = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %call9.i, i32 0, i32 5
  %14 = ptrtoint ptr %complete16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %complete, ptr %complete16, align 8
  %cookie17 = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %call9.i, i32 0, i32 6
  %15 = ptrtoint ptr %cookie17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cookie, ptr %cookie17, align 4
  %add.ptr = getelementptr %struct.efx_mcdi_async_param, ptr %call9.i, i32 1
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %inbuf, i32 %inlen)
  %async_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %async_lock) #11
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end9
  %async_list = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %20, ptr noundef %async_list) #11
  br i1 %call.i.i, label %if.end.i.i65, label %if.then19.list_add_tail.exit_crit_edge

if.then19.list_add_tail.exit_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i65:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i, ptr %prev.i, align 4
  %22 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %async_list, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call9.i, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i65, %if.then19.list_add_tail.exit_crit_edge
  %25 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %async_list, align 4
  %cmp22 = icmp eq ptr %26, %call9.i
  br i1 %cmp22, label %land.lhs.true, label %list_add_tail.exit.if.end28_crit_edge

list_add_tail.exit.if.end28_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %call23 = tail call fastcc zeroext i1 @efx_mcdi_acquire_async(ptr noundef %1)
  br i1 %call23, label %if.then24, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @efx_mcdi_send_request(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen)
  %async_timer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %27, 1000
  %call26 = tail call i32 @mod_timer(ptr noundef %async_timer, i32 noundef %add25) #11
  br label %if.end28

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24, %land.lhs.true.if.end28_crit_edge, %list_add_tail.exit.if.end28_crit_edge
  %rc.0 = phi i32 [ 0, %if.then24 ], [ 0, %land.lhs.true.if.end28_crit_edge ], [ 0, %list_add_tail.exit.if.end28_crit_edge ], [ -100, %if.else ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i64.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end28 ], [ -100, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -90, %if.end.i64.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rpc_async_quiet(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, i32 noundef %outlen, ptr noundef %complete, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_efx_mcdi_rpc_async(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, i32 noundef %outlen, ptr noundef %complete, i32 noundef %cookie, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rpc_finish(ptr noundef %efx, i32 noundef %cmd, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_efx_mcdi_rpc_finish(ptr noundef %efx, i32 noundef %cmd, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_efx_mcdi_rpc_finish(ptr noundef %efx, i32 noundef %cmd, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef writeonly %outlen_actual, i1 noundef zeroext %quiet, ptr noundef %proxy_handle, ptr noundef writeonly %raw_rc) unnamed_addr #0 align 64 {
entry:
  %testbuf.i = alloca [2 x %union.efx_dword], align 8
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %errbuf = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %errbuf) #11
  %2 = ptrtoint ptr %errbuf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %errbuf, align 8
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @efx_mcdi_poll(ptr noundef %efx)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 435) #11
  %state.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.i = icmp eq i32 %6, 4
  br i1 %cmp.i, label %if.else.if.end37.i_crit_edge, label %if.then8.i

if.else.if.end37.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then8.i:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %7 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %wq.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 3
  %call1062.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp1363.i = icmp eq i32 %9, 4
  br i1 %cmp1363.i, label %if.end33.thread.i, label %if.then8.i.cleanup.i_crit_edge

if.then8.i.cleanup.i_crit_edge:                   ; preds = %if.then8.i
  br label %cleanup.i

if.end33.thread.i:                                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %if.end37.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then8.i.cleanup.i_crit_edge
  %__ret9.164.i = phi i32 [ %__ret9.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 1000, %if.then8.i.cleanup.i_crit_edge ]
  %call30.i = call i32 @schedule_timeout(i32 noundef %__ret9.164.i) #11
  %call10.i = call i32 @prepare_to_wait_event(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp13.i = icmp eq i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool17.not.i = icmp eq i32 %call30.i, 0
  %12 = select i1 %cmp13.i, i1 %tobool17.not.i, i1 false
  %__ret9.1.i = select i1 %12, i32 1, i32 %call30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1.i)
  %tobool23.not.i = icmp eq i32 %__ret9.1.i, 0
  %13 = select i1 %cmp13.i, i1 true, i1 %tobool23.not.i
  br i1 %13, label %if.end33.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end33.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br i1 %tobool23.not.i, label %if.end33.i.do.body_crit_edge, label %if.end33.i.if.end37.i_crit_edge

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.end33.i.do.body_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end37.i:                                       ; preds = %if.end33.i.if.end37.i_crit_edge, %if.end33.thread.i, %if.else.if.end37.i_crit_edge
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp38.i = icmp eq i32 %15, 0
  br i1 %cmp38.i, label %if.then39.i, label %if.end37.i.if.end24_crit_edge

if.end37.i.if.end24_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %call40.i = call fastcc i32 @efx_mcdi_poll(ptr noundef %efx) #11
  br label %if.end

if.end:                                           ; preds = %if.then39.i, %if.then
  %rc.0 = phi i32 [ %call1, %if.then ], [ %call40.i, %if.then39.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp3.not = icmp eq i32 %rc.0, 0
  br i1 %cmp3.not, label %if.end.if.end24_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end33.i.do.body_crit_edge
  %rc.0249 = phi i32 [ %rc.0, %if.end.do.body_crit_edge ], [ -110, %if.end33.i.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev, align 4
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.44, i32 noundef %cmd, i32 noundef %inlen, i32 noundef %21) #15
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp9 = icmp eq i32 %23, 1
  br i1 %cmp9, label %land.lhs.true, label %do.end.if.end21_crit_edge

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %do.end
  %24 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcdi.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type.i, align 4
  %mcdi_poll_response.i = getelementptr inbounds %struct.efx_nic_type, ptr %27, i32 0, i32 39
  %28 = ptrtoint ptr %mcdi_poll_response.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mcdi_poll_response.i, align 4
  %call1.i = call zeroext i1 %29(ptr noundef %efx) #11
  br i1 %call1.i, label %do.body12, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.body12:                                        ; preds = %land.lhs.true
  %iface_lock.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %25, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %iface_lock.i) #11
  call fastcc void @efx_mcdi_read_response_header(ptr noundef %efx) #11
  call void @_raw_spin_unlock_bh(ptr noundef %iface_lock.i) #11
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 4
  %and14 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body12.if.end21_crit_edge, label %if.then16

do.body12.if.end21_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev17 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %32 = ptrtoint ptr %net_dev17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev17, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.45) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %do.body12.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %do.end.if.end21_crit_edge
  %rc.1 = phi i32 [ %rc.0249, %do.end.if.end21_crit_edge ], [ 0, %if.then16 ], [ 0, %do.body12.if.end21_crit_edge ], [ %rc.0249, %land.lhs.true.if.end21_crit_edge ]
  %34 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mcdi.i, align 4
  %mode.i225 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %35, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mode.i225, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !172
  call void @llvm.prefetch.p0(ptr %mode.i225, i32 1, i32 3, i32 1) #11
  %36 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 2, ptr %mode.i225) #11, !srcloc !173
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i)
  %cmp.i226 = icmp eq i32 %asmresult.i.i, 2
  br i1 %cmp.i226, label %if.end21.efx_mcdi_abandon.exit_crit_edge, label %do.body16.i

if.end21.efx_mcdi_abandon.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_abandon.exit

do.body16.i:                                      ; preds = %if.end21
  %37 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body16.i.do.end30.i_crit_edge, label %do.body18.i

do.body16.i.do.end30.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

do.body18.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_abandon.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc_finish, %if.then24.i)) #11
          to label %do.end30.i [label %if.then24.i], !srcloc !160

if.then24.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %39 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_abandon.__UNIQUE_ID_ddebug546, ptr noundef %40, ptr noundef nonnull @.str.54) #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then24.i, %do.body18.i, %do.body16.i.do.end30.i_crit_edge
  call void @efx_schedule_reset(ptr noundef %efx, i32 noundef 14) #11
  br label %efx_mcdi_abandon.exit

efx_mcdi_abandon.exit:                            ; preds = %do.end30.i, %if.end21.efx_mcdi_abandon.exit_crit_edge
  %iface_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %iface_lock) #11
  %seqno = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seqno, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %seqno, align 4
  %credits = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %credits, align 4
  %inc22 = add i32 %44, 1
  store i32 %inc22, ptr %credits, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %iface_lock) #11
  br label %if.end24

if.end24:                                         ; preds = %efx_mcdi_abandon.exit, %if.end.if.end24_crit_edge, %if.end37.i.if.end24_crit_edge
  %rc.2 = phi i32 [ %rc.1, %efx_mcdi_abandon.exit ], [ 0, %if.end.if.end24_crit_edge ], [ 0, %if.end37.i.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %proxy_handle, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %proxy_handle, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp28.not = icmp eq i32 %rc.2, 0
  br i1 %cmp28.not, label %if.else33, label %if.then29

if.then29:                                        ; preds = %if.end27
  %tobool30.not = icmp eq ptr %outlen_actual, null
  br i1 %tobool30.not, label %if.then29.if.end135_crit_edge, label %if.then31

if.then29.if.end135_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %outlen_actual to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %outlen_actual, align 4
  br label %if.end135

if.else33:                                        ; preds = %if.end27
  %iface_lock34 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %iface_lock34) #11
  %resprc = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %resprc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %resprc, align 4
  %tobool35.not = icmp eq ptr %raw_rc, null
  br i1 %tobool35.not, label %if.else33.if.end37_crit_edge, label %if.then36

if.else33.if.end37_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  %resprc_raw = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %resprc_raw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %resprc_raw, align 4
  %51 = ptrtoint ptr %raw_rc to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %raw_rc, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.else33.if.end37_crit_edge
  %resp_hdr_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 10
  %52 = ptrtoint ptr %resp_hdr_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %resp_hdr_len, align 4
  %resp_data_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %resp_data_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %resp_data_len, align 4
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 8)
  call void @_raw_spin_unlock_bh(ptr noundef %iface_lock34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp41 = icmp sgt i32 %48, 0
  br i1 %cmp41, label %do.body45, label %do.end53, !prof !168

do.body45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/mcdi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 711, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end53:                                         ; preds = %if.end37
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type, align 4
  %mcdi_read_response = getelementptr inbounds %struct.efx_nic_type, ptr %58, i32 0, i32 40
  %59 = ptrtoint ptr %mcdi_read_response to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mcdi_read_response, align 8
  %61 = call i32 @llvm.umin.i32(i32 %55, i32 %outlen)
  call void %60(ptr noundef %efx, ptr noundef %outbuf, i32 noundef %53, i32 noundef %61) #11
  %tobool60.not = icmp eq ptr %outlen_actual, null
  br i1 %tobool60.not, label %do.end53.if.end62_crit_edge, label %if.then61

do.end53.if.end62_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then61:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %outlen_actual to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %outlen_actual, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %do.end53.if.end62_crit_edge
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %type, align 4
  %mcdi_read_response64 = getelementptr inbounds %struct.efx_nic_type, ptr %64, i32 0, i32 40
  %65 = ptrtoint ptr %mcdi_read_response64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mcdi_read_response64, align 8
  call void %66(ptr noundef %efx, ptr noundef nonnull %errbuf, i32 noundef %53, i32 noundef %56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %cmd)
  %cmp65 = icmp eq i32 %cmd, 61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %48)
  %cmp67 = icmp eq i32 %48, -5
  %or.cond = select i1 %cmp65, i1 %cmp67, i1 false
  br i1 %or.cond, label %if.end62.if.then132_crit_edge, label %if.else69

if.end62.if.then132_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then132

if.else69:                                        ; preds = %if.end62
  %.off = add nsw i32 %48, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body73, label %if.else112

do.body73:                                        ; preds = %if.else69
  %msg_enable74 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %67 = ptrtoint ptr %msg_enable74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_enable74, align 4
  %and75 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body73.do.body82_crit_edge, label %if.then77

do.body73.do.body82_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

if.then77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev78 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %69 = ptrtoint ptr %net_dev78 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_dev78, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %70, ptr noundef nonnull @.str.46) #15
  br label %do.body82

do.body82:                                        ; preds = %if.then77, %do.body73.do.body82_crit_edge
  %71 = ptrtoint ptr %msg_enable74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_enable74, align 4
  %and84 = and i32 %72, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body82.do.end105_crit_edge, label %do.body87

do.body82.do.end105_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105

do.body87:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_efx_mcdi_rpc_finish.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc_finish, %if.then98)) #11
          to label %do.end105 [label %if.then98], !srcloc !160

if.then98:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev99 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %73 = ptrtoint ptr %net_dev99 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net_dev99, align 4
  %sub = sub nsw i32 0, %48
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_efx_mcdi_rpc_finish.__UNIQUE_ID_ddebug537, ptr noundef %74, ptr noundef nonnull @.str.48, i32 noundef %cmd, i32 noundef %sub) #11
  br label %do.end105

do.end105:                                        ; preds = %if.then98, %do.body87, %do.body82.do.end105_crit_edge
  %75 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %type, align 4
  %mcdi_reboot_detected = getelementptr inbounds %struct.efx_nic_type, ptr %76, i32 0, i32 42
  %77 = ptrtoint ptr %mcdi_reboot_detected to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mcdi_reboot_detected, align 8
  %tobool107.not = icmp eq ptr %78, null
  br i1 %tobool107.not, label %do.end105.if.end111_crit_edge, label %if.then108

do.end105.if.end111_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then108:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #13
  call void %78(ptr noundef %efx) #11
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %do.end105.if.end111_crit_edge
  call void @efx_schedule_reset(ptr noundef %efx, i32 noundef 13) #11
  br label %if.then132

if.else112:                                       ; preds = %if.else69
  %tobool25.not.not = xor i1 %tobool25.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %48)
  %cmp115 = icmp eq i32 %48, -71
  %or.cond218 = select i1 %tobool25.not.not, i1 %cmp115, i1 false
  br i1 %or.cond218, label %land.lhs.true116, label %if.else112.if.else119_crit_edge

if.else112.if.else119_crit_edge:                  ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else119

land.lhs.true116:                                 ; preds = %if.else112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %testbuf.i) #11
  %79 = ptrtoint ptr %testbuf.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 0, ptr %testbuf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp.i229 = icmp ult i32 %55, 8
  %or.cond.i = or i1 %tobool25.not, %cmp.i229
  br i1 %or.cond.i, label %land.lhs.true116.efx_mcdi_get_proxy_handle.exit.thread_crit_edge, label %if.end.i231

land.lhs.true116.efx_mcdi_get_proxy_handle.exit.thread_crit_edge: ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_get_proxy_handle.exit.thread

if.end.i231:                                      ; preds = %land.lhs.true116
  %80 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %type, align 4
  %mcdi_read_response.i = getelementptr inbounds %struct.efx_nic_type, ptr %81, i32 0, i32 40
  %82 = ptrtoint ptr %mcdi_read_response.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mcdi_read_response.i, align 8
  call void %83(ptr noundef %efx, ptr noundef nonnull %testbuf.i, i32 noundef %53, i32 noundef 8) #11
  %84 = ptrtoint ptr %testbuf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %testbuf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 269484032, i32 %85)
  %cmp2.i = icmp eq i32 %85, 269484032
  br i1 %cmp2.i, label %if.then118, label %if.end.i231.efx_mcdi_get_proxy_handle.exit.thread_crit_edge

if.end.i231.efx_mcdi_get_proxy_handle.exit.thread_crit_edge: ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_get_proxy_handle.exit.thread

efx_mcdi_get_proxy_handle.exit.thread:            ; preds = %if.end.i231.efx_mcdi_get_proxy_handle.exit.thread_crit_edge, %land.lhs.true116.efx_mcdi_get_proxy_handle.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %testbuf.i) #11
  br label %if.else119

if.then118:                                       ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr5.i = getelementptr inbounds %union.efx_dword, ptr %testbuf.i, i32 1
  %86 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr5.i, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #11
  %89 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %proxy_handle, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %testbuf.i) #11
  %proxy_rx_status = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 18
  %90 = ptrtoint ptr %proxy_rx_status to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %proxy_rx_status, align 4
  %proxy_rx_handle = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 17
  %91 = ptrtoint ptr %proxy_rx_handle to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %proxy_rx_handle, align 4
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %state, align 4
  br label %if.end135

if.else119:                                       ; preds = %efx_mcdi_get_proxy_handle.exit.thread, %if.else112.if.else119_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool120.not = icmp eq i32 %48, 0
  %brmerge = or i1 %tobool120.not, %quiet
  br i1 %brmerge, label %if.else119.if.end135_crit_edge, label %if.then123

if.else119.if.end135_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then123:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp.i234 = icmp ugt i32 %56, 3
  br i1 %cmp.i234, label %if.end.i235, label %if.then123.do.body.i_crit_edge

if.then123.do.body.i_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i235:                                      ; preds = %if.then123
  %93 = ptrtoint ptr %errbuf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %errbuf, align 8
  %95 = call i32 @llvm.bswap.i32(i32 %94) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %56)
  %cmp1.i = icmp ugt i32 %56, 7
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i235.do.body.i_crit_edge

if.end.i235.do.body.i_crit_edge:                  ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i = getelementptr inbounds %union.efx_dword, ptr %errbuf, i32 1
  %96 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr3.i, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.end.i235.do.body.i_crit_edge, %if.then123.do.body.i_crit_edge
  %code.047.i = phi i32 [ %95, %if.then2.i ], [ %95, %if.end.i235.do.body.i_crit_edge ], [ 0, %if.then123.do.body.i_crit_edge ]
  %err_arg.0.i = phi i32 [ %98, %if.then2.i ], [ 0, %if.end.i235.do.body.i_crit_edge ], [ 0, %if.then123.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp8.i = icmp eq i32 %48, -1
  %msg_enable.i236 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %99 = ptrtoint ptr %msg_enable.i236 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %msg_enable.i236, align 4
  %and11.i = and i32 %100, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i237 = icmp eq i32 %and11.i, 0
  br i1 %cmp8.i, label %do.body10.i, label %do.body22.i

do.body10.i:                                      ; preds = %do.body.i
  br i1 %tobool.not.i237, label %do.body10.i.if.end135_crit_edge, label %do.body13.i

do.body10.i.if.end135_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

do.body13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc_finish, %if.then17.i)) #11
          to label %if.end135 [label %if.then17.i], !srcloc !160

if.then17.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i238 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %101 = ptrtoint ptr %net_dev.i238 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %net_dev.i238, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, ptr noundef %102, ptr noundef nonnull @.str.14, i32 noundef %cmd, i32 noundef %inlen, i32 noundef -1, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #11
  br label %if.end135

do.body22.i:                                      ; preds = %do.body.i
  br i1 %tobool.not.i237, label %do.body22.i.if.end135_crit_edge, label %if.then26.i

do.body22.i.if.end135_crit_edge:                  ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev27.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %103 = ptrtoint ptr %net_dev27.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %net_dev27.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %104, ptr noundef nonnull @.str.14, i32 noundef %cmd, i32 noundef %inlen, i32 noundef %48, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #15
  br label %if.end135

if.then132:                                       ; preds = %if.end111, %if.end62.if.then132_crit_edge
  call void @msleep(i32 noundef 250) #11
  %105 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mcdi.i, align 4
  %tobool.not.i240 = icmp eq ptr %106, null
  br i1 %tobool.not.i240, label %if.then132.efx_mcdi_poll_reboot.exit_crit_edge, label %if.end.i242

if.then132.efx_mcdi_poll_reboot.exit_crit_edge:   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_poll_reboot.exit

if.end.i242:                                      ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %type, align 4
  %mcdi_poll_reboot.i = getelementptr inbounds %struct.efx_nic_type, ptr %108, i32 0, i32 41
  %109 = ptrtoint ptr %mcdi_poll_reboot.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mcdi_poll_reboot.i, align 4
  %call.i = call i32 %110(ptr noundef %efx) #11
  br label %efx_mcdi_poll_reboot.exit

efx_mcdi_poll_reboot.exit:                        ; preds = %if.end.i242, %if.then132.efx_mcdi_poll_reboot.exit_crit_edge
  %new_epoch = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %new_epoch to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %new_epoch, align 4
  br label %if.end135

if.end135:                                        ; preds = %efx_mcdi_poll_reboot.exit, %if.then26.i, %do.body22.i.if.end135_crit_edge, %if.then17.i, %do.body13.i, %do.body10.i.if.end135_crit_edge, %if.else119.if.end135_crit_edge, %if.then118, %if.then31, %if.then29.if.end135_crit_edge
  %rc.3 = phi i32 [ %rc.2, %if.then31 ], [ %rc.2, %if.then29.if.end135_crit_edge ], [ %48, %efx_mcdi_poll_reboot.exit ], [ -1, %if.then17.i ], [ -1, %do.body10.i.if.end135_crit_edge ], [ -71, %if.then118 ], [ %48, %if.then26.i ], [ %48, %do.body22.i.if.end135_crit_edge ], [ -1, %do.body13.i ], [ %48, %if.else119.if.end135_crit_edge ]
  br i1 %tobool25.not, label %if.end135.if.then139_crit_edge, label %lor.lhs.false137

if.end135.if.then139_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then139

lor.lhs.false137:                                 ; preds = %if.end135
  %112 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %proxy_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool138.not = icmp eq i32 %113, 0
  br i1 %tobool138.not, label %lor.lhs.false137.if.then139_crit_edge, label %lor.lhs.false137.if.end140_crit_edge

lor.lhs.false137.if.end140_crit_edge:             ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

lor.lhs.false137.if.then139_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then139

if.then139:                                       ; preds = %lor.lhs.false137.if.then139_crit_edge, %if.end135.if.then139_crit_edge
  call fastcc void @efx_mcdi_release(ptr noundef %1)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %lor.lhs.false137.if.end140_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %errbuf) #11
  ret i32 %rc.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_rpc_finish_quiet(ptr noundef %efx, i32 noundef %cmd, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_efx_mcdi_rpc_finish(ptr noundef %efx, i32 noundef %cmd, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_display_error(ptr nocapture noundef readonly %efx, i32 noundef %cmd, i32 noundef %inlen, ptr nocapture noundef readonly %outbuf, i32 noundef %outlen, i32 noundef %rc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %outlen)
  %cmp = icmp ugt i32 %outlen, 3
  br i1 %cmp, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %outbuf, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %outlen)
  %cmp1 = icmp ugt i32 %outlen, 7
  br i1 %cmp1, label %if.then2, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3 = getelementptr %union.efx_dword, ptr %outbuf, i32 1
  %3 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %code.047 = phi i32 [ %2, %if.then2 ], [ %2, %if.end.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %err_arg.0 = phi i32 [ %5, %if.then2 ], [ 0, %if.end.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc)
  %cmp8 = icmp eq i32 %rc, -1
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and11 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %cmp8, label %do.body10, label %do.body22

do.body10:                                        ; preds = %do.body
  br i1 %tobool.not, label %do.body10.do.end33_crit_edge, label %do.body13

do.body10.do.end33_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.body13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_display_error, %if.then17)) #11
          to label %do.end33 [label %if.then17], !srcloc !160

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, ptr noundef %9, ptr noundef nonnull @.str.14, i32 noundef %cmd, i32 noundef %inlen, i32 noundef -1, i32 noundef %code.047, i32 noundef %err_arg.0) #11
  br label %do.end33

do.body22:                                        ; preds = %do.body
  br i1 %tobool.not, label %do.body22.do.end33_crit_edge, label %if.then26

do.body22.do.end33_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev27 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev27, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef %cmd, i32 noundef %inlen, i32 noundef %rc, i32 noundef %code.047, i32 noundef %err_arg.0) #15
  br label %do.end33

do.end33:                                         ; preds = %if.then26, %do.body22.do.end33_crit_edge, %if.then17, %do.body13, %do.body10.do.end33_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mode_poll(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %3, label %if.end5 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 2, label %if.end.cleanup_crit_edge12
  ]

if.end.cleanup_crit_edge12:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mode, align 4
  %state.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end5
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 1, i32 4) #11, !srcloc !164
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i.i)
  %cmp.i = icmp eq i32 %asmresult1.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %__cmpxchg.exit.i.cleanup_crit_edge

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %wq.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %__cmpxchg.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_flush_async(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %do.body5, label %do.end11, !prof !168

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/mcdi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1143, 0\0A.popsection", ""() #11, !srcloc !178
  unreachable

do.end11:                                         ; preds = %if.end
  %async_timer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 14
  %call12 = tail call i32 @del_timer_sync(ptr noundef %async_timer) #11
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp13 = icmp eq i32 %5, 2
  br i1 %cmp13, label %if.then14, label %do.end11.if.end17_crit_edge

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call fastcc i32 @efx_mcdi_poll(ptr noundef %efx)
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.end11.if.end17_crit_edge
  %async_list = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async_list, align 4
  %cmp25.not56 = icmp eq ptr %8, %async_list
  br i1 %cmp25.not56, label %if.end17.cleanup_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end17.for.body_crit_edge
  %async.057 = phi ptr [ %next.059, %list_del.exit.for.body_crit_edge ], [ %8, %if.end17.for.body_crit_edge ]
  %9 = ptrtoint ptr %async.057 to i32
  call void @__asan_load4_noabort(i32 %9)
  %next.059 = load ptr, ptr %async.057, align 4
  %complete = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %async.057, i32 0, i32 5
  %10 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %complete, align 4
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %for.body.if.end31_crit_edge, label %if.then29

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %cookie = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %async.057, i32 0, i32 6
  %12 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cookie, align 4
  tail call void %11(ptr noundef %efx, i32 noundef %13, i32 noundef -100, ptr noundef null, i32 noundef 0) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %for.body.if.end31_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %async.057) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end31.list_del.exit_crit_edge

if.end31.list_del.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %async.057, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %async.057 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %async.057, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end31.list_del.exit_crit_edge
  %20 = ptrtoint ptr %async.057 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %async.057, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %async.057, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %async.057) #11
  %cmp25.not = icmp eq ptr %next.059, %async_list
  br i1 %cmp25.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_poll(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %efx_mcdi_poll_reboot.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

efx_mcdi_poll_reboot.exit:                        ; preds = %entry
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %mcdi_poll_reboot.i = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %mcdi_poll_reboot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcdi_poll_reboot.i, align 4
  %call.i = tail call i32 %5(ptr noundef %efx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %efx_mcdi_poll_reboot.exit.if.end_crit_edge, label %if.then

efx_mcdi_poll_reboot.exit.if.end_crit_edge:       ; preds = %efx_mcdi_poll_reboot.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %efx_mcdi_poll_reboot.exit
  call void @__sanitizer_cov_trace_pc() #13
  %iface_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %iface_lock) #11
  %resprc = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %resprc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %resprc, align 4
  %resp_hdr_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %resp_hdr_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %resp_hdr_len, align 4
  %resp_data_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %resp_data_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %resp_data_len, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %efx_mcdi_poll_reboot.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 1000
  %type.i25 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end8.while.cond_crit_edge, %if.end
  %spins.0 = phi i32 [ 10000, %if.end ], [ %spins.1, %if.end8.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spins.0)
  %cmp.not = icmp eq i32 %spins.0, 0
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %spins.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #11
  br label %if.end5

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #11
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %spins.1 = phi i32 [ %dec, %if.then3 ], [ 0, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcdi.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  %14 = ptrtoint ptr %type.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i25, align 4
  %mcdi_poll_response.i = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %mcdi_poll_response.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcdi_poll_response.i, align 4
  %call1.i = tail call zeroext i1 %17(ptr noundef %efx) #11
  br i1 %call1.i, label %efx_mcdi_poll_once.exit.thread, label %if.end8

efx_mcdi_poll_once.exit.thread:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %iface_lock.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %iface_lock.i) #11
  tail call fastcc void @efx_mcdi_read_response_header(ptr noundef %efx) #11
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end5
  %sub = sub i32 %add, %11
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end8.while.cond_crit_edge

if.end8.while.cond_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %efx_mcdi_poll_once.exit.thread, %if.then
  %iface_lock.i.sink = phi ptr [ %iface_lock.i, %efx_mcdi_poll_once.exit.thread ], [ %iface_lock, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %iface_lock.i.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ -110, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mode_event(ptr nocapture noundef readonly %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @efx_mcdi_acquire_sync(ptr noundef nonnull %1)
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mode, align 4
  tail call fastcc void @efx_mcdi_release(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_release(ptr noundef %mcdi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi, align 4
  %async_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %async_lock) #11
  %async_list = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 13
  %4 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %async_list, align 4
  %cmp3.not = icmp eq ptr %5, %async_list
  %tobool.not28 = icmp eq ptr %5, null
  %tobool.not = or i1 %cmp3.not, %tobool.not28
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_lock) #11
  br label %if.end12

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  %cmd = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %add.ptr6 = getelementptr %struct.efx_mcdi_async_param, ptr %5, i32 1
  %inlen = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inlen, align 4
  tail call fastcc void @efx_mcdi_send_request(ptr noundef %3, i32 noundef %8, ptr noundef %add.ptr6, i32 noundef %10)
  %async_timer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 1000
  %call = tail call i32 @mod_timer(ptr noundef %async_timer, i32 noundef %add) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_lock) #11
  br label %return

if.end12:                                         ; preds = %if.end.thread, %entry.if.end12_crit_edge
  %state13 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 1
  %12 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state13, align 4
  %wq = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %return

return:                                           ; preds = %if.end12, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_process_event(ptr noundef %channel, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %arrayidx = getelementptr [2 x i32], ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr i32 %4, 12
  %5 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %trunc = trunc i32 %shr to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %trunc, label %do.body113 [
    i8 1, label %do.body
    i8 2, label %do.body7
    i8 3, label %sw.bb16
    i8 4, label %sw.bb29
    i8 5, label %sw.bb30
    i8 6, label %do.body32
    i8 7, label %entry.do.body50_crit_edge
    i8 21, label %entry.do.body50_crit_edge223
    i8 25, label %do.body60
    i8 8, label %entry.sw.epilog_crit_edge
    i8 10, label %sw.bb69
    i8 13, label %entry.sw.bb79_crit_edge
    i8 14, label %entry.sw.bb79_crit_edge224
    i8 15, label %entry.sw.bb79_crit_edge225
    i8 26, label %sw.bb80
    i8 12, label %entry.do.end84_crit_edge
    i8 16, label %entry.do.end84_crit_edge226
    i8 11, label %entry.do.body93_crit_edge
    i8 17, label %entry.do.body93_crit_edge227
    i8 29, label %sw.bb104
  ]

entry.do.body93_crit_edge227:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body93

entry.do.body93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body93

entry.do.end84_crit_edge226:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end84

entry.do.end84_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end84

entry.sw.bb79_crit_edge225:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb79

entry.sw.bb79_crit_edge224:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb79

entry.sw.bb79_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb79

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.do.body50_crit_edge223:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

entry.do.body50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.15, i32 noundef %7) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  tail call fastcc void @efx_mcdi_ev_death(ptr noundef %1, i32 noundef -4)
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  %msg_enable8 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable8, align 4
  %and9 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.sw.epilog_crit_edge, label %if.then11

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev12 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %15 = ptrtoint ptr %net_dev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev12, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.16) #15
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %and20 = and i32 %7, 255
  %shr22 = lshr i32 %7, 8
  %and24 = and i32 %shr22, 255
  %shr26 = lshr i32 %7, 16
  %mcdi.i.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 77
  %17 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcdi.i.i, align 4
  %iface_lock.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %iface_lock.i) #11
  %seqno1.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seqno1.i, align 4
  %xor.i = xor i32 %20, %7
  %and.i = and i32 %xor.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else10.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb16
  %credits.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i, label %do.body.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add i32 %22, -1
  %23 = ptrtoint ptr %credits.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec.i, ptr %credits.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock.i) #11
  br label %sw.epilog

do.body.i:                                        ; preds = %if.then.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i, align 4
  %and5.i = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end23.critedge41.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %26 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.52, i32 noundef %and20, i32 noundef %20) #15
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock.i) #11
  br label %sw.epilog

if.else10.i:                                      ; preds = %sw.bb16
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type.i, align 4
  %mcdi_max_ver.i = getelementptr inbounds %struct.efx_nic_type, ptr %29, i32 0, i32 135
  %30 = ptrtoint ptr %mcdi_max_ver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mcdi_max_ver.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i = icmp sgt i32 %31, 1
  br i1 %cmp.i, label %if.then11.i, label %if.else12.i

if.then11.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @efx_mcdi_read_response_header(ptr noundef %1) #11
  br label %if.then18.i

if.else12.i:                                      ; preds = %if.else10.i
  %trunc216 = trunc i32 %shr26 to i8
  %32 = zext i8 %trunc216 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %trunc216, label %sw.default.i.i [
    i8 0, label %if.else12.i.efx_mcdi_errno.exit.i_crit_edge
    i8 1, label %sw.bb1.i.i
    i8 2, label %sw.bb2.i.i
    i8 4, label %sw.bb3.i.i
    i8 11, label %sw.bb4.i.i
    i8 13, label %sw.bb5.i.i
    i8 16, label %sw.bb6.i.i
    i8 22, label %sw.bb7.i.i
    i8 35, label %sw.bb8.i.i
    i8 38, label %sw.bb9.i.i
    i8 62, label %sw.bb10.i.i
    i8 114, label %sw.bb11.i.i
    i8 28, label %sw.bb12.i.i
    i8 95, label %sw.bb13.i.i
  ]

if.else12.i.efx_mcdi_errno.exit.i_crit_edge:      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb1.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb2.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb3.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb4.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb5.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb6.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb7.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb8.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb9.i.i:                                       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb10.i.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb11.i.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb12.i.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.bb13.i.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

sw.default.i.i:                                   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_errno.exit.i

efx_mcdi_errno.exit.i:                            ; preds = %sw.default.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.else12.i.efx_mcdi_errno.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -71, %sw.default.i.i ], [ -95, %sw.bb13.i.i ], [ -28, %sw.bb12.i.i ], [ -114, %sw.bb11.i.i ], [ -62, %sw.bb10.i.i ], [ -38, %sw.bb9.i.i ], [ -35, %sw.bb8.i.i ], [ -22, %sw.bb7.i.i ], [ -16, %sw.bb6.i.i ], [ -13, %sw.bb5.i.i ], [ -11, %sw.bb4.i.i ], [ -4, %sw.bb3.i.i ], [ -2, %sw.bb2.i.i ], [ -1, %sw.bb1.i.i ], [ 0, %if.else12.i.efx_mcdi_errno.exit.i_crit_edge ]
  %resprc.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 8
  %33 = ptrtoint ptr %resprc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.i, ptr %resprc.i, align 4
  %resp_hdr_len.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 10
  %34 = ptrtoint ptr %resp_hdr_len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %resp_hdr_len.i, align 4
  %resp_data_len.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 11
  %35 = ptrtoint ptr %resp_data_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and24, ptr %resp_data_len.i, align 4
  br label %if.then18.i

if.then18.i:                                      ; preds = %efx_mcdi_errno.exit.i, %if.then11.i
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock.i) #11
  %call19.i = tail call fastcc zeroext i1 @efx_mcdi_complete_async(ptr noundef %18, i1 noundef zeroext false) #11
  br i1 %call19.i, label %if.then18.i.sw.epilog_crit_edge, label %if.then20.i

if.then18.i.sw.epilog_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then20.i:                                      ; preds = %if.then18.i
  %state.i.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %state.i.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then20.i
  %36 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.i, i32 1, i32 4) #11, !srcloc !164
  %asmresult.i.i.i = extractvalue { i32, i32 } %36, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %36, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult1.i.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %__cmpxchg.exit.i.i.sw.epilog_crit_edge

__cmpxchg.exit.i.i.sw.epilog_crit_edge:           ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i.i:                                      ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %wq.i.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %18, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

if.end23.critedge41.i:                            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock.i) #11
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @efx_mcdi_process_link_change(ptr noundef %1, ptr noundef %event) #11
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %type.i169 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %type.i169 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %type.i169, align 4
  %sensor_event.i = getelementptr inbounds %struct.efx_nic_type, ptr %38, i32 0, i32 117
  %39 = ptrtoint ptr %sensor_event.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sensor_event.i, align 4
  %tobool.not.i170 = icmp eq ptr %40, null
  br i1 %tobool.not.i170, label %sw.bb30.sw.epilog_crit_edge, label %if.then.i171

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i171:                                     ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %40(ptr noundef %1, ptr noundef %event) #11
  br label %sw.epilog

do.body32:                                        ; preds = %entry
  %msg_enable33 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %41 = ptrtoint ptr %msg_enable33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable33, align 4
  %and34 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body32.sw.epilog_crit_edge, label %do.body37

do.body32.sw.epilog_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_process_event.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_process_event, %if.then41)) #11
          to label %sw.epilog [label %if.then41], !srcloc !160

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev42 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %43 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net_dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_process_event.__UNIQUE_ID_ddebug547, ptr noundef %44, ptr noundef nonnull @.str.18, i32 noundef %7) #11
  br label %sw.epilog

do.body50:                                        ; preds = %entry.do.body50_crit_edge, %entry.do.body50_crit_edge223
  %msg_enable51 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %45 = ptrtoint ptr %msg_enable51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable51, align 4
  %and52 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body50.do.end58_crit_edge, label %if.then54

do.body50.do.end58_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

if.then54:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev55 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %47 = ptrtoint ptr %net_dev55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_dev55, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %48, ptr noundef nonnull @.str.19) #15
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body50.do.end58_crit_edge
  tail call fastcc void @efx_mcdi_ev_death(ptr noundef %1, i32 noundef -5)
  br label %sw.epilog

do.body60:                                        ; preds = %entry
  %msg_enable61 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %49 = ptrtoint ptr %msg_enable61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable61, align 4
  %and62 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body60.do.end68_crit_edge, label %if.then64

do.body60.do.end68_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then64:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev65 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %51 = ptrtoint ptr %net_dev65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net_dev65, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.20) #15
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body60.do.end68_crit_edge
  %mcdi.i.i172 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 77
  %53 = ptrtoint ptr %mcdi.i.i172 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mcdi.i.i172, align 4
  %iface_lock.i173 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %iface_lock.i173) #11
  %mc_bist_for_other_fn.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 81
  %55 = ptrtoint ptr %mc_bist_for_other_fn.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %mc_bist_for_other_fn.i, align 1
  %state.i.i174 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %state.i.i174 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state.i.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp.i.i175 = icmp eq i32 %57, 3
  br i1 %cmp.i.i175, label %if.then.i.i176, label %do.end68.efx_mcdi_proxy_abort.exit.i_crit_edge

do.end68.efx_mcdi_proxy_abort.exit.i_crit_edge:   ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_proxy_abort.exit.i

if.then.i.i176:                                   ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  %proxy_rx_status.i.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 18
  %58 = ptrtoint ptr %proxy_rx_status.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -4, ptr %proxy_rx_status.i.i, align 4
  %proxy_rx_wq.i.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %proxy_rx_wq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %efx_mcdi_proxy_abort.exit.i

efx_mcdi_proxy_abort.exit.i:                      ; preds = %if.then.i.i176, %do.end68.efx_mcdi_proxy_abort.exit.i_crit_edge
  %call.i.i.i177 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i174, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %state.i.i174, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i180

do.body.i.i.i180:                                 ; preds = %do.body.i.i.i180.do.body.i.i.i180_crit_edge, %efx_mcdi_proxy_abort.exit.i
  %59 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.i174, i32 1, i32 4) #11, !srcloc !164
  %asmresult.i.i.i178 = extractvalue { i32, i32 } %59, 0
  %tobool.not.i.i.i179 = icmp eq i32 %asmresult.i.i.i178, 0
  br i1 %tobool.not.i.i.i179, label %__cmpxchg.exit.i.i182, label %do.body.i.i.i180.do.body.i.i.i180_crit_edge

do.body.i.i.i180.do.body.i.i.i180_crit_edge:      ; preds = %do.body.i.i.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i180

__cmpxchg.exit.i.i182:                            ; preds = %do.body.i.i.i180
  %asmresult1.i.i.i181 = extractvalue { i32, i32 } %59, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i.i.i181)
  %cmp.i17.i = icmp eq i32 %asmresult1.i.i.i181, 1
  br i1 %cmp.i17.i, label %if.then.i185, label %__cmpxchg.exit.i.i182.efx_mcdi_ev_bist.exit_crit_edge

__cmpxchg.exit.i.i182.efx_mcdi_ev_bist.exit_crit_edge: ; preds = %__cmpxchg.exit.i.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_bist.exit

if.then.i185:                                     ; preds = %__cmpxchg.exit.i.i182
  %wq.i.i183 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wq.i.i183, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %mode.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 2
  %60 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i184 = icmp eq i32 %61, 1
  br i1 %cmp.i184, label %if.then2.i, label %if.then.i185.efx_mcdi_ev_bist.exit_crit_edge

if.then.i185.efx_mcdi_ev_bist.exit_crit_edge:     ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_bist.exit

if.then2.i:                                       ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #13
  %resprc.i186 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 8
  %62 = ptrtoint ptr %resprc.i186 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -5, ptr %resprc.i186, align 4
  %resp_hdr_len.i187 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 10
  %63 = ptrtoint ptr %resp_hdr_len.i187 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %resp_hdr_len.i187, align 4
  %resp_data_len.i188 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 11
  %64 = ptrtoint ptr %resp_data_len.i188 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %resp_data_len.i188, align 4
  %credits.i189 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 6
  %65 = ptrtoint ptr %credits.i189 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %credits.i189, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %credits.i189, align 4
  br label %efx_mcdi_ev_bist.exit

efx_mcdi_ev_bist.exit:                            ; preds = %if.then2.i, %if.then.i185.efx_mcdi_ev_bist.exit_crit_edge, %__cmpxchg.exit.i.i182.efx_mcdi_ev_bist.exit_crit_edge
  %new_epoch.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %54, i32 0, i32 5
  %67 = ptrtoint ptr %new_epoch.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %new_epoch.i, align 4
  tail call void @efx_schedule_reset(ptr noundef %1, i32 noundef 6) #11
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock.i173) #11
  br label %sw.epilog

sw.bb69:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %type, align 4
  %sriov_flr = getelementptr inbounds %struct.efx_nic_type, ptr %69, i32 0, i32 102
  %70 = ptrtoint ptr %sriov_flr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sriov_flr, align 8
  %tobool70.not = icmp eq ptr %71, null
  br i1 %tobool70.not, label %sw.bb69.sw.epilog_crit_edge, label %if.then71

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then71:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #13
  %and77 = and i32 %7, 255
  tail call void %71(ptr noundef %1, i32 noundef %and77) #11
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry.sw.bb79_crit_edge, %entry.sw.bb79_crit_edge224, %entry.sw.bb79_crit_edge225
  tail call void @efx_ptp_event(ptr noundef %1, ptr noundef %event) #11
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @efx_time_sync_event(ptr noundef %channel, ptr noundef %event) #11
  br label %sw.epilog

do.end84:                                         ; preds = %entry.do.end84_crit_edge, %entry.do.end84_crit_edge226
  %72 = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool89.not = icmp eq i32 %72, 0
  br i1 %tobool89.not, label %if.then90, label %do.end84.sw.epilog_crit_edge

do.end84.sw.epilog_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then90:                                        ; preds = %do.end84
  %active_queues.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 116
  %call.i.i.i190 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %active_queues.i, i32 1, i32 3, i32 1) #11
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues.i, ptr %active_queues.i, i32 1, ptr elementtype(i32) %active_queues.i) #11, !srcloc !180
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i191, label %if.then90.if.end.i_crit_edge

if.then90.if.end.i_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i191:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  %flush_wq.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 119
  tail call void @__wake_up(ptr noundef %flush_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i191, %if.then90.if.end.i_crit_edge
  %call.i.i26.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #11
  %74 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i192 = icmp slt i32 %75, 0
  br i1 %cmp.i192, label %do.end.i, label %if.end.i.sw.epilog_crit_edge, !prof !168

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1307, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

do.body93:                                        ; preds = %entry.do.body93_crit_edge, %entry.do.body93_crit_edge227
  %msg_enable94 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %76 = ptrtoint ptr %msg_enable94 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_enable94, align 4
  %and95 = and i32 %77, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body93.do.end103_crit_edge, label %if.then97

do.body93.do.end103_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end103

if.then97:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev98 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %78 = ptrtoint ptr %net_dev98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net_dev98, align 4
  %80 = and i32 %4, 1044480
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %80)
  %cmp = icmp eq i32 %80, 45056
  %cond = select i1 %cmp, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %79, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond, i32 noundef %4, i32 noundef %7) #15
  br label %do.end103

do.end103:                                        ; preds = %if.then97, %do.body93.do.end103_crit_edge
  tail call void @efx_schedule_reset(ptr noundef %1, i32 noundef 11) #11
  br label %sw.epilog

sw.bb104:                                         ; preds = %entry
  %shr110 = lshr i32 %4, 4
  %mcdi.i.i193 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 77
  %81 = ptrtoint ptr %mcdi.i.i193 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mcdi.i.i193, align 4
  %state.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp.not.i = icmp eq i32 %84, 3
  br i1 %cmp.not.i, label %sw.bb104.if.end.i195_crit_edge, label %do.end.i194, !prof !161

sw.bb104.if.end.i195_crit_edge:                   ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i195

do.end.i194:                                      ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 766, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i195

if.end.i195:                                      ; preds = %do.end.i194, %sw.bb104.if.end.i195_crit_edge
  %trunc215 = trunc i32 %shr110 to i8
  %85 = zext i8 %trunc215 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %trunc215, label %sw.default.i.i211 [
    i8 0, label %if.end.i195.efx_mcdi_ev_proxy_response.exit_crit_edge
    i8 1, label %sw.bb1.i.i196
    i8 2, label %sw.bb2.i.i197
    i8 4, label %sw.bb3.i.i198
    i8 11, label %sw.bb4.i.i199
    i8 13, label %sw.bb5.i.i200
    i8 16, label %sw.bb6.i.i201
    i8 22, label %sw.bb7.i.i202
    i8 35, label %sw.bb8.i.i203
    i8 38, label %sw.bb9.i.i204
    i8 62, label %sw.bb10.i.i205
    i8 114, label %sw.bb11.i.i206
    i8 28, label %sw.bb12.i.i207
    i8 95, label %sw.bb13.i.i208
  ]

if.end.i195.efx_mcdi_ev_proxy_response.exit_crit_edge: ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb1.i.i196:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb2.i.i197:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb3.i.i198:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb4.i.i199:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb5.i.i200:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb6.i.i201:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb7.i.i202:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb8.i.i203:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb9.i.i204:                                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb10.i.i205:                                   ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb11.i.i206:                                   ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb12.i.i207:                                   ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.bb13.i.i208:                                   ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

sw.default.i.i211:                                ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_ev_proxy_response.exit

efx_mcdi_ev_proxy_response.exit:                  ; preds = %sw.default.i.i211, %sw.bb13.i.i208, %sw.bb12.i.i207, %sw.bb11.i.i206, %sw.bb10.i.i205, %sw.bb9.i.i204, %sw.bb8.i.i203, %sw.bb7.i.i202, %sw.bb6.i.i201, %sw.bb5.i.i200, %sw.bb4.i.i199, %sw.bb3.i.i198, %sw.bb2.i.i197, %sw.bb1.i.i196, %if.end.i195.efx_mcdi_ev_proxy_response.exit_crit_edge
  %retval.0.i.i212 = phi i32 [ -71, %sw.default.i.i211 ], [ -95, %sw.bb13.i.i208 ], [ -28, %sw.bb12.i.i207 ], [ -114, %sw.bb11.i.i206 ], [ -62, %sw.bb10.i.i205 ], [ -38, %sw.bb9.i.i204 ], [ -35, %sw.bb8.i.i203 ], [ -22, %sw.bb7.i.i202 ], [ -16, %sw.bb6.i.i201 ], [ -13, %sw.bb5.i.i200 ], [ -11, %sw.bb4.i.i199 ], [ -4, %sw.bb3.i.i198 ], [ -2, %sw.bb2.i.i197 ], [ -1, %sw.bb1.i.i196 ], [ 0, %if.end.i195.efx_mcdi_ev_proxy_response.exit_crit_edge ]
  %proxy_rx_status.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %82, i32 0, i32 18
  %86 = ptrtoint ptr %proxy_rx_status.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i.i212, ptr %proxy_rx_status.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  %proxy_rx_handle.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %82, i32 0, i32 17
  %87 = ptrtoint ptr %proxy_rx_handle.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %7, ptr %proxy_rx_handle.i, align 4
  %proxy_rx_wq.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %82, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %proxy_rx_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

do.body113:                                       ; preds = %entry
  %msg_enable114 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %88 = ptrtoint ptr %msg_enable114 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_enable114, align 4
  %and115 = and i32 %89, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body113.sw.epilog_crit_edge, label %if.then117

do.body113.sw.epilog_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then117:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev118 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %90 = ptrtoint ptr %net_dev118 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %net_dev118, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %91, ptr noundef nonnull @.str.24, i32 noundef %4, i32 noundef %7) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then117, %do.body113.sw.epilog_crit_edge, %efx_mcdi_ev_proxy_response.exit, %do.end103, %do.end.i, %if.end.i.sw.epilog_crit_edge, %do.end84.sw.epilog_crit_edge, %sw.bb80, %sw.bb79, %if.then71, %sw.bb69.sw.epilog_crit_edge, %efx_mcdi_ev_bist.exit, %do.end58, %if.then41, %do.body37, %do.body32.sw.epilog_crit_edge, %if.then.i171, %sw.bb30.sw.epilog_crit_edge, %sw.bb29, %if.end23.critedge41.i, %if.then.i.i, %__cmpxchg.exit.i.i.sw.epilog_crit_edge, %if.then18.i.sw.epilog_crit_edge, %if.then7.i, %if.then3.i, %if.then11, %do.body7.sw.epilog_crit_edge, %do.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_ev_death(ptr noundef %efx, i32 noundef %rc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %iface_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %iface_lock) #11
  %state.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then.i, label %entry.efx_mcdi_proxy_abort.exit_crit_edge

entry.efx_mcdi_proxy_abort.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_proxy_abort.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %proxy_rx_status.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %proxy_rx_status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -4, ptr %proxy_rx_status.i, align 4
  %proxy_rx_wq.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %proxy_rx_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %efx_mcdi_proxy_abort.exit

efx_mcdi_proxy_abort.exit:                        ; preds = %if.then.i, %entry.efx_mcdi_proxy_abort.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %efx_mcdi_proxy_abort.exit
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i, i32 1, i32 4) #11, !srcloc !164
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i.i)
  %cmp.i34 = icmp eq i32 %asmresult1.i.i, 1
  br i1 %cmp.i34, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %__cmpxchg.exit.i
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  br label %for.body

if.then:                                          ; preds = %__cmpxchg.exit.i
  %wq.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then2, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %resprc = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %resprc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rc, ptr %resprc, align 4
  %resp_hdr_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %resp_hdr_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %resp_hdr_len, align 4
  %resp_data_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %resp_data_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %resp_data_len, align 4
  %credits = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %credits, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %credits, align 4
  br label %if.end14

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.cond.preheader
  %count.042 = phi i32 [ 0, %for.cond.preheader ], [ %inc7, %if.end6.for.body_crit_edge ]
  %13 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcdi.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.if.end6_crit_edge, label %efx_mcdi_poll_reboot.exit

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

efx_mcdi_poll_reboot.exit:                        ; preds = %for.body
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type.i, align 4
  %mcdi_poll_reboot.i = getelementptr inbounds %struct.efx_nic_type, ptr %16, i32 0, i32 41
  %17 = ptrtoint ptr %mcdi_poll_reboot.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcdi_poll_reboot.i, align 4
  %call.i = tail call i32 %18(ptr noundef %efx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %efx_mcdi_poll_reboot.exit.if.end6_crit_edge, label %efx_mcdi_poll_reboot.exit.if.end13_crit_edge

efx_mcdi_poll_reboot.exit.if.end13_crit_edge:     ; preds = %efx_mcdi_poll_reboot.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

efx_mcdi_poll_reboot.exit.if.end6_crit_edge:      ; preds = %efx_mcdi_poll_reboot.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %efx_mcdi_poll_reboot.exit.if.end6_crit_edge, %for.body.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #11
  %inc7 = add nuw nsw i32 %count.042, 1
  %exitcond.not = icmp eq i32 %inc7, 2500
  br i1 %exitcond.not, label %land.lhs.true, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

land.lhs.true:                                    ; preds = %if.end6
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i, align 4
  %mcdi_reboot_detected = getelementptr inbounds %struct.efx_nic_type, ptr %21, i32 0, i32 42
  %22 = ptrtoint ptr %mcdi_reboot_detected to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mcdi_reboot_detected, align 8
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %23(ptr noundef %efx) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %efx_mcdi_poll_reboot.exit.if.end13_crit_edge
  %new_epoch = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %new_epoch to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %new_epoch, align 4
  tail call void @efx_schedule_reset(ptr noundef %efx, i32 noundef 13) #11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then2, %if.then.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_process_link_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_ptp_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_time_sync_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_print_fwver(ptr noundef %efx, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [8 x %union.efx_dword], align 4
  %outlength = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %outbuf) #11
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlength) #11
  %1 = ptrtoint ptr %outlength to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlength, align 4, !annotation !158
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 32, ptr noundef nonnull %outlength, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body48_crit_edge

entry.do.body48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ult i32 %3, 32
  br i1 %cmp, label %if.end.do.body48_crit_edge, label %if.end2

if.end.do.body48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %outbuf, i32 24
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %arrayidx4 = getelementptr inbounds i8, ptr %outbuf, i32 26
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx4, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv5 = zext i16 %9 to i32
  %arrayidx6 = getelementptr inbounds i8, ptr %outbuf, i32 28
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx6, align 4
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %conv7 = zext i16 %12 to i32
  %arrayidx8 = getelementptr inbounds i8, ptr %outbuf, i32 30
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx8, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv9 = zext i16 %15 to i32
  %call10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9) #11
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %print_additional_fwver = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 116
  %18 = ptrtoint ptr %print_additional_fwver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %print_additional_fwver, align 8
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.end2.if.end17_crit_edge, label %if.then12

if.end2.if.end17_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %call10
  %sub = sub i32 %len, %call10
  %call16 = call i32 %19(ptr noundef %efx, ptr noundef %add.ptr15, i32 noundef %sub) #11
  %add = add i32 %call16, %call10
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end2.if.end17_crit_edge
  %offset.0 = phi i32 [ %add, %if.then12 ], [ %call10, %if.end2.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %len)
  %cmp18.not = icmp ult i32 %offset.0, %len
  br i1 %cmp18.not, label %if.end17.cleanup_crit_edge, label %do.end31, !prof !161

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1444, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.sink.split

do.body48:                                        ; preds = %if.end.do.body48_crit_edge, %entry.do.body48_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.do.body48_crit_edge ], [ -5, %if.end.do.body48_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %do.body48.cleanup.sink.split_crit_edge, label %if.then50

do.body48.cleanup.sink.split_crit_edge:           ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then50:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.efx_mcdi_print_fwver, i32 noundef %rc.0) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then50, %do.body48.cleanup.sink.split_crit_edge, %do.end31
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlength) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %outbuf) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_get_board_cfg(ptr noundef %efx, ptr noundef writeonly %mac_address, ptr noundef writeonly %fw_subtype_list, ptr noundef writeonly %capabilities) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [34 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %outbuf) #11
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #11
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !158
  %port_num.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 5
  %2 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_num.i, align 8
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 24, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 136, ptr noundef nonnull %outlen, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body52_crit_edge

entry.do.body52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %5)
  %cmp = icmp ult i32 %5, 96
  br i1 %cmp, label %if.end.do.body52_crit_edge, label %if.end9

if.end.do.body52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %mac_address, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  %cond.v = select i1 %tobool12.not, i32 44, i32 50
  %cond = getelementptr inbounds i8, ptr %outbuf, i32 %cond.v
  %6 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cond, align 4
  %8 = ptrtoint ptr %mac_address to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mac_address, align 4
  %add.ptr.i = getelementptr i8, ptr %cond, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_address, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %fw_subtype_list, null
  br i1 %tobool17.not, label %if.end16.if.end37_crit_edge, label %for.cond.preheader

if.end16.if.end37_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.cond.preheader:                               ; preds = %if.end16
  %sub = add i32 %5, -72
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %sub)
  %cmp19 = icmp ugt i32 %sub, 65
  %div82 = lshr i32 %sub, 1
  %cond23 = select i1 %cmp19, i32 32, i32 %div82
  %add.ptr26 = getelementptr inbounds i8, ptr %outbuf, i32 72
  br label %for.body

for.cond29.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond23)
  %cmp3085 = icmp ult i32 %cond23, 32
  br i1 %cmp3085, label %for.body32.preheader, label %for.cond29.preheader.if.end37_crit_edge

for.cond29.preheader.if.end37_crit_edge:          ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.body32.preheader:                             ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %12 = shl nuw nsw i32 %cond23, 1
  %uglygep = getelementptr i8, ptr %fw_subtype_list, i32 %12
  %13 = sub nuw nsw i32 64, %12
  %14 = call ptr @memset(ptr %uglygep, i32 0, i32 %13)
  br label %if.end37

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.084 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw i32 %i.084, 1
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 %mul
  %15 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr27, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %arrayidx = getelementptr i16, ptr %fw_subtype_list, i32 %i.084
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %cond23
  br i1 %exitcond.not, label %for.cond29.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end37:                                         ; preds = %for.body32.preheader, %for.cond29.preheader.if.end37_crit_edge, %if.end16.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %capabilities, null
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.then39

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool40.not = icmp eq i32 %3, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr43 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 10
  %19 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr43, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %capabilities, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr46 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 9
  %23 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr46, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %capabilities, align 4
  br label %cleanup

do.body52:                                        ; preds = %if.end.do.body52_crit_edge, %entry.do.body52_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.do.body52_crit_edge ], [ -5, %if.end.do.body52_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and53 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup_crit_edge, label %if.then55

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %29 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev, align 4
  %31 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %outlen, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.efx_mcdi_get_board_cfg, i32 noundef %rc.0, i32 noundef %32) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.body52.cleanup_crit_edge, %if.else, %if.then41, %if.end37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then41 ], [ 0, %if.else ], [ 0, %if.end37.cleanup_crit_edge ], [ %rc.0, %if.then55 ], [ %rc.0, %do.body52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %outbuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_log_ctrl(ptr noundef %efx, i1 noundef zeroext %evq, i1 noundef zeroext %uart, i32 noundef %dest_evq) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #11
  %0 = select i1 %uart, i32 16777216, i32 0
  %1 = or i32 %0, 33554432
  %2 = select i1 %evq, i32 %1, i32 %0
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %dest_evq)
  %add.ptr14 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %5 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %add.ptr14, align 4
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 7, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_nvram_types(ptr noundef %efx, ptr nocapture noundef writeonly %nvram_types_out) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #11
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #11
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !158
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 54, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %if.end.do.body4_crit_edge, label %if.end2

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %nvram_types_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nvram_types_out, align 4
  br label %cleanup

do.body4:                                         ; preds = %if.end.do.body4_crit_edge, %entry.do.body4_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.do.body4_crit_edge ], [ -5, %if.end.do.body4_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body4.cleanup_crit_edge, label %if.then7

do.body4.cleanup_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.efx_mcdi_nvram_types, i32 noundef %rc.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body4.cleanup_crit_edge, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %rc.0, %if.then7 ], [ %rc.0, %do.body4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_nvram_info(ptr noundef %efx, i32 noundef %type, ptr nocapture noundef writeonly %size_out, ptr nocapture noundef writeonly %erase_size_out, ptr nocapture noundef writeonly %protected_out) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  %outbuf = alloca [6 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %outbuf) #11
  %0 = call ptr @memset(ptr %outbuf, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #11
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !158
  %2 = tail call i32 @llvm.bswap.i32(i32 %type)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 4
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 55, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef nonnull %outbuf, i32 noundef 24, ptr noundef nonnull %outlen, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body23_crit_edge

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %5)
  %cmp = icmp ult i32 %5, 24
  br i1 %cmp, label %if.end.do.body23_crit_edge, label %if.end6

if.end.do.body23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr8 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %6 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr8, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %size_out to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %size_out, align 4
  %add.ptr11 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 2
  %10 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr11, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %erase_size_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %erase_size_out, align 4
  %add.ptr16 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 3
  %14 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr16, align 4
  %16 = lshr i32 %15, 24
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %protected_out to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %protected_out, align 1
  br label %cleanup

do.body23:                                        ; preds = %if.end.do.body23_crit_edge, %entry.do.body23_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.do.body23_crit_edge ], [ -5, %if.end.do.body23_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and24 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %if.then26

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.efx_mcdi_nvram_info, i32 noundef %rc.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body23.cleanup_crit_edge, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %rc.0, %if.then26 ], [ %rc.0, %do.body23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outbuf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_new_mcdi_nvram_test_all(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  %outbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1020) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1020) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #11
  %2 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %outlen.i, align 4, !annotation !158
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %efx_new_mcdi_nvram_types.exit.thread, label %do.end.i

efx_new_mcdi_nvram_types.exit.thread:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  br label %fail

do.end.i:                                         ; preds = %if.end
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 81, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 1020, ptr noundef nonnull %outlen.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %efx_new_mcdi_nvram_types.exit, label %efx_new_mcdi_nvram_types.exit.thread36

efx_new_mcdi_nvram_types.exit.thread36:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  br label %fail

efx_new_mcdi_nvram_types.exit:                    ; preds = %do.end.i
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call7.i.i.i, align 8
  %5 = call i32 @llvm.bswap.i32(i32 %4) #11
  %add.ptr5.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %mul.i = shl i32 %5, 2
  %6 = call ptr @memcpy(ptr %call7.i.i, ptr %add.ptr5.i, i32 %mul.i)
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp42.not = icmp eq i32 %4, 0
  br i1 %cmp42.not, label %efx_new_mcdi_nvram_types.exit.fail_crit_edge, label %for.body.preheader

efx_new_mcdi_nvram_types.exit.fail_crit_edge:     ; preds = %efx_new_mcdi_nvram_types.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

for.body.preheader:                               ; preds = %efx_new_mcdi_nvram_types.exit
  %umax = call i32 @llvm.umax.i32(i32 %5, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rc.043 = phi i32 [ %rc.1, %for.inc.for.body_crit_edge ], [ -11, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %call7.i.i, i32 %i.044
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %8, label %if.end9 [
    i32 65535, label %for.body.for.inc_crit_edge
    i32 1280, label %for.body.for.inc_crit_edge45
  ]

for.body.for.inc_crit_edge45:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i) #11
  %10 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %outbuf.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %8) #11
  %12 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %inbuf.i, align 4
  %call.i.i30 = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 76, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i, i32 noundef 4, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool.not.i31 = icmp eq i32 %call.i.i30, 0
  br i1 %tobool.not.i31, label %if.end.i, label %if.end9.efx_mcdi_nvram_test.exit.thread_crit_edge

if.end9.efx_mcdi_nvram_test.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_nvram_test.exit.thread

if.end.i:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %outbuf.i, align 4
  %15 = and i32 %14, -33554433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %switch.selectcmp.i = icmp eq i32 %15, 0
  br i1 %switch.selectcmp.i, label %efx_mcdi_nvram_test.exit, label %if.end.i.efx_mcdi_nvram_test.exit.thread_crit_edge

if.end.i.efx_mcdi_nvram_test.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_nvram_test.exit.thread

efx_mcdi_nvram_test.exit.thread:                  ; preds = %if.end.i.efx_mcdi_nvram_test.exit.thread_crit_edge, %if.end9.efx_mcdi_nvram_test.exit.thread_crit_edge
  %retval.0.i32.ph = phi i32 [ -5, %if.end.i.efx_mcdi_nvram_test.exit.thread_crit_edge ], [ %call.i.i30, %if.end9.efx_mcdi_nvram_test.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  br label %fail

efx_mcdi_nvram_test.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  br label %for.inc

for.inc:                                          ; preds = %efx_mcdi_nvram_test.exit, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge45
  %rc.1 = phi i32 [ %rc.043, %for.body.for.inc_crit_edge ], [ 0, %efx_mcdi_nvram_test.exit ], [ %rc.043, %for.body.for.inc_crit_edge45 ]
  %inc = add nuw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.fail_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.fail_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

fail:                                             ; preds = %for.inc.fail_crit_edge, %efx_mcdi_nvram_test.exit.thread, %efx_new_mcdi_nvram_types.exit.fail_crit_edge, %efx_new_mcdi_nvram_types.exit.thread36, %efx_new_mcdi_nvram_types.exit.thread
  %rc.2 = phi i32 [ -12, %efx_new_mcdi_nvram_types.exit.thread ], [ %call.i.i, %efx_new_mcdi_nvram_types.exit.thread36 ], [ %retval.0.i32.ph, %efx_mcdi_nvram_test.exit.thread ], [ -11, %efx_new_mcdi_nvram_types.exit.fail_crit_edge ], [ %rc.1, %for.inc.fail_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %fail ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_nvram_test_all(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  %outbuf.i33 = alloca [1 x %union.efx_dword], align 4
  %outbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i) #11
  %0 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #11
  %1 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen.i, align 4, !annotation !158
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 54, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body4.i_crit_edge

entry.do.body4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ult i32 %3, 4
  br i1 %cmp.i, label %if.end.i.do.body4.i_crit_edge, label %efx_mcdi_nvram_types.exit

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.end.i.do.body4.i_crit_edge, %entry.do.body4.i_crit_edge
  %rc.0.i = phi i32 [ %call.i.i, %entry.do.body4.i_crit_edge ], [ -5, %if.end.i.do.body4.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and5.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body4.i.efx_mcdi_nvram_types.exit.thread_crit_edge, label %if.then7.i

do.body4.i.efx_mcdi_nvram_types.exit.thread_crit_edge: ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_nvram_types.exit.thread

if.then7.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.efx_mcdi_nvram_types, i32 noundef %rc.0.i) #15
  br label %efx_mcdi_nvram_types.exit.thread

efx_mcdi_nvram_types.exit.thread:                 ; preds = %if.then7.i, %do.body4.i.efx_mcdi_nvram_types.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #11
  br label %do.body12

efx_mcdi_nvram_types.exit:                        ; preds = %if.end.i
  %8 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outbuf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not46 = icmp eq i32 %9, 0
  br i1 %cmp.not46, label %efx_mcdi_nvram_types.exit.cleanup_crit_edge, label %while.body.preheader

efx_mcdi_nvram_types.exit.cleanup_crit_edge:      ; preds = %efx_mcdi_nvram_types.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %efx_mcdi_nvram_types.exit
  %10 = call i32 @llvm.bswap.i32(i32 %9) #11
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.preheader
  %type.048 = phi i32 [ %inc, %if.end7.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %nvram_types.147 = phi i32 [ %shr, %if.end7.while.body_crit_edge ], [ %10, %while.body.preheader ]
  %and = and i32 %nvram_types.147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %while.body.if.end7_crit_edge, label %if.then2

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then2:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i33) #11
  %11 = ptrtoint ptr %outbuf.i33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %outbuf.i33, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %type.048) #11
  %13 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %inbuf.i, align 4
  %call.i.i34 = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 76, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef nonnull %outbuf.i33, i32 noundef 4, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool.not.i35, label %if.end.i36, label %if.then2.do.body_crit_edge

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i36:                                       ; preds = %if.then2
  %14 = ptrtoint ptr %outbuf.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbuf.i33, align 4
  %16 = and i32 %15, -33554433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %switch.selectcmp.i = icmp eq i32 %16, 0
  br i1 %switch.selectcmp.i, label %efx_mcdi_nvram_test.exit, label %if.end.i36.do.body_crit_edge

if.end.i36.do.body_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

efx_mcdi_nvram_test.exit:                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i33) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  br label %if.end7

if.end7:                                          ; preds = %efx_mcdi_nvram_test.exit, %while.body.if.end7_crit_edge
  %inc = add nuw nsw i32 %type.048, 1
  %shr = lshr i32 %nvram_types.147, 1
  %cmp.not = icmp ult i32 %nvram_types.147, 2
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end.i36.do.body_crit_edge, %if.then2.do.body_crit_edge
  %retval.0.i37.ph = phi i32 [ -5, %if.end.i36.do.body_crit_edge ], [ %call.i.i34, %if.then2.do.body_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i33) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.do.body12_crit_edge, label %if.then10

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.efx_mcdi_nvram_test_all, i32 noundef %type.048) #15
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %do.body.do.body12_crit_edge, %efx_mcdi_nvram_types.exit.thread
  %rc.0 = phi i32 [ %retval.0.i37.ph, %if.then10 ], [ %retval.0.i37.ph, %do.body.do.body12_crit_edge ], [ %rc.0.i, %efx_mcdi_nvram_types.exit.thread ]
  %msg_enable13 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %21 = ptrtoint ptr %msg_enable13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable13, align 4
  %and14 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body12.cleanup_crit_edge, label %if.then16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev17 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %23 = ptrtoint ptr %net_dev17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev17, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.efx_mcdi_nvram_test_all, i32 noundef %rc.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %efx_mcdi_nvram_types.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.then16 ], [ %rc.0, %do.body12.cleanup_crit_edge ], [ 0, %efx_mcdi_nvram_types.exit.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_exit_assertion(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #11
  %0 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777216, ptr %inbuf, align 4
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 61, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -5
  %spec.store.select = select i1 %cmp, i32 0, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then5

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select)
  %cmp8.i = icmp eq i32 %spec.store.select, -1
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %1 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_enable.i, align 4
  %and11.i = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %cmp8.i, label %do.body10.i, label %do.body22.i

do.body10.i:                                      ; preds = %if.then5
  br i1 %tobool.not.i, label %do.body10.i.if.end6_crit_edge, label %do.body13.i

do.body10.i.if.end6_crit_edge:                    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.body13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_exit_assertion, %if.then17.i)) #11
          to label %if.end6 [label %if.then17.i], !srcloc !160

if.then17.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %3 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef 61, i32 noundef 4, i32 noundef -1, i32 noundef 0, i32 noundef 0) #11
  br label %if.end6

do.body22.i:                                      ; preds = %if.then5
  br i1 %tobool.not.i, label %do.body22.i.if.end6_crit_edge, label %if.then26.i

do.body22.i.if.end6_crit_edge:                    ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev27.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %5 = ptrtoint ptr %net_dev27.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev27.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.14, i32 noundef 61, i32 noundef 4, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 0) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then26.i, %do.body22.i.if.end6_crit_edge, %if.then17.i, %do.body13.i, %do.body10.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #11
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_set_id_led(ptr noundef %efx, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %mode)
  %1 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %inbuf, align 4
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 43, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #11
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_mcdi_map_reset_reason(i32 noundef %reason) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_reset(ptr noundef %efx, i32 noundef %method) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i29 = alloca [1 x %union.efx_dword], align 4
  %inbuf.i = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %method)
  %cmp = icmp eq i32 %method, 14
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %call = tail call i32 @pci_reset_function(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %2 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcdi, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.efx_mcdi_iface, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call i32 @efx_mcdi_handle_assertion(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %5 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %method, label %if.else17 [
    i32 5, label %if.end11.cleanup_crit_edge
    i32 3, label %if.then15
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i) #11
  %6 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %inbuf.i, align 4
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 61, ptr noundef nonnull %inbuf.i, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp eq i32 %call.i.i, 0
  %spec.store.select.i = select i1 %cmp5.i, i32 -5, i32 %call.i.i
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %spec.store.select.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i) #11
  br label %cleanup

if.else17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf.i29) #11
  %7 = ptrtoint ptr %inbuf.i29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %inbuf.i29, align 4
  %call.i.i30 = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 32, ptr noundef nonnull %inbuf.i29, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf.i29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then15, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.then15 ], [ %call.i.i30, %if.else17 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reset_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_wol_filter_set_magic(ptr noundef %efx, ptr nocapture noundef readonly %mac, ptr nocapture noundef writeonly %id_out) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [48 x %union.efx_dword], align 4
  %outbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %inbuf.i) #11
  %0 = getelementptr inbounds i8, ptr %inbuf.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 180)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i) #11
  %2 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %outbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #11
  %3 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen.i, align 4, !annotation !158
  %add.ptr.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %add.ptr.i, align 4
  %5 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %inbuf.i, align 4
  %add.ptr9.i = getelementptr inbounds i8, ptr %inbuf.i, i32 8
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac, align 4
  %8 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr9.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %0, align 4
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 50, ptr noundef nonnull %inbuf.i, i32 noundef 192, ptr noundef nonnull %outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fail.i_crit_edge

entry.fail.i_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

if.end.i:                                         ; preds = %entry
  %12 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i = icmp ult i32 %13, 4
  br i1 %cmp.i, label %if.end.i.fail.i_crit_edge, label %if.end14.i

if.end.i.fail.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbuf.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = ptrtoint ptr %id_out to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %id_out, align 4
  br label %efx_mcdi_wol_filter_set.exit

fail.i:                                           ; preds = %if.end.i.fail.i_crit_edge, %entry.fail.i_crit_edge
  %rc.0.i = phi i32 [ %call.i.i, %entry.fail.i_crit_edge ], [ -5, %if.end.i.fail.i_crit_edge ]
  %18 = ptrtoint ptr %id_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %id_out, align 4
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and19.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %fail.i.efx_mcdi_wol_filter_set.exit_crit_edge, label %if.then21.i

fail.i.efx_mcdi_wol_filter_set.exit_crit_edge:    ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_wol_filter_set.exit

if.then21.i:                                      ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.efx_mcdi_wol_filter_set, i32 noundef %rc.0.i) #15
  br label %efx_mcdi_wol_filter_set.exit

efx_mcdi_wol_filter_set.exit:                     ; preds = %if.then21.i, %fail.i.efx_mcdi_wol_filter_set.exit_crit_edge, %if.end14.i
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ %rc.0.i, %if.then21.i ], [ %rc.0.i, %fail.i.efx_mcdi_wol_filter_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %inbuf.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_wol_filter_get_magic(ptr noundef %efx, ptr nocapture noundef writeonly %id_out) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #11
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #11
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !158
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 69, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end2

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outbuf, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %id_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id_out, align 4
  br label %cleanup

fail:                                             ; preds = %if.end.fail_crit_edge, %entry.fail_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.fail_crit_edge ], [ -5, %if.end.fail_crit_edge ]
  %8 = ptrtoint ptr %id_out to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %id_out, align 4
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and4 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %fail.cleanup_crit_edge, label %if.then6

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.efx_mcdi_wol_filter_get_magic, i32 noundef %rc.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %fail.cleanup_crit_edge, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %rc.0, %if.then6 ], [ %rc.0, %fail.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_wol_filter_remove(ptr noundef %efx, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [1 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %id)
  %1 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %inbuf, align 4
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 51, ptr noundef nonnull %inbuf, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_flush_rxqs(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [32 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %inbuf) #11
  %0 = call ptr @memset(ptr %inbuf, i32 0, i32 128)
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %1 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel1, align 8
  %tobool.not81 = icmp eq ptr %2, null
  br i1 %tobool.not81, label %entry.for.end31_crit_edge, label %for.body.lr.ph

entry.for.end31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end31

for.body.lr.ph:                                   ; preds = %entry
  %rxq_flush_pending = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 117
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.083 = phi ptr [ %2, %for.body.lr.ph ], [ %18, %cond.end.for.body_crit_edge ]
  %count.082 = phi i32 [ 0, %for.body.lr.ph ], [ %count.3, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.083, i32 0, i32 45, i32 1
  %3 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  %rx_queue2 = getelementptr inbounds %struct.efx_channel, ptr %channel.083, i32 0, i32 45
  %tobool4.not78 = icmp eq ptr %rx_queue2, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool4.not78
  br i1 %or.cond, label %for.body.for.inc24_crit_edge, label %for.body5

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc24

for.body5:                                        ; preds = %for.body
  %flush_pending = getelementptr inbounds %struct.efx_channel, ptr %channel.083, i32 0, i32 45, i32 6
  %5 = ptrtoint ptr %flush_pending to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flush_pending, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %for.body5.for.inc24_crit_edge, label %if.then7

for.body5.for.inc24_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc24

if.then7:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flush_pending to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flush_pending, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rxq_flush_pending, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rxq_flush_pending, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rxq_flush_pending, ptr %rxq_flush_pending, i32 1, ptr elementtype(i32) %rxq_flush_pending) #11, !srcloc !183
  %mul = shl i32 %count.082, 2
  %add.ptr10 = getelementptr i8, ptr %inbuf, i32 %mul
  %channel.i = getelementptr %struct.efx_channel, ptr %channel.083, i32 0, i32 1
  %9 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr10, align 4
  %inc = add i32 %count.082, 1
  br label %for.inc24

for.inc24:                                        ; preds = %if.then7, %for.body5.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %count.3 = phi i32 [ %count.082, %for.body.for.inc24_crit_edge ], [ %inc, %if.then7 ], [ %count.082, %for.body5.for.inc24_crit_edge ]
  %channel25 = getelementptr inbounds %struct.efx_channel, ptr %channel.083, i32 0, i32 1
  %13 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel25, align 4
  %add = add i32 %14, 1
  %15 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp = icmp ult i32 %add, %16
  br i1 %cmp, label %cond.end, label %for.inc24.for.end31_crit_edge

for.inc24.for.end31_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end31

cond.end:                                         ; preds = %for.inc24
  %arrayidx30 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx30, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %cond.end.for.end31_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cond.end.for.end31_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end31

for.end31:                                        ; preds = %cond.end.for.end31_crit_edge, %for.inc24.for.end31_crit_edge, %entry.for.end31_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end31_crit_edge ], [ %count.3, %cond.end.for.end31_crit_edge ], [ %count.3, %for.inc24.for.end31_crit_edge ]
  %mul33 = shl i32 %count.0.lcssa, 2
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 39, ptr noundef nonnull %inbuf, i32 noundef %mul33, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp36 = icmp slt i32 %call.i, 0
  br i1 %cmp36, label %do.end49, label %for.end31.if.end55_crit_edge, !prof !168

for.end31.if.end55_crit_edge:                     ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

do.end49:                                         ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 2059, i32 noundef 9, ptr noundef null) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %for.end31.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %inbuf) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_wol_filter_reset(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 52, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_set_workaround(ptr noundef %efx, i32 noundef %type, i1 noundef zeroext %enabled, ptr noundef writeonly %flags) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [2 x %union.efx_dword], align 8
  %outbuf = alloca [1 x %union.efx_dword], align 4
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf) #11
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %outbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #11
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !158
  %2 = tail call i32 @llvm.bswap.i32(i32 %type)
  %3 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %inbuf, align 8
  %4 = select i1 %enabled, i32 16777216, i32 0
  %add.ptr12 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %5 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %add.ptr12, align 4
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 74, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef nonnull %outbuf, i32 noundef 4, ptr noundef nonnull %outlen, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp ne i32 %call.i, 0
  %tobool19.not = icmp eq ptr %flags, null
  %or.cond = or i1 %tobool19.not, %tobool18.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end21

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %entry
  %6 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %if.then23, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outbuf, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21.if.end27_crit_edge
  %storemerge = phi i32 [ %10, %if.then23 ], [ 0, %if.end21.if.end27_crit_edge ]
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_get_workarounds(ptr noundef %efx, ptr noundef writeonly %impl_out, ptr noundef writeonly %enabled_out) local_unnamed_addr #0 align 64 {
entry:
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #11
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #11
  %1 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %outlen, align 4, !annotation !158
  %call.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %efx, i32 noundef 89, ptr noundef null, i32 noundef 0, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef nonnull %outlen, i1 noundef zeroext false) #11
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call.i, label %entry.do.body31_crit_edge [
    i32 0, label %if.end
    i32 -38, label %do.body17
  ]

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body31

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp ult i32 %4, 8
  br i1 %cmp, label %if.end.do.body31_crit_edge, label %if.end2

if.end.do.body31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body31

if.end2:                                          ; preds = %if.end
  %tobool3.not = icmp eq ptr %impl_out, null
  br i1 %tobool3.not, label %if.end2.if.end6_crit_edge, label %if.then4

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outbuf, align 8
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %impl_out to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %impl_out, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end2.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %enabled_out, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %9 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr10, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %enabled_out to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %enabled_out, align 4
  br label %cleanup

do.body17:                                        ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and18 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.cleanup_crit_edge, label %do.body21

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_get_workarounds.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_get_workarounds, %if.then26)) #11
          to label %cleanup [label %if.then26], !srcloc !160

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %15 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_get_workarounds.__UNIQUE_ID_ddebug568, ptr noundef %16, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29, i32 noundef -38) #11
  br label %cleanup

do.body31:                                        ; preds = %if.end.do.body31_crit_edge, %entry.do.body31_crit_edge
  %rc.057 = phi i32 [ -5, %if.end.do.body31_crit_edge ], [ %call.i, %entry.do.body31_crit_edge ]
  %msg_enable32 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %17 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable32, align 4
  %and33 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body31.cleanup_crit_edge, label %if.then35

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev36 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %19 = ptrtoint ptr %net_dev36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev36, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29, i32 noundef %rc.057) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body31.cleanup_crit_edge, %if.then26, %do.body21, %do.body17.cleanup_crit_edge, %if.then8, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end6.cleanup_crit_edge ], [ %rc.057, %do.body31.cleanup_crit_edge ], [ %rc.057, %if.then35 ], [ -38, %do.body17.cleanup_crit_edge ], [ -38, %if.then26 ], [ -38, %do.body21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_mtd_read(ptr nocapture noundef readonly %mtd, i64 noundef %start, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef writeonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  %outbuf.i = alloca [32 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %start
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %4 = tail call i64 @llvm.smin.i64(i64 %add, i64 %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %start)
  %cmp338 = icmp sgt i64 %4, %start
  br i1 %cmp338, label %while.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %nvram_type = getelementptr i8, ptr %mtd, i32 1458
  %add.ptr9.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %add.ptr19.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %add.ptr25.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.040 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr16, %if.end.while.body_crit_edge ]
  %offset.039 = phi i64 [ %start, %while.body.lr.ph ], [ %add15, %if.end.while.body_crit_edge ]
  %sub = sub i64 %4, %offset.039
  %conv5 = trunc i64 %sub to i32
  %5 = call i32 @llvm.umin.i32(i32 %conv5, i32 128)
  %6 = ptrtoint ptr %nvram_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nvram_type, align 2
  %conv13 = zext i16 %7 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %outbuf.i) #11
  %8 = call ptr @memset(ptr %outbuf.i, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #11
  %9 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %outlen.i, align 4, !annotation !158
  %10 = call i32 @llvm.bswap.i32(i32 %conv13) #11
  %11 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %inbuf.i, align 4
  %conv3.i = trunc i64 %offset.039 to i32
  %12 = call i32 @llvm.bswap.i32(i32 %conv3.i) #11
  %13 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr9.i, align 4
  %14 = shl nuw i32 %5, 24
  %15 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr19.i, align 4
  %16 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %add.ptr25.i, align 4
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %1, i32 noundef 57, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef nonnull %outbuf.i, i32 noundef 128, ptr noundef nonnull %outlen.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %efx_mcdi_nvram_read.exit

efx_mcdi_nvram_read.exit:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #11
  br label %out

if.end:                                           ; preds = %while.body
  %17 = call ptr @memcpy(ptr %buffer.addr.040, ptr %outbuf.i, i32 %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #11
  %conv14 = zext i32 %5 to i64
  %add15 = add i64 %offset.039, %conv14
  %add.ptr16 = getelementptr i8, ptr %buffer.addr.040, i32 %5
  %cmp3 = icmp sgt i64 %4, %add15
  br i1 %cmp3, label %if.end.while.body_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %if.end.out_crit_edge, %efx_mcdi_nvram_read.exit, %entry.out_crit_edge
  %offset.037 = phi i64 [ %offset.039, %efx_mcdi_nvram_read.exit ], [ %start, %entry.out_crit_edge ], [ %add15, %if.end.out_crit_edge ]
  %rc.1 = phi i32 [ %call.i.i, %efx_mcdi_nvram_read.exit ], [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  %sub17 = sub i64 %offset.037, %start
  %conv18 = trunc i64 %sub17 to i32
  %18 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv18, ptr %retlen, align 4
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_mtd_erase(ptr nocapture noundef %mtd, i64 noundef %start, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i37 = alloca [3 x %union.efx_dword], align 4
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %2 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erasesize, align 8
  %sub = add i32 %3, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %start
  %conv1 = zext i32 %len to i64
  %add = add i64 %conv1, %start
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %6 = tail call i64 @llvm.smin.i64(i64 %add, i64 %5)
  %updating = getelementptr i8, ptr %mtd, i32 1456
  %7 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %updating, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %nvram_type = getelementptr i8, ptr %mtd, i32 1458
  %9 = ptrtoint ptr %nvram_type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nvram_type, align 2
  %conv6 = zext i16 %10 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv6) #11
  %12 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %inbuf.i, align 8
  %add.ptr4.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %13 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %add.ptr4.i, align 4
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %1, i32 noundef 56, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %updating to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %updating, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %nvram_type13 = getelementptr i8, ptr %mtd, i32 1458
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %6)
  %cmp1139 = icmp slt i64 %and, %6
  br i1 %cmp1139, label %while.body.lr.ph, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %if.end10
  %add.ptr9.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i37, i32 1
  %15 = call i32 @llvm.bswap.i32(i32 %3) #11
  %add.ptr19.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i37, i32 2
  %conv19 = zext i32 %3 to i64
  br label %while.body

while.cond:                                       ; preds = %while.body
  %add20 = add i64 %offset.040, %conv19
  %cmp11 = icmp slt i64 %add20, %6
  br i1 %cmp11, label %while.cond.while.body_crit_edge, label %while.cond.out_crit_edge

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %offset.040 = phi i64 [ %and, %while.body.lr.ph ], [ %add20, %while.cond.while.body_crit_edge ]
  %16 = ptrtoint ptr %nvram_type13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nvram_type13, align 2
  %conv14 = zext i16 %17 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i37) #11
  %18 = call i32 @llvm.bswap.i32(i32 %conv14) #11
  %19 = ptrtoint ptr %inbuf.i37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %inbuf.i37, align 4
  %conv3.i = trunc i64 %offset.040 to i32
  %20 = call i32 @llvm.bswap.i32(i32 %conv3.i) #11
  %21 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %add.ptr9.i, align 4
  %22 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %add.ptr19.i, align 4
  %call.i.i38 = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %1, i32 noundef 59, ptr noundef nonnull %inbuf.i37, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool16.not = icmp eq i32 %call.i.i38, 0
  br i1 %tobool16.not, label %while.cond, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %while.body.out_crit_edge, %while.cond.out_crit_edge, %if.end10.out_crit_edge, %if.then.out_crit_edge
  %rc.2 = phi i32 [ %call.i.i, %if.then.out_crit_edge ], [ 0, %if.end10.out_crit_edge ], [ %call.i.i38, %while.body.out_crit_edge ], [ 0, %while.cond.out_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_mtd_write(ptr nocapture noundef %mtd, i64 noundef %start, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i51 = alloca [35 x %union.efx_dword], align 4
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %start
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %4 = tail call i64 @llvm.smin.i64(i64 %add, i64 %3)
  %updating = getelementptr i8, ptr %mtd, i32 1456
  %5 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %updating, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %nvram_type = getelementptr i8, ptr %mtd, i32 1458
  %7 = ptrtoint ptr %nvram_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nvram_type, align 2
  %conv3 = zext i16 %8 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3) #11
  %10 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %inbuf.i, align 8
  %add.ptr4.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %11 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %add.ptr4.i, align 4
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %1, i32 noundef 56, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %updating to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %updating, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %start)
  %cmp853 = icmp sgt i64 %4, %start
  br i1 %cmp853, label %while.body.lr.ph, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %if.end7
  %nvram_type18 = getelementptr i8, ptr %mtd, i32 1458
  %13 = getelementptr inbounds i8, ptr %inbuf.i51, i32 12
  %add.ptr9.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i51, i32 1
  %add.ptr19.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i51, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.055 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr26, %if.end23.while.body_crit_edge ]
  %offset.054 = phi i64 [ %start, %while.body.lr.ph ], [ %add25, %if.end23.while.body_crit_edge ]
  %sub = sub i64 %4, %offset.054
  %conv10 = trunc i64 %sub to i32
  %14 = call i32 @llvm.umin.i32(i32 %conv10, i32 128)
  %15 = ptrtoint ptr %nvram_type18 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nvram_type18, align 2
  %conv19 = zext i16 %16 to i32
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %inbuf.i51) #11
  %17 = call i32 @llvm.bswap.i32(i32 %conv19) #11
  %18 = ptrtoint ptr %inbuf.i51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %inbuf.i51, align 4
  %conv3.i = trunc i64 %offset.054 to i32
  %19 = call i32 @llvm.bswap.i32(i32 %conv3.i) #11
  %20 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr9.i, align 4
  %21 = shl nuw i32 %14, 24
  %22 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %14)
  %23 = icmp ugt i32 %14, 127
  %24 = sub nuw nsw i32 128, %14
  %25 = select i1 %23, i32 0, i32 %24
  %26 = getelementptr i8, ptr %13, i32 %14
  %27 = call ptr @memset(ptr %26, i32 0, i32 %25)
  %28 = call ptr @memcpy(ptr %13, ptr %buffer.addr.055, i32 %14)
  %add29.i = add nuw nsw i32 %14, 15
  %and.i = and i32 %add29.i, 508
  %call.i.i52 = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %1, i32 noundef 58, ptr noundef nonnull %inbuf.i51, i32 noundef %and.i, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %inbuf.i51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool21.not = icmp eq i32 %call.i.i52, 0
  br i1 %tobool21.not, label %if.end23, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %while.body
  %conv24 = zext i32 %14 to i64
  %add25 = add i64 %offset.054, %conv24
  %add.ptr26 = getelementptr i8, ptr %buffer.addr.055, i32 %14
  %cmp8 = icmp sgt i64 %4, %add25
  br i1 %cmp8, label %if.end23.while.body_crit_edge, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

out:                                              ; preds = %if.end23.out_crit_edge, %while.body.out_crit_edge, %if.end7.out_crit_edge, %if.then.out_crit_edge
  %offset.1 = phi i64 [ %start, %if.then.out_crit_edge ], [ %start, %if.end7.out_crit_edge ], [ %offset.054, %while.body.out_crit_edge ], [ %add25, %if.end23.out_crit_edge ]
  %rc.2 = phi i32 [ %call.i.i, %if.then.out_crit_edge ], [ 0, %if.end7.out_crit_edge ], [ %call.i.i52, %while.body.out_crit_edge ], [ 0, %if.end23.out_crit_edge ]
  %sub27 = sub i64 %offset.1, %start
  %conv28 = trunc i64 %sub27 to i32
  %29 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv28, ptr %retlen, align 4
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_mcdi_mtd_sync(ptr nocapture noundef %mtd) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [3 x %union.efx_dword], align 4
  %outbuf.i = alloca [1 x %union.efx_dword], align 4
  %outlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %updating = getelementptr i8, ptr %mtd, i32 1456
  %0 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %updating, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = ptrtoint ptr %updating to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %updating, align 8
  %nvram_type = getelementptr i8, ptr %mtd, i32 1458
  %5 = ptrtoint ptr %nvram_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nvram_type, align 2
  %conv = zext i16 %6 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %inbuf.i) #11
  %7 = getelementptr inbounds i8, ptr %inbuf.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbuf.i) #11
  %9 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %outbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.i) #11
  %10 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %outlen.i, align 4, !annotation !158
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv) #11
  %12 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %inbuf.i, align 4
  %add.ptr4.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %13 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %add.ptr4.i, align 4
  %call.i.i = call fastcc i32 @_efx_mcdi_rpc_evb_retry(ptr noundef %3, i32 noundef 60, ptr noundef nonnull %inbuf.i, i32 noundef 12, ptr noundef nonnull %outbuf.i, i32 noundef 4, ptr noundef nonnull %outlen.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.efx_mcdi_nvram_update_finish.exit_crit_edge

if.then.efx_mcdi_nvram_update_finish.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_nvram_update_finish.exit

land.lhs.true.i:                                  ; preds = %if.then
  %14 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i = icmp ugt i32 %15, 3
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.efx_mcdi_nvram_update_finish.exit_crit_edge

land.lhs.true.i.efx_mcdi_nvram_update_finish.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_nvram_update_finish.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %outbuf.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %17)
  %cmp14.not.i = icmp eq i32 %17, 16777216
  br i1 %cmp14.not.i, label %if.then.i.if.end23.i_crit_edge, label %do.body17.i

if.then.i.if.end23.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

do.body17.i:                                      ; preds = %if.then.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and18.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.if.end23.i_crit_edge, label %if.then20.i

do.body17.i.if.end23.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then20.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.63, i32 noundef %18) #15
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %do.body17.i.if.end23.i_crit_edge, %if.then.i.if.end23.i_crit_edge
  %switch.tableidx = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 11
  br i1 %23, label %switch.lookup, label %do.body26.i

do.body26.i:                                      ; preds = %if.end23.i
  %msg_enable27.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 22
  %24 = ptrtoint ptr %msg_enable27.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable27.i, align 4
  %and28.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body26.i.efx_mcdi_nvram_update_finish.exit_crit_edge, label %if.then30.i

do.body26.i.efx_mcdi_nvram_update_finish.exit_crit_edge: ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %efx_mcdi_nvram_update_finish.exit

if.then30.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev31.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 83
  %26 = ptrtoint ptr %net_dev31.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev31.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.64) #15
  br label %efx_mcdi_nvram_update_finish.exit

switch.lookup:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.efx_mcdi_mtd_sync, i32 0, i32 %switch.tableidx
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %efx_mcdi_nvram_update_finish.exit

efx_mcdi_nvram_update_finish.exit:                ; preds = %switch.lookup, %if.then30.i, %do.body26.i.efx_mcdi_nvram_update_finish.exit_crit_edge, %land.lhs.true.i.efx_mcdi_nvram_update_finish.exit_crit_edge, %if.then.efx_mcdi_nvram_update_finish.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i.i, %if.then.efx_mcdi_nvram_update_finish.exit_crit_edge ], [ 0, %land.lhs.true.i.efx_mcdi_nvram_update_finish.exit_crit_edge ], [ -5, %if.then30.i ], [ -5, %do.body26.i.efx_mcdi_nvram_update_finish.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %inbuf.i) #11
  br label %if.end

if.end:                                           ; preds = %efx_mcdi_nvram_update_finish.exit, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %rc.0.i, %efx_mcdi_nvram_update_finish.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_mcdi_mtd_rename(ptr nocapture noundef %part) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.efx_mtd_partition, ptr %part, i32 0, i32 1, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.efx_mtd_partition, ptr %part, i32 0, i32 4
  %type_name = getelementptr inbounds %struct.efx_mtd_partition, ptr %part, i32 0, i32 3
  %2 = ptrtoint ptr %type_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type_name, align 4
  %fw_subtype = getelementptr inbounds %struct.efx_mcdi_mtd_partition, ptr %part, i32 0, i32 3
  %4 = ptrtoint ptr %fw_subtype to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_subtype, align 4
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 36, ptr noundef nonnull @.str.30, ptr noundef %1, ptr noundef %3, i32 noundef %conv)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @efx_mcdi_complete_async(ptr noundef %mcdi, i1 noundef zeroext %timeout) unnamed_addr #0 align 64 {
entry:
  %errbuf = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %errbuf) #11
  %2 = ptrtoint ptr %errbuf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %errbuf, align 8
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %3 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 2, i32 4) #11, !srcloc !164
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult1.i)
  %cmp.not = icmp eq i32 %asmresult1.i, 2
  br i1 %cmp.not, label %if.end, label %__cmpxchg.exit.cleanup_crit_edge

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %__cmpxchg.exit
  %iface_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %iface_lock) #11
  br i1 %timeout, label %if.end18.thread, label %if.then21

if.end18.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %seqno = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 7
  %4 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seqno, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %seqno, align 4
  %credits = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 6
  %6 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %credits, align 4
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr %credits, align 4
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock) #11
  br label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %resprc = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 8
  %8 = ptrtoint ptr %resprc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resprc, align 4
  %resp_hdr_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 10
  %10 = ptrtoint ptr %resp_hdr_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp_hdr_len, align 4
  %resp_data_len = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 11
  %12 = ptrtoint ptr %resp_data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resp_data_len, align 4
  tail call void @_raw_spin_unlock(ptr noundef %iface_lock) #11
  %async_timer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 14
  %call22 = tail call i32 @del_timer_sync(ptr noundef %async_timer) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.thread
  %hdr_len.0116 = phi i32 [ 0, %if.end18.thread ], [ %11, %if.then21 ]
  %data_len.0115 = phi i32 [ 0, %if.end18.thread ], [ %13, %if.then21 ]
  %rc.0114 = phi i32 [ -110, %if.end18.thread ], [ %9, %if.then21 ]
  %async_lock = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %async_lock) #11
  %async_list = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 13
  %14 = ptrtoint ptr %async_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %async_list, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_del.exit_crit_edge

if.end23.list_del.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end23.list_del.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %async_lock) #11
  %add.ptr26 = getelementptr %struct.efx_mcdi_async_param, ptr %15, i32 1
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 4
  %mcdi_read_response = getelementptr inbounds %struct.efx_nic_type, ptr %25, i32 0, i32 40
  %26 = ptrtoint ptr %mcdi_read_response to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mcdi_read_response, align 8
  %outlen = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %15, i32 0, i32 3
  %28 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %outlen, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %data_len.0115)
  tail call void %27(ptr noundef %1, ptr noundef %add.ptr26, i32 noundef %hdr_len.0116, i32 noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0114)
  %tobool30.not = icmp eq i32 %rc.0114, 0
  %or.cond = select i1 %timeout, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %list_del.exit.if.end43_crit_edge, label %land.lhs.true31

list_del.exit.if.end43_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true31:                                  ; preds = %list_del.exit
  %quiet = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %15, i32 0, i32 4
  %31 = ptrtoint ptr %quiet to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %quiet, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool32.not = icmp eq i8 %32, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true31.if.end43_crit_edge

land.lhs.true31.if.end43_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then33:                                        ; preds = %land.lhs.true31
  %33 = tail call i32 @llvm.umin.i32(i32 %data_len.0115, i32 8)
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type, align 4
  %mcdi_read_response41 = getelementptr inbounds %struct.efx_nic_type, ptr %35, i32 0, i32 40
  %36 = ptrtoint ptr %mcdi_read_response41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mcdi_read_response41, align 8
  call void %37(ptr noundef %1, ptr noundef nonnull %errbuf, i32 noundef %hdr_len.0116, i32 noundef 8) #11
  %cmd = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %15, i32 0, i32 1
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmd, align 4
  %inlen = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %15, i32 0, i32 2
  %40 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i = icmp ugt i32 %33, 3
  br i1 %cmp.i, label %if.end.i, label %if.then33.do.body.i110_crit_edge

if.then33.do.body.i110_crit_edge:                 ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i110

if.end.i:                                         ; preds = %if.then33
  %42 = ptrtoint ptr %errbuf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %errbuf, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp1.i = icmp ugt i32 %33, 7
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.do.body.i110_crit_edge

if.end.i.do.body.i110_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i110

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i = getelementptr inbounds %union.efx_dword, ptr %errbuf, i32 1
  %45 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr3.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #11
  br label %do.body.i110

do.body.i110:                                     ; preds = %if.then2.i, %if.end.i.do.body.i110_crit_edge, %if.then33.do.body.i110_crit_edge
  %code.047.i = phi i32 [ %44, %if.then2.i ], [ %44, %if.end.i.do.body.i110_crit_edge ], [ 0, %if.then33.do.body.i110_crit_edge ]
  %err_arg.0.i = phi i32 [ %47, %if.then2.i ], [ 0, %if.end.i.do.body.i110_crit_edge ], [ 0, %if.then33.do.body.i110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0114)
  %cmp8.i = icmp eq i32 %rc.0114, -1
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %48 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable.i, align 4
  %and11.i = and i32 %49, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i109 = icmp eq i32 %and11.i, 0
  br i1 %cmp8.i, label %do.body10.i, label %do.body22.i

do.body10.i:                                      ; preds = %do.body.i110
  br i1 %tobool.not.i109, label %do.body10.i.if.end43_crit_edge, label %do.body13.i

do.body10.i.if.end43_crit_edge:                   ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.body13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_complete_async, %if.then17.i)) #11
          to label %if.end43 [label %if.then17.i], !srcloc !160

if.then17.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %50 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, ptr noundef %51, ptr noundef nonnull @.str.14, i32 noundef %39, i32 noundef %41, i32 noundef -1, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #11
  br label %if.end43

do.body22.i:                                      ; preds = %do.body.i110
  br i1 %tobool.not.i109, label %do.body22.i.if.end43_crit_edge, label %if.then26.i

do.body22.i.if.end43_crit_edge:                   ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then26.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev27.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %52 = ptrtoint ptr %net_dev27.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net_dev27.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.14, i32 noundef %39, i32 noundef %41, i32 noundef %rc.0114, i32 noundef %code.047.i, i32 noundef %err_arg.0.i) #15
  br label %if.end43

if.end43:                                         ; preds = %if.then26.i, %do.body22.i.if.end43_crit_edge, %if.then17.i, %do.body13.i, %do.body10.i.if.end43_crit_edge, %land.lhs.true31.if.end43_crit_edge, %list_del.exit.if.end43_crit_edge
  %complete = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %15, i32 0, i32 5
  %54 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %complete, align 4
  %tobool44.not = icmp eq ptr %55, null
  br i1 %tobool44.not, label %if.end43.if.end54_crit_edge, label %if.then45

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %cookie = getelementptr inbounds %struct.efx_mcdi_async_param, ptr %15, i32 0, i32 6
  %56 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cookie, align 4
  %58 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %outlen, align 4
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 %data_len.0115)
  call void %55(ptr noundef %1, i32 noundef %57, i32 noundef %rc.0114, ptr noundef %add.ptr26, i32 noundef %60) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.end43.if.end54_crit_edge
  call void @kfree(ptr noundef %15) #11
  call fastcc void @efx_mcdi_release(ptr noundef %mcdi)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %__cmpxchg.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %errbuf) #11
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_efx_mcdi_rpc(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, ptr noundef %raw_rc) unnamed_addr #0 align 64 {
entry:
  %proxy_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proxy_handle) #11
  %0 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %proxy_handle, align 4
  %tobool.not = icmp ne ptr %inbuf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen)
  %tobool1.not = icmp ne i32 %inlen, 0
  %or.cond.not = and i1 %tobool.not, %tobool1.not
  %cmp = icmp eq ptr %inbuf, %outbuf
  %or.cond1 = and i1 %or.cond.not, %cmp
  br i1 %or.cond1, label %do.end, label %if.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 812, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end19:                                         ; preds = %entry
  %mcdi.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %1 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mcdi.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %3 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type.i.i, align 4
  %mcdi_max_ver.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %4, i32 0, i32 135
  %5 = ptrtoint ptr %mcdi_max_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcdi_max_ver.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp slt i32 %6, 0
  br i1 %cmp.i.i, label %if.end19.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3.i.i = icmp ult i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cmd)
  %cmp4.i.i = icmp ugt i32 %cmd, 127
  %or.cond.i.i = and i1 %cmp4.i.i, %cmp3.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inlen)
  %cmp5.i.i = icmp ugt i32 %inlen, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %inlen)
  %cmp11.i.i = icmp ugt i32 %inlen, 252
  %or.cond17.i.i = and i1 %cmp11.i.i, %cmp3.i.i
  %or.cond.i = select i1 %cmp5.i.i, i1 true, i1 %or.cond17.i.i
  br i1 %or.cond.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  %mc_bist_for_other_fn.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 81
  %7 = ptrtoint ptr %mc_bist_for_other_fn.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mc_bist_for_other_fn.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.efx_mcdi_iface, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %if.end4.i.cleanup_crit_edge, label %if.end22

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end4.i
  tail call fastcc void @efx_mcdi_acquire_sync(ptr noundef %2) #11
  tail call fastcc void @efx_mcdi_send_request(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen) #11
  %call24 = call fastcc i32 @_efx_mcdi_rpc_finish(ptr noundef %efx, i32 noundef %cmd, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, i1 noundef zeroext true, ptr noundef nonnull %proxy_handle, ptr noundef %raw_rc)
  %11 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %proxy_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  %13 = ptrtoint ptr %mcdi.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcdi.i.i, align 4
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then26.do.end48_crit_edge, label %do.body31

if.then26.do.end48_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

do.body31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_efx_mcdi_rpc.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc, %if.then42)) #11
          to label %do.end48 [label %if.then42], !srcloc !160

if.then42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev, align 4
  %19 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %proxy_handle, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_efx_mcdi_rpc.__UNIQUE_ID_ddebug539, ptr noundef %18, ptr noundef nonnull @.str.34, i32 noundef %20) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then42, %do.body31, %if.then26.do.end48_crit_edge
  %21 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %proxy_handle, align 4
  %call50 = call fastcc i32 @efx_mcdi_proxy_wait(ptr noundef %efx, i32 noundef %22)
  %23 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call50, label %do.body109 [
    i32 0, label %do.body53
    i32 -1, label %do.body83
  ]

do.body53:                                        ; preds = %do.end48
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and55 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body53.do.end77_crit_edge, label %do.body58

do.body53.do.end77_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end77

do.body58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_efx_mcdi_rpc.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc, %if.then70)) #11
          to label %do.end77 [label %if.then70], !srcloc !160

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev71 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %26 = ptrtoint ptr %net_dev71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev71, align 4
  %28 = ptrtoint ptr %proxy_handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %proxy_handle, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_efx_mcdi_rpc.__UNIQUE_ID_ddebug540, ptr noundef %27, ptr noundef nonnull @.str.35, i32 noundef %29) #11
  br label %do.end77

do.end77:                                         ; preds = %if.then70, %do.body58, %do.body53.do.end77_crit_edge
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %14, i32 0, i32 1
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %state, align 4
  call fastcc void @efx_mcdi_send_request(ptr noundef %efx, i32 noundef %cmd, ptr noundef %inbuf, i32 noundef %inlen)
  %call79 = call fastcc i32 @_efx_mcdi_rpc_finish(ptr noundef %efx, i32 noundef %cmd, i32 noundef %inlen, ptr noundef %outbuf, i32 noundef %outlen, ptr noundef %outlen_actual, i1 noundef zeroext true, ptr noundef null, ptr noundef %raw_rc)
  br label %cleanup

do.body83:                                        ; preds = %do.end48
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and85 = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body83.if.end124_crit_edge, label %do.body88

do.body83.if.end124_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

do.body88:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_efx_mcdi_rpc.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efx_mcdi_rpc, %if.then100)) #11
          to label %do.end120 [label %if.then100], !srcloc !160

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev101 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %33 = ptrtoint ptr %net_dev101 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev101, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @_efx_mcdi_rpc.__UNIQUE_ID_ddebug541, ptr noundef %34, ptr noundef nonnull @.str.36, i32 noundef %cmd, i32 noundef -1) #11
  br label %if.end124

do.body109:                                       ; preds = %do.end48
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 4
  %and111 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body109.do.end120_crit_edge, label %if.then113

do.body109.do.end120_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end120

if.then113:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev114 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %37 = ptrtoint ptr %net_dev114 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_dev114, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.36, i32 noundef %cmd, i32 noundef %call50) #15
  br label %do.end120

do.end120:                                        ; preds = %if.then113, %do.body109.do.end120_crit_edge, %do.body88
  %call50.off = add i32 %call50, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call50.off)
  %switch = icmp ult i32 %call50.off, 2
  br i1 %switch, label %if.then123, label %do.end120.if.end124_crit_edge

do.end120.if.end124_crit_edge:                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then123:                                       ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #13
  call void @efx_schedule_reset(ptr noundef %efx, i32 noundef 13) #11
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %do.end120.if.end124_crit_edge, %if.then100, %do.body83.if.end124_crit_edge
  call fastcc void @efx_mcdi_release(ptr noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end77, %if.end22.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call24, %if.end22.cleanup_crit_edge ], [ %call79, %do.end77 ], [ %call50, %if.end124 ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -90, %if.end.i.i.cleanup_crit_edge ], [ -100, %if.end4.i.cleanup_crit_edge ], [ -100, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proxy_handle) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_mcdi_proxy_wait(ptr nocapture noundef readonly %efx, i32 noundef %handle) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 786) #11
  %proxy_rx_handle = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %proxy_rx_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proxy_rx_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.rhs, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

lor.rhs:                                          ; preds = %entry
  %proxy_rx_status = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %proxy_rx_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proxy_rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %5)
  %cmp4 = icmp eq i32 %5, -4
  br i1 %cmp4, label %lor.rhs.if.else_crit_edge, label %if.then12

lor.rhs.if.else_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then12:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %proxy_rx_wq = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 19
  %call1423 = call i32 @prepare_to_wait_event(ptr noundef %proxy_rx_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %7 = ptrtoint ptr %proxy_rx_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %proxy_rx_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp17.not24 = icmp eq i32 %8, 0
  br i1 %cmp17.not24, label %if.then12.lor.end21_crit_edge, label %if.then12.if.end42.thread_crit_edge

if.then12.if.end42.thread_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.thread

if.then12.lor.end21_crit_edge:                    ; preds = %if.then12
  br label %lor.end21

lor.end21.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool26.not1 = icmp eq i32 %call39, 0
  br i1 %tobool26.not1, label %if.end42.thread12, label %lor.end21.thread.if.end42_crit_edge

lor.end21.thread.if.end42_crit_edge:              ; preds = %lor.end21.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

lor.end21:                                        ; preds = %cleanup.lor.end21_crit_edge, %if.then12.lor.end21_crit_edge
  %__ret13.025 = phi i32 [ %call39, %cleanup.lor.end21_crit_edge ], [ 1000, %if.then12.lor.end21_crit_edge ]
  %9 = ptrtoint ptr %proxy_rx_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %proxy_rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %10)
  %cmp20 = icmp eq i32 %10, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.025)
  %tobool26.not.le = icmp eq i32 %__ret13.025, 0
  br i1 %cmp20, label %if.end42.loopexit.split.loop.exit18, label %11

11:                                               ; preds = %lor.end21
  br i1 %tobool26.not.le, label %if.end42.thread33, label %cleanup

if.end42.thread33:                                ; preds = %11
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %proxy_rx_wq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.body46

cleanup:                                          ; preds = %11
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret13.025) #11
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %proxy_rx_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %12 = ptrtoint ptr %proxy_rx_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %proxy_rx_handle, align 4
  %cmp17.not = icmp eq i32 %13, 0
  br i1 %cmp17.not, label %cleanup.lor.end21_crit_edge, label %lor.end21.thread

cleanup.lor.end21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end21

if.end42.thread12:                                ; preds = %lor.end21.thread
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %proxy_rx_wq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.else

if.end42.loopexit.split.loop.exit18:              ; preds = %lor.end21
  br i1 %tobool26.not.le, label %if.end42.loopexit.split.loop.exit18.if.end42.thread_crit_edge, label %if.end42.loopexit.split.loop.exit18.if.end42_crit_edge

if.end42.loopexit.split.loop.exit18.if.end42_crit_edge: ; preds = %if.end42.loopexit.split.loop.exit18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end42.loopexit.split.loop.exit18.if.end42.thread_crit_edge: ; preds = %if.end42.loopexit.split.loop.exit18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.thread

if.end42.thread:                                  ; preds = %if.end42.loopexit.split.loop.exit18.if.end42.thread_crit_edge, %if.then12.if.end42.thread_crit_edge
  call void @finish_wait(ptr noundef %proxy_rx_wq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.else

if.end42:                                         ; preds = %if.end42.loopexit.split.loop.exit18.if.end42_crit_edge, %lor.end21.thread.if.end42_crit_edge
  %__ret13.2.ph = phi i32 [ %call39, %lor.end21.thread.if.end42_crit_edge ], [ %__ret13.025, %if.end42.loopexit.split.loop.exit18.if.end42_crit_edge ]
  call void @finish_wait(ptr noundef %proxy_rx_wq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.2.ph)
  %cmp44 = icmp slt i32 %__ret13.2.ph, 1
  br i1 %cmp44, label %if.end42.do.body46_crit_edge, label %if.end42.if.else_crit_edge

if.end42.if.else_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end42.do.body46_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

do.body46:                                        ; preds = %if.end42.do.body46_crit_edge, %if.end42.thread33
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %do.body46.cleanup80_crit_edge, label %do.body49

do.body46.cleanup80_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

do.body49:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_mcdi_proxy_wait.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_mcdi_proxy_wait, %if.then57)) #11
          to label %cleanup80 [label %if.then57], !srcloc !160

if.then57:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %16 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_mcdi_proxy_wait.__UNIQUE_ID_ddebug538, ptr noundef %17, ptr noundef nonnull @.str.38, i32 noundef %handle) #11
  br label %cleanup80

if.else:                                          ; preds = %if.end42.if.else_crit_edge, %if.end42.thread, %if.end42.thread12, %lor.rhs.if.else_crit_edge, %entry.if.else_crit_edge
  %18 = ptrtoint ptr %proxy_rx_handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %proxy_rx_handle, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %handle)
  %cmp65.not = icmp eq i32 %19, %handle
  br i1 %cmp65.not, label %if.end78, label %do.body67

do.body67:                                        ; preds = %if.else
  %msg_enable68 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %20 = ptrtoint ptr %msg_enable68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable68, align 4
  %and69 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body67.cleanup80_crit_edge, label %if.then71

do.body67.cleanup80_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.then71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev72 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %22 = ptrtoint ptr %net_dev72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev72, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.39, i32 noundef %19, i32 noundef %handle) #15
  br label %cleanup80

if.end78:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %proxy_rx_status79 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %proxy_rx_status79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %proxy_rx_status79, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %if.end78, %if.then71, %do.body67.cleanup80_crit_edge, %if.then57, %do.body49, %do.body46.cleanup80_crit_edge
  %retval.0 = phi i32 [ %25, %if.end78 ], [ -110, %if.then57 ], [ -110, %do.body46.cleanup80_crit_edge ], [ -22, %if.then71 ], [ -22, %do.body67.cleanup80_crit_edge ], [ -110, %do.body49 ]
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
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @efx_mcdi_acquire_async(ptr noundef %mcdi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_mcdi_iface, ptr %mcdi, i32 0, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state, i32 0, i32 2) #11, !srcloc !164
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp = icmp eq i32 %asmresult1.i, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_mcdi_read_response_header(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %union.efx_dword, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mcdi.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %0 = ptrtoint ptr %mcdi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcdi.i, align 4
  %logging_buffer = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %logging_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %logging_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr) #11
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hdr, align 4, !annotation !158
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type, align 4
  %mcdi_read_response = getelementptr inbounds %struct.efx_nic_type, ptr %6, i32 0, i32 40
  %7 = ptrtoint ptr %mcdi_read_response to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mcdi_read_response, align 8
  call void %8(ptr noundef %efx, ptr noundef nonnull %hdr, i32 noundef 0, i32 noundef 4) #11
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hdr, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %shr = lshr i32 %11, 16
  %and = and i32 %shr, 15
  %and2 = and i32 %11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 127
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %mcdi_read_response10 = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 40
  %14 = ptrtoint ptr %mcdi_read_response10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcdi_read_response10, align 8
  call void %15(ptr noundef %efx, ptr noundef nonnull %hdr, i32 noundef 4, i32 noundef 4) #11
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hdr, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink276 = phi i32 [ %18, %if.else ], [ %10, %entry.if.end_crit_edge ]
  %.sink275 = phi i32 [ 1023, %if.else ], [ 255, %entry.if.end_crit_edge ]
  %.sink = phi i32 [ 8, %if.else ], [ 4, %entry.if.end_crit_edge ]
  %shr13 = lshr i32 %.sink276, 16
  %and14 = and i32 %shr13, %.sink275
  %19 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %19, align 4
  %21 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and14, ptr %21, align 4
  %logging_enabled = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %logging_enabled, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end.if.end151_crit_edge, label %land.lhs.true

if.end.if.end151_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

land.lhs.true:                                    ; preds = %if.end
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %land.rhs, label %if.then56.critedge

land.rhs:                                         ; preds = %land.lhs.true
  %.b260 = load i1, ptr @efx_mcdi_read_response_header.__already_done, align 1
  br i1 %.b260, label %land.rhs.if.end151_crit_edge, label %if.then25, !prof !161

land.rhs.if.end151_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @efx_mcdi_read_response_header.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 290, i32 noundef 9, ptr noundef null) #11
  br label %if.end151

if.then56.critedge:                               ; preds = %land.lhs.true
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %19, align 4
  %rem = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool59.not = icmp eq i32 %rem, 0
  br i1 %tobool59.not, label %if.then56.critedge.if.end104_crit_edge, label %land.rhs66

if.then56.critedge.if.end104_crit_edge:           ; preds = %if.then56.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

land.rhs66:                                       ; preds = %if.then56.critedge
  %.b256259 = load i1, ptr @efx_mcdi_read_response_header.__already_done.49, align 1
  br i1 %.b256259, label %land.rhs66.if.end104_crit_edge, label %if.then77, !prof !161

land.rhs66.if.end104_crit_edge:                   ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then77:                                        ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @efx_mcdi_read_response_header.__already_done.49, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 295, i32 noundef 9, ptr noundef null) #11
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %19, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then77, %land.rhs66.if.end104_crit_edge, %if.then56.critedge.if.end104_crit_edge
  %28 = phi i32 [ %26, %if.then56.critedge.if.end104_crit_edge ], [ %.pr, %if.then77 ], [ %26, %land.rhs66.if.end104_crit_edge ]
  %div257 = lshr i32 %28, 2
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %21, align 4
  %sub = add i32 %30, 3
  %div114258 = lshr i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp115267.not = icmp ult i32 %28, 4
  br i1 %cmp115267.not, label %if.end104.for.cond125.preheader_crit_edge, label %if.end104.for.body_crit_edge

if.end104.for.body_crit_edge:                     ; preds = %if.end104
  br label %for.body

if.end104.for.cond125.preheader_crit_edge:        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond125.preheader

for.cond125.preheader:                            ; preds = %for.body.for.cond125.preheader_crit_edge, %if.end104.for.cond125.preheader_crit_edge
  %bytes.0.lcssa = phi i32 [ 0, %if.end104.for.cond125.preheader_crit_edge ], [ %add124, %for.body.for.cond125.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp126270 = icmp ugt i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %bytes.0.lcssa)
  %cmp128271 = icmp ult i32 %bytes.0.lcssa, 4096
  %or.cond262272 = select i1 %cmp126270, i1 %cmp128271, i1 false
  br i1 %or.cond262272, label %for.cond125.preheader.for.body130_crit_edge, label %for.cond125.preheader.do.body144_crit_edge

for.cond125.preheader.do.body144_crit_edge:       ; preds = %for.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body144

for.cond125.preheader.for.body130_crit_edge:      ; preds = %for.cond125.preheader
  br label %for.body130

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end104.for.body_crit_edge
  %i.0269 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end104.for.body_crit_edge ]
  %bytes.0268 = phi i32 [ %add124, %for.body.for.body_crit_edge ], [ 0, %if.end104.for.body_crit_edge ]
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type, align 4
  %mcdi_read_response120 = getelementptr inbounds %struct.efx_nic_type, ptr %32, i32 0, i32 40
  %33 = ptrtoint ptr %mcdi_read_response120 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mcdi_read_response120, align 8
  %mul = shl i32 %i.0269, 2
  call void %34(ptr noundef %efx, ptr noundef nonnull %hdr, i32 noundef %mul, i32 noundef 4) #11
  %add.ptr = getelementptr i8, ptr %3, i32 %bytes.0268
  %sub121 = sub nuw nsw i32 4096, %bytes.0268
  %35 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hdr, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %call123 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub121, ptr noundef nonnull @.str.42, i32 noundef %37) #11
  %add124 = add i32 %call123, %bytes.0268
  %inc = add nuw nsw i32 %i.0269, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div257)
  %cmp115 = icmp ult i32 %inc, %div257
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add124)
  %cmp117 = icmp ult i32 %add124, 4096
  %or.cond = select i1 %cmp115, i1 %cmp117, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.cond125.preheader_crit_edge

for.body.for.cond125.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond125.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %for.cond125.preheader.for.body130_crit_edge
  %i.1274 = phi i32 [ %inc142, %for.body130.for.body130_crit_edge ], [ 0, %for.cond125.preheader.for.body130_crit_edge ]
  %bytes.1273 = phi i32 [ %add140, %for.body130.for.body130_crit_edge ], [ %bytes.0.lcssa, %for.cond125.preheader.for.body130_crit_edge ]
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %type, align 4
  %mcdi_read_response132 = getelementptr inbounds %struct.efx_nic_type, ptr %39, i32 0, i32 40
  %40 = ptrtoint ptr %mcdi_read_response132 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mcdi_read_response132, align 8
  %42 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %19, align 4
  %mul134 = shl i32 %i.1274, 2
  %add135 = add i32 %43, %mul134
  call void %41(ptr noundef %efx, ptr noundef nonnull %hdr, i32 noundef %add135, i32 noundef 4) #11
  %add.ptr136 = getelementptr i8, ptr %3, i32 %bytes.1273
  %sub137 = sub nuw nsw i32 4096, %bytes.1273
  %44 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hdr, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %call139 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.42, i32 noundef %46) #11
  %add140 = add i32 %call139, %bytes.1273
  %inc142 = add nuw nsw i32 %i.1274, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc142, i32 %div114258)
  %cmp126 = icmp ult i32 %inc142, %div114258
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add140)
  %cmp128 = icmp ult i32 %add140, 4096
  %or.cond262 = select i1 %cmp126, i1 %cmp128, i1 false
  br i1 %or.cond262, label %for.body130.for.body130_crit_edge, label %for.body130.do.body144_crit_edge

for.body130.do.body144_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body144

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body130

do.body144:                                       ; preds = %for.body130.do.body144_crit_edge, %for.cond125.preheader.do.body144_crit_edge
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 4
  %and145 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %do.body144.if.end151_crit_edge, label %if.then147

do.body144.if.end151_crit_edge:                   ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then147:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %49 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net_dev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %50, ptr noundef nonnull @.str.50, ptr noundef nonnull %3) #15
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %do.body144.if.end151_crit_edge, %if.then25, %land.rhs.if.end151_crit_edge, %if.end.if.end151_crit_edge
  %resprc_raw = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %resprc_raw to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %resprc_raw, align 4
  %52 = and i32 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool152.not = icmp eq i32 %52, 0
  br i1 %tobool152.not, label %if.else166, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %if.end151
  %53 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp155 = icmp eq i32 %54, 0
  br i1 %cmp155, label %do.body157, label %if.else166.thread

do.body157:                                       ; preds = %land.lhs.true153
  %msg_enable158 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %55 = ptrtoint ptr %msg_enable158 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable158, align 4
  %and159 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %do.body157.if.end198_crit_edge, label %if.then161

do.body157.if.end198_crit_edge:                   ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then161:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev162 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %57 = ptrtoint ptr %net_dev162 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev162, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %58, ptr noundef nonnull @.str.51) #15
  br label %if.end198

if.else166:                                       ; preds = %if.end151
  %seqno = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %seqno, align 4
  %xor = xor i32 %60, %shr
  %and167 = and i32 %xor, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.else166.if.end198_crit_edge, label %if.else166.do.body170_crit_edge

if.else166.do.body170_crit_edge:                  ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body170

if.else166.if.end198_crit_edge:                   ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.else166.thread:                                ; preds = %land.lhs.true153
  %seqno263 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 7
  %61 = ptrtoint ptr %seqno263 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %seqno263, align 4
  %xor264 = xor i32 %62, %shr
  %and167265 = and i32 %xor264, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167265)
  %tobool168.not266 = icmp eq i32 %and167265, 0
  br i1 %tobool168.not266, label %if.then183, label %if.else166.thread.do.body170_crit_edge

if.else166.thread.do.body170_crit_edge:           ; preds = %if.else166.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body170

do.body170:                                       ; preds = %if.else166.thread.do.body170_crit_edge, %if.else166.do.body170_crit_edge
  %63 = phi i32 [ %62, %if.else166.thread.do.body170_crit_edge ], [ %60, %if.else166.do.body170_crit_edge ]
  %msg_enable171 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %64 = ptrtoint ptr %msg_enable171 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable171, align 4
  %and172 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body170.if.end198_crit_edge, label %if.then174

do.body170.if.end198_crit_edge:                   ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then174:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev175 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %66 = ptrtoint ptr %net_dev175 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev175, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.52, i32 noundef %and, i32 noundef %63) #15
  br label %if.end198

if.then183:                                       ; preds = %if.else166.thread
  %68 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %type, align 4
  %mcdi_read_response185 = getelementptr inbounds %struct.efx_nic_type, ptr %69, i32 0, i32 40
  %70 = ptrtoint ptr %mcdi_read_response185 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mcdi_read_response185, align 8
  %72 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %19, align 4
  call void %71(ptr noundef %efx, ptr noundef nonnull %hdr, i32 noundef %73, i32 noundef 4) #11
  %74 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hdr, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %resprc_raw to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %resprc_raw, align 4
  %78 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %76, label %sw.default.i [
    i32 0, label %if.then183.if.end198_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 4, label %sw.bb3.i
    i32 11, label %sw.bb4.i
    i32 13, label %sw.bb5.i
    i32 16, label %sw.bb6.i
    i32 22, label %sw.bb7.i
    i32 35, label %sw.bb8.i
    i32 38, label %sw.bb9.i
    i32 62, label %sw.bb10.i
    i32 114, label %sw.bb11.i
    i32 28, label %sw.bb12.i
    i32 95, label %sw.bb13.i
    i32 4096, label %sw.bb14.i
    i32 4105, label %sw.bb15.i
  ]

if.then183.if.end198_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb1.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb2.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb3.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb4.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb5.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb6.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb7.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb8.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb9.i:                                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb10.i:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb11.i:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb12.i:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb13.i:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb14.i:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.bb15.i:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

sw.default.i:                                     ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.end198:                                        ; preds = %sw.default.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then183.if.end198_crit_edge, %if.then174, %do.body170.if.end198_crit_edge, %if.else166.if.end198_crit_edge, %if.then161, %do.body157.if.end198_crit_edge
  %.sink277 = phi i32 [ -5, %if.then161 ], [ -5, %do.body157.if.end198_crit_edge ], [ -5, %if.then174 ], [ -5, %do.body170.if.end198_crit_edge ], [ -71, %sw.default.i ], [ -98, %sw.bb15.i ], [ -105, %sw.bb14.i ], [ -95, %sw.bb13.i ], [ -28, %sw.bb12.i ], [ -114, %sw.bb11.i ], [ -62, %sw.bb10.i ], [ -38, %sw.bb9.i ], [ -35, %sw.bb8.i ], [ -22, %sw.bb7.i ], [ -16, %sw.bb6.i ], [ -13, %sw.bb5.i ], [ -11, %sw.bb4.i ], [ -4, %sw.bb3.i ], [ -2, %sw.bb2.i ], [ -1, %sw.bb1.i ], [ %76, %if.then183.if.end198_crit_edge ], [ 0, %if.else166.if.end198_crit_edge ]
  %resprc180 = getelementptr inbounds %struct.efx_mcdi_iface, ptr %1, i32 0, i32 8
  %79 = ptrtoint ptr %resprc180 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink277, ptr %resprc180, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !52, !53, !55, !56, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !117, !119, !121, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__param_mcdi_logging_default, !1, !"__param_mcdi_logging_default", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_mcdi_logging_defaulttype524, !1, !"__UNIQUE_ID_mcdi_logging_defaulttype524", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mcdi_logging_default525, !4, !"__UNIQUE_ID_mcdi_logging_default525", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 57, i32 1}
!5 = !{ptr @efx_mcdi_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 80, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @efx_mcdi_init.__key.1, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 81, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @efx_mcdi_init.__key.3, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 82, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @efx_mcdi_init.__key.5, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 85, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @efx_mcdi_init.__key.7, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 87, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 102, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 108, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1092, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @efx_mcdi_display_error.__UNIQUE_ID_ddebug545, !25, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1320, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1326, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1343, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @efx_mcdi_process_event.__UNIQUE_ID_ddebug547, !35, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1348, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1352, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1386, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1398, i32 3}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1430, i32 31}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1450, i32 2}
!52 = !{ptr @__func__.efx_mcdi_print_fwver, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1571, i32 2}
!55 = !{ptr @__func__.efx_mcdi_get_board_cfg, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__func__.efx_mcdi_nvram_types, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1619, i32 2}
!58 = !{ptr @__func__.efx_mcdi_nvram_info, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1680, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1763, i32 2}
!62 = !{ptr @__func__.efx_mcdi_nvram_test_all, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__func__.efx_mcdi_wol_filter_get_magic, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 2015, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 2128, i32 2}
!67 = !{ptr @efx_mcdi_get_workarounds.__UNIQUE_ID_ddebug568, !66, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 2371, i32 43}
!70 = !{ptr @mcdi_logging_default, !71, !"mcdi_logging_default", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 55, i32 13}
!72 = !{ptr @__param_str_mcdi_logging_default, !1, !"__param_str_mcdi_logging_default", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 880, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @_efx_mcdi_rpc_evb_retry.__UNIQUE_ID_ddebug542, !74, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 830, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @_efx_mcdi_rpc.__UNIQUE_ID_ddebug539, !78, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 836, i32 4}
!83 = !{ptr @_efx_mcdi_rpc.__UNIQUE_ID_ddebug540, !82, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 847, i32 4}
!86 = !{ptr @_efx_mcdi_rpc.__UNIQUE_ID_ddebug541, !85, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 789, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @efx_mcdi_proxy_wait.__UNIQUE_ID_ddebug538, !88, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 793, i32 3}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 202, i32 32}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 208, i32 3}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 209, i32 3}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 216, i32 9}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 224, i32 3}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 667, i32 3}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 672, i32 4}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 723, i32 4}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 724, i32 4}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @_efx_mcdi_rpc_finish.__UNIQUE_ID_ddebug537, !110, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 290, i32 32}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 295, i32 3}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 318, i32 3}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 324, i32 3}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 327, i32 3}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1298, i32 2}
!125 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @efx_mcdi_abandon.__UNIQUE_ID_ddebug546, !124, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1474, i32 3}
!129 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @efx_mcdi_drv_attach.__UNIQUE_ID_ddebug550, !128, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1813, i32 5}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1815, i32 5}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1817, i32 5}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1818, i32 5}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1819, i32 2}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1828, i32 3}
!143 = !{ptr @__func__.efx_mcdi_wol_filter_set, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 1980, i32 2}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 2234, i32 4}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/sfc/mcdi.c", i32 2257, i32 4}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
!159 = !{i8 0, i8 2}
!160 = !{i64 2148820575, i64 2148820580, i64 2148820593, i64 2148820637, i64 2148820671, i64 2148820692}
!161 = !{!"branch_weights", i32 2000, i32 1}
!162 = !{i64 2159700902, i64 2159701398, i64 2159700939, i64 2159700995, i64 2159701029, i64 2159701053, i64 2159701094, i64 2159701115, i64 2159701143, i64 2159701177}
!163 = !{i64 2159876669}
!164 = !{i64 762402, i64 762423, i64 762446, i64 762465, i64 762484}
!165 = !{i64 2159877028}
!166 = !{i64 2159880316}
!167 = !{i64 2159880675}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{i64 2159702645, i64 2159703141, i64 2159702682, i64 2159702738, i64 2159702772, i64 2159702796, i64 2159702837, i64 2159702858, i64 2159702886, i64 2159702920}
!170 = !{i64 2159755588, i64 2159756084, i64 2159755625, i64 2159755681, i64 2159755715, i64 2159755739, i64 2159755780, i64 2159755801, i64 2159755829, i64 2159755863}
!171 = !{i64 2159871991}
!172 = !{i64 2159956223}
!173 = !{i64 759678, i64 759695, i64 759719, i64 759745, i64 759763}
!174 = !{i64 2159956579}
!175 = !{i64 2159910682, i64 2159911178, i64 2159910719, i64 2159910775, i64 2159910809, i64 2159910833, i64 2159910874, i64 2159910895, i64 2159910923, i64 2159910957}
!176 = !{i64 2159884090}
!177 = !{i64 2159884532}
!178 = !{i64 2159948601, i64 2159949098, i64 2159948638, i64 2159948694, i64 2159948728, i64 2159948752, i64 2159948793, i64 2159948814, i64 2159948842, i64 2159948876}
!179 = !{i64 2148341362}
!180 = !{i64 2148256095, i64 2148256127, i64 2148256156, i64 2148256190, i64 2148256221, i64 2148256244}
!181 = !{i64 2148341591}
!182 = !{i64 2159917214}
!183 = !{i64 2148255375, i64 2148255401, i64 2148255430, i64 2148255464, i64 2148255495, i64 2148255518}
!184 = !{i64 2159890457}
!185 = !{i64 2159890900}
!186 = !{i64 2159874044}
!187 = !{i64 2159874487}
