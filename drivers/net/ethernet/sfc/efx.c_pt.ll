; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/efx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/efx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.172 }
%union.anon.172 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.201, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.201 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.179, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.200, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.179 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.200 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ifreq = type { %union.anon.180, %union.anon.181 }
%union.anon.180 = type { [16 x i8] }
%union.anon.181 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.netdev_bpf = type { i32, %union.anon.184 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { i32, ptr, ptr }

@__param_str_interrupt_mode = internal constant [19 x i8] c"sfc.interrupt_mode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@efx_interrupt_mode = external dso_local global i32, align 4
@__param_interrupt_mode = internal constant %struct.kernel_param { ptr @__param_str_interrupt_mode, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.172 { ptr @efx_interrupt_mode } }, section "__param", align 4
@__UNIQUE_ID_interrupt_modetype648 = internal constant [33 x i8] c"sfc.parmtype=interrupt_mode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_interrupt_mode649 = internal constant [66 x i8] c"sfc.parm=interrupt_mode:Interrupt mode (0=>MSIX 1=>MSI 2=>legacy)\00", section ".modinfo", align 1
@__param_str_rss_cpus = internal constant [13 x i8] c"sfc.rss_cpus\00", align 1
@rss_cpus = external dso_local global i32, align 4
@__param_rss_cpus = internal constant %struct.kernel_param { ptr @__param_str_rss_cpus, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.172 { ptr @rss_cpus } }, section "__param", align 4
@__UNIQUE_ID_rss_cpustype650 = internal constant [27 x i8] c"sfc.parmtype=rss_cpus:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rss_cpus651 = internal constant [65 x i8] c"sfc.parm=rss_cpus:Number of CPUs to use for Receive-Side Scaling\00", section ".modinfo", align 1
@__param_str_efx_separate_tx_channels = internal constant [29 x i8] c"sfc.efx_separate_tx_channels\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@efx_separate_tx_channels = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_efx_separate_tx_channels = internal constant %struct.kernel_param { ptr @__param_str_efx_separate_tx_channels, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.172 { ptr @efx_separate_tx_channels } }, section "__param", align 4
@__UNIQUE_ID_efx_separate_tx_channelstype652 = internal constant [43 x i8] c"sfc.parmtype=efx_separate_tx_channels:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_efx_separate_tx_channels653 = internal constant [70 x i8] c"sfc.parm=efx_separate_tx_channels:Use separate channels for TX and RX\00", section ".modinfo", align 1
@__param_str_phy_flash_cfg = internal constant [18 x i8] c"sfc.phy_flash_cfg\00", align 1
@phy_flash_cfg = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_phy_flash_cfg = internal constant %struct.kernel_param { ptr @__param_str_phy_flash_cfg, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.172 { ptr @phy_flash_cfg } }, section "__param", align 4
@__UNIQUE_ID_phy_flash_cfgtype654 = internal constant [32 x i8] c"sfc.parmtype=phy_flash_cfg:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_phy_flash_cfg655 = internal constant [60 x i8] c"sfc.parm=phy_flash_cfg:Set PHYs into reflash mode initially\00", section ".modinfo", align 1
@__param_str_debug = internal constant [10 x i8] c"sfc.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 8439, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.172 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype656 = internal constant [24 x i8] c"sfc.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug657 = internal constant [56 x i8] c"sfc.parm=debug:Bitmapped debugging message enable value\00", section ".modinfo", align 1
@efx_init_irq_moderation.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/ethernet/sfc/efx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Channels are shared. RX and TX IRQ moderation must be equal\0A\00", [35 x i8] zeroinitializer }, align 32
@efx_net_open.__UNIQUE_ID_ddebug670 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efx_net_open\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"opening device on CPU %d\0A\00", [38 x i8] zeroinitializer }, align 32
@efx_net_stop.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efx_net_stop\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"closing on CPU %d\0A\00", [45 x i8] zeroinitializer }, align 32
@efx_exit_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Solarflare NET driver unloading\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efx_exit_module\00", [16 x i8] zeroinitializer }, align 32
@efx_exit_module._entry_ptr = internal global ptr @efx_exit_module._entry, section ".printk_index", align 4
@ef100_pci_driver = external dso_local global %struct.pci_driver, align 4
@efx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @efx_pci_table, ptr @efx_pci_probe, ptr @efx_pci_remove, ptr null, ptr null, ptr null, ptr @efx_pci_sriov_configure, ptr null, ptr null, ptr @efx_err_handlers, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@efx_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @efx_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_sfc__678_1345_efx_init_module6 = internal global ptr @efx_init_module, section ".initcall6.init", align 4
@__exitcall_efx_exit_module = internal global ptr @efx_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author679 = internal constant [81 x i8] c"sfc.author=Solarflare Communications and Michael Brown <mbrown@fensystems.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description680 = internal constant [42 x i8] c"sfc.description=Solarflare network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file681 = internal constant [38 x i8] c"sfc.file=drivers/net/ethernet/sfc/sfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license682 = internal constant [16 x i8] c"sfc.license=GPL\00", section ".modinfo", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"device is disabled due to earlier errors\0A\00", [54 x i8] zeroinitializer }, align 32
@efx_pci_table = internal constant { [11 x %struct.pci_device_id], [64 x i8] } { [11 x %struct.pci_device_id] [%struct.pci_device_id { i32 6436, i32 2051, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @siena_a0_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 2067, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @siena_a0_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 2307, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 6403, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_vf_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 2339, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 6435, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_vf_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 2563, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 6659, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_vf_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 2819, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_nic_type to i32), i32 0 }, %struct.pci_device_id { i32 6436, i32 6915, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @efx_hunt_a0_vf_nic_type to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@efx_err_handlers = external dso_local constant %struct.pci_error_handlers, align 4
@efx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @efx_pm_suspend, ptr @efx_pm_resume, ptr @efx_pm_freeze, ptr @efx_pm_thaw, ptr @efx_pm_poweroff, ptr @efx_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@siena_a0_nic_type = external dso_local constant %struct.efx_nic_type, align 8
@efx_hunt_a0_nic_type = external dso_local constant %struct.efx_nic_type, align 8
@efx_hunt_a0_vf_nic_type = external dso_local constant %struct.efx_nic_type, align 8
@efx_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 1070, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Solarflare NIC detected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efx_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efx_pci_probe._entry_ptr = internal global ptr @efx_pci_probe._entry, section ".printk_index", align 4
@efx_pci_probe.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str, ptr @.str.15, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"initialisation successful\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create MTDs (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@efx_pci_probe.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str, ptr @.str.17, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"initialisation failed. rc=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@efx_probe_vpd_strings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 915, ptr @.str.20, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to read VPD\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efx_probe_vpd_strings\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@efx_probe_vpd_strings._entry_ptr = internal global ptr @efx_probe_vpd_strings._entry, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PN\00", [29 x i8] zeroinitializer }, align 32
@efx_probe_vpd_strings._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str, i32 922, ptr @.str.24, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Part number not found or incomplete\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@efx_probe_vpd_strings._entry_ptr.25 = internal global ptr @efx_probe_vpd_strings._entry.22, section ".printk_index", align 4
@efx_probe_vpd_strings._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str, i32 924, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Part Number : %.*s\0A\00", [44 x i8] zeroinitializer }, align 32
@efx_probe_vpd_strings._entry_ptr.28 = internal global ptr @efx_probe_vpd_strings._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SN\00", [29 x i8] zeroinitializer }, align 32
@efx_probe_vpd_strings._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str, i32 929, ptr @.str.24, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Serial number not found or incomplete\0A\00", [57 x i8] zeroinitializer }, align 32
@efx_probe_vpd_strings._entry_ptr.32 = internal global ptr @efx_probe_vpd_strings._entry.30, section ".printk_index", align 4
@efx_pci_probe_post_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 1003, ptr @.str.24, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SR-IOV can't be enabled rc %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efx_pci_probe_post_io\00", [42 x i8] zeroinitializer }, align 32
@efx_pci_probe_post_io._entry_ptr = internal global ptr @efx_pci_probe_post_io._entry, section ".printk_index", align 4
@efx_pci_probe_main._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 955, ptr @.str.24, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialise NIC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_pci_probe_main\00", [45 x i8] zeroinitializer }, align 32
@efx_pci_probe_main._entry_ptr = internal global ptr @efx_pci_probe_main._entry, section ".printk_index", align 4
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialise port\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create NIC\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to create port\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to setup vswitching rc=%d; VFs may not function\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to create filter tables\0A\00", [32 x i8] zeroinitializer }, align 32
@efx_probe_nic.__UNIQUE_ID_ddebug667 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str, ptr @.str.43, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efx_probe_nic\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"creating NIC\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Insufficient resources to allocate any channels\0A\00", [47 x i8] zeroinitializer }, align 32
@efx_probe_port.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.45, ptr @.str, ptr @.str.46, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efx_probe_port\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"create port\0A\00", [19 x i8] zeroinitializer }, align 32
@efx_remove_port.__UNIQUE_ID_ddebug661 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.47, ptr @.str, ptr @.str.48, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efx_remove_port\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"destroying port\0A\00", [47 x i8] zeroinitializer }, align 32
@efx_remove_nic.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.49, ptr @.str, ptr @.str.50, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efx_remove_nic\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"destroying NIC\0A\00", [16 x i8] zeroinitializer }, align 32
@efx_init_port.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.51, ptr @.str, ptr @.str.52, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efx_init_port\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init port\0A\00", [21 x i8] zeroinitializer }, align 32
@efx_fini_port.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.53, ptr @.str, ptr @.str.54, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efx_fini_port\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shut down port\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unable to bind XDP program due to previous failure of rxq_info\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to configure XDP with MTU of %d (max: %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@efx_xdp_setup_prog.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@efx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @efx_net_open, ptr @efx_net_stop, ptr @efx_hard_start_xmit, ptr @efx_features_check, ptr null, ptr null, ptr @efx_set_rx_mode, ptr @efx_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @efx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @efx_change_mtu, ptr null, ptr @efx_watchdog, ptr @efx_net_stats, ptr null, ptr null, ptr null, ptr @efx_vlan_rx_add_vid, ptr @efx_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr @efx_sriov_set_vf_mac, ptr @efx_sriov_set_vf_vlan, ptr null, ptr @efx_sriov_set_vf_spoofchk, ptr null, ptr @efx_sriov_get_vf_config, ptr @efx_sriov_set_vf_link_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_filter_rfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_get_phys_port_id, ptr null, ptr @efx_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efx_xdp, ptr @efx_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@efx_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@efx_register_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str, i32 726, ptr @.str.24, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"aborting probe due to scheduled reset\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efx_register_netdev\00", [44 x i8] zeroinitializer }, align 32
@efx_register_netdev._entry_ptr = internal global ptr @efx_register_netdev._entry, section ".printk_index", align 4
@dev_attr_phy_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phy_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to init net dev attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not register net dev\0A\00", [36 x i8] zeroinitializer }, align 32
@efx_associate.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.62, ptr @.str, ptr @.str.63, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efx_associate\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adding to primary list\0A\00", [40 x i8] zeroinitializer }, align 32
@efx_primary_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @efx_primary_list, ptr @efx_primary_list }, [24 x i8] zeroinitializer }, align 32
@efx_unassociated_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @efx_unassociated_list, ptr @efx_unassociated_list }, [24 x i8] zeroinitializer }, align 32
@efx_associate.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.62, ptr @.str, ptr @.str.64, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"moving to secondary list of %s %s\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_associate.__UNIQUE_ID_ddebug664 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.62, ptr @.str, ptr @.str.65, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"adding to secondary list of %s %s\0A\00", [61 x i8] zeroinitializer }, align 32
@efx_associate.__UNIQUE_ID_ddebug665 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.62, ptr @.str, ptr @.str.66, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adding to unassociated list\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_type\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@efx_dissociate.__UNIQUE_ID_ddebug666 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.69, ptr @.str, ptr @.str.70, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efx_dissociate\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"moving to unassociated list\0A\00", [35 x i8] zeroinitializer }, align 32
@efx_pci_remove.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.71, ptr @.str, ptr @.str.72, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efx_pci_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shutdown successful\0A\00", [43 x i8] zeroinitializer }, align 32
@efx_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016Solarflare NET driver\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efx_init_module\00", [16 x i8] zeroinitializer }, align 32
@efx_init_module._entry_ptr = internal global ptr @efx_init_module._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 35144, i64 35145, i64 35248, i64 35249]
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"efx_separate_tx_channels\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 62, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"phy_flash_cfg\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 86, i32 13 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 90, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 442, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 451, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 529, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 559, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1333, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"efx_pci_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1269, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"efx_netdev_notifier\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 689, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant [41 x i8] c"../drivers/net/ethernet/sfc/efx_common.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 68, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"efx_pci_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 797, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"efx_pm_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1260, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1070, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1103, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1110, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1126, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 915, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 920, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 922, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 924, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 927, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 929, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1002, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 955, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 961, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 346, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 352, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 365, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 372, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 269, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 278, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 129, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 183, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 328, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 149, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 170, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 625, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 631, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 637, i32 13 }
@___asan_gen_.279 = private unnamed_addr constant [15 x i8] c"efx_netdev_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 588, i32 36 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 726, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"dev_attr_phy_type\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 755, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 771, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 211, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"efx_primary_list\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 194, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant [22 x i8] c"efx_unassociated_list\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 195, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 218, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 232, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 243, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 699, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 697, i32 22 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 258, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 894, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [34 x i8] c"../drivers/net/ethernet/sfc/efx.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1291, i32 2 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_author679, ptr @__UNIQUE_ID_debug657, ptr @__UNIQUE_ID_debugtype656, ptr @__UNIQUE_ID_description680, ptr @__UNIQUE_ID_efx_separate_tx_channels653, ptr @__UNIQUE_ID_efx_separate_tx_channelstype652, ptr @__UNIQUE_ID_file681, ptr @__UNIQUE_ID_interrupt_mode649, ptr @__UNIQUE_ID_interrupt_modetype648, ptr @__UNIQUE_ID_license682, ptr @__UNIQUE_ID_phy_flash_cfg655, ptr @__UNIQUE_ID_phy_flash_cfgtype654, ptr @__UNIQUE_ID_rss_cpus651, ptr @__UNIQUE_ID_rss_cpustype650, ptr @__exitcall_efx_exit_module, ptr @__initcall__kmod_sfc__678_1345_efx_init_module6, ptr @__param_debug, ptr @__param_efx_separate_tx_channels, ptr @__param_interrupt_mode, ptr @__param_phy_flash_cfg, ptr @__param_rss_cpus, ptr @efx_exit_module, ptr @efx_exit_module._entry, ptr @efx_exit_module._entry_ptr, ptr @efx_init_module._entry, ptr @efx_init_module._entry_ptr, ptr @efx_pci_probe._entry, ptr @efx_pci_probe._entry_ptr, ptr @efx_pci_probe_main._entry, ptr @efx_pci_probe_main._entry_ptr, ptr @efx_pci_probe_post_io._entry, ptr @efx_pci_probe_post_io._entry_ptr, ptr @efx_probe_vpd_strings._entry, ptr @efx_probe_vpd_strings._entry.22, ptr @efx_probe_vpd_strings._entry.26, ptr @efx_probe_vpd_strings._entry.30, ptr @efx_probe_vpd_strings._entry_ptr, ptr @efx_probe_vpd_strings._entry_ptr.25, ptr @efx_probe_vpd_strings._entry_ptr.28, ptr @efx_probe_vpd_strings._entry_ptr.32, ptr @efx_register_netdev._entry, ptr @efx_register_netdev._entry_ptr, ptr @efx_separate_tx_channels, ptr @phy_flash_cfg, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @efx_pci_driver, ptr @efx_netdev_notifier, ptr @.str.10, ptr @efx_pci_table, ptr @efx_pm_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @efx_netdev_ops, ptr @.str.58, ptr @.str.59, ptr @dev_attr_phy_type, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @efx_primary_list, ptr @efx_unassociated_list, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_separate_tx_channels to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_flash_cfg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_exit_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_pci_table to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_probe_vpd_strings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_probe_vpd_strings._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_probe_vpd_strings._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_probe_vpd_strings._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_pci_probe_post_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_pci_probe_main._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_register_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phy_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_primary_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_unassociated_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_usecs_to_ticks(ptr nocapture noundef readonly %efx, i32 noundef %usecs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usecs)
  %cmp = icmp eq i32 %usecs, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %mul = mul i32 %usecs, 1000
  %timer_quantum_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %0 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_quantum_ns, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %1)
  %cmp1 = icmp ult i32 %mul, %1
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %div = udiv i32 %mul, %1
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %div, %if.end3 ], [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_ticks_to_usecs(ptr nocapture noundef readonly %efx, i32 noundef %ticks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_quantum_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %0 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_quantum_ns, align 8
  %mul = mul i32 %1, %ticks
  %sub = add i32 %mul, 999
  %div = udiv i32 %sub, 1000
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_init_irq_moderation(ptr nocapture noundef %efx, i32 noundef %tx_usecs, i32 noundef %rx_usecs, i1 noundef zeroext %rx_adaptive, i1 noundef zeroext %rx_may_override_tx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %rx_adaptive to i8
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %entry.do.end48_crit_edge

entry.do.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.do.end48_crit_edge

if.then.do.end48_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48

land.rhs:                                         ; preds = %if.then
  %.b117 = load i1, ptr @efx_init_irq_moderation.__already_done, align 1
  br i1 %.b117, label %land.rhs.do.end48_crit_edge, label %if.then16, !prof !228

land.rhs.do.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @efx_init_irq_moderation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 442) #14
  br label %do.end48

do.end48:                                         ; preds = %if.then16, %land.rhs.do.end48_crit_edge, %if.then.do.end48_crit_edge, %entry.do.end48_crit_edge
  %timer_max_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 17
  %2 = ptrtoint ptr %timer_max_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_max_ns, align 4
  %div = udiv i32 %3, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %tx_usecs)
  %cmp49 = icmp ult i32 %div, %tx_usecs
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %rx_usecs)
  %cmp51 = icmp ult i32 %div, %rx_usecs
  %or.cond = or i1 %cmp49, %cmp51
  br i1 %or.cond, label %do.end48.cleanup_crit_edge, label %if.end53

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end53:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_usecs, i32 %rx_usecs)
  %cmp54.not = icmp eq i32 %tx_usecs, %rx_usecs
  br i1 %cmp54.not, label %if.end53.if.end65_crit_edge, label %land.lhs.true

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end53
  %tx_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 45
  %4 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_channel_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp55 = icmp ne i32 %5, 0
  %brmerge = or i1 %cmp55, %rx_may_override_tx
  br i1 %brmerge, label %land.lhs.true.if.end65_crit_edge, label %do.body59

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

