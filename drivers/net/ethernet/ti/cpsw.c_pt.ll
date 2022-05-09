; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.140 }
%union.anon.140 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpsw_vector = type { ptr, i32 }
%struct.cpsw_slave_data = type { ptr, ptr, [61 x i8], i32, [6 x i8], i16, ptr, i8 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.148, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.171, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.148 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.171 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [72 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [104 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.139, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.139 = type { %struct.atomic_t }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_ss_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.cpsw_host_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.addr_sync_ctx = type { ptr, ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__param_str_debug_level = internal constant [20 x i8] c"ti_cpsw.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.140 { ptr @debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype506 = internal constant [33 x i8] c"ti_cpsw.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level507 = internal constant [59 x i8] c"ti_cpsw.parm=debug_level:cpsw debug level (NETIF_MSG bits)\00", section ".modinfo", align 1
@__param_str_ale_ageout = internal constant [19 x i8] c"ti_cpsw.ale_ageout\00", align 1
@ale_ageout = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_ale_ageout = internal constant %struct.kernel_param { ptr @__param_str_ale_ageout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.140 { ptr @ale_ageout } }, section "__param", align 4
@__UNIQUE_ID_ale_ageouttype508 = internal constant [32 x i8] c"ti_cpsw.parmtype=ale_ageout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ale_ageout509 = internal constant [59 x i8] c"ti_cpsw.parm=ale_ageout:cpsw ale ageout interval (seconds)\00", section ".modinfo", align 1
@__param_str_rx_packet_max = internal constant [22 x i8] c"ti_cpsw.rx_packet_max\00", align 1
@rx_packet_max = internal global { i32, [28 x i8] } { i32 1526, [28 x i8] zeroinitializer }, align 32
@__param_rx_packet_max = internal constant %struct.kernel_param { ptr @__param_str_rx_packet_max, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.140 { ptr @rx_packet_max } }, section "__param", align 4
@__UNIQUE_ID_rx_packet_maxtype510 = internal constant [35 x i8] c"ti_cpsw.parmtype=rx_packet_max:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_packet_max511 = internal constant [63 x i8] c"ti_cpsw.parm=rx_packet_max:maximum receive packet size (bytes)\00", section ".modinfo", align 1
@__param_str_descs_pool_size = internal constant [24 x i8] c"ti_cpsw.descs_pool_size\00", align 1
@descs_pool_size = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_descs_pool_size = internal constant %struct.kernel_param { ptr @__param_str_descs_pool_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.140 { ptr @descs_pool_size } }, section "__param", align 4
@__UNIQUE_ID_descs_pool_sizetype512 = internal constant [37 x i8] c"ti_cpsw.parmtype=descs_pool_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_descs_pool_size513 = internal constant [70 x i8] c"ti_cpsw.parm=descs_pool_size:Number of CPDMA CPPI descriptors in pool\00", section ".modinfo", align 1
@__initcall__kmod_ti_cpsw__533_1810_cpsw_driver_init6 = internal global ptr @cpsw_driver_init, section ".initcall6.init", align 4
@cpsw_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpsw_probe, ptr @cpsw_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpsw_of_mtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpsw_driver_exit = internal global ptr @cpsw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file534 = internal constant [45 x i8] c"ti_cpsw.file=drivers/net/ethernet/ti/ti_cpsw\00", section ".modinfo", align 1
@__UNIQUE_ID_license535 = internal constant [20 x i8] c"ti_cpsw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author536 = internal constant [48 x i8] c"ti_cpsw.author=Cyril Chemparathy <cyril@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author537 = internal constant [51 x i8] c"ti_cpsw.author=Mugunthan V N <mugunthanvnm@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description538 = internal constant [44 x i8] c"ti_cpsw.description=TI CPSW Ethernet driver\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpsw\00", [27 x i8] zeroinitializer }, align 32
@cpsw_of_mtable = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cpsw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@cpsw_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cpsw_slave_index = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@cpsw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1523, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpio request failed, ret %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpsw_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/ethernet/ti/cpsw.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr = internal global ptr @cpsw_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@cpsw_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fck is not found %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.10 = internal global ptr @cpsw_probe._entry.8, section ".printk_index", align 4
@cpsw_soc_devices = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.97, ptr @.str.98, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cpsw_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1605, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error initializing tx dma channel\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.13 = internal global ptr @cpsw_probe._entry.11, section ".printk_index", align 4
@cpsw_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error initializing rx dma channel\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.16 = internal global ptr @cpsw_probe._entry.14, section ".printk_index", align 4
@cpsw_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1622, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error allocating net_device\0A\00", [35 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.19 = internal global ptr @cpsw_probe._entry.17, section ".printk_index", align 4
@cpsw_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1636, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Detected MACID = %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.23 = internal global ptr @cpsw_probe._entry.20, section ".printk_index", align 4
@cpsw_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1639, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Random MACID = %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.26 = internal global ptr @cpsw_probe._entry.24, section ".printk_index", align 4
@cpsw_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cpsw_ndo_open, ptr @cpsw_ndo_stop, ptr @cpsw_ndo_start_xmit, ptr null, ptr null, ptr null, ptr @cpsw_ndo_set_rx_mode, ptr @cpsw_ndo_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @cpsw_ndo_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_vlan_rx_add_vid, ptr @cpsw_ndo_vlan_rx_kill_vid, ptr @cpsw_ndo_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_set_tx_maxrate, ptr null, ptr null, ptr null, ptr @cpsw_ndo_bpf, ptr @cpsw_ndo_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@cpsw_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @cpsw_get_drvinfo, ptr @cpsw_get_regs_len, ptr @cpsw_get_regs, ptr @cpsw_get_wol, ptr @cpsw_set_wol, ptr @cpsw_get_msglevel, ptr @cpsw_set_msglevel, ptr @cpsw_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_coalesce, ptr @cpsw_set_coalesce, ptr @cpsw_get_ringparam, ptr @cpsw_set_ringparam, ptr null, ptr @cpsw_get_pauseparam, ptr @cpsw_set_pauseparam, ptr null, ptr @cpsw_get_strings, ptr null, ptr @cpsw_get_ethtool_stats, ptr @cpsw_ethtool_op_begin, ptr @cpsw_ethtool_op_complete, ptr null, ptr null, ptr @cpsw_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_channels, ptr @cpsw_set_channels, ptr null, ptr null, ptr null, ptr @cpsw_get_ts_info, ptr null, ptr null, ptr @cpsw_get_eee, ptr @cpsw_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_link_ksettings, ptr @cpsw_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@cpsw_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error registering net device\0A\00", [34 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.29 = internal global ptr @cpsw_probe._entry.27, section ".printk_index", align 4
@cpsw_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error probe slave 2 emac interface\0A\00", [60 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.32 = internal global ptr @cpsw_probe._entry.30, section ".printk_index", align 4
@cpsw_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error attaching irq (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.35 = internal global ptr @cpsw_probe._entry.33, section ".printk_index", align 4
@cpsw_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1693, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.37 = internal global ptr @cpsw_probe._entry.36, section ".printk_index", align 4
@cpsw_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 1703, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error attaching misc irq (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.40 = internal global ptr @cpsw_probe._entry.38, section ".printk_index", align 4
@cpsw_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 1713, ptr @.str.43, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"initialized device (regs %pa, irq %d, pool size %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.44 = internal global ptr @cpsw_probe._entry.41, section ".printk_index", align 4
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"slaves\00", [25 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing slaves property in the DT.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpsw_probe_dt\00", [18 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr = internal global ptr @cpsw_probe_dt._entry, section ".printk_index", align 4
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"active_slave\00", [19 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.4, i32 1256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing active_slave property in the DT.\0A\00", [54 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.51 = internal global ptr @cpsw_probe_dt._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpdma_channels\00", [17 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.4, i32 1269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Missing cpdma_channels property in the DT.\0A\00", [52 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.55 = internal global ptr @cpsw_probe_dt._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd_ram_size\00", [20 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.4, i32 1275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Missing bd_ram_size property in the DT.\0A\00", [55 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.59 = internal global ptr @cpsw_probe_dt._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac_control\00", [20 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.47, ptr @.str.4, i32 1281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Missing mac_control property in the DT.\0A\00", [55 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.63 = internal global ptr @cpsw_probe_dt._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dual_emac\00", [22 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.47, ptr @.str.4, i32 1295, ptr @.str.67, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Doesn't have any child node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.68 = internal global ptr @cpsw_probe_dt._entry.65, section ".printk_index", align 4
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phy_id\00", [25 x i8] zeroinitializer }, align 32
@cpsw_probe_dt.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.47, ptr @.str.4, ptr @.str.73, i8 1, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti_cpsw\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"slave[%d] using phy-handle=\22%pOF\22\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.47, ptr @.str.4, i32 1331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register fixed-link phy: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.76 = internal global ptr @cpsw_probe_dt._entry.74, section ".printk_index", align 4
@cpsw_probe_dt._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.47, ptr @.str.4, i32 1341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid slave[%d] phy_id property\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.79 = internal global ptr @cpsw_probe_dt._entry.77, section ".printk_index", align 4
@cpsw_probe_dt._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.47, ptr @.str.4, i32 1349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Missing mdio platform device\0A\00", [34 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.82 = internal global ptr @cpsw_probe_dt._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.47, ptr @.str.4, i32 1359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"No slave[%d] phy_id, phy-handle, or fixed-link property\0A\00", [39 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.86 = internal global ptr @cpsw_probe_dt._entry.84, section ".printk_index", align 4
@cpsw_probe_dt._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.47, ptr @.str.4, i32 1365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Missing or malformed slave[%d] phy-mode property\0A\00", [46 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.89 = internal global ptr @cpsw_probe_dt._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dual_emac_res_vlan\00", [45 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.47, ptr @.str.4, i32 1380, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Missing dual_emac_res_vlan in DT.\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.93 = internal global ptr @cpsw_probe_dt._entry.91, section ".printk_index", align 4
@cpsw_probe_dt._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.47, ptr @.str.4, i32 1383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Using %d as Reserved VLAN for %d slave\0A\00", [56 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.96 = internal global ptr @cpsw_probe_dt._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM33xx\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.0\00", [26 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 770, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set real number of tx queues\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpsw_ndo_open\00", [18 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr = internal global ptr @cpsw_ndo_open._entry, section ".printk_index", align 4
@cpsw_ndo_open._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.4, i32 776, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set real number of rx queues\0A\00", [59 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr.103 = internal global ptr @cpsw_ndo_open._entry.101, section ".printk_index", align 4
@cpsw_ndo_open._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.4, i32 784, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"initializing cpsw version %d.%d (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr.106 = internal global ptr @cpsw_ndo_open._entry.104, section ".printk_index", align 4
@cpsw_ndo_open._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.4, i32 835, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error registering cpts device\0A\00", [33 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr.109 = internal global ptr @cpsw_ndo_open._entry.107, section ".printk_index", align 4
@cpsw_slave_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy \22%pOF\22 not found on slave %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpsw_slave_open\00", [16 x i8] zeroinitializer }, align 32
@cpsw_slave_open._entry_ptr = internal global ptr @cpsw_slave_open._entry, section ".printk_index", align 4
@cpsw_slave_open._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.4, i32 629, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"phy \22%s\22 not found on slave %d, err %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@cpsw_slave_open._entry_ptr.114 = internal global ptr @cpsw_slave_open._entry.112, section ".printk_index", align 4
@_cpsw_adjust_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 501, ptr @.str.67, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_cpsw_adjust_link\00", [46 x i8] zeroinitializer }, align 32
@_cpsw_adjust_link._entry_ptr = internal global ptr @_cpsw_adjust_link._entry, section ".printk_index", align 4
@cpsw_ndo_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.4, i32 874, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shutting down cpsw device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpsw_ndo_stop\00", [18 x i8] zeroinitializer }, align 32
@cpsw_ndo_stop._entry_ptr = internal global ptr @cpsw_ndo_stop._entry, section ".printk_index", align 4
@cpsw_ndo_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.4, i32 909, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"packet pad failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpsw_ndo_start_xmit\00", [44 x i8] zeroinitializer }, align 32
@cpsw_ndo_start_xmit._entry_ptr = internal global ptr @cpsw_ndo_start_xmit._entry, section ".printk_index", align 4
@cpsw_ndo_start_xmit._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.4, i32 928, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"desc submit failed\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_ndo_start_xmit._entry_ptr.123 = internal global ptr @cpsw_ndo_start_xmit._entry.121, section ".printk_index", align 4
@cpsw_set_promiscious._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"promiscuity not disabled as the other interface is still in promiscuity mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpsw_set_promiscious\00", [43 x i8] zeroinitializer }, align 32
@cpsw_set_promiscious._entry_ptr = internal global ptr @cpsw_set_promiscious._entry, section ".printk_index", align 4
@cpsw_set_promiscious.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.125, ptr @.str.4, ptr @.str.126, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"promiscuity enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@cpsw_set_promiscious.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.125, ptr @.str.4, ptr @.str.127, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"promiscuity disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpsw_set_promiscious.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.125, ptr @.str.4, ptr @.str.126, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cpsw_set_promiscious.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.125, ptr @.str.4, ptr @.str.127, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cpsw_ndo_vlan_rx_add_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 1076, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adding vlanid %d to vlan filter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpsw_ndo_vlan_rx_add_vid\00", [39 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_add_vid._entry_ptr = internal global ptr @cpsw_ndo_vlan_rx_add_vid._entry, section ".printk_index", align 4
@cpsw_ndo_vlan_rx_kill_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.4, i32 1108, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"removing vlanid %d from vlan filter\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpsw_ndo_vlan_rx_kill_vid\00", [38 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_kill_vid._entry_ptr = internal global ptr @cpsw_ndo_vlan_rx_kill_vid._entry, section ".printk_index", align 4
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@cpsw_probe_dual_emac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.4, i32 1443, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cpsw: error allocating net_device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpsw_probe_dual_emac\00", [43 x i8] zeroinitializer }, align 32
@cpsw_probe_dual_emac._entry_ptr = internal global ptr @cpsw_probe_dual_emac._entry, section ".printk_index", align 4
@cpsw_probe_dual_emac._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.4, i32 1457, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cpsw: Detected MACID = %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@cpsw_probe_dual_emac._entry_ptr.137 = internal global ptr @cpsw_probe_dual_emac._entry.135, section ".printk_index", align 4
@cpsw_probe_dual_emac._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str.4, i32 1461, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpsw: Random MACID = %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@cpsw_probe_dual_emac._entry_ptr.140 = internal global ptr @cpsw_probe_dual_emac._entry.138, section ".printk_index", align 4
@cpsw_probe_dual_emac._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.134, ptr @.str.4, i32 1477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cpsw: error registering net device\0A\00", [60 x i8] zeroinitializer }, align 32
@cpsw_probe_dual_emac._entry_ptr.143 = internal global ptr @cpsw_probe_dual_emac._entry.141, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 32, i64 1638666, i64 1638668, i64 1638671, i64 1638674]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 50, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [11 x i8] c"ale_ageout\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 54, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"rx_packet_max\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 58, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"descs_pool_size\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 62, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"cpsw_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1800, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1802, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"cpsw_of_mtable\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1482, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"cpsw_pm_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1798, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1520, i32 44 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1523, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1527, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1530, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"cpsw_soc_devices\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1491, i32 42 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1605, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1612, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1622, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1636, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1639, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [16 x i8] c"cpsw_netdev_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1157, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"cpsw_ethtool_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1207, i32 33 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1662, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1670, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1685, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1693, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1703, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1711, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1249, i32 33 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1250, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1255, i32 33 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1256, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1268, i32 33 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1269, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1274, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1275, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1280, i32 33 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1281, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1286, i32 34 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1295, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1303, i32 36 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1318, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1319, i32 38 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1321, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1331, i32 6 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1341, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1349, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1354, i32 6 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1357, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1364, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1378, i32 41 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1380, i32 5 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1382, i32 5 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1492, i32 14 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1492, i32 36 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 770, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 776, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 782, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 835, i32 5 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 617, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 626, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 500, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 874, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 909, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 928, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 113, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 120, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 124, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1076, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1108, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1184, i32 25 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1443, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1456, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1460, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.543 = private constant [34 x i8] c"../drivers/net/ethernet/ti/cpsw.c\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1477, i32 3 }
@llvm.compiler.used = appending global [196 x ptr] [ptr @__UNIQUE_ID_ale_ageout509, ptr @__UNIQUE_ID_ale_ageouttype508, ptr @__UNIQUE_ID_author536, ptr @__UNIQUE_ID_author537, ptr @__UNIQUE_ID_debug_level507, ptr @__UNIQUE_ID_debug_leveltype506, ptr @__UNIQUE_ID_description538, ptr @__UNIQUE_ID_descs_pool_size513, ptr @__UNIQUE_ID_descs_pool_sizetype512, ptr @__UNIQUE_ID_file534, ptr @__UNIQUE_ID_license535, ptr @__UNIQUE_ID_rx_packet_max511, ptr @__UNIQUE_ID_rx_packet_maxtype510, ptr @__exitcall_cpsw_driver_exit, ptr @__initcall__kmod_ti_cpsw__533_1810_cpsw_driver_init6, ptr @__param_ale_ageout, ptr @__param_debug_level, ptr @__param_descs_pool_size, ptr @__param_rx_packet_max, ptr @_cpsw_adjust_link._entry, ptr @_cpsw_adjust_link._entry_ptr, ptr @cpsw_driver_exit, ptr @cpsw_ndo_open._entry, ptr @cpsw_ndo_open._entry.101, ptr @cpsw_ndo_open._entry.104, ptr @cpsw_ndo_open._entry.107, ptr @cpsw_ndo_open._entry_ptr, ptr @cpsw_ndo_open._entry_ptr.103, ptr @cpsw_ndo_open._entry_ptr.106, ptr @cpsw_ndo_open._entry_ptr.109, ptr @cpsw_ndo_start_xmit._entry, ptr @cpsw_ndo_start_xmit._entry.121, ptr @cpsw_ndo_start_xmit._entry_ptr, ptr @cpsw_ndo_start_xmit._entry_ptr.123, ptr @cpsw_ndo_stop._entry, ptr @cpsw_ndo_stop._entry_ptr, ptr @cpsw_ndo_vlan_rx_add_vid._entry, ptr @cpsw_ndo_vlan_rx_add_vid._entry_ptr, ptr @cpsw_ndo_vlan_rx_kill_vid._entry, ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr, ptr @cpsw_probe._entry, ptr @cpsw_probe._entry.11, ptr @cpsw_probe._entry.14, ptr @cpsw_probe._entry.17, ptr @cpsw_probe._entry.20, ptr @cpsw_probe._entry.24, ptr @cpsw_probe._entry.27, ptr @cpsw_probe._entry.30, ptr @cpsw_probe._entry.33, ptr @cpsw_probe._entry.36, ptr @cpsw_probe._entry.38, ptr @cpsw_probe._entry.41, ptr @cpsw_probe._entry.8, ptr @cpsw_probe._entry_ptr, ptr @cpsw_probe._entry_ptr.10, ptr @cpsw_probe._entry_ptr.13, ptr @cpsw_probe._entry_ptr.16, ptr @cpsw_probe._entry_ptr.19, ptr @cpsw_probe._entry_ptr.23, ptr @cpsw_probe._entry_ptr.26, ptr @cpsw_probe._entry_ptr.29, ptr @cpsw_probe._entry_ptr.32, ptr @cpsw_probe._entry_ptr.35, ptr @cpsw_probe._entry_ptr.37, ptr @cpsw_probe._entry_ptr.40, ptr @cpsw_probe._entry_ptr.44, ptr @cpsw_probe_dt._entry, ptr @cpsw_probe_dt._entry.49, ptr @cpsw_probe_dt._entry.53, ptr @cpsw_probe_dt._entry.57, ptr @cpsw_probe_dt._entry.61, ptr @cpsw_probe_dt._entry.65, ptr @cpsw_probe_dt._entry.74, ptr @cpsw_probe_dt._entry.77, ptr @cpsw_probe_dt._entry.80, ptr @cpsw_probe_dt._entry.84, ptr @cpsw_probe_dt._entry.87, ptr @cpsw_probe_dt._entry.91, ptr @cpsw_probe_dt._entry.94, ptr @cpsw_probe_dt._entry_ptr, ptr @cpsw_probe_dt._entry_ptr.51, ptr @cpsw_probe_dt._entry_ptr.55, ptr @cpsw_probe_dt._entry_ptr.59, ptr @cpsw_probe_dt._entry_ptr.63, ptr @cpsw_probe_dt._entry_ptr.68, ptr @cpsw_probe_dt._entry_ptr.76, ptr @cpsw_probe_dt._entry_ptr.79, ptr @cpsw_probe_dt._entry_ptr.82, ptr @cpsw_probe_dt._entry_ptr.86, ptr @cpsw_probe_dt._entry_ptr.89, ptr @cpsw_probe_dt._entry_ptr.93, ptr @cpsw_probe_dt._entry_ptr.96, ptr @cpsw_probe_dual_emac._entry, ptr @cpsw_probe_dual_emac._entry.135, ptr @cpsw_probe_dual_emac._entry.138, ptr @cpsw_probe_dual_emac._entry.141, ptr @cpsw_probe_dual_emac._entry_ptr, ptr @cpsw_probe_dual_emac._entry_ptr.137, ptr @cpsw_probe_dual_emac._entry_ptr.140, ptr @cpsw_probe_dual_emac._entry_ptr.143, ptr @cpsw_set_promiscious._entry, ptr @cpsw_set_promiscious._entry_ptr, ptr @cpsw_slave_open._entry, ptr @cpsw_slave_open._entry.112, ptr @cpsw_slave_open._entry_ptr, ptr @cpsw_slave_open._entry_ptr.114, ptr @debug_level, ptr @ale_ageout, ptr @rx_packet_max, ptr @descs_pool_size, ptr @cpsw_driver, ptr @.str, ptr @cpsw_of_mtable, ptr @cpsw_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @cpsw_soc_devices, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @cpsw_netdev_ops, ptr @cpsw_ethtool_ops, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.142], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ale_ageout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_packet_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @descs_pool_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_of_mtable to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_soc_devices to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_slave_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_slave_open._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cpsw_adjust_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_start_xmit._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_promiscious._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_vlan_rx_add_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_vlan_rx_kill_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dual_emac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dual_emac._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dual_emac._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dual_emac._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpsw_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpsw_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ss_res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ss_res) #12
  %0 = ptrtoint ptr %ss_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ss_res, align 4, !annotation !301
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 752, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  store ptr @cpsw_slave_index_priv, ptr @cpsw_slave_index, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %call3 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %3) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  %cmp.i400 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %4) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = tail call i32 @clk_get_rate(ptr noundef %call8) #12
  %div = udiv i32 %call16, 1000000
  %bus_freq_mhz = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %bus_freq_mhz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %bus_freq_mhz, align 8
  %call17 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %ss_res) #12
  %cmp.i401 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %regs = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %regs, align 8
  %call22 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #12
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %wr_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %wr_regs, align 4
  %cmp.i402 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i402, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %irqs_table = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 21
  %10 = ptrtoint ptr %irqs_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call29, ptr %irqs_table, align 4
  %call32 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %arrayidx37 = getelementptr %struct.cpsw_common, ptr %call.i, i32 0, i32 21, i32 1
  %11 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call32, ptr %arrayidx37, align 4
  %call38 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.end35.cleanup_crit_edge, label %if.end41

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %misc_irq = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 22
  %12 = ptrtoint ptr %misc_irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call38, ptr %misc_irq, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #12
  %call.i403 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i403)
  %cmp43 = icmp slt i32 %call.i403, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %clean_runtime_disable_ret

if.end45:                                         ; preds = %if.end41
  %data46 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1
  %call47 = call fastcc i32 @cpsw_probe_dt(ptr noundef %data46, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.clean_dt_ret_crit_edge

if.end45.clean_dt_ret_crit_edge:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %clean_dt_ret

if.end50:                                         ; preds = %if.end45
  %call51 = call ptr @soc_device_match(ptr noundef nonnull @cpsw_soc_devices) #12
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end50.if.end54_crit_edge, label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %quirk_irq = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 18
  %13 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %quirk_irq, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slaves, align 4
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 32) #12
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !302

devm_kcalloc.exit.thread:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %slaves57424 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %slaves57424 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %slaves57424, align 4
  br label %clean_dt_ret

devm_kcalloc.exit:                                ; preds = %if.end54
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %19, i32 noundef 3520) #12
  %slaves57 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %slaves57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %slaves57, align 4
  %tobool59.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool59.not, label %devm_kcalloc.exit.clean_dt_ret_crit_edge, label %if.end61

devm_kcalloc.exit.clean_dt_ret_crit_edge:         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clean_dt_ret

if.end61:                                         ; preds = %devm_kcalloc.exit
  %21 = load i32, ptr @rx_packet_max, align 4
  %22 = call i32 @llvm.smax.i32(i32 %21, i32 1526)
  %rx_packet_max = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_packet_max, align 4
  %24 = load i32, ptr @descs_pool_size, align 4
  %descs_pool_size = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %descs_pool_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %descs_pool_size, align 8
  %26 = load i32, ptr @ale_ageout, align 4
  %27 = ptrtoint ptr %ss_res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ss_res, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add = add i32 %30, 8192
  %call63 = call i32 @cpsw_init_common(ptr noundef nonnull %call.i, ptr noundef %call17, i32 noundef %26, i32 noundef %add, i32 noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end61.clean_dt_ret_crit_edge

if.end61.clean_dt_ret_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %clean_dt_ret

if.end66:                                         ; preds = %if.end61
  %quirk_irq67 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 18
  %31 = ptrtoint ptr %quirk_irq67 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %quirk_irq67, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool68.not = icmp eq i8 %32, 0
  %cond69 = select i1 %tobool68.not, i32 7, i32 0
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 14
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma, align 8
  %call70 = call ptr @cpdma_chan_create(ptr noundef %34, i32 noundef %cond69, ptr noundef nonnull @cpsw_tx_handler, i32 noundef 0) #12
  %txv = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 15
  %35 = ptrtoint ptr %txv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call70, ptr %txv, align 4
  %cmp.i404 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i404, label %do.end80, label %if.end85

do.end80:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #15
  %36 = ptrtoint ptr %txv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txv, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %clean_cpts

if.end85:                                         ; preds = %if.end66
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma, align 8
  %call87 = call ptr @cpdma_chan_create(ptr noundef %40, i32 noundef 0, ptr noundef nonnull @cpsw_rx_handler, i32 noundef 1) #12
  %rxv = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %rxv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call87, ptr %rxv, align 4
  %cmp.i405 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i405, label %do.end97, label %if.end102

do.end97:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #15
  %42 = ptrtoint ptr %rxv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rxv, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %clean_cpts

if.end102:                                        ; preds = %if.end85
  call void @cpsw_split_res(ptr noundef nonnull %call.i) #12
  %call103 = call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev1, i32 noundef 1280, i32 noundef 8, i32 noundef 8) #12
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %do.end108, label %if.end109

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #15
  br label %clean_cpts

if.end109:                                        ; preds = %if.end102
  %add.ptr.i = getelementptr i8, ptr %call103, i32 2304
  %cpsw111 = getelementptr i8, ptr %call103, i32 3468
  %45 = ptrtoint ptr %cpsw111 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %cpsw111, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call103, ptr %add.ptr.i, align 128
  %dev113 = getelementptr i8, ptr %call103, i32 2308
  %47 = ptrtoint ptr %dev113 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev1, ptr %dev113, align 4
  %48 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %48)
  %cmp1.i = icmp ugt i32 %48, 31
  br i1 %cmp1.i, label %if.end109.netif_msg_init.exit_crit_edge, label %if.end.i

if.end109.netif_msg_init.exit_crit_edge:          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp2.i = icmp eq i32 %48, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %notmask.i = shl nsw i32 -1, %48
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end109.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 32767, %if.end109.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call103, i32 2312
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i, ptr %msg_enable, align 8
  %emac_port = getelementptr i8, ptr %call103, i32 3464
  %50 = ptrtoint ptr %emac_port to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %emac_port, align 8
  %51 = ptrtoint ptr %data46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data46, align 4
  %mac_addr = getelementptr inbounds %struct.cpsw_slave_data, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mac_addr, align 4
  %55 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.not.i = icmp eq i32 %55, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %netif_msg_init.exit.if.else_crit_edge

netif_msg_init.exit.if.else_crit_edge:            ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %netif_msg_init.exit
  %add.ptr.i.i = getelementptr %struct.cpsw_slave_data, ptr %52, i32 0, i32 4, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %57 to i32
  %or.i.i = or i32 %54, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then117

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then117:                                       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mac_addr118 = getelementptr i8, ptr %call103, i32 2316
  %58 = call ptr @memcpy(ptr %mac_addr118, ptr %mac_addr, i32 6)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %mac_addr118) #15
  br label %if.end136

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %netif_msg_init.exit.if.else_crit_edge
  %mac_addr129 = getelementptr i8, ptr %call103, i32 2316
  call void @get_random_bytes(ptr noundef %mac_addr129, i32 noundef 6) #12
  %59 = ptrtoint ptr %mac_addr129 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mac_addr129, align 1
  %61 = and i8 %60, -4
  %62 = or i8 %61, 2
  store i8 %62, ptr %mac_addr129, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %mac_addr129) #15
  br label %if.end136

if.end136:                                        ; preds = %if.else, %if.then117
  %mac_addr137 = getelementptr i8, ptr %call103, i32 2316
  call void @dev_addr_mod(ptr noundef nonnull %call103, i32 noundef 0, ptr noundef %mac_addr137, i32 noundef 6) #12
  %63 = ptrtoint ptr %slaves57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %slaves57, align 4
  %ndev141 = getelementptr inbounds %struct.cpsw_slave, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %ndev141 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call103, ptr %ndev141, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %call103, i32 0, i32 23
  %66 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %features, align 16
  %or = or i64 %67, 768
  store i64 %or, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call103, i32 0, i32 16
  %68 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @cpsw_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call103, i32 0, i32 44
  %69 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @cpsw_ethtool_ops, ptr %ethtool_ops, align 16
  %napi_rx = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 2
  %70 = ptrtoint ptr %quirk_irq67 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %quirk_irq67, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool143.not = icmp eq i8 %71, 0
  %cond144 = select i1 %tobool143.not, ptr @cpsw_rx_mq_poll, ptr @cpsw_rx_poll
  call void @netif_napi_add(ptr noundef nonnull %call103, ptr noundef %napi_rx, ptr noundef nonnull %cond144, i32 noundef 64) #12
  %napi_tx = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 3
  %72 = ptrtoint ptr %quirk_irq67 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %quirk_irq67, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool146.not = icmp eq i8 %73, 0
  %cond147 = select i1 %tobool146.not, ptr @cpsw_tx_mq_poll, ptr @cpsw_tx_poll
  call fastcc void @netif_tx_napi_add(ptr noundef nonnull %call103, ptr noundef %napi_tx, ptr noundef nonnull %cond147)
  %parent = getelementptr inbounds %struct.net_device, ptr %call103, i32 0, i32 133, i32 1
  %74 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %dev1, ptr %parent, align 8
  %75 = ptrtoint ptr %slaves57 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %slaves57, align 4
  %data151 = getelementptr inbounds %struct.cpsw_slave, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %data151 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data151, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %of_node = getelementptr inbounds %struct.net_device, ptr %call103, i32 0, i32 133, i32 27
  %81 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %of_node, align 16
  %call153 = call i32 @register_netdev(ptr noundef nonnull %call103) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end159, label %do.end158

do.end158:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #15
  br label %clean_cpts

if.end159:                                        ; preds = %if.end136
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 8
  %82 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool161.not = icmp eq i8 %83, 0
  br i1 %tobool161.not, label %if.end159.if.end180_crit_edge, label %if.then162

if.end159.if.end180_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.then162:                                       ; preds = %if.end159
  %call163 = call fastcc i32 @cpsw_probe_dual_emac(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then162.if.end180_crit_edge, label %do.body166

if.then162.if.end180_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

do.body166:                                       ; preds = %if.then162
  %84 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_enable, align 8
  %and = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool168.not = icmp eq i32 %and, 0
  br i1 %tobool168.not, label %do.body166.clean_unregister_netdev_ret_crit_edge, label %land.lhs.true

do.body166.clean_unregister_netdev_ret_crit_edge: ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #14
  br label %clean_unregister_netdev_ret

land.lhs.true:                                    ; preds = %do.body166
  %call169 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %land.lhs.true.clean_unregister_netdev_ret_crit_edge, label %do.end174

land.lhs.true.clean_unregister_netdev_ret_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %clean_unregister_netdev_ret

do.end174:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev113, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.31) #15
  br label %clean_unregister_netdev_ret

if.end180:                                        ; preds = %if.then162.if.end180_crit_edge, %if.end159.if.end180_crit_edge
  %88 = ptrtoint ptr %irqs_table to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irqs_table, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %90 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %91, null
  br i1 %tobool.not.i, label %if.end.i406, label %if.end180.dev_name.exit_crit_edge

if.end180.dev_name.exit_crit_edge:                ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i406:                                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i406, %if.end180.dev_name.exit_crit_edge
  %retval.0.i407 = phi ptr [ %93, %if.end.i406 ], [ %91, %if.end180.dev_name.exit_crit_edge ]
  %call.i408 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %89, ptr noundef nonnull @cpsw_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i407, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i408)
  %cmp185 = icmp slt i32 %call.i408, 0
  br i1 %cmp185, label %do.end189, label %if.end190

do.end189:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call.i408) #15
  br label %clean_unregister_netdev_ret

