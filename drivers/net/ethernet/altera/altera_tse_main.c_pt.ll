; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/altera/altera_tse_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/altera/altera_tse_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.altera_dmaops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.tse_buffer = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.vlan_ethhdr = type { %union.anon.122, i16, i16, i16 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { [6 x i8], [6 x i8] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.altera_tse_private = type { ptr, ptr, %struct.napi_struct, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.altera_tse_mac = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], %struct.altera_tse_mdio, %struct.altera_tse_mdio, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, [42 x i32] }
%struct.altera_tse_mdio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [17 x i8] c"altera_tse.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype351 = internal constant [30 x i8] c"altera_tse.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug352 = internal constant [73 x i8] c"altera_tse.parm=debug:Message Level (-1: default, 0: no output, 16: all)\00", section ".modinfo", align 1
@__param_str_dma_rx_num = internal constant [22 x i8] c"altera_tse.dma_rx_num\00", align 1
@dma_rx_num = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_dma_rx_num = internal constant %struct.kernel_param { ptr @__param_str_dma_rx_num, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @dma_rx_num } }, section "__param", align 4
@__UNIQUE_ID_dma_rx_numtype353 = internal constant [35 x i8] c"altera_tse.parmtype=dma_rx_num:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_rx_num354 = internal constant [64 x i8] c"altera_tse.parm=dma_rx_num:Number of descriptors in the RX list\00", section ".modinfo", align 1
@__param_str_dma_tx_num = internal constant [22 x i8] c"altera_tse.dma_tx_num\00", align 1
@dma_tx_num = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_dma_tx_num = internal constant %struct.kernel_param { ptr @__param_str_dma_tx_num, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @dma_tx_num } }, section "__param", align 4
@__UNIQUE_ID_dma_tx_numtype355 = internal constant [35 x i8] c"altera_tse.parmtype=dma_tx_num:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_tx_num356 = internal constant [64 x i8] c"altera_tse.parm=dma_tx_num:Number of descriptors in the TX list\00", section ".modinfo", align 1
@__initcall__kmod_altera_tse__374_1685_altera_tse_driver_init6 = internal global ptr @altera_tse_driver_init, section ".initcall6.init", align 4
@altera_tse_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altera_tse_probe, ptr @altera_tse_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altera_tse_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altera_tse_driver_exit = internal global ptr @altera_tse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author375 = internal constant [37 x i8] c"altera_tse.author=Altera Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description376 = internal constant [63 x i8] c"altera_tse.description=Altera Triple Speed Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file377 = internal constant [55 x i8] c"altera_tse.file=drivers/net/ethernet/altera/altera_tse\00", section ".modinfo", align 1
@__UNIQUE_ID_license378 = internal constant [26 x i8] c"altera_tse.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"altera_tse\00", [21 x i8] zeroinitializer }, align 32
@altera_tse_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,tse-msgdma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_dtype_msgdma }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,tse-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_dtype_sgdma }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ALTR,tse-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_dtype_sgdma }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate network device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altera_tse_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/altera/altera_tse_main.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry_ptr = internal global ptr @altera_tse_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_resp\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_desc\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_desc\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"control_port\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_csr\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_csr\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_irq\00", [25 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot obtain Rx IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry_ptr.17 = internal global ptr @altera_tse_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_irq\00", [25 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot obtain Tx IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry_ptr.21 = internal global ptr @altera_tse_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot obtain rx-fifo-depth\0A\00", [35 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry_ptr.25 = internal global ptr @altera_tse_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot obtain tx-fifo-depth\0A\00", [35 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry_ptr.29 = internal global ptr @altera_tse_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"altr,has-hash-multicast-filter\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"altr,has-supplementary-unicast\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-frame-size\00", [17 x i8] zeroinitializer }, align 32
@altera_tse_netdev_ops = internal global { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @tse_open, ptr @tse_shutdown, ptr @tse_start_xmit, ptr null, ptr null, ptr null, ptr @tse_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tse_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@altera_tse_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->mac_cfg_lock\00", [44 x i8] zeroinitializer }, align 32
@altera_tse_probe.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@altera_tse_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&priv->rxdma_irq_lock\00", [42 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 1574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register TSE net device\0A\00", [61 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry_ptr.40 = internal global ptr @altera_tse_probe._entry.38, section ".printk_index", align 4
@altera_tse_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 1587, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Altera TSE MAC version %d.%d at 0x%08lx irq %d/%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@altera_tse_probe._entry_ptr.44 = internal global ptr @altera_tse_probe._entry.41, section ".printk_index", align 4
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot attach to PHY (error: %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@request_and_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 1324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"resource %s not defined\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"request_and_map\00", [16 x i8] zeroinitializer }, align 32
@request_and_map._entry_ptr = internal global ptr @request_and_map._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@request_and_map._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 1331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to request %s\0A\00", [42 x i8] zeroinitializer }, align 32
@request_and_map._entry_ptr.50 = internal global ptr @request_and_map._entry.48, section ".printk_index", align 4
@request_and_map._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 1338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ioremap of %s failed!\00", [42 x i8] zeroinitializer }, align 32
@request_and_map._entry_ptr.53 = internal global ptr @request_and_map._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-addr\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid phy-addr specified %d\0A\00", [33 x i8] zeroinitializer }, align 32
@instance_count = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"altr,tse-mdio\00", [18 x i8] zeroinitializer }, align 32
@altera_tse_mdio_create.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"altera_tse_mdio_create\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FOUND MDIO subnode\0A\00", [44 x i8] zeroinitializer }, align 32
@altera_tse_mdio_create.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.59, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NO MDIO subnode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error allocating MDIO bus\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%u\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot register MDIO bus %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MDIO bus %s: created\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot initialize DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device MAC address %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TSE revision %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot init the SGMII PCS (error: %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@tse_open.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tse_open\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot reset MAC core (error: %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DMA descriptors initialization failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register RX interrupt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register TX interrupt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCS PHY ID: 0x%04x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SGMII PCS Scratch memory test failed.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SGMII PCS block initialised OK\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SGMII PCS block reset failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@init_mac.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_mac\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MAC post-initialization: CMD_CONFIG = 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: DMA mapping error\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.tse_init_rx_buffer = private unnamed_addr constant [19 x i8] c"tse_init_rx_buffer\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@altera_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: invalid dev pointer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"altera_isr\00", [21 x i8] zeroinitializer }, align 32
@altera_isr._entry_ptr = internal global ptr @altera_isr._entry, section ".printk_index", align 4
@tse_shutdown.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.69, i8 1, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tse_shutdown\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Tx list full when queue awake\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.tse_start_xmit = private unnamed_addr constant [15 x i8] c"tse_start_xmit\00", align 1
@tse_start_xmit.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.tse_start_xmit, ptr @.str.3, ptr @.str.87, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: stop transmitted packets\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"must be stopped to change its MTU\0A\00", [61 x i8] zeroinitializer }, align 32
@tse_poll.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.3, ptr @.str.90, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tse_poll\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NAPI Complete, did %d packets with budget %d\0A\00", [50 x i8] zeroinitializer }, align 32
@tse_tx_complete.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tse_tx_complete\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: curr %d, dirty %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tse_tx_complete.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.3, ptr @.str.93, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: restart transmit\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RCV pktstatus %08X pktlength %08X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Inconsistent Rx descriptor chain\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.tse_rx = private unnamed_addr constant [7 x i8] c"tse_rx\00", align 1
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"frame received %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"data: \00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot register fixed PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@init_phy.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 0, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fixed-link detected\0A\00", [43 x i8] zeroinitializer }, align 32
@init_phy.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.102, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no phy-handle found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No phy-handle nor local mdio specified\0A\00", [56 x i8] zeroinitializer }, align 32
@init_phy.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.104, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy-handle found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not find the PHY\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad PHY UID 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@init_phy.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.107, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"attached to PHY %d UID 0x%08x Link = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@altera_tse_adjust_link.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"altera_tse_adjust_link\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Link duplex = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Speed (%d) is not 10/100/1000!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@connect_local_phy.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.3, ptr @.str.113, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"connect_local_phy\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trying to attach to %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MDIO bus %s: removed\0A\00", [42 x i8] zeroinitializer }, align 32
@altera_dtype_msgdma = internal constant { %struct.altera_dmaops, [32 x i8] } { %struct.altera_dmaops { i32 2, i32 64, ptr @msgdma_reset, ptr @msgdma_enable_txirq, ptr @msgdma_enable_rxirq, ptr @msgdma_disable_txirq, ptr @msgdma_disable_rxirq, ptr @msgdma_clear_txirq, ptr @msgdma_clear_rxirq, ptr @msgdma_tx_buffer, ptr @msgdma_tx_completions, ptr @msgdma_add_rx_desc, ptr @msgdma_rx_status, ptr @msgdma_initialize, ptr @msgdma_uninitialize, ptr @msgdma_start_rxdma }, [32 x i8] zeroinitializer }, align 32
@altera_dtype_sgdma = internal constant { %struct.altera_dmaops, [32 x i8] } { %struct.altera_dmaops { i32 1, i32 32, ptr @sgdma_reset, ptr @sgdma_enable_txirq, ptr @sgdma_enable_rxirq, ptr @sgdma_disable_txirq, ptr @sgdma_disable_rxirq, ptr @sgdma_clear_txirq, ptr @sgdma_clear_rxirq, ptr @sgdma_tx_buffer, ptr @sgdma_tx_completions, ptr @sgdma_add_rx_desc, ptr @sgdma_rx_status, ptr @sgdma_initialize, ptr @sgdma_uninitialize, ptr @sgdma_start_rxdma }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 47, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"dma_rx_num\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 56, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"dma_tx_num\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 61, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"altera_tse_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1674, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1680, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"altera_tse_ids\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1666, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1359, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1379, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1411, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1416, i32 31 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1424, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1448, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1454, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1461, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1468, i32 47 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1470, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1476, i32 47 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1478, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1484, i32 46 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1486, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1491, i32 46 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1493, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1501, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1511, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1521, i32 42 }
@___asan_gen_.221 = private unnamed_addr constant [22 x i8] c"altera_tse_netdev_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1306, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1567, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1568, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1569, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1574, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1583, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1591, i32 20 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1324, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1331, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1338, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 745, i32 50 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 752, i32 19 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"instance_count\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 45, i32 17 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 150, i32 43 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 157, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 159, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 165, i32 19 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 172, i32 38 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 179, i32 19 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 185, i32 20 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1158, i32 19 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1163, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1167, i32 20 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1174, i32 7 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1185, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1201, i32 19 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1210, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1219, i32 19 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1108, i32 20 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1112, i32 19 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1135, i32 21 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1142, i32 18 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 973, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 223, i32 25 }
@___asan_gen_.366 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 326, i32 6 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 527, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1294, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 575, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 607, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 998, i32 19 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 507, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 462, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 480, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 390, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 405, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 418, i32 27 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 420, i32 29 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 785, i32 52 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 792, i32 21 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 802, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 807, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 809, i32 21 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 815, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 822, i32 19 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 841, i32 19 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 846, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 644, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 668, i32 23 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 699, i32 45 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 702, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 707, i32 20 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 715, i32 20 }
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 203, i32 20 }
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c"altera_dtype_msgdma\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1647, i32 35 }
@___asan_gen_.476 = private unnamed_addr constant [19 x i8] c"altera_dtype_sgdma\00", align 1
@___asan_gen_.477 = private constant [49 x i8] c"../drivers/net/ethernet/altera/altera_tse_main.c\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1628, i32 35 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_author375, ptr @__UNIQUE_ID_debug352, ptr @__UNIQUE_ID_debugtype351, ptr @__UNIQUE_ID_description376, ptr @__UNIQUE_ID_dma_rx_num354, ptr @__UNIQUE_ID_dma_rx_numtype353, ptr @__UNIQUE_ID_dma_tx_num356, ptr @__UNIQUE_ID_dma_tx_numtype355, ptr @__UNIQUE_ID_file377, ptr @__UNIQUE_ID_license378, ptr @__exitcall_altera_tse_driver_exit, ptr @__initcall__kmod_altera_tse__374_1685_altera_tse_driver_init6, ptr @__param_debug, ptr @__param_dma_rx_num, ptr @__param_dma_tx_num, ptr @altera_isr._entry, ptr @altera_isr._entry_ptr, ptr @altera_tse_driver_exit, ptr @altera_tse_probe._entry, ptr @altera_tse_probe._entry.15, ptr @altera_tse_probe._entry.19, ptr @altera_tse_probe._entry.23, ptr @altera_tse_probe._entry.27, ptr @altera_tse_probe._entry.38, ptr @altera_tse_probe._entry.41, ptr @altera_tse_probe._entry_ptr, ptr @altera_tse_probe._entry_ptr.17, ptr @altera_tse_probe._entry_ptr.21, ptr @altera_tse_probe._entry_ptr.25, ptr @altera_tse_probe._entry_ptr.29, ptr @altera_tse_probe._entry_ptr.40, ptr @altera_tse_probe._entry_ptr.44, ptr @request_and_map._entry, ptr @request_and_map._entry.48, ptr @request_and_map._entry.51, ptr @request_and_map._entry_ptr, ptr @request_and_map._entry_ptr.50, ptr @request_and_map._entry_ptr.53, ptr @debug, ptr @dma_rx_num, ptr @dma_tx_num, ptr @altera_tse_driver, ptr @.str, ptr @altera_tse_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @altera_tse_netdev_ops, ptr @altera_tse_probe.__key, ptr @.str.33, ptr @altera_tse_probe.__key.34, ptr @.str.35, ptr @altera_tse_probe.__key.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @instance_count, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @altera_dtype_msgdma, ptr @altera_dtype_sgdma], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_rx_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_tx_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_tse_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_and_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_and_map._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_and_map._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instance_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_dtype_msgdma to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_dtype_sgdma to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_tse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altera_tse_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altera_tse_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @altera_tse_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_tse_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %control_port = alloca ptr, align 4
  %dma_res = alloca ptr, align 4
  %descmap = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control_port) #10
  %0 = ptrtoint ptr %control_port to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %control_port, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_res) #10
  %1 = ptrtoint ptr %dma_res to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dma_res, align 4, !annotation !287
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descmap) #10
  %2 = ptrtoint ptr %descmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %descmap, align 4, !annotation !287
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 536, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %device = getelementptr i8, ptr %call, i32 2308
  %4 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %device, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %add.ptr.i, align 8
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 31
  br i1 %cmp1.i, label %if.end.netif_msg_init.exit_crit_edge, label %if.end.i

if.end.netif_msg_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.i = icmp eq i32 %6, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %notmask.i = shl nsw i32 -1, %6
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 55, %if.end.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 2828
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %call8 = tail call ptr @of_match_device(ptr noundef nonnull @altera_tse_ids, ptr noundef %dev) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %netif_msg_init.exit.if.end11_crit_edge, label %if.then10

netif_msg_init.exit.if.end11_crit_edge:           ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %dmaops = getelementptr i8, ptr %call, i32 2832
  %10 = ptrtoint ptr %dmaops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dmaops, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %netif_msg_init.exit.if.end11_crit_edge
  %dmaops12 = getelementptr i8, ptr %call, i32 2832
  %11 = ptrtoint ptr %dmaops12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmaops12, align 8
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.end11.err_free_netdev_crit_edge, label %land.lhs.true

if.end11.err_free_netdev_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

land.lhs.true:                                    ; preds = %if.end11
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then15, label %land.lhs.true67

if.then15:                                        ; preds = %land.lhs.true
  %call16 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.6, ptr noundef nonnull %dma_res, ptr noundef nonnull %descmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.err_free_netdev_crit_edge