do.body59:                                        ; preds = %land.lhs.true
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %do.body59.cleanup_crit_edge, label %if.then61

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then61:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.2) #17
  br label %cleanup

if.end65:                                         ; preds = %land.lhs.true.if.end65_crit_edge, %if.end53.if.end65_crit_edge
  %irq_rx_adaptive = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 18
  %10 = ptrtoint ptr %irq_rx_adaptive to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %irq_rx_adaptive, align 16
  %irq_rx_moderation_us = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 21
  %11 = ptrtoint ptr %irq_rx_moderation_us to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rx_usecs, ptr %irq_rx_moderation_us, align 8
  %channel68 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %12 = ptrtoint ptr %channel68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel68, align 8
  %tobool69.not118 = icmp eq ptr %13, null
  br i1 %tobool69.not118, label %if.end65.cleanup_crit_edge, label %for.body.lr.ph

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end65
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.0119 = phi ptr [ %13, %for.body.lr.ph ], [ %23, %cond.end.for.body_crit_edge ]
  %core_index.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0119, i32 0, i32 45, i32 1
  %14 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i123 = icmp slt i32 %15, 0
  %spec.select = select i1 %cmp.i123, i32 %tx_usecs, i32 %rx_usecs
  %16 = getelementptr inbounds %struct.efx_channel, ptr %channel.0119, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %16, align 4
  %channel82 = getelementptr inbounds %struct.efx_channel, ptr %channel.0119, i32 0, i32 1
  %18 = ptrtoint ptr %channel82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel82, align 4
  %add = add i32 %19, 1
  %20 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp83 = icmp ult i32 %add, %21
  br i1 %cmp83, label %cond.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end:                                         ; preds = %for.body
  %arrayidx87 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add
  %22 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx87, align 4
  %tobool69.not = icmp eq ptr %23, null
  br i1 %tobool69.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then61, %do.body59.cleanup_crit_edge, %do.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end48.cleanup_crit_edge ], [ -22, %if.then61 ], [ -22, %do.body59.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efx_get_irq_moderation(ptr nocapture noundef readonly %efx, ptr nocapture noundef writeonly %tx_usecs, ptr nocapture noundef writeonly %rx_usecs, ptr nocapture noundef writeonly %rx_adaptive) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_rx_adaptive = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 18
  %0 = ptrtoint ptr %irq_rx_adaptive to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_rx_adaptive, align 16, !range !229
  %2 = ptrtoint ptr %rx_adaptive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %rx_adaptive, align 1
  %irq_rx_moderation_us = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 21
  %3 = ptrtoint ptr %irq_rx_moderation_us to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_rx_moderation_us, align 8
  %5 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_usecs, align 4
  %tx_channel_offset = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 45
  %6 = ptrtoint ptr %tx_channel_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_channel_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %irq_moderation_us = getelementptr inbounds %struct.efx_channel, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_moderation_us, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %11, %if.else ], [ %4, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %tx_usecs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_net_open(ptr noundef %net_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_net_open.__UNIQUE_ID_ddebug670, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_net_open, %if.then6)) #14
          to label %do.end11 [label %if.then6], !srcloc !230

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev7 = getelementptr i8, ptr %net_dev, i32 4732
  %2 = ptrtoint ptr %net_dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev7, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !218) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_net_open.__UNIQUE_ID_ddebug670, ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %7) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body1, %entry.do.end11_crit_edge
  %state.i = getelementptr i8, ptr %net_dev, i32 2464
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 32
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.i = icmp eq i32 %10, 2
  br i1 %switch.i, label %do.body.i, label %if.end15

do.body.i:                                        ; preds = %do.end11
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and.i43 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr i8, ptr %net_dev, i32 4732
  %13 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.10) #17
  br label %cleanup

if.end15:                                         ; preds = %do.end11
  %phy_mode = getelementptr i8, ptr %net_dev, i32 4816
  %15 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_mode, align 16
  %and16 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @efx_mcdi_poll_reboot(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %land.lhs.true

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %call22 = tail call i32 @efx_reset(ptr noundef %add.ptr.i, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  tail call void @efx_link_status_changed(ptr noundef %add.ptr.i) #14
  tail call void @efx_start_all(ptr noundef %add.ptr.i) #14
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %if.end25.if.then27_crit_edge, label %lor.lhs.false

if.end25.if.then27_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end25
  %reset_pending = getelementptr i8, ptr %net_dev, i32 2468
  %19 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end25.if.then27_crit_edge
  %net_dev28 = getelementptr i8, ptr %net_dev, i32 4732
  %21 = ptrtoint ptr %net_dev28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev28, align 4
  tail call void @netif_device_detach(ptr noundef %22) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %lor.lhs.false.if.end29_crit_edge
  tail call void @efx_selftest_async_start(ptr noundef %add.ptr.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then3.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -16, %if.end15.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_poll_reboot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_link_status_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_start_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_selftest_async_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_net_stop(ptr noundef %net_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2460
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_net_stop.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_net_stop, %if.then6)) #14
          to label %do.end11 [label %if.then6], !srcloc !230

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev7 = getelementptr i8, ptr %net_dev, i32 4732
  %2 = ptrtoint ptr %net_dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev7, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !218) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_net_stop.__UNIQUE_ID_ddebug671, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %7) #14
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body1, %entry.do.end11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  tail call void @efx_stop_all(ptr noundef %add.ptr.i) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_stop_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_update_sw_stats(ptr noundef %efx, ptr nocapture noundef writeonly %stats) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 8
  %tobool.not21 = icmp eq ptr %1, null
  br i1 %tobool.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 8
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %channel.023 = phi ptr [ %1, %for.body.lr.ph ], [ %9, %cond.end.for.body_crit_edge ]
  %n_rx_nodesc_trunc.022 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %cond.end.for.body_crit_edge ]
  %n_rx_nodesc_trunc2 = getelementptr inbounds %struct.efx_channel, ptr %channel.023, i32 0, i32 35
  %4 = ptrtoint ptr %n_rx_nodesc_trunc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_rx_nodesc_trunc2, align 8
  %conv = zext i32 %5 to i64
  %add = add i64 %n_rx_nodesc_trunc.022, %conv
  %channel3 = getelementptr inbounds %struct.efx_channel, ptr %channel.023, i32 0, i32 1
  %6 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel3, align 4
  %add4 = add i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %3)
  %cmp = icmp ult i32 %add4, %3
  br i1 %cmp, label %cond.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cond.end:                                         ; preds = %for.body
  %arrayidx9 = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n_rx_nodesc_trunc.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add, %cond.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %arrayidx10 = getelementptr i64, ptr %stats, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %n_rx_nodesc_trunc.0.lcssa, ptr %arrayidx10, align 8
  %n_rx_noskb_drops = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 134
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_rx_noskb_drops, i32 noundef 4) #14
  %11 = ptrtoint ptr %n_rx_noskb_drops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %n_rx_noskb_drops, align 4
  %conv11 = sext i32 %12 to i64
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv11, ptr %stats, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @efx_exit_module() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @ef100_pci_driver) #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @efx_pci_driver) #14
  tail call void @efx_destroy_reset_workqueue() #14
  tail call void @efx_fini_sriov() #14
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @efx_netdev_notifier) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_destroy_reset_workqueue() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_sriov() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_init_module() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #17
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @efx_netdev_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @efx_init_sriov() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_sriov_crit_edge

if.end.err_sriov_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_sriov

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @efx_create_reset_workqueue() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_reset_crit_edge

if.end5.err_reset_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_reset

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @__pci_register_driver(ptr noundef nonnull @efx_pci_driver, ptr noundef null, ptr noundef nonnull @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.err_pci_crit_edge, label %if.end12

if.end9.err_pci_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_pci

if.end12:                                         ; preds = %if.end9
  %call13 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ef100_pci_driver, ptr noundef null, ptr noundef nonnull @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %err_pci_ef100, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_pci_ef100:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @efx_pci_driver) #14
  br label %err_pci

err_pci:                                          ; preds = %err_pci_ef100, %if.end9.err_pci_crit_edge
  %rc.0 = phi i32 [ %call10, %if.end9.err_pci_crit_edge ], [ %call13, %err_pci_ef100 ]
  tail call void @efx_destroy_reset_workqueue() #14
  br label %err_reset