if.end190:                                        ; preds = %dev_name.exit
  %94 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx37, align 4
  %96 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i410 = icmp eq ptr %97, null
  br i1 %tobool.not.i410, label %if.end.i411, label %if.end190.dev_name.exit413_crit_edge

if.end190.dev_name.exit413_crit_edge:             ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit413

if.end.i411:                                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit413

dev_name.exit413:                                 ; preds = %if.end.i411, %if.end190.dev_name.exit413_crit_edge
  %retval.0.i412 = phi ptr [ %99, %if.end.i411 ], [ %97, %if.end190.dev_name.exit413_crit_edge ]
  %call.i414 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %95, ptr noundef nonnull @cpsw_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i412, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i414)
  %cmp196 = icmp slt i32 %call.i414, 0
  br i1 %cmp196, label %do.end200, label %if.end201

do.end200:                                        ; preds = %dev_name.exit413
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call.i414) #15
  br label %clean_unregister_netdev_ret

if.end201:                                        ; preds = %dev_name.exit413
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 23
  %100 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cpts, align 8
  %tobool202.not = icmp eq ptr %101, null
  br i1 %tobool202.not, label %if.end201.do.body217_crit_edge, label %if.end204

if.end201.do.body217_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body217

if.end204:                                        ; preds = %if.end201
  %102 = ptrtoint ptr %misc_irq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %misc_irq, align 4
  %104 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i416 = icmp eq ptr %105, null
  br i1 %tobool.not.i416, label %if.end.i417, label %if.end204.dev_name.exit419_crit_edge

if.end204.dev_name.exit419_crit_edge:             ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit419

if.end.i417:                                      ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit419

dev_name.exit419:                                 ; preds = %if.end.i417, %if.end204.dev_name.exit419_crit_edge
  %retval.0.i418 = phi ptr [ %107, %if.end.i417 ], [ %105, %if.end204.dev_name.exit419_crit_edge ]
  %call.i420 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %103, ptr noundef nonnull @cpsw_misc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i418, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i420)
  %cmp210 = icmp slt i32 %call.i420, 0
  br i1 %cmp210, label %do.end214, label %if.end215

do.end214:                                        ; preds = %dev_name.exit419
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %call.i420) #15
  br label %clean_unregister_netdev_ret

if.end215:                                        ; preds = %dev_name.exit419
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cpts, align 8
  %irq_poll.i = getelementptr inbounds %struct.cpts, ptr %109, i32 0, i32 20
  %110 = ptrtoint ptr %irq_poll.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %irq_poll.i, align 8
  br label %do.body217

do.body217:                                       ; preds = %if.end215, %if.end201.do.body217_crit_edge
  %111 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_enable, align 8
  %and219 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %do.body217.do.end234_crit_edge, label %land.lhs.true221

do.body217.do.end234_crit_edge:                   ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end234

land.lhs.true221:                                 ; preds = %do.body217
  %call222 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %land.lhs.true221.do.end234_crit_edge, label %do.end227

land.lhs.true221.do.end234_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end234

do.end227:                                        ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev113, align 4
  %115 = ptrtoint ptr %ss_res to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ss_res, align 4
  %117 = ptrtoint ptr %irqs_table to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irqs_table, align 4
  %119 = load i32, ptr @descs_pool_size, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %114, ptr noundef nonnull @.str.42, ptr noundef %116, i32 noundef %118, i32 noundef %119) #15
  br label %do.end234

do.end234:                                        ; preds = %do.end227, %land.lhs.true221.do.end234_crit_edge, %do.body217.do.end234_crit_edge
  %call.i421 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #12
  br label %cleanup

clean_unregister_netdev_ret:                      ; preds = %do.end214, %do.end200, %do.end189, %do.end174, %land.lhs.true.clean_unregister_netdev_ret_crit_edge, %do.body166.clean_unregister_netdev_ret_crit_edge
  %ret.0 = phi i32 [ %call163, %do.end174 ], [ %call163, %land.lhs.true.clean_unregister_netdev_ret_crit_edge ], [ %call163, %do.body166.clean_unregister_netdev_ret_crit_edge ], [ %call.i408, %do.end189 ], [ %call.i414, %do.end200 ], [ %call.i420, %do.end214 ]
  call void @unregister_netdev(ptr noundef nonnull %call103) #12
  br label %clean_cpts

clean_cpts:                                       ; preds = %clean_unregister_netdev_ret, %do.end158, %do.end108, %do.end97, %do.end80
  %ret.1 = phi i32 [ %38, %do.end80 ], [ %44, %do.end97 ], [ -19, %do.end158 ], [ %ret.0, %clean_unregister_netdev_ret ], [ -12, %do.end108 ]
  %cpts237 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 23
  %120 = ptrtoint ptr %cpts237 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cpts237, align 8
  call void @cpts_release(ptr noundef %121) #12
  %122 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dma, align 8
  %call239 = call i32 @cpdma_ctlr_destroy(ptr noundef %123) #12
  br label %clean_dt_ret

clean_dt_ret:                                     ; preds = %clean_cpts, %if.end61.clean_dt_ret_crit_edge, %devm_kcalloc.exit.clean_dt_ret_crit_edge, %devm_kcalloc.exit.thread, %if.end45.clean_dt_ret_crit_edge
  %ret.2 = phi i32 [ %call47, %if.end45.clean_dt_ret_crit_edge ], [ %call63, %if.end61.clean_dt_ret_crit_edge ], [ %ret.1, %clean_cpts ], [ -12, %devm_kcalloc.exit.clean_dt_ret_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call fastcc void @cpsw_remove_dt(ptr noundef %pdev)
  %call.i422 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #12
  br label %clean_runtime_disable_ret

clean_runtime_disable_ret:                        ; preds = %clean_dt_ret, %if.then44
  %ret.3 = phi i32 [ %call.i403, %if.then44 ], [ %ret.2, %clean_dt_ret ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %clean_runtime_disable_ret, %do.end234, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then25, %if.then19, %if.then10, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %4, %if.then10 ], [ %6, %if.then19 ], [ %9, %if.then25 ], [ %ret.3, %clean_runtime_disable_ret ], [ 0, %do.end234 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call38, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_res) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp330.not = icmp eq i32 %3, 0
  br i1 %cmp330.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves4 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !306
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %slaves4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slaves4, align 4
  %ndev = getelementptr %struct.cpsw_slave, ptr %6, i32 %i.031, i32 5
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_netdev(ptr noundef nonnull %8) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  %9 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slaves, align 4
  %cmp3 = icmp ult i32 %inc, %10
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpts, align 8
  tail call void @cpts_release(ptr noundef %12) #12
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma, align 8
  %call10 = tail call i32 @cpdma_ctlr_destroy(ptr noundef %14) #12
  tail call fastcc void @cpsw_remove_dt(ptr noundef %pdev)
  %call.i29 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpsw_slave_index_priv(ptr nocapture noundef readonly %cpsw, ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %active_slave = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 4
  %cond.in = select i1 %tobool.not, ptr %active_slave, ptr %emac_port
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load i32, ptr %cond.in, align 4
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #12, !srcloc !305
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !306
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_probe_dt(ptr nocapture noundef %data, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %prop = alloca i32, align 4
  %lenp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #12
  %2 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %prop, align 4, !annotation !301
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup182_crit_edge, label %if.end

entry.cleanup182_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup182

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.45, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool1.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #15
  br label %cleanup182

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prop, align 4
  %slaves = getelementptr inbounds %struct.cpsw_platform_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %slaves, align 4
  %call.i.i272 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i272)
  %tobool6.not = icmp sgt i32 %call.i.i272, -1
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #15
  br label %cleanup182

if.end12:                                         ; preds = %if.end4
  %6 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prop, align 4
  %active_slave = getelementptr inbounds %struct.cpsw_platform_data, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %active_slave to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %active_slave, align 4
  %9 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slaves, align 4
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 92) #12
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !302

devm_kcalloc.exit.thread:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %data, align 4
  br label %cleanup182

devm_kcalloc.exit:                                ; preds = %if.end12
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #12
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %data, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %devm_kcalloc.exit.cleanup182_crit_edge, label %if.end19

devm_kcalloc.exit.cleanup182_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup182

if.end19:                                         ; preds = %devm_kcalloc.exit
  %call.i.i273 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.52, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i273)
  %tobool21.not = icmp sgt i32 %call.i.i273, -1
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #15
  br label %cleanup182