if.then15.err_free_netdev_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %descmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %descmap, align 4
  %tx_dma_desc = getelementptr i8, ptr %call, i32 2560
  %17 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %tx_dma_desc, align 8
  %18 = ptrtoint ptr %dma_res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %sub.i394 = add i32 %21, 1
  %add.i = sub i32 %sub.i394, %23
  %div392 = lshr i32 %add.i, 1
  %txdescmem = getelementptr i8, ptr %call, i32 2624
  %24 = ptrtoint ptr %txdescmem to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div392, ptr %txdescmem, align 8
  %25 = load i32, ptr %19, align 4
  %txdescmem_busaddr = getelementptr i8, ptr %call, i32 2636
  %26 = ptrtoint ptr %txdescmem_busaddr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %txdescmem_busaddr, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %div392
  %rx_dma_desc = getelementptr i8, ptr %call, i32 2548
  %27 = ptrtoint ptr %rx_dma_desc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %rx_dma_desc, align 4
  %28 = load i32, ptr %end.i, align 4
  %29 = load i32, ptr %19, align 4
  %sub.i396 = add i32 %28, 1
  %add.i397 = sub i32 %sub.i396, %29
  %div23393 = lshr i32 %add.i397, 1
  %rxdescmem = getelementptr i8, ptr %call, i32 2628
  %30 = ptrtoint ptr %rxdescmem to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div23393, ptr %rxdescmem, align 4
  %31 = load i32, ptr %19, align 4
  %rxdescmem_busaddr = getelementptr i8, ptr %call, i32 2632
  %add = add i32 %31, %div392
  %32 = ptrtoint ptr %rxdescmem_busaddr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %rxdescmem_busaddr, align 8
  br label %if.end96

land.lhs.true67:                                  ; preds = %land.lhs.true
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp70 = icmp eq i32 %34, 2
  br i1 %cmp70, label %if.then71, label %land.lhs.true67.err_free_netdev_crit_edge

land.lhs.true67.err_free_netdev_crit_edge:        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.then71:                                        ; preds = %land.lhs.true67
  %rx_dma_resp = getelementptr i8, ptr %call, i32 2552
  %call72 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.8, ptr noundef nonnull %dma_res, ptr noundef %rx_dma_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then71.err_free_netdev_crit_edge

if.then71.err_free_netdev_crit_edge:              ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end75:                                         ; preds = %if.then71
  %tx_dma_desc76 = getelementptr i8, ptr %call, i32 2560
  %call77 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.9, ptr noundef nonnull %dma_res, ptr noundef %tx_dma_desc76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.err_free_netdev_crit_edge

if.end75.err_free_netdev_crit_edge:               ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end80:                                         ; preds = %if.end75
  %35 = ptrtoint ptr %dma_res to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_res, align 4
  %end.i398 = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %end.i398 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end.i398, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 4
  %sub.i399 = add i32 %38, 1
  %add.i400 = sub i32 %sub.i399, %40
  %txdescmem82 = getelementptr i8, ptr %call, i32 2624
  %41 = ptrtoint ptr %txdescmem82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i400, ptr %txdescmem82, align 8
  %42 = load i32, ptr %36, align 4
  %txdescmem_busaddr84 = getelementptr i8, ptr %call, i32 2636
  %43 = ptrtoint ptr %txdescmem_busaddr84 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %txdescmem_busaddr84, align 4
  %rx_dma_desc85 = getelementptr i8, ptr %call, i32 2548
  %call86 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.10, ptr noundef nonnull %dma_res, ptr noundef %rx_dma_desc85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end80.err_free_netdev_crit_edge

if.end80.err_free_netdev_crit_edge:               ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end89:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dma_res to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_res, align 4
  %end.i401 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %end.i401 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end.i401, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %45, align 4
  %sub.i402 = add i32 %47, 1
  %add.i403 = sub i32 %sub.i402, %49
  %rxdescmem91 = getelementptr i8, ptr %call, i32 2628
  %50 = ptrtoint ptr %rxdescmem91 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i403, ptr %rxdescmem91, align 4
  %51 = load i32, ptr %45, align 4
  %rxdescmem_busaddr93 = getelementptr i8, ptr %call, i32 2632
  %52 = ptrtoint ptr %rxdescmem_busaddr93 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %rxdescmem_busaddr93, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.end89, %if.end19
  %53 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device, align 4
  %55 = ptrtoint ptr %dmaops12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dmaops12, align 8
  %dmamask = getelementptr inbounds %struct.altera_dmaops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %dmamask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dmamask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %58)
  %cmp99 = icmp eq i32 %58, 64
  br i1 %cmp99, label %if.end96.cond.end_crit_edge, label %cond.false

if.end96.cond.end_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom = zext i32 %58 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end96.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end96.cond.end_crit_edge ]
  %call102 = tail call i32 @dma_set_mask(ptr noundef %54, i64 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  %59 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device, align 4
  br i1 %tobool103.not, label %if.then104, label %if.else119

if.then104:                                       ; preds = %cond.end
  %61 = ptrtoint ptr %dmaops12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dmaops12, align 8
  %dmamask107 = getelementptr inbounds %struct.altera_dmaops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %dmamask107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dmamask107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %64)
  %cmp108 = icmp eq i32 %64, 64
  br i1 %cmp108, label %if.then104.cond.end116_crit_edge, label %cond.false110

if.then104.cond.end116_crit_edge:                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end116

cond.false110:                                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom113 = zext i32 %64 to i64
  %notmask391 = shl nsw i64 -1, %sh_prom113
  %sub115 = xor i64 %notmask391, -1
  br label %cond.end116

cond.end116:                                      ; preds = %cond.false110, %if.then104.cond.end116_crit_edge
  %cond117 = phi i64 [ %sub115, %cond.false110 ], [ -1, %if.then104.cond.end116_crit_edge ]
  %call118 = tail call i32 @dma_set_coherent_mask(ptr noundef %60, i64 noundef %cond117) #10
  br label %if.end128

if.else119:                                       ; preds = %cond.end
  %call121 = tail call i32 @dma_set_mask(ptr noundef %60, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then123, label %if.else119.err_free_netdev_crit_edge

if.else119.err_free_netdev_crit_edge:             ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.then123:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device, align 4
  %call125 = tail call i32 @dma_set_coherent_mask(ptr noundef %66, i64 noundef 4294967295) #10
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %cond.end116
  %mac_dev = getelementptr i8, ptr %call, i32 2536
  %call129 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.11, ptr noundef nonnull %control_port, ptr noundef %mac_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end128.err_free_netdev_crit_edge

if.end128.err_free_netdev_crit_edge:              ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end132:                                        ; preds = %if.end128
  %rx_dma_csr = getelementptr i8, ptr %call, i32 2544
  %call133 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.12, ptr noundef nonnull %dma_res, ptr noundef %rx_dma_csr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end132.err_free_netdev_crit_edge

if.end132.err_free_netdev_crit_edge:              ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end136:                                        ; preds = %if.end132
  %tx_dma_csr = getelementptr i8, ptr %call, i32 2556
  %call137 = call fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef nonnull @.str.13, ptr noundef nonnull %dma_res, ptr noundef %tx_dma_csr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end136.err_free_netdev_crit_edge

if.end136.err_free_netdev_crit_edge:              ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end140:                                        ; preds = %if.end136
  %call141 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #10
  %rx_irq = getelementptr i8, ptr %call, i32 2604
  %67 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call141, ptr %rx_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call141)
  %cmp143 = icmp eq i32 %call141, -6
  br i1 %cmp143, label %do.end147, label %if.end149

do.end147:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  br label %err_free_netdev

if.end149:                                        ; preds = %if.end140
  %call150 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.18) #10
  %tx_irq = getelementptr i8, ptr %call, i32 2600
  %68 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call150, ptr %tx_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call150)
  %cmp152 = icmp eq i32 %call150, -6
  br i1 %cmp152, label %do.end156, label %if.end158

do.end156:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %err_free_netdev

if.end158:                                        ; preds = %if.end149
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %69 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %of_node, align 8
  %rx_fifo_depth = getelementptr i8, ptr %call, i32 2612
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %70, ptr noundef nonnull @.str.22, ptr noundef %rx_fifo_depth, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool161.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool161.not, label %if.end167, label %do.end165

do.end165:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #13
  br label %err_free_netdev

if.end167:                                        ; preds = %if.end158
  %71 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %of_node, align 8
  %tx_fifo_depth = getelementptr i8, ptr %call, i32 2608
  %call.i.i404 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %72, ptr noundef nonnull @.str.26, ptr noundef %tx_fifo_depth, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i404)
  %tobool171.not = icmp sgt i32 %call.i.i404, -1
  br i1 %tobool171.not, label %if.end177, label %do.end175

do.end175:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #13
  br label %err_free_netdev

if.end177:                                        ; preds = %if.end167
  %73 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %74, ptr noundef nonnull @.str.30, ptr noundef null) #10
  %hash_filter = getelementptr i8, ptr %call, i32 2616
  %75 = ptrtoint ptr %hash_filter to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %hash_filter, align 8
  %76 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %of_node, align 8
  %call.i405 = tail call ptr @of_find_property(ptr noundef %77, ptr noundef nonnull @.str.31, ptr noundef null) #10
  %tobool.i406 = icmp ne ptr %call.i405, null
  %conv185 = zext i1 %tobool.i406 to i32
  %added_unicast = getelementptr i8, ptr %call, i32 2620
  %78 = ptrtoint ptr %added_unicast to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv185, ptr %added_unicast, align 4
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 30
  %81 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 64, ptr %min_mtu, align 8
  %82 = load ptr, ptr %add.ptr.i, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 31
  %83 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1500, ptr %max_mtu, align 4
  %84 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node, align 8
  %86 = load ptr, ptr %add.ptr.i, align 8
  %max_mtu191 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 31
  %call.i.i407 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %85, ptr noundef nonnull @.str.32, ptr noundef %max_mtu191, i32 noundef 1, i32 noundef 0) #10
  %rx_dma_buf_sz = getelementptr i8, ptr %call, i32 2580
  %87 = ptrtoint ptr %rx_dma_buf_sz to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2048, ptr %rx_dma_buf_sz, align 4
  %88 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %of_node, align 8
  %call195 = tail call i32 @of_get_ethdev_address(ptr noundef %89, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end177.if.end198_crit_edge, label %if.then197

if.end177.if.end198_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.then197:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  br label %if.end198

if.end198:                                        ; preds = %if.then197, %if.end177.if.end198_crit_edge
  %call199 = tail call fastcc i32 @altera_tse_phy_get_addr_mdio_create(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end198.err_free_netdev_crit_edge

if.end198.err_free_netdev_crit_edge:              ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_netdev

if.end202:                                        ; preds = %if.end198
  %90 = ptrtoint ptr %control_port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %control_port, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 4
  %94 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %mem_start, align 4
  %end = getelementptr inbounds %struct.resource, ptr %91, i32 0, i32 1
  %95 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %end, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 3
  %97 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %mem_end, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %98 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @altera_tse_netdev_ops, ptr %netdev_ops, align 8
  tail call void @altera_tse_set_ethtool_ops(ptr noundef nonnull %call) #10
  store ptr @tse_set_rx_mode, ptr getelementptr inbounds (%struct.net_device_ops, ptr @altera_tse_netdev_ops, i32 0, i32 8), align 4
  %99 = ptrtoint ptr %hash_filter to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hash_filter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool205.not = icmp eq i32 %100, 0
  %spec.store.select = select i1 %tobool205.not, ptr @tse_set_rx_mode, ptr @tse_set_rx_mode_hashfilter
  store ptr %spec.store.select, ptr getelementptr inbounds (%struct.net_device_ops, ptr @altera_tse_netdev_ops, i32 0, i32 8), align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %101 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %hw_features, align 8
  %and = and i64 %102, -2
  store i64 %and, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %103 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %features, align 16
  %or209 = or i64 %and, %104
  %or211 = or i64 %or209, 288
  store i64 %or211, ptr %features, align 16
  %napi = getelementptr i8, ptr %call, i32 2312
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @tse_poll, i32 noundef 64) #10
  %mac_cfg_lock = getelementptr i8, ptr %call, i32 2672
  tail call void @__raw_spin_lock_init(ptr noundef %mac_cfg_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @altera_tse_probe.__key, i16 noundef signext 3) #10
  %tx_lock = getelementptr i8, ptr %call, i32 2716
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @altera_tse_probe.__key.34, i16 noundef signext 3) #10
  %rxdma_irq_lock = getelementptr i8, ptr %call, i32 2760
  tail call void @__raw_spin_lock_init(ptr noundef %rxdma_irq_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @altera_tse_probe.__key.36, i16 noundef signext 3) #10
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #10
  %call224 = tail call i32 @register_netdev(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end231, label %do.end229

do.end229:                                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  br label %err_register_netdev

if.end231:                                        ; preds = %if.end202
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %105 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call, ptr %driver_data.i.i, align 4
  %106 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mac_dev, align 8
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #10, !srcloc !288
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  %revision = getelementptr i8, ptr %call, i32 2540
  %110 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %revision, align 4
  %111 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_enable, align 4
  %and235 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %if.end231.if.end250_crit_edge, label %do.end240

if.end231.if.end250_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

do.end240:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  %shr243 = lshr i32 %109, 8
  %and244 = and i32 %shr243, 255
  %and246 = and i32 %109, 255
  %113 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %91, align 4
  %115 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_irq, align 4
  %117 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_irq, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %and244, i32 noundef %and246, i32 noundef %114, i32 noundef %116, i32 noundef %118) #13
  br label %if.end250

if.end250:                                        ; preds = %do.end240, %if.end231.if.end250_crit_edge
  %call251 = tail call fastcc i32 @init_phy(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252.not = icmp eq i32 %call251, 0
  br i1 %cmp252.not, label %if.end250.cleanup_crit_edge, label %if.then254

if.end250.cleanup_crit_edge:                      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then254:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.45, i32 noundef %call251) #13
  tail call void @unregister_netdev(ptr noundef nonnull %call) #10
  br label %err_register_netdev

err_register_netdev:                              ; preds = %if.then254, %do.end229
  %ret.0 = phi i32 [ %call224, %do.end229 ], [ %call251, %if.then254 ]
  tail call void @__netif_napi_del(ptr noundef %napi) #10
  tail call void @synchronize_net() #10
  tail call fastcc void @altera_tse_mdio_destroy(ptr noundef nonnull %call)
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %err_register_netdev, %if.end198.err_free_netdev_crit_edge, %do.end175, %do.end165, %do.end156, %do.end147, %if.end136.err_free_netdev_crit_edge, %if.end132.err_free_netdev_crit_edge, %if.end128.err_free_netdev_crit_edge, %if.else119.err_free_netdev_crit_edge, %if.end80.err_free_netdev_crit_edge, %if.end75.err_free_netdev_crit_edge, %if.then71.err_free_netdev_crit_edge, %land.lhs.true67.err_free_netdev_crit_edge, %if.then15.err_free_netdev_crit_edge, %if.end11.err_free_netdev_crit_edge
  %ret.1 = phi i32 [ %call16, %if.then15.err_free_netdev_crit_edge ], [ %call129, %if.end128.err_free_netdev_crit_edge ], [ %call133, %if.end132.err_free_netdev_crit_edge ], [ %call137, %if.end136.err_free_netdev_crit_edge ], [ -6, %do.end147 ], [ -6, %do.end156 ], [ -6, %do.end165 ], [ -6, %do.end175 ], [ %call199, %if.end198.err_free_netdev_crit_edge ], [ %ret.0, %err_register_netdev ], [ %call72, %if.then71.err_free_netdev_crit_edge ], [ %call77, %if.end75.err_free_netdev_crit_edge ], [ %call86, %if.end80.err_free_netdev_crit_edge ], [ -19, %land.lhs.true67.err_free_netdev_crit_edge ], [ -5, %if.else119.err_free_netdev_crit_edge ], [ -19, %if.end11.err_free_netdev_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_netdev, %if.end250.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %err_free_netdev ], [ -19, %do.end ], [ 0, %if.end250.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descmap) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_res) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_port) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_tse_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call void @phy_disconnect(ptr noundef nonnull %3) #10
  %device = getelementptr i8, ptr %1, i32 2308
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call3 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %7) #10
  br i1 %call3, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %of_node6 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node6, align 8
  tail call void @of_phy_deregister_fixed_link(ptr noundef %11) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i, align 4
  %mdio.i = getelementptr i8, ptr %1, i32 2812
  %13 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio.i, align 4
  %cmp.i = icmp eq ptr %14, null
  br i1 %cmp.i, label %if.end7.altera_tse_mdio_destroy.exit_crit_edge, label %if.end.i

if.end7.altera_tse_mdio_destroy.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %altera_tse_mdio_destroy.exit

if.end.i:                                         ; preds = %if.end7
  %msg_enable.i = getelementptr i8, ptr %1, i32 2828
  %15 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef %id.i) #13
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %17 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdio.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %18) #10
  %19 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdio.i, align 4
  tail call void @mdiobus_free(ptr noundef %20) #10
  %21 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mdio.i, align 4
  br label %altera_tse_mdio_destroy.exit