err_reset:                                        ; preds = %err_pci, %if.end5.err_reset_crit_edge
  %rc.1 = phi i32 [ %call6, %if.end5.err_reset_crit_edge ], [ %rc.0, %err_pci ]
  tail call void @efx_fini_sriov() #14
  br label %err_sriov

err_sriov:                                        ; preds = %err_reset, %if.end.err_sriov_crit_edge
  %rc.2 = phi i32 [ %call2, %if.end.err_sriov_crit_edge ], [ %rc.1, %err_reset ]
  %call17 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @efx_netdev_notifier) #14
  br label %cleanup

cleanup:                                          ; preds = %err_sriov, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %rc.2, %err_sriov ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  %r = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 4224, i32 noundef 64, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %entry1, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %type = getelementptr i8, ptr %call, i32 2348
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %type, align 4
  %fixed_features = getelementptr i8, ptr %call, i32 4736
  %4 = ptrtoint ptr %fixed_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %fixed_features, align 128
  %or = or i64 %5, 32
  store i64 %or, ptr %fixed_features, align 128
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %call4 = tail call i32 @efx_init_struct(ptr noundef %add.ptr.i, ptr noundef %pci_dev, ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail1

do.end:                                           ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #17
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 8, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @efx_probe_vpd_strings(ptr noundef %add.ptr.i)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end.if.end12_crit_edge
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %mem_bar = getelementptr inbounds %struct.efx_nic_type, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %mem_bar to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_bar, align 4
  %call14 = tail call i32 %15(ptr noundef %add.ptr.i) #14
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %max_dma_mask = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 124
  %18 = ptrtoint ptr %max_dma_mask to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %max_dma_mask, align 8
  %conv = trunc i64 %19 to i32
  %mem_map_size = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %mem_map_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_map_size, align 8
  %call17 = tail call i32 %21(ptr noundef %add.ptr.i) #14
  %call18 = tail call i32 @efx_init_io(ptr noundef %add.ptr.i, i32 noundef %call14, i32 noundef %conv, i32 noundef %call17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end12.fail2_crit_edge

if.end12.fail2_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail2

if.end21:                                         ; preds = %if.end12
  %call22 = tail call fastcc i32 @efx_pci_probe_post_io(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.do.body36_crit_edge, label %if.then24

if.end21.do.body36_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36

if.then24:                                        ; preds = %if.end21
  %reset_pending = getelementptr i8, ptr %call, i32 2468
  %22 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %reset_pending, align 4
  %call25 = tail call fastcc i32 @efx_pci_probe_post_io(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.do.body36_crit_edge, label %if.end32

if.then24.do.body36_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36

if.end32:                                         ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #14
  %23 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %r, align 1, !annotation !231
  call void @get_random_bytes(ptr noundef nonnull %r, i32 noundef 1) #14
  %24 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %r, align 1
  %conv28 = zext i8 %25 to i32
  %add = add nuw nsw i32 %conv28, 50
  call void @msleep(i32 noundef %add) #14
  %26 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %reset_pending, align 4
  %call30 = call fastcc i32 @efx_pci_probe_post_io(ptr noundef %add.ptr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool33.not = icmp eq i32 %call30, 0
  br i1 %tobool33.not, label %if.end32.do.body36_crit_edge, label %fail3

if.end32.do.body36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36

do.body36:                                        ; preds = %if.end32.do.body36_crit_edge, %if.then24.do.body36_crit_edge, %if.end21.do.body36_crit_edge
  %msg_enable = getelementptr i8, ptr %call, i32 2460
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.body36.do.end51_crit_edge, label %do.body39

do.body36.do.end51_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end51

do.body39:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_pci_probe.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_pci_probe, %if.then44)) #14
          to label %do.end51 [label %if.then44], !srcloc !230

if.then44:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev45 = getelementptr i8, ptr %call, i32 4732
  %29 = ptrtoint ptr %net_dev45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_pci_probe.__UNIQUE_ID_ddebug676, ptr noundef %30, ptr noundef nonnull @.str.15) #14
  br label %do.end51

do.end51:                                         ; preds = %if.then44, %do.body39, %do.body36.do.end51_crit_edge
  call void @rtnl_lock() #14
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type, align 4
  %mtd_probe.i = getelementptr inbounds %struct.efx_nic_type, ptr %32, i32 0, i32 85
  %33 = ptrtoint ptr %mtd_probe.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mtd_probe.i, align 4
  %call.i = call i32 %34(ptr noundef %add.ptr.i) #14
  call void @rtnl_unlock() #14
  %35 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.body56 [
    i32 0, label %do.end51.if.end65_crit_edge
    i32 -1, label %do.end51.if.end65_crit_edge186
  ]

do.end51.if.end65_crit_edge186:                   ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

do.end51.if.end65_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

do.body56:                                        ; preds = %do.end51
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 4
  %and58 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body56.if.end65_crit_edge, label %if.then60

do.body56.if.end65_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev61 = getelementptr i8, ptr %call, i32 4732
  %38 = ptrtoint ptr %net_dev61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net_dev61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.16, i32 noundef %call.i) #17
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %do.body56.if.end65_crit_edge, %do.end51.if.end65_crit_edge, %do.end51.if.end65_crit_edge186
  %call66 = call i32 @pci_enable_pcie_error_reporting(ptr noundef %pci_dev) #14
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %type, align 4
  %udp_tnl_push_ports = getelementptr inbounds %struct.efx_nic_type, ptr %41, i32 0, i32 114
  %42 = ptrtoint ptr %udp_tnl_push_ports to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %udp_tnl_push_ports, align 8
  %tobool68.not = icmp eq ptr %43, null
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %if.then69

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %call72 = call i32 %43(ptr noundef %add.ptr.i) #14
  br label %cleanup

fail3:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  call void @efx_fini_io(ptr noundef %add.ptr.i) #14
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end12.fail2_crit_edge
  %rc.1 = phi i32 [ %call18, %if.end12.fail2_crit_edge ], [ %call30, %fail3 ]
  call void @efx_fini_struct(ptr noundef %add.ptr.i) #14
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %rc.2 = phi i32 [ %call4, %if.end.fail1_crit_edge ], [ %rc.1, %fail2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp74 = icmp sgt i32 %rc.2, 0
  br i1 %cmp74, label %do.end91, label %fail1.if.end97_crit_edge, !prof !232

fail1.if.end97_crit_edge:                         ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

do.end91:                                         ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1125, i32 noundef 9, ptr noundef null) #14
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %fail1.if.end97_crit_edge
  %msg_enable106 = getelementptr i8, ptr %call, i32 2460
  %44 = ptrtoint ptr %msg_enable106 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable106, align 4
  %and107 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end97.do.end129_crit_edge, label %do.body110

if.end97.do.end129_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end129

do.body110:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_pci_probe.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_pci_probe, %if.then122)) #14
          to label %do.end129 [label %if.then122], !srcloc !230

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev123 = getelementptr i8, ptr %call, i32 4732
  %46 = ptrtoint ptr %net_dev123 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev123, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_pci_probe.__UNIQUE_ID_ddebug677, ptr noundef %47, ptr noundef nonnull @.str.17, i32 noundef %rc.2) #14
  br label %do.end129

do.end129:                                        ; preds = %if.then122, %do.body110, %if.end97.do.end129_crit_edge
  call void @free_netdev(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end129, %if.then69, %if.end65.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %do.end129 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_pci_remove(ptr noundef %pci_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #14
  tail call fastcc void @efx_dissociate(ptr noundef nonnull %1)
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void @dev_close(ptr noundef %3) #14
  tail call void @efx_disable_interrupts(ptr noundef nonnull %1) #14
  %state = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 32
  tail call void @rtnl_unlock() #14
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type, align 4
  %sriov_fini = getelementptr inbounds %struct.efx_nic_type, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %sriov_fini to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov_fini, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %8(ptr noundef nonnull %1) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end5.efx_unregister_netdev.exit_crit_edge, label %do.body.i

if.end5.efx_unregister_netdev.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_unregister_netdev.exit

do.body.i:                                        ; preds = %if.end5
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 2304
  %cmp.not.i = icmp eq ptr %add.ptr.i.i, %1
  br i1 %cmp.not.i, label %do.end9.i, label %do.body5.i, !prof !228

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 780, 0\0A.popsection", ""() #14, !srcloc !233
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  %reg_state.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 121
  %11 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.not.i = icmp eq i8 %bf.load.i.i, 1
  br i1 %cmp.i.not.i, label %if.then12.i, label %do.end9.i.efx_unregister_netdev.exit_crit_edge

do.end9.i.efx_unregister_netdev.exit_crit_edge:   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_unregister_netdev.exit

if.then12.i:                                      ; preds = %do.end9.i
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then12.i.pci_name.exit.i_crit_edge

if.then12.i.pci_name.exit.i_crit_edge:            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.then12.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.then12.i.pci_name.exit.i_crit_edge ]
  %call14.i = tail call i32 @strlcpy(ptr noundef nonnull %1, ptr noundef %retval.0.i.i.i, i32 noundef 16) #14
  tail call void @efx_fini_mcdi_logging(ptr noundef nonnull %1) #14
  %18 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_phy_type) #14
  %20 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev, align 4
  tail call void @unregister_netdev(ptr noundef %21) #14
  br label %efx_unregister_netdev.exit

efx_unregister_netdev.exit:                       ; preds = %pci_name.exit.i, %do.end9.i.efx_unregister_netdev.exit_crit_edge, %if.end5.efx_unregister_netdev.exit_crit_edge
  tail call void @efx_mtd_remove(ptr noundef nonnull %1) #14
  tail call fastcc void @efx_pci_remove_main(ptr noundef nonnull %1)
  tail call void @efx_fini_io(ptr noundef nonnull %1) #14
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %efx_unregister_netdev.exit.do.end18_crit_edge, label %do.body8

efx_unregister_netdev.exit.do.end18_crit_edge:    ; preds = %efx_unregister_netdev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

do.body8:                                         ; preds = %efx_unregister_netdev.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_pci_remove.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_pci_remove, %if.then13)) #14
          to label %do.end18 [label %if.then13], !srcloc !230

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_pci_remove.__UNIQUE_ID_ddebug675, ptr noundef %25, ptr noundef nonnull @.str.72) #14
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body8, %efx_unregister_netdev.exit.do.end18_crit_edge
  tail call void @efx_fini_struct(ptr noundef nonnull %1) #14
  %26 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev, align 4
  tail call void @free_netdev(ptr noundef %27) #14
  %call20 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pci_dev) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_pci_sriov_configure(ptr nocapture noundef readonly %dev, i32 noundef %num_vfs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %sriov_configure = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 94
  %4 = ptrtoint ptr %sriov_configure to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_configure, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 %5(ptr noundef %1, i32 noundef %num_vfs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %num_vfs.call3 = select i1 %tobool4.not, i32 %num_vfs, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num_vfs.call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_init_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_probe_vpd_strings(ptr nocapture noundef %efx) unnamed_addr #1 align 64 {
entry:
  %vpd_size = alloca i32, align 4
  %kw_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpd_size) #14
  %2 = ptrtoint ptr %vpd_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vpd_size, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kw_len) #14
  %3 = ptrtoint ptr %kw_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %kw_len, align 4, !annotation !231
  %call = call ptr @pci_vpd_alloc(ptr noundef %1, ptr noundef nonnull %vpd_size) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.18) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vpd_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vpd_size, align 4
  %call3 = call i32 @pci_vpd_find_ro_info_keyword(ptr noundef %call, i32 noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull %kw_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br i1 %cmp, label %do.end7, label %do.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.23) #17
  br label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %kw_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kw_len, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %call3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.27, i32 noundef %7, ptr noundef %add.ptr) #17
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %do.end7
  %8 = ptrtoint ptr %vpd_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vpd_size, align 4
  %call14 = call i32 @pci_vpd_find_ro_info_keyword(ptr noundef %call, i32 noundef %9, ptr noundef nonnull @.str.29, ptr noundef nonnull %kw_len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.else21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.31) #17
  br label %if.end24