if.end27:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prop, align 4
  %channels = getelementptr inbounds %struct.cpsw_platform_data, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %channels, align 4
  %call.i.i274 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.56, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i274)
  %tobool29.not = icmp sgt i32 %call.i.i274, -1
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #15
  br label %cleanup182

if.end35:                                         ; preds = %if.end27
  %19 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prop, align 4
  %bd_ram_size = getelementptr inbounds %struct.cpsw_platform_data, ptr %data, i32 0, i32 5
  %21 = ptrtoint ptr %bd_ram_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bd_ram_size, align 4
  %call.i.i275 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.60, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i275)
  %tobool37.not = icmp sgt i32 %call.i.i275, -1
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #15
  br label %cleanup182

if.end43:                                         ; preds = %if.end35
  %22 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prop, align 4
  %mac_control = getelementptr inbounds %struct.cpsw_platform_data, ptr %data, i32 0, i32 6
  %24 = ptrtoint ptr %mac_control to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mac_control, align 4
  %call.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.64, ptr noundef null) #12
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end43.if.end46_crit_edge, label %if.then45

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %dual_emac = getelementptr inbounds %struct.cpsw_platform_data, ptr %data, i32 0, i32 8
  %25 = ptrtoint ptr %dual_emac to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %dual_emac, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43.if.end46_crit_edge
  %call48 = call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.if.end55_crit_edge, label %do.end53

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.66) #15
  br label %if.end55

if.end55:                                         ; preds = %do.end53, %if.end46.if.end55_crit_edge
  %call56 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #12
  %cmp.not300 = icmp eq ptr %call56, null
  br i1 %cmp.not300, label %if.end55.cleanup182_crit_edge, label %for.body.lr.ph

if.end55.cleanup182_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup182

for.body.lr.ph:                                   ; preds = %if.end55
  %dual_emac150 = getelementptr inbounds %struct.cpsw_platform_data, ptr %data, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0304 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %slave_node.0301 = phi ptr [ %call56, %for.body.lr.ph ], [ %call181, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lenp) #12
  %28 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %lenp, align 4, !annotation !301
  %call59 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %slave_node.0301, ptr noundef nonnull @.str.69) #12
  br i1 %call59, label %if.end61, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end61:                                         ; preds = %for.body
  %add.ptr = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304
  %call63 = call ptr @devm_of_phy_get(ptr noundef %dev, ptr noundef nonnull %slave_node.0301, ptr noundef null) #12
  %ifphy = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304, i32 6
  %29 = ptrtoint ptr %ifphy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call63, ptr %ifphy, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %slave_node.0301, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #12
  %31 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i276 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %slave_node.0301, ptr noundef nonnull @.str.70, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool.not.i = icmp eq i32 %call.i276, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end61.of_parse_phandle.exit_crit_edge

if.end61.of_parse_phandle.exit_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end61.of_parse_phandle.exit_crit_edge
  %retval.0.i277 = phi ptr [ %33, %if.end.i ], [ null, %if.end61.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  %phy_node = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304, i32 1
  %34 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i277, ptr %phy_node, align 4
  %call66 = call ptr @of_get_property(ptr noundef nonnull %slave_node.0301, ptr noundef nonnull @.str.71, ptr noundef nonnull %lenp) #12
  %35 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_node, align 4
  %tobool68.not = icmp eq ptr %36, null
  br i1 %tobool68.not, label %if.else, label %do.body70

do.body70:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_probe_dt.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_probe_dt, %if.then75)) #12
          to label %if.end129 [label %if.then75], !srcloc !307

if.then75:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_node, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_probe_dt.__UNIQUE_ID_ddebug530, ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %i.0304, ptr noundef %38) #12
  br label %if.end129

if.else:                                          ; preds = %of_parse_phandle.exit
  %call81 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %slave_node.0301) #12
  br i1 %call81, label %if.then82, label %if.else96

if.then82:                                        ; preds = %if.else
  %call83 = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %slave_node.0301) #12
  %39 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call83, label %do.end90 [
    i32 0, label %if.end93
    i32 -517, label %if.then82.err_node_put_crit_edge
  ]

if.then82.err_node_put_crit_edge:                 ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_node_put

do.end90:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %call83) #15
  br label %err_node_put

if.end93:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %call94 = call ptr @of_node_get(ptr noundef nonnull %slave_node.0301) #12
  %40 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call94, ptr %phy_node, align 4
  br label %if.end129

if.else96:                                        ; preds = %if.else
  %tobool97.not = icmp eq ptr %call66, null
  br i1 %tobool97.not, label %if.else96.no_phy_slave.sink.split_crit_edge, label %if.then98

if.else96.no_phy_slave.sink.split_crit_edge:      ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_phy_slave.sink.split

if.then98:                                        ; preds = %if.else96
  %41 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp99.not = icmp eq i32 %42, 8
  br i1 %cmp99.not, label %if.end105, label %if.then98.no_phy_slave.sink.split_crit_edge

if.then98.no_phy_slave.sink.split_crit_edge:      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_phy_slave.sink.split

if.end105:                                        ; preds = %if.then98
  %43 = ptrtoint ptr %call66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call66, align 4
  %call107 = call ptr @of_find_node_by_phandle(i32 noundef %44) #12
  %add.ptr108 = getelementptr i32, ptr %call66, i32 1
  %45 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr108, align 4
  %call110 = call ptr @of_find_device_by_node(ptr noundef %call107) #12
  call void @of_node_put(ptr noundef %call107) #12
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %cleanup.thread, label %cleanup.thread284

cleanup.thread:                                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #15
  br label %err_node_put

cleanup.thread284:                                ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  %phy_id = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304, i32 2
  %47 = ptrtoint ptr %call110 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call110, align 8
  %call118 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phy_id, i32 noundef 61, ptr noundef nonnull @.str.83, ptr noundef %48, i32 noundef %46)
  %dev119 = getelementptr inbounds %struct.platform_device, ptr %call110, i32 0, i32 3
  call void @put_device(ptr noundef %dev119) #12
  br label %if.end129

if.end129:                                        ; preds = %cleanup.thread284, %if.end93, %if.then75, %do.body70
  %phy_if = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304, i32 3
  %call130 = call i32 @of_get_phy_mode(ptr noundef nonnull %slave_node.0301, ptr noundef %phy_if) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end129.no_phy_slave_crit_edge, label %do.end135

if.end129.no_phy_slave_crit_edge:                 ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_phy_slave

do.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %i.0304) #15
  br label %err_node_put

no_phy_slave.sink.split:                          ; preds = %if.then98.no_phy_slave.sink.split_crit_edge, %if.else96.no_phy_slave.sink.split_crit_edge
  %.str.78.sink = phi ptr [ @.str.78, %if.then98.no_phy_slave.sink.split_crit_edge ], [ @.str.85, %if.else96.no_phy_slave.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.78.sink, i32 noundef %i.0304) #15
  br label %no_phy_slave

no_phy_slave:                                     ; preds = %no_phy_slave.sink.split, %if.end129.no_phy_slave_crit_edge
  %mac_addr = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304, i32 4
  %call139 = call i32 @of_get_mac_address(ptr noundef nonnull %slave_node.0301, ptr noundef %mac_addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %no_phy_slave.if.end149_crit_edge, label %if.then141

no_phy_slave.if.end149_crit_edge:                 ; preds = %no_phy_slave
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then141:                                       ; preds = %no_phy_slave
  %call145 = call i32 @ti_cm_get_macid(ptr noundef %dev, i32 noundef %i.0304, ptr noundef %mac_addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then141.if.end149_crit_edge, label %if.then141.err_node_put_crit_edge

if.then141.err_node_put_crit_edge:                ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_node_put

if.then141.if.end149_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.end149:                                        ; preds = %if.then141.if.end149_crit_edge, %no_phy_slave.if.end149_crit_edge
  %49 = ptrtoint ptr %dual_emac150 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dual_emac150, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool151.not = icmp eq i8 %50, 0
  br i1 %tobool151.not, label %if.end149.if.end170_crit_edge, label %if.then152

if.end149.if.end170_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.then152:                                       ; preds = %if.end149
  %call.i.i278 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %slave_node.0301, ptr noundef nonnull @.str.90, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i278)
  %tobool154.not = icmp sgt i32 %call.i.i278, -1
  br i1 %tobool154.not, label %if.else166, label %do.end158

do.end158:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92) #15
  %51 = trunc i32 %i.0304 to i16
  %conv = add i16 %51, 1
  %dual_emac_res_vlan = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304, i32 5
  %52 = ptrtoint ptr %dual_emac_res_vlan to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv, ptr %dual_emac_res_vlan, align 2
  %conv165 = zext i16 %conv to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %conv165, i32 noundef %i.0304) #15
  br label %if.end170

if.else166:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prop, align 4
  %conv167 = trunc i32 %54 to i16
  %dual_emac_res_vlan168 = getelementptr %struct.cpsw_slave_data, ptr %27, i32 %i.0304, i32 5
  %55 = ptrtoint ptr %dual_emac_res_vlan168 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv167, ptr %dual_emac_res_vlan168, align 2
  br label %if.end170

if.end170:                                        ; preds = %if.else166, %do.end158, %if.end149.if.end170_crit_edge
  %inc = add i32 %i.0304, 1
  %56 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %57)
  %cmp172 = icmp eq i32 %inc, %57
  br i1 %cmp172, label %if.end170.err_node_put_crit_edge, label %if.end170.for.inc_crit_edge

if.end170.for.inc_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end170.err_node_put_crit_edge:                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_node_put

for.inc:                                          ; preds = %if.end170.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.0304, %for.body.for.inc_crit_edge ], [ %inc, %if.end170.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lenp) #12
  %call181 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %slave_node.0301) #12
  %cmp.not = icmp eq ptr %call181, null
  br i1 %cmp.not, label %for.inc.cleanup182_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup182_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup182

err_node_put:                                     ; preds = %if.end170.err_node_put_crit_edge, %if.then141.err_node_put_crit_edge, %do.end135, %cleanup.thread, %do.end90, %if.then82.err_node_put_crit_edge
  %ret.3.ph = phi i32 [ -22, %cleanup.thread ], [ %call83, %do.end90 ], [ %call130, %do.end135 ], [ %call145, %if.then141.err_node_put_crit_edge ], [ %call83, %if.then82.err_node_put_crit_edge ], [ 0, %if.end170.err_node_put_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lenp) #12
  call void @of_node_put(ptr noundef nonnull %slave_node.0301) #12
  br label %cleanup182

cleanup182:                                       ; preds = %err_node_put, %for.inc.cleanup182_crit_edge, %if.end55.cleanup182_crit_edge, %do.end41, %do.end33, %do.end25, %devm_kcalloc.exit.cleanup182_crit_edge, %devm_kcalloc.exit.thread, %do.end10, %do.end, %entry.cleanup182_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end25 ], [ -22, %do.end33 ], [ -22, %do.end41 ], [ %ret.3.ph, %err_node_put ], [ -22, %entry.cleanup182_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup182_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %if.end55.cleanup182_crit_edge ], [ 0, %for.inc.cleanup182_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_init_common(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_chan_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_tx_handler(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_rx_handler(ptr noundef %token, i32 noundef %len, i32 noundef %status) #2 align 64 {
entry:
  %len.addr = alloca i32, align 4
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %len.addr, align 4
  %call = tail call ptr @page_address(ptr noundef %token) #12
  %add.ptr = getelementptr i8, ptr %call, i32 24
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %cpsw2 = getelementptr i8, ptr %2, i32 3468
  %3 = ptrtoint ptr %cpsw2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpsw2, align 4
  %rx_packet_max = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_packet_max, align 4
  %ch3 = getelementptr i8, ptr %call, i32 28
  %7 = ptrtoint ptr %ch3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ch3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #12
  %9 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %10 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %11 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %12 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %13 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 1, i32 8
  %14 = call ptr @memset(ptr %xdp, i32 255, i32 28)
  %15 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp ne i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status)
  %cmp = icmp sgt i32 %status, -1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %17 = lshr i32 %status, 16
  %and = and i32 %17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then.if.end9.thread_crit_edge, label %if.then7

if.then.if.end9.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.thread

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 13
  %18 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves, align 4
  %dec = add nsw i32 %and, -1
  %ndev8 = getelementptr %struct.cpsw_slave, ptr %19, i32 %dec, i32 5
  %20 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev8, align 4
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.then7, %if.then.if.end9.thread_crit_edge
  %ndev4.0.ph = phi ptr [ %2, %if.then.if.end9.thread_crit_edge ], [ %21, %if.then7 ]
  %arrayidx11220 = getelementptr %struct.cpsw_common, ptr %4, i32 0, i32 29, i32 %8
  %22 = ptrtoint ptr %arrayidx11220 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx11220, align 4
  br label %lor.lhs.false

if.end9:                                          ; preds = %entry
  %arrayidx11 = getelementptr %struct.cpsw_common, ptr %4, i32 0, i32 29, i32 %8
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp12 = icmp slt i32 %status, 0
  br i1 %cmp12, label %if.end9.if.then24_crit_edge, label %if.end9.lor.lhs.false_crit_edge, !prof !302

if.end9.lor.lhs.false_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end9.if.then24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end9.lor.lhs.false_crit_edge, %if.end9.thread
  %26 = phi ptr [ %23, %if.end9.thread ], [ %25, %if.end9.lor.lhs.false_crit_edge ]
  %ndev4.0223 = phi ptr [ %ndev4.0.ph, %if.end9.thread ], [ %2, %if.end9.lor.lhs.false_crit_edge ]
  %add.ptr.i216225 = getelementptr i8, ptr %ndev4.0223, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev4.0223, i32 0, i32 6
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then24_crit_edge, label %if.end34, !prof !302

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end9.if.then24_crit_edge
  %29 = phi ptr [ %26, %lor.lhs.false.if.then24_crit_edge ], [ %25, %if.end9.if.then24_crit_edge ]
  %ndev4.0224 = phi ptr [ %ndev4.0223, %lor.lhs.false.if.then24_crit_edge ], [ %2, %if.end9.if.then24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not = icmp eq i8 %16, 0
  br i1 %tobool27.not, label %if.then24.if.end33_crit_edge, label %land.lhs.true28

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true28:                                  ; preds = %if.then24
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 28
  %30 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool29.not = icmp ne i32 %31, 0
  %or.cond212 = and i1 %cmp, %tobool29.not
  br i1 %or.cond212, label %land.lhs.true28.requeue_crit_edge, label %land.lhs.true28.if.end33_crit_edge

land.lhs.true28.if.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true28.requeue_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue

if.end33:                                         ; preds = %land.lhs.true28.if.end33_crit_edge, %if.then24.if.end33_crit_edge
  tail call void @page_pool_put_page(ptr noundef %29, ptr noundef %token, i32 noundef -1, i1 noundef zeroext true) #12
  br label %cleanup128

if.end34:                                         ; preds = %lor.lhs.false
  %call.i = tail call ptr @page_pool_alloc_pages(ptr noundef %26, i32 noundef 10784) #12
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.then45, label %if.end46, !prof !302

if.then45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev4.0223, i32 0, i32 36, i32 6
  %32 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %requeue

if.end46:                                         ; preds = %if.end34
  %xdp_prog = getelementptr i8, ptr %ndev4.0223, i32 2356
  %34 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xdp_prog, align 4
  %tobool47.not = icmp eq ptr %35, null
  br i1 %tobool47.not, label %if.end46.if.end65_crit_edge, label %if.then48

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then48:                                        ; preds = %if.end46
  %36 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.addr, align 4
  %arrayidx49 = getelementptr %struct.cpsw_priv, ptr %add.ptr.i216225, i32 0, i32 13, i32 %8
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4096, ptr %13, align 4
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx49, ptr %12, align 4
  %and50 = and i32 %status, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %sub = add i32 %37, -4
  %spec.select = select i1 %tobool51.not, i32 258, i32 262
  %spec.select213 = select i1 %tobool51.not, i32 %37, i32 %sub
  %add.ptr.i = getelementptr i8, ptr %call, i32 %spec.select
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call, ptr %11, align 4
  %41 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %spec.select213
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr2.i, ptr %9, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %43 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr3.i, ptr %10, align 4
  %emac_port = getelementptr i8, ptr %ndev4.0223, i32 3464
  %44 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %emac_port, align 8
  %46 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dual_emac, align 2, !range !303
  %48 = zext i8 %47 to i32
  %add57 = add i32 %45, %48
  %call58 = call i32 @cpsw_run_xdp(ptr noundef %add.ptr.i216225, i32 noundef %8, ptr noundef nonnull %xdp, ptr noundef %token, i32 noundef %add57, ptr noundef nonnull %len.addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %cleanup.thread, label %if.then48.requeue_crit_edge

if.then48.requeue_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %requeue

cleanup.thread:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xdp, align 4
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %11, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %52 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end65

if.end65:                                         ; preds = %cleanup.thread, %if.end46.if.end65_crit_edge
  %headroom.2 = phi i32 [ 258, %if.end46.if.end65_crit_edge ], [ %sub.ptr.sub, %cleanup.thread ]
  %status.addr.1 = phi i32 [ %status, %if.end46.if.end65_crit_edge ], [ 0, %cleanup.thread ]
  %add2.i = add i32 %6, 643
  %and.i = and i32 %add2.i, -128
  %call67 = call ptr @build_skb(ptr noundef %call, i32 noundef %and.i) #12
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.then69, label %if.end73

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %rx_dropped71 = getelementptr inbounds %struct.net_device, ptr %ndev4.0223, i32 0, i32 36, i32 6
  %53 = ptrtoint ptr %rx_dropped71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_dropped71, align 8
  %inc72 = add i32 %54, 1
  store i32 %inc72, ptr %rx_dropped71, align 8
  call void @page_pool_put_page(ptr noundef %26, ptr noundef %token, i32 noundef -1, i1 noundef zeroext true) #12
  br label %requeue

if.end73:                                         ; preds = %if.end65
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call67, i32 0, i32 19
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %56, i32 %headroom.2
  store ptr %add.ptr.i217, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call67, i32 0, i32 16
  %57 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %58, i32 %headroom.2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %59 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.addr, align 4
  %call74 = call ptr @skb_put(ptr noundef nonnull %call67, i32 noundef %60) #12
  %61 = getelementptr inbounds %struct.anon.43, ptr %call67, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ndev4.0223, ptr %61, align 8
  %and75 = and i32 %status.addr.1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.if.end78_crit_edge, label %if.then77

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  call void @cpsw_rx_vlan_encap(ptr noundef nonnull %call67) #12
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end73.if.end78_crit_edge
  %rx_ts_enabled = getelementptr i8, ptr %ndev4.0223, i32 2352
  %63 = ptrtoint ptr %rx_ts_enabled to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_ts_enabled, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool79.not = icmp eq i32 %64, 0
  br i1 %tobool79.not, label %if.end78.if.end81_crit_edge, label %if.then80

if.end78.if.end81_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 23
  %65 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cpts, align 8
  call void @cpts_rx_timestamp(ptr noundef %66, ptr noundef nonnull %call67) #12
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end78.if.end81_crit_edge
  %call82 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call67, ptr noundef %ndev4.0223) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call67, i32 0, i32 15, i32 0, i32 18
  %67 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %call82, ptr %protocol, align 8
  %pp_recycle.i = getelementptr inbounds %struct.sk_buff, ptr %call67, i32 0, i32 12
  %68 = ptrtoint ptr %pp_recycle.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i = load i8, ptr %pp_recycle.i, align 2
  %bf.set.i = or i8 %bf.load.i, 1
  store i8 %bf.set.i, ptr %pp_recycle.i, align 2
  %call83 = call i32 @netif_receive_skb(ptr noundef nonnull %call67) #12
  %69 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.addr, align 4
  %stats84 = getelementptr inbounds %struct.net_device, ptr %ndev4.0223, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev4.0223, i32 0, i32 36, i32 2
  %71 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_bytes, align 8
  %add85 = add i32 %72, %70
  store i32 %add85, ptr %rx_bytes, align 8
  %73 = ptrtoint ptr %stats84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %stats84, align 8
  %inc87 = add i32 %74, 1
  store i32 %inc87, ptr %stats84, align 8
  br label %requeue

requeue:                                          ; preds = %if.end81, %if.then69, %if.then48.requeue_crit_edge, %if.then45, %land.lhs.true28.requeue_crit_edge
  %75 = phi ptr [ %26, %if.then45 ], [ %26, %if.end81 ], [ %26, %if.then69 ], [ %29, %land.lhs.true28.requeue_crit_edge ], [ %26, %if.then48.requeue_crit_edge ]
  %ndev4.0222 = phi ptr [ %ndev4.0223, %if.then45 ], [ %ndev4.0223, %if.end81 ], [ %ndev4.0223, %if.then69 ], [ %ndev4.0224, %land.lhs.true28.requeue_crit_edge ], [ %ndev4.0223, %if.then48.requeue_crit_edge ]
  %new_page.0 = phi ptr [ %token, %if.then45 ], [ %call.i, %if.end81 ], [ %call.i, %if.then69 ], [ %token, %land.lhs.true28.requeue_crit_edge ], [ %call.i, %if.then48.requeue_crit_edge ]
  %call88 = call ptr @page_address(ptr noundef %new_page.0) #12
  %add.ptr89 = getelementptr i8, ptr %call88, i32 24
  %76 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ndev4.0222, ptr %add.ptr89, align 4
  %ch91 = getelementptr i8, ptr %call88, i32 28
  %77 = ptrtoint ptr %ch91 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %8, ptr %ch91, align 4
  %dma_addr.i = getelementptr inbounds %struct.page, ptr %new_page.0, i32 0, i32 1, i32 0, i32 2
  %78 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_addr.i, align 4
  %add93 = add i32 %79, 258
  %arrayidx94 = getelementptr %struct.cpsw_common, ptr %4, i32 0, i32 16, i32 %8
  %80 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx94, align 4
  %call96 = call i32 @cpdma_chan_submit_mapped(ptr noundef %81, ptr noundef %new_page.0, i32 noundef %add93, i32 noundef %6, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %requeue.cleanup128_crit_edge

requeue.cleanup128_crit_edge:                     ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.then99:                                        ; preds = %requeue
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call96)
  %cmp100 = icmp eq i32 %call96, -12
  br i1 %cmp100, label %do.end, label %if.then99.if.end120_crit_edge, !prof !302

if.then99.if.end120_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

do.end:                                           ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 449, i32 noundef 9, ptr noundef null) #12
  br label %if.end120

if.end120:                                        ; preds = %do.end, %if.then99.if.end120_crit_edge
  call void @page_pool_put_page(ptr noundef %75, ptr noundef %new_page.0, i32 noundef -1, i1 noundef zeroext true) #12
  br label %cleanup128

cleanup128:                                       ; preds = %if.end120, %requeue.cleanup128_crit_edge, %if.end33
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_split_res(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_poll(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_mq_poll(ptr noundef, i32 noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef %poll) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #12
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef %poll, i32 noundef 64) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_poll(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_mq_poll(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_probe_dual_emac(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %data2 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %3, i32 noundef 1280, i32 noundef 8, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %cpsw5 = getelementptr i8, ptr %call, i32 3468
  %4 = ptrtoint ptr %cpsw5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %cpsw5, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %add.ptr.i, align 128
  %dev7 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133
  %dev8 = getelementptr i8, ptr %call, i32 2308
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev7, ptr %dev8, align 4
  %7 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp1.i = icmp ugt i32 %7, 31
  br i1 %cmp1.i, label %if.end.netif_msg_init.exit_crit_edge, label %if.end.i

if.end.netif_msg_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp eq i32 %7, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 32767, %if.end.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 2312
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %msg_enable, align 8
  %9 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data2, align 4
  %mac_addr = getelementptr %struct.cpsw_slave_data, ptr %10, i32 1, i32 4
  %11 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_addr, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %netif_msg_init.exit.if.else_crit_edge

netif_msg_init.exit.if.else_crit_edge:            ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %netif_msg_init.exit
  %add.ptr.i.i = getelementptr %struct.cpsw_slave_data, ptr %10, i32 1, i32 4, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %or.i.i = or i32 %12, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then11

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then11:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mac_addr12 = getelementptr i8, ptr %call, i32 2316
  %16 = call ptr @memcpy(ptr %mac_addr12, ptr %mac_addr, i32 6)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.136, ptr noundef %mac_addr12) #15
  br label %if.end32

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %netif_msg_init.exit.if.else_crit_edge
  %mac_addr24 = getelementptr i8, ptr %call, i32 2316
  tail call void @get_random_bytes(ptr noundef %mac_addr24, i32 noundef 6) #12
  %19 = ptrtoint ptr %mac_addr24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mac_addr24, align 1
  %21 = and i8 %20, -4
  %22 = or i8 %21, 2
  store i8 %22, ptr %mac_addr24, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.139, ptr noundef %mac_addr24) #15
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then11
  %mac_addr33 = getelementptr i8, ptr %call, i32 2316
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %mac_addr33, i32 noundef 6) #12
  %emac_port = getelementptr i8, ptr %call, i32 3464
  %25 = ptrtoint ptr %emac_port to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %emac_port, align 8
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slaves, align 4
  %ndev36 = getelementptr %struct.cpsw_slave, ptr %27, i32 1, i32 5
  %28 = ptrtoint ptr %ndev36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %ndev36, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %29 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features, align 16
  %or = or i64 %30, 768
  store i64 %or, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %31 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cpsw_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %32 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @cpsw_ethtool_ops, ptr %ethtool_ops, align 16
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %parent, align 8
  %36 = load ptr, ptr %slaves, align 4
  %data41 = getelementptr %struct.cpsw_slave, ptr %36, i32 1, i32 3
  %37 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data41, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %of_node = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 27
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %of_node, align 16
  %call43 = tail call i32 @register_netdev(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end32.cleanup_crit_edge, label %if.end32.cleanup.sink.split_crit_edge

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end32.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.142.sink = phi ptr [ @.str.133, %entry.cleanup.sink.split_crit_edge ], [ @.str.142, %if.end32.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %entry.cleanup.sink.split_crit_edge ], [ %call43, %if.end32.cleanup.sink.split_crit_edge ]
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull %.str.142.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_misc_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_remove_dt(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data1 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef null) #12
  %cmp.not30 = icmp eq ptr %call2, null
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1.ph, %for.inc.for.body_crit_edge ]
  %slave_node.031 = phi ptr [ %call2, %for.body.lr.ph ], [ %call11, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %call4 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %slave_node.031, ptr noundef nonnull @.str.69) #12
  br i1 %call4, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call5 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %slave_node.031) #12
  br i1 %call5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @of_phy_deregister_fixed_link(ptr noundef nonnull %slave_node.031) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %phy_node = getelementptr %struct.cpsw_slave_data, ptr %5, i32 %i.033, i32 1
  %6 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %7) #12
  %inc = add i32 %i.033, 1
  %8 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %9)
  %cmp8 = icmp eq i32 %inc, %9
  br i1 %cmp8, label %cleanup, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cleanup:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @of_node_put(ptr noundef nonnull %slave_node.031) #12
  br label %for.end

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1.ph = phi i32 [ %inc, %if.end7.for.inc_crit_edge ], [ %i.033, %for.body.for.inc_crit_edge ]
  %call11 = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef nonnull %slave_node.031) #12
  %cmp.not = icmp eq ptr %call11, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_cm_get_macid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_run_xdp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_rx_vlan_encap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_rx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_open(ptr noundef %ndev) #2 align 64 {