altera_tse_mdio_destroy.exit:                     ; preds = %if.end3.i, %if.end7.altera_tse_mdio_destroy.exit_crit_edge
  tail call void @unregister_netdev(ptr noundef %1) #10
  tail call void @free_netdev(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_and_map(ptr noundef %pdev, ptr noundef %name, ptr nocapture noundef writeonly %res, ptr nocapture noundef writeonly %ptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %name) #10
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %res, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %add.i, ptr noundef %retval.0.i) #10
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %dev_name.exit.cleanup.sink.split_crit_edge, label %if.end9

dev_name.exit.cleanup.sink.split_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end9:                                          ; preds = %dev_name.exit
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call3, align 4
  %end.i35 = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %end.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i35, align 4
  %sub.i36 = sub i32 1, %10
  %add.i37 = add i32 %sub.i36, %12
  %call12 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %10, i32 noundef %add.i37) #10
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %ptr, align 4
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.end9.cleanup.sink.split_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9.cleanup.sink.split_crit_edge, %dev_name.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.52.sink = phi ptr [ @.str.46, %entry.cleanup.sink.split_crit_edge ], [ @.str.49, %dev_name.exit.cleanup.sink.split_crit_edge ], [ @.str.52, %if.end9.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -19, %entry.cleanup.sink.split_crit_edge ], [ -16, %dev_name.exit.cleanup.sink.split_crit_edge ], [ -12, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.52.sink, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #10
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altera_tse_phy_get_addr_mdio_create(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %phy_iface = getelementptr i8, ptr %dev, i32 2808
  %call1 = tail call i32 @of_get_phy_mode(ptr noundef %3, ptr noundef %phy_iface) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %of_node3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node3, align 8
  %phy_addr = getelementptr i8, ptr %dev, i32 2804
  %call.i.i35 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.54, ptr noundef %phy_addr, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i35)
  %tobool5.not = icmp sgt i32 %call.i.i35, -1
  br i1 %tobool5.not, label %if.end8, label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %phy_addr, align 4
  br label %if.end16

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %phy_addr, align 4
  %10 = add i32 %.pr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %11 = icmp ult i32 %10, 33
  br i1 %11, label %if.end8.if.end16_crit_edge, label %if.then14

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %.pr) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end8.if.end16_crit_edge, %if.end8.thread
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @instance_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void @llvm.prefetch.p0(ptr nonnull @instance_count, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @instance_count, ptr nonnull @instance_count, i32 1, ptr nonnull elementtype(i32) @instance_count) #10, !srcloc !291
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !292
  %call18 = tail call fastcc i32 @altera_tse_mdio_create(ptr noundef %dev, i32 noundef %asmresult.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %. = select i1 %tobool19.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then14 ], [ 0, %entry.cleanup_crit_edge ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @altera_tse_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tse_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cfg_lock = getelementptr i8, ptr %dev, i32 2672
  tail call void @_raw_spin_lock(ptr noundef %mac_cfg_lock) #10
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %lor.lhs.false4, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false4:                                   ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false5, label %lor.lhs.false4.if.then_crit_edge

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false4
  %count6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %6 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.else, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false4.if.then_crit_edge, %entry.if.then_crit_edge
  %mac_dev = getelementptr i8, ptr %dev, i32 2536
  %8 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_dev, align 8
  tail call void @tse_set_bit(ptr noundef %9, i32 noundef 8, i32 noundef 16) #10
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  %mac_dev8 = getelementptr i8, ptr %dev, i32 2536
  %10 = ptrtoint ptr %mac_dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_dev8, align 8
  tail call void @tse_clear_bit(ptr noundef %11, i32 noundef 8, i32 noundef 16) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %mac_cfg_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tse_set_rx_mode_hashfilter(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_cfg_lock = getelementptr i8, ptr %dev, i32 2672
  tail call void @_raw_spin_lock(ptr noundef %mac_cfg_lock) #10
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mac_dev = getelementptr i8, ptr %dev, i32 2536
  %2 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_dev, align 8
  tail call void @tse_set_bit(ptr noundef %3, i32 noundef 8, i32 noundef 16) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and2 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %mac_dev.i13 = getelementptr i8, ptr %dev, i32 2536
  br i1 %tobool3.not, label %if.end.for.body.i19_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.body.i19_crit_edge:                    ; preds = %if.end
  br label %for.body.i19

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %mac_dev.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_dev.i13, align 8
  %mul.i = shl i32 %i.03.i, 2
  %add.i = add nuw nsw i32 %mul.i, 256
  %8 = ptrtoint ptr %7 to i32
  %add.i.i = add i32 %add.i, %8
  %9 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #10, !srcloc !294
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.body.i.if.end5_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end5_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body.i19:                                     ; preds = %for.body.i19.for.body.i19_crit_edge, %if.end.for.body.i19_crit_edge
  %i.045.i = phi i32 [ %inc.i17, %for.body.i19.for.body.i19_crit_edge ], [ 0, %if.end.for.body.i19_crit_edge ]
  %10 = ptrtoint ptr %mac_dev.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_dev.i13, align 8
  %mul.i14 = shl i32 %i.045.i, 2
  %add.i15 = add nuw nsw i32 %mul.i14, 256
  %12 = ptrtoint ptr %11 to i32
  %add.i.i16 = add i32 %add.i15, %12
  %13 = inttoptr i32 %add.i.i16 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #10, !srcloc !294
  %inc.i17 = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i18 = icmp eq i32 %inc.i17, 64
  br i1 %exitcond.not.i18, label %for.end.i, label %for.body.i19.for.body.i19_crit_edge

for.body.i19.for.body.i19_crit_edge:              ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i19

for.end.i:                                        ; preds = %for.body.i19
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %14 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.050.i = load ptr, ptr %mc.i, align 4
  %cmp5.not51.i = icmp eq ptr %ha.050.i, %mc.i
  br i1 %cmp5.not51.i, label %for.end.i.if.end5_crit_edge, label %for.end.i.for.cond7.preheader.i_crit_edge

for.end.i.for.cond7.preheader.i_crit_edge:        ; preds = %for.end.i
  br label %for.cond7.preheader.i

for.end.i.if.end5_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.cond7.preheader.i:                            ; preds = %for.cond7.preheader.i.for.cond7.preheader.i_crit_edge, %for.end.i.for.cond7.preheader.i_crit_edge
  %ha.052.i = phi ptr [ %ha.0.i, %for.cond7.preheader.i.for.cond7.preheader.i_crit_edge ], [ %ha.050.i, %for.end.i.for.cond7.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.netdev_hw_addr, ptr %ha.052.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %shr.1.i = lshr i8 %16, 1
  %17 = xor i8 %shr.1.i, %16
  %shr.2.i = lshr i8 %16, 2
  %18 = xor i8 %17, %shr.2.i
  %shr.3.i = lshr i8 %16, 3
  %19 = xor i8 %18, %shr.3.i
  %shr.4.i = lshr i8 %16, 4
  %20 = xor i8 %19, %shr.4.i
  %shr.5.i = lshr i8 %16, 5
  %21 = xor i8 %20, %shr.5.i
  %shr.6.i = lshr i8 %16, 6
  %22 = xor i8 %21, %shr.6.i
  %conv14.6.i = and i8 %22, 1
  %23 = lshr i8 %16, 7
  %conv14.7.i = xor i8 %conv14.6.i, %23
  %arrayidx.1.i = getelementptr %struct.netdev_hw_addr, ptr %ha.052.i, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i, align 1
  %shr.1.1.i = lshr i8 %25, 1
  %26 = xor i8 %shr.1.1.i, %25
  %shr.2.1.i = lshr i8 %25, 2
  %27 = xor i8 %26, %shr.2.1.i
  %shr.3.1.i = lshr i8 %25, 3
  %28 = xor i8 %27, %shr.3.1.i
  %shr.4.1.i = lshr i8 %25, 4
  %29 = xor i8 %28, %shr.4.1.i
  %shr.5.1.i = lshr i8 %25, 5
  %30 = xor i8 %29, %shr.5.1.i
  %shr.6.1.i = lshr i8 %25, 6
  %31 = xor i8 %30, %shr.6.1.i
  %conv14.6.1.i = and i8 %31, 1
  %32 = lshr i8 %25, 7
  %conv14.7.1.i = xor i8 %conv14.6.1.i, %32
  %arrayidx.2.i = getelementptr %struct.netdev_hw_addr, ptr %ha.052.i, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.2.i, align 1
  %shr.1.2.i = lshr i8 %34, 1
  %35 = xor i8 %shr.1.2.i, %34
  %shr.2.2.i = lshr i8 %34, 2
  %36 = xor i8 %35, %shr.2.2.i
  %shr.3.2.i = lshr i8 %34, 3
  %37 = xor i8 %36, %shr.3.2.i
  %shr.4.2.i = lshr i8 %34, 4
  %38 = xor i8 %37, %shr.4.2.i
  %shr.5.2.i = lshr i8 %34, 5
  %39 = xor i8 %38, %shr.5.2.i
  %shr.6.2.i = lshr i8 %34, 6
  %40 = xor i8 %39, %shr.6.2.i
  %conv14.6.2.i = and i8 %40, 1
  %41 = lshr i8 %34, 7
  %conv14.7.2.i = xor i8 %conv14.6.2.i, %41
  %42 = shl nuw nsw i8 %conv14.7.i, 2
  %43 = shl nuw nsw i8 %conv14.7.1.i, 1
  %44 = or i8 %43, %42
  %or.255.i = or i8 %44, %conv14.7.2.i
  %arrayidx.3.i = getelementptr %struct.netdev_hw_addr, ptr %ha.052.i, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.3.i, align 1
  %shr.1.3.i = lshr i8 %46, 1
  %47 = xor i8 %shr.1.3.i, %46
  %shr.2.3.i = lshr i8 %46, 2
  %48 = xor i8 %47, %shr.2.3.i
  %shr.3.3.i = lshr i8 %46, 3
  %49 = xor i8 %48, %shr.3.3.i
  %shr.4.3.i = lshr i8 %46, 4
  %50 = xor i8 %49, %shr.4.3.i
  %shr.5.3.i = lshr i8 %46, 5
  %51 = xor i8 %50, %shr.5.3.i
  %shr.6.3.i = lshr i8 %46, 6
  %52 = xor i8 %51, %shr.6.3.i
  %conv14.6.3.i = and i8 %52, 1
  %53 = lshr i8 %46, 7
  %conv14.7.3.i = xor i8 %conv14.6.3.i, %53
  %54 = shl nuw nsw i8 %or.255.i, 1
  %or.356.i = or i8 %54, %conv14.7.3.i
  %or.3.i = zext i8 %or.356.i to i32
  %arrayidx.4.i = getelementptr %struct.netdev_hw_addr, ptr %ha.052.i, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.4.i, align 1
  %shr.1.4.i = lshr i8 %56, 1
  %57 = xor i8 %shr.1.4.i, %56
  %shr.2.4.i = lshr i8 %56, 2
  %58 = xor i8 %57, %shr.2.4.i
  %shr.3.4.i = lshr i8 %56, 3
  %59 = xor i8 %58, %shr.3.4.i
  %shr.4.4.i = lshr i8 %56, 4
  %60 = xor i8 %59, %shr.4.4.i
  %shr.5.4.i = lshr i8 %56, 5
  %61 = xor i8 %60, %shr.5.4.i
  %shr.6.4.i = lshr i8 %56, 6
  %62 = xor i8 %61, %shr.6.4.i
  %conv14.6.4.i = and i8 %62, 1
  %63 = lshr i8 %56, 7
  %conv14.7.4.i = xor i8 %conv14.6.4.i, %63
  %arrayidx.5.i = getelementptr %struct.netdev_hw_addr, ptr %ha.052.i, i32 0, i32 2, i32 0
  %64 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.5.i, align 1
  %shr.1.5.i = lshr i8 %65, 1
  %66 = xor i8 %shr.1.5.i, %65
  %shr.2.5.i = lshr i8 %65, 2
  %67 = xor i8 %66, %shr.2.5.i
  %shr.3.5.i = lshr i8 %65, 3
  %68 = xor i8 %67, %shr.3.5.i
  %shr.4.5.i = lshr i8 %65, 4
  %69 = xor i8 %68, %shr.4.5.i
  %shr.5.5.i = lshr i8 %65, 5
  %70 = xor i8 %69, %shr.5.5.i
  %shr.6.5.i = lshr i8 %65, 6
  %71 = xor i8 %70, %shr.6.5.i
  %conv14.6.5.i = and i8 %71, 1
  %72 = lshr i8 %65, 7
  %conv14.7.5.i = xor i8 %conv14.6.5.i, %72
  %73 = shl nuw nsw i32 %or.3.i, 2
  %74 = shl nuw nsw i8 %conv14.7.4.i, 1
  %75 = zext i8 %74 to i32
  %shl.5.i = or i32 %73, %75
  %conv18.5.i = zext i8 %conv14.7.5.i to i32
  %or.5.i = or i32 %shl.5.i, %conv18.5.i
  %76 = ptrtoint ptr %mac_dev.i13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mac_dev.i13, align 8
  %mul22.i = shl nuw nsw i32 %or.5.i, 2
  %78 = ptrtoint ptr %77 to i32
  %add23.i = add i32 %78, 256
  %add.i44.i = add i32 %add23.i, %mul22.i
  %79 = inttoptr i32 %add.i44.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 16777216) #10, !srcloc !294
  %80 = ptrtoint ptr %ha.052.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %ha.0.i = load ptr, ptr %ha.052.i, align 4
  %cmp5.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp5.not.i, label %for.cond7.preheader.i.if.end5_crit_edge, label %for.cond7.preheader.i.for.cond7.preheader.i_crit_edge

for.cond7.preheader.i.for.cond7.preheader.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.i

for.cond7.preheader.i.if.end5_crit_edge:          ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %for.cond7.preheader.i.if.end5_crit_edge, %for.end.i.if.end5_crit_edge, %for.body.i.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mac_cfg_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tse_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  tail call fastcc void @tse_tx_complete(ptr noundef %add.ptr)
  %rx_cons.i = getelementptr i8, ptr %napi, i32 256
  %rx_ring_size.i = getelementptr i8, ptr %napi, i32 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp96.not.i = icmp eq i32 %budget, 0
  br i1 %cmp96.not.i, label %entry.tse_rx.exit_crit_edge, label %land.rhs.lr.ph.i

entry.tse_rx.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_rx.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %0 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_cons.i, align 8
  %2 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_size.i, align 8
  %rem.i = urem i32 %1, %3
  %dmaops.i = getelementptr i8, ptr %napi, i32 520
  %rx_ring.i = getelementptr i8, ptr %napi, i32 252
  %device.i = getelementptr i8, ptr %napi, i32 -4
  %msg_enable.i = getelementptr i8, ptr %napi, i32 516
  %rx_prod.i.i = getelementptr i8, ptr %napi, i32 260
  %rx_dma_buf_sz.i.i = getelementptr i8, ptr %napi, i32 268
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %tse_rx_refill.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %entry1.098.i = phi i32 [ %rem.i, %land.rhs.lr.ph.i ], [ %rem16.i, %tse_rx_refill.exit.i.land.rhs.i_crit_edge ]
  %count.097.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %tse_rx_refill.exit.i.land.rhs.i_crit_edge ]
  %4 = ptrtoint ptr %dmaops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmaops.i, align 8
  %get_rx_status.i = getelementptr inbounds %struct.altera_dmaops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %get_rx_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_rx_status.i, align 4
  %call.i = tail call i32 %7(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %land.rhs.i.tse_rx.exit_crit_edge, label %while.body.i

land.rhs.i.tse_rx.exit_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_rx.exit

while.body.i:                                     ; preds = %land.rhs.i
  %8 = and i32 %call.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp ne i32 %8, 0
  %conv6.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i)
  %cmp7.i = icmp eq i32 %conv6.i, 0
  %or.cond.i = or i1 %tobool.not.i, %cmp7.i
  br i1 %or.cond.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %call.i, 16
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.94, i32 noundef %shr.i, i32 noundef %conv6.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %count.097.i, 1
  %11 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_cons.i, align 8
  %inc14.i = add i32 %12, 1
  store i32 %inc14.i, ptr %rx_cons.i, align 8
  %13 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_ring_size.i, align 8
  %rem16.i = urem i32 %inc14.i, %14
  %15 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_ring.i, align 4
  %skb17.i = getelementptr %struct.tse_buffer, ptr %16, i32 %entry1.098.i, i32 1
  %17 = ptrtoint ptr %skb17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb17.i, align 4
  %tobool18.not.i = icmp eq ptr %18, null
  br i1 %tobool18.not.i, label %if.then22.i, label %if.end26.i, !prof !295

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.tse_rx) #13
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 6
  %23 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_dropped.i, align 8
  %inc25.i = add i32 %24, 1
  store i32 %inc25.i, ptr %rx_dropped.i, align 8
  br label %tse_rx.exit