if.else21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr22 = getelementptr i8, ptr %call, i32 %call14
  %10 = ptrtoint ptr %kw_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kw_len, align 4
  %call23 = call ptr @kmemdup_nul(ptr noundef %add.ptr22, i32 noundef %11, i32 noundef 3264) #14
  %vpd_sn = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 125
  %12 = ptrtoint ptr %vpd_sn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %vpd_sn, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %do.end19
  call void @kfree(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kw_len) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpd_size) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_init_io(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_pci_probe_post_io(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net_dev1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %0 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_dev1, align 4
  %call = tail call fastcc i32 @efx_pci_probe_main(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %sriov_init = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 98
  %4 = ptrtoint ptr %sriov_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_init, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 %5(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then3.if.end10_crit_edge, label %do.end

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call6) #17
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %offload_features = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 134
  %10 = ptrtoint ptr %offload_features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offload_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features, align 16
  %or14 = or i64 %11, %13
  %or15 = or i64 %or14, 18691697737729
  store i64 %or15, ptr %features, align 16
  %14 = load ptr, ptr %type, align 4
  %offload_features17 = getelementptr inbounds %struct.efx_nic_type, ptr %14, i32 0, i32 134
  %15 = ptrtoint ptr %offload_features17 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offload_features17, align 8
  %and = and i64 %16, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool18.not = icmp eq i64 %and, 0
  br i1 %tobool18.not, label %if.end10.if.end22_crit_edge, label %if.then19

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %or21 = or i64 %or14, 18691698786305
  %17 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or21, ptr %features, align 16
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end10.if.end22_crit_edge
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type, align 4
  %tso_versions = getelementptr inbounds %struct.efx_nic_type, ptr %19, i32 0, i32 113
  %20 = ptrtoint ptr %tso_versions to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tso_versions, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %if.end22.if.then29_crit_edge, label %lor.lhs.false

if.end22.if.then29_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end22
  %call27 = tail call i32 %21(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false.if.then29_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end22.if.then29_crit_edge
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %features, align 16
  %and31 = and i64 %23, -1900545
  store i64 %and31, ptr %features, align 16
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %lor.lhs.false.if.end32_crit_edge
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vlan_features, align 8
  %or33 = or i64 %25, 1099513528361
  store i64 %or33, ptr %vlan_features, align 8
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features, align 16
  %fixed_features = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 84
  %28 = ptrtoint ptr %fixed_features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fixed_features, align 128
  %neg = xor i64 %29, -1
  %and35 = and i64 %27, %neg
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %30 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hw_features, align 8
  %or36 = or i64 %31, %and35
  store i64 %or36, ptr %hw_features, align 8
  %and40 = and i64 %27, -17592186044929
  store i64 %and40, ptr %features, align 16
  %32 = load i64, ptr %fixed_features, align 128
  %or43 = or i64 %32, %and40
  store i64 %or43, ptr %features, align 16
  %33 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net_dev1, align 4
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 115
  %35 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 500, ptr %watchdog_timeo.i, align 4
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %36 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i, align 4
  %irq2.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 64
  %40 = ptrtoint ptr %irq2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %irq2.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 16
  %41 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @efx_netdev_ops, ptr %netdev_ops.i, align 8
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type, align 4
  %revision.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %43, i32 0, i32 118
  %44 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %revision.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i = icmp sgt i32 %45, 3
  br i1 %cmp.i, label %if.then.i, label %if.end32.if.end.i_crit_edge

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 15
  %46 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %priv_flags.i, align 16
  %or.i = or i64 %47, 4096
  store i64 %or.i, ptr %priv_flags.i, align 16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end32.if.end.i_crit_edge
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 44
  %48 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @efx_ethtool_ops, ptr %ethtool_ops.i, align 16
  %gso_max_segs.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 138
  %49 = ptrtoint ptr %gso_max_segs.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store volatile i16 100, ptr %gso_max_segs.i.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 30
  %50 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 68, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 31
  %51 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 9216, ptr %max_mtu.i, align 4
  tail call void @rtnl_lock() #14
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %state.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !234
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 24
  %53 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.58) #17
  br label %fail_locked.i

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @dev_alloc_name(ptr noundef %34, ptr noundef %34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.fail_locked.i_crit_edge, label %if.end15.i

if.end11.i.fail_locked.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_locked.i

if.end15.i:                                       ; preds = %if.end11.i
  %57 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net_dev1, align 4
  %call.i.i = tail call ptr @strcpy(ptr noundef %efx, ptr noundef %58) #18
  tail call void @efx_mtd_rename(ptr noundef %efx) #14
  tail call void @efx_set_channel_names(ptr noundef %efx) #14
  tail call void @netif_carrier_off(ptr noundef %34) #14
  %call16.i = tail call i32 @register_netdevice(ptr noundef %34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.fail_locked.i_crit_edge

if.end15.i.fail_locked.i_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_locked.i

if.end19.i:                                       ; preds = %if.end15.i
  %channel20.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %59 = ptrtoint ptr %channel20.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %channel20.i, align 8
  %tobool21.not118.i = icmp eq ptr %60, null
  br i1 %tobool21.not118.i, label %if.end19.i.for.end40.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.for.end40.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %n_channels.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.0119.i = phi ptr [ %60, %for.body.lr.ph.i ], [ %82, %cond.end.i.for.body.i_crit_edge ]
  %tx_queue24.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0119.i, i32 0, i32 46
  %channel1.i.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0119.i, i32 0, i32 1
  %61 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %channel1.i.i.i, align 4
  %63 = ptrtoint ptr %channel.0119.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %channel.0119.i, align 128
  %xdp_channel_offset.i.i107.i = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 50
  %65 = ptrtoint ptr %xdp_channel_offset.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %xdp_channel_offset.i.i107.i, align 8
  %sub.i.i108.i = sub i32 %62, %66
  %n_xdp_channels.i.i109.i = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 49
  %67 = ptrtoint ptr %n_xdp_channels.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_xdp_channels.i.i109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i108.i, i32 %68)
  %cmp.i.i110.i = icmp ult i32 %sub.i.i108.i, %68
  %xdp_tx_per_channel.i111.i = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 51
  %tx_queues_per_channel.i112.i = getelementptr inbounds %struct.efx_nic, ptr %64, i32 0, i32 48
  %retval.0.in.i113.i = select i1 %cmp.i.i110.i, ptr %xdp_tx_per_channel.i111.i, ptr %tx_queues_per_channel.i112.i
  %69 = ptrtoint ptr %retval.0.in.i113.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i114.i = load i32, ptr %retval.0.in.i113.i, align 4
  %add.ptr115.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue24.i, i32 %retval.0.i114.i
  %cmp30116.i = icmp ult ptr %tx_queue24.i, %add.ptr115.i
  br i1 %cmp30116.i, label %for.body.i.for.body31.i_crit_edge, label %for.body.i.if.end32.i_crit_edge

for.body.i.if.end32.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

for.body.i.for.body31.i_crit_edge:                ; preds = %for.body.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %for.body.i.for.body31.i_crit_edge
  %tx_queue.0117.i = phi ptr [ %incdec.ptr.i, %for.body31.i.for.body31.i_crit_edge ], [ %tx_queue24.i, %for.body.i.for.body31.i_crit_edge ]
  tail call void @efx_init_tx_queue_core_txq(ptr noundef %tx_queue.0117.i) #14
  %incdec.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue.0117.i, i32 1
  %70 = ptrtoint ptr %channel1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channel1.i.i.i, align 4
  %72 = ptrtoint ptr %channel.0119.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %channel.0119.i, align 128
  %xdp_channel_offset.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %73, i32 0, i32 50
  %74 = ptrtoint ptr %xdp_channel_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xdp_channel_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %71, %75
  %n_xdp_channels.i.i.i = getelementptr inbounds %struct.efx_nic, ptr %73, i32 0, i32 49
  %76 = ptrtoint ptr %n_xdp_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_xdp_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %77)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %77
  %xdp_tx_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %73, i32 0, i32 51
  %tx_queues_per_channel.i.i = getelementptr inbounds %struct.efx_nic, ptr %73, i32 0, i32 48
  %retval.0.in.i.i = select i1 %cmp.i.i.i, ptr %xdp_tx_per_channel.i.i, ptr %tx_queues_per_channel.i.i
  %78 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %add.ptr.i = getelementptr %struct.efx_tx_queue, ptr %tx_queue24.i, i32 %retval.0.i.i
  %cmp30.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp30.i, label %for.body31.i.for.body31.i_crit_edge, label %for.body31.i.if.end32.i_crit_edge

for.body31.i.if.end32.i_crit_edge:                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body31.i

if.end32.i:                                       ; preds = %for.body31.i.if.end32.i_crit_edge, %for.body.i.if.end32.i_crit_edge
  %.lcssa.i = phi i32 [ %62, %for.body.i.if.end32.i_crit_edge ], [ %71, %for.body31.i.if.end32.i_crit_edge ]
  %add.i = add i32 %.lcssa.i, 1
  %79 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n_channels.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %80)
  %cmp35.i = icmp ult i32 %add.i, %80
  br i1 %cmp35.i, label %cond.end.i, label %if.end32.i.for.end40.i_crit_edge

if.end32.i.for.end40.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40.i

cond.end.i:                                       ; preds = %if.end32.i
  %arrayidx39.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add.i
  %81 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx39.i, align 4
  %tobool21.not.i = icmp eq ptr %82, null
  br i1 %tobool21.not.i, label %cond.end.i.for.end40.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cond.end.i.for.end40.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end40.i

for.end40.i:                                      ; preds = %cond.end.i.for.end40.i_crit_edge, %if.end32.i.for.end40.i_crit_edge, %if.end19.i.for.end40.i_crit_edge
  tail call fastcc void @efx_associate(ptr noundef %efx) #14
  tail call void @rtnl_unlock() #14
  %83 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pci_dev.i, align 4
  %dev42.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %call43.i = tail call i32 @device_create_file(ptr noundef %dev42.i, ptr noundef nonnull @dev_attr_phy_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %efx_register_netdev.exit, label %do.body46.i

do.body46.i:                                      ; preds = %for.end40.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %85 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool47.not.i, label %do.body46.i.fail_registered.i_crit_edge, label %if.then48.i

do.body46.i.fail_registered.i_crit_edge:          ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_registered.i

if.then48.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %88, ptr noundef nonnull @.str.60) #17
  br label %fail_registered.i

fail_registered.i:                                ; preds = %if.then48.i, %do.body46.i.fail_registered.i_crit_edge
  tail call void @rtnl_lock() #14
  tail call fastcc void @efx_dissociate(ptr noundef %efx) #14
  tail call void @unregister_netdevice_queue(ptr noundef %34, ptr noundef null) #14
  br label %fail_locked.i

fail_locked.i:                                    ; preds = %fail_registered.i, %if.end15.i.fail_locked.i_crit_edge, %if.end11.i.fail_locked.i_crit_edge, %do.end9.i
  %rc.0.i = phi i32 [ -5, %do.end9.i ], [ %call12.i, %if.end11.i.fail_locked.i_crit_edge ], [ %call16.i, %if.end15.i.fail_locked.i_crit_edge ], [ %call43.i, %fail_registered.i ]
  %89 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %state.i, align 32
  tail call void @rtnl_unlock() #14
  %msg_enable56.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %90 = ptrtoint ptr %msg_enable56.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable56.i, align 4
  %and57.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %fail_locked.i.if.end47_crit_edge, label %if.then59.i

fail_locked.i.if.end47_crit_edge:                 ; preds = %fail_locked.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then59.i:                                      ; preds = %fail_locked.i
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net_dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %93, ptr noundef nonnull @.str.61) #17
  br label %if.end47

efx_register_netdev.exit:                         ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_init_mcdi_logging(ptr noundef %efx) #14
  br label %cleanup

if.end47:                                         ; preds = %if.then59.i, %fail_locked.i.if.end47_crit_edge
  tail call fastcc void @efx_pci_remove_main(ptr noundef %efx)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %efx_register_netdev.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %if.end47 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %efx_register_netdev.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_vpd_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vpd_find_ro_info_keyword(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_pci_probe_main(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efx_probe_all(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @efx_init_napi(ptr noundef %efx) #14
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #14
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %init = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %call1 = tail call i32 %3(ptr noundef %efx) #14
  tail call void @up_write(ptr noundef %filter_sem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #17
  br label %fail3

if.end5:                                          ; preds = %if.end
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %6 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.do.end8.i_crit_edge, label %do.body1.i

if.end5.do.end8.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i

do.body1.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_port.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_pci_probe_main, %if.then5.i)) #14
          to label %do.end8.i [label %if.then5.i], !srcloc !230

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_port.__UNIQUE_ID_ddebug659, ptr noundef %9, ptr noundef nonnull @.str.52) #14
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %if.end5.do.end8.i_crit_edge
  %mac_lock.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock.i, i32 noundef 0) #14
  %port_initialized.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 82
  %10 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %port_initialized.i, align 2
  %call9.i = tail call i32 @efx_mcdi_port_reconfigure(ptr noundef %efx) #14
  %11 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call9.i, label %do.body9 [
    i32 0, label %do.end8.i.if.end15_crit_edge
    i32 -1, label %do.end8.i.if.end15_crit_edge58
  ]

do.end8.i.if.end15_crit_edge58:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

do.end8.i.if.end15_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

do.body9:                                         ; preds = %do.end8.i
  tail call void @mutex_unlock(ptr noundef %mac_lock.i) #14
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body9.fail4_crit_edge, label %if.then11

do.body9.fail4_crit_edge:                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail4

if.then11:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.37) #17
  br label %fail4

if.end15:                                         ; preds = %do.end8.i.if.end15_crit_edge, %do.end8.i.if.end15_crit_edge58
  tail call void @mutex_unlock(ptr noundef %mac_lock.i) #14
  %call16 = tail call i32 @efx_nic_init_interrupt(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.fail5_crit_edge

if.end15.fail5_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail5

if.end19:                                         ; preds = %if.end15
  tail call void @efx_set_interrupt_affinity(ptr noundef %efx) #14
  %call20 = tail call i32 @efx_enable_interrupts(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %fail6

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fail6:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_clear_interrupt_affinity(ptr noundef %efx) #14
  tail call void @efx_nic_fini_interrupt(ptr noundef %efx) #14
  br label %fail5

fail5:                                            ; preds = %fail6, %if.end15.fail5_crit_edge
  %rc.0 = phi i32 [ %call16, %if.end15.fail5_crit_edge ], [ %call20, %fail6 ]
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and.i50 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %fail5.do.end7.i_crit_edge, label %do.body1.i52

fail5.do.end7.i_crit_edge:                        ; preds = %fail5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

do.body1.i52:                                     ; preds = %fail5
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_port.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_pci_probe_main, %if.then5.i54)) #14
          to label %do.end7.i [label %if.then5.i54], !srcloc !230