entry:
  %coal = alloca %struct.ethtool_coalesce, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !306
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %ndev) #12
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_ch_num, align 4
  %call4 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %ndev, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end7, label %if.end.err_cleanup.sink.split_crit_edge

if.end.err_cleanup.sink.split_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_ch_num, align 8
  %call8 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %ndev, i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %if.end7.err_cleanup.sink.split_crit_edge

if.end7.err_cleanup.sink.split_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_cleanup.sink.split

if.end15:                                         ; preds = %if.end7
  %version = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 8
  %dev19 = getelementptr i8, ptr %ndev, i32 2308
  %13 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev19, align 4
  %shr = lshr i32 %12, 8
  %and = and i32 %shr, 7
  %and20 = and i32 %12, 255
  %shr21 = lshr i32 %12, 11
  %and22 = and i32 %shr21, 31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.105, i32 noundef %and, i32 noundef %and20, i32 noundef %and22) #15
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %if.then24, label %if.end15.do.body26_crit_edge

if.end15.do.body26_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cpsw_init_host_port(ptr noundef %add.ptr.i)
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %if.end15.do.body26_crit_edge
  %17 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpsw1, align 4
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %18, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not = icmp eq i8 %20, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %18, i32 0, i32 13
  %21 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %23 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %emac_port, align 8
  %add.ptr = getelementptr %struct.cpsw_slave, ptr %22, i32 %24
  tail call fastcc void @cpsw_slave_open(ptr noundef %add.ptr, ptr noundef %add.ptr.i)
  br label %if.end35

if.else:                                          ; preds = %do.body26
  %slaves32 = getelementptr inbounds %struct.cpsw_common, ptr %18, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %slaves32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slaves32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool34.not214 = icmp eq i32 %26, 0
  br i1 %tobool34.not214, label %if.else.if.end35_crit_edge, label %for.body.preheader

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

for.body.preheader:                               ; preds = %if.else
  %slaves33 = getelementptr inbounds %struct.cpsw_common, ptr %18, i32 0, i32 13
  %27 = ptrtoint ptr %slaves33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slaves33, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %n.0216 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %26, %for.body.preheader ]
  %slave.0215 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %28, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.cpsw_slave, ptr %slave.0215, i32 1
  tail call fastcc void @cpsw_slave_open(ptr noundef %slave.0215, ptr noundef %add.ptr.i)
  %dec = add i32 %n.0216, -1
  %tobool34.not = icmp eq i32 %dec, 0
  br i1 %tobool34.not, label %for.body.if.end35_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end35:                                         ; preds = %for.body.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.then30
  %dual_emac39 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %29 = ptrtoint ptr %dual_emac39 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dual_emac39, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not = icmp eq i8 %30, 0
  br i1 %tobool40.not, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cpsw_add_default_vlan(ptr noundef %add.ptr.i)
  br label %if.end45

if.else42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ale, align 4
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %default_vlan, align 4
  %call44 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %32, i16 noundef zeroext %34, i32 noundef 7, i32 noundef 7, i32 noundef 0, i32 noundef 0) #12
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then41
  %35 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool47.not = icmp eq i32 %36, 0
  br i1 %tobool47.not, label %if.then48, label %if.end45.if.end88_crit_edge

if.end45.if.end88_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then48:                                        ; preds = %if.end45
  %regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  %ptype = getelementptr inbounds %struct.cpsw_ss_regs, ptr %38, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptype, i32 0) #12, !srcloc !308
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %stat_port_en = getelementptr inbounds %struct.cpsw_ss_regs, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stat_port_en, i32 117440512) #12, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !309
  tail call void @arm_heavy_mb() #12
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %flow_control = getelementptr inbounds %struct.cpsw_ss_regs, ptr %42, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flow_control, i32 117440512) #12, !srcloc !308
  %napi_rx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 2
  tail call void @napi_enable(ptr noundef %napi_rx) #12
  %napi_tx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 3
  tail call void @napi_enable(ptr noundef %napi_tx) #12
  %tx_irq_disabled = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 20
  %43 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_irq_disabled, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool54.not = icmp eq i8 %44, 0
  br i1 %tobool54.not, label %if.then48.if.end57_crit_edge, label %if.then55

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %tx_irq_disabled, align 2
  %arrayidx = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 21, i32 1
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  tail call void @enable_irq(i32 noundef %47) #12
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then48.if.end57_crit_edge
  %rx_irq_disabled = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 19
  %48 = ptrtoint ptr %rx_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rx_irq_disabled, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool58.not = icmp eq i8 %49, 0
  br i1 %tobool58.not, label %if.end57.if.end63_crit_edge, label %if.then59

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %rx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %rx_irq_disabled, align 1
  %irqs_table61 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 21
  %51 = ptrtoint ptr %irqs_table61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irqs_table61, align 4
  tail call void @enable_irq(i32 noundef %52) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end57.if.end63_crit_edge
  %call64 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end63.err_cleanup_crit_edge, label %if.end67

if.end63.err_cleanup_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_cleanup

if.end67:                                         ; preds = %if.end63
  %call68 = tail call i32 @cpsw_fill_rx_channels(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end67.err_cleanup_crit_edge, label %if.end71

if.end67.err_cleanup_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_cleanup

if.end71:                                         ; preds = %if.end67
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %53 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cpts, align 8
  %tobool72.not = icmp eq ptr %54, null
  br i1 %tobool72.not, label %if.end71.if.end88_crit_edge, label %if.then73

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then73:                                        ; preds = %if.end71
  %call75 = tail call i32 @cpts_register(ptr noundef nonnull %54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body83, label %do.end80

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.108) #15
  br label %if.end88

do.body83:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !310
  tail call void @arm_heavy_mb() #12
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr_regs, align 4
  %misc_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %58, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %misc_en, i32 268435456) #12, !srcloc !308
  br label %if.end88

if.end88:                                         ; preds = %do.body83, %do.end80, %if.end71.if.end88_crit_edge, %if.end45.if.end88_crit_edge
  tail call fastcc void @cpsw_restore(ptr noundef %add.ptr.i)
  %coal_intvl = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %coal_intvl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %coal_intvl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp89.not = icmp eq i32 %60, 0
  br i1 %cmp89.not, label %if.end88.if.end93_crit_edge, label %if.then90

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %coal) #12
  %61 = call ptr @memset(ptr %coal, i32 255, i32 92)
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %62 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %rx_coalesce_usecs, align 4
  %call92 = call i32 @cpsw_set_coalesce(ptr noundef %ndev, ptr noundef nonnull %coal, ptr noundef null, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %coal) #12
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end88.if.end93_crit_edge
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma, align 8
  %call94 = call i32 @cpdma_ctlr_start(ptr noundef %64) #12
  call void @cpsw_intr_enable(ptr noundef %1) #12
  %65 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %usage_count, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %usage_count, align 4
  br label %cleanup

err_cleanup.sink.split:                           ; preds = %if.end7.err_cleanup.sink.split_crit_edge, %if.end.err_cleanup.sink.split_crit_edge
  %.str.102.sink = phi ptr [ @.str.99, %if.end.err_cleanup.sink.split_crit_edge ], [ @.str.102, %if.end7.err_cleanup.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call4, %if.end.err_cleanup.sink.split_crit_edge ], [ %call8, %if.end7.err_cleanup.sink.split_crit_edge ]
  %dev14 = getelementptr i8, ptr %ndev, i32 2308
  %67 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull %.str.102.sink) #15
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_cleanup.sink.split, %if.end67.err_cleanup_crit_edge, %if.end63.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call64, %if.end63.err_cleanup_crit_edge ], [ %call68, %if.end67.err_cleanup_crit_edge ], [ %ret.0.ph, %err_cleanup.sink.split ]
  %usage_count96 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %69 = ptrtoint ptr %usage_count96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %usage_count96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool97.not = icmp eq i32 %70, 0
  br i1 %tobool97.not, label %if.then98, label %err_cleanup.do.body102_crit_edge

err_cleanup.do.body102_crit_edge:                 ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body102

if.then98:                                        ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %dma99 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %71 = ptrtoint ptr %dma99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dma99, align 8
  %call100 = tail call i32 @cpdma_ctlr_stop(ptr noundef %72) #12
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %1) #12
  br label %do.body102

do.body102:                                       ; preds = %if.then98, %err_cleanup.do.body102_crit_edge
  %73 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cpsw1, align 4
  %dual_emac108 = getelementptr inbounds %struct.cpsw_common, ptr %74, i32 0, i32 1, i32 8
  %75 = ptrtoint ptr %dual_emac108 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %dual_emac108, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool109.not = icmp eq i8 %76, 0
  br i1 %tobool109.not, label %if.else114, label %if.then110

if.then110:                                       ; preds = %do.body102
  %slaves111 = getelementptr inbounds %struct.cpsw_common, ptr %74, i32 0, i32 13
  %77 = ptrtoint ptr %slaves111 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %slaves111, align 4
  %emac_port112 = getelementptr i8, ptr %ndev, i32 3464
  %79 = ptrtoint ptr %emac_port112 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %emac_port112, align 8
  %phy.i = getelementptr %struct.cpsw_slave, ptr %78, i32 %80, i32 4
  %81 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phy.i, align 4
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %if.then110.if.end125_crit_edge, label %if.end.i

if.then110.if.end125_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.end.i:                                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  %slave_num.i = getelementptr %struct.cpsw_slave, ptr %78, i32 %80, i32 1
  %83 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %slave_num.i, align 4
  %add.i.i = add i32 %84, 1
  tail call void @phy_stop(ptr noundef nonnull %82) #12
  %85 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phy.i, align 4
  tail call void @phy_disconnect(ptr noundef %86) #12
  %87 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %phy.i, align 4
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %74, i32 0, i32 17
  %88 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ale.i, align 4
  %call4.i = tail call i32 @cpsw_ale_control_set(ptr noundef %89, i32 noundef %add.i.i, i32 noundef 12, i32 noundef 0) #12
  %mac_sl.i = getelementptr %struct.cpsw_slave, ptr %78, i32 %80, i32 7
  %90 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mac_sl.i, align 4
  tail call void @cpsw_sl_reset(ptr noundef %91, i32 noundef 100) #12
  %92 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mac_sl.i, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %93) #12
  br label %if.end125

if.else114:                                       ; preds = %do.body102
  %slaves116 = getelementptr inbounds %struct.cpsw_common, ptr %74, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %slaves116 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %slaves116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool119.not217 = icmp eq i32 %95, 0
  br i1 %tobool119.not217, label %if.else114.if.end125_crit_edge, label %for.body120.lr.ph

if.else114.if.end125_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

for.body120.lr.ph:                                ; preds = %if.else114
  %slaves117 = getelementptr inbounds %struct.cpsw_common, ptr %74, i32 0, i32 13
  %96 = ptrtoint ptr %slaves117 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %slaves117, align 4
  %ale.i208 = getelementptr inbounds %struct.cpsw_common, ptr %74, i32 0, i32 17
  br label %for.body120

for.body120:                                      ; preds = %cpsw_slave_stop.exit212.for.body120_crit_edge, %for.body120.lr.ph
  %n106.0219 = phi i32 [ %95, %for.body120.lr.ph ], [ %dec123, %cpsw_slave_stop.exit212.for.body120_crit_edge ]
  %slave103.0218 = phi ptr [ %97, %for.body120.lr.ph ], [ %incdec.ptr121, %cpsw_slave_stop.exit212.for.body120_crit_edge ]
  %incdec.ptr121 = getelementptr %struct.cpsw_slave, ptr %slave103.0218, i32 1
  %phy.i204 = getelementptr inbounds %struct.cpsw_slave, ptr %slave103.0218, i32 0, i32 4
  %98 = ptrtoint ptr %phy.i204 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy.i204, align 4
  %tobool.not.i205 = icmp eq ptr %99, null
  br i1 %tobool.not.i205, label %for.body120.cpsw_slave_stop.exit212_crit_edge, label %if.end.i211

for.body120.cpsw_slave_stop.exit212_crit_edge:    ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_slave_stop.exit212