if.end26.i:                                       ; preds = %if.end.i
  %conv12.i = add i32 %call.i, 65534
  %25 = ptrtoint ptr %skb17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %skb17.i, align 4
  %conv30.i = and i32 %conv12.i, 65535
  %call31.i = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef %conv30.i) #10
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i, align 4
  %28 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_ring.i, align 4
  %dma_addr.i = getelementptr %struct.tse_buffer, ptr %29, i32 %entry1.098.i, i32 2
  %30 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr.i, align 4
  %len.i = getelementptr %struct.tse_buffer, ptr %29, i32 %entry1.098.i, i32 3
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %31, i32 noundef %33, i32 noundef 2, i32 noundef 0) #10
  %34 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable.i, align 4
  %and36.i = and i32 %35, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end26.i.if.end42.i_crit_edge, label %if.then38.i

if.end26.i.if.end42.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %37, ptr noundef nonnull @.str.96, i32 noundef %conv30.i) #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.97, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %39, i32 noundef %conv30.i, i1 noundef zeroext true) #10
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end42.i_crit_edge
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %43, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end42.i.tse_rx_vlan.exit.i_crit_edge, label %land.lhs.true.i.i

if.end42.i.tse_rx_vlan.exit.i_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_rx_vlan.exit.i

land.lhs.true.i.i:                                ; preds = %if.end42.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i.i, align 4
  %h_vlan_proto.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %h_vlan_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %h_vlan_proto.i.i.i, align 2
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i16 %47, label %land.lhs.true.i.i.tse_rx_vlan.exit.i_crit_edge [
    i16 -30552, label %land.lhs.true.i.i.if.then.i.i_crit_edge
    i16 -32512, label %land.lhs.true.i.i.if.then.i.i_crit_edge61
  ]

land.lhs.true.i.i.if.then.i.i_crit_edge61:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.i.i.tse_rx_vlan.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_rx_vlan.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge61
  %h_vlan_TCI.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %45, i32 0, i32 2
  %49 = ptrtoint ptr %h_vlan_TCI.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %h_vlan_TCI.i.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 4
  %51 = call ptr @memmove(ptr %add.ptr.i.i, ptr %45, i32 12)
  %call3.i.i = tail call ptr @skb_pull(ptr noundef nonnull %18, i32 noundef 4) #10
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15, i32 0, i32 9
  %52 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15, i32 0, i32 10
  %53 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %50, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15, i32 0, i32 3
  %54 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, -2147483648
  store i32 %bf.set.i.i.i, ptr %vlan_present.i.i.i, align 2
  br label %tse_rx_vlan.exit.i

tse_rx_vlan.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true.i.i.tse_rx_vlan.exit.i_crit_edge, %if.end42.i.tse_rx_vlan.exit.i_crit_edge
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 8
  %call45.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %18, ptr noundef %56) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %call45.i, ptr %protocol.i, align 8
  %call46.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %18) #10
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 8
  %stats48.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 36
  %60 = ptrtoint ptr %stats48.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stats48.i, align 8
  %inc49.i = add i32 %61, 1
  store i32 %inc49.i, ptr %stats48.i, align 8
  %62 = load ptr, ptr %add.ptr, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 2
  %63 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %64, %conv30.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %65 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_ring_size.i, align 8
  %67 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_cons.i, align 8
  %69 = ptrtoint ptr %rx_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_prod.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.not32.i.i = icmp eq i32 %68, %70
  br i1 %cmp.not32.i.i, label %tse_rx_vlan.exit.i.tse_rx_refill.exit.i_crit_edge, label %tse_rx_vlan.exit.i.for.body.i.i_crit_edge

tse_rx_vlan.exit.i.for.body.i.i_crit_edge:        ; preds = %tse_rx_vlan.exit.i
  br label %for.body.i.i

tse_rx_vlan.exit.i.tse_rx_refill.exit.i_crit_edge: ; preds = %tse_rx_vlan.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_rx_refill.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %tse_rx_vlan.exit.i.for.body.i.i_crit_edge
  %71 = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %70, %tse_rx_vlan.exit.i.for.body.i.i_crit_edge ]
  %rem.i.i = urem i32 %71, %66
  %72 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_ring.i, align 4
  %skb.i.i = getelementptr %struct.tse_buffer, ptr %73, i32 %rem.i.i, i32 1
  %74 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skb.i.i, align 4
  %cmp3.i.i = icmp eq ptr %75, null
  br i1 %cmp3.i.i, label %if.then.i94.i, label %for.body.i.i.for.inc.i.i_crit_edge, !prof !296

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i94.i:                                    ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.tse_buffer, ptr %73, i32 %rem.i.i
  %76 = ptrtoint ptr %rx_dma_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_dma_buf_sz.i.i, align 4
  %call.i.i = tail call fastcc i32 @tse_init_rx_buffer(ptr noundef %add.ptr, ptr noundef %arrayidx.i.i, i32 noundef %77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp7.not.i.i, label %if.end.i.i, label %if.then.i94.i.tse_rx_refill.exit.i_crit_edge, !prof !296

if.then.i94.i.tse_rx_refill.exit.i_crit_edge:     ; preds = %if.then.i94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_rx_refill.exit.i

if.end.i.i:                                       ; preds = %if.then.i94.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %dmaops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dmaops.i, align 8
  %add_rx_desc.i.i = getelementptr inbounds %struct.altera_dmaops, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %add_rx_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add_rx_desc.i.i, align 4
  %82 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx16.i.i = getelementptr %struct.tse_buffer, ptr %83, i32 %rem.i.i
  tail call void %81(ptr noundef %add.ptr, ptr noundef %arrayidx16.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %84 = ptrtoint ptr %rx_prod.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_prod.i.i, align 4
  %inc.i.i = add i32 %85, 1
  store i32 %inc.i.i, ptr %rx_prod.i.i, align 4
  %86 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_cons.i, align 8
  %cmp.not.i.i = icmp eq i32 %87, %inc.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.tse_rx_refill.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.tse_rx_refill.exit.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_rx_refill.exit.i

tse_rx_refill.exit.i:                             ; preds = %for.inc.i.i.tse_rx_refill.exit.i_crit_edge, %if.then.i94.i.tse_rx_refill.exit.i_crit_edge, %tse_rx_vlan.exit.i.tse_rx_refill.exit.i_crit_edge
  %exitcond.not.i = icmp eq i32 %inc.i, %budget
  br i1 %exitcond.not.i, label %tse_rx_refill.exit.i.if.end23_crit_edge, label %tse_rx_refill.exit.i.land.rhs.i_crit_edge

tse_rx_refill.exit.i.land.rhs.i_crit_edge:        ; preds = %tse_rx_refill.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

tse_rx_refill.exit.i.if.end23_crit_edge:          ; preds = %tse_rx_refill.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

tse_rx.exit:                                      ; preds = %if.then22.i, %land.rhs.i.tse_rx.exit_crit_edge, %entry.tse_rx.exit_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.then22.i ], [ 0, %entry.tse_rx.exit_crit_edge ], [ %count.097.i, %land.rhs.i.tse_rx.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.i, i32 %budget)
  %cmp = icmp slt i32 %count.1.i, %budget
  br i1 %cmp, label %if.then, label %tse_rx.exit.if.end23_crit_edge

tse_rx.exit.if.end23_crit_edge:                   ; preds = %tse_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %tse_rx.exit
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %count.1.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tse_poll.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tse_poll, %if.then8)) #10
          to label %do.body12 [label %if.then8], !srcloc !297

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tse_poll.__UNIQUE_ID_ddebug361, ptr noundef %89, ptr noundef nonnull @.str.90, i32 noundef %count.1.i, i32 noundef %budget) #10
  br label %do.body12

do.body12:                                        ; preds = %if.then8, %if.then
  %rxdma_irq_lock = getelementptr i8, ptr %napi, i32 448
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxdma_irq_lock) #10
  %dmaops = getelementptr i8, ptr %napi, i32 520
  %90 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dmaops, align 8
  %enable_rxirq = getelementptr inbounds %struct.altera_dmaops, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %enable_rxirq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %enable_rxirq, align 4
  tail call void %93(ptr noundef %add.ptr) #10
  %94 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dmaops, align 8
  %enable_txirq = getelementptr inbounds %struct.altera_dmaops, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %enable_txirq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %enable_txirq, align 4
  tail call void %97(ptr noundef %add.ptr) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxdma_irq_lock, i32 noundef %call16) #10
  br label %if.end23

if.end23:                                         ; preds = %do.body12, %tse_rx.exit.if.end23_crit_edge, %tse_rx_refill.exit.i.if.end23_crit_edge
  %count.1.i40 = phi i32 [ %count.1.i, %do.body12 ], [ %count.1.i, %tse_rx.exit.if.end23_crit_edge ], [ %budget, %tse_rx_refill.exit.i.if.end23_crit_edge ]
  ret i32 %count.1.i40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_phy(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_iface = getelementptr i8, ptr %dev, i32 2808
  %0 = ptrtoint ptr %phy_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_iface, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %oldlink = getelementptr i8, ptr %dev, i32 2824
  %2 = ptrtoint ptr %oldlink to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %oldlink, align 8
  %oldspeed = getelementptr i8, ptr %dev, i32 2816
  %3 = ptrtoint ptr %oldspeed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %oldspeed, align 8
  %oldduplex = getelementptr i8, ptr %dev, i32 2820
  %4 = ptrtoint ptr %oldduplex to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %oldduplex, align 4
  %device = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %9 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %if.then3

of_parse_phandle.exit:                            ; preds = %if.end
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %of_parse_phandle.exit.if.then3_crit_edge, label %do.body53

of_parse_phandle.exit.if.then3_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %of_parse_phandle.exit.if.then3_crit_edge, %of_parse_phandle.exit.thread
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %of_node5 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node5, align 8
  %call6 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %15) #10
  br i1 %call6, label %if.then7, label %do.body28

if.then7:                                         ; preds = %if.then3
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %of_node9 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node9, align 8
  %call10 = call i32 @of_phy_register_fixed_link(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.99) #13
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %of_node14 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node14, align 8
  %call15 = call ptr @of_node_get(ptr noundef %23) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_phy.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_phy, %if.then21)) #10
          to label %do.end24 [label %if.then21], !srcloc !297

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @init_phy.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.101) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %if.end12
  %24 = ptrtoint ptr %phy_iface to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_iface, align 8
  %call26 = call ptr @of_phy_connect(ptr noundef %dev, ptr noundef %call15, ptr noundef nonnull @altera_tse_adjust_link, i32 noundef 0, i32 noundef %25) #10
  br label %if.end73

do.body28:                                        ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_phy.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_phy, %if.then40)) #10
          to label %do.end45 [label %if.then40], !srcloc !297

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @init_phy.__UNIQUE_ID_ddebug366, ptr noundef %dev, ptr noundef nonnull @.str.102) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.body28
  %mdio = getelementptr i8, ptr %dev, i32 2812
  %26 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdio, align 4
  %tobool46.not = icmp eq ptr %27, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.103) #13
  br label %cleanup

if.end48:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = call fastcc ptr @connect_local_phy(ptr noundef %dev)
  br label %if.end73

do.body53:                                        ; preds = %of_parse_phandle.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_phy.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_phy, %if.then65)) #10
          to label %do.end70 [label %if.then65], !srcloc !297

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @init_phy.__UNIQUE_ID_ddebug367, ptr noundef %dev, ptr noundef nonnull @.str.104) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %do.body53
  %28 = ptrtoint ptr %phy_iface to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_iface, align 8
  %call72 = call ptr @of_phy_connect(ptr noundef %dev, ptr noundef nonnull %11, ptr noundef nonnull @altera_tse_adjust_link, i32 noundef 0, i32 noundef %29) #10
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %if.end48, %do.end24
  %fixed_link.0.off0 = phi i1 [ false, %do.end70 ], [ true, %do.end24 ], [ false, %if.end48 ]
  %phynode.0 = phi ptr [ %11, %do.end70 ], [ %call15, %do.end24 ], [ null, %if.end48 ]
  %phydev.0 = phi ptr [ %call72, %do.end70 ], [ %call26, %do.end24 ], [ %call49, %if.end48 ]
  call void @of_node_put(ptr noundef %phynode.0) #10
  %tobool74.not = icmp eq ptr %phydev.0, null
  br i1 %tobool74.not, label %if.then75, label %if.end81

if.then75:                                        ; preds = %if.end73
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.105) #13
  br i1 %fixed_link.0.off0, label %if.then77, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %of_node79 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %of_node79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node79, align 8
  call void @of_phy_deregister_fixed_link(ptr noundef %33) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end73
  %34 = ptrtoint ptr %phy_iface to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phy_iface, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %35, label %if.end81.if.end88_crit_edge [
    i32 2, label %if.end81.if.then86_crit_edge
    i32 7, label %if.end81.if.then86_crit_edge172
  ]

if.end81.if.then86_crit_edge172:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.end81.if.then86_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then86:                                        ; preds = %if.end81.if.then86_crit_edge, %if.end81.if.then86_crit_edge172
  %call87 = call i32 @phy_set_max_speed(ptr noundef nonnull %phydev.0, i32 noundef 100) #10
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end81.if.end88_crit_edge
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev.0, i32 0, i32 2
  %37 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp89 = icmp ne i32 %38, 0
  %brmerge = or i1 %fixed_link.0.off0, %cmp89
  br i1 %brmerge, label %do.body95, label %if.then91

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.106, i32 noundef 0) #13
  call void @phy_disconnect(ptr noundef nonnull %phydev.0) #10
  br label %cleanup

do.body95:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_phy.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_phy, %if.then107)) #10
          to label %cleanup [label %if.then107], !srcloc !297

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev.0, i32 0, i32 6
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr, align 8
  %41 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %phy_id, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev.0, i32 0, i32 4
  %43 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @init_phy.__UNIQUE_ID_ddebug368, ptr noundef %dev, ptr noundef nonnull @.str.107, i32 noundef %40, i32 noundef %42, i32 noundef %bf.cast) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %do.body95, %if.then91, %if.then77, %if.then75.cleanup_crit_edge, %if.then47, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then91 ], [ %call10, %if.then11 ], [ -19, %if.then47 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.then77 ], [ -19, %if.then75.cleanup_crit_edge ], [ 0, %if.then107 ], [ 0, %do.body95 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altera_tse_mdio_destroy(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr i8, ptr %dev, i32 2812
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2828
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.116, ptr noundef %id) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %4 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio, align 4
  tail call void @mdiobus_unregister(ptr noundef %5) #10
  %6 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio, align 4
  tail call void @mdiobus_free(ptr noundef %7) #10
  %8 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mdio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altera_tse_mdio_create(ptr noundef %dev, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #10
  %cmp.not97 = icmp eq ptr %call1, null
  br i1 %cmp.not97, label %entry.do.body18_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %child_node.098 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child_node.098, ptr noundef nonnull @.str.56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %do.body8

for.inc:                                          ; preds = %for.body
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %of_node4 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node4, align 8
  %call5 = tail call ptr @of_get_next_child(ptr noundef %7, ptr noundef nonnull %child_node.098) #10
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.inc.do.body18_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.body8:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @altera_tse_mdio_create.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@altera_tse_mdio_create, %if.then13)) #10
          to label %if.end36 [label %if.then13], !srcloc !297

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @altera_tse_mdio_create.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.58) #10
  br label %if.end36

do.body18:                                        ; preds = %for.inc.do.body18_crit_edge, %entry.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @altera_tse_mdio_create.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@altera_tse_mdio_create, %if.then30)) #10
          to label %cleanup [label %if.then30], !srcloc !297

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @altera_tse_mdio_create.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.59) #10
  br label %cleanup