if.then5.i54:                                     ; preds = %do.body1.i52
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i53 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %18 = ptrtoint ptr %net_dev.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_dev.i53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_port.__UNIQUE_ID_ddebug660, ptr noundef %19, ptr noundef nonnull @.str.54) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then5.i54, %do.body1.i52, %fail5.do.end7.i_crit_edge
  %20 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_initialized.i, align 2, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not.i = icmp eq i8 %21, 0
  br i1 %tobool8.not.i, label %do.end7.i.fail4_crit_edge, label %if.end10.i

do.end7.i.fail4_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail4

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %port_initialized.i, align 2
  %link_state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97
  %23 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %link_state.i, align 4
  tail call void @efx_link_status_changed(ptr noundef %efx) #14
  br label %fail4

fail4:                                            ; preds = %if.end10.i, %do.end7.i.fail4_crit_edge, %if.then11, %do.body9.fail4_crit_edge
  %rc.1 = phi i32 [ %call9.i, %if.then11 ], [ %call9.i, %do.body9.fail4_crit_edge ], [ %rc.0, %do.end7.i.fail4_crit_edge ], [ %rc.0, %if.end10.i ]
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 4
  %fini = getelementptr inbounds %struct.efx_nic_type, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fini, align 4
  tail call void %27(ptr noundef %efx) #14
  br label %fail3

fail3:                                            ; preds = %fail4, %do.end
  %rc.2 = phi i32 [ %call1, %do.end ], [ %rc.1, %fail4 ]
  tail call void @efx_fini_napi(ptr noundef %efx) #14
  tail call fastcc void @efx_remove_all(ptr noundef %efx)
  br label %cleanup

cleanup:                                          ; preds = %fail3, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %rc.2, %fail3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_pci_remove_main(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !232

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/efx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 852, 0\0A.popsection", ""() #14, !srcloc !235
  unreachable

do.end5:                                          ; preds = %entry
  tail call void @efx_flush_reset_workqueue(ptr noundef %efx) #14
  tail call void @efx_disable_interrupts(ptr noundef %efx) #14
  tail call void @efx_clear_interrupt_affinity(ptr noundef %efx) #14
  tail call void @efx_nic_fini_interrupt(ptr noundef %efx) #14
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end5.do.end7.i_crit_edge, label %do.body1.i

do.end5.do.end7.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

do.body1.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_port.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_pci_remove_main, %if.then5.i)) #14
          to label %do.end7.i [label %if.then5.i], !srcloc !230

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_port.__UNIQUE_ID_ddebug660, ptr noundef %5, ptr noundef nonnull @.str.54) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then5.i, %do.body1.i, %do.end5.do.end7.i_crit_edge
  %port_initialized.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 82
  %6 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_initialized.i, align 2, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not.i = icmp eq i8 %7, 0
  br i1 %tobool8.not.i, label %do.end7.i.efx_fini_port.exit_crit_edge, label %if.end10.i

do.end7.i.efx_fini_port.exit_crit_edge:           ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_fini_port.exit

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %port_initialized.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %port_initialized.i, align 2
  %link_state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 97
  %9 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %link_state.i, align 4
  tail call void @efx_link_status_changed(ptr noundef %efx) #14
  br label %efx_fini_port.exit

efx_fini_port.exit:                               ; preds = %if.end10.i, %do.end7.i.efx_fini_port.exit_crit_edge
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 4
  %fini = getelementptr inbounds %struct.efx_nic_type, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fini, align 4
  tail call void %13(ptr noundef %efx) #14
  tail call void @efx_fini_napi(ptr noundef %efx) #14
  tail call fastcc void @efx_remove_all(ptr noundef %efx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_probe_all(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efx_probe_nic(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool.not.i, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.38) #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.end3.do.end8.i_crit_edge, label %do.body1.i

if.end3.do.end8.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i

do.body1.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_probe_port.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_all, %if.then5.i)) #14
          to label %do.end8.i [label %if.then5.i], !srcloc !230

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_probe_port.__UNIQUE_ID_ddebug658, ptr noundef %5, ptr noundef nonnull @.str.46) #14
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %if.end3.do.end8.i_crit_edge
  %6 = load i8, ptr @phy_flash_cfg, align 1, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not.i = icmp eq i8 %6, 0
  br i1 %tobool9.not.i, label %do.end8.i.if.end11.i_crit_edge, label %if.then10.i

do.end8.i.if.end11.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then10.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %phy_mode.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 94
  %7 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %phy_mode.i, align 16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %do.end8.i.if.end11.i_crit_edge
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %probe_port.i = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %probe_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %probe_port.i, align 8
  %call12.i = tail call i32 %11(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end19, label %do.body7

do.body7:                                         ; preds = %if.end11.i
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i, align 4
  %and9 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.fail2_crit_edge, label %if.then11

do.body7.fail2_crit_edge:                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail2

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev12 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.39) #17
  br label %fail2

do.end19:                                         ; preds = %if.end11.i
  %net_dev16.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %16 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_dev16.i, align 4
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 54
  tail call void @dev_addr_mod(ptr noundef %17, i32 noundef 0, ptr noundef %perm_addr.i, i32 noundef 6) #14
  %call20 = tail call i32 @efx_tx_max_skb_descs(ptr noundef %efx) #14
  %mul = shl i32 %call20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul)
  %cmp = icmp ugt i32 %mul, 1024
  br i1 %cmp, label %do.end32, label %if.end47, !prof !232

do.end32:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #14
  br label %fail3

if.end47:                                         ; preds = %do.end19
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type.i, align 4
  %vswitching_probe = getelementptr inbounds %struct.efx_nic_type, ptr %19, i32 0, i32 108
  %20 = ptrtoint ptr %vswitching_probe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vswitching_probe, align 8
  %call48 = tail call i32 %21(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.if.end60_crit_edge, label %do.body51

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.body51:                                        ; preds = %if.end47
  %22 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i, align 4
  %and53 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.if.end60_crit_edge, label %if.then55

do.body51.if.end60_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_dev16.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.40, i32 noundef %call48) #17
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %do.body51.if.end60_crit_edge, %if.end47.if.end60_crit_edge
  %call61 = tail call i32 @efx_probe_filters(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end73, label %do.body64

do.body64:                                        ; preds = %if.end60
  %26 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable.i, align 4
  %and66 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body64.fail4_crit_edge, label %if.then68

do.body64.fail4_crit_edge:                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail4

if.then68:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_dev16.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.41) #17
  br label %fail4

if.end73:                                         ; preds = %if.end60
  %call74 = tail call i32 @efx_probe_channels(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %fail5

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fail5:                                            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_remove_filters(ptr noundef %efx) #14
  br label %fail4

fail4:                                            ; preds = %fail5, %if.then68, %do.body64.fail4_crit_edge
  %rc.0 = phi i32 [ %call61, %if.then68 ], [ %call61, %do.body64.fail4_crit_edge ], [ %call74, %fail5 ]
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type.i, align 4
  %vswitching_remove = getelementptr inbounds %struct.efx_nic_type, ptr %31, i32 0, i32 110
  %32 = ptrtoint ptr %vswitching_remove to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vswitching_remove, align 8
  tail call void %33(ptr noundef %efx) #14
  br label %fail3

fail3:                                            ; preds = %fail4, %do.end32
  %rc.1 = phi i32 [ -22, %do.end32 ], [ %rc.0, %fail4 ]
  %34 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable.i, align 4
  %and.i106 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %fail3.efx_remove_port.exit_crit_edge, label %do.body1.i108

fail3.efx_remove_port.exit_crit_edge:             ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_remove_port.exit

do.body1.i108:                                    ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_port.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_all, %if.then5.i110)) #14
          to label %efx_remove_port.exit [label %if.then5.i110], !srcloc !230

if.then5.i110:                                    ; preds = %do.body1.i108
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %net_dev16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net_dev16.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_port.__UNIQUE_ID_ddebug661, ptr noundef %37, ptr noundef nonnull @.str.48) #14
  br label %efx_remove_port.exit

efx_remove_port.exit:                             ; preds = %if.then5.i110, %do.body1.i108, %fail3.efx_remove_port.exit_crit_edge
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %type.i, align 4
  %remove_port.i = getelementptr inbounds %struct.efx_nic_type, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %remove_port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %remove_port.i, align 4
  tail call void %41(ptr noundef %efx) #14
  br label %fail2

fail2:                                            ; preds = %efx_remove_port.exit, %if.then11, %do.body7.fail2_crit_edge
  %rc.2 = phi i32 [ %call12.i, %if.then11 ], [ %call12.i, %do.body7.fail2_crit_edge ], [ %rc.1, %efx_remove_port.exit ]
  %42 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable.i, align 4
  %and.i113 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114 = icmp eq i32 %and.i113, 0
  br i1 %tobool.not.i114, label %fail2.efx_remove_nic.exit_crit_edge, label %do.body1.i115

fail2.efx_remove_nic.exit_crit_edge:              ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_remove_nic.exit

do.body1.i115:                                    ; preds = %fail2
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_nic.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_all, %if.then5.i117)) #14
          to label %efx_remove_nic.exit [label %if.then5.i117], !srcloc !230

if.then5.i117:                                    ; preds = %do.body1.i115
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i116 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %44 = ptrtoint ptr %net_dev.i116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_dev.i116, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_nic.__UNIQUE_ID_ddebug668, ptr noundef %45, ptr noundef nonnull @.str.50) #14
  br label %efx_remove_nic.exit

efx_remove_nic.exit:                              ; preds = %if.then5.i117, %do.body1.i115, %fail2.efx_remove_nic.exit_crit_edge
  tail call void @efx_remove_interrupts(ptr noundef %efx) #14
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %type.i, align 4
  %remove.i = getelementptr inbounds %struct.efx_nic_type, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %remove.i, align 8
  tail call void %49(ptr noundef %efx) #14
  br label %cleanup

cleanup:                                          ; preds = %efx_remove_nic.exit, %if.end73.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73.cleanup_crit_edge ], [ %call, %if.then2 ], [ %call, %do.body.cleanup_crit_edge ], [ %rc.2, %efx_remove_nic.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_init_napi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_init_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_interrupt_affinity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_enable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_clear_interrupt_affinity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_fini_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_napi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_remove_all(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #14
  %call = tail call fastcc i32 @efx_xdp_setup_prog(ptr noundef %efx, ptr noundef null)
  tail call void @rtnl_unlock() #14
  tail call void @efx_remove_channels(ptr noundef %efx) #14
  tail call void @efx_remove_filters(ptr noundef %efx) #14
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %vswitching_remove = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 110
  %2 = ptrtoint ptr %vswitching_remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vswitching_remove, align 8
  tail call void %3(ptr noundef %efx) #14
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.efx_remove_port.exit_crit_edge, label %do.body1.i

entry.efx_remove_port.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_remove_port.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_port.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_remove_all, %if.then5.i)) #14
          to label %efx_remove_port.exit [label %if.then5.i], !srcloc !230

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_port.__UNIQUE_ID_ddebug661, ptr noundef %7, ptr noundef nonnull @.str.48) #14
  br label %efx_remove_port.exit

efx_remove_port.exit:                             ; preds = %if.then5.i, %do.body1.i, %entry.efx_remove_port.exit_crit_edge
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %remove_port.i = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %remove_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_port.i, align 4
  tail call void %11(ptr noundef %efx) #14
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i, align 4
  %and.i8 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %efx_remove_port.exit.efx_remove_nic.exit_crit_edge, label %do.body1.i10

efx_remove_port.exit.efx_remove_nic.exit_crit_edge: ; preds = %efx_remove_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_remove_nic.exit

do.body1.i10:                                     ; preds = %efx_remove_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_nic.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_remove_all, %if.then5.i12)) #14
          to label %efx_remove_nic.exit [label %if.then5.i12], !srcloc !230

if.then5.i12:                                     ; preds = %do.body1.i10
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i11 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev.i11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_nic.__UNIQUE_ID_ddebug668, ptr noundef %15, ptr noundef nonnull @.str.50) #14
  br label %efx_remove_nic.exit

efx_remove_nic.exit:                              ; preds = %if.then5.i12, %do.body1.i10, %efx_remove_port.exit.efx_remove_nic.exit_crit_edge
  tail call void @efx_remove_interrupts(ptr noundef %efx) #14
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %remove.i = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remove.i, align 8
  tail call void %19(ptr noundef %efx) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_probe_nic(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_probe_nic.__UNIQUE_ID_ddebug667, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_nic, %if.then5)) #14
          to label %do.end8 [label %if.then5], !srcloc !230

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_probe_nic.__UNIQUE_ID_ddebug667, ptr noundef %3, ptr noundef nonnull @.str.43) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %probe = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %probe, align 4
  %call9 = tail call i32 %7(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13.preheader, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body13.preheader:                              ; preds = %do.end8
  %max_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 39
  %8 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not85 = icmp eq i32 %9, 0
  br i1 %tobool14.not85, label %do.body13.preheader.do.body17_crit_edge, label %lor.lhs.false.lr.ph

do.body13.preheader.do.body17_crit_edge:          ; preds = %do.body13.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

lor.lhs.false.lr.ph:                              ; preds = %do.body13.preheader
  %max_tx_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 41
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then41.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %10 = ptrtoint ptr %max_tx_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_tx_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %lor.lhs.false.do.body17_crit_edge, label %if.end26

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

do.body17:                                        ; preds = %if.then41.do.body17_crit_edge, %lor.lhs.false.do.body17_crit_edge, %do.body13.preheader.do.body17_crit_edge
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and19 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.fail1_crit_edge, label %if.then21

do.body17.fail1_crit_edge:                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail1

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev22 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %14 = ptrtoint ptr %net_dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.44) #17
  br label %fail1