if.end.i211:                                      ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #14
  %slave_num.i206 = getelementptr inbounds %struct.cpsw_slave, ptr %slave103.0218, i32 0, i32 1
  %100 = ptrtoint ptr %slave_num.i206 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %slave_num.i206, align 4
  %add.i.i207 = add i32 %101, 1
  tail call void @phy_stop(ptr noundef nonnull %99) #12
  %102 = ptrtoint ptr %phy.i204 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %phy.i204, align 4
  tail call void @phy_disconnect(ptr noundef %103) #12
  %104 = ptrtoint ptr %phy.i204 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %phy.i204, align 4
  %105 = ptrtoint ptr %ale.i208 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ale.i208, align 4
  %call4.i209 = tail call i32 @cpsw_ale_control_set(ptr noundef %106, i32 noundef %add.i.i207, i32 noundef 12, i32 noundef 0) #12
  %mac_sl.i210 = getelementptr inbounds %struct.cpsw_slave, ptr %slave103.0218, i32 0, i32 7
  %107 = ptrtoint ptr %mac_sl.i210 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mac_sl.i210, align 4
  tail call void @cpsw_sl_reset(ptr noundef %108, i32 noundef 100) #12
  %109 = ptrtoint ptr %mac_sl.i210 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mac_sl.i210, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %110) #12
  br label %cpsw_slave_stop.exit212

cpsw_slave_stop.exit212:                          ; preds = %if.end.i211, %for.body120.cpsw_slave_stop.exit212_crit_edge
  %dec123 = add i32 %n106.0219, -1
  %tobool119.not = icmp eq i32 %dec123, 0
  br i1 %tobool119.not, label %cpsw_slave_stop.exit212.if.end125_crit_edge, label %cpsw_slave_stop.exit212.for.body120_crit_edge

cpsw_slave_stop.exit212.for.body120_crit_edge:    ; preds = %cpsw_slave_stop.exit212
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body120

cpsw_slave_stop.exit212.if.end125_crit_edge:      ; preds = %cpsw_slave_stop.exit212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.end125:                                        ; preds = %cpsw_slave_stop.exit212.if.end125_crit_edge, %if.else114.if.end125_crit_edge, %if.end.i, %if.then110.if.end125_crit_edge
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  %call.i213 = tail call i32 @__pm_runtime_idle(ptr noundef %112, i32 noundef 4) #12
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 128
  tail call void @netif_carrier_off(ptr noundef %114) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.end93, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end125 ], [ 0, %if.end93 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %land.lhs.true

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end6_crit_edge, label %do.end

land.lhs.true.do.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.117) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %land.lhs.true.do.end6_crit_edge, %entry.do.end6_crit_edge
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  tail call void @__hw_addr_ref_unsync_dev(ptr noundef %mc, ptr noundef %ndev, ptr noundef nonnull @cpsw_purge_all_mc) #12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  tail call void @netif_tx_stop_all_queues(ptr noundef %7) #12
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  tail call void @netif_carrier_off(ptr noundef %9) #12
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp slt i32 %11, 2
  br i1 %cmp, label %if.then9, label %do.end6.do.body12_crit_edge

do.end6.do.body12_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %napi_rx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %napi_rx) #12
  %napi_tx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 3
  tail call void @napi_disable(ptr noundef %napi_tx) #12
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpts, align 8
  tail call void @cpts_unregister(ptr noundef %13) #12
  tail call void @cpsw_intr_disable(ptr noundef %1) #12
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma, align 8
  %call10 = tail call i32 @cpdma_ctlr_stop(ptr noundef %15) #12
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale, align 4
  tail call void @cpsw_ale_stop(ptr noundef %17) #12
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %1) #12
  br label %do.body12

do.body12:                                        ; preds = %if.then9, %do.end6.do.body12_crit_edge
  %18 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpsw1, align 4
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %19, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.body12
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %19, i32 0, i32 13
  %22 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %24 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %emac_port, align 8
  %phy.i = getelementptr %struct.cpsw_slave, ptr %23, i32 %25, i32 4
  %26 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.then16.if.end21_crit_edge, label %if.end.i

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %slave_num.i = getelementptr %struct.cpsw_slave, ptr %23, i32 %25, i32 1
  %28 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slave_num.i, align 4
  %add.i.i = add i32 %29, 1
  tail call void @phy_stop(ptr noundef nonnull %27) #12
  %30 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy.i, align 4
  tail call void @phy_disconnect(ptr noundef %31) #12
  %32 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %phy.i, align 4
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %19, i32 0, i32 17
  %33 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ale.i, align 4
  %call4.i = tail call i32 @cpsw_ale_control_set(ptr noundef %34, i32 noundef %add.i.i, i32 noundef 12, i32 noundef 0) #12
  %mac_sl.i = getelementptr %struct.cpsw_slave, ptr %23, i32 %25, i32 7
  %35 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mac_sl.i, align 4
  tail call void @cpsw_sl_reset(ptr noundef %36, i32 noundef 100) #12
  %37 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac_sl.i, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %38) #12
  br label %if.end21

if.else:                                          ; preds = %do.body12
  %slaves18 = getelementptr inbounds %struct.cpsw_common, ptr %19, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %slaves18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slaves18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool20.not66 = icmp eq i32 %40, 0
  br i1 %tobool20.not66, label %if.else.if.end21_crit_edge, label %for.body.lr.ph

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

for.body.lr.ph:                                   ; preds = %if.else
  %slaves19 = getelementptr inbounds %struct.cpsw_common, ptr %19, i32 0, i32 13
  %41 = ptrtoint ptr %slaves19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slaves19, align 4
  %ale.i61 = getelementptr inbounds %struct.cpsw_common, ptr %19, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %cpsw_slave_stop.exit65.for.body_crit_edge, %for.body.lr.ph
  %n.068 = phi i32 [ %40, %for.body.lr.ph ], [ %dec, %cpsw_slave_stop.exit65.for.body_crit_edge ]
  %slave.067 = phi ptr [ %42, %for.body.lr.ph ], [ %incdec.ptr, %cpsw_slave_stop.exit65.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.cpsw_slave, ptr %slave.067, i32 1
  %phy.i57 = getelementptr inbounds %struct.cpsw_slave, ptr %slave.067, i32 0, i32 4
  %43 = ptrtoint ptr %phy.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy.i57, align 4
  %tobool.not.i58 = icmp eq ptr %44, null
  br i1 %tobool.not.i58, label %for.body.cpsw_slave_stop.exit65_crit_edge, label %if.end.i64

for.body.cpsw_slave_stop.exit65_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_slave_stop.exit65

if.end.i64:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %slave_num.i59 = getelementptr inbounds %struct.cpsw_slave, ptr %slave.067, i32 0, i32 1
  %45 = ptrtoint ptr %slave_num.i59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slave_num.i59, align 4
  %add.i.i60 = add i32 %46, 1
  tail call void @phy_stop(ptr noundef nonnull %44) #12
  %47 = ptrtoint ptr %phy.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy.i57, align 4
  tail call void @phy_disconnect(ptr noundef %48) #12
  %49 = ptrtoint ptr %phy.i57 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %phy.i57, align 4
  %50 = ptrtoint ptr %ale.i61 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ale.i61, align 4
  %call4.i62 = tail call i32 @cpsw_ale_control_set(ptr noundef %51, i32 noundef %add.i.i60, i32 noundef 12, i32 noundef 0) #12
  %mac_sl.i63 = getelementptr inbounds %struct.cpsw_slave, ptr %slave.067, i32 0, i32 7
  %52 = ptrtoint ptr %mac_sl.i63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mac_sl.i63, align 4
  tail call void @cpsw_sl_reset(ptr noundef %53, i32 noundef 100) #12
  %54 = ptrtoint ptr %mac_sl.i63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mac_sl.i63, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %55) #12
  br label %cpsw_slave_stop.exit65

cpsw_slave_stop.exit65:                           ; preds = %if.end.i64, %for.body.cpsw_slave_stop.exit65_crit_edge
  %dec = add i32 %n.068, -1
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %cpsw_slave_stop.exit65.if.end21_crit_edge, label %cpsw_slave_stop.exit65.for.body_crit_edge

cpsw_slave_stop.exit65.for.body_crit_edge:        ; preds = %cpsw_slave_stop.exit65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cpsw_slave_stop.exit65.if.end21_crit_edge:        ; preds = %cpsw_slave_stop.exit65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %cpsw_slave_stop.exit65.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.end.i, %if.then16.if.end21_crit_edge
  %call24 = tail call i32 @cpsw_need_resplit(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end21.if.end27_crit_edge, label %if.then26

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cpsw_split_res(ptr noundef %1) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  %56 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %usage_count, align 4
  %dec29 = add i32 %57, -1
  store i32 %dec29, ptr %usage_count, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_start_xmit(ptr noundef %skb, ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp.i.i = icmp ult i32 %3, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge, !prof !302

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 60, %3
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %do.body

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !311

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !312
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %9, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end11

do.body:                                          ; preds = %if.then.i.i
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 8
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end10_crit_edge, label %land.lhs.true

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %do.end

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.119) #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %land.lhs.true.do.end10_crit_edge, %do.body.do.end10_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %14 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end11:                                         ; preds = %__skb_put.exit.i.i, %entry.if.end11_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_flags, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not = icmp eq i8 %20, 0
  br i1 %tobool14.not, label %if.end11.if.end25_crit_edge, label %land.lhs.true15

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true15:                                  ; preds = %if.end11
  %tx_ts_enabled = getelementptr i8, ptr %ndev, i32 2348
  %21 = ptrtoint ptr %tx_ts_enabled to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_ts_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not = icmp eq i32 %22, 0
  br i1 %tobool16.not, label %land.lhs.true15.if.end25_crit_edge, label %land.lhs.true17

land.lhs.true15.if.end25_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %call.i = tail call i32 @ptp_classify_raw(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %land.lhs.true17.if.end25_crit_edge, label %if.then20

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i, align 4
  %tx_flags22 = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %tx_flags22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_flags22, align 1
  %27 = or i8 %26, 4
  store i8 %27, ptr %tx_flags22, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true17.if.end25_crit_edge, %land.lhs.true15.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %28 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %queue_mapping.i, align 8
  %conv27 = zext i16 %29 to i32
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %30 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_ch_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv27)
  %cmp.not = icmp sgt i32 %31, %conv27
  br i1 %cmp.not, label %if.end25.if.end31_crit_edge, label %if.then29

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %rem = srem i32 %conv27, %31
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  %q_idx.0 = phi i32 [ %rem, %if.then29 ], [ %conv27, %if.end25.if.end31_crit_edge ]
  %arrayidx = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 15, i32 %q_idx.0
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %35, i32 %q_idx.0
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_flags.i, align 1
  %40 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.end31.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end31.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end31.skb_tx_timestamp.exit_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len1.i.i, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %45 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %emac_port, align 8
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %47 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dual_emac, align 2, !range !303
  %49 = zext i8 %48 to i32
  %add = add i32 %46, %49
  %call36 = tail call i32 @cpdma_chan_submit(ptr noundef %33, ptr noundef %skb, ptr noundef %42, i32 noundef %44, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end57, label %do.body42, !prof !311

do.body42:                                        ; preds = %skb_tx_timestamp.exit
  %msg_enable43 = getelementptr i8, ptr %ndev, i32 2312
  %50 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_enable43, align 8
  %and44 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.fail_crit_edge, label %land.lhs.true46

do.body42.fail_crit_edge:                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

land.lhs.true46:                                  ; preds = %do.body42
  %call47 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.fail_crit_edge, label %do.end52

land.lhs.true46.fail_crit_edge:                   ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

do.end52:                                         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  %dev53 = getelementptr i8, ptr %ndev, i32 2308
  %52 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.122) #15
  br label %fail

if.end57:                                         ; preds = %skb_tx_timestamp.exit
  %call58 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %33) #12
  br i1 %call58, label %if.end57.cleanup_crit_edge, label %if.then67, !prof !311

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then67:                                        ; preds = %if.end57
  %state.i = getelementptr %struct.netdev_queue, ptr %35, i32 %q_idx.0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !313
  %call74 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %33) #12
  br i1 %call74, label %if.then75, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then75:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #12
  br label %cleanup

fail:                                             ; preds = %do.end52, %land.lhs.true46.fail_crit_edge, %do.body42.fail_crit_edge
  %tx_dropped79 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %54 = ptrtoint ptr %tx_dropped79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_dropped79, align 4
  %inc80 = add i32 %55, 1
  store i32 %inc80, ptr %tx_dropped79, align 4
  %state.i126 = getelementptr %struct.netdev_queue, ptr %35, i32 %q_idx.0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i126) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !314
  %call87 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %33) #12
  br i1 %call87, label %if.then88, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then88:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %fail.cleanup_crit_edge, %if.then75, %if.then67.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ 1, %do.end10 ], [ 0, %if.then67.cleanup_crit_edge ], [ 0, %if.then75 ], [ 0, %if.end57.cleanup_crit_edge ], [ 16, %if.then88 ], [ 16, %fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_ndo_set_rx_mode(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %4 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emac_port, align 8
  %add = add i32 %5, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %slave_port.0 = phi i32 [ %add, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cpsw_set_promiscious(ptr noundef %ndev, i1 noundef zeroext true)
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ale, align 4
  tail call void @cpsw_ale_set_allmulti(ptr noundef %9, i32 noundef 512, i32 noundef %slave_port.0) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @cpsw_set_promiscious(ptr noundef %ndev, i1 noundef zeroext false)
  %ale5 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %ale5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ale5, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and7 = and i32 %13, 512
  tail call void @cpsw_ale_set_allmulti(ptr noundef %11, i32 noundef %and7, i32 noundef %slave_port.0) #12
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %call8 = tail call i32 @__hw_addr_ref_sync_dev(ptr noundef %mc, ptr noundef %ndev, ptr noundef nonnull @cpsw_add_mc_addr, ptr noundef nonnull @cpsw_del_mc_addr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then4.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !306
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end6.if.end8_crit_edge, label %if.then7

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %16 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %emac_port, align 8
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %15, i32 %17, i32 6
  %18 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_vlan, align 4
  %conv = trunc i32 %19 to i16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6.if.end8_crit_edge
  %flags.0 = phi i32 [ 8, %if.then7 ], [ 0, %if.end6.if.end8_crit_edge ]
  %vid.0 = phi i16 [ %conv, %if.then7 ], [ 0, %if.end6.if.end8_crit_edge ]
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr i8, ptr %ndev, i32 2316
  %call10 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %21, ptr noundef %mac_addr, i32 noundef 0, i32 noundef %flags.0, i16 noundef zeroext %vid.0) #12
  %22 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ale, align 4
  %call14 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %23, ptr noundef %sa_data, i32 noundef 0, i32 noundef %flags.0, i16 noundef zeroext %vid.0) #12
  %24 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 6)
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #12
  %25 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpsw1, align 4
  %dual_emac24 = getelementptr inbounds %struct.cpsw_common, ptr %26, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %dual_emac24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dual_emac24, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool25.not = icmp eq i8 %28, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %slaves27 = getelementptr inbounds %struct.cpsw_common, ptr %26, i32 0, i32 13
  %29 = ptrtoint ptr %slaves27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slaves27, align 4
  %emac_port28 = getelementptr i8, ptr %ndev, i32 3464
  %31 = ptrtoint ptr %emac_port28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %emac_port28, align 8
  %add.ptr = getelementptr %struct.cpsw_slave, ptr %30, i32 %32
  tail call void @cpsw_set_slave_mac(ptr noundef %add.ptr, ptr noundef %add.ptr.i) #12
  br label %if.end33

if.else:                                          ; preds = %if.end8
  %slaves30 = getelementptr inbounds %struct.cpsw_common, ptr %26, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %slaves30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slaves30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool32.not66 = icmp eq i32 %34, 0
  br i1 %tobool32.not66, label %if.else.if.end33_crit_edge, label %for.body.preheader

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.body.preheader:                               ; preds = %if.else
  %slaves31 = getelementptr inbounds %struct.cpsw_common, ptr %26, i32 0, i32 13
  %35 = ptrtoint ptr %slaves31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slaves31, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %n.068 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %34, %for.body.preheader ]
  %slave.067 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %36, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.cpsw_slave, ptr %slave.067, i32 1
  tail call void @cpsw_set_slave_mac(ptr noundef %slave.067, ptr noundef %add.ptr.i) #12
  %dec = add i32 %n.068, -1
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %for.body.if.end33_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %for.body.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.then26
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %call.i65 = tail call i32 @__pm_runtime_idle(ptr noundef %38, i32 noundef 5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end11.i.i.i.i, %if.then4.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call.i, %if.then4.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ndo_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_add_vid(ptr noundef %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %conv = zext i16 %vid to i32
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %default_vlan, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %vid)
  %cmp = icmp eq i16 %3, %vid
  br i1 %cmp, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then7.cleanup27_crit_edge, label %do.end11.i.i.i.i

if.then7.cleanup27_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

do.end11.i.i.i.i:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !306
  br label %cleanup27

if.end9:                                          ; preds = %if.end
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end9.do.end_crit_edge, label %for.cond.preheader

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.cond.preheader:                               ; preds = %if.end9
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1349.not = icmp eq i32 %12, 0
  br i1 %cmp1349.not, label %for.cond.preheader.do.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves16 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %slaves16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slaves16, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.cond.do.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %14, i32 %i.050, i32 6
  %15 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_vlan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp17 = icmp eq i32 %16, %conv
  br i1 %cmp17, label %for.body.err_crit_edge, label %for.cond

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge, %if.end9.do.end_crit_edge
  %dev22 = getelementptr i8, ptr %ndev, i32 2308
  %17 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.128, i32 noundef %conv) #15
  %19 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpsw1, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %20, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %23 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %emac_port.i, align 8
  %add.i = add i32 %24, 1
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl.i, 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 128
  %flags.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %28, 9
  %and.lobit.i = and i32 %and.i, 1
  br label %if.end11.i

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 128
  %flags5.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags5.i, align 8
  %and6.i = and i32 %32, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %..i = select i1 %tobool7.not.i, i32 6, i32 7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then.i
  %unreg_mcast_mask.0.i = phi i32 [ %and.lobit.i, %if.then.i ], [ %..i, %if.else.i ]
  %mcast_mask.0.i = phi i32 [ 1, %if.then.i ], [ 7, %if.else.i ]
  %port_mask.0.i = phi i32 [ %or.i, %if.then.i ], [ 7, %if.else.i ]
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %20, i32 0, i32 17
  %33 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ale.i, align 4
  %call.i45 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %34, i16 noundef zeroext %vid, i32 noundef %port_mask.0.i, i32 noundef 0, i32 noundef %port_mask.0.i, i32 noundef %unreg_mcast_mask.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.not.i = icmp eq i32 %call.i45, 0
  br i1 %cmp.not.i, label %if.end13.i, label %if.end11.i.err_crit_edge