if.end36:                                         ; preds = %if.then13, %do.body8
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #10
  %cmp38 = icmp eq ptr %call.i, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @altera_tse_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @altera_tse_mdio_write, ptr %write, align 8
  %id41 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %call43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id41, i32 noundef 61, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str, i32 noundef %id)
  %priv44 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %priv44 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %priv44, align 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %parent, align 4
  %call46 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i, ptr noundef nonnull %child_node.098) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %id41) #13
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %msg_enable = getelementptr i8, ptr %dev, i32 2828
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end51.if.end56_crit_edge, label %if.then53

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef %id41) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51.if.end56_crit_edge
  %mdio57 = getelementptr i8, ptr %dev, i32 2812
  %17 = ptrtoint ptr %mdio57 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %mdio57, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then48, %if.then39, %if.then30, %do.body18
  %retval.0 = phi i32 [ -12, %if.then39 ], [ %call46, %if.then48 ], [ 0, %if.end56 ], [ 0, %if.then30 ], [ 0, %do.body18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_tse_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac_dev = getelementptr i8, ptr %1, i32 2536
  %2 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_dev, align 8
  %4 = ptrtoint ptr %3 to i32
  %add.i = add i32 %4, 64
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %and = shl i32 %mii_id, 24
  %6 = and i32 %and, 520093696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #10, !srcloc !294
  %7 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_dev, align 8
  %mul = shl i32 %regnum, 2
  %add = add i32 %mul, 640
  %9 = ptrtoint ptr %8 to i32
  %add.i6 = add i32 %add, %9
  %10 = inttoptr i32 %add.i6 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %12 = and i32 %11, -65536
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_tse_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac_dev = getelementptr i8, ptr %1, i32 2536
  %2 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_dev, align 8
  %4 = ptrtoint ptr %3 to i32
  %add.i = add i32 %4, 64
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %and = shl i32 %mii_id, 24
  %6 = and i32 %and, 520093696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #10, !srcloc !294
  %conv = zext i16 %value to i32
  %7 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_dev, align 8
  %mul = shl i32 %regnum, 2
  %add = add i32 %mul, 640
  %9 = ptrtoint ptr %8 to i32
  %add.i4 = add i32 %add, %9
  %10 = inttoptr i32 %add.i4 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %11) #10, !srcloc !294
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tse_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dmaops = getelementptr i8, ptr %dev, i32 2832
  %0 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmaops, align 8
  %init_dma = getelementptr inbounds %struct.altera_dmaops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %init_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_dma, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.64) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2828
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef %7) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %revision = getelementptr i8, ptr %dev, i32 2540
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %revision, align 4
  %10 = add i32 %9, -3585
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %10)
  %11 = icmp ult i32 %10, -257
  br i1 %11, label %if.then7, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %9) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end3.if.end9_crit_edge
  %mac_cfg_lock = getelementptr i8, ptr %dev, i32 2672
  tail call void @_raw_spin_lock(ptr noundef %mac_cfg_lock) #10
  %phy_iface.i = getelementptr i8, ptr %dev, i32 2808
  %12 = ptrtoint ptr %phy_iface.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_iface.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 4
  br i1 %cmp.not.i, label %if.end.i, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.i:                                         ; preds = %if.end9
  %mac_dev.i.i.i = getelementptr i8, ptr %dev, i32 2536
  %14 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_dev.i.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  %add.i.i.i.i = add i32 %16, 576
  %17 = inttoptr i32 %add.i.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #10, !srcloc !294
  %18 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_dev.i.i.i, align 8
  %20 = ptrtoint ptr %19 to i32
  %add.i.i6.i.i = add i32 %20, 576
  %21 = inttoptr i32 %add.i.i6.i.i to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !288
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %conv.i7.i.i = trunc i32 %23 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i7.i.i)
  %cmp.i.not.i = icmp eq i16 %conv.i7.i.i, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end.i.if.then12_crit_edge

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

land.lhs.true.i:                                  ; preds = %if.end.i
  %24 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac_dev.i.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  %add.i.i.i51.i = add i32 %26, 576
  %27 = inttoptr i32 %add.i.i.i51.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -65536) #10, !srcloc !294
  %28 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_dev.i.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  %add.i.i6.i52.i = add i32 %30, 576
  %31 = inttoptr i32 %add.i.i6.i52.i to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !288
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %conv.i7.i53.i = trunc i32 %33 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i7.i53.i)
  %cmp.i54.not.i = icmp eq i16 %conv.i7.i53.i, -1
  br i1 %cmp.i54.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.then12_crit_edge

land.lhs.true.i.if.then12_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call fastcc i32 @sgmii_pcs_scratch_test(ptr noundef %add.ptr.i, i16 noundef zeroext -23131) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.if.then12_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.if.then12_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %call8.i = tail call fastcc i32 @sgmii_pcs_scratch_test(ptr noundef %add.ptr.i, i16 noundef zeroext 23130) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.then12_crit_edge, label %if.then10.i

land.lhs.true7.i.if.then12_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then10.i:                                      ; preds = %land.lhs.true7.i
  %34 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac_dev.i.i.i, align 8
  %36 = ptrtoint ptr %35 to i32
  %add.i.i.i = add i32 %36, 520
  %37 = inttoptr i32 %add.i.i.i to ptr
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %39 = and i32 %38, -65536
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %41 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac_dev.i.i.i, align 8
  %43 = ptrtoint ptr %42 to i32
  %add.i.i57.i = add i32 %43, 524
  %44 = inttoptr i32 %add.i.i57.i to ptr
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %46 = and i32 %45, -65536
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %40, i32 noundef %47) #13
  %48 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mac_dev.i.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  %add.i.i60.i = add i32 %50, 584
  %51 = inttoptr i32 %add.i.i60.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 1074593792) #10, !srcloc !294
  %52 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mac_dev.i.i.i, align 8
  %54 = ptrtoint ptr %53 to i32
  %add.i.i62.i = add i32 %54, 588
  %55 = inttoptr i32 %add.i.i62.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 50331648) #10, !srcloc !294
  %56 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac_dev.i.i.i, align 8
  %58 = ptrtoint ptr %57 to i32
  %add.i.i64.i = add i32 %58, 592
  %59 = inttoptr i32 %add.i.i64.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 50331648) #10, !srcloc !294
  %60 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mac_dev.i.i.i, align 8
  %62 = ptrtoint ptr %61 to i32
  %add.i.i66.i = add i32 %62, 512
  %63 = inttoptr i32 %add.i.i66.i to ptr
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !288
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %66 = and i32 %65, 61119
  %conv.i68.i = or i32 %66, 4416
  %67 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_dev.i.i.i, align 8
  %69 = ptrtoint ptr %68 to i32
  %add.i.i70.i = add i32 %69, 512
  %70 = inttoptr i32 %add.i.i70.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %71 = tail call i32 @llvm.bswap.i32(i32 %conv.i68.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %71) #10, !srcloc !294
  %72 = and i32 %65, 28351
  %conv.i71.i = or i32 %72, 37184
  %73 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mac_dev.i.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  %add.i.i73.i = add i32 %75, 512
  %76 = inttoptr i32 %add.i.i73.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %77 = tail call i32 @llvm.bswap.i32(i32 %conv.i71.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %77) #10, !srcloc !294
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %if.then10.i
  %n.077.i = phi i32 [ 0, %if.then10.i ], [ %inc.i, %if.end26.i.for.body.i_crit_edge ]
  %78 = ptrtoint ptr %mac_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mac_dev.i.i.i, align 8
  %80 = ptrtoint ptr %79 to i32
  %add.i.i75.i = add i32 %80, 512
  %81 = inttoptr i32 %add.i.i75.i to ptr
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %83 = and i32 %82, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool24.not.i = icmp eq i32 %83, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.76) #13
  br label %if.end14

if.end26.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %n.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end26.i.if.then12_crit_edge, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end26.i.if.then12_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %if.end26.i.if.then12_crit_edge, %land.lhs.true7.i.if.then12_crit_edge, %land.lhs.true4.i.if.then12_crit_edge, %land.lhs.true.i.if.then12_crit_edge, %if.end.i.if.then12_crit_edge
  %.str.77.sink = phi ptr [ @.str.75, %land.lhs.true7.i.if.then12_crit_edge ], [ @.str.75, %land.lhs.true4.i.if.then12_crit_edge ], [ @.str.75, %land.lhs.true.i.if.then12_crit_edge ], [ @.str.75, %if.end.i.if.then12_crit_edge ], [ @.str.77, %if.end26.i.if.then12_crit_edge ]
  %retval.0.i148 = phi i32 [ -12, %land.lhs.true7.i.if.then12_crit_edge ], [ -12, %land.lhs.true4.i.if.then12_crit_edge ], [ -12, %land.lhs.true.i.if.then12_crit_edge ], [ -12, %if.end.i.if.then12_crit_edge ], [ -110, %if.end26.i.if.then12_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull %.str.77.sink) #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %retval.0.i148) #13
  tail call void @_raw_spin_unlock(ptr noundef %mac_cfg_lock) #10
  br label %cleanup

if.end14:                                         ; preds = %if.then25.i, %if.end9.if.end14_crit_edge
  %call15 = tail call fastcc i32 @reset_mac(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end27_crit_edge, label %do.body18

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tse_open.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tse_open, %if.then23)) #10
          to label %if.end27 [label %if.then23], !srcloc !297

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tse_open.__UNIQUE_ID_ddebug370, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef -1) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body18, %if.end14.if.end27_crit_edge
  tail call fastcc void @init_mac(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock(ptr noundef %mac_cfg_lock) #10
  %85 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dmaops, align 8
  %reset_dma = getelementptr inbounds %struct.altera_dmaops, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %reset_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reset_dma, align 4
  tail call void %88(ptr noundef %add.ptr.i) #10
  %89 = load i32, ptr @dma_rx_num, align 4
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2576
  %90 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %rx_ring_size, align 8
  %91 = load i32, ptr @dma_tx_num, align 4
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2596
  %92 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tx_ring_size, align 4
  %93 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %89, i32 24) #10
  %94 = extractvalue { i32, i1 } %93, 1
  br i1 %94, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !295

kcalloc.exit.thread.i:                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %rx_ring76.i = getelementptr i8, ptr %dev, i32 2564
  %95 = ptrtoint ptr %rx_ring76.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %rx_ring76.i, align 4
  br label %if.then36

if.end7.i.i.i:                                    ; preds = %if.end27
  %96 = extractvalue { i32, i1 } %93, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %96, i32 noundef 3520) #14
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2564
  %97 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call8.i.i.i, ptr %rx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.if.then36_crit_edge, label %if.end.i149

if.end7.i.i.i.if.then36_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.end.i149:                                      ; preds = %if.end7.i.i.i
  %98 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 24) #10
  %99 = extractvalue { i32, i1 } %98, 1
  br i1 %99, label %kcalloc.exit74.thread.i, label %if.end7.i.i72.i, !prof !295

kcalloc.exit74.thread.i:                          ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  %tx_ring85.i = getelementptr i8, ptr %dev, i32 2584
  %100 = ptrtoint ptr %tx_ring85.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %tx_ring85.i, align 8
  br label %alloc_init_skbufs.exit.thread168

if.end7.i.i72.i:                                  ; preds = %if.end.i149
  %101 = extractvalue { i32, i1 } %98, 0
  %call8.i.i71.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %101, i32 noundef 3520) #14
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2584
  %102 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call8.i.i71.i, ptr %tx_ring.i, align 8
  %tobool4.not.i = icmp eq ptr %call8.i.i71.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i72.i.alloc_init_skbufs.exit.thread168_crit_edge, label %if.end6.i

if.end7.i.i72.i.alloc_init_skbufs.exit.thread168_crit_edge: ; preds = %if.end7.i.i72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_init_skbufs.exit.thread168

if.end6.i:                                        ; preds = %if.end7.i.i72.i
  %tx_cons.i = getelementptr i8, ptr %dev, i32 2592
  %103 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %tx_cons.i, align 8
  %tx_prod.i = getelementptr i8, ptr %dev, i32 2588
  %104 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %tx_prod.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp93.not.i = icmp eq i32 %89, 0
  br i1 %cmp93.not.i, label %if.end6.i.alloc_init_skbufs.exit.thread164_crit_edge, label %for.body.lr.ph.i

if.end6.i.alloc_init_skbufs.exit.thread164_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_init_skbufs.exit.thread164

for.body.lr.ph.i:                                 ; preds = %if.end6.i
  %rx_dma_buf_sz.i = getelementptr i8, ptr %dev, i32 2580
  br label %for.body.i152

for.body.i152:                                    ; preds = %for.inc.i.for.body.i152_crit_edge, %for.body.lr.ph.i
  %i.094.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i153, %for.inc.i.for.body.i152_crit_edge ]
  %105 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.tse_buffer, ptr %106, i32 %i.094.i
  %107 = ptrtoint ptr %rx_dma_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_dma_buf_sz.i, align 4
  %call8.i150 = tail call fastcc i32 @tse_init_rx_buffer(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i, i32 noundef %108) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i150)
  %tobool9.not.i151 = icmp eq i32 %call8.i150, 0
  br i1 %tobool9.not.i151, label %for.inc.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body.i152
  %dec95.i = add i32 %i.094.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec95.i)
  %cmp1296.i = icmp sgt i32 %dec95.i, -1
  br i1 %cmp1296.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.alloc_init_skbufs.exit_crit_edge

while.cond.preheader.i.alloc_init_skbufs.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_init_skbufs.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %device.i.i = getelementptr i8, ptr %dev, i32 2308
  br label %while.body.i

for.inc.i:                                        ; preds = %for.body.i152
  %inc.i153 = add nuw i32 %i.094.i, 1
  %exitcond.not.i154 = icmp eq i32 %inc.i153, %89
  br i1 %exitcond.not.i154, label %for.inc.i.alloc_init_skbufs.exit.thread164_crit_edge, label %for.inc.i.for.body.i152_crit_edge

for.inc.i.for.body.i152_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i152

for.inc.i.alloc_init_skbufs.exit.thread164_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_init_skbufs.exit.thread164

alloc_init_skbufs.exit.thread164:                 ; preds = %for.inc.i.alloc_init_skbufs.exit.thread164_crit_edge, %if.end6.i.alloc_init_skbufs.exit.thread164_crit_edge
  %rx_cons.i = getelementptr i8, ptr %dev, i32 2568
  %109 = ptrtoint ptr %rx_cons.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %rx_cons.i, align 8
  %rx_prod.i = getelementptr i8, ptr %dev, i32 2572
  %110 = ptrtoint ptr %rx_prod.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %rx_prod.i, align 4
  %rx_irq = getelementptr i8, ptr %dev, i32 2604
  %111 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %112, ptr noundef nonnull @altera_isr, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end42, label %if.then40

while.body.i:                                     ; preds = %tse_free_rx_buffer.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec97.i = phi i32 [ %dec95.i, %while.body.lr.ph.i ], [ %dec.i, %tse_free_rx_buffer.exit.i.while.body.i_crit_edge ]
  %113 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rx_ring.i, align 4
  %skb1.i.i = getelementptr %struct.tse_buffer, ptr %114, i32 %dec97.i, i32 1
  %115 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %skb1.i.i, align 4
  %dma_addr2.i.i = getelementptr %struct.tse_buffer, ptr %114, i32 %dec97.i, i32 2
  %117 = ptrtoint ptr %dma_addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr2.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %116, null
  br i1 %cmp.not.i.i, label %while.body.i.tse_free_rx_buffer.exit.i_crit_edge, label %if.then.i.i

while.body.i.tse_free_rx_buffer.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_free_rx_buffer.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i.i = icmp eq i32 %118, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device.i.i, align 4
  %len.i.i = getelementptr %struct.tse_buffer, ptr %114, i32 %dec97.i, i32 3
  %121 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %120, i32 noundef %118, i32 noundef %122, i32 noundef 2, i32 noundef 0) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %if.then.i.i.if.end.i.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %116, i32 noundef 1) #10
  %123 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %skb1.i.i, align 4
  %124 = ptrtoint ptr %dma_addr2.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %dma_addr2.i.i, align 4
  br label %tse_free_rx_buffer.exit.i

tse_free_rx_buffer.exit.i:                        ; preds = %if.end.i.i, %while.body.i.tse_free_rx_buffer.exit.i_crit_edge
  %dec.i = add i32 %dec97.i, -1
  %cmp12.i = icmp sgt i32 %dec.i, -1
  br i1 %cmp12.i, label %tse_free_rx_buffer.exit.i.while.body.i_crit_edge, label %tse_free_rx_buffer.exit.i.alloc_init_skbufs.exit_crit_edge

tse_free_rx_buffer.exit.i.alloc_init_skbufs.exit_crit_edge: ; preds = %tse_free_rx_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_init_skbufs.exit