if.end26:                                         ; preds = %lor.lhs.false
  %call27 = tail call i32 @efx_probe_interrupts(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.fail1_crit_edge

if.end26.fail1_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail1

if.end30:                                         ; preds = %if.end26
  %call31 = tail call i32 @efx_set_channels(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.fail1_crit_edge

if.end30.fail1_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail1

if.end34:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %dimension_resources = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %dimension_resources to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dimension_resources, align 8
  %call36 = tail call i32 %19(ptr noundef %efx) #14
  %20 = zext i32 %call36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call36, label %fail2 [
    i32 -11, label %if.then41
    i32 0, label %do.end45.critedge
  ]

if.then41:                                        ; preds = %if.end34
  tail call void @efx_remove_interrupts(ptr noundef %efx) #14
  %21 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_channels, align 4
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %if.then41.do.body17_crit_edge, label %if.then41.lor.lhs.false_crit_edge

if.then41.lor.lhs.false_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

if.then41.do.body17_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body17

do.end45.critedge:                                ; preds = %if.end34
  %n_channels = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 42
  %23 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp46 = icmp ugt i32 %24, 1
  br i1 %cmp46, label %if.then47, label %do.end45.critedge.if.end48_crit_edge

do.end45.critedge.if.end48_crit_edge:             ; preds = %do.end45.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %do.end45.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %rx_hash_key = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64, i32 4
  tail call void @netdev_rss_key_fill(ptr noundef %rx_hash_key, i32 noundef 40) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %do.end45.critedge.if.end48_crit_edge
  %rss_context49 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 64
  tail call void @efx_set_default_rx_indir_table(ptr noundef %efx, ptr noundef %rss_context49) #14
  %timer_quantum_ns = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 16
  %25 = ptrtoint ptr %timer_quantum_ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timer_quantum_ns, align 8
  %sub = add i32 %26, 999
  %div = udiv i32 %sub, 1000
  %irq_mod_step_us = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 20
  %27 = ptrtoint ptr %irq_mod_step_us to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div, ptr %irq_mod_step_us, align 4
  %state.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 23
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state.i, align 32
  %.off.i = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i, label %if.end48.do.end48.i_crit_edge

if.end48.do.end48.i_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48.i

if.then.i:                                        ; preds = %if.end48
  %call.i = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.i.do.end48.i_crit_edge

if.then.i.do.end48.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b117.i = load i1, ptr @efx_init_irq_moderation.__already_done, align 1
  br i1 %.b117.i, label %land.rhs.i.do.end48.i_crit_edge, label %if.then16.i, !prof !228

land.rhs.i.do.end48.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48.i

if.then16.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @efx_init_irq_moderation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 442) #14
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then16.i, %land.rhs.i.do.end48.i_crit_edge, %if.then.i.do.end48.i_crit_edge, %if.end48.do.end48.i_crit_edge
  %timer_max_ns.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 17
  %30 = ptrtoint ptr %timer_max_ns.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timer_max_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %31)
  %cmp49.i = icmp ult i32 %31, 150000
  br i1 %cmp49.i, label %do.end48.i.cleanup_crit_edge, label %if.end53.i

do.end48.i.cleanup_crit_edge:                     ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end53.i:                                       ; preds = %do.end48.i
  %irq_rx_adaptive.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 18
  %32 = ptrtoint ptr %irq_rx_adaptive.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %irq_rx_adaptive.i, align 16
  %irq_rx_moderation_us.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 21
  %33 = ptrtoint ptr %irq_rx_moderation_us.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 60, ptr %irq_rx_moderation_us.i, align 8
  %channel68.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 25
  %34 = ptrtoint ptr %channel68.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %channel68.i, align 8
  %tobool69.not118.i = icmp eq ptr %35, null
  br i1 %tobool69.not118.i, label %if.end53.i.cleanup_crit_edge, label %if.end53.i.for.body.i_crit_edge

if.end53.i.for.body.i_crit_edge:                  ; preds = %if.end53.i
  br label %for.body.i

if.end53.i.cleanup_crit_edge:                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %if.end53.i.for.body.i_crit_edge
  %channel.0119.i = phi ptr [ %45, %cond.end.i.for.body.i_crit_edge ], [ %35, %if.end53.i.for.body.i_crit_edge ]
  %core_index.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0119.i, i32 0, i32 45, i32 1
  %36 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i123.i = icmp slt i32 %37, 0
  %spec.select.i = select i1 %cmp.i123.i, i32 150, i32 60
  %38 = getelementptr inbounds %struct.efx_channel, ptr %channel.0119.i, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select.i, ptr %38, align 4
  %channel82.i = getelementptr inbounds %struct.efx_channel, ptr %channel.0119.i, i32 0, i32 1
  %40 = ptrtoint ptr %channel82.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel82.i, align 4
  %add.i = add i32 %41, 1
  %42 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %43)
  %cmp83.i = icmp ult i32 %add.i, %43
  br i1 %cmp83.i, label %cond.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end.i:                                       ; preds = %for.body.i
  %arrayidx87.i = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 25, i32 %add.i
  %44 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx87.i, align 4
  %tobool69.not.i = icmp eq ptr %45, null
  br i1 %tobool69.not.i, label %cond.end.i.cleanup_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fail2:                                            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @efx_remove_interrupts(ptr noundef %efx) #14
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end30.fail1_crit_edge, %if.end26.fail1_crit_edge, %if.then21, %do.body17.fail1_crit_edge
  %rc.0 = phi i32 [ %call36, %fail2 ], [ -28, %if.then21 ], [ -28, %do.body17.fail1_crit_edge ], [ %call31, %if.end30.fail1_crit_edge ], [ %call27, %if.end26.fail1_crit_edge ]
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %type, align 4
  %remove = getelementptr inbounds %struct.efx_nic_type, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %remove, align 8
  tail call void %49(ptr noundef %efx) #14
  br label %cleanup

cleanup:                                          ; preds = %fail1, %cond.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end53.i.cleanup_crit_edge, %do.end48.i.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail1 ], [ %call9, %do.end8.cleanup_crit_edge ], [ 0, %do.end48.i.cleanup_crit_edge ], [ 0, %if.end53.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ], [ 0, %cond.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_tx_max_skb_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_filters(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_filters(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_probe_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_set_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_default_rx_indir_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_port_reconfigure(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_xdp_setup_prog(ptr noundef %efx, ptr noundef %prog) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_rxq_info_failed = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 126
  %0 = ptrtoint ptr %xdp_rxq_info_failed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %xdp_rxq_info_failed, align 8, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.55) #17
  br label %cleanup

if.end3:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %prog, null
  br i1 %tobool4.not, label %if.end3.do.body20_crit_edge, label %land.lhs.true

if.end3.do.body20_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body20

land.lhs.true:                                    ; preds = %if.end3
  %net_dev5 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev5, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  %call = tail call i32 @efx_xdp_max_mtu(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call)
  %cmp = icmp ugt i32 %9, %call
  br i1 %cmp, label %do.body7, label %land.lhs.true.do.body20_crit_edge

land.lhs.true.do.body20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body20

do.body7:                                         ; preds = %land.lhs.true
  %msg_enable8 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %10 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable8, align 4
  %and9 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.cleanup_crit_edge, label %if.then11

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %net_dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev5, align 4
  %mtu14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %mtu14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu14, align 4
  %call15 = tail call i32 @efx_xdp_max_mtu(ptr noundef %efx) #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.56, i32 noundef %15, i32 noundef %call15) #17
  br label %cleanup

do.body20:                                        ; preds = %land.lhs.true.do.body20_crit_edge, %if.end3.do.body20_crit_edge
  %call21 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call21, label %do.body20.do.end30_crit_edge, label %land.lhs.true22

do.body20.do.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.lhs.true22:                                  ; preds = %do.body20
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b85 = load i1, ptr @efx_xdp_setup_prog.__warned, align 1
  br i1 %.b85, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @efx_xdp_setup_prog.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 637, ptr noundef nonnull @.str.57) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %do.body20.do.end30_crit_edge
  %xdp_prog = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 107
  %16 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xdp_prog, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !236
  %18 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %prog, ptr %xdp_prog, align 4
  %tobool70.not = icmp eq ptr %17, null
  br i1 %tobool70.not, label %do.end30.cleanup_crit_edge, label %if.then71

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then71:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bpf_prog_put(ptr noundef nonnull %17) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.end30.cleanup_crit_edge, %if.then11, %do.body7.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then11 ], [ -22, %do.body7.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %do.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_remove_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_xdp_max_mtu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_init_tx_queue_core_txq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_associate(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 2
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 8
  %cmp = icmp eq ptr %1, %efx
  br i1 %cmp, label %do.body, label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %entry
  %.pn223 = load ptr, ptr @efx_primary_list, align 4
  %cmp63.not224 = icmp eq ptr %.pn223, @efx_primary_list
  br i1 %cmp63.not224, label %for.cond61.preheader.do.body110_crit_edge, label %for.body66.lr.ph

for.cond61.preheader.do.body110_crit_edge:        ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body110

for.body66.lr.ph:                                 ; preds = %for.cond61.preheader
  %type.i189 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %2 = ptrtoint ptr %type.i189 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i189, align 4
  %vpd_sn.i192 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 125
  br label %for.body66

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.body2

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_associate.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_associate, %if.then6)) #14
          to label %do.end9 [label %if.then6], !srcloc !230

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_associate.__UNIQUE_ID_ddebug662, ptr noundef %7, ptr noundef nonnull @.str.63) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %do.body.do.end9_crit_edge
  %node = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @efx_primary_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %8, ptr noundef nonnull @efx_primary_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.end9.list_add_tail.exit_crit_edge

do.end9.list_add_tail.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @efx_primary_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @efx_primary_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %node, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end9.list_add_tail.exit_crit_edge
  %12 = load ptr, ptr @efx_unassociated_list, align 4
  %cmp17.not227 = icmp eq ptr %12, @efx_unassociated_list
  br i1 %cmp17.not227, label %list_add_tail.exit.cleanup_crit_edge, label %for.body.lr.ph

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %list_add_tail.exit
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %vpd_sn.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 125
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %net_dev43 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %secondary_list = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 3
  %prev.i184 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn170.in228 = phi ptr [ %12, %for.body.lr.ph ], [ %.pn170230, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn170230 = load ptr, ptr %.pn170.in228, align 16
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %type1.i = getelementptr i8, ptr %.pn170.in228, i32 28
  %16 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type1.i, align 4
  %cmp.i = icmp eq ptr %15, %17
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %18 = ptrtoint ptr %vpd_sn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vpd_sn.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %vpd_sn3.i = getelementptr i8, ptr %.pn170.in228, i32 3924
  %20 = ptrtoint ptr %vpd_sn3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vpd_sn3.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.for.inc_crit_edge, label %efx_same_controller.exit

land.lhs.true2.i.for.inc_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

efx_same_controller.exit:                         ; preds = %land.lhs.true2.i
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull %21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.then21, label %efx_same_controller.exit.for.inc_crit_edge

efx_same_controller.exit.for.inc_crit_edge:       ; preds = %efx_same_controller.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then21:                                        ; preds = %efx_same_controller.exit
  %call.i.i181 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn170.in228) #14
  br i1 %call.i.i181, label %if.end.i.i182, label %if.then21.list_del.exit_crit_edge

if.then21.list_del.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i182:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn170.in228, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn170.in228, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i182, %if.then21.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn170.in228, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn170.in228, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %msg_enable24 = getelementptr i8, ptr %.pn170.in228, i32 140
  %30 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable24, align 4
  %and25 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %list_del.exit.do.end49_crit_edge, label %do.body28

list_del.exit.do.end49_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49

do.body28:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_associate.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_associate, %if.then40)) #14
          to label %do.end49 [label %if.then40], !srcloc !230

if.then40:                                        ; preds = %do.body28
  %net_dev41 = getelementptr i8, ptr %.pn170.in228, i32 2412
  %32 = ptrtoint ptr %net_dev41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net_dev41, align 4
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i183, label %if.then40.pci_name.exit_crit_edge

if.then40.pci_name.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i183:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i183, %if.then40.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i183 ], [ %37, %if.then40.pci_name.exit_crit_edge ]
  %40 = ptrtoint ptr %net_dev43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_associate.__UNIQUE_ID_ddebug663, ptr noundef %33, ptr noundef nonnull @.str.64, ptr noundef %retval.0.i.i, ptr noundef %41) #14
  br label %do.end49

do.end49:                                         ; preds = %pci_name.exit, %do.body28, %list_del.exit.do.end49_crit_edge
  %42 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i184, align 4
  %call.i.i185 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn170.in228, ptr noundef %43, ptr noundef %secondary_list) #14
  br i1 %call.i.i185, label %if.end.i.i187, label %do.end49.list_add_tail.exit188_crit_edge

do.end49.list_add_tail.exit188_crit_edge:         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit188

if.end.i.i187:                                    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn170.in228, ptr %prev.i184, align 4
  %45 = ptrtoint ptr %.pn170.in228 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %secondary_list, ptr %.pn170.in228, align 4
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn170.in228, ptr %43, align 4
  br label %list_add_tail.exit188