if.end11.i.err_crit_edge:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end13.i:                                       ; preds = %if.end11.i
  %35 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ale.i, align 4
  %mac_addr.i = getelementptr i8, ptr %ndev, i32 2316
  %call15.i = tail call i32 @cpsw_ale_add_ucast(ptr noundef %36, ptr noundef %mac_addr.i, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.not.i, label %if.end18.i, label %if.end13.i.clean_vid.i_crit_edge

if.end13.i.clean_vid.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clean_vid.i

if.end18.i:                                       ; preds = %if.end13.i
  %37 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ale.i, align 4
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 128
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 99
  %call22.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %38, ptr noundef %broadcast.i, i32 noundef %mcast_mask.0.i, i32 noundef 8, i16 noundef zeroext %vid, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.not.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.not.i, label %if.end18.i.err_crit_edge, label %clean_vlan_ucast.i

if.end18.i.err_crit_edge:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

clean_vlan_ucast.i:                               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale.i, align 4
  %call29.i = tail call i32 @cpsw_ale_del_ucast(ptr noundef %42, ptr noundef %mac_addr.i, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #12
  br label %clean_vid.i

clean_vid.i:                                      ; preds = %clean_vlan_ucast.i, %if.end13.i.clean_vid.i_crit_edge
  %ret.0.i = phi i32 [ %call15.i, %if.end13.i.clean_vid.i_crit_edge ], [ %call22.i, %clean_vlan_ucast.i ]
  %43 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ale.i, align 4
  %call31.i = tail call i32 @cpsw_ale_del_vlan(ptr noundef %44, i16 noundef zeroext %vid, i32 noundef 0) #12
  br label %err

err:                                              ; preds = %clean_vid.i, %if.end18.i.err_crit_edge, %if.end11.i.err_crit_edge, %for.body.err_crit_edge
  %ret.1 = phi i32 [ %ret.0.i, %clean_vid.i ], [ %call.i45, %if.end11.i.err_crit_edge ], [ 0, %if.end18.i.err_crit_edge ], [ -22, %for.body.err_crit_edge ]
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %call.i46 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #12
  br label %cleanup27

cleanup27:                                        ; preds = %err, %do.end11.i.i.i.i, %if.then7.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %entry.cleanup27_crit_edge ], [ %call.i, %if.then7.cleanup27_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_kill_vid(ptr noundef %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %conv = zext i16 %vid to i32
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %default_vlan, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %vid)
  %cmp = icmp eq i16 %3, %vid
  br i1 %cmp, label %entry.cleanup38_crit_edge, label %if.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then7.cleanup38_crit_edge, label %do.end11.i.i.i.i

if.then7.cleanup38_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

do.end11.i.i.i.i:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !306
  br label %cleanup38

if.end9:                                          ; preds = %if.end
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end9.do.end_crit_edge, label %for.cond.preheader

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.cond.preheader:                               ; preds = %if.end9
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1369.not = icmp eq i32 %12, 0
  br i1 %cmp1369.not, label %for.cond.preheader.do.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves16 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %slaves16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slaves16, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.cond.do.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %14, i32 %i.070, i32 6
  %15 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_vlan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp17 = icmp eq i32 %16, %conv
  br i1 %cmp17, label %for.body.err_crit_edge, label %for.cond

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge, %if.end9.do.end_crit_edge
  %dev22 = getelementptr i8, ptr %ndev, i32 2308
  %17 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.130, i32 noundef %conv) #15
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ale, align 4
  %call24 = tail call i32 @cpsw_ale_del_vlan(ptr noundef %20, i16 noundef zeroext %vid, i32 noundef 0) #12
  %21 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr i8, ptr %ndev, i32 2316
  %call26 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %22, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #12
  %or = or i32 %call26, %call24
  %23 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ale, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 128
  %broadcast = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 99
  %call30 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %24, ptr noundef %broadcast, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #12
  %or31 = or i32 %or, %call30
  %27 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale, align 4
  %call34 = tail call i32 @cpsw_ale_flush_multicast(ptr noundef %28, i32 noundef 1, i32 noundef %conv) #12
  %or35 = or i32 %or31, %call34
  br label %err

err:                                              ; preds = %do.end, %for.body.err_crit_edge
  %ret.0 = phi i32 [ %or35, %do.end ], [ %call.i, %for.body.err_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %call.i67 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 5) #12
  br label %cleanup38

cleanup38:                                        ; preds = %err, %do.end11.i.i.i.i, %if.then7.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry.cleanup38_crit_edge ], [ %call.i, %if.then7.cleanup38_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_ndo_poll_controller(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  tail call void @cpsw_intr_disable(ptr noundef %1) #12
  %irqs_table = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %irqs_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqs_table, align 4
  %call2 = tail call i32 @cpsw_rx_interrupt(i32 noundef %3, ptr noundef %1) #12
  %arrayidx4 = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %call5 = tail call i32 @cpsw_tx_interrupt(i32 noundef %5, ptr noundef %1) #12
  tail call void @cpsw_intr_enable(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_setup_tc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_set_tx_maxrate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_bpf(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_xdp_xmit(ptr noundef %ndev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge, !prof !311

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp26 = icmp sgt i32 %n, 0
  br i1 %cmp26, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %nxmit.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end13.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %frames, i32 %nxmit.028
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %5)
  %cmp4 = icmp ult i16 %5, 60
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %6 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %emac_port, align 8
  %8 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dual_emac, align 2, !range !303
  %10 = zext i8 %9 to i32
  %add = add i32 %7, %10
  %call10 = tail call i32 @cpsw_xdp_tx_frame(ptr noundef %add.ptr.i, ptr noundef %3, ptr noundef null, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %inc = add nuw nsw i32 %nxmit.028, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %if.end13.cleanup_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %nxmit.028, %if.end7.cleanup_crit_edge ], [ %nxmit.028, %for.body.cleanup_crit_edge ], [ %n, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_init_host_port(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %soft_reset = getelementptr inbounds %struct.cpsw_ss_regs, ptr %3, i32 0, i32 2
  tail call void @soft_reset(ptr noundef nonnull @.str, ptr noundef %soft_reset) #12
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  tail call void @cpsw_ale_start(ptr noundef %5) #12
  %6 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ale, align 4
  %call = tail call i32 @cpsw_ale_control_set(ptr noundef %7, i32 noundef 0, i32 noundef 9, i32 noundef 1) #12
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %control = getelementptr inbounds %struct.cpsw_ss_regs, ptr %9, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control) #12, !srcloc !315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !316
  %11 = or i32 %10, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !317
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %control7 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control7, i32 %11) #12, !srcloc !308
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool.not, i32 0, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !318
  tail call void @arm_heavy_mb() #12
  %host_port_regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host_port_regs, align 4
  %tx_in_ctl = getelementptr inbounds %struct.cpsw_host_regs, ptr %17, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_in_ctl, i32 %cond) #12, !srcloc !308
  %18 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_port_regs, align 4
  %cpdma_tx_pri_map = getelementptr inbounds %struct.cpsw_host_regs, ptr %19, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdma_tx_pri_map, i32 271733878) #12, !srcloc !308
  %20 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_port_regs, align 4
  %cpdma_rx_chan_map = getelementptr inbounds %struct.cpsw_host_regs, ptr %21, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdma_rx_chan_map, i32 0) #12, !srcloc !308
  %22 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ale, align 4
  %call14 = tail call i32 @cpsw_ale_control_set(ptr noundef %23, i32 noundef 0, i32 noundef 12, i32 noundef 3) #12
  %24 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not = icmp eq i8 %25, 0
  br i1 %tobool17.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 3
  %call19 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %27, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #12
  %28 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ale, align 4
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 128
  %broadcast = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 99
  %call22 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %29, ptr noundef %broadcast, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0, i32 noundef 3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_slave_open(ptr noundef %slave, ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %mac_sl = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 7
  %2 = ptrtoint ptr %mac_sl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_sl, align 4
  tail call void @cpsw_sl_reset(ptr noundef %3, i32 noundef 100) #12
  %4 = ptrtoint ptr %mac_sl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_sl, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %5) #12
  %6 = ptrtoint ptr %mac_sl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_sl, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %7, i32 noundef 9, i32 noundef 1985229328) #12
  %version = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 1638666, label %sw.bb
    i32 1638668, label %entry.sw.bb4_crit_edge
    i32 1638671, label %entry.sw.bb4_crit_edge106
    i32 1638674, label %entry.sw.bb4_crit_edge107
  ]

entry.sw.bb4_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1122867) #12, !srcloc !308
  %13 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -184549376) #12, !srcloc !308
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge106, %entry.sw.bb4_crit_edge107
  %15 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave, align 4
  %add.ptr.i102 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 1122867) #12, !srcloc !308
  %17 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave, align 4
  %add.ptr.i103 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 -184549376) #12, !srcloc !308
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %19 = ptrtoint ptr %mac_sl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac_sl, align 4
  %rx_packet_max = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_packet_max, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %20, i32 noundef 4, i32 noundef %22) #12
  tail call void @cpsw_set_slave_mac(ptr noundef %slave, ptr noundef %priv) #12
  %mac_control = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 2
  %23 = ptrtoint ptr %mac_control to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mac_control, align 4
  %slave_num = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 1
  %24 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slave_num, align 4
  %add.i = add i32 %25, 1
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %26 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  %28 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpsw1, align 4
  %version.i = getelementptr inbounds %struct.cpsw_common, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %31)
  %cmp.i = icmp eq i32 %31, 1638666
  %port_vlan.i = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 6
  %32 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_vlan.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  %35 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slave, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %34) #12, !srcloc !308
  br label %cpsw_add_dual_emac_def_ale_entries.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i30.i = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %34) #12, !srcloc !308
  br label %cpsw_add_dual_emac_def_ale_entries.exit

cpsw_add_dual_emac_def_ale_entries.exit:          ; preds = %if.else.i, %if.then.i
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl.i, 1
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %29, i32 0, i32 17
  %37 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ale.i, align 4
  %39 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_vlan.i, align 4
  %conv.i = trunc i32 %40 to i16
  %call.i = tail call i32 @cpsw_ale_add_vlan(ptr noundef %38, i16 noundef zeroext %conv.i, i32 noundef %or.i, i32 noundef %or.i, i32 noundef %or.i, i32 noundef 0) #12
  %41 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale.i, align 4
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 128
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 99
  %45 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port_vlan.i, align 4
  %conv6.i = trunc i32 %46 to i16
  %call7.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %42, ptr noundef %broadcast.i, i32 noundef 1, i32 noundef 8, i16 noundef zeroext %conv6.i, i32 noundef 0) #12
  %47 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ale.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 3
  %49 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_vlan.i, align 4
  %conv11.i = trunc i32 %50 to i16
  %call12.i = tail call i32 @cpsw_ale_add_ucast(ptr noundef %48, ptr noundef %mac_addr.i, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %conv11.i) #12
  %51 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ale.i, align 4
  %call14.i = tail call i32 @cpsw_ale_control_set(ptr noundef %52, i32 noundef %add.i, i32 noundef 14, i32 noundef 1) #12
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %53 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ale, align 4
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 128
  %broadcast = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 99
  %shl = shl nuw i32 1, %add.i
  %call6 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %54, ptr noundef %broadcast, i32 noundef %shl, i32 noundef 0, i16 noundef zeroext 0, i32 noundef 3) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %cpsw_add_dual_emac_def_ale_entries.exit
  %data7 = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 3
  %57 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data7, align 4
  %phy_node = getelementptr inbounds %struct.cpsw_slave_data, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy_node, align 4
  %tobool8.not = icmp eq ptr %60, null
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 128
  br i1 %tobool8.not, label %if.else21, label %if.then9

if.then9:                                         ; preds = %if.end
  %phy_if = getelementptr inbounds %struct.cpsw_slave_data, ptr %58, i32 0, i32 3
  %63 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy_if, align 4
  %call14 = tail call ptr @of_phy_connect(ptr noundef %62, ptr noundef nonnull %60, ptr noundef nonnull @cpsw_adjust_link, i32 noundef 0, i32 noundef %64) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.then9.if.end40_crit_edge

if.then9.if.end40_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %67 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data7, align 4
  %phy_node18 = getelementptr inbounds %struct.cpsw_slave_data, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %phy_node18 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy_node18, align 4
  %71 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %slave_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.110, ptr noundef %70, i32 noundef %72) #15
  br label %cleanup

if.else21:                                        ; preds = %if.end
  %phy_id = getelementptr inbounds %struct.cpsw_slave_data, ptr %58, i32 0, i32 2
  %phy_if26 = getelementptr inbounds %struct.cpsw_slave_data, ptr %58, i32 0, i32 3
  %73 = ptrtoint ptr %phy_if26 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %phy_if26, align 4
  %call27 = tail call ptr @phy_connect(ptr noundef %62, ptr noundef %phy_id, ptr noundef nonnull @cpsw_adjust_link, i32 noundef %74) #12
  %cmp.i104 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.end32, label %if.else21.if.end40_crit_edge

if.else21.if.end40_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end32:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  %dev33 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %75 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev33, align 4
  %77 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data7, align 4
  %phy_id35 = getelementptr inbounds %struct.cpsw_slave_data, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %slave_num, align 4
  %81 = ptrtoint ptr %call27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.113, ptr noundef %phy_id35, i32 noundef %80, i32 noundef %81) #15
  br label %cleanup

if.end40:                                         ; preds = %if.else21.if.end40_crit_edge, %if.then9.if.end40_crit_edge
  %phy.0 = phi ptr [ %call14, %if.then9.if.end40_crit_edge ], [ %call27, %if.else21.if.end40_crit_edge ]
  %phy41 = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 4
  %82 = ptrtoint ptr %phy41 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %phy.0, ptr %phy41, align 4
  tail call void @phy_attached_info(ptr noundef %phy.0) #12
  %83 = ptrtoint ptr %phy41 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy41, align 4
  tail call void @phy_start(ptr noundef %84) #12
  %85 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data7, align 4
  %ifphy = getelementptr inbounds %struct.cpsw_slave_data, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %ifphy to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ifphy, align 4
  %cmp.i105 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.else52, label %if.then46

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %phy_if50 = getelementptr inbounds %struct.cpsw_slave_data, ptr %86, i32 0, i32 3
  %89 = ptrtoint ptr %phy_if50 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %phy_if50, align 4
  %call51 = tail call i32 @phy_set_mode_ext(ptr noundef %88, i32 noundef 15, i32 noundef %90) #12
  br label %cleanup

if.else52:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  %93 = ptrtoint ptr %phy41 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %phy41, align 4
  %interface = getelementptr inbounds %struct.phy_device, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %interface, align 4
  %97 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %slave_num, align 4
  tail call void @cpsw_phy_sel(ptr noundef %92, i32 noundef %96, i32 noundef %98) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.then46, %do.end32, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_add_default_vlan(ptr nocapture noundef readonly %priv) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %default_vlan, align 4
  %conv = zext i16 %3 to i32
  %version = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %5)
  %cmp = icmp eq i32 %5, 1638666
  %cond = select i1 %cmp, i32 12, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %host_port_regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_port_regs, align 4
  %port_vlan = getelementptr inbounds %struct.cpsw_host_regs, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port_vlan, i32 %6) #12, !srcloc !308
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp418.not = icmp eq i32 %10, 0
  br i1 %cmp418.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves6 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %slaves6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slaves6, align 4
  %add.ptr = getelementptr %struct.cpsw_slave, ptr %12, i32 %i.019
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #12, !srcloc !308
  %inc = add nuw i32 %i.019, 1
  %15 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slaves, align 4
  %cmp4 = icmp ult i32 %inc, %16
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 128
  %flags = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 6, i32 7
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %21 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale, align 4
  %call = tail call i32 @cpsw_ale_add_vlan(ptr noundef %22, i16 noundef zeroext %3, i32 noundef 7, i32 noundef 7, i32 noundef 7, i32 noundef %.) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_vlan(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_create_xdp_rxqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_fill_rx_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpts_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_restore(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 128
  %call = tail call i32 @vlan_for_each(ptr noundef %1, ptr noundef nonnull @cpsw_restore_vlans, ptr noundef %priv) #12
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw1, align 4
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %8 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %emac_port, align 8
  %add.ptr = getelementptr %struct.cpsw_slave, ptr %7, i32 %9
  tail call void @cpsw_mqprio_resume(ptr noundef %add.ptr, ptr noundef %priv) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %slaves3 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %slaves3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not48 = icmp eq i32 %11, 0
  br i1 %tobool5.not48, label %if.else.if.end_crit_edge, label %for.body.preheader

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.preheader:                               ; preds = %if.else
  %slaves4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %slaves4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slaves4, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %n.050 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %slave.049 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.cpsw_slave, ptr %slave.049, i32 1
  tail call void @cpsw_mqprio_resume(ptr noundef %slave.049, ptr noundef %priv) #12
  %dec = add i32 %n.050, -1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %14 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpsw1, align 4
  %dual_emac12 = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %dual_emac12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dual_emac12, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %if.else18, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %slaves15 = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 13
  %18 = ptrtoint ptr %slaves15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves15, align 4
  %emac_port16 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %20 = ptrtoint ptr %emac_port16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %emac_port16, align 8
  %add.ptr17 = getelementptr %struct.cpsw_slave, ptr %19, i32 %21
  tail call void @cpsw_cbs_resume(ptr noundef %add.ptr17, ptr noundef %priv) #12
  br label %if.end29

if.else18:                                        ; preds = %if.end
  %slaves20 = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %slaves20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slaves20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not51 = icmp eq i32 %23, 0
  br i1 %tobool23.not51, label %if.else18.if.end29_crit_edge, label %for.body24.preheader

if.else18.if.end29_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

for.body24.preheader:                             ; preds = %if.else18
  %slaves21 = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 13
  %24 = ptrtoint ptr %slaves21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slaves21, align 4
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.preheader
  %n10.053 = phi i32 [ %dec27, %for.body24.for.body24_crit_edge ], [ %23, %for.body24.preheader ]
  %slave7.052 = phi ptr [ %incdec.ptr25, %for.body24.for.body24_crit_edge ], [ %25, %for.body24.preheader ]
  %incdec.ptr25 = getelementptr %struct.cpsw_slave, ptr %slave7.052, i32 1
  tail call void @cpsw_cbs_resume(ptr noundef %slave7.052, ptr noundef %priv) #12
  %dec27 = add i32 %n10.053, -1
  %tobool23.not = icmp eq i32 %dec27, 0
  br i1 %tobool23.not, label %for.body24.if.end29_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

for.body24.if.end29_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %for.body24.if.end29_crit_edge, %if.else18.if.end29_crit_edge, %if.then14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_destroy_xdp_rxqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_ctl_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_slave_mac(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_adjust_link(ptr noundef %ndev) #2 align 64 {
entry:
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #12
  %2 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %link, align 1
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %7 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %emac_port, align 8
  %add.ptr = getelementptr %struct.cpsw_slave, ptr %6, i32 %8
  call fastcc void @_cpsw_adjust_link(ptr noundef %add.ptr, ptr noundef %add.ptr.i, ptr noundef nonnull %link)
  br label %if.end

if.else:                                          ; preds = %entry
  %slaves5 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %slaves5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slaves5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not33 = icmp eq i32 %10, 0
  br i1 %tobool7.not33, label %if.else.if.end_crit_edge, label %for.body.preheader

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.preheader:                               ; preds = %if.else
  %slaves6 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %slaves6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slaves6, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %n.035 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %10, %for.body.preheader ]
  %slave.034 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %12, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.cpsw_slave, ptr %slave.034, i32 1
  call fastcc void @_cpsw_adjust_link(ptr noundef %slave.034, ptr noundef %add.ptr.i, ptr noundef nonnull %link)
  %dec = add i32 %n.035, -1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %13 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %link, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.else17, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @cpsw_need_resplit(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end13_crit_edge, label %if.then12

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cpsw_split_res(ptr noundef %1) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9.if.end13_crit_edge
  tail call void @netif_carrier_on(ptr noundef %ndev) #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %17 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.not.i = icmp eq i32 %18, 0
  br i1 %cmp4.not.i, label %if.then15.if.end18_crit_edge, label %for.body.lr.ph.i

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.body.lr.ph.i:                                 ; preds = %if.then15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %20, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #12
  %inc.i = add nuw i32 %i.05.i, 1
  %21 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end18_crit_edge

for.body.i.if.end18_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %ndev) #12
  tail call void @netif_tx_stop_all_queues(ptr noundef %ndev) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %for.body.i.if.end18_crit_edge, %if.then15.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_phy_sel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_cpsw_adjust_link(ptr nocapture noundef %slave, ptr noundef %priv, ptr nocapture noundef writeonly %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 4
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %cpsw2 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave_num = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 1
  %4 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slave_num, align 4
  %add.i = add i32 %5, 1
  %link3 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %link3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %link3, align 8
  %7 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  br i1 %tobool4.not, label %if.else47, label %if.then5

if.then5:                                         ; preds = %if.end
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %9)
  %cmp = icmp eq i32 %9, 1000
  %spec.select = select i1 %cmp, i32 160, i32 32
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp ne i32 %11, 0
  %or10 = zext i1 %tobool8.not to i32
  %mac_control.1 = or i32 %spec.select, %or10
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %9, label %if.then5.if.end22_crit_edge [
    i32 100, label %if.then14
    i32 10, label %land.lhs.true
  ]

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then14:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %or15 = or i32 %mac_control.1, 32768
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %interface.i, align 4
  %15 = add i32 %14, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %16 = icmp ult i32 %15, 4
  %or20 = or i32 %mac_control.1, 262144
  %spec.select96 = select i1 %16, i32 %or20, i32 %mac_control.1
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.then14, %if.then5.if.end22_crit_edge
  %mac_control.2 = phi i32 [ %or15, %if.then14 ], [ %mac_control.1, %if.then5.if.end22_crit_edge ], [ %spec.select96, %land.lhs.true ]
  %rx_pause = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 4
  %17 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rx_pause, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  %or25 = or i32 %mac_control.2, 8
  %spec.select97 = select i1 %tobool23.not, i32 %mac_control.2, i32 %or25
  %tx_pause = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 5
  %19 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_pause, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool27.not = icmp eq i8 %20, 0
  %or29 = or i32 %spec.select97, 16
  %mac_control.4 = select i1 %tobool27.not, i32 %spec.select97, i32 %or29
  %mac_control31 = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 2
  %21 = ptrtoint ptr %mac_control31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mac_control31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mac_control.4, i32 %22)
  %cmp32.not = icmp eq i32 %mac_control.4, %22
  br i1 %cmp32.not, label %if.end22.if.end35_crit_edge, label %if.then33

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %mac_sl = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 7
  %23 = ptrtoint ptr %mac_sl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac_sl, align 4
  %call34 = tail call i32 @cpsw_sl_ctl_set(ptr noundef %24, i32 noundef %mac_control.4) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end22.if.end35_crit_edge
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %25 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ale, align 4
  %call36 = tail call i32 @cpsw_ale_control_set(ptr noundef %26, i32 noundef %add.i, i32 noundef 12, i32 noundef 3) #12
  %27 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %link, align 1
  %shp_cfg_speed = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 8
  %28 = ptrtoint ptr %shp_cfg_speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shp_cfg_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  br i1 %tobool37.not, label %if.end35.if.end53_crit_edge, label %land.lhs.true38

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true38:                                  ; preds = %if.end35
  %30 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy1, align 4
  %speed41 = getelementptr inbounds %struct.phy_device, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %speed41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %speed41, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %33)
  %cmp42.not = icmp eq i32 %29, %33
  br i1 %cmp42.not, label %land.lhs.true38.if.end53_crit_edge, label %land.lhs.true43