tse_free_rx_buffer.exit.i.while.body.i_crit_edge: ; preds = %tse_free_rx_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

alloc_init_skbufs.exit.thread168:                 ; preds = %if.end7.i.i72.i.alloc_init_skbufs.exit.thread168_crit_edge, %kcalloc.exit74.thread.i
  %125 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx_ring.i, align 4
  tail call void @kfree(ptr noundef %126) #10
  br label %if.then36

alloc_init_skbufs.exit:                           ; preds = %tse_free_rx_buffer.exit.i.alloc_init_skbufs.exit_crit_edge, %while.cond.preheader.i.alloc_init_skbufs.exit_crit_edge
  %127 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tx_ring.i, align 8
  tail call void @kfree(ptr noundef %128) #10
  %129 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rx_ring.i, align 4
  tail call void @kfree(ptr noundef %130) #10
  br label %if.then36

if.then36:                                        ; preds = %alloc_init_skbufs.exit, %alloc_init_skbufs.exit.thread168, %if.end7.i.i.i.if.then36_crit_edge, %kcalloc.exit.thread.i
  %retval.0.i156163 = phi i32 [ %call8.i150, %alloc_init_skbufs.exit ], [ -12, %alloc_init_skbufs.exit.thread168 ], [ -12, %if.end7.i.i.i.if.then36_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #13
  br label %cleanup

if.then40:                                        ; preds = %alloc_init_skbufs.exit.thread164
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %132) #13
  br label %init_error

if.end42:                                         ; preds = %alloc_init_skbufs.exit.thread164
  %tx_irq = getelementptr i8, ptr %dev, i32 2600
  %133 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_irq, align 8
  %call.i157 = tail call i32 @request_threaded_irq(i32 noundef %134, ptr noundef nonnull @altera_isr, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool46.not = icmp eq i32 %call.i157, 0
  br i1 %tobool46.not, label %do.body51, label %if.then47

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_irq, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %136) #13
  %137 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rx_irq, align 4
  %call75 = tail call ptr @free_irq(i32 noundef %138, ptr noundef %dev) #10
  br label %init_error

do.body51:                                        ; preds = %if.end42
  %rxdma_irq_lock = getelementptr i8, ptr %dev, i32 2760
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxdma_irq_lock) #10
  %139 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dmaops, align 8
  %enable_rxirq = getelementptr inbounds %struct.altera_dmaops, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %enable_rxirq to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %enable_rxirq, align 4
  tail call void %142(ptr noundef %add.ptr.i) #10
  %143 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dmaops, align 8
  %enable_txirq = getelementptr inbounds %struct.altera_dmaops, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %enable_txirq to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %enable_txirq, align 4
  tail call void %146(ptr noundef %add.ptr.i) #10
  %147 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp63173.not = icmp eq i32 %148, 0
  br i1 %cmp63173.not, label %do.body51.for.end_crit_edge, label %for.body.lr.ph

do.body51.for.end_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body51
  %rx_ring = getelementptr i8, ptr %dev, i32 2564
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %149 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dmaops, align 8
  %add_rx_desc = getelementptr inbounds %struct.altera_dmaops, ptr %150, i32 0, i32 11
  %151 = ptrtoint ptr %add_rx_desc to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add_rx_desc, align 4
  %153 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rx_ring, align 4
  %arrayidx = getelementptr %struct.tse_buffer, ptr %154, i32 %i.0174
  tail call void %152(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #10
  %inc = add nuw i32 %i.0174, 1
  %155 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_ring_size, align 8
  %cmp63 = icmp ult i32 %inc, %156
  br i1 %cmp63, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body51.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxdma_irq_lock, i32 noundef %call55) #10
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %157 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %phydev, align 16
  %tobool67.not = icmp eq ptr %158, null
  br i1 %tobool67.not, label %for.end.if.end70_crit_edge, label %if.then68

for.end.if.end70_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then68:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_start(ptr noundef nonnull %158) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %for.end.if.end70_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 2312
  tail call void @napi_enable(ptr noundef %napi) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %159 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %160, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %161 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dmaops, align 8
  %start_rxdma = getelementptr inbounds %struct.altera_dmaops, ptr %162, i32 0, i32 15
  %163 = ptrtoint ptr %start_rxdma to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %start_rxdma, align 4
  tail call void %164(ptr noundef %add.ptr.i) #10
  tail call void @_raw_spin_lock(ptr noundef %mac_cfg_lock) #10
  %mac_dev.i = getelementptr i8, ptr %dev, i32 2536
  %165 = ptrtoint ptr %mac_dev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mac_dev.i, align 8
  %167 = ptrtoint ptr %166 to i32
  %add.i.i = add i32 %167, 8
  %168 = inttoptr i32 %add.i.i to ptr
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %170 = or i32 %169, 50331648
  %171 = ptrtoint ptr %mac_dev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mac_dev.i, align 8
  %173 = ptrtoint ptr %172 to i32
  %add.i1.i = add i32 %173, 8
  %174 = inttoptr i32 %add.i1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %170) #10, !srcloc !294
  tail call void @_raw_spin_unlock(ptr noundef %mac_cfg_lock) #10
  br label %cleanup

init_error:                                       ; preds = %if.then47, %if.then40
  %ret.0 = phi i32 [ %call.i, %if.then40 ], [ %call.i157, %if.then47 ]
  tail call fastcc void @free_skbufs(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %init_error, %if.end70, %if.then36, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.end70 ], [ %call1, %if.then ], [ %retval.0.i148, %if.then12 ], [ %retval.0.i156163, %if.then36 ], [ %ret.0, %init_error ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tse_shutdown(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_stop(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %napi = getelementptr i8, ptr %dev, i32 2312
  tail call void @napi_disable(ptr noundef %napi) #10
  %rxdma_irq_lock = getelementptr i8, ptr %dev, i32 2760
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxdma_irq_lock) #10
  %dmaops = getelementptr i8, ptr %dev, i32 2832
  %4 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmaops, align 8
  %disable_rxirq = getelementptr inbounds %struct.altera_dmaops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %disable_rxirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_rxirq, align 4
  tail call void %7(ptr noundef %add.ptr.i) #10
  %8 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmaops, align 8
  %disable_txirq = getelementptr inbounds %struct.altera_dmaops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %disable_txirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_txirq, align 4
  tail call void %11(ptr noundef %add.ptr.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxdma_irq_lock, i32 noundef %call4) #10
  %rx_irq = getelementptr i8, ptr %dev, i32 2604
  %12 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #10
  %tx_irq = getelementptr i8, ptr %dev, i32 2600
  %14 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_irq, align 8
  %call10 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %dev) #10
  %mac_cfg_lock = getelementptr i8, ptr %dev, i32 2672
  tail call void @_raw_spin_lock(ptr noundef %mac_cfg_lock) #10
  %tx_lock = getelementptr i8, ptr %dev, i32 2716
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #10
  %call11 = tail call fastcc i32 @reset_mac(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end.if.end27_crit_edge, label %do.body15

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tse_shutdown.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tse_shutdown, %if.then21)) #10
          to label %if.end27 [label %if.then21], !srcloc !297

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tse_shutdown.__UNIQUE_ID_ddebug371, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %call11) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %do.body15, %if.end.if.end27_crit_edge
  %16 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmaops, align 8
  %reset_dma = getelementptr inbounds %struct.altera_dmaops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %reset_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_dma, align 4
  tail call void %19(ptr noundef %add.ptr.i) #10
  tail call fastcc void @free_skbufs(ptr noundef %dev)
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #10
  tail call void @_raw_spin_unlock(ptr noundef %mac_cfg_lock) #10
  %20 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dmaops, align 8
  %uninit_dma = getelementptr inbounds %struct.altera_dmaops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %uninit_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uninit_dma, align 4
  tail call void %23(ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tse_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2596
  %0 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_size, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %5 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %7, %9
  %tx_lock = getelementptr i8, ptr %dev, i32 2716
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #10
  %tx_cons.i = getelementptr i8, ptr %dev, i32 2592
  %10 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_cons.i, align 8
  %12 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring_size, align 4
  %add.i = add i32 %13, %11
  %tx_prod.i = getelementptr i8, ptr %dev, i32 2588
  %14 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_prod.i, align 4
  %16 = xor i32 %15, -1
  %sub1.i = add i32 %add.i, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv)
  %cmp.not = icmp ugt i32 %sub1.i, %conv
  br i1 %cmp.not, label %if.end10, label %if.then, !prof !296

if.then:                                          ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then8, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__.tse_start_xmit) #13
  br label %out

if.end10:                                         ; preds = %entry
  %tx_ring = getelementptr i8, ptr %dev, i32 2584
  %23 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_ring, align 8
  %device = getelementptr i8, ptr %dev, i32 2308
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %28) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end10
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !296

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %26) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.82, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %34, i32 noundef -1) #10
  br label %if.then15

dma_map_single_attrs.exit:                        ; preds = %if.end10
  tail call void @debug_dma_map_single(ptr noundef %26, ptr noundef %28, i32 noundef %sub.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %28 to i32
  %sub.i84 = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i84, 12
  %add.ptr.i85 = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i = and i32 %36, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %26, ptr noundef %add.ptr.i85, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #10
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then15_crit_edge, label %if.end17

dma_map_single_attrs.exit.if.then15_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %dma_map_single_attrs.exit.if.then15_crit_edge, %dma_map_single_attrs.exit.thread
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.tse_start_xmit) #13
  br label %out

if.end17:                                         ; preds = %dma_map_single_attrs.exit
  %rem = urem i32 %15, %1
  %arrayidx = getelementptr %struct.tse_buffer, ptr %24, i32 %rem
  %skb18 = getelementptr %struct.tse_buffer, ptr %24, i32 %rem, i32 1
  %41 = ptrtoint ptr %skb18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %skb, ptr %skb18, align 4
  %dma_addr19 = getelementptr %struct.tse_buffer, ptr %24, i32 %rem, i32 2
  %42 = ptrtoint ptr %dma_addr19 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call41.i, ptr %dma_addr19, align 4
  %len = getelementptr %struct.tse_buffer, ptr %24, i32 %rem, i32 3
  %43 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i, ptr %len, align 4
  %dmaops = getelementptr i8, ptr %dev, i32 2832
  %44 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dmaops, align 8
  %tx_buffer = getelementptr inbounds %struct.altera_dmaops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_buffer, align 4
  %call20 = tail call i32 %47(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #10
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #10
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tx_flags.i, align 1
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.end17.skb_tx_timestamp.exit_crit_edge, label %if.then.i87

if.end17.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit

if.then.i87:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #10
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i87, %if.end17.skb_tx_timestamp.exit_crit_edge
  %53 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_prod.i, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr %tx_prod.i, align 4
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %57 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_bytes, align 4
  %add23 = add i32 %58, %56
  store i32 %add23, ptr %tx_bytes, align 4
  %59 = ptrtoint ptr %tx_cons.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_cons.i, align 8
  %61 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_ring_size, align 4
  %add.i90 = sub i32 -2, %54
  %63 = add i32 %add.i90, %60
  %sub1.i92 = add i32 %63, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i92)
  %cmp25 = icmp ult i32 %sub1.i92, 3
  br i1 %cmp25, label %if.then33, label %skb_tx_timestamp.exit.out_crit_edge, !prof !295

skb_tx_timestamp.exit.out_crit_edge:              ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then33:                                        ; preds = %skb_tx_timestamp.exit
  %msg_enable = getelementptr i8, ptr %dev, i32 2828
  %64 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable, align 4
  %and = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.then33.if.end50_crit_edge, label %do.body36

if.then33.if.end50_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tse_start_xmit.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tse_start_xmit, %if.then45)) #10
          to label %if.end50 [label %if.then45], !srcloc !297

if.then45:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tse_start_xmit.__UNIQUE_ID_ddebug362, ptr noundef %67, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.tse_start_xmit) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %do.body36, %if.then33.if.end50_crit_edge
  %_tx.i.i93 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %68 = ptrtoint ptr %_tx.i.i93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i93, align 128
  %state.i.i94 = getelementptr inbounds %struct.netdev_queue, ptr %69, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i94) #10
  br label %out

out:                                              ; preds = %if.end50, %skb_tx_timestamp.exit.out_crit_edge, %if.then15, %if.then8, %if.then.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.end50 ], [ 0, %skb_tx_timestamp.exit.out_crit_edge ], [ 16, %if.then8 ], [ 16, %if.then.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tse_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  tail call void @netdev_update_features(ptr noundef %dev) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_mac(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_dev = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_dev, align 8
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8
  %3 = inttoptr i32 %add.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %5 = and i32 %4, -52428929
  %6 = or i32 %5, 2097280
  %7 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_dev, align 8
  %9 = ptrtoint ptr %8 to i32
  %add.i21 = add i32 %9, 8
  %10 = inttoptr i32 %add.i21 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #10, !srcloc !294
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %inc24 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %11 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac_dev, align 8
  %call3 = tail call i32 @tse_bit_is_clear(ptr noundef %12, i32 noundef 8, i32 noundef 8192) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  %inc = add nuw nsw i32 %inc24, 1
  %exitcond.not = icmp eq i32 %inc, 10001
  br i1 %exitcond.not, label %if.end.if.then5_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %inc24)
  %cmp4 = icmp ugt i32 %inc24, 9999
  br i1 %cmp4, label %while.end.if.then5_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.end.if.then5_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %while.end.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %14 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_dev, align 8
  %16 = ptrtoint ptr %15 to i32
  %add.i22 = add i32 %16, 8
  %17 = inttoptr i32 %add.i22 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %19 = and i32 %18, -2097153
  %20 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_dev, align 8
  %22 = ptrtoint ptr %21 to i32
  %add.i23 = add i32 %22, 8
  %23 = inttoptr i32 %add.i23 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #10, !srcloc !294
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then5 ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_mac(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_fifo_depth = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %rx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_fifo_depth, align 4
  %sub = add i32 %1, -16
  %mac_dev = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_dev, align 8
  %4 = ptrtoint ptr %3 to i32
  %add.i = add i32 %4, 28
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %sub) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #10, !srcloc !294
  %7 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_dev, align 8
  %9 = ptrtoint ptr %8 to i32
  %add.i1 = add i32 %9, 32
  %10 = inttoptr i32 %add.i1 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !294
  %11 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac_dev, align 8
  %13 = ptrtoint ptr %12 to i32
  %add.i2 = add i32 %13, 44
  %14 = inttoptr i32 %add.i2 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 134217728) #10, !srcloc !294
  %15 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_dev, align 8
  %17 = ptrtoint ptr %16 to i32
  %add.i3 = add i32 %17, 48
  %18 = inttoptr i32 %add.i3 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 134217728) #10, !srcloc !294
  %tx_fifo_depth = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 21
  %19 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_fifo_depth, align 8
  %sub4 = add i32 %20, -16
  %21 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_dev, align 8
  %23 = ptrtoint ptr %22 to i32
  %add.i4 = add i32 %23, 36
  %24 = inttoptr i32 %add.i4 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %sub4) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %25) #10, !srcloc !294
  %26 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac_dev, align 8
  %28 = ptrtoint ptr %27 to i32
  %add.i5 = add i32 %28, 40
  %29 = inttoptr i32 %add.i5 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #10, !srcloc !294
  %30 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac_dev, align 8
  %32 = ptrtoint ptr %31 to i32
  %add.i6 = add i32 %32, 52
  %33 = inttoptr i32 %add.i6 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 134217728) #10, !srcloc !294
  %34 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac_dev, align 8
  %36 = ptrtoint ptr %35 to i32
  %add.i7 = add i32 %36, 56
  %37 = inttoptr i32 %add.i7 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 50331648) #10, !srcloc !294
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %40 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr, align 64
  %arrayidx.i = getelementptr i8, ptr %41, i32 3
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %43 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %41, i32 2
  %44 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %45 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %41, i32 1
  %46 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %47 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %41, align 1
  %conv9.i = zext i8 %49 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %arrayidx11.i = getelementptr i8, ptr %41, i32 5
  %50 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %51 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr i8, ptr %41, i32 4
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %53 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %54 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mac_dev, align 8
  %56 = ptrtoint ptr %55 to i32
  %add.i.i = add i32 %56, 12
  %57 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %58) #10, !srcloc !294
  %59 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mac_dev, align 8
  %61 = ptrtoint ptr %60 to i32
  %add.i24.i = add i32 %61, 16
  %62 = inttoptr i32 %add.i24.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %63 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %63) #10, !srcloc !294
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 20
  %66 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mtu, align 4
  %add10 = add i32 %67, 18
  %68 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mac_dev, align 8
  %70 = ptrtoint ptr %69 to i32
  %add.i8 = add i32 %70, 20
  %71 = inttoptr i32 %add.i8 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %72 = tail call i32 @llvm.bswap.i32(i32 %add10) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %72) #10, !srcloc !294
  %73 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mac_dev, align 8
  %75 = ptrtoint ptr %74 to i32
  %add.i9 = add i32 %75, 92
  %76 = inttoptr i32 %add.i9 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 201326592) #10, !srcloc !294
  %77 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mac_dev, align 8
  tail call void @tse_set_bit(ptr noundef %78, i32 noundef 236, i32 noundef 33554432) #10
  %79 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mac_dev, align 8
  tail call void @tse_clear_bit(ptr noundef %80, i32 noundef 232, i32 noundef 393216) #10
  %81 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mac_dev, align 8
  %83 = ptrtoint ptr %82 to i32
  %add.i10 = add i32 %83, 8
  %84 = inttoptr i32 %add.i10 to ptr
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #10, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %86 = and i32 %85, -1795457031
  %87 = or i32 %86, 32772
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mac_dev, align 8
  %91 = ptrtoint ptr %90 to i32
  %add.i11 = add i32 %91, 8
  %92 = inttoptr i32 %add.i11 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %87) #10, !srcloc !294
  %93 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mac_dev, align 8
  %95 = ptrtoint ptr %94 to i32
  %add.i12 = add i32 %95, 24
  %96 = inttoptr i32 %add.i12 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 -65536) #10, !srcloc !294
  %msg_enable = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 44
  %97 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_enable, align 4
  %and25 = and i32 %98, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %do.body

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_mac.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_mac, %if.then30)) #10
          to label %if.end31 [label %if.then30], !srcloc !297

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %99 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_mac.__UNIQUE_ID_ddebug369, ptr noundef %100, ptr noundef nonnull @.str.79, i32 noundef %88) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.body, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !295

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %rxdma_irq_lock = getelementptr i8, ptr %dev_id, i32 2760
  tail call void @_raw_spin_lock(ptr noundef %rxdma_irq_lock) #10
  %dmaops = getelementptr i8, ptr %dev_id, i32 2832
  %0 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmaops, align 8
  %clear_rxirq = getelementptr inbounds %struct.altera_dmaops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clear_rxirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clear_rxirq, align 4
  tail call void %3(ptr noundef %add.ptr.i) #10
  %4 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmaops, align 8
  %clear_txirq = getelementptr inbounds %struct.altera_dmaops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %clear_txirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clear_txirq, align 4
  tail call void %7(ptr noundef %add.ptr.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %rxdma_irq_lock) #10
  %napi = getelementptr i8, ptr %dev_id, i32 2312
  %call7 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call7, label %if.then14, label %if.end.cleanup_crit_edge, !prof !296

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %rxdma_irq_lock) #10
  %8 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmaops, align 8
  %disable_rxirq = getelementptr inbounds %struct.altera_dmaops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %disable_rxirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_rxirq, align 4
  tail call void %11(ptr noundef %add.ptr.i) #10
  %12 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmaops, align 8
  %disable_txirq = getelementptr inbounds %struct.altera_dmaops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %disable_txirq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_txirq, align 4
  tail call void %15(ptr noundef %add.ptr.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %rxdma_irq_lock) #10
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then14 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_skbufs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2576
  %0 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_size, align 8
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2596
  %2 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.not = icmp eq i32 %1, 0
  br i1 %cmp22.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rx_ring = getelementptr i8, ptr %dev, i32 2564
  %device.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body