list_add_tail.exit188:                            ; preds = %if.end.i.i187, %do.end49.list_add_tail.exit188_crit_edge
  %primary51 = getelementptr i8, ptr %.pn170.in228, i32 8
  %48 = ptrtoint ptr %primary51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %efx, ptr %primary51, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit188, %efx_same_controller.exit.for.inc_crit_edge, %land.lhs.true2.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp17.not = icmp eq ptr %.pn170230, @efx_unassociated_list
  br i1 %cmp17.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body66:                                       ; preds = %for.cond61.backedge.for.body66_crit_edge, %for.body66.lr.ph
  %.pn225 = phi ptr [ %.pn223, %for.body66.lr.ph ], [ %.pn, %for.cond61.backedge.for.body66_crit_edge ]
  %type1.i190 = getelementptr i8, ptr %.pn225, i32 28
  %49 = ptrtoint ptr %type1.i190 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %type1.i190, align 4
  %cmp.i191 = icmp eq ptr %3, %50
  br i1 %cmp.i191, label %land.lhs.true.i194, label %for.body66.for.cond61.backedge_crit_edge

for.body66.for.cond61.backedge_crit_edge:         ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond61.backedge

land.lhs.true.i194:                               ; preds = %for.body66
  %51 = ptrtoint ptr %vpd_sn.i192 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vpd_sn.i192, align 4
  %tobool.not.i193 = icmp eq ptr %52, null
  br i1 %tobool.not.i193, label %land.lhs.true.i194.for.cond61.backedge_crit_edge, label %land.lhs.true2.i197

land.lhs.true.i194.for.cond61.backedge_crit_edge: ; preds = %land.lhs.true.i194
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond61.backedge

land.lhs.true2.i197:                              ; preds = %land.lhs.true.i194
  %vpd_sn3.i195 = getelementptr i8, ptr %.pn225, i32 3924
  %53 = ptrtoint ptr %vpd_sn3.i195 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vpd_sn3.i195, align 4
  %tobool4.not.i196 = icmp eq ptr %54, null
  br i1 %tobool4.not.i196, label %land.lhs.true2.i197.for.cond61.backedge_crit_edge, label %land.rhs.i200

land.lhs.true2.i197.for.cond61.backedge_crit_edge: ; preds = %land.lhs.true2.i197
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond61.backedge

land.rhs.i200:                                    ; preds = %land.lhs.true2.i197
  %call.i198 = tail call i32 @strcmp(ptr noundef nonnull %52, ptr noundef nonnull %54) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool7.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool7.not.i199, label %do.body69, label %land.rhs.i200.for.cond61.backedge_crit_edge

land.rhs.i200.for.cond61.backedge_crit_edge:      ; preds = %land.rhs.i200
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond61.backedge

for.cond61.backedge:                              ; preds = %land.rhs.i200.for.cond61.backedge_crit_edge, %land.lhs.true2.i197.for.cond61.backedge_crit_edge, %land.lhs.true.i194.for.cond61.backedge_crit_edge, %for.body66.for.cond61.backedge_crit_edge
  %55 = ptrtoint ptr %.pn225 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn225, align 4
  %cmp63.not = icmp eq ptr %.pn, @efx_primary_list
  br i1 %cmp63.not, label %for.cond61.backedge.do.body110_crit_edge, label %for.cond61.backedge.for.body66_crit_edge

for.cond61.backedge.for.body66_crit_edge:         ; preds = %for.cond61.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body66

for.cond61.backedge.do.body110_crit_edge:         ; preds = %for.cond61.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body110

do.body69:                                        ; preds = %land.rhs.i200
  %other.1.le = getelementptr i8, ptr %.pn225, i32 -16
  %msg_enable70 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %56 = ptrtoint ptr %msg_enable70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable70, align 4
  %and71 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body69.do.end98_crit_edge, label %do.body74

do.body69.do.end98_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end98

do.body74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_associate.__UNIQUE_ID_ddebug664, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_associate, %if.then86)) #14
          to label %do.end98 [label %if.then86], !srcloc !230

if.then86:                                        ; preds = %do.body74
  %net_dev87 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %58 = ptrtoint ptr %net_dev87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net_dev87, align 4
  %pci_dev88 = getelementptr i8, ptr %.pn225, i32 20
  %60 = ptrtoint ptr %pci_dev88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci_dev88, align 4
  %init_name.i.i202 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44, i32 3
  %62 = ptrtoint ptr %init_name.i.i202 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i202, align 8
  %tobool.not.i.i203 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i203, label %if.end.i.i205, label %if.then86.pci_name.exit207_crit_edge

if.then86.pci_name.exit207_crit_edge:             ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit207

if.end.i.i205:                                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i204 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %64 = ptrtoint ptr %dev.i204 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i204, align 4
  br label %pci_name.exit207

pci_name.exit207:                                 ; preds = %if.end.i.i205, %if.then86.pci_name.exit207_crit_edge
  %retval.0.i.i206 = phi ptr [ %65, %if.end.i.i205 ], [ %63, %if.then86.pci_name.exit207_crit_edge ]
  %net_dev90 = getelementptr i8, ptr %.pn225, i32 2412
  %66 = ptrtoint ptr %net_dev90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net_dev90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_associate.__UNIQUE_ID_ddebug664, ptr noundef %59, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i206, ptr noundef %67) #14
  br label %do.end98

do.end98:                                         ; preds = %pci_name.exit207, %do.body74, %do.body69.do.end98_crit_edge
  %node99 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1
  %secondary_list100 = getelementptr i8, ptr %.pn225, i32 12
  %prev.i208 = getelementptr i8, ptr %.pn225, i32 16
  %68 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i208, align 4
  %call.i.i209 = tail call zeroext i1 @__list_add_valid(ptr noundef %node99, ptr noundef %69, ptr noundef %secondary_list100) #14
  br i1 %call.i.i209, label %if.end.i.i211, label %do.end98.list_add_tail.exit212_crit_edge

do.end98.list_add_tail.exit212_crit_edge:         ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit212

if.end.i.i211:                                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %prev.i208 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %node99, ptr %prev.i208, align 4
  %71 = ptrtoint ptr %node99 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %secondary_list100, ptr %node99, align 4
  %prev3.i.i210 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %prev3.i.i210 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i210, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %node99, ptr %69, align 4
  br label %list_add_tail.exit212

list_add_tail.exit212:                            ; preds = %if.end.i.i211, %do.end98.list_add_tail.exit212_crit_edge
  %74 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %other.1.le, ptr %primary, align 8
  br label %cleanup

do.body110:                                       ; preds = %for.cond61.backedge.do.body110_crit_edge, %for.cond61.preheader.do.body110_crit_edge
  %msg_enable111 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %75 = ptrtoint ptr %msg_enable111 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable111, align 4
  %and112 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body110.do.end134_crit_edge, label %do.body115

do.body110.do.end134_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end134

do.body115:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_associate.__UNIQUE_ID_ddebug665, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_associate, %if.then127)) #14
          to label %do.end134 [label %if.then127], !srcloc !230

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev128 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %77 = ptrtoint ptr %net_dev128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net_dev128, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_associate.__UNIQUE_ID_ddebug665, ptr noundef %78, ptr noundef nonnull @.str.66) #14
  br label %do.end134

do.end134:                                        ; preds = %if.then127, %do.body115, %do.body110.do.end134_crit_edge
  %node135 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1
  %79 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @efx_unassociated_list, i32 0, i32 1), align 4
  %call.i.i213 = tail call zeroext i1 @__list_add_valid(ptr noundef %node135, ptr noundef %79, ptr noundef nonnull @efx_unassociated_list) #14
  br i1 %call.i.i213, label %if.end.i.i215, label %do.end134.cleanup_crit_edge

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i215:                                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %node135, ptr getelementptr inbounds (%struct.list_head, ptr @efx_unassociated_list, i32 0, i32 1), align 4
  %80 = ptrtoint ptr %node135 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @efx_unassociated_list, ptr %node135, align 4
  %prev3.i.i214 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %prev3.i.i214 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %prev3.i.i214, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %node135, ptr %79, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i215, %do.end134.cleanup_crit_edge, %list_add_tail.exit212, %for.inc.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_init_mcdi_logging(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efx_dissociate(ptr noundef %efx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %primary = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 2
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %primary, align 8
  %secondary_list = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 3
  %9 = ptrtoint ptr %secondary_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %secondary_list, align 4
  %cmp.not48 = icmp eq ptr %10, %secondary_list
  br i1 %cmp.not48, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %.pn.in49 = phi ptr [ %.pn51, %list_add_tail.exit.for.body_crit_edge ], [ %10, %list_del.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn51 = load ptr, ptr %.pn.in49, align 16
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in49) #14
  br i1 %call.i.i38, label %if.end.i.i41, label %for.body.list_del.exit43_crit_edge

for.body.list_del.exit43_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit43

if.end.i.i41:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i39, align 4
  %14 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in49, align 4
  %prev1.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i40, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit43

list_del.exit43:                                  ; preds = %if.end.i.i41, %for.body.list_del.exit43_crit_edge
  %18 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in49, align 4
  %prev.i42 = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i42, align 4
  %msg_enable = getelementptr i8, ptr %.pn.in49, i32 140
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_del.exit43.do.end19_crit_edge, label %do.body10

list_del.exit43.do.end19_crit_edge:               ; preds = %list_del.exit43
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

do.body10:                                        ; preds = %list_del.exit43
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_dissociate.__UNIQUE_ID_ddebug666, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_dissociate, %if.then16)) #14
          to label %do.end19 [label %if.then16], !srcloc !230

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr i8, ptr %.pn.in49, i32 2412
  %22 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_dissociate.__UNIQUE_ID_ddebug666, ptr noundef %23, ptr noundef nonnull @.str.70) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10, %list_del.exit43.do.end19_crit_edge
  %24 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @efx_unassociated_list, i32 0, i32 1), align 4
  %call.i.i44 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in49, ptr noundef %24, ptr noundef nonnull @efx_unassociated_list) #14
  br i1 %call.i.i44, label %if.end.i.i45, label %do.end19.list_add_tail.exit_crit_edge