land.lhs.true38.if.end53_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %call44 = tail call zeroext i1 @cpsw_shp_is_off(ptr noundef %priv) #12
  br i1 %call44, label %land.lhs.true43.if.end53_crit_edge, label %do.end

land.lhs.true43.if.end53_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.end:                                           ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.115) #15
  br label %if.end53

if.else47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ale48 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %36 = ptrtoint ptr %ale48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ale48, align 4
  %call49 = tail call i32 @cpsw_ale_control_set(ptr noundef %37, i32 noundef %add.i, i32 noundef 12, i32 noundef 0) #12
  %mac_sl50 = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 7
  %38 = ptrtoint ptr %mac_sl50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac_sl50, align 4
  %call51 = tail call i32 @cpsw_sl_wait_for_idle(ptr noundef %39, i32 noundef 100) #12
  %40 = ptrtoint ptr %mac_sl50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mac_sl50, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %41) #12
  br label %if.end53

if.end53:                                         ; preds = %if.else47, %do.end, %land.lhs.true43.if.end53_crit_edge, %land.lhs.true38.if.end53_crit_edge, %if.end35.if.end53_crit_edge
  %mac_control.5 = phi i32 [ %mac_control.4, %land.lhs.true43.if.end53_crit_edge ], [ %mac_control.4, %do.end ], [ %mac_control.4, %land.lhs.true38.if.end53_crit_edge ], [ %mac_control.4, %if.end35.if.end53_crit_edge ], [ 0, %if.else47 ]
  %mac_control54 = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 2
  %42 = ptrtoint ptr %mac_control54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mac_control54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mac_control.5, i32 %43)
  %cmp55.not = icmp eq i32 %mac_control.5, %43
  br i1 %cmp55.not, label %if.end53.if.end57_crit_edge, label %if.then56

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_print_status(ptr noundef nonnull %1) #12
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53.if.end57_crit_edge
  %44 = ptrtoint ptr %mac_control54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mac_control.5, ptr %mac_control54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_need_resplit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpsw_shp_is_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_wait_for_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_restore_vlans(ptr noundef readnone %vdev, i32 noundef %vid, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 128
  %conv = trunc i32 %vid to i16
  %call = tail call i32 @cpsw_ndo_vlan_rx_add_vid(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_mqprio_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_cbs_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_ref_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_purge_all_mc(ptr noundef %ndev, ptr noundef %addr, i32 noundef %num) #2 align 64 {
entry:
  %sync_ctx = alloca %struct.addr_sync_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sync_ctx) #12
  %0 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %sync_ctx, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %0, align 4
  %5 = ptrtoint ptr %sync_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %sync_ctx, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %call = call i32 @vlan_for_each(ptr noundef %ndev, ptr noundef nonnull @cpsw_purge_vlan_mc, ptr noundef nonnull %sync_ctx) #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %num)
  %cmp = icmp slt i32 %8, %num
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %9 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw1.i, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.if.end3.thread.i_crit_edge, label %if.then2.i

if.then.if.end3.thread.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.then2.i:                                       ; preds = %if.then
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %13 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slaves.i, align 4
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %15 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %emac_port.i, align 8
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %14, i32 %16, i32 6
  %17 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i, label %if.then2.i.if.end3.thread.i_crit_edge, label %if.then2.i.cpsw_set_mc.exit_crit_edge

if.then2.i.cpsw_set_mc.exit_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_set_mc.exit

if.then2.i.if.end3.thread.i_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.then2.i.if.end3.thread.i_crit_edge, %if.then.if.end3.thread.i_crit_edge
  br label %cpsw_set_mc.exit

cpsw_set_mc.exit:                                 ; preds = %if.end3.thread.i, %if.then2.i.cpsw_set_mc.exit_crit_edge
  %vid.addr.029.i = phi i32 [ 0, %if.end3.thread.i ], [ %18, %if.then2.i.cpsw_set_mc.exit_crit_edge ]
  %19 = phi i32 [ 0, %if.end3.thread.i ], [ 8, %if.then2.i.cpsw_set_mc.exit_crit_edge ]
  %ale13.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 17
  %20 = ptrtoint ptr %ale13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale13.i, align 4
  %conv14.i = trunc i32 %vid.addr.029.i to i16
  %call15.i = call i32 @cpsw_ale_del_mcast(ptr noundef %21, ptr noundef %addr, i32 noundef 0, i32 noundef %19, i16 noundef zeroext %conv14.i) #12
  br label %if.end

if.end:                                           ; preds = %cpsw_set_mc.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sync_ctx) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_purge_vlan_mc(ptr noundef readonly %vdev, i32 noundef %vid, ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mc = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 66
  %addr5 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ha.0.in = phi ptr [ %mc, %if.end ], [ %ha.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ha.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.0 = load ptr, ptr %ha.0.in, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %3 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr5, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %xor.i = xor i32 %8, %6
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then6:                                         ; preds = %for.body
  %sync_cnt = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 5
  %13 = ptrtoint ptr %sync_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sync_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %phi.cmp = icmp eq i32 %14, 0
  br i1 %phi.cmp, label %if.then6.cleanup_crit_edge, label %if.end15

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.then6
  %consumed = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 2
  %15 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %consumed, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %consumed, align 4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %cpsw1.i = getelementptr i8, ptr %18, i32 3468
  %19 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpsw1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid)
  %cmp.i29 = icmp slt i32 %vid, 0
  br i1 %cmp.i29, label %if.then.i, label %if.end15.if.end3.i_crit_edge

if.end15.if.end3.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end15
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %20, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then.i.if.end3.thread.i_crit_edge, label %if.then2.i

if.then.i.if.end3.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %20, i32 0, i32 13
  %23 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slaves.i, align 4
  %emac_port.i = getelementptr i8, ptr %18, i32 3464
  %25 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %emac_port.i, align 8
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %24, i32 %26, i32 6
  %27 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_vlan.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end15.if.end3.i_crit_edge
  %vid.addr.0.i = phi i32 [ %28, %if.then2.i ], [ %vid, %if.end15.if.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid.addr.0.i)
  %tobool7.not.i = icmp eq i32 %vid.addr.0.i, 0
  br i1 %tobool7.not.i, label %if.end3.i.if.end3.thread.i_crit_edge, label %if.end3.i.cpsw_set_mc.exit_crit_edge

if.end3.i.cpsw_set_mc.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_set_mc.exit

if.end3.i.if.end3.thread.i_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.end3.i.if.end3.thread.i_crit_edge, %if.then.i.if.end3.thread.i_crit_edge
  br label %cpsw_set_mc.exit

cpsw_set_mc.exit:                                 ; preds = %if.end3.thread.i, %if.end3.i.cpsw_set_mc.exit_crit_edge
  %vid.addr.029.i = phi i32 [ 0, %if.end3.thread.i ], [ %vid.addr.0.i, %if.end3.i.cpsw_set_mc.exit_crit_edge ]
  %29 = phi i32 [ 0, %if.end3.thread.i ], [ 8, %if.end3.i.cpsw_set_mc.exit_crit_edge ]
  %ale13.i = getelementptr inbounds %struct.cpsw_common, ptr %20, i32 0, i32 17
  %30 = ptrtoint ptr %ale13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ale13.i, align 4
  %conv14.i = trunc i32 %vid.addr.029.i to i16
  %call15.i = tail call i32 @cpsw_ale_del_mcast(ptr noundef %31, ptr noundef %4, i32 noundef 0, i32 noundef %29, i16 noundef zeroext %conv14.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cpsw_set_mc.exit, %if.then6.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpdma_check_free_tx_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_set_promiscious(ptr noundef %ndev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %ale2 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ale2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ale2, align 4
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else45, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp176.not = icmp eq i32 %7, 0
  br i1 %cmp176.not, label %for.cond.preheader.if.end11_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves4 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %slaves4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slaves4, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %flag.0.off0177 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %ndev5 = getelementptr %struct.cpsw_slave, ptr %9, i32 %i.0178, i32 5
  %10 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev5, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp ne i32 %and, 0
  %spec.select = select i1 %tobool6.not, i1 true, i1 %flag.0.off0177
  %inc = add nuw i32 %i.0178, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = xor i1 %spec.select, true
  %brmerge = select i1 %enable, i1 true, i1 %phi.bo
  br i1 %brmerge, label %for.end.if.end11_crit_edge, label %if.then10

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.124) #15
  br label %if.then13

if.end11:                                         ; preds = %for.end.if.end11_crit_edge, %for.cond.preheader.if.end11_crit_edge
  br i1 %enable, label %if.end11.if.then13_crit_edge, label %if.else

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.then10
  %call14 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 7, i32 noundef 1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_set_promiscious, %if.then21)) #12
          to label %if.end126 [label %if.then21], !srcloc !307

if.then21:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %dev22 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug514, ptr noundef %dev22, ptr noundef nonnull @.str.126) #12
  br label %if.end126

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 7, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_set_promiscious, %if.then39)) #12
          to label %if.end126 [label %if.then39], !srcloc !307

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dev40 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug515, ptr noundef %dev40, ptr noundef nonnull @.str.127) #12
  br label %if.end126

if.else45:                                        ; preds = %entry
  br i1 %enable, label %if.then47, label %if.else96

if.then47:                                        ; preds = %if.else45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %slaves50 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %if.then47
  %i.1180 = phi i32 [ 0, %if.then47 ], [ %inc56, %for.body52.for.body52_crit_edge ]
  %call53 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef %i.1180, i32 noundef 15, i32 noundef 1) #12
  %call54 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef %i.1180, i32 noundef 16, i32 noundef 1) #12
  %inc56 = add i32 %i.1180, 1
  %15 = ptrtoint ptr %slaves50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slaves50, align 4
  %cmp51.not = icmp ugt i32 %inc56, %16
  br i1 %cmp51.not, label %for.end57, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body52

for.end57:                                        ; preds = %for.body52
  %call58 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 2, i32 noundef 1) #12
  %add.neg = sub i32 -100, %14
  br label %do.body59

do.body59:                                        ; preds = %do.cond73.do.body59_crit_edge, %for.end57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !320
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !321
  %call69 = tail call i32 @cpsw_ale_control_get(ptr noundef %3, i32 noundef 0, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.cond73, label %do.body59.do.end75_crit_edge

do.body59.do.end75_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end75

do.cond73:                                        ; preds = %do.body59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %17
  %cmp74 = icmp slt i32 %sub, 0
  br i1 %cmp74, label %do.cond73.do.body59_crit_edge, label %do.cond73.do.end75_crit_edge

do.cond73.do.end75_crit_edge:                     ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end75

do.cond73.do.body59_crit_edge:                    ; preds = %do.cond73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

do.end75:                                         ; preds = %do.cond73.do.end75_crit_edge, %do.body59.do.end75_crit_edge
  %call76 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 2, i32 noundef 1) #12
  %call77 = tail call i32 @cpsw_ale_flush_multicast(ptr noundef %3, i32 noundef 7, i32 noundef -1) #12
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  tail call void @__hw_addr_ref_unsync_dev(ptr noundef %mc, ptr noundef %ndev, ptr noundef null) #12
  %call78 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 3, i32 noundef 1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_set_promiscious, %if.then91)) #12
          to label %if.end126 [label %if.then91], !srcloc !307

if.then91:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #14
  %dev92 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug516, ptr noundef %dev92, ptr noundef nonnull @.str.126) #12
  br label %if.end126

if.else96:                                        ; preds = %if.else45
  %call97 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 3, i32 noundef 0) #12
  %slaves100 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %if.else96
  %i.2179 = phi i32 [ 0, %if.else96 ], [ %inc106, %for.body102.for.body102_crit_edge ]
  %call103 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef %i.2179, i32 noundef 15, i32 noundef 0) #12
  %call104 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef %i.2179, i32 noundef 16, i32 noundef 0) #12
  %inc106 = add i32 %i.2179, 1
  %18 = ptrtoint ptr %slaves100 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slaves100, align 4
  %cmp101.not = icmp ugt i32 %inc106, %19
  br i1 %cmp101.not, label %do.body108, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body102

do.body108:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_set_promiscious, %if.then120)) #12
          to label %if.end126 [label %if.then120], !srcloc !307

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #14
  %dev121 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug517, ptr noundef %dev121, ptr noundef nonnull @.str.127) #12
  br label %if.end126

if.end126:                                        ; preds = %if.then120, %do.body108, %if.then91, %do.end75, %if.then39, %if.else, %if.then21, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_set_allmulti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_ref_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_add_mc_addr(ptr noundef %ndev, ptr noundef %addr, i32 noundef %num) #2 align 64 {
entry:
  %sync_ctx = alloca %struct.addr_sync_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sync_ctx) #12
  %0 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %1, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %0, align 4
  %5 = ptrtoint ptr %sync_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %sync_ctx, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  %call = call i32 @vlan_for_each(ptr noundef %ndev, ptr noundef nonnull @cpsw_update_vlan_mc, ptr noundef nonnull %sync_ctx) #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %num)
  %cmp = icmp slt i32 %8, %num
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %9 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw1.i, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.if.end3.thread.i_crit_edge, label %if.then2.i

if.then.if.end3.thread.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.then2.i:                                       ; preds = %if.then
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %13 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slaves.i, align 4
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %15 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %emac_port.i, align 8
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %14, i32 %16, i32 6
  %17 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i, label %if.then2.i.if.end3.thread.i_crit_edge, label %if.then2.i.cpsw_set_mc.exit_crit_edge

if.then2.i.cpsw_set_mc.exit_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_set_mc.exit

if.then2.i.if.end3.thread.i_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.then2.i.if.end3.thread.i_crit_edge, %if.then.if.end3.thread.i_crit_edge
  br label %cpsw_set_mc.exit

cpsw_set_mc.exit:                                 ; preds = %if.end3.thread.i, %if.then2.i.cpsw_set_mc.exit_crit_edge
  %vid.addr.029.i = phi i32 [ 0, %if.end3.thread.i ], [ %18, %if.then2.i.cpsw_set_mc.exit_crit_edge ]
  %19 = phi i32 [ 0, %if.end3.thread.i ], [ 8, %if.then2.i.cpsw_set_mc.exit_crit_edge ]
  %cond.i = select i1 %tobool.not.i, i32 7, i32 1
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 17
  %20 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale.i, align 4
  %conv.i = trunc i32 %vid.addr.029.i to i16
  %call11.i = call i32 @cpsw_ale_add_mcast(ptr noundef %21, ptr noundef %addr, i32 noundef %cond.i, i32 noundef %19, i16 noundef zeroext %conv.i, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %cpsw_set_mc.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call11.i, %cpsw_set_mc.exit ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sync_ctx) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_del_mc_addr(ptr noundef %ndev, ptr noundef %addr, i32 noundef %num) #2 align 64 {
entry:
  %sync_ctx = alloca %struct.addr_sync_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sync_ctx) #12
  %0 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %1, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %0, align 4
  %5 = ptrtoint ptr %sync_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %sync_ctx, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %2, align 4
  %call = call i32 @vlan_for_each(ptr noundef %ndev, ptr noundef nonnull @cpsw_update_vlan_mc, ptr noundef nonnull %sync_ctx) #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %num)
  %cmp = icmp eq i32 %8, %num
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %9 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw1.i, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.if.end3.thread.i_crit_edge, label %if.then2.i

if.then.if.end3.thread.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.then2.i:                                       ; preds = %if.then
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %13 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slaves.i, align 4
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %15 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %emac_port.i, align 8
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %14, i32 %16, i32 6
  %17 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i, label %if.then2.i.if.end3.thread.i_crit_edge, label %if.then2.i.cpsw_set_mc.exit_crit_edge

if.then2.i.cpsw_set_mc.exit_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_set_mc.exit

if.then2.i.if.end3.thread.i_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.then2.i.if.end3.thread.i_crit_edge, %if.then.if.end3.thread.i_crit_edge
  br label %cpsw_set_mc.exit

cpsw_set_mc.exit:                                 ; preds = %if.end3.thread.i, %if.then2.i.cpsw_set_mc.exit_crit_edge
  %vid.addr.029.i = phi i32 [ 0, %if.end3.thread.i ], [ %18, %if.then2.i.cpsw_set_mc.exit_crit_edge ]
  %19 = phi i32 [ 0, %if.end3.thread.i ], [ 8, %if.then2.i.cpsw_set_mc.exit_crit_edge ]
  %ale13.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 17
  %20 = ptrtoint ptr %ale13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale13.i, align 4
  %conv14.i = trunc i32 %vid.addr.029.i to i16
  %call15.i = call i32 @cpsw_ale_del_mcast(ptr noundef %21, ptr noundef %addr, i32 noundef 0, i32 noundef %19, i16 noundef zeroext %conv14.i) #12
  br label %if.end