for.cond1.preheader:                              ; preds = %tse_free_rx_buffer.exit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp226.not = icmp eq i32 %3, 0
  br i1 %cmp226.not, label %for.cond1.preheader.for.end7_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.end7_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end7

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %tx_ring = getelementptr i8, ptr %dev, i32 2584
  %device4.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body3

for.body:                                         ; preds = %tse_free_rx_buffer.exit.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tse_free_rx_buffer.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %skb1.i = getelementptr %struct.tse_buffer, ptr %5, i32 %i.023, i32 1
  %6 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb1.i, align 4
  %dma_addr2.i = getelementptr %struct.tse_buffer, ptr %5, i32 %i.023, i32 2
  %8 = ptrtoint ptr %dma_addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr2.i, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %for.body.tse_free_rx_buffer.exit_crit_edge, label %if.then.i

for.body.tse_free_rx_buffer.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_free_rx_buffer.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 4
  %len.i = getelementptr %struct.tse_buffer, ptr %5, i32 %i.023, i32 3
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %9, i32 noundef %13, i32 noundef 2, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #10
  %14 = ptrtoint ptr %skb1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %skb1.i, align 4
  %15 = ptrtoint ptr %dma_addr2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dma_addr2.i, align 4
  br label %tse_free_rx_buffer.exit

tse_free_rx_buffer.exit:                          ; preds = %if.end.i, %for.body.tse_free_rx_buffer.exit_crit_edge
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %tse_free_rx_buffer.exit.for.cond1.preheader_crit_edge, label %tse_free_rx_buffer.exit.for.body_crit_edge

tse_free_rx_buffer.exit.for.body_crit_edge:       ; preds = %tse_free_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

tse_free_rx_buffer.exit.for.cond1.preheader_crit_edge: ; preds = %tse_free_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.body3:                                        ; preds = %tse_free_tx_buffer.exit.for.body3_crit_edge, %for.body3.lr.ph
  %i.127 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc6, %tse_free_tx_buffer.exit.for.body3_crit_edge ]
  %16 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring, align 8
  %dma_addr.i = getelementptr %struct.tse_buffer, ptr %17, i32 %i.127, i32 2
  %18 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i20 = icmp eq i32 %19, 0
  br i1 %tobool.not.i20, label %for.body3.if.end8.i_crit_edge, label %if.then.i21

for.body3.if.end8.i_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i21:                                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device4.i, align 4
  %len6.i = getelementptr %struct.tse_buffer, ptr %17, i32 %i.127, i32 3
  %22 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len6.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %19, i32 noundef %23, i32 noundef 1, i32 noundef 0) #10
  %24 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dma_addr.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i21, %for.body3.if.end8.i_crit_edge
  %skb.i = getelementptr %struct.tse_buffer, ptr %17, i32 %i.127, i32 1
  %25 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb.i, align 4
  %tobool9.not.i = icmp eq ptr %26, null
  br i1 %tobool9.not.i, label %if.end8.i.tse_free_tx_buffer.exit_crit_edge, label %if.then10.i

if.end8.i.tse_free_tx_buffer.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_free_tx_buffer.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %26, i32 noundef 1) #10
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %skb.i, align 4
  br label %tse_free_tx_buffer.exit

tse_free_tx_buffer.exit:                          ; preds = %if.then10.i, %if.end8.i.tse_free_tx_buffer.exit_crit_edge
  %inc6 = add nuw i32 %i.127, 1
  %exitcond28.not = icmp eq i32 %inc6, %3
  br i1 %exitcond28.not, label %tse_free_tx_buffer.exit.for.end7_crit_edge, label %tse_free_tx_buffer.exit.for.body3_crit_edge

tse_free_tx_buffer.exit.for.body3_crit_edge:      ; preds = %tse_free_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

tse_free_tx_buffer.exit.for.end7_crit_edge:       ; preds = %tse_free_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end7

for.end7:                                         ; preds = %tse_free_tx_buffer.exit.for.end7_crit_edge, %for.cond1.preheader.for.end7_crit_edge
  %tx_ring8 = getelementptr i8, ptr %dev, i32 2584
  %28 = ptrtoint ptr %tx_ring8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring8, align 8
  tail call void @kfree(ptr noundef %29) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sgmii_pcs_scratch_test(ptr nocapture noundef readonly %priv, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %value to i32
  %mac_dev.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %mac_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_dev.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %add.i.i = add i32 %2, 576
  %3 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #10, !srcloc !294
  %5 = ptrtoint ptr %mac_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_dev.i, align 8
  %7 = ptrtoint ptr %6 to i32
  %add.i.i6 = add i32 %7, 576
  %8 = inttoptr i32 %add.i.i6 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !288
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %conv.i7 = trunc i32 %10 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i7, i16 %value)
  %cmp = icmp eq i16 %conv.i7, %value
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tse_bit_is_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tse_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tse_clear_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tse_init_rx_buffer(ptr nocapture noundef readonly %priv, ptr nocapture noundef %rxbuffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.i.i = add i32 %len, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %netdev_alloc_skb_ip_align.exit.thread, label %if.end

netdev_alloc_skb_ip_align.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %skb27 = getelementptr inbounds %struct.tse_buffer, ptr %rxbuffer, i32 0, i32 1
  %2 = ptrtoint ptr %skb27 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %skb27, align 4
  br label %return

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %skb = getelementptr inbounds %struct.tse_buffer, ptr %rxbuffer, i32 0, i32 1
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %skb, align 4
  %device = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = load ptr, ptr %data.i.i.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !296

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i26 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i26, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.82, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %10, i32 noundef %len) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %10 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.tse_buffer, ptr %rxbuffer, i32 0, i32 2
  %17 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.tse_init_rx_buffer) #13
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %23, i32 noundef 1) #10
  br label %return

if.end11:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 4
  %and = and i32 %25, -4
  store i32 %and, ptr %dma_addr, align 4
  %len13 = getelementptr inbounds %struct.tse_buffer, ptr %rxbuffer, i32 0, i32 3
  %26 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %len, ptr %len13, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then8, %netdev_alloc_skb_ip_align.exit.thread
  %retval.0 = phi i32 [ -22, %if.then8 ], [ 0, %if.end11 ], [ -12, %netdev_alloc_skb_ip_align.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tse_tx_complete(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring_size = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_size, align 4
  %tx_lock = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #10
  %dmaops = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 45
  %2 = ptrtoint ptr %dmaops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmaops, align 8
  %tx_completions = getelementptr inbounds %struct.altera_dmaops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %tx_completions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_completions, align 4
  %call = tail call i32 %5(ptr noundef %priv) #10
  %tx_cons = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not18 = icmp eq i32 %call, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %tx_prod = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 16
  %tx_ring = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 15
  %msg_enable = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 44
  %device4.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %tse_free_tx_buffer.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %ready.019 = phi i32 [ %call, %land.rhs.lr.ph ], [ %dec, %tse_free_tx_buffer.exit.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %tx_cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_cons, align 8
  %8 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_prod, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %rem = urem i32 %7, %1
  %10 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ring, align 8
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %while.body.if.end14_crit_edge, label %do.body4

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.body4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tse_tx_complete.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tse_tx_complete, %if.then9)) #10
          to label %if.end14 [label %if.then9], !srcloc !297

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %16 = ptrtoint ptr %tx_prod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_prod, align 4
  %18 = ptrtoint ptr %tx_cons to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_cons, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tse_tx_complete.__UNIQUE_ID_ddebug359, ptr noundef %15, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %17, i32 noundef %19) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %do.body4, %while.body.if.end14_crit_edge
  %skb = getelementptr %struct.tse_buffer, ptr %11, i32 %rem, i32 1
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.end14.if.end24_crit_edge, label %if.then22, !prof !295

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 1
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end14.if.end24_crit_edge
  %dma_addr.i = getelementptr %struct.tse_buffer, ptr %11, i32 %rem, i32 2
  %26 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end24.if.end8.i_crit_edge, label %if.then.i

if.end24.if.end8.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device4.i, align 4
  %len6.i = getelementptr %struct.tse_buffer, ptr %11, i32 %rem, i32 3
  %30 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len6.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %27, i32 noundef %31, i32 noundef 1, i32 noundef 0) #10
  %32 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dma_addr.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i, %if.end24.if.end8.i_crit_edge
  %33 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb, align 4
  %tobool9.not.i = icmp eq ptr %34, null
  br i1 %tobool9.not.i, label %if.end8.i.tse_free_tx_buffer.exit_crit_edge, label %if.then10.i

if.end8.i.tse_free_tx_buffer.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tse_free_tx_buffer.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %34, i32 noundef 1) #10
  %35 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %skb, align 4
  br label %tse_free_tx_buffer.exit

tse_free_tx_buffer.exit:                          ; preds = %if.then10.i, %if.end8.i.tse_free_tx_buffer.exit_crit_edge
  %36 = ptrtoint ptr %tx_cons to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_cons, align 8
  %inc26 = add i32 %37, 1
  store i32 %inc26, ptr %tx_cons, align 8
  %dec = add i32 %ready.019, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %tse_free_tx_buffer.exit.while.end_crit_edge, label %tse_free_tx_buffer.exit.land.rhs_crit_edge

tse_free_tx_buffer.exit.land.rhs_crit_edge:       ; preds = %tse_free_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

tse_free_tx_buffer.exit.while.end_crit_edge:      ; preds = %tse_free_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %tse_free_tx_buffer.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %while.end.if.end76_crit_edge, label %land.rhs30

while.end.if.end76_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.rhs30:                                       ; preds = %while.end
  %44 = ptrtoint ptr %tx_cons to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_cons, align 8
  %46 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_ring_size, align 4
  %add.i = add i32 %47, %45
  %tx_prod.i = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 16
  %48 = ptrtoint ptr %tx_prod.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_prod.i, align 4
  %50 = xor i32 %49, -1
  %sub1.i = add i32 %add.i, %50
  %div2 = lshr i32 %47, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %div2)
  %cmp33 = icmp ugt i32 %sub1.i, %div2
  br i1 %cmp33, label %if.then41, label %land.rhs30.if.end76_crit_edge, !prof !295

land.rhs30.if.end76_crit_edge:                    ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then41:                                        ; preds = %land.rhs30
  %51 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i8 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i8)
  %tobool.i.i9.not = icmp eq i32 %and1.i.i.i8, 0
  br i1 %tobool.i.i9.not, label %if.then41.if.end76_crit_edge, label %if.then48

if.then41.if.end76_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then48:                                        ; preds = %if.then41
  %msg_enable49 = getelementptr inbounds %struct.altera_tse_private, ptr %priv, i32 0, i32 44
  %53 = ptrtoint ptr %msg_enable49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable49, align 4
  %and50 = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then48.if.end73_crit_edge, label %do.body54

if.then48.if.end73_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tse_tx_complete.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tse_tx_complete, %if.then66)) #10
          to label %if.end73 [label %if.then66], !srcloc !297

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tse_tx_complete.__UNIQUE_ID_ddebug360, ptr noundef %56, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %do.body54, %if.then48.if.end73_crit_edge
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 8
  %_tx.i.i15 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 103
  %59 = ptrtoint ptr %_tx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %_tx.i.i15, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %60) #10
  br label %if.end76

if.end76:                                         ; preds = %if.end73, %if.then41.if.end76_crit_edge, %land.rhs30.if.end76_crit_edge, %while.end.if.end76_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_tse_adjust_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %mac_cfg_lock = getelementptr i8, ptr %dev, i32 2672
  tail call void @_raw_spin_lock(ptr noundef %mac_cfg_lock) #10
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else46, label %if.then

if.then:                                          ; preds = %entry
  %mac_dev = getelementptr i8, ptr %dev, i32 2536
  %4 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_dev, align 8
  %command_config = getelementptr inbounds %struct.altera_tse_mac, ptr %5, i32 0, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #10, !srcloc !288
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex, align 4
  %oldduplex = getelementptr i8, ptr %dev, i32 2820
  %10 = ptrtoint ptr %oldduplex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oldduplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.then.if.end20_crit_edge, label %if.then3

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  %and = and i32 %7, -1025
  %masksel = select i1 %tobool5.not, i32 1024, i32 0
  %cfg_reg.0 = or i32 %masksel, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @altera_tse_adjust_link.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@altera_tse_adjust_link, %if.then12)) #10
          to label %do.end17 [label %if.then12], !srcloc !297