do.end19.list_add_tail.exit_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i45:                                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %.pn.in49, ptr getelementptr inbounds (%struct.list_head, ptr @efx_unassociated_list, i32 0, i32 1), align 4
  %25 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @efx_unassociated_list, ptr %.pn.in49, align 4
  %26 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev.i42, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in49, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i45, %do.end19.list_add_tail.exit_crit_edge
  %primary21 = getelementptr i8, ptr %.pn.in49, i32 8
  %28 = ptrtoint ptr %primary21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %primary21, align 8
  %cmp.not = icmp eq ptr %.pn51, %secondary_list
  br i1 %cmp.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_hard_start_xmit(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efx_features_check(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_rx_mode(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_set_mac_address(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ioctl(ptr noundef %net_dev, ptr noundef %ifr, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %cmd, label %entry.if.end15_crit_edge [
    i32 35248, label %if.then
    i32 35249, label %if.then4
    i32 35144, label %entry.land.lhs.true_crit_edge
    i32 35145, label %entry.land.lhs.true_crit_edge28
  ]

entry.land.lhs.true_crit_edge28:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @efx_ptp_set_ts_config(ptr noundef %add.ptr.i, ptr noundef %ifr) #14
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @efx_ptp_get_ts_config(ptr noundef %add.ptr.i, ptr noundef %ifr) #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge28
  %1 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ifr_ifru.i, align 2
  %3 = and i16 %2, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp9 = icmp eq i16 %3, 1024
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %xor = xor i16 %2, -31744
  %4 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %xor, ptr %ifr_ifru.i, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %mdio = getelementptr i8, ptr %net_dev, i32 4788
  %call16 = tail call i32 @mdio_mii_ioctl(ptr noundef %mdio, ptr noundef %ifr_ifru.i, i32 noundef %cmd) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then4, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call5, %if.then4 ], [ %call16, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_change_mtu(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_watchdog(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_net_stats(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vlan_rx_add_vid(ptr noundef %net_dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %vlan_rx_add_vid = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %vlan_rx_add_vid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlan_rx_add_vid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call3 = tail call i32 %3(ptr noundef %add.ptr.i, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_vlan_rx_kill_vid(ptr noundef %net_dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %vlan_rx_kill_vid = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 96
  %2 = ptrtoint ptr %vlan_rx_kill_vid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlan_rx_kill_vid, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call3 = tail call i32 %3(ptr noundef %add.ptr.i, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_sriov_set_vf_mac(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_sriov_set_vf_vlan(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_sriov_set_vf_spoofchk(ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_sriov_get_vf_config(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_sriov_set_vf_link_state(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_setup_tc(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_filter_rfs(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_set_features(ptr noundef, i64 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_get_phys_port_id(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_get_phys_port_name(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_xdp(ptr noundef %dev, ptr nocapture noundef readonly %xdp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %prog = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %call1 = tail call fastcc i32 @efx_xdp_setup_prog(ptr noundef %add.ptr.i, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_xdp_xmit(ptr noundef %dev, i32 noundef %n, ptr noundef %xdpfs, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call2 = tail call i32 @efx_xdp_tx_buffers(ptr noundef %add.ptr.i, i32 noundef %n, ptr noundef %xdpfs, i1 noundef zeroext %tobool) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_set_ts_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_ptp_get_ts_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_xdp_tx_buffers(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mtd_rename(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_set_channel_names(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_type, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_flush_reset_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_disable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mtd_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_fini_mcdi_logging(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_pm_suspend(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @efx_pm_freeze(ptr noundef %dev)
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %fini.i = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini.i, align 4
  tail call void %5(ptr noundef %1) #14
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reset_pending.i, align 4
  %call1.i = tail call i32 @pci_save_state(ptr noundef %add.ptr.i) #14
  %call2.i = tail call i32 @pci_set_power_state(ptr noundef %add.ptr.i, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @efx_pm_resume(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_pm_resume(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_restore_state(ptr noundef %add.ptr) #14
  %call2 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pci_dev6 = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev6, align 4
  tail call void @pci_set_master(ptr noundef %3) #14
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %reset = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %call7 = tail call i32 %7(ptr noundef %1, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %filter_sem = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 108
  tail call void @down_write(ptr noundef %filter_sem) #14
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %init = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init, align 4
  %call12 = tail call i32 %11(ptr noundef %1) #14
  tail call void @up_write(ptr noundef %filter_sem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 @efx_pm_thaw(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_pm_freeze(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #14
  %state = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 32
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %5 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev.i, align 4
  tail call fastcc void @local_bh_disable() #14
  tail call void @netif_tx_lock(ptr noundef %6) #14
  tail call void @netif_device_detach(ptr noundef %6) #14
  tail call void @netif_tx_unlock(ptr noundef %6) #14
  tail call fastcc void @local_bh_enable() #14
  tail call void @efx_stop_all(ptr noundef %1) #14
  tail call void @efx_disable_interrupts(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_pm_thaw(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #14
  %state = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @efx_enable_interrupts(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %fail

if.end:                                           ; preds = %if.then
  %mac_lock = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 78
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #14
  %call3 = tail call i32 @efx_mcdi_port_reconfigure(ptr noundef %1) #14
  tail call void @mutex_unlock(ptr noundef %mac_lock) #14
  tail call void @efx_start_all(ptr noundef %1) #14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 2
  br i1 %cmp.not.i, label %if.end.efx_device_attach_if_not_resetting.exit_crit_edge, label %land.lhs.true.i

if.end.efx_device_attach_if_not_resetting.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_device_attach_if_not_resetting.exit

land.lhs.true.i:                                  ; preds = %if.end
  %reset_pending.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.efx_device_attach_if_not_resetting.exit_crit_edge

land.lhs.true.i.efx_device_attach_if_not_resetting.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_device_attach_if_not_resetting.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  tail call void @netif_device_attach(ptr noundef %9) #14
  br label %efx_device_attach_if_not_resetting.exit

efx_device_attach_if_not_resetting.exit:          ; preds = %if.then.i, %land.lhs.true.i.efx_device_attach_if_not_resetting.exit_crit_edge, %if.end.efx_device_attach_if_not_resetting.exit_crit_edge
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 32
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %resume_wol = getelementptr inbounds %struct.efx_nic_type, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %resume_wol to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resume_wol, align 4
  tail call void %14(ptr noundef %1) #14
  br label %if.end6

if.end6:                                          ; preds = %efx_device_attach_if_not_resetting.exit, %entry.if.end6_crit_edge
  tail call void @rtnl_unlock() #14
  tail call void @efx_queue_reset_work(ptr noundef %1) #14
  br label %cleanup

fail:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtnl_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end6
  %retval.0 = phi i32 [ %call1, %fail ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_pm_poweroff(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %fini = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini, align 4
  tail call void %5(ptr noundef %1) #14
  %reset_pending = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %reset_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reset_pending, align 4
  %call1 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #14
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #14
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_queue_reset_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %3, @efx_netdev_ops
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cmp1 = icmp eq i32 %event, 11
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %net_dev.i = getelementptr i8, ptr %1, i32 4732
  %4 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev.i, align 4
  %call.i = tail call ptr @strcpy(ptr noundef %add.ptr.i, ptr noundef %5) #18
  tail call void @efx_mtd_rename(ptr noundef %add.ptr.i) #14
  tail call void @efx_set_channel_names(ptr noundef %add.ptr.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_init_sriov() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_create_reset_workqueue() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !56, !58, !60, !61, !62, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !80, !82, !83, !85, !87, !88, !90, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !125, !127, !129, !131, !133, !134, !135, !137, !139, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !165, !167, !168, !170, !171, !172, !173, !175, !177, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !196, !198, !199, !201, !203, !204, !205, !207, !208, !209, !211, !213, !215, !216, !217}
!llvm.named.register.sp = !{!218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__param_interrupt_mode, !1, !"__param_interrupt_mode", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_interrupt_modetype648, !1, !"__UNIQUE_ID_interrupt_modetype648", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_interrupt_mode649, !4, !"__UNIQUE_ID_interrupt_mode649", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 48, i32 1}
!5 = !{ptr @__param_rss_cpus, !6, !"__param_rss_cpus", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 51, i32 1}
!7 = !{ptr @__UNIQUE_ID_rss_cpustype650, !6, !"__UNIQUE_ID_rss_cpustype650", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_rss_cpus651, !9, !"__UNIQUE_ID_rss_cpus651", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 52, i32 1}
!10 = !{ptr @__param_efx_separate_tx_channels, !11, !"__param_efx_separate_tx_channels", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 63, i32 1}
!12 = !{ptr @__UNIQUE_ID_efx_separate_tx_channelstype652, !11, !"__UNIQUE_ID_efx_separate_tx_channelstype652", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_efx_separate_tx_channels653, !14, !"__UNIQUE_ID_efx_separate_tx_channels653", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 64, i32 1}
!15 = !{ptr @__param_phy_flash_cfg, !16, !"__param_phy_flash_cfg", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 87, i32 1}
!17 = !{ptr @__UNIQUE_ID_phy_flash_cfgtype654, !16, !"__UNIQUE_ID_phy_flash_cfgtype654", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_phy_flash_cfg655, !19, !"__UNIQUE_ID_phy_flash_cfg655", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 88, i32 1}
!20 = !{ptr @__param_debug, !21, !"__param_debug", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 94, i32 1}
!22 = !{ptr @__UNIQUE_ID_debugtype656, !21, !"__UNIQUE_ID_debugtype656", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_debug657, !24, !"__UNIQUE_ID_debug657", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 95, i32 1}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 442, i32 2}
!27 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 451, i32 3}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 529, i32 2}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @efx_net_open.__UNIQUE_ID_ddebug670, !32, !"__UNIQUE_ID_ddebug670", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 559, i32 2}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @efx_net_stop.__UNIQUE_ID_ddebug671, !37, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1333, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @efx_exit_module._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @efx_exit_module._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__initcall__kmod_sfc__678_1345_efx_init_module6, !46, !"__initcall__kmod_sfc__678_1345_efx_init_module6", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1345, i32 1}
!47 = !{ptr @__exitcall_efx_exit_module, !48, !"__exitcall_efx_exit_module", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1346, i32 1}
!49 = !{ptr @__UNIQUE_ID_author679, !50, !"__UNIQUE_ID_author679", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1348, i32 1}
!51 = !{ptr @__UNIQUE_ID_description680, !52, !"__UNIQUE_ID_description680", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1350, i32 1}
!53 = !{ptr @__UNIQUE_ID_file681, !54, !"__UNIQUE_ID_file681", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1351, i32 1}
!55 = !{ptr @__UNIQUE_ID_license682, !54, !"__UNIQUE_ID_license682", i1 false, i1 false}
!56 = !{ptr @efx_separate_tx_channels, !57, !"efx_separate_tx_channels", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 62, i32 6}
!58 = !{ptr @phy_flash_cfg, !59, !"phy_flash_cfg", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 86, i32 13}
!60 = !{ptr @__param_str_interrupt_mode, !1, !"__param_str_interrupt_mode", i1 false, i1 false}
!61 = !{ptr @__param_str_rss_cpus, !6, !"__param_str_rss_cpus", i1 false, i1 false}
!62 = !{ptr @__param_str_efx_separate_tx_channels, !11, !"__param_str_efx_separate_tx_channels", i1 false, i1 false}
!63 = !{ptr @__param_str_phy_flash_cfg, !16, !"__param_str_phy_flash_cfg", i1 false, i1 false}
!64 = !{ptr @__param_str_debug, !21, !"__param_str_debug", i1 false, i1 false}
!65 = !{ptr @debug, !66, !"debug", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 90, i32 17}
!67 = !{ptr @.str.10, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sfc/efx_common.h", i32 68, i32 3}
!69 = !{ptr @efx_pci_driver, !70, !"efx_pci_driver", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1269, i32 26}
!71 = !{ptr @efx_pci_table, !72, !"efx_pci_table", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 797, i32 35}
!73 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1070, i32 2}
!75 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.13, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @efx_pci_probe._entry, !74, !"_entry", i1 false, i1 false}
!79 = !{ptr @efx_pci_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1103, i32 2}
!82 = !{ptr @efx_pci_probe.__UNIQUE_ID_ddebug676, !81, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!83 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1110, i32 3}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1126, i32 2}
!87 = !{ptr @efx_pci_probe.__UNIQUE_ID_ddebug677, !86, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!88 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 915, i32 3}
!90 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @efx_probe_vpd_strings._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @efx_probe_vpd_strings._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 920, i32 11}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 922, i32 3}
!98 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @efx_probe_vpd_strings._entry.22, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @efx_probe_vpd_strings._entry_ptr.25, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 924, i32 3}
!103 = !{ptr @efx_probe_vpd_strings._entry.26, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @efx_probe_vpd_strings._entry_ptr.28, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 927, i32 11}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 929, i32 3}
!109 = !{ptr @efx_probe_vpd_strings._entry.30, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @efx_probe_vpd_strings._entry_ptr.32, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1002, i32 4}
!113 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @efx_pci_probe_post_io._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @efx_pci_probe_post_io._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 955, i32 3}
!118 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @efx_pci_probe_main._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @efx_pci_probe_main._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 961, i32 3}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 346, i32 3}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 352, i32 3}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 365, i32 3}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 372, i32 3}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 269, i32 2}
!133 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @efx_probe_nic.__UNIQUE_ID_ddebug667, !132, !"__UNIQUE_ID_ddebug667", i1 false, i1 false}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 278, i32 4}
!137 = distinct !{null, !138, !"tx_irq_mod_usec", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 84, i32 21}
!139 = distinct !{null, !140, !"rx_irq_mod_usec", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 73, i32 21}
!141 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 129, i32 2}
!143 = !{ptr @.str.46, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @efx_probe_port.__UNIQUE_ID_ddebug658, !142, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!145 = !{ptr @.str.47, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 183, i32 2}
!147 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @efx_remove_port.__UNIQUE_ID_ddebug661, !146, !"__UNIQUE_ID_ddebug661", i1 false, i1 false}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 328, i32 2}
!151 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @efx_remove_nic.__UNIQUE_ID_ddebug668, !150, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 149, i32 2}
!155 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @efx_init_port.__UNIQUE_ID_ddebug659, !154, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!157 = !{ptr @.str.53, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 170, i32 2}
!159 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @efx_fini_port.__UNIQUE_ID_ddebug660, !158, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 625, i32 3}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 631, i32 3}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 637, i32 13}
!167 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.58, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 726, i32 3}
!170 = !{ptr @.str.59, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @efx_register_netdev._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @efx_register_netdev._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.60, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 755, i32 3}
!175 = !{ptr @.str.61, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 771, i32 2}
!177 = !{ptr @efx_netdev_ops, !178, !"efx_netdev_ops", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 588, i32 36}
!179 = !{ptr @.str.62, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 211, i32 3}
!181 = !{ptr @.str.63, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @efx_associate.__UNIQUE_ID_ddebug662, !180, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!183 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 218, i32 5}
!185 = !{ptr @efx_associate.__UNIQUE_ID_ddebug663, !184, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!186 = !{ptr @.str.65, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 232, i32 5}
!188 = !{ptr @efx_associate.__UNIQUE_ID_ddebug664, !187, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!189 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 243, i32 3}
!191 = !{ptr @efx_associate.__UNIQUE_ID_ddebug665, !190, !"__UNIQUE_ID_ddebug665", i1 false, i1 false}
!192 = !{ptr @efx_primary_list, !193, !"efx_primary_list", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 194, i32 8}
!194 = !{ptr @efx_unassociated_list, !195, !"efx_unassociated_list", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 195, i32 8}
!196 = !{ptr @.str.67, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 699, i32 8}
!198 = !{ptr @dev_attr_phy_type, !197, !"dev_attr_phy_type", i1 false, i1 false}
!199 = !{ptr @.str.68, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 697, i32 22}
!201 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 258, i32 3}
!203 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @efx_dissociate.__UNIQUE_ID_ddebug666, !202, !"__UNIQUE_ID_ddebug666", i1 false, i1 false}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 894, i32 2}
!207 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @efx_pci_remove.__UNIQUE_ID_ddebug675, !206, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!209 = !{ptr @efx_pm_ops, !210, !"efx_pm_ops", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1260, i32 32}
!211 = !{ptr @efx_netdev_notifier, !212, !"efx_netdev_notifier", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 689, i32 30}
!213 = !{ptr @.str.73, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/sfc/efx.c", i32 1291, i32 2}
!215 = !{ptr @.str.74, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @efx_init_module._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @efx_init_module._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{!"sp"}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"branch_weights", i32 2000, i32 1}
!229 = !{i8 0, i8 2}
!230 = !{i64 2149321127, i64 2149321132, i64 2149321145, i64 2149321189, i64 2149321223, i64 2149321244}
!231 = !{!"auto-init"}
!232 = !{!"branch_weights", i32 1, i32 2000}
!233 = !{i64 2160881472, i64 2160881967, i64 2160881509, i64 2160881565, i64 2160881599, i64 2160881623, i64 2160881664, i64 2160881685, i64 2160881713, i64 2160881747}
!234 = !{i64 2160877799}
!235 = !{i64 2160884540, i64 2160885035, i64 2160884577, i64 2160884633, i64 2160884667, i64 2160884691, i64 2160884732, i64 2160884753, i64 2160884781, i64 2160884815}
!236 = !{i64 2160874892}