if.end:                                           ; preds = %cpsw_set_mc.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sync_ctx) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_flush_multicast(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_update_vlan_mc(ptr noundef readonly %vdev, i32 noundef %vid, ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mc = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 66
  %addr5 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ha.0.in = phi ptr [ %mc, %if.end ], [ %ha.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ha.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.0 = load ptr, ptr %ha.0.in, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %if.end15.thread, label %for.body

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %3 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr5, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %xor.i = xor i32 %8, %6
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.body
  %sync_cnt = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 5
  %13 = ptrtoint ptr %sync_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sync_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %phi.cmp = icmp eq i32 %14, 0
  br i1 %phi.cmp, label %if.end15, label %if.end15.thread75

if.end15:                                         ; preds = %for.end
  %flush = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 3
  %15 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end15.if.then19_crit_edge

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.thread75:                                ; preds = %for.end
  %consumed = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %consumed, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %consumed, align 4
  %flush76 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 3
  %19 = ptrtoint ptr %flush76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flush76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not77 = icmp eq i32 %20, 0
  br i1 %tobool16.not77, label %if.then25, label %if.end15.thread75.cleanup_crit_edge

if.end15.thread75.cleanup_crit_edge:              ; preds = %if.end15.thread75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.thread:                                  ; preds = %for.cond
  %flush67 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 3
  %21 = ptrtoint ptr %flush67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flush67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not68 = icmp eq i32 %22, 0
  br i1 %tobool16.not68, label %if.end15.thread.cleanup_crit_edge, label %if.end15.thread.if.then19_crit_edge

if.end15.thread.if.then19_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.end15.thread.cleanup_crit_edge:                ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end15.thread.if.then19_crit_edge, %if.end15.if.then19_crit_edge
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %25 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr5, align 4
  %cpsw1.i = getelementptr i8, ptr %24, i32 3468
  %27 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpsw1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid)
  %cmp.i48 = icmp slt i32 %vid, 0
  br i1 %cmp.i48, label %if.then.i, label %if.then19.if.end3.i_crit_edge

if.then19.if.end3.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then19
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %28, i32 0, i32 1, i32 8
  %29 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then.i.if.end3.thread.i_crit_edge, label %if.then2.i

if.then.i.if.end3.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %28, i32 0, i32 13
  %31 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slaves.i, align 4
  %emac_port.i = getelementptr i8, ptr %24, i32 3464
  %33 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %emac_port.i, align 8
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %32, i32 %34, i32 6
  %35 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_vlan.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then19.if.end3.i_crit_edge
  %vid.addr.0.i = phi i32 [ %36, %if.then2.i ], [ %vid, %if.then19.if.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid.addr.0.i)
  %tobool7.not.i = icmp eq i32 %vid.addr.0.i, 0
  br i1 %tobool7.not.i, label %if.end3.i.if.end3.thread.i_crit_edge, label %if.end3.i.cpsw_set_mc.exit_crit_edge

if.end3.i.cpsw_set_mc.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_set_mc.exit

if.end3.i.if.end3.thread.i_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.end3.i.if.end3.thread.i_crit_edge, %if.then.i.if.end3.thread.i_crit_edge
  br label %cpsw_set_mc.exit

cpsw_set_mc.exit:                                 ; preds = %if.end3.thread.i, %if.end3.i.cpsw_set_mc.exit_crit_edge
  %vid.addr.029.i = phi i32 [ 0, %if.end3.thread.i ], [ %vid.addr.0.i, %if.end3.i.cpsw_set_mc.exit_crit_edge ]
  %37 = phi i32 [ 0, %if.end3.thread.i ], [ 8, %if.end3.i.cpsw_set_mc.exit_crit_edge ]
  %ale13.i = getelementptr inbounds %struct.cpsw_common, ptr %28, i32 0, i32 17
  %38 = ptrtoint ptr %ale13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ale13.i, align 4
  %conv14.i = trunc i32 %vid.addr.029.i to i16
  %call15.i = tail call i32 @cpsw_ale_del_mcast(ptr noundef %39, ptr noundef %26, i32 noundef 0, i32 noundef %37, i16 noundef zeroext %conv14.i) #12
  br label %cleanup

if.then25:                                        ; preds = %if.end15.thread75
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %42 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr5, align 4
  %cpsw1.i49 = getelementptr i8, ptr %41, i32 3468
  %44 = ptrtoint ptr %cpsw1.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cpsw1.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid)
  %cmp.i50 = icmp slt i32 %vid, 0
  br i1 %cmp.i50, label %if.then.i53, label %if.then25.if.end3.i60_crit_edge

if.then25.if.end3.i60_crit_edge:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i60

if.then.i53:                                      ; preds = %if.then25
  %dual_emac.i51 = getelementptr inbounds %struct.cpsw_common, ptr %45, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %dual_emac.i51 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dual_emac.i51, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i52 = icmp eq i8 %47, 0
  br i1 %tobool.not.i52, label %if.then.i53.if.end3.thread.i61_crit_edge, label %if.then2.i57

if.then.i53.if.end3.thread.i61_crit_edge:         ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i61

if.then2.i57:                                     ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #14
  %slaves.i54 = getelementptr inbounds %struct.cpsw_common, ptr %45, i32 0, i32 13
  %48 = ptrtoint ptr %slaves.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slaves.i54, align 4
  %emac_port.i55 = getelementptr i8, ptr %41, i32 3464
  %50 = ptrtoint ptr %emac_port.i55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %emac_port.i55, align 8
  %port_vlan.i56 = getelementptr %struct.cpsw_slave, ptr %49, i32 %51, i32 6
  %52 = ptrtoint ptr %port_vlan.i56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_vlan.i56, align 4
  br label %if.end3.i60

if.end3.i60:                                      ; preds = %if.then2.i57, %if.then25.if.end3.i60_crit_edge
  %vid.addr.0.i58 = phi i32 [ %53, %if.then2.i57 ], [ %vid, %if.then25.if.end3.i60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid.addr.0.i58)
  %tobool7.not.i59 = icmp eq i32 %vid.addr.0.i58, 0
  br i1 %tobool7.not.i59, label %if.end3.i60.if.end3.thread.i61_crit_edge, label %if.end3.i60.cpsw_set_mc.exit63_crit_edge

if.end3.i60.cpsw_set_mc.exit63_crit_edge:         ; preds = %if.end3.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpsw_set_mc.exit63

if.end3.i60.if.end3.thread.i61_crit_edge:         ; preds = %if.end3.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.thread.i61

if.end3.thread.i61:                               ; preds = %if.end3.i60.if.end3.thread.i61_crit_edge, %if.then.i53.if.end3.thread.i61_crit_edge
  br label %cpsw_set_mc.exit63

cpsw_set_mc.exit63:                               ; preds = %if.end3.thread.i61, %if.end3.i60.cpsw_set_mc.exit63_crit_edge
  %vid.addr.029.i62 = phi i32 [ 0, %if.end3.thread.i61 ], [ %vid.addr.0.i58, %if.end3.i60.cpsw_set_mc.exit63_crit_edge ]
  %54 = phi i32 [ 0, %if.end3.thread.i61 ], [ 8, %if.end3.i60.cpsw_set_mc.exit63_crit_edge ]
  %dual_emac5.i = getelementptr inbounds %struct.cpsw_common, ptr %45, i32 0, i32 1, i32 8
  %55 = ptrtoint ptr %dual_emac5.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dual_emac5.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool6.not.i = icmp eq i8 %56, 0
  %cond.i = select i1 %tobool6.not.i, i32 7, i32 1
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %45, i32 0, i32 17
  %57 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ale.i, align 4
  %conv.i = trunc i32 %vid.addr.029.i62 to i16
  %call11.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %58, ptr noundef %43, i32 noundef %cond.i, i32 noundef %54, i16 noundef zeroext %conv.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %cpsw_set_mc.exit63, %cpsw_set_mc.exit, %if.end15.thread.cleanup_crit_edge, %if.end15.thread75.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cpsw_set_mc.exit ], [ %call11.i, %cpsw_set_mc.exit63 ], [ 0, %if.end15.thread.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end15.thread75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_xdp_tx_frame(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call4 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.132, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %5, i32 noundef 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_regs_len(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_regs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_pauseparam(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_set_pauseparam(ptr noundef %ndev, ptr nocapture noundef readonly %pause) #2 align 64 {
entry:
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #12
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %0 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %rx_pause2 = getelementptr i8, ptr %ndev, i32 2322
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %rx_pause2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %rx_pause2, align 2
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %3 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3 = icmp ne i32 %4, 0
  %tx_pause6 = getelementptr i8, ptr %ndev, i32 2323
  %frombool7 = zext i1 %tobool3 to i8
  %5 = ptrtoint ptr %tx_pause6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool7, ptr %tx_pause6, align 1
  %cpsw8 = getelementptr i8, ptr %ndev, i32 3468
  %6 = ptrtoint ptr %cpsw8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpsw8, align 4
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %12 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %emac_port, align 8
  %add.ptr = getelementptr %struct.cpsw_slave, ptr %11, i32 %13
  call fastcc void @_cpsw_adjust_link(ptr noundef %add.ptr, ptr noundef %add.ptr.i, ptr noundef nonnull %link)
  br label %if.end

if.else:                                          ; preds = %entry
  %slaves11 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %slaves11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slaves11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not24 = icmp eq i32 %15, 0
  br i1 %tobool13.not24, label %if.else.if.end_crit_edge, label %for.body.preheader

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.preheader:                               ; preds = %if.else
  %slaves12 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  %16 = ptrtoint ptr %slaves12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slaves12, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %n.026 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %15, %for.body.preheader ]
  %slave.025 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %17, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.cpsw_slave, ptr %slave.025, i32 1
  call fastcc void @_cpsw_adjust_link(ptr noundef %slave.025, ptr noundef %add.ptr.i, ptr noundef nonnull %link)
  %dec = add i32 %n.026, -1
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_strings(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ethtool_stats(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ethtool_op_begin(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ethtool_op_complete(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_sset_count(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_channels(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_set_channels(ptr noundef %ndev, ptr noundef %chs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpsw_set_channels_common(ptr noundef %ndev, ptr noundef %chs, ptr noundef nonnull @cpsw_rx_handler) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_eee(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_eee(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_channels_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #12
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not = icmp eq i32 %3, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves1 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %slaves1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slaves1, align 4
  %ndev = getelementptr %struct.cpsw_slave, ptr %5, i32 %i.022, i32 5
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.for.inc_crit_edge, label %if.then6

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 @cpsw_ndo_stop(ptr noundef nonnull %7)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #12
  %call12 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #12
  tail call void @rtnl_lock() #12
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not = icmp eq i32 %3, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves2 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %slaves2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slaves2, align 4
  %ndev = getelementptr %struct.cpsw_slave, ptr %5, i32 %i.022, i32 5
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.for.inc_crit_edge, label %if.then7

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 @cpsw_ndo_open(ptr noundef nonnull %7)
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !26, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !120, !121, !122, !124, !126, !127, !128, !130, !132, !133, !134, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !151, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !173, !174, !175, !177, !178, !179, !181, !183, !184, !185, !187, !188, !189, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !252, !253, !255, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = !{ptr @__param_debug_level, !1, !"__param_debug_level", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_leveltype506, !1, !"__UNIQUE_ID_debug_leveltype506", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug_level507, !4, !"__UNIQUE_ID_debug_level507", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 52, i32 1}
!5 = !{ptr @__param_ale_ageout, !6, !"__param_ale_ageout", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 55, i32 1}
!7 = !{ptr @__UNIQUE_ID_ale_ageouttype508, !6, !"__UNIQUE_ID_ale_ageouttype508", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ale_ageout509, !9, !"__UNIQUE_ID_ale_ageout509", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 56, i32 1}
!10 = !{ptr @__param_rx_packet_max, !11, !"__param_rx_packet_max", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 59, i32 1}
!12 = !{ptr @__UNIQUE_ID_rx_packet_maxtype510, !11, !"__UNIQUE_ID_rx_packet_maxtype510", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_rx_packet_max511, !14, !"__UNIQUE_ID_rx_packet_max511", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 60, i32 1}
!15 = !{ptr @__param_descs_pool_size, !16, !"__param_descs_pool_size", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 63, i32 1}
!17 = !{ptr @__UNIQUE_ID_descs_pool_sizetype512, !16, !"__UNIQUE_ID_descs_pool_sizetype512", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_descs_pool_size513, !19, !"__UNIQUE_ID_descs_pool_size513", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 64, i32 1}
!20 = !{ptr @__initcall__kmod_ti_cpsw__533_1810_cpsw_driver_init6, !21, !"__initcall__kmod_ti_cpsw__533_1810_cpsw_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1810, i32 1}
!22 = !{ptr @__exitcall_cpsw_driver_exit, !21, !"__exitcall_cpsw_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_file534, !24, !"__UNIQUE_ID_file534", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1812, i32 1}
!25 = !{ptr @__UNIQUE_ID_license535, !24, !"__UNIQUE_ID_license535", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_author536, !27, !"__UNIQUE_ID_author536", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1813, i32 1}
!28 = !{ptr @__UNIQUE_ID_author537, !29, !"__UNIQUE_ID_author537", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1814, i32 1}
!30 = !{ptr @__UNIQUE_ID_description538, !31, !"__UNIQUE_ID_description538", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1815, i32 1}
!32 = !{ptr @debug_level, !33, !"debug_level", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 50, i32 12}
!34 = !{ptr @__param_str_debug_level, !1, !"__param_str_debug_level", i1 false, i1 false}
!35 = !{ptr @__param_str_ale_ageout, !6, !"__param_str_ale_ageout", i1 false, i1 false}
!36 = !{ptr @ale_ageout, !37, !"ale_ageout", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 54, i32 12}
!38 = !{ptr @__param_str_rx_packet_max, !11, !"__param_str_rx_packet_max", i1 false, i1 false}
!39 = !{ptr @rx_packet_max, !40, !"rx_packet_max", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 58, i32 12}
!41 = !{ptr @__param_str_descs_pool_size, !16, !"__param_str_descs_pool_size", i1 false, i1 false}
!42 = !{ptr @descs_pool_size, !43, !"descs_pool_size", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 62, i32 12}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1802, i32 12}
!46 = !{ptr @cpsw_driver, !47, !"cpsw_driver", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1800, i32 31}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1520, i32 44}
!50 = !{ptr @.str.2, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1523, i32 3}
!52 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cpsw_probe._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @cpsw_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1527, i32 26}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1530, i32 3}
!62 = !{ptr @cpsw_probe._entry.8, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cpsw_probe._entry_ptr.10, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1605, i32 3}
!66 = !{ptr @cpsw_probe._entry.11, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cpsw_probe._entry_ptr.13, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1612, i32 3}
!70 = !{ptr @cpsw_probe._entry.14, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cpsw_probe._entry_ptr.16, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1622, i32 3}
!74 = !{ptr @cpsw_probe._entry.17, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cpsw_probe._entry_ptr.19, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1636, i32 3}
!78 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cpsw_probe._entry.20, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @cpsw_probe._entry_ptr.23, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1639, i32 3}
!83 = !{ptr @cpsw_probe._entry.24, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cpsw_probe._entry_ptr.26, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1662, i32 3}
!87 = !{ptr @cpsw_probe._entry.27, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cpsw_probe._entry_ptr.29, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1670, i32 4}
!91 = !{ptr @cpsw_probe._entry.30, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cpsw_probe._entry_ptr.32, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1685, i32 3}
!95 = !{ptr @cpsw_probe._entry.33, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cpsw_probe._entry_ptr.35, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @cpsw_probe._entry.36, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1693, i32 3}
!99 = !{ptr @cpsw_probe._entry_ptr.37, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1703, i32 3}
!102 = !{ptr @cpsw_probe._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cpsw_probe._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1711, i32 2}
!106 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cpsw_probe._entry.41, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @cpsw_probe._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1249, i32 33}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1250, i32 3}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cpsw_probe_dt._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @cpsw_probe_dt._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1255, i32 33}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1256, i32 3}
!120 = !{ptr @cpsw_probe_dt._entry.49, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @cpsw_probe_dt._entry_ptr.51, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1268, i32 33}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1269, i32 3}
!126 = !{ptr @cpsw_probe_dt._entry.53, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cpsw_probe_dt._entry_ptr.55, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1274, i32 33}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1275, i32 3}
!132 = !{ptr @cpsw_probe_dt._entry.57, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @cpsw_probe_dt._entry_ptr.59, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1280, i32 33}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1281, i32 3}
!138 = !{ptr @cpsw_probe_dt._entry.61, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cpsw_probe_dt._entry_ptr.63, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1286, i32 34}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1295, i32 3}
!144 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cpsw_probe_dt._entry.65, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @cpsw_probe_dt._entry_ptr.68, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1303, i32 36}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1318, i32 8}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1319, i32 38}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1321, i32 4}
!155 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @cpsw_probe_dt.__UNIQUE_ID_ddebug530, !154, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1331, i32 6}
!159 = !{ptr @cpsw_probe_dt._entry.74, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cpsw_probe_dt._entry_ptr.76, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1341, i32 5}
!163 = !{ptr @cpsw_probe_dt._entry.77, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cpsw_probe_dt._entry_ptr.79, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1349, i32 5}
!167 = !{ptr @cpsw_probe_dt._entry.80, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cpsw_probe_dt._entry_ptr.82, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1354, i32 6}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1357, i32 4}
!173 = !{ptr @cpsw_probe_dt._entry.84, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @cpsw_probe_dt._entry_ptr.86, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1364, i32 4}
!177 = !{ptr @cpsw_probe_dt._entry.87, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @cpsw_probe_dt._entry_ptr.89, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1378, i32 41}
!181 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1380, i32 5}
!183 = !{ptr @cpsw_probe_dt._entry.91, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @cpsw_probe_dt._entry_ptr.93, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1382, i32 5}
!187 = !{ptr @cpsw_probe_dt._entry.94, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @cpsw_probe_dt._entry_ptr.96, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1492, i32 14}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1492, i32 36}
!193 = !{ptr @cpsw_soc_devices, !194, !"cpsw_soc_devices", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1491, i32 42}
!195 = !{ptr @cpsw_netdev_ops, !196, !"cpsw_netdev_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1157, i32 36}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 770, i32 3}
!199 = !{ptr @.str.100, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @cpsw_ndo_open._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @cpsw_ndo_open._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 776, i32 3}
!204 = !{ptr @cpsw_ndo_open._entry.101, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @cpsw_ndo_open._entry_ptr.103, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 782, i32 2}
!208 = !{ptr @cpsw_ndo_open._entry.104, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @cpsw_ndo_open._entry_ptr.106, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 835, i32 5}
!212 = !{ptr @cpsw_ndo_open._entry.107, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @cpsw_ndo_open._entry_ptr.109, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 617, i32 4}
!216 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @cpsw_slave_open._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @cpsw_slave_open._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.113, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 626, i32 4}
!221 = !{ptr @cpsw_slave_open._entry.112, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @cpsw_slave_open._entry_ptr.114, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 500, i32 4}
!225 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @_cpsw_adjust_link._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @_cpsw_adjust_link._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.117, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 874, i32 2}
!230 = !{ptr @.str.118, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @cpsw_ndo_stop._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @cpsw_ndo_stop._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 909, i32 3}
!235 = !{ptr @.str.120, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @cpsw_ndo_start_xmit._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @cpsw_ndo_start_xmit._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.122, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 928, i32 3}
!240 = !{ptr @cpsw_ndo_start_xmit._entry.121, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cpsw_ndo_start_xmit._entry_ptr.123, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.124, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 113, i32 4}
!244 = !{ptr @.str.125, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @cpsw_set_promiscious._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @cpsw_set_promiscious._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 120, i32 4}
!249 = !{ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug514, !248, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!250 = !{ptr @.str.127, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 124, i32 4}
!252 = !{ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug515, !251, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!253 = !{ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug516, !254, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 153, i32 4}
!255 = !{ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug517, !256, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 165, i32 4}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1076, i32 2}
!259 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @cpsw_ndo_vlan_rx_add_vid._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @cpsw_ndo_vlan_rx_add_vid._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.130, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1108, i32 2}
!264 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @cpsw_ethtool_ops, !268, !"cpsw_ethtool_ops", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1207, i32 33}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1184, i32 25}
!271 = !{ptr @.str.133, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1443, i32 3}
!273 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @cpsw_probe_dual_emac._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @cpsw_probe_dual_emac._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.136, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1456, i32 3}
!278 = !{ptr @cpsw_probe_dual_emac._entry.135, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @cpsw_probe_dual_emac._entry_ptr.137, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.139, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1460, i32 3}
!282 = !{ptr @cpsw_probe_dual_emac._entry.138, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @cpsw_probe_dual_emac._entry_ptr.140, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1477, i32 3}
!286 = !{ptr @cpsw_probe_dual_emac._entry.141, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @cpsw_probe_dual_emac._entry_ptr.143, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @cpsw_of_mtable, !289, !"cpsw_of_mtable", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1482, i32 34}
!290 = !{ptr @cpsw_pm_ops, !291, !"cpsw_pm_ops", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/ti/cpsw.c", i32 1798, i32 8}
!292 = !{i32 1, !"wchar_size", i32 2}
!293 = !{i32 1, !"min_enum_size", i32 4}
!294 = !{i32 8, !"branch-target-enforcement", i32 0}
!295 = !{i32 8, !"sign-return-address", i32 0}
!296 = !{i32 8, !"sign-return-address-all", i32 0}
!297 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!298 = !{i32 7, !"uwtable", i32 1}
!299 = !{i32 7, !"frame-pointer", i32 2}
!300 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!301 = !{!"auto-init"}
!302 = !{!"branch_weights", i32 1, i32 2000}
!303 = !{i8 0, i8 2}
!304 = !{i64 2148254226}
!305 = !{i64 739049, i64 739074, i64 739096, i64 739112, i64 739124, i64 739144, i64 739168, i64 739184, i64 739196}
!306 = !{i64 2148254414}
!307 = !{i64 2148736622, i64 2148736627, i64 2148736640, i64 2148736684, i64 2148736718, i64 2148736739}
!308 = !{i64 1290950}
!309 = !{i64 2158937873}
!310 = !{i64 2158939936}
!311 = !{!"branch_weights", i32 2000, i32 1}
!312 = !{i64 2154770529, i64 2154771017, i64 2154770566, i64 2154770622, i64 2154770656, i64 2154770680, i64 2154770721, i64 2154770742, i64 2154770770, i64 2154770804}
!313 = !{i64 2158947148}
!314 = !{i64 2158947325}
!315 = !{i64 1291368}
!316 = !{i64 2158929172}
!317 = !{i64 2158929561}
!318 = !{i64 2158930018}
!319 = !{i64 2158928284}
!320 = !{i64 2158856461}
!321 = !{i64 2158856303}