if.then12:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @altera_tse_adjust_link.__UNIQUE_ID_ddebug363, ptr noundef %13, ptr noundef nonnull @.str.109, ptr noundef %dev, i32 noundef %15) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %if.then3
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %duplex, align 4
  %18 = ptrtoint ptr %oldduplex to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %oldduplex, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.then.if.end20_crit_edge
  %new_state.0 = phi i32 [ 1, %do.end17 ], [ 0, %if.then.if.end20_crit_edge ]
  %cfg_reg.1 = phi i32 [ %cfg_reg.0, %do.end17 ], [ %7, %if.then.if.end20_crit_edge ]
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed, align 8
  %oldspeed = getelementptr i8, ptr %dev, i32 2816
  %21 = ptrtoint ptr %oldspeed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oldspeed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp21.not = icmp eq i32 %20, %22
  br i1 %cmp21.not, label %if.end20.if.end39_crit_edge, label %if.then22

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then22:                                        ; preds = %if.end20
  %23 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %20, label %sw.default [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb26
    i32 10, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %or24 = and i32 %cfg_reg.1, -33554441
  %and25 = or i32 %or24, 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %and28 = and i32 %cfg_reg.1, -33554441
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %and30 = and i32 %cfg_reg.1, -33554441
  %or31 = or i32 %and30, 33554432
  br label %sw.epilog

sw.default:                                       ; preds = %if.then22
  %msg_enable = getelementptr i8, ptr %dev, i32 2828
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and32 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.default.sw.epilog_crit_edge, label %if.then34

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then34:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.110, i32 noundef %20) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then34, %sw.default.sw.epilog_crit_edge, %sw.bb29, %sw.bb26, %sw.bb
  %cfg_reg.2 = phi i32 [ %cfg_reg.1, %if.then34 ], [ %cfg_reg.1, %sw.default.sw.epilog_crit_edge ], [ %or31, %sw.bb29 ], [ %and28, %sw.bb26 ], [ %and25, %sw.bb ]
  %26 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed, align 8
  %28 = ptrtoint ptr %oldspeed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %oldspeed, align 8
  br label %if.end39

if.end39:                                         ; preds = %sw.epilog, %if.end20.if.end39_crit_edge
  %new_state.1 = phi i32 [ 1, %sw.epilog ], [ %new_state.0, %if.end20.if.end39_crit_edge ]
  %cfg_reg.3 = phi i32 [ %cfg_reg.2, %sw.epilog ], [ %cfg_reg.1, %if.end20.if.end39_crit_edge ]
  %29 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac_dev, align 8
  %command_config41 = getelementptr inbounds %struct.altera_tse_mac, ptr %30, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %cfg_reg.3) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config41, i32 %31) #10, !srcloc !294
  %oldlink = getelementptr i8, ptr %dev, i32 2824
  %32 = ptrtoint ptr %oldlink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oldlink, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool42.not = icmp eq i32 %33, 0
  br i1 %tobool42.not, label %if.then43, label %if.end54

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %oldlink to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %oldlink, align 8
  br label %land.lhs.true

if.else46:                                        ; preds = %entry
  %oldlink47 = getelementptr i8, ptr %dev, i32 2824
  %35 = ptrtoint ptr %oldlink47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oldlink47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool48.not = icmp eq i32 %36, 0
  br i1 %tobool48.not, label %if.else46.if.end60_crit_edge, label %if.then49

if.else46.if.end60_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then49:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %oldlink47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %oldlink47, align 8
  %oldspeed51 = getelementptr i8, ptr %dev, i32 2816
  %38 = ptrtoint ptr %oldspeed51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %oldspeed51, align 8
  %oldduplex52 = getelementptr i8, ptr %dev, i32 2820
  %39 = ptrtoint ptr %oldduplex52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %oldduplex52, align 4
  br label %land.lhs.true

if.end54:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state.1)
  %tobool55.not = icmp eq i32 %new_state.1, 0
  br i1 %tobool55.not, label %if.end54.if.end60_crit_edge, label %if.end54.land.lhs.true_crit_edge

if.end54.land.lhs.true_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end54.land.lhs.true_crit_edge, %if.then49, %if.then43
  %msg_enable56 = getelementptr i8, ptr %dev, i32 2828
  %40 = ptrtoint ptr %msg_enable56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable56, align 4
  %and57 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true.if.end60_crit_edge, label %if.then59

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_print_status(ptr noundef %1) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %land.lhs.true.if.end60_crit_edge, %if.end54.if.end60_crit_edge, %if.else46.if.end60_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mac_cfg_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @connect_local_phy(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %phy_id_fmt = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %phy_id_fmt) #10
  %0 = call ptr @memset(ptr %phy_id_fmt, i32 255, i32 64)
  %phy_addr = getelementptr i8, ptr %dev, i32 2804
  %1 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phy_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.not = icmp eq i32 %2, -1
  %mdio17 = getelementptr i8, ptr %dev, i32 2812
  %3 = ptrtoint ptr %mdio17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdio17, align 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 2
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_id_fmt, i32 noundef 64, ptr noundef nonnull @.str.111, ptr noundef %id, i32 noundef %2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @connect_local_phy.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@connect_local_phy, %if.then8)) #10
          to label %do.end11 [label %if.then8], !srcloc !297

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @connect_local_phy.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.113, ptr noundef nonnull %phy_id_fmt) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %if.then
  %phy_iface = getelementptr i8, ptr %dev, i32 2808
  %5 = ptrtoint ptr %phy_iface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_iface, align 8
  %call13 = call ptr @phy_connect(ptr noundef %dev, ptr noundef nonnull %phy_id_fmt, ptr noundef nonnull @altera_tse_adjust_link, i32 noundef %6) #10
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %do.end11.cleanup28_crit_edge

do.end11.cleanup28_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then15:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.114) #13
  br label %cleanup28

if.else:                                          ; preds = %entry
  %call18 = tail call ptr @phy_find_first(ptr noundef %4) #10
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.else
  %phy_iface22 = getelementptr i8, ptr %dev, i32 2808
  %7 = ptrtoint ptr %phy_iface22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_iface22, align 8
  %call23 = tail call i32 @phy_connect_direct(ptr noundef %dev, ptr noundef nonnull %call18, ptr noundef nonnull @altera_tse_adjust_link, i32 noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end21.cleanup28_crit_edge, label %if.then25

if.end21.cleanup28_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.114) #13
  br label %cleanup28

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.115) #13
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup, %if.then25, %if.end21.cleanup28_crit_edge, %if.then15, %do.end11.cleanup28_crit_edge
  %retval.1 = phi ptr [ null, %cleanup ], [ null, %if.then15 ], [ %call13, %do.end11.cleanup28_crit_edge ], [ %call18, %if.end21.cleanup28_crit_edge ], [ null, %if.then25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_id_fmt) #10
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_enable_txirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_enable_rxirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_disable_txirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_disable_rxirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_clear_txirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_clear_rxirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msgdma_tx_buffer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msgdma_tx_completions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_add_rx_desc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msgdma_rx_status(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msgdma_initialize(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_uninitialize(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msgdma_start_rxdma(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_enable_txirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_enable_rxirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_disable_txirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_disable_rxirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_clear_txirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_clear_rxirq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sgdma_tx_buffer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sgdma_tx_completions(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_add_rx_desc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sgdma_rx_status(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sgdma_initialize(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_uninitialize(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgdma_start_rxdma(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !132, !134, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !185, !187, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !203, !205, !207, !208, !210, !212, !213, !214, !216, !217, !218, !220, !221, !223, !225, !227, !229, !231, !233, !235, !237, !238, !239, !241, !242, !244, !246, !247, !249, !251, !253, !254, !256, !257, !258, !260, !262, !264, !265, !266, !268, !270, !272, !274, !276}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype351, !1, !"__UNIQUE_ID_debugtype351", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug352, !4, !"__UNIQUE_ID_debug352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 49, i32 1}
!5 = !{ptr @__param_dma_rx_num, !6, !"__param_dma_rx_num", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 57, i32 1}
!7 = !{ptr @__UNIQUE_ID_dma_rx_numtype353, !6, !"__UNIQUE_ID_dma_rx_numtype353", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_dma_rx_num354, !9, !"__UNIQUE_ID_dma_rx_num354", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 58, i32 1}
!10 = !{ptr @__param_dma_tx_num, !11, !"__param_dma_tx_num", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 62, i32 1}
!12 = !{ptr @__UNIQUE_ID_dma_tx_numtype355, !11, !"__UNIQUE_ID_dma_tx_numtype355", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dma_tx_num356, !14, !"__UNIQUE_ID_dma_tx_num356", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 63, i32 1}
!15 = !{ptr @__initcall__kmod_altera_tse__374_1685_altera_tse_driver_init6, !16, !"__initcall__kmod_altera_tse__374_1685_altera_tse_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1685, i32 1}
!17 = !{ptr @__exitcall_altera_tse_driver_exit, !16, !"__exitcall_altera_tse_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author375, !19, !"__UNIQUE_ID_author375", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1687, i32 1}
!20 = !{ptr @__UNIQUE_ID_description376, !21, !"__UNIQUE_ID_description376", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1688, i32 1}
!22 = !{ptr @__UNIQUE_ID_file377, !23, !"__UNIQUE_ID_file377", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1689, i32 1}
!24 = !{ptr @__UNIQUE_ID_license378, !23, !"__UNIQUE_ID_license378", i1 false, i1 false}
!25 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 47, i32 12}
!28 = !{ptr @__param_str_dma_rx_num, !6, !"__param_str_dma_rx_num", i1 false, i1 false}
!29 = !{ptr @dma_rx_num, !30, !"dma_rx_num", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 56, i32 12}
!31 = !{ptr @__param_str_dma_tx_num, !11, !"__param_str_dma_tx_num", i1 false, i1 false}
!32 = !{ptr @dma_tx_num, !33, !"dma_tx_num", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 61, i32 12}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1680, i32 11}
!36 = !{ptr @altera_tse_driver, !37, !"altera_tse_driver", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1674, i32 31}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1359, i32 3}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @altera_tse_probe._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @altera_tse_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1379, i32 31}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1398, i32 4}
!50 = distinct !{null, !49, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!51 = distinct !{null, !52, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1404, i32 4}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1411, i32 31}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1416, i32 31}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1424, i32 31}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1448, i32 30}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1454, i32 30}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1461, i32 30}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1468, i32 47}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1470, i32 3}
!69 = !{ptr @altera_tse_probe._entry.15, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @altera_tse_probe._entry_ptr.17, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1476, i32 47}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1478, i32 3}
!75 = !{ptr @altera_tse_probe._entry.19, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @altera_tse_probe._entry_ptr.21, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1484, i32 46}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1486, i32 3}
!81 = !{ptr @altera_tse_probe._entry.23, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @altera_tse_probe._entry_ptr.25, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1491, i32 46}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1493, i32 3}
!87 = !{ptr @altera_tse_probe._entry.27, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @altera_tse_probe._entry_ptr.29, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1501, i32 11}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1511, i32 11}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1521, i32 42}
!95 = !{ptr @altera_tse_probe.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1567, i32 2}
!97 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @altera_tse_probe.__key.34, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1568, i32 2}
!100 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @altera_tse_probe.__key.36, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1569, i32 2}
!103 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1574, i32 3}
!106 = !{ptr @altera_tse_probe._entry.38, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @altera_tse_probe._entry_ptr.40, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1583, i32 3}
!110 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @altera_tse_probe._entry.41, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @altera_tse_probe._entry_ptr.44, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1591, i32 20}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1324, i32 3}
!117 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @request_and_map._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @request_and_map._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1331, i32 3}
!122 = !{ptr @request_and_map._entry.48, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @request_and_map._entry_ptr.50, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1338, i32 3}
!126 = !{ptr @request_and_map._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @request_and_map._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 745, i32 50}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 752, i32 19}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 150, i32 43}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 157, i32 3}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @altera_tse_mdio_create.__UNIQUE_ID_ddebug357, !135, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 159, i32 3}
!140 = !{ptr @altera_tse_mdio_create.__UNIQUE_ID_ddebug358, !139, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 165, i32 19}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 172, i32 38}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 179, i32 19}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 185, i32 20}
!149 = !{ptr @instance_count, !150, !"instance_count", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 45, i32 17}
!151 = !{ptr @altera_tse_netdev_ops, !152, !"altera_tse_netdev_ops", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1306, i32 30}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1158, i32 19}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1163, i32 20}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1167, i32 20}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1174, i32 7}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1185, i32 3}
!163 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @tse_open.__UNIQUE_ID_ddebug370, !162, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!165 = distinct !{null, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1190, i32 19}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1201, i32 19}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1210, i32 19}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1219, i32 19}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1108, i32 20}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1112, i32 19}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1135, i32 21}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1142, i32 18}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 973, i32 3}
!183 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @init_mac.__UNIQUE_ID_ddebug369, !182, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 223, i32 25}
!187 = !{ptr @__func__.tse_init_rx_buffer, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 223, i32 52}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!191 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 527, i32 3}
!195 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @altera_isr._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @altera_isr._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1294, i32 3}
!200 = !{ptr @tse_shutdown.__UNIQUE_ID_ddebug371, !199, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!201 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 575, i32 8}
!203 = !{ptr @__func__.tse_start_xmit, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 576, i32 8}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 607, i32 4}
!207 = !{ptr @tse_start_xmit.__UNIQUE_ID_ddebug362, !206, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 998, i32 19}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 507, i32 3}
!212 = !{ptr @.str.90, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @tse_poll.__UNIQUE_ID_ddebug361, !211, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 462, i32 4}
!216 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @tse_tx_complete.__UNIQUE_ID_ddebug359, !215, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 480, i32 5}
!220 = !{ptr @tse_tx_complete.__UNIQUE_ID_ddebug360, !219, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 390, i32 8}
!223 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 405, i32 8}
!225 = !{ptr @__func__.tse_rx, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 406, i32 8}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 418, i32 27}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 420, i32 29}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 785, i32 52}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 792, i32 21}
!235 = !{ptr @.str.100, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 802, i32 4}
!237 = !{ptr @.str.101, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @init_phy.__UNIQUE_ID_ddebug365, !236, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 807, i32 4}
!241 = !{ptr @init_phy.__UNIQUE_ID_ddebug366, !240, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 809, i32 21}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 815, i32 3}
!246 = !{ptr @init_phy.__UNIQUE_ID_ddebug367, !245, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!247 = !{ptr @.str.105, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 822, i32 19}
!249 = !{ptr @.str.106, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 841, i32 19}
!251 = !{ptr @.str.107, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 846, i32 2}
!253 = !{ptr @init_phy.__UNIQUE_ID_ddebug368, !252, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!254 = !{ptr @.str.108, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 644, i32 4}
!256 = !{ptr @.str.109, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @altera_tse_adjust_link.__UNIQUE_ID_ddebug363, !255, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!258 = !{ptr @.str.110, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 668, i32 23}
!260 = !{ptr @.str.111, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 699, i32 45}
!262 = !{ptr @.str.112, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 702, i32 3}
!264 = !{ptr @.str.113, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @connect_local_phy.__UNIQUE_ID_ddebug364, !263, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!266 = !{ptr @.str.114, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 707, i32 20}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 715, i32 20}
!270 = !{ptr @.str.116, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 203, i32 20}
!272 = !{ptr @altera_tse_ids, !273, !"altera_tse_ids", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1666, i32 34}
!274 = !{ptr @altera_dtype_msgdma, !275, !"altera_dtype_msgdma", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1647, i32 35}
!276 = !{ptr @altera_dtype_sgdma, !277, !"altera_dtype_sgdma", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/altera/altera_tse_main.c", i32 1628, i32 35}
!278 = !{i32 1, !"wchar_size", i32 2}
!279 = !{i32 1, !"min_enum_size", i32 4}
!280 = !{i32 8, !"branch-target-enforcement", i32 0}
!281 = !{i32 8, !"sign-return-address", i32 0}
!282 = !{i32 8, !"sign-return-address-all", i32 0}
!283 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!284 = !{i32 7, !"uwtable", i32 1}
!285 = !{i32 7, !"frame-pointer", i32 2}
!286 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!287 = !{!"auto-init"}
!288 = !{i64 6093722}
!289 = !{i64 2153634071}
!290 = !{i64 2148246393}
!291 = !{i64 2148161702, i64 2148161734, i64 2148161763, i64 2148161797, i64 2148161828, i64 2148161851}
!292 = !{i64 2148246622}
!293 = !{i64 2156702961}
!294 = !{i64 6093304}
!295 = !{!"branch_weights", i32 1, i32 2000}
!296 = !{!"branch_weights", i32 2000, i32 1}
!297 = !{i64 2148799254, i64 2148799259, i64 2148799272, i64 2148799316, i64 2148799350, i64 2148799371}
!298 = !{i64 2156701606}
!299 = !{i64 2153635426}
